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
-- Module      : Network.AWS.CloudWatchEvents.UpdateConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates settings for a connection.
module Network.AWS.CloudWatchEvents.UpdateConnection
  ( -- * Creating a Request
    updateConnection,
    UpdateConnection,

    -- * Request Lenses
    ucAuthorizationType,
    ucDescription,
    ucAuthParameters,
    ucName,

    -- * Destructuring the Response
    updateConnectionResponse,
    UpdateConnectionResponse,

    -- * Response Lenses
    ucrrsCreationTime,
    ucrrsConnectionState,
    ucrrsConnectionARN,
    ucrrsLastModifiedTime,
    ucrrsLastAuthorizedTime,
    ucrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateConnection' smart constructor.
data UpdateConnection = UpdateConnection'
  { _ucAuthorizationType ::
      !(Maybe ConnectionAuthorizationType),
    _ucDescription :: !(Maybe Text),
    _ucAuthParameters ::
      !( Maybe
           UpdateConnectionAuthRequestParameters
       ),
    _ucName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucAuthorizationType' - The type of authorization to use for the connection.
--
-- * 'ucDescription' - A description for the connection.
--
-- * 'ucAuthParameters' - The authorization parameters to use for the connection.
--
-- * 'ucName' - The name of the connection to update.
updateConnection ::
  -- | 'ucName'
  Text ->
  UpdateConnection
updateConnection pName_ =
  UpdateConnection'
    { _ucAuthorizationType = Nothing,
      _ucDescription = Nothing,
      _ucAuthParameters = Nothing,
      _ucName = pName_
    }

-- | The type of authorization to use for the connection.
ucAuthorizationType :: Lens' UpdateConnection (Maybe ConnectionAuthorizationType)
ucAuthorizationType = lens _ucAuthorizationType (\s a -> s {_ucAuthorizationType = a})

-- | A description for the connection.
ucDescription :: Lens' UpdateConnection (Maybe Text)
ucDescription = lens _ucDescription (\s a -> s {_ucDescription = a})

-- | The authorization parameters to use for the connection.
ucAuthParameters :: Lens' UpdateConnection (Maybe UpdateConnectionAuthRequestParameters)
ucAuthParameters = lens _ucAuthParameters (\s a -> s {_ucAuthParameters = a})

-- | The name of the connection to update.
ucName :: Lens' UpdateConnection Text
ucName = lens _ucName (\s a -> s {_ucName = a})

instance AWSRequest UpdateConnection where
  type Rs UpdateConnection = UpdateConnectionResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          UpdateConnectionResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "ConnectionState")
            <*> (x .?> "ConnectionArn")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "LastAuthorizedTime")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateConnection

instance NFData UpdateConnection

instance ToHeaders UpdateConnection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.UpdateConnection" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateConnection where
  toJSON UpdateConnection' {..} =
    object
      ( catMaybes
          [ ("AuthorizationType" .=) <$> _ucAuthorizationType,
            ("Description" .=) <$> _ucDescription,
            ("AuthParameters" .=) <$> _ucAuthParameters,
            Just ("Name" .= _ucName)
          ]
      )

instance ToPath UpdateConnection where
  toPath = const "/"

instance ToQuery UpdateConnection where
  toQuery = const mempty

-- | /See:/ 'updateConnectionResponse' smart constructor.
data UpdateConnectionResponse = UpdateConnectionResponse'
  { _ucrrsCreationTime ::
      !(Maybe POSIX),
    _ucrrsConnectionState ::
      !( Maybe
           ConnectionState
       ),
    _ucrrsConnectionARN ::
      !(Maybe Text),
    _ucrrsLastModifiedTime ::
      !(Maybe POSIX),
    _ucrrsLastAuthorizedTime ::
      !(Maybe POSIX),
    _ucrrsResponseStatus ::
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

-- | Creates a value of 'UpdateConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrrsCreationTime' - A time stamp for the time that the connection was created.
--
-- * 'ucrrsConnectionState' - The state of the connection that was updated.
--
-- * 'ucrrsConnectionARN' - The ARN of the connection that was updated.
--
-- * 'ucrrsLastModifiedTime' - A time stamp for the time that the connection was last modified.
--
-- * 'ucrrsLastAuthorizedTime' - A time stamp for the time that the connection was last authorized.
--
-- * 'ucrrsResponseStatus' - -- | The response status code.
updateConnectionResponse ::
  -- | 'ucrrsResponseStatus'
  Int ->
  UpdateConnectionResponse
updateConnectionResponse pResponseStatus_ =
  UpdateConnectionResponse'
    { _ucrrsCreationTime =
        Nothing,
      _ucrrsConnectionState = Nothing,
      _ucrrsConnectionARN = Nothing,
      _ucrrsLastModifiedTime = Nothing,
      _ucrrsLastAuthorizedTime = Nothing,
      _ucrrsResponseStatus = pResponseStatus_
    }

-- | A time stamp for the time that the connection was created.
ucrrsCreationTime :: Lens' UpdateConnectionResponse (Maybe UTCTime)
ucrrsCreationTime = lens _ucrrsCreationTime (\s a -> s {_ucrrsCreationTime = a}) . mapping _Time

-- | The state of the connection that was updated.
ucrrsConnectionState :: Lens' UpdateConnectionResponse (Maybe ConnectionState)
ucrrsConnectionState = lens _ucrrsConnectionState (\s a -> s {_ucrrsConnectionState = a})

-- | The ARN of the connection that was updated.
ucrrsConnectionARN :: Lens' UpdateConnectionResponse (Maybe Text)
ucrrsConnectionARN = lens _ucrrsConnectionARN (\s a -> s {_ucrrsConnectionARN = a})

-- | A time stamp for the time that the connection was last modified.
ucrrsLastModifiedTime :: Lens' UpdateConnectionResponse (Maybe UTCTime)
ucrrsLastModifiedTime = lens _ucrrsLastModifiedTime (\s a -> s {_ucrrsLastModifiedTime = a}) . mapping _Time

-- | A time stamp for the time that the connection was last authorized.
ucrrsLastAuthorizedTime :: Lens' UpdateConnectionResponse (Maybe UTCTime)
ucrrsLastAuthorizedTime = lens _ucrrsLastAuthorizedTime (\s a -> s {_ucrrsLastAuthorizedTime = a}) . mapping _Time

-- | -- | The response status code.
ucrrsResponseStatus :: Lens' UpdateConnectionResponse Int
ucrrsResponseStatus = lens _ucrrsResponseStatus (\s a -> s {_ucrrsResponseStatus = a})

instance NFData UpdateConnectionResponse
