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
-- Module      : Network.AWS.MQ.DescribeConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified configuration.
module Network.AWS.MQ.DescribeConfiguration
  ( -- * Creating a Request
    describeConfiguration,
    DescribeConfiguration,

    -- * Request Lenses
    dcConfigurationId,

    -- * Destructuring the Response
    describeConfigurationResponse,
    DescribeConfigurationResponse,

    -- * Response Lenses
    dcrrsEngineType,
    dcrrsAuthenticationStrategy,
    dcrrsLatestRevision,
    dcrrsARN,
    dcrrsId,
    dcrrsName,
    dcrrsEngineVersion,
    dcrrsTags,
    dcrrsDescription,
    dcrrsCreated,
    dcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeConfiguration' smart constructor.
newtype DescribeConfiguration = DescribeConfiguration'
  { _dcConfigurationId ::
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

-- | Creates a value of 'DescribeConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcConfigurationId' - The unique ID that Amazon MQ generates for the configuration.
describeConfiguration ::
  -- | 'dcConfigurationId'
  Text ->
  DescribeConfiguration
describeConfiguration pConfigurationId_ =
  DescribeConfiguration'
    { _dcConfigurationId =
        pConfigurationId_
    }

-- | The unique ID that Amazon MQ generates for the configuration.
dcConfigurationId :: Lens' DescribeConfiguration Text
dcConfigurationId = lens _dcConfigurationId (\s a -> s {_dcConfigurationId = a})

instance AWSRequest DescribeConfiguration where
  type
    Rs DescribeConfiguration =
      DescribeConfigurationResponse
  request = get mq
  response =
    receiveJSON
      ( \s h x ->
          DescribeConfigurationResponse'
            <$> (x .?> "engineType")
            <*> (x .?> "authenticationStrategy")
            <*> (x .?> "latestRevision")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "name")
            <*> (x .?> "engineVersion")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "description")
            <*> (x .?> "created")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConfiguration

instance NFData DescribeConfiguration

instance ToHeaders DescribeConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeConfiguration where
  toPath DescribeConfiguration' {..} =
    mconcat
      ["/v1/configurations/", toBS _dcConfigurationId]

instance ToQuery DescribeConfiguration where
  toQuery = const mempty

-- | /See:/ 'describeConfigurationResponse' smart constructor.
data DescribeConfigurationResponse = DescribeConfigurationResponse'
  { _dcrrsEngineType ::
      !( Maybe
           EngineType
       ),
    _dcrrsAuthenticationStrategy ::
      !( Maybe
           AuthenticationStrategy
       ),
    _dcrrsLatestRevision ::
      !( Maybe
           ConfigurationRevision
       ),
    _dcrrsARN ::
      !( Maybe
           Text
       ),
    _dcrrsId ::
      !( Maybe
           Text
       ),
    _dcrrsName ::
      !( Maybe
           Text
       ),
    _dcrrsEngineVersion ::
      !( Maybe
           Text
       ),
    _dcrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _dcrrsDescription ::
      !( Maybe
           Text
       ),
    _dcrrsCreated ::
      !( Maybe
           POSIX
       ),
    _dcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsEngineType' - Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
--
-- * 'dcrrsAuthenticationStrategy' - The authentication strategy associated with the configuration.
--
-- * 'dcrrsLatestRevision' - Required. The latest revision of the configuration.
--
-- * 'dcrrsARN' - Required. The ARN of the configuration.
--
-- * 'dcrrsId' - Required. The unique ID that Amazon MQ generates for the configuration.
--
-- * 'dcrrsName' - Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
--
-- * 'dcrrsEngineVersion' - Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
--
-- * 'dcrrsTags' - The list of all tags associated with this configuration.
--
-- * 'dcrrsDescription' - Required. The description of the configuration.
--
-- * 'dcrrsCreated' - Required. The date and time of the configuration revision.
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
describeConfigurationResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DescribeConfigurationResponse
describeConfigurationResponse pResponseStatus_ =
  DescribeConfigurationResponse'
    { _dcrrsEngineType =
        Nothing,
      _dcrrsAuthenticationStrategy = Nothing,
      _dcrrsLatestRevision = Nothing,
      _dcrrsARN = Nothing,
      _dcrrsId = Nothing,
      _dcrrsName = Nothing,
      _dcrrsEngineVersion = Nothing,
      _dcrrsTags = Nothing,
      _dcrrsDescription = Nothing,
      _dcrrsCreated = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
dcrrsEngineType :: Lens' DescribeConfigurationResponse (Maybe EngineType)
dcrrsEngineType = lens _dcrrsEngineType (\s a -> s {_dcrrsEngineType = a})

-- | The authentication strategy associated with the configuration.
dcrrsAuthenticationStrategy :: Lens' DescribeConfigurationResponse (Maybe AuthenticationStrategy)
dcrrsAuthenticationStrategy = lens _dcrrsAuthenticationStrategy (\s a -> s {_dcrrsAuthenticationStrategy = a})

-- | Required. The latest revision of the configuration.
dcrrsLatestRevision :: Lens' DescribeConfigurationResponse (Maybe ConfigurationRevision)
dcrrsLatestRevision = lens _dcrrsLatestRevision (\s a -> s {_dcrrsLatestRevision = a})

-- | Required. The ARN of the configuration.
dcrrsARN :: Lens' DescribeConfigurationResponse (Maybe Text)
dcrrsARN = lens _dcrrsARN (\s a -> s {_dcrrsARN = a})

-- | Required. The unique ID that Amazon MQ generates for the configuration.
dcrrsId :: Lens' DescribeConfigurationResponse (Maybe Text)
dcrrsId = lens _dcrrsId (\s a -> s {_dcrrsId = a})

-- | Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
dcrrsName :: Lens' DescribeConfigurationResponse (Maybe Text)
dcrrsName = lens _dcrrsName (\s a -> s {_dcrrsName = a})

-- | Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
dcrrsEngineVersion :: Lens' DescribeConfigurationResponse (Maybe Text)
dcrrsEngineVersion = lens _dcrrsEngineVersion (\s a -> s {_dcrrsEngineVersion = a})

-- | The list of all tags associated with this configuration.
dcrrsTags :: Lens' DescribeConfigurationResponse (HashMap Text Text)
dcrrsTags = lens _dcrrsTags (\s a -> s {_dcrrsTags = a}) . _Default . _Map

-- | Required. The description of the configuration.
dcrrsDescription :: Lens' DescribeConfigurationResponse (Maybe Text)
dcrrsDescription = lens _dcrrsDescription (\s a -> s {_dcrrsDescription = a})

-- | Required. The date and time of the configuration revision.
dcrrsCreated :: Lens' DescribeConfigurationResponse (Maybe UTCTime)
dcrrsCreated = lens _dcrrsCreated (\s a -> s {_dcrrsCreated = a}) . mapping _Time

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeConfigurationResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DescribeConfigurationResponse
