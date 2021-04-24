{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.Configuration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.Configuration where

import Network.AWS.Lens
import Network.AWS.MQ.Types.AuthenticationStrategy
import Network.AWS.MQ.Types.ConfigurationRevision
import Network.AWS.MQ.Types.EngineType
import Network.AWS.Prelude

-- | Returns information about all configurations.
--
-- /See:/ 'configuration' smart constructor.
data Configuration = Configuration'
  { _cEngineType ::
      !(Maybe EngineType),
    _cAuthenticationStrategy ::
      !(Maybe AuthenticationStrategy),
    _cLatestRevision ::
      !(Maybe ConfigurationRevision),
    _cARN :: !(Maybe Text),
    _cId :: !(Maybe Text),
    _cName :: !(Maybe Text),
    _cEngineVersion :: !(Maybe Text),
    _cTags :: !(Maybe (Map Text Text)),
    _cDescription :: !(Maybe Text),
    _cCreated :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Configuration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEngineType' - Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
--
-- * 'cAuthenticationStrategy' - The authentication strategy associated with the configuration.
--
-- * 'cLatestRevision' - Required. The latest revision of the configuration.
--
-- * 'cARN' - Required. The ARN of the configuration.
--
-- * 'cId' - Required. The unique ID that Amazon MQ generates for the configuration.
--
-- * 'cName' - Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
--
-- * 'cEngineVersion' - Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
--
-- * 'cTags' - The list of all tags associated with this configuration.
--
-- * 'cDescription' - Required. The description of the configuration.
--
-- * 'cCreated' - Required. The date and time of the configuration revision.
configuration ::
  Configuration
configuration =
  Configuration'
    { _cEngineType = Nothing,
      _cAuthenticationStrategy = Nothing,
      _cLatestRevision = Nothing,
      _cARN = Nothing,
      _cId = Nothing,
      _cName = Nothing,
      _cEngineVersion = Nothing,
      _cTags = Nothing,
      _cDescription = Nothing,
      _cCreated = Nothing
    }

-- | Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
cEngineType :: Lens' Configuration (Maybe EngineType)
cEngineType = lens _cEngineType (\s a -> s {_cEngineType = a})

-- | The authentication strategy associated with the configuration.
cAuthenticationStrategy :: Lens' Configuration (Maybe AuthenticationStrategy)
cAuthenticationStrategy = lens _cAuthenticationStrategy (\s a -> s {_cAuthenticationStrategy = a})

-- | Required. The latest revision of the configuration.
cLatestRevision :: Lens' Configuration (Maybe ConfigurationRevision)
cLatestRevision = lens _cLatestRevision (\s a -> s {_cLatestRevision = a})

-- | Required. The ARN of the configuration.
cARN :: Lens' Configuration (Maybe Text)
cARN = lens _cARN (\s a -> s {_cARN = a})

-- | Required. The unique ID that Amazon MQ generates for the configuration.
cId :: Lens' Configuration (Maybe Text)
cId = lens _cId (\s a -> s {_cId = a})

-- | Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
cName :: Lens' Configuration (Maybe Text)
cName = lens _cName (\s a -> s {_cName = a})

-- | Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
cEngineVersion :: Lens' Configuration (Maybe Text)
cEngineVersion = lens _cEngineVersion (\s a -> s {_cEngineVersion = a})

-- | The list of all tags associated with this configuration.
cTags :: Lens' Configuration (HashMap Text Text)
cTags = lens _cTags (\s a -> s {_cTags = a}) . _Default . _Map

-- | Required. The description of the configuration.
cDescription :: Lens' Configuration (Maybe Text)
cDescription = lens _cDescription (\s a -> s {_cDescription = a})

-- | Required. The date and time of the configuration revision.
cCreated :: Lens' Configuration (Maybe UTCTime)
cCreated = lens _cCreated (\s a -> s {_cCreated = a}) . mapping _Time

instance FromJSON Configuration where
  parseJSON =
    withObject
      "Configuration"
      ( \x ->
          Configuration'
            <$> (x .:? "engineType")
            <*> (x .:? "authenticationStrategy")
            <*> (x .:? "latestRevision")
            <*> (x .:? "arn")
            <*> (x .:? "id")
            <*> (x .:? "name")
            <*> (x .:? "engineVersion")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "description")
            <*> (x .:? "created")
      )

instance Hashable Configuration

instance NFData Configuration
