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
-- Module      : Network.AWS.SageMaker.DescribeApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the app.
module Network.AWS.SageMaker.DescribeApp
  ( -- * Creating a Request
    describeApp,
    DescribeApp,

    -- * Request Lenses
    daDomainId,
    daUserProfileName,
    daAppType,
    daAppName,

    -- * Destructuring the Response
    describeAppResponse,
    DescribeAppResponse,

    -- * Response Lenses
    desersResourceSpec,
    desersStatus,
    desersCreationTime,
    desersAppType,
    desersAppName,
    desersUserProfileName,
    desersDomainId,
    desersAppARN,
    desersFailureReason,
    desersLastHealthCheckTimestamp,
    desersLastUserActivityTimestamp,
    desersResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeApp' smart constructor.
data DescribeApp = DescribeApp'
  { _daDomainId :: !Text,
    _daUserProfileName :: !Text,
    _daAppType :: !AppType,
    _daAppName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daDomainId' - The domain ID.
--
-- * 'daUserProfileName' - The user profile name.
--
-- * 'daAppType' - The type of app.
--
-- * 'daAppName' - The name of the app.
describeApp ::
  -- | 'daDomainId'
  Text ->
  -- | 'daUserProfileName'
  Text ->
  -- | 'daAppType'
  AppType ->
  -- | 'daAppName'
  Text ->
  DescribeApp
describeApp
  pDomainId_
  pUserProfileName_
  pAppType_
  pAppName_ =
    DescribeApp'
      { _daDomainId = pDomainId_,
        _daUserProfileName = pUserProfileName_,
        _daAppType = pAppType_,
        _daAppName = pAppName_
      }

-- | The domain ID.
daDomainId :: Lens' DescribeApp Text
daDomainId = lens _daDomainId (\s a -> s {_daDomainId = a})

-- | The user profile name.
daUserProfileName :: Lens' DescribeApp Text
daUserProfileName = lens _daUserProfileName (\s a -> s {_daUserProfileName = a})

-- | The type of app.
daAppType :: Lens' DescribeApp AppType
daAppType = lens _daAppType (\s a -> s {_daAppType = a})

-- | The name of the app.
daAppName :: Lens' DescribeApp Text
daAppName = lens _daAppName (\s a -> s {_daAppName = a})

instance AWSRequest DescribeApp where
  type Rs DescribeApp = DescribeAppResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeAppResponse'
            <$> (x .?> "ResourceSpec")
            <*> (x .?> "Status")
            <*> (x .?> "CreationTime")
            <*> (x .?> "AppType")
            <*> (x .?> "AppName")
            <*> (x .?> "UserProfileName")
            <*> (x .?> "DomainId")
            <*> (x .?> "AppArn")
            <*> (x .?> "FailureReason")
            <*> (x .?> "LastHealthCheckTimestamp")
            <*> (x .?> "LastUserActivityTimestamp")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeApp

instance NFData DescribeApp

instance ToHeaders DescribeApp where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeApp" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeApp where
  toJSON DescribeApp' {..} =
    object
      ( catMaybes
          [ Just ("DomainId" .= _daDomainId),
            Just ("UserProfileName" .= _daUserProfileName),
            Just ("AppType" .= _daAppType),
            Just ("AppName" .= _daAppName)
          ]
      )

instance ToPath DescribeApp where
  toPath = const "/"

instance ToQuery DescribeApp where
  toQuery = const mempty

-- | /See:/ 'describeAppResponse' smart constructor.
data DescribeAppResponse = DescribeAppResponse'
  { _desersResourceSpec ::
      !(Maybe ResourceSpec),
    _desersStatus ::
      !(Maybe AppStatus),
    _desersCreationTime ::
      !(Maybe POSIX),
    _desersAppType ::
      !(Maybe AppType),
    _desersAppName :: !(Maybe Text),
    _desersUserProfileName ::
      !(Maybe Text),
    _desersDomainId ::
      !(Maybe Text),
    _desersAppARN :: !(Maybe Text),
    _desersFailureReason ::
      !(Maybe Text),
    _desersLastHealthCheckTimestamp ::
      !(Maybe POSIX),
    _desersLastUserActivityTimestamp ::
      !(Maybe POSIX),
    _desersResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAppResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desersResourceSpec' - The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
--
-- * 'desersStatus' - The status.
--
-- * 'desersCreationTime' - The creation time.
--
-- * 'desersAppType' - The type of app.
--
-- * 'desersAppName' - The name of the app.
--
-- * 'desersUserProfileName' - The user profile name.
--
-- * 'desersDomainId' - The domain ID.
--
-- * 'desersAppARN' - The Amazon Resource Name (ARN) of the app.
--
-- * 'desersFailureReason' - The failure reason.
--
-- * 'desersLastHealthCheckTimestamp' - The timestamp of the last health check.
--
-- * 'desersLastUserActivityTimestamp' - The timestamp of the last user's activity.
--
-- * 'desersResponseStatus' - -- | The response status code.
describeAppResponse ::
  -- | 'desersResponseStatus'
  Int ->
  DescribeAppResponse
describeAppResponse pResponseStatus_ =
  DescribeAppResponse'
    { _desersResourceSpec = Nothing,
      _desersStatus = Nothing,
      _desersCreationTime = Nothing,
      _desersAppType = Nothing,
      _desersAppName = Nothing,
      _desersUserProfileName = Nothing,
      _desersDomainId = Nothing,
      _desersAppARN = Nothing,
      _desersFailureReason = Nothing,
      _desersLastHealthCheckTimestamp = Nothing,
      _desersLastUserActivityTimestamp = Nothing,
      _desersResponseStatus = pResponseStatus_
    }

-- | The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
desersResourceSpec :: Lens' DescribeAppResponse (Maybe ResourceSpec)
desersResourceSpec = lens _desersResourceSpec (\s a -> s {_desersResourceSpec = a})

-- | The status.
desersStatus :: Lens' DescribeAppResponse (Maybe AppStatus)
desersStatus = lens _desersStatus (\s a -> s {_desersStatus = a})

-- | The creation time.
desersCreationTime :: Lens' DescribeAppResponse (Maybe UTCTime)
desersCreationTime = lens _desersCreationTime (\s a -> s {_desersCreationTime = a}) . mapping _Time

-- | The type of app.
desersAppType :: Lens' DescribeAppResponse (Maybe AppType)
desersAppType = lens _desersAppType (\s a -> s {_desersAppType = a})

-- | The name of the app.
desersAppName :: Lens' DescribeAppResponse (Maybe Text)
desersAppName = lens _desersAppName (\s a -> s {_desersAppName = a})

-- | The user profile name.
desersUserProfileName :: Lens' DescribeAppResponse (Maybe Text)
desersUserProfileName = lens _desersUserProfileName (\s a -> s {_desersUserProfileName = a})

-- | The domain ID.
desersDomainId :: Lens' DescribeAppResponse (Maybe Text)
desersDomainId = lens _desersDomainId (\s a -> s {_desersDomainId = a})

-- | The Amazon Resource Name (ARN) of the app.
desersAppARN :: Lens' DescribeAppResponse (Maybe Text)
desersAppARN = lens _desersAppARN (\s a -> s {_desersAppARN = a})

-- | The failure reason.
desersFailureReason :: Lens' DescribeAppResponse (Maybe Text)
desersFailureReason = lens _desersFailureReason (\s a -> s {_desersFailureReason = a})

-- | The timestamp of the last health check.
desersLastHealthCheckTimestamp :: Lens' DescribeAppResponse (Maybe UTCTime)
desersLastHealthCheckTimestamp = lens _desersLastHealthCheckTimestamp (\s a -> s {_desersLastHealthCheckTimestamp = a}) . mapping _Time

-- | The timestamp of the last user's activity.
desersLastUserActivityTimestamp :: Lens' DescribeAppResponse (Maybe UTCTime)
desersLastUserActivityTimestamp = lens _desersLastUserActivityTimestamp (\s a -> s {_desersLastUserActivityTimestamp = a}) . mapping _Time

-- | -- | The response status code.
desersResponseStatus :: Lens' DescribeAppResponse Int
desersResponseStatus = lens _desersResponseStatus (\s a -> s {_desersResponseStatus = a})

instance NFData DescribeAppResponse
