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
-- Module      : Network.AWS.CloudWatchEvents.DescribeConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about a connection.
module Network.AWS.CloudWatchEvents.DescribeConnection
  ( -- * Creating a Request
    describeConnection,
    DescribeConnection,

    -- * Request Lenses
    dccName,

    -- * Destructuring the Response
    describeConnectionResponse,
    DescribeConnectionResponse,

    -- * Response Lenses
    drsCreationTime,
    drsConnectionState,
    drsSecretARN,
    drsStateReason,
    drsAuthorizationType,
    drsConnectionARN,
    drsName,
    drsLastModifiedTime,
    drsDescription,
    drsLastAuthorizedTime,
    drsAuthParameters,
    drsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeConnection' smart constructor.
newtype DescribeConnection = DescribeConnection'
  { _dccName ::
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

-- | Creates a value of 'DescribeConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccName' - The name of the connection to retrieve.
describeConnection ::
  -- | 'dccName'
  Text ->
  DescribeConnection
describeConnection pName_ =
  DescribeConnection' {_dccName = pName_}

-- | The name of the connection to retrieve.
dccName :: Lens' DescribeConnection Text
dccName = lens _dccName (\s a -> s {_dccName = a})

instance AWSRequest DescribeConnection where
  type
    Rs DescribeConnection =
      DescribeConnectionResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          DescribeConnectionResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "ConnectionState")
            <*> (x .?> "SecretArn")
            <*> (x .?> "StateReason")
            <*> (x .?> "AuthorizationType")
            <*> (x .?> "ConnectionArn")
            <*> (x .?> "Name")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "Description")
            <*> (x .?> "LastAuthorizedTime")
            <*> (x .?> "AuthParameters")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConnection

instance NFData DescribeConnection

instance ToHeaders DescribeConnection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.DescribeConnection" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeConnection where
  toJSON DescribeConnection' {..} =
    object (catMaybes [Just ("Name" .= _dccName)])

instance ToPath DescribeConnection where
  toPath = const "/"

instance ToQuery DescribeConnection where
  toQuery = const mempty

-- | /See:/ 'describeConnectionResponse' smart constructor.
data DescribeConnectionResponse = DescribeConnectionResponse'
  { _drsCreationTime ::
      !(Maybe POSIX),
    _drsConnectionState ::
      !( Maybe
           ConnectionState
       ),
    _drsSecretARN ::
      !(Maybe Text),
    _drsStateReason ::
      !(Maybe Text),
    _drsAuthorizationType ::
      !( Maybe
           ConnectionAuthorizationType
       ),
    _drsConnectionARN ::
      !(Maybe Text),
    _drsName ::
      !(Maybe Text),
    _drsLastModifiedTime ::
      !(Maybe POSIX),
    _drsDescription ::
      !(Maybe Text),
    _drsLastAuthorizedTime ::
      !(Maybe POSIX),
    _drsAuthParameters ::
      !( Maybe
           ConnectionAuthResponseParameters
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsCreationTime' - A time stamp for the time that the connection was created.
--
-- * 'drsConnectionState' - The state of the connection retrieved.
--
-- * 'drsSecretARN' - The ARN of the secret created from the authorization parameters specified for the connection.
--
-- * 'drsStateReason' - The reason that the connection is in the current connection state.
--
-- * 'drsAuthorizationType' - The type of authorization specified for the connection.
--
-- * 'drsConnectionARN' - The ARN of the connection retrieved.
--
-- * 'drsName' - The name of the connection retrieved.
--
-- * 'drsLastModifiedTime' - A time stamp for the time that the connection was last modified.
--
-- * 'drsDescription' - The description for the connection retrieved.
--
-- * 'drsLastAuthorizedTime' - A time stamp for the time that the connection was last authorized.
--
-- * 'drsAuthParameters' - The parameters to use for authorization for the connection.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeConnectionResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeConnectionResponse
describeConnectionResponse pResponseStatus_ =
  DescribeConnectionResponse'
    { _drsCreationTime =
        Nothing,
      _drsConnectionState = Nothing,
      _drsSecretARN = Nothing,
      _drsStateReason = Nothing,
      _drsAuthorizationType = Nothing,
      _drsConnectionARN = Nothing,
      _drsName = Nothing,
      _drsLastModifiedTime = Nothing,
      _drsDescription = Nothing,
      _drsLastAuthorizedTime = Nothing,
      _drsAuthParameters = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | A time stamp for the time that the connection was created.
drsCreationTime :: Lens' DescribeConnectionResponse (Maybe UTCTime)
drsCreationTime = lens _drsCreationTime (\s a -> s {_drsCreationTime = a}) . mapping _Time

-- | The state of the connection retrieved.
drsConnectionState :: Lens' DescribeConnectionResponse (Maybe ConnectionState)
drsConnectionState = lens _drsConnectionState (\s a -> s {_drsConnectionState = a})

-- | The ARN of the secret created from the authorization parameters specified for the connection.
drsSecretARN :: Lens' DescribeConnectionResponse (Maybe Text)
drsSecretARN = lens _drsSecretARN (\s a -> s {_drsSecretARN = a})

-- | The reason that the connection is in the current connection state.
drsStateReason :: Lens' DescribeConnectionResponse (Maybe Text)
drsStateReason = lens _drsStateReason (\s a -> s {_drsStateReason = a})

-- | The type of authorization specified for the connection.
drsAuthorizationType :: Lens' DescribeConnectionResponse (Maybe ConnectionAuthorizationType)
drsAuthorizationType = lens _drsAuthorizationType (\s a -> s {_drsAuthorizationType = a})

-- | The ARN of the connection retrieved.
drsConnectionARN :: Lens' DescribeConnectionResponse (Maybe Text)
drsConnectionARN = lens _drsConnectionARN (\s a -> s {_drsConnectionARN = a})

-- | The name of the connection retrieved.
drsName :: Lens' DescribeConnectionResponse (Maybe Text)
drsName = lens _drsName (\s a -> s {_drsName = a})

-- | A time stamp for the time that the connection was last modified.
drsLastModifiedTime :: Lens' DescribeConnectionResponse (Maybe UTCTime)
drsLastModifiedTime = lens _drsLastModifiedTime (\s a -> s {_drsLastModifiedTime = a}) . mapping _Time

-- | The description for the connection retrieved.
drsDescription :: Lens' DescribeConnectionResponse (Maybe Text)
drsDescription = lens _drsDescription (\s a -> s {_drsDescription = a})

-- | A time stamp for the time that the connection was last authorized.
drsLastAuthorizedTime :: Lens' DescribeConnectionResponse (Maybe UTCTime)
drsLastAuthorizedTime = lens _drsLastAuthorizedTime (\s a -> s {_drsLastAuthorizedTime = a}) . mapping _Time

-- | The parameters to use for authorization for the connection.
drsAuthParameters :: Lens' DescribeConnectionResponse (Maybe ConnectionAuthResponseParameters)
drsAuthParameters = lens _drsAuthParameters (\s a -> s {_drsAuthParameters = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeConnectionResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeConnectionResponse
