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
-- Module      : Network.AWS.AppSync.UpdateResolver
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a @Resolver@ object.
module Network.AWS.AppSync.UpdateResolver
  ( -- * Creating a Request
    updateResolver,
    UpdateResolver,

    -- * Request Lenses
    urResponseMappingTemplate,
    urKind,
    urSyncConfig,
    urDataSourceName,
    urCachingConfig,
    urPipelineConfig,
    urRequestMappingTemplate,
    urApiId,
    urTypeName,
    urFieldName,

    -- * Destructuring the Response
    updateResolverResponse,
    UpdateResolverResponse,

    -- * Response Lenses
    ursResolver,
    ursResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateResolver' smart constructor.
data UpdateResolver = UpdateResolver'
  { _urResponseMappingTemplate ::
      !(Maybe Text),
    _urKind :: !(Maybe ResolverKind),
    _urSyncConfig :: !(Maybe SyncConfig),
    _urDataSourceName :: !(Maybe Text),
    _urCachingConfig ::
      !(Maybe CachingConfig),
    _urPipelineConfig ::
      !(Maybe PipelineConfig),
    _urRequestMappingTemplate ::
      !(Maybe Text),
    _urApiId :: !Text,
    _urTypeName :: !Text,
    _urFieldName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateResolver' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urResponseMappingTemplate' - The new response mapping template.
--
-- * 'urKind' - The resolver type.     * __UNIT__ : A UNIT resolver type. A UNIT resolver is the default resolver type. A UNIT resolver enables you to execute a GraphQL query against a single data source.     * __PIPELINE__ : A PIPELINE resolver type. A PIPELINE resolver enables you to execute a series of @Function@ in a serial manner. You can use a pipeline resolver to execute a GraphQL query against multiple data sources.
--
-- * 'urSyncConfig' - The @SyncConfig@ for a resolver attached to a versioned datasource.
--
-- * 'urDataSourceName' - The new data source name.
--
-- * 'urCachingConfig' - The caching configuration for the resolver.
--
-- * 'urPipelineConfig' - The @PipelineConfig@ .
--
-- * 'urRequestMappingTemplate' - The new request mapping template. A resolver uses a request mapping template to convert a GraphQL expression into a format that a data source can understand. Mapping templates are written in Apache Velocity Template Language (VTL). VTL request mapping templates are optional when using a Lambda data source. For all other data sources, VTL request and response mapping templates are required.
--
-- * 'urApiId' - The API ID.
--
-- * 'urTypeName' - The new type name.
--
-- * 'urFieldName' - The new field name.
updateResolver ::
  -- | 'urApiId'
  Text ->
  -- | 'urTypeName'
  Text ->
  -- | 'urFieldName'
  Text ->
  UpdateResolver
updateResolver pApiId_ pTypeName_ pFieldName_ =
  UpdateResolver'
    { _urResponseMappingTemplate =
        Nothing,
      _urKind = Nothing,
      _urSyncConfig = Nothing,
      _urDataSourceName = Nothing,
      _urCachingConfig = Nothing,
      _urPipelineConfig = Nothing,
      _urRequestMappingTemplate = Nothing,
      _urApiId = pApiId_,
      _urTypeName = pTypeName_,
      _urFieldName = pFieldName_
    }

-- | The new response mapping template.
urResponseMappingTemplate :: Lens' UpdateResolver (Maybe Text)
urResponseMappingTemplate = lens _urResponseMappingTemplate (\s a -> s {_urResponseMappingTemplate = a})

-- | The resolver type.     * __UNIT__ : A UNIT resolver type. A UNIT resolver is the default resolver type. A UNIT resolver enables you to execute a GraphQL query against a single data source.     * __PIPELINE__ : A PIPELINE resolver type. A PIPELINE resolver enables you to execute a series of @Function@ in a serial manner. You can use a pipeline resolver to execute a GraphQL query against multiple data sources.
urKind :: Lens' UpdateResolver (Maybe ResolverKind)
urKind = lens _urKind (\s a -> s {_urKind = a})

-- | The @SyncConfig@ for a resolver attached to a versioned datasource.
urSyncConfig :: Lens' UpdateResolver (Maybe SyncConfig)
urSyncConfig = lens _urSyncConfig (\s a -> s {_urSyncConfig = a})

-- | The new data source name.
urDataSourceName :: Lens' UpdateResolver (Maybe Text)
urDataSourceName = lens _urDataSourceName (\s a -> s {_urDataSourceName = a})

-- | The caching configuration for the resolver.
urCachingConfig :: Lens' UpdateResolver (Maybe CachingConfig)
urCachingConfig = lens _urCachingConfig (\s a -> s {_urCachingConfig = a})

-- | The @PipelineConfig@ .
urPipelineConfig :: Lens' UpdateResolver (Maybe PipelineConfig)
urPipelineConfig = lens _urPipelineConfig (\s a -> s {_urPipelineConfig = a})

-- | The new request mapping template. A resolver uses a request mapping template to convert a GraphQL expression into a format that a data source can understand. Mapping templates are written in Apache Velocity Template Language (VTL). VTL request mapping templates are optional when using a Lambda data source. For all other data sources, VTL request and response mapping templates are required.
urRequestMappingTemplate :: Lens' UpdateResolver (Maybe Text)
urRequestMappingTemplate = lens _urRequestMappingTemplate (\s a -> s {_urRequestMappingTemplate = a})

-- | The API ID.
urApiId :: Lens' UpdateResolver Text
urApiId = lens _urApiId (\s a -> s {_urApiId = a})

-- | The new type name.
urTypeName :: Lens' UpdateResolver Text
urTypeName = lens _urTypeName (\s a -> s {_urTypeName = a})

-- | The new field name.
urFieldName :: Lens' UpdateResolver Text
urFieldName = lens _urFieldName (\s a -> s {_urFieldName = a})

instance AWSRequest UpdateResolver where
  type Rs UpdateResolver = UpdateResolverResponse
  request = postJSON appSync
  response =
    receiveJSON
      ( \s h x ->
          UpdateResolverResponse'
            <$> (x .?> "resolver") <*> (pure (fromEnum s))
      )

instance Hashable UpdateResolver

instance NFData UpdateResolver

instance ToHeaders UpdateResolver where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateResolver where
  toJSON UpdateResolver' {..} =
    object
      ( catMaybes
          [ ("responseMappingTemplate" .=)
              <$> _urResponseMappingTemplate,
            ("kind" .=) <$> _urKind,
            ("syncConfig" .=) <$> _urSyncConfig,
            ("dataSourceName" .=) <$> _urDataSourceName,
            ("cachingConfig" .=) <$> _urCachingConfig,
            ("pipelineConfig" .=) <$> _urPipelineConfig,
            ("requestMappingTemplate" .=)
              <$> _urRequestMappingTemplate
          ]
      )

instance ToPath UpdateResolver where
  toPath UpdateResolver' {..} =
    mconcat
      [ "/v1/apis/",
        toBS _urApiId,
        "/types/",
        toBS _urTypeName,
        "/resolvers/",
        toBS _urFieldName
      ]

instance ToQuery UpdateResolver where
  toQuery = const mempty

-- | /See:/ 'updateResolverResponse' smart constructor.
data UpdateResolverResponse = UpdateResolverResponse'
  { _ursResolver ::
      !(Maybe Resolver),
    _ursResponseStatus ::
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

-- | Creates a value of 'UpdateResolverResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ursResolver' - The updated @Resolver@ object.
--
-- * 'ursResponseStatus' - -- | The response status code.
updateResolverResponse ::
  -- | 'ursResponseStatus'
  Int ->
  UpdateResolverResponse
updateResolverResponse pResponseStatus_ =
  UpdateResolverResponse'
    { _ursResolver = Nothing,
      _ursResponseStatus = pResponseStatus_
    }

-- | The updated @Resolver@ object.
ursResolver :: Lens' UpdateResolverResponse (Maybe Resolver)
ursResolver = lens _ursResolver (\s a -> s {_ursResolver = a})

-- | -- | The response status code.
ursResponseStatus :: Lens' UpdateResolverResponse Int
ursResponseStatus = lens _ursResponseStatus (\s a -> s {_ursResponseStatus = a})

instance NFData UpdateResolverResponse
