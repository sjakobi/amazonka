{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- AWS AppSync provides API actions for creating and interacting with data sources using GraphQL from your application.
module Network.AWS.AppSync
  ( -- * Service Configuration
    appSync,

    -- * Errors
    -- $errors

    -- ** APIKeyValidityOutOfBoundsException
    _APIKeyValidityOutOfBoundsException,

    -- ** NotFoundException
    _NotFoundException,

    -- ** BadRequestException
    _BadRequestException,

    -- ** UnauthorizedException
    _UnauthorizedException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** GraphQLSchemaException
    _GraphQLSchemaException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** APILimitExceededException
    _APILimitExceededException,

    -- ** APIKeyLimitExceededException
    _APIKeyLimitExceededException,

    -- ** InternalFailureException
    _InternalFailureException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListResolvers (Paginated)
    module Network.AWS.AppSync.ListResolvers,

    -- ** UpdateDataSource
    module Network.AWS.AppSync.UpdateDataSource,

    -- ** ListDataSources (Paginated)
    module Network.AWS.AppSync.ListDataSources,

    -- ** CreateType
    module Network.AWS.AppSync.CreateType,

    -- ** GetFunction
    module Network.AWS.AppSync.GetFunction,

    -- ** DeleteDataSource
    module Network.AWS.AppSync.DeleteDataSource,

    -- ** CreateDataSource
    module Network.AWS.AppSync.CreateDataSource,

    -- ** DeleteType
    module Network.AWS.AppSync.DeleteType,

    -- ** UpdateType
    module Network.AWS.AppSync.UpdateType,

    -- ** ListResolversByFunction (Paginated)
    module Network.AWS.AppSync.ListResolversByFunction,

    -- ** UntagResource
    module Network.AWS.AppSync.UntagResource,

    -- ** ListFunctions (Paginated)
    module Network.AWS.AppSync.ListFunctions,

    -- ** GetIntrospectionSchema
    module Network.AWS.AppSync.GetIntrospectionSchema,

    -- ** UpdateGraphqlAPI
    module Network.AWS.AppSync.UpdateGraphqlAPI,

    -- ** ListGraphqlAPIs (Paginated)
    module Network.AWS.AppSync.ListGraphqlAPIs,

    -- ** TagResource
    module Network.AWS.AppSync.TagResource,

    -- ** DeleteGraphqlAPI
    module Network.AWS.AppSync.DeleteGraphqlAPI,

    -- ** GetResolver
    module Network.AWS.AppSync.GetResolver,

    -- ** DeleteAPICache
    module Network.AWS.AppSync.DeleteAPICache,

    -- ** UpdateAPICache
    module Network.AWS.AppSync.UpdateAPICache,

    -- ** GetSchemaCreationStatus
    module Network.AWS.AppSync.GetSchemaCreationStatus,

    -- ** GetAPICache
    module Network.AWS.AppSync.GetAPICache,

    -- ** UpdateResolver
    module Network.AWS.AppSync.UpdateResolver,

    -- ** DeleteResolver
    module Network.AWS.AppSync.DeleteResolver,

    -- ** GetGraphqlAPI
    module Network.AWS.AppSync.GetGraphqlAPI,

    -- ** ListTypes (Paginated)
    module Network.AWS.AppSync.ListTypes,

    -- ** GetType
    module Network.AWS.AppSync.GetType,

    -- ** CreateFunction
    module Network.AWS.AppSync.CreateFunction,

    -- ** ListAPIKeys (Paginated)
    module Network.AWS.AppSync.ListAPIKeys,

    -- ** DeleteAPIKey
    module Network.AWS.AppSync.DeleteAPIKey,

    -- ** UpdateAPIKey
    module Network.AWS.AppSync.UpdateAPIKey,

    -- ** GetDataSource
    module Network.AWS.AppSync.GetDataSource,

    -- ** DeleteFunction
    module Network.AWS.AppSync.DeleteFunction,

    -- ** UpdateFunction
    module Network.AWS.AppSync.UpdateFunction,

    -- ** CreateAPIKey
    module Network.AWS.AppSync.CreateAPIKey,

    -- ** StartSchemaCreation
    module Network.AWS.AppSync.StartSchemaCreation,

    -- ** FlushAPICache
    module Network.AWS.AppSync.FlushAPICache,

    -- ** CreateAPICache
    module Network.AWS.AppSync.CreateAPICache,

    -- ** CreateGraphqlAPI
    module Network.AWS.AppSync.CreateGraphqlAPI,

    -- ** ListTagsForResource
    module Network.AWS.AppSync.ListTagsForResource,

    -- ** CreateResolver
    module Network.AWS.AppSync.CreateResolver,

    -- * Types

    -- ** APICacheStatus
    APICacheStatus (..),

    -- ** APICacheType
    APICacheType (..),

    -- ** APICachingBehavior
    APICachingBehavior (..),

    -- ** AuthenticationType
    AuthenticationType (..),

    -- ** AuthorizationType
    AuthorizationType (..),

    -- ** ConflictDetectionType
    ConflictDetectionType (..),

    -- ** ConflictHandlerType
    ConflictHandlerType (..),

    -- ** DataSourceType
    DataSourceType (..),

    -- ** DefaultAction
    DefaultAction (..),

    -- ** FieldLogLevel
    FieldLogLevel (..),

    -- ** OutputType
    OutputType (..),

    -- ** RelationalDatabaseSourceType
    RelationalDatabaseSourceType (..),

    -- ** ResolverKind
    ResolverKind (..),

    -- ** SchemaStatus
    SchemaStatus (..),

    -- ** TypeDefinitionFormat
    TypeDefinitionFormat (..),

    -- ** APICache
    APICache,
    apiCache,
    acStatus,
    acAtRestEncryptionEnabled,
    acTtl,
    acType,
    acTransitEncryptionEnabled,
    acApiCachingBehavior,

    -- ** APIKey
    APIKey,
    apiKey,
    akId,
    akDeletes,
    akDescription,
    akExpires,

    -- ** AWSIAMConfig
    AWSIAMConfig,
    awsIAMConfig,
    aicSigningServiceName,
    aicSigningRegion,

    -- ** AdditionalAuthenticationProvider
    AdditionalAuthenticationProvider,
    additionalAuthenticationProvider,
    aapOpenIdConnectConfig,
    aapUserPoolConfig,
    aapAuthenticationType,

    -- ** AuthorizationConfig
    AuthorizationConfig,
    authorizationConfig,
    acAwsIAMConfig,
    acAuthorizationType,

    -- ** CachingConfig
    CachingConfig,
    cachingConfig,
    ccTtl,
    ccCachingKeys,

    -- ** CognitoUserPoolConfig
    CognitoUserPoolConfig,
    cognitoUserPoolConfig,
    cupcAppIdClientRegex,
    cupcUserPoolId,
    cupcAwsRegion,

    -- ** DataSource
    DataSource,
    dataSource,
    dsRelationalDatabaseConfig,
    dsServiceRoleARN,
    dsElasticsearchConfig,
    dsLambdaConfig,
    dsName,
    dsDynamodbConfig,
    dsDescription,
    dsDataSourceARN,
    dsType,
    dsHttpConfig,

    -- ** DeltaSyncConfig
    DeltaSyncConfig,
    deltaSyncConfig,
    dscBaseTableTTL,
    dscDeltaSyncTableName,
    dscDeltaSyncTableTTL,

    -- ** DynamodbDataSourceConfig
    DynamodbDataSourceConfig,
    dynamodbDataSourceConfig,
    ddscUseCallerCredentials,
    ddscVersioned,
    ddscDeltaSyncConfig,
    ddscTableName,
    ddscAwsRegion,

    -- ** ElasticsearchDataSourceConfig
    ElasticsearchDataSourceConfig,
    elasticsearchDataSourceConfig,
    edscEndpoint,
    edscAwsRegion,

    -- ** FunctionConfiguration
    FunctionConfiguration,
    functionConfiguration,
    fcResponseMappingTemplate,
    fcFunctionVersion,
    fcSyncConfig,
    fcDataSourceName,
    fcName,
    fcFunctionId,
    fcFunctionARN,
    fcDescription,
    fcRequestMappingTemplate,

    -- ** GraphqlAPI
    GraphqlAPI,
    graphqlAPI,
    gaWafWebACLARN,
    gaOpenIdConnectConfig,
    gaApiId,
    gaArn,
    gaName,
    gaUserPoolConfig,
    gaXrayEnabled,
    gaTags,
    gaLogConfig,
    gaAdditionalAuthenticationProviders,
    gaAuthenticationType,
    gaUris,

    -- ** HTTPDataSourceConfig
    HTTPDataSourceConfig,
    hTTPDataSourceConfig,
    httpdscAuthorizationConfig,
    httpdscEndpoint,

    -- ** LambdaConflictHandlerConfig
    LambdaConflictHandlerConfig,
    lambdaConflictHandlerConfig,
    lchcLambdaConflictHandlerARN,

    -- ** LambdaDataSourceConfig
    LambdaDataSourceConfig,
    lambdaDataSourceConfig,
    ldscLambdaFunctionARN,

    -- ** LogConfig
    LogConfig,
    logConfig,
    lcExcludeVerboseContent,
    lcFieldLogLevel,
    lcCloudWatchLogsRoleARN,

    -- ** OpenIdConnectConfig
    OpenIdConnectConfig,
    openIdConnectConfig,
    oiccClientId,
    oiccAuthTTL,
    oiccIatTTL,
    oiccIssuer,

    -- ** PipelineConfig
    PipelineConfig,
    pipelineConfig,
    pcFunctions,

    -- ** RDSHTTPEndpointConfig
    RDSHTTPEndpointConfig,
    rdsHTTPEndpointConfig,
    rhttpecAwsSecretStoreARN,
    rhttpecSchema,
    rhttpecDbClusterIdentifier,
    rhttpecAwsRegion,
    rhttpecDatabaseName,

    -- ** RelationalDatabaseDataSourceConfig
    RelationalDatabaseDataSourceConfig,
    relationalDatabaseDataSourceConfig,
    rddscRdsHTTPEndpointConfig,
    rddscRelationalDatabaseSourceType,

    -- ** Resolver
    Resolver,
    resolver,
    rResponseMappingTemplate,
    rTypeName,
    rKind,
    rSyncConfig,
    rDataSourceName,
    rCachingConfig,
    rResolverARN,
    rPipelineConfig,
    rFieldName,
    rRequestMappingTemplate,

    -- ** SyncConfig
    SyncConfig,
    syncConfig,
    scConflictHandler,
    scLambdaConflictHandlerConfig,
    scConflictDetection,

    -- ** Type
    Type,
    type',
    tFormat,
    tArn,
    tName,
    tDescription,
    tDefinition,

    -- ** UserPoolConfig
    UserPoolConfig,
    userPoolConfig,
    upcAppIdClientRegex,
    upcUserPoolId,
    upcAwsRegion,
    upcDefaultAction,
  )
where

import Network.AWS.AppSync.CreateAPICache
import Network.AWS.AppSync.CreateAPIKey
import Network.AWS.AppSync.CreateDataSource
import Network.AWS.AppSync.CreateFunction
import Network.AWS.AppSync.CreateGraphqlAPI
import Network.AWS.AppSync.CreateResolver
import Network.AWS.AppSync.CreateType
import Network.AWS.AppSync.DeleteAPICache
import Network.AWS.AppSync.DeleteAPIKey
import Network.AWS.AppSync.DeleteDataSource
import Network.AWS.AppSync.DeleteFunction
import Network.AWS.AppSync.DeleteGraphqlAPI
import Network.AWS.AppSync.DeleteResolver
import Network.AWS.AppSync.DeleteType
import Network.AWS.AppSync.FlushAPICache
import Network.AWS.AppSync.GetAPICache
import Network.AWS.AppSync.GetDataSource
import Network.AWS.AppSync.GetFunction
import Network.AWS.AppSync.GetGraphqlAPI
import Network.AWS.AppSync.GetIntrospectionSchema
import Network.AWS.AppSync.GetResolver
import Network.AWS.AppSync.GetSchemaCreationStatus
import Network.AWS.AppSync.GetType
import Network.AWS.AppSync.ListAPIKeys
import Network.AWS.AppSync.ListDataSources
import Network.AWS.AppSync.ListFunctions
import Network.AWS.AppSync.ListGraphqlAPIs
import Network.AWS.AppSync.ListResolvers
import Network.AWS.AppSync.ListResolversByFunction
import Network.AWS.AppSync.ListTagsForResource
import Network.AWS.AppSync.ListTypes
import Network.AWS.AppSync.StartSchemaCreation
import Network.AWS.AppSync.TagResource
import Network.AWS.AppSync.Types
import Network.AWS.AppSync.UntagResource
import Network.AWS.AppSync.UpdateAPICache
import Network.AWS.AppSync.UpdateAPIKey
import Network.AWS.AppSync.UpdateDataSource
import Network.AWS.AppSync.UpdateFunction
import Network.AWS.AppSync.UpdateGraphqlAPI
import Network.AWS.AppSync.UpdateResolver
import Network.AWS.AppSync.UpdateType
import Network.AWS.AppSync.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'AppSync'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
