{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.DeauthorizeConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes all authorization parameters from the connection. This lets you remove the secret from the connection so you can reuse it without having to create a new connection.
module Network.AWS.CloudWatchEvents.DeauthorizeConnection
  ( -- * Creating a Request
    deauthorizeConnection,
    DeauthorizeConnection,

    -- * Request Lenses
    deaName,

    -- * Destructuring the Response
    deauthorizeConnectionResponse,
    DeauthorizeConnectionResponse,

    -- * Response Lenses
    dearsCreationTime,
    dearsConnectionState,
    dearsConnectionARN,
    dearsLastModifiedTime,
    dearsLastAuthorizedTime,
    dearsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deauthorizeConnection' smart constructor.
newtype DeauthorizeConnection = DeauthorizeConnection'
  { _deaName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeauthorizeConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deaName' - The name of the connection to remove authorization from.
deauthorizeConnection ::
  -- | 'deaName'
  Text ->
  DeauthorizeConnection
deauthorizeConnection pName_ =
  DeauthorizeConnection' {_deaName = pName_}

-- | The name of the connection to remove authorization from.
deaName :: Lens' DeauthorizeConnection Text
deaName = lens _deaName (\s a -> s {_deaName = a})

instance AWSRequest DeauthorizeConnection where
  type
    Rs DeauthorizeConnection =
      DeauthorizeConnectionResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          DeauthorizeConnectionResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "ConnectionState")
            <*> (x .?> "ConnectionArn")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "LastAuthorizedTime")
            <*> (pure (fromEnum s))
      )

instance Hashable DeauthorizeConnection

instance NFData DeauthorizeConnection

instance ToHeaders DeauthorizeConnection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.DeauthorizeConnection" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeauthorizeConnection where
  toJSON DeauthorizeConnection' {..} =
    object (catMaybes [Just ("Name" .= _deaName)])

instance ToPath DeauthorizeConnection where
  toPath = const "/"

instance ToQuery DeauthorizeConnection where
  toQuery = const mempty

-- | /See:/ 'deauthorizeConnectionResponse' smart constructor.
data DeauthorizeConnectionResponse = DeauthorizeConnectionResponse'
  { _dearsCreationTime ::
      !( Maybe
           POSIX
       ),
    _dearsConnectionState ::
      !( Maybe
           ConnectionState
       ),
    _dearsConnectionARN ::
      !( Maybe
           Text
       ),
    _dearsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _dearsLastAuthorizedTime ::
      !( Maybe
           POSIX
       ),
    _dearsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeauthorizeConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dearsCreationTime' - A time stamp for the time that the connection was created.
--
-- * 'dearsConnectionState' - The state of the connection.
--
-- * 'dearsConnectionARN' - The ARN of the connection that authorization was removed from.
--
-- * 'dearsLastModifiedTime' - A time stamp for the time that the connection was last updated.
--
-- * 'dearsLastAuthorizedTime' - A time stamp for the time that the connection was last authorized.
--
-- * 'dearsResponseStatus' - -- | The response status code.
deauthorizeConnectionResponse ::
  -- | 'dearsResponseStatus'
  Int ->
  DeauthorizeConnectionResponse
deauthorizeConnectionResponse pResponseStatus_ =
  DeauthorizeConnectionResponse'
    { _dearsCreationTime =
        Nothing,
      _dearsConnectionState = Nothing,
      _dearsConnectionARN = Nothing,
      _dearsLastModifiedTime = Nothing,
      _dearsLastAuthorizedTime = Nothing,
      _dearsResponseStatus = pResponseStatus_
    }

-- | A time stamp for the time that the connection was created.
dearsCreationTime :: Lens' DeauthorizeConnectionResponse (Maybe UTCTime)
dearsCreationTime = lens _dearsCreationTime (\s a -> s {_dearsCreationTime = a}) . mapping _Time

-- | The state of the connection.
dearsConnectionState :: Lens' DeauthorizeConnectionResponse (Maybe ConnectionState)
dearsConnectionState = lens _dearsConnectionState (\s a -> s {_dearsConnectionState = a})

-- | The ARN of the connection that authorization was removed from.
dearsConnectionARN :: Lens' DeauthorizeConnectionResponse (Maybe Text)
dearsConnectionARN = lens _dearsConnectionARN (\s a -> s {_dearsConnectionARN = a})

-- | A time stamp for the time that the connection was last updated.
dearsLastModifiedTime :: Lens' DeauthorizeConnectionResponse (Maybe UTCTime)
dearsLastModifiedTime = lens _dearsLastModifiedTime (\s a -> s {_dearsLastModifiedTime = a}) . mapping _Time

-- | A time stamp for the time that the connection was last authorized.
dearsLastAuthorizedTime :: Lens' DeauthorizeConnectionResponse (Maybe UTCTime)
dearsLastAuthorizedTime = lens _dearsLastAuthorizedTime (\s a -> s {_dearsLastAuthorizedTime = a}) . mapping _Time

-- | -- | The response status code.
dearsResponseStatus :: Lens' DeauthorizeConnectionResponse Int
dearsResponseStatus = lens _dearsResponseStatus (\s a -> s {_dearsResponseStatus = a})

instance NFData DeauthorizeConnectionResponse
