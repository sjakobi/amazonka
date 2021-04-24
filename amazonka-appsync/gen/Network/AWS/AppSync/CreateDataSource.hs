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
-- Module      : Network.AWS.AppSync.CreateDataSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a @DataSource@ object.
module Network.AWS.AppSync.CreateDataSource
  ( -- * Creating a Request
    createDataSource,
    CreateDataSource,

    -- * Request Lenses
    cdsRelationalDatabaseConfig,
    cdsServiceRoleARN,
    cdsElasticsearchConfig,
    cdsLambdaConfig,
    cdsDynamodbConfig,
    cdsDescription,
    cdsHttpConfig,
    cdsApiId,
    cdsName,
    cdsType,

    -- * Destructuring the Response
    createDataSourceResponse,
    CreateDataSourceResponse,

    -- * Response Lenses
    cdsrrsDataSource,
    cdsrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDataSource' smart constructor.
data CreateDataSource = CreateDataSource'
  { _cdsRelationalDatabaseConfig ::
      !( Maybe
           RelationalDatabaseDataSourceConfig
       ),
    _cdsServiceRoleARN :: !(Maybe Text),
    _cdsElasticsearchConfig ::
      !( Maybe
           ElasticsearchDataSourceConfig
       ),
    _cdsLambdaConfig ::
      !(Maybe LambdaDataSourceConfig),
    _cdsDynamodbConfig ::
      !(Maybe DynamodbDataSourceConfig),
    _cdsDescription :: !(Maybe Text),
    _cdsHttpConfig ::
      !(Maybe HTTPDataSourceConfig),
    _cdsApiId :: !Text,
    _cdsName :: !Text,
    _cdsType :: !DataSourceType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsRelationalDatabaseConfig' - Relational database settings.
--
-- * 'cdsServiceRoleARN' - The AWS IAM service role ARN for the data source. The system assumes this role when accessing the data source.
--
-- * 'cdsElasticsearchConfig' - Amazon Elasticsearch Service settings.
--
-- * 'cdsLambdaConfig' - AWS Lambda settings.
--
-- * 'cdsDynamodbConfig' - Amazon DynamoDB settings.
--
-- * 'cdsDescription' - A description of the @DataSource@ .
--
-- * 'cdsHttpConfig' - HTTP endpoint settings.
--
-- * 'cdsApiId' - The API ID for the GraphQL API for the @DataSource@ .
--
-- * 'cdsName' - A user-supplied name for the @DataSource@ .
--
-- * 'cdsType' - The type of the @DataSource@ .
createDataSource ::
  -- | 'cdsApiId'
  Text ->
  -- | 'cdsName'
  Text ->
  -- | 'cdsType'
  DataSourceType ->
  CreateDataSource
createDataSource pApiId_ pName_ pType_ =
  CreateDataSource'
    { _cdsRelationalDatabaseConfig =
        Nothing,
      _cdsServiceRoleARN = Nothing,
      _cdsElasticsearchConfig = Nothing,
      _cdsLambdaConfig = Nothing,
      _cdsDynamodbConfig = Nothing,
      _cdsDescription = Nothing,
      _cdsHttpConfig = Nothing,
      _cdsApiId = pApiId_,
      _cdsName = pName_,
      _cdsType = pType_
    }

-- | Relational database settings.
cdsRelationalDatabaseConfig :: Lens' CreateDataSource (Maybe RelationalDatabaseDataSourceConfig)
cdsRelationalDatabaseConfig = lens _cdsRelationalDatabaseConfig (\s a -> s {_cdsRelationalDatabaseConfig = a})

-- | The AWS IAM service role ARN for the data source. The system assumes this role when accessing the data source.
cdsServiceRoleARN :: Lens' CreateDataSource (Maybe Text)
cdsServiceRoleARN = lens _cdsServiceRoleARN (\s a -> s {_cdsServiceRoleARN = a})

-- | Amazon Elasticsearch Service settings.
cdsElasticsearchConfig :: Lens' CreateDataSource (Maybe ElasticsearchDataSourceConfig)
cdsElasticsearchConfig = lens _cdsElasticsearchConfig (\s a -> s {_cdsElasticsearchConfig = a})

-- | AWS Lambda settings.
cdsLambdaConfig :: Lens' CreateDataSource (Maybe LambdaDataSourceConfig)
cdsLambdaConfig = lens _cdsLambdaConfig (\s a -> s {_cdsLambdaConfig = a})

-- | Amazon DynamoDB settings.
cdsDynamodbConfig :: Lens' CreateDataSource (Maybe DynamodbDataSourceConfig)
cdsDynamodbConfig = lens _cdsDynamodbConfig (\s a -> s {_cdsDynamodbConfig = a})

-- | A description of the @DataSource@ .
cdsDescription :: Lens' CreateDataSource (Maybe Text)
cdsDescription = lens _cdsDescription (\s a -> s {_cdsDescription = a})

-- | HTTP endpoint settings.
cdsHttpConfig :: Lens' CreateDataSource (Maybe HTTPDataSourceConfig)
cdsHttpConfig = lens _cdsHttpConfig (\s a -> s {_cdsHttpConfig = a})

-- | The API ID for the GraphQL API for the @DataSource@ .
cdsApiId :: Lens' CreateDataSource Text
cdsApiId = lens _cdsApiId (\s a -> s {_cdsApiId = a})

-- | A user-supplied name for the @DataSource@ .
cdsName :: Lens' CreateDataSource Text
cdsName = lens _cdsName (\s a -> s {_cdsName = a})

-- | The type of the @DataSource@ .
cdsType :: Lens' CreateDataSource DataSourceType
cdsType = lens _cdsType (\s a -> s {_cdsType = a})

instance AWSRequest CreateDataSource where
  type Rs CreateDataSource = CreateDataSourceResponse
  request = postJSON appSync
  response =
    receiveJSON
      ( \s h x ->
          CreateDataSourceResponse'
            <$> (x .?> "dataSource") <*> (pure (fromEnum s))
      )

instance Hashable CreateDataSource

instance NFData CreateDataSource

instance ToHeaders CreateDataSource where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDataSource where
  toJSON CreateDataSource' {..} =
    object
      ( catMaybes
          [ ("relationalDatabaseConfig" .=)
              <$> _cdsRelationalDatabaseConfig,
            ("serviceRoleArn" .=) <$> _cdsServiceRoleARN,
            ("elasticsearchConfig" .=)
              <$> _cdsElasticsearchConfig,
            ("lambdaConfig" .=) <$> _cdsLambdaConfig,
            ("dynamodbConfig" .=) <$> _cdsDynamodbConfig,
            ("description" .=) <$> _cdsDescription,
            ("httpConfig" .=) <$> _cdsHttpConfig,
            Just ("name" .= _cdsName),
            Just ("type" .= _cdsType)
          ]
      )

instance ToPath CreateDataSource where
  toPath CreateDataSource' {..} =
    mconcat
      ["/v1/apis/", toBS _cdsApiId, "/datasources"]

instance ToQuery CreateDataSource where
  toQuery = const mempty

-- | /See:/ 'createDataSourceResponse' smart constructor.
data CreateDataSourceResponse = CreateDataSourceResponse'
  { _cdsrrsDataSource ::
      !(Maybe DataSource),
    _cdsrrsResponseStatus ::
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

-- | Creates a value of 'CreateDataSourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsrrsDataSource' - The @DataSource@ object.
--
-- * 'cdsrrsResponseStatus' - -- | The response status code.
createDataSourceResponse ::
  -- | 'cdsrrsResponseStatus'
  Int ->
  CreateDataSourceResponse
createDataSourceResponse pResponseStatus_ =
  CreateDataSourceResponse'
    { _cdsrrsDataSource =
        Nothing,
      _cdsrrsResponseStatus = pResponseStatus_
    }

-- | The @DataSource@ object.
cdsrrsDataSource :: Lens' CreateDataSourceResponse (Maybe DataSource)
cdsrrsDataSource = lens _cdsrrsDataSource (\s a -> s {_cdsrrsDataSource = a})

-- | -- | The response status code.
cdsrrsResponseStatus :: Lens' CreateDataSourceResponse Int
cdsrrsResponseStatus = lens _cdsrrsResponseStatus (\s a -> s {_cdsrrsResponseStatus = a})

instance NFData CreateDataSourceResponse
