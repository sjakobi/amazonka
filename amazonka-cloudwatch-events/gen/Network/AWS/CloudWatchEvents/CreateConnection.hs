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
-- Module      : Network.AWS.CloudWatchEvents.CreateConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a connection. A connection defines the authorization type and credentials to use for authorization with an API destination HTTP endpoint.
module Network.AWS.CloudWatchEvents.CreateConnection
  ( -- * Creating a Request
    createConnection,
    CreateConnection,

    -- * Request Lenses
    ccDescription,
    ccName,
    ccAuthorizationType,
    ccAuthParameters,

    -- * Destructuring the Response
    createConnectionResponse,
    CreateConnectionResponse,

    -- * Response Lenses
    ccrrsCreationTime,
    ccrrsConnectionState,
    ccrrsConnectionARN,
    ccrrsLastModifiedTime,
    ccrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createConnection' smart constructor.
data CreateConnection = CreateConnection'
  { _ccDescription ::
      !(Maybe Text),
    _ccName :: !Text,
    _ccAuthorizationType ::
      !ConnectionAuthorizationType,
    _ccAuthParameters ::
      !CreateConnectionAuthRequestParameters
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccDescription' - A description for the connection to create.
--
-- * 'ccName' - The name for the connection to create.
--
-- * 'ccAuthorizationType' - The type of authorization to use for the connection.
--
-- * 'ccAuthParameters' - A @CreateConnectionAuthRequestParameters@ object that contains the authorization parameters to use to authorize with the endpoint.
createConnection ::
  -- | 'ccName'
  Text ->
  -- | 'ccAuthorizationType'
  ConnectionAuthorizationType ->
  -- | 'ccAuthParameters'
  CreateConnectionAuthRequestParameters ->
  CreateConnection
createConnection
  pName_
  pAuthorizationType_
  pAuthParameters_ =
    CreateConnection'
      { _ccDescription = Nothing,
        _ccName = pName_,
        _ccAuthorizationType = pAuthorizationType_,
        _ccAuthParameters = pAuthParameters_
      }

-- | A description for the connection to create.
ccDescription :: Lens' CreateConnection (Maybe Text)
ccDescription = lens _ccDescription (\s a -> s {_ccDescription = a})

-- | The name for the connection to create.
ccName :: Lens' CreateConnection Text
ccName = lens _ccName (\s a -> s {_ccName = a})

-- | The type of authorization to use for the connection.
ccAuthorizationType :: Lens' CreateConnection ConnectionAuthorizationType
ccAuthorizationType = lens _ccAuthorizationType (\s a -> s {_ccAuthorizationType = a})

-- | A @CreateConnectionAuthRequestParameters@ object that contains the authorization parameters to use to authorize with the endpoint.
ccAuthParameters :: Lens' CreateConnection CreateConnectionAuthRequestParameters
ccAuthParameters = lens _ccAuthParameters (\s a -> s {_ccAuthParameters = a})

instance AWSRequest CreateConnection where
  type Rs CreateConnection = CreateConnectionResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          CreateConnectionResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "ConnectionState")
            <*> (x .?> "ConnectionArn")
            <*> (x .?> "LastModifiedTime")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateConnection

instance NFData CreateConnection

instance ToHeaders CreateConnection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.CreateConnection" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateConnection where
  toJSON CreateConnection' {..} =
    object
      ( catMaybes
          [ ("Description" .=) <$> _ccDescription,
            Just ("Name" .= _ccName),
            Just ("AuthorizationType" .= _ccAuthorizationType),
            Just ("AuthParameters" .= _ccAuthParameters)
          ]
      )

instance ToPath CreateConnection where
  toPath = const "/"

instance ToQuery CreateConnection where
  toQuery = const mempty

-- | /See:/ 'createConnectionResponse' smart constructor.
data CreateConnectionResponse = CreateConnectionResponse'
  { _ccrrsCreationTime ::
      !(Maybe POSIX),
    _ccrrsConnectionState ::
      !( Maybe
           ConnectionState
       ),
    _ccrrsConnectionARN ::
      !(Maybe Text),
    _ccrrsLastModifiedTime ::
      !(Maybe POSIX),
    _ccrrsResponseStatus ::
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

-- | Creates a value of 'CreateConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrsCreationTime' - A time stamp for the time that the connection was created.
--
-- * 'ccrrsConnectionState' - The state of the connection that was created by the request.
--
-- * 'ccrrsConnectionARN' - The ARN of the connection that was created by the request.
--
-- * 'ccrrsLastModifiedTime' - A time stamp for the time that the connection was last updated.
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createConnectionResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateConnectionResponse
createConnectionResponse pResponseStatus_ =
  CreateConnectionResponse'
    { _ccrrsCreationTime =
        Nothing,
      _ccrrsConnectionState = Nothing,
      _ccrrsConnectionARN = Nothing,
      _ccrrsLastModifiedTime = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | A time stamp for the time that the connection was created.
ccrrsCreationTime :: Lens' CreateConnectionResponse (Maybe UTCTime)
ccrrsCreationTime = lens _ccrrsCreationTime (\s a -> s {_ccrrsCreationTime = a}) . mapping _Time

-- | The state of the connection that was created by the request.
ccrrsConnectionState :: Lens' CreateConnectionResponse (Maybe ConnectionState)
ccrrsConnectionState = lens _ccrrsConnectionState (\s a -> s {_ccrrsConnectionState = a})

-- | The ARN of the connection that was created by the request.
ccrrsConnectionARN :: Lens' CreateConnectionResponse (Maybe Text)
ccrrsConnectionARN = lens _ccrrsConnectionARN (\s a -> s {_ccrrsConnectionARN = a})

-- | A time stamp for the time that the connection was last updated.
ccrrsLastModifiedTime :: Lens' CreateConnectionResponse (Maybe UTCTime)
ccrrsLastModifiedTime = lens _ccrrsLastModifiedTime (\s a -> s {_ccrrsLastModifiedTime = a}) . mapping _Time

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateConnectionResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateConnectionResponse
