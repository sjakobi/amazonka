{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.DynamodbDataSourceConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.DynamodbDataSourceConfig where

import Network.AWS.AppSync.Types.DeltaSyncConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an Amazon DynamoDB data source configuration.
--
--
--
-- /See:/ 'dynamodbDataSourceConfig' smart constructor.
data DynamodbDataSourceConfig = DynamodbDataSourceConfig'
  { _ddscUseCallerCredentials ::
      !(Maybe Bool),
    _ddscVersioned ::
      !(Maybe Bool),
    _ddscDeltaSyncConfig ::
      !( Maybe
           DeltaSyncConfig
       ),
    _ddscTableName ::
      !Text,
    _ddscAwsRegion ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DynamodbDataSourceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddscUseCallerCredentials' - Set to TRUE to use Amazon Cognito credentials with this data source.
--
-- * 'ddscVersioned' - Set to TRUE to use Conflict Detection and Resolution with this data source.
--
-- * 'ddscDeltaSyncConfig' - The @DeltaSyncConfig@ for a versioned datasource.
--
-- * 'ddscTableName' - The table name.
--
-- * 'ddscAwsRegion' - The AWS Region.
dynamodbDataSourceConfig ::
  -- | 'ddscTableName'
  Text ->
  -- | 'ddscAwsRegion'
  Text ->
  DynamodbDataSourceConfig
dynamodbDataSourceConfig pTableName_ pAwsRegion_ =
  DynamodbDataSourceConfig'
    { _ddscUseCallerCredentials =
        Nothing,
      _ddscVersioned = Nothing,
      _ddscDeltaSyncConfig = Nothing,
      _ddscTableName = pTableName_,
      _ddscAwsRegion = pAwsRegion_
    }

-- | Set to TRUE to use Amazon Cognito credentials with this data source.
ddscUseCallerCredentials :: Lens' DynamodbDataSourceConfig (Maybe Bool)
ddscUseCallerCredentials = lens _ddscUseCallerCredentials (\s a -> s {_ddscUseCallerCredentials = a})

-- | Set to TRUE to use Conflict Detection and Resolution with this data source.
ddscVersioned :: Lens' DynamodbDataSourceConfig (Maybe Bool)
ddscVersioned = lens _ddscVersioned (\s a -> s {_ddscVersioned = a})

-- | The @DeltaSyncConfig@ for a versioned datasource.
ddscDeltaSyncConfig :: Lens' DynamodbDataSourceConfig (Maybe DeltaSyncConfig)
ddscDeltaSyncConfig = lens _ddscDeltaSyncConfig (\s a -> s {_ddscDeltaSyncConfig = a})

-- | The table name.
ddscTableName :: Lens' DynamodbDataSourceConfig Text
ddscTableName = lens _ddscTableName (\s a -> s {_ddscTableName = a})

-- | The AWS Region.
ddscAwsRegion :: Lens' DynamodbDataSourceConfig Text
ddscAwsRegion = lens _ddscAwsRegion (\s a -> s {_ddscAwsRegion = a})

instance FromJSON DynamodbDataSourceConfig where
  parseJSON =
    withObject
      "DynamodbDataSourceConfig"
      ( \x ->
          DynamodbDataSourceConfig'
            <$> (x .:? "useCallerCredentials")
            <*> (x .:? "versioned")
            <*> (x .:? "deltaSyncConfig")
            <*> (x .: "tableName")
            <*> (x .: "awsRegion")
      )

instance Hashable DynamodbDataSourceConfig

instance NFData DynamodbDataSourceConfig

instance ToJSON DynamodbDataSourceConfig where
  toJSON DynamodbDataSourceConfig' {..} =
    object
      ( catMaybes
          [ ("useCallerCredentials" .=)
              <$> _ddscUseCallerCredentials,
            ("versioned" .=) <$> _ddscVersioned,
            ("deltaSyncConfig" .=) <$> _ddscDeltaSyncConfig,
            Just ("tableName" .= _ddscTableName),
            Just ("awsRegion" .= _ddscAwsRegion)
          ]
      )
