{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.DataSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.DataSource where

import Network.AWS.AppSync.Types.DataSourceType
import Network.AWS.AppSync.Types.DynamodbDataSourceConfig
import Network.AWS.AppSync.Types.ElasticsearchDataSourceConfig
import Network.AWS.AppSync.Types.HTTPDataSourceConfig
import Network.AWS.AppSync.Types.LambdaDataSourceConfig
import Network.AWS.AppSync.Types.RelationalDatabaseDataSourceConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a data source.
--
--
--
-- /See:/ 'dataSource' smart constructor.
data DataSource = DataSource'
  { _dsRelationalDatabaseConfig ::
      !(Maybe RelationalDatabaseDataSourceConfig),
    _dsServiceRoleARN :: !(Maybe Text),
    _dsElasticsearchConfig ::
      !(Maybe ElasticsearchDataSourceConfig),
    _dsLambdaConfig ::
      !(Maybe LambdaDataSourceConfig),
    _dsName :: !(Maybe Text),
    _dsDynamodbConfig ::
      !(Maybe DynamodbDataSourceConfig),
    _dsDescription :: !(Maybe Text),
    _dsDataSourceARN :: !(Maybe Text),
    _dsType :: !(Maybe DataSourceType),
    _dsHttpConfig :: !(Maybe HTTPDataSourceConfig)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsRelationalDatabaseConfig' - Relational database settings.
--
-- * 'dsServiceRoleARN' - The AWS IAM service role ARN for the data source. The system assumes this role when accessing the data source.
--
-- * 'dsElasticsearchConfig' - Amazon Elasticsearch Service settings.
--
-- * 'dsLambdaConfig' - AWS Lambda settings.
--
-- * 'dsName' - The name of the data source.
--
-- * 'dsDynamodbConfig' - Amazon DynamoDB settings.
--
-- * 'dsDescription' - The description of the data source.
--
-- * 'dsDataSourceARN' - The data source ARN.
--
-- * 'dsType' - The type of the data source.     * __AMAZON_DYNAMODB__ : The data source is an Amazon DynamoDB table.     * __AMAZON_ELASTICSEARCH__ : The data source is an Amazon Elasticsearch Service domain.     * __AWS_LAMBDA__ : The data source is an AWS Lambda function.     * __NONE__ : There is no data source. This type is used when you wish to invoke a GraphQL operation without connecting to a data source, such as performing data transformation with resolvers or triggering a subscription to be invoked from a mutation.     * __HTTP__ : The data source is an HTTP endpoint.     * __RELATIONAL_DATABASE__ : The data source is a relational database.
--
-- * 'dsHttpConfig' - HTTP endpoint settings.
dataSource ::
  DataSource
dataSource =
  DataSource'
    { _dsRelationalDatabaseConfig = Nothing,
      _dsServiceRoleARN = Nothing,
      _dsElasticsearchConfig = Nothing,
      _dsLambdaConfig = Nothing,
      _dsName = Nothing,
      _dsDynamodbConfig = Nothing,
      _dsDescription = Nothing,
      _dsDataSourceARN = Nothing,
      _dsType = Nothing,
      _dsHttpConfig = Nothing
    }

-- | Relational database settings.
dsRelationalDatabaseConfig :: Lens' DataSource (Maybe RelationalDatabaseDataSourceConfig)
dsRelationalDatabaseConfig = lens _dsRelationalDatabaseConfig (\s a -> s {_dsRelationalDatabaseConfig = a})

-- | The AWS IAM service role ARN for the data source. The system assumes this role when accessing the data source.
dsServiceRoleARN :: Lens' DataSource (Maybe Text)
dsServiceRoleARN = lens _dsServiceRoleARN (\s a -> s {_dsServiceRoleARN = a})

-- | Amazon Elasticsearch Service settings.
dsElasticsearchConfig :: Lens' DataSource (Maybe ElasticsearchDataSourceConfig)
dsElasticsearchConfig = lens _dsElasticsearchConfig (\s a -> s {_dsElasticsearchConfig = a})

-- | AWS Lambda settings.
dsLambdaConfig :: Lens' DataSource (Maybe LambdaDataSourceConfig)
dsLambdaConfig = lens _dsLambdaConfig (\s a -> s {_dsLambdaConfig = a})

-- | The name of the data source.
dsName :: Lens' DataSource (Maybe Text)
dsName = lens _dsName (\s a -> s {_dsName = a})

-- | Amazon DynamoDB settings.
dsDynamodbConfig :: Lens' DataSource (Maybe DynamodbDataSourceConfig)
dsDynamodbConfig = lens _dsDynamodbConfig (\s a -> s {_dsDynamodbConfig = a})

-- | The description of the data source.
dsDescription :: Lens' DataSource (Maybe Text)
dsDescription = lens _dsDescription (\s a -> s {_dsDescription = a})

-- | The data source ARN.
dsDataSourceARN :: Lens' DataSource (Maybe Text)
dsDataSourceARN = lens _dsDataSourceARN (\s a -> s {_dsDataSourceARN = a})

-- | The type of the data source.     * __AMAZON_DYNAMODB__ : The data source is an Amazon DynamoDB table.     * __AMAZON_ELASTICSEARCH__ : The data source is an Amazon Elasticsearch Service domain.     * __AWS_LAMBDA__ : The data source is an AWS Lambda function.     * __NONE__ : There is no data source. This type is used when you wish to invoke a GraphQL operation without connecting to a data source, such as performing data transformation with resolvers or triggering a subscription to be invoked from a mutation.     * __HTTP__ : The data source is an HTTP endpoint.     * __RELATIONAL_DATABASE__ : The data source is a relational database.
dsType :: Lens' DataSource (Maybe DataSourceType)
dsType = lens _dsType (\s a -> s {_dsType = a})

-- | HTTP endpoint settings.
dsHttpConfig :: Lens' DataSource (Maybe HTTPDataSourceConfig)
dsHttpConfig = lens _dsHttpConfig (\s a -> s {_dsHttpConfig = a})

instance FromJSON DataSource where
  parseJSON =
    withObject
      "DataSource"
      ( \x ->
          DataSource'
            <$> (x .:? "relationalDatabaseConfig")
            <*> (x .:? "serviceRoleArn")
            <*> (x .:? "elasticsearchConfig")
            <*> (x .:? "lambdaConfig")
            <*> (x .:? "name")
            <*> (x .:? "dynamodbConfig")
            <*> (x .:? "description")
            <*> (x .:? "dataSourceArn")
            <*> (x .:? "type")
            <*> (x .:? "httpConfig")
      )

instance Hashable DataSource

instance NFData DataSource
