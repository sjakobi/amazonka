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
-- Module      : Network.AWS.MQ.CreateConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
module Network.AWS.MQ.CreateConfiguration
  ( -- * Creating a Request
    createConfiguration,
    CreateConfiguration,

    -- * Request Lenses
    ccEngineType,
    ccAuthenticationStrategy,
    ccName,
    ccEngineVersion,
    ccTags,

    -- * Destructuring the Response
    createConfigurationResponse,
    CreateConfigurationResponse,

    -- * Response Lenses
    ccrrsAuthenticationStrategy,
    ccrrsLatestRevision,
    ccrrsARN,
    ccrrsId,
    ccrrsName,
    ccrrsCreated,
    ccrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
--
-- /See:/ 'createConfiguration' smart constructor.
data CreateConfiguration = CreateConfiguration'
  { _ccEngineType ::
      !(Maybe EngineType),
    _ccAuthenticationStrategy ::
      !(Maybe AuthenticationStrategy),
    _ccName :: !(Maybe Text),
    _ccEngineVersion ::
      !(Maybe Text),
    _ccTags ::
      !(Maybe (Map Text Text))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccEngineType' - Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
--
-- * 'ccAuthenticationStrategy' - The authentication strategy associated with the configuration.
--
-- * 'ccName' - Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
--
-- * 'ccEngineVersion' - Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
--
-- * 'ccTags' - Create tags when creating the configuration.
createConfiguration ::
  CreateConfiguration
createConfiguration =
  CreateConfiguration'
    { _ccEngineType = Nothing,
      _ccAuthenticationStrategy = Nothing,
      _ccName = Nothing,
      _ccEngineVersion = Nothing,
      _ccTags = Nothing
    }

-- | Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
ccEngineType :: Lens' CreateConfiguration (Maybe EngineType)
ccEngineType = lens _ccEngineType (\s a -> s {_ccEngineType = a})

-- | The authentication strategy associated with the configuration.
ccAuthenticationStrategy :: Lens' CreateConfiguration (Maybe AuthenticationStrategy)
ccAuthenticationStrategy = lens _ccAuthenticationStrategy (\s a -> s {_ccAuthenticationStrategy = a})

-- | Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
ccName :: Lens' CreateConfiguration (Maybe Text)
ccName = lens _ccName (\s a -> s {_ccName = a})

-- | Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
ccEngineVersion :: Lens' CreateConfiguration (Maybe Text)
ccEngineVersion = lens _ccEngineVersion (\s a -> s {_ccEngineVersion = a})

-- | Create tags when creating the configuration.
ccTags :: Lens' CreateConfiguration (HashMap Text Text)
ccTags = lens _ccTags (\s a -> s {_ccTags = a}) . _Default . _Map

instance AWSRequest CreateConfiguration where
  type
    Rs CreateConfiguration =
      CreateConfigurationResponse
  request = postJSON mq
  response =
    receiveJSON
      ( \s h x ->
          CreateConfigurationResponse'
            <$> (x .?> "authenticationStrategy")
            <*> (x .?> "latestRevision")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "name")
            <*> (x .?> "created")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateConfiguration

instance NFData CreateConfiguration

instance ToHeaders CreateConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateConfiguration where
  toJSON CreateConfiguration' {..} =
    object
      ( catMaybes
          [ ("engineType" .=) <$> _ccEngineType,
            ("authenticationStrategy" .=)
              <$> _ccAuthenticationStrategy,
            ("name" .=) <$> _ccName,
            ("engineVersion" .=) <$> _ccEngineVersion,
            ("tags" .=) <$> _ccTags
          ]
      )

instance ToPath CreateConfiguration where
  toPath = const "/v1/configurations"

instance ToQuery CreateConfiguration where
  toQuery = const mempty

-- | /See:/ 'createConfigurationResponse' smart constructor.
data CreateConfigurationResponse = CreateConfigurationResponse'
  { _ccrrsAuthenticationStrategy ::
      !( Maybe
           AuthenticationStrategy
       ),
    _ccrrsLatestRevision ::
      !( Maybe
           ConfigurationRevision
       ),
    _ccrrsARN ::
      !(Maybe Text),
    _ccrrsId ::
      !(Maybe Text),
    _ccrrsName ::
      !(Maybe Text),
    _ccrrsCreated ::
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

-- | Creates a value of 'CreateConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrsAuthenticationStrategy' - The authentication strategy associated with the configuration.
--
-- * 'ccrrsLatestRevision' - The latest revision of the configuration.
--
-- * 'ccrrsARN' - Required. The Amazon Resource Name (ARN) of the configuration.
--
-- * 'ccrrsId' - Required. The unique ID that Amazon MQ generates for the configuration.
--
-- * 'ccrrsName' - Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
--
-- * 'ccrrsCreated' - Required. The date and time of the configuration.
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createConfigurationResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateConfigurationResponse
createConfigurationResponse pResponseStatus_ =
  CreateConfigurationResponse'
    { _ccrrsAuthenticationStrategy =
        Nothing,
      _ccrrsLatestRevision = Nothing,
      _ccrrsARN = Nothing,
      _ccrrsId = Nothing,
      _ccrrsName = Nothing,
      _ccrrsCreated = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | The authentication strategy associated with the configuration.
ccrrsAuthenticationStrategy :: Lens' CreateConfigurationResponse (Maybe AuthenticationStrategy)
ccrrsAuthenticationStrategy = lens _ccrrsAuthenticationStrategy (\s a -> s {_ccrrsAuthenticationStrategy = a})

-- | The latest revision of the configuration.
ccrrsLatestRevision :: Lens' CreateConfigurationResponse (Maybe ConfigurationRevision)
ccrrsLatestRevision = lens _ccrrsLatestRevision (\s a -> s {_ccrrsLatestRevision = a})

-- | Required. The Amazon Resource Name (ARN) of the configuration.
ccrrsARN :: Lens' CreateConfigurationResponse (Maybe Text)
ccrrsARN = lens _ccrrsARN (\s a -> s {_ccrrsARN = a})

-- | Required. The unique ID that Amazon MQ generates for the configuration.
ccrrsId :: Lens' CreateConfigurationResponse (Maybe Text)
ccrrsId = lens _ccrrsId (\s a -> s {_ccrrsId = a})

-- | Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
ccrrsName :: Lens' CreateConfigurationResponse (Maybe Text)
ccrrsName = lens _ccrrsName (\s a -> s {_ccrrsName = a})

-- | Required. The date and time of the configuration.
ccrrsCreated :: Lens' CreateConfigurationResponse (Maybe UTCTime)
ccrrsCreated = lens _ccrrsCreated (\s a -> s {_ccrrsCreated = a}) . mapping _Time

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateConfigurationResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateConfigurationResponse
