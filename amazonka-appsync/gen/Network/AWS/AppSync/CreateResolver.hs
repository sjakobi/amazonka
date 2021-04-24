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
-- Module      : Network.AWS.AppSync.CreateResolver
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a @Resolver@ object.
--
--
-- A resolver converts incoming requests into a format that a data source can understand and converts the data source's responses into GraphQL.
module Network.AWS.AppSync.CreateResolver
  ( -- * Creating a Request
    createResolver,
    CreateResolver,

    -- * Request Lenses
    crResponseMappingTemplate,
    crKind,
    crSyncConfig,
    crDataSourceName,
    crCachingConfig,
    crPipelineConfig,
    crRequestMappingTemplate,
    crApiId,
    crTypeName,
    crFieldName,

    -- * Destructuring the Response
    createResolverResponse,
    CreateResolverResponse,

    -- * Response Lenses
    crrrsResolver,
    crrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createResolver' smart constructor.
data CreateResolver = CreateResolver'
  { _crResponseMappingTemplate ::
      !(Maybe Text),
    _crKind :: !(Maybe ResolverKind),
    _crSyncConfig :: !(Maybe SyncConfig),
    _crDataSourceName :: !(Maybe Text),
    _crCachingConfig ::
      !(Maybe CachingConfig),
    _crPipelineConfig ::
      !(Maybe PipelineConfig),
    _crRequestMappingTemplate ::
      !(Maybe Text),
    _crApiId :: !Text,
    _crTypeName :: !Text,
    _crFieldName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateResolver' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crResponseMappingTemplate' - The mapping template to be used for responses from the data source.
--
-- * 'crKind' - The resolver type.     * __UNIT__ : A UNIT resolver type. A UNIT resolver is the default resolver type. A UNIT resolver enables you to execute a GraphQL query against a single data source.     * __PIPELINE__ : A PIPELINE resolver type. A PIPELINE resolver enables you to execute a series of @Function@ in a serial manner. You can use a pipeline resolver to execute a GraphQL query against multiple data sources.
--
-- * 'crSyncConfig' - The @SyncConfig@ for a resolver attached to a versioned datasource.
--
-- * 'crDataSourceName' - The name of the data source for which the resolver is being created.
--
-- * 'crCachingConfig' - The caching configuration for the resolver.
--
-- * 'crPipelineConfig' - The @PipelineConfig@ .
--
-- * 'crRequestMappingTemplate' - The mapping template to be used for requests. A resolver uses a request mapping template to convert a GraphQL expression into a format that a data source can understand. Mapping templates are written in Apache Velocity Template Language (VTL). VTL request mapping templates are optional when using a Lambda data source. For all other data sources, VTL request and response mapping templates are required.
--
-- * 'crApiId' - The ID for the GraphQL API for which the resolver is being created.
--
-- * 'crTypeName' - The name of the @Type@ .
--
-- * 'crFieldName' - The name of the field to attach the resolver to.
createResolver ::
  -- | 'crApiId'
  Text ->
  -- | 'crTypeName'
  Text ->
  -- | 'crFieldName'
  Text ->
  CreateResolver
createResolver pApiId_ pTypeName_ pFieldName_ =
  CreateResolver'
    { _crResponseMappingTemplate =
        Nothing,
      _crKind = Nothing,
      _crSyncConfig = Nothing,
      _crDataSourceName = Nothing,
      _crCachingConfig = Nothing,
      _crPipelineConfig = Nothing,
      _crRequestMappingTemplate = Nothing,
      _crApiId = pApiId_,
      _crTypeName = pTypeName_,
      _crFieldName = pFieldName_
    }

-- | The mapping template to be used for responses from the data source.
crResponseMappingTemplate :: Lens' CreateResolver (Maybe Text)
crResponseMappingTemplate = lens _crResponseMappingTemplate (\s a -> s {_crResponseMappingTemplate = a})

-- | The resolver type.     * __UNIT__ : A UNIT resolver type. A UNIT resolver is the default resolver type. A UNIT resolver enables you to execute a GraphQL query against a single data source.     * __PIPELINE__ : A PIPELINE resolver type. A PIPELINE resolver enables you to execute a series of @Function@ in a serial manner. You can use a pipeline resolver to execute a GraphQL query against multiple data sources.
crKind :: Lens' CreateResolver (Maybe ResolverKind)
crKind = lens _crKind (\s a -> s {_crKind = a})

-- | The @SyncConfig@ for a resolver attached to a versioned datasource.
crSyncConfig :: Lens' CreateResolver (Maybe SyncConfig)
crSyncConfig = lens _crSyncConfig (\s a -> s {_crSyncConfig = a})

-- | The name of the data source for which the resolver is being created.
crDataSourceName :: Lens' CreateResolver (Maybe Text)
crDataSourceName = lens _crDataSourceName (\s a -> s {_crDataSourceName = a})

-- | The caching configuration for the resolver.
crCachingConfig :: Lens' CreateResolver (Maybe CachingConfig)
crCachingConfig = lens _crCachingConfig (\s a -> s {_crCachingConfig = a})

-- | The @PipelineConfig@ .
crPipelineConfig :: Lens' CreateResolver (Maybe PipelineConfig)
crPipelineConfig = lens _crPipelineConfig (\s a -> s {_crPipelineConfig = a})

-- | The mapping template to be used for requests. A resolver uses a request mapping template to convert a GraphQL expression into a format that a data source can understand. Mapping templates are written in Apache Velocity Template Language (VTL). VTL request mapping templates are optional when using a Lambda data source. For all other data sources, VTL request and response mapping templates are required.
crRequestMappingTemplate :: Lens' CreateResolver (Maybe Text)
crRequestMappingTemplate = lens _crRequestMappingTemplate (\s a -> s {_crRequestMappingTemplate = a})

-- | The ID for the GraphQL API for which the resolver is being created.
crApiId :: Lens' CreateResolver Text
crApiId = lens _crApiId (\s a -> s {_crApiId = a})

-- | The name of the @Type@ .
crTypeName :: Lens' CreateResolver Text
crTypeName = lens _crTypeName (\s a -> s {_crTypeName = a})

-- | The name of the field to attach the resolver to.
crFieldName :: Lens' CreateResolver Text
crFieldName = lens _crFieldName (\s a -> s {_crFieldName = a})

instance AWSRequest CreateResolver where
  type Rs CreateResolver = CreateResolverResponse
  request = postJSON appSync
  response =
    receiveJSON
      ( \s h x ->
          CreateResolverResponse'
            <$> (x .?> "resolver") <*> (pure (fromEnum s))
      )

instance Hashable CreateResolver

instance NFData CreateResolver

instance ToHeaders CreateResolver where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateResolver where
  toJSON CreateResolver' {..} =
    object
      ( catMaybes
          [ ("responseMappingTemplate" .=)
              <$> _crResponseMappingTemplate,
            ("kind" .=) <$> _crKind,
            ("syncConfig" .=) <$> _crSyncConfig,
            ("dataSourceName" .=) <$> _crDataSourceName,
            ("cachingConfig" .=) <$> _crCachingConfig,
            ("pipelineConfig" .=) <$> _crPipelineConfig,
            ("requestMappingTemplate" .=)
              <$> _crRequestMappingTemplate,
            Just ("fieldName" .= _crFieldName)
          ]
      )

instance ToPath CreateResolver where
  toPath CreateResolver' {..} =
    mconcat
      [ "/v1/apis/",
        toBS _crApiId,
        "/types/",
        toBS _crTypeName,
        "/resolvers"
      ]

instance ToQuery CreateResolver where
  toQuery = const mempty

-- | /See:/ 'createResolverResponse' smart constructor.
data CreateResolverResponse = CreateResolverResponse'
  { _crrrsResolver ::
      !(Maybe Resolver),
    _crrrsResponseStatus ::
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

-- | Creates a value of 'CreateResolverResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrrsResolver' - The @Resolver@ object.
--
-- * 'crrrsResponseStatus' - -- | The response status code.
createResolverResponse ::
  -- | 'crrrsResponseStatus'
  Int ->
  CreateResolverResponse
createResolverResponse pResponseStatus_ =
  CreateResolverResponse'
    { _crrrsResolver = Nothing,
      _crrrsResponseStatus = pResponseStatus_
    }

-- | The @Resolver@ object.
crrrsResolver :: Lens' CreateResolverResponse (Maybe Resolver)
crrrsResolver = lens _crrrsResolver (\s a -> s {_crrrsResolver = a})

-- | -- | The response status code.
crrrsResponseStatus :: Lens' CreateResolverResponse Int
crrrsResponseStatus = lens _crrrsResponseStatus (\s a -> s {_crrrsResponseStatus = a})

instance NFData CreateResolverResponse
