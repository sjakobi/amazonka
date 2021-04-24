{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon API Gateway__
--
-- Amazon API Gateway helps developers deliver robust, secure, and scalable mobile and web application back ends. API Gateway allows developers to securely connect mobile and web applications to APIs that run on AWS Lambda, Amazon EC2, or other publicly addressable web services that are hosted outside of AWS.
module Network.AWS.APIGateway
  ( -- * Service Configuration
    apiGateway,

    -- * Errors
    -- $errors

    -- ** NotFoundException
    _NotFoundException,

    -- ** BadRequestException
    _BadRequestException,

    -- ** UnauthorizedException
    _UnauthorizedException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ConflictException
    _ConflictException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GenerateClientCertificate
    module Network.AWS.APIGateway.GenerateClientCertificate,

    -- ** UpdateIntegration
    module Network.AWS.APIGateway.UpdateIntegration,

    -- ** DeleteUsagePlan
    module Network.AWS.APIGateway.DeleteUsagePlan,

    -- ** DeleteIntegration
    module Network.AWS.APIGateway.DeleteIntegration,

    -- ** GetUsagePlanKey
    module Network.AWS.APIGateway.GetUsagePlanKey,

    -- ** GetAuthorizer
    module Network.AWS.APIGateway.GetAuthorizer,

    -- ** UpdateUsagePlan
    module Network.AWS.APIGateway.UpdateUsagePlan,

    -- ** GetDeployments (Paginated)
    module Network.AWS.APIGateway.GetDeployments,

    -- ** DeleteIntegrationResponse
    module Network.AWS.APIGateway.DeleteIntegrationResponse,

    -- ** FlushStageCache
    module Network.AWS.APIGateway.FlushStageCache,

    -- ** DeleteVPCLink
    module Network.AWS.APIGateway.DeleteVPCLink,

    -- ** DeleteDocumentationPart
    module Network.AWS.APIGateway.DeleteDocumentationPart,

    -- ** UpdateVPCLink
    module Network.AWS.APIGateway.UpdateVPCLink,

    -- ** CreateRestAPI
    module Network.AWS.APIGateway.CreateRestAPI,

    -- ** UpdateUsage
    module Network.AWS.APIGateway.UpdateUsage,

    -- ** UpdateIntegrationResponse
    module Network.AWS.APIGateway.UpdateIntegrationResponse,

    -- ** UpdateDocumentationPart
    module Network.AWS.APIGateway.UpdateDocumentationPart,

    -- ** GetSDKTypes (Paginated)
    module Network.AWS.APIGateway.GetSDKTypes,

    -- ** GetBasePathMappings (Paginated)
    module Network.AWS.APIGateway.GetBasePathMappings,

    -- ** GetModel
    module Network.AWS.APIGateway.GetModel,

    -- ** GetClientCertificates (Paginated)
    module Network.AWS.APIGateway.GetClientCertificates,

    -- ** TestInvokeMethod
    module Network.AWS.APIGateway.TestInvokeMethod,

    -- ** PutRestAPI
    module Network.AWS.APIGateway.PutRestAPI,

    -- ** GetAPIKey
    module Network.AWS.APIGateway.GetAPIKey,

    -- ** GetGatewayResponses (Paginated)
    module Network.AWS.APIGateway.GetGatewayResponses,

    -- ** DeleteModel
    module Network.AWS.APIGateway.DeleteModel,

    -- ** DeleteMethod
    module Network.AWS.APIGateway.DeleteMethod,

    -- ** GetDocumentationVersion
    module Network.AWS.APIGateway.GetDocumentationVersion,

    -- ** UpdateMethod
    module Network.AWS.APIGateway.UpdateMethod,

    -- ** UpdateModel
    module Network.AWS.APIGateway.UpdateModel,

    -- ** UpdateDomainName
    module Network.AWS.APIGateway.UpdateDomainName,

    -- ** CreateResource
    module Network.AWS.APIGateway.CreateResource,

    -- ** DeleteDomainName
    module Network.AWS.APIGateway.DeleteDomainName,

    -- ** UpdateRequestValidator
    module Network.AWS.APIGateway.UpdateRequestValidator,

    -- ** DeleteRequestValidator
    module Network.AWS.APIGateway.DeleteRequestValidator,

    -- ** GetUsagePlans (Paginated)
    module Network.AWS.APIGateway.GetUsagePlans,

    -- ** CreateRequestValidator
    module Network.AWS.APIGateway.CreateRequestValidator,

    -- ** CreateDomainName
    module Network.AWS.APIGateway.CreateDomainName,

    -- ** GetVPCLink
    module Network.AWS.APIGateway.GetVPCLink,

    -- ** UpdateResource
    module Network.AWS.APIGateway.UpdateResource,

    -- ** GetDocumentationPart
    module Network.AWS.APIGateway.GetDocumentationPart,

    -- ** GetUsage (Paginated)
    module Network.AWS.APIGateway.GetUsage,

    -- ** ImportDocumentationParts
    module Network.AWS.APIGateway.ImportDocumentationParts,

    -- ** UntagResource
    module Network.AWS.APIGateway.UntagResource,

    -- ** DeleteResource
    module Network.AWS.APIGateway.DeleteResource,

    -- ** GetIntegrationResponse
    module Network.AWS.APIGateway.GetIntegrationResponse,

    -- ** DeleteDeployment
    module Network.AWS.APIGateway.DeleteDeployment,

    -- ** CreateStage
    module Network.AWS.APIGateway.CreateStage,

    -- ** GetIntegration
    module Network.AWS.APIGateway.GetIntegration,

    -- ** TagResource
    module Network.AWS.APIGateway.TagResource,

    -- ** UpdateDeployment
    module Network.AWS.APIGateway.UpdateDeployment,

    -- ** GetUsagePlan
    module Network.AWS.APIGateway.GetUsagePlan,

    -- ** GetRestAPIs (Paginated)
    module Network.AWS.APIGateway.GetRestAPIs,

    -- ** CreateAuthorizer
    module Network.AWS.APIGateway.CreateAuthorizer,

    -- ** DeleteStage
    module Network.AWS.APIGateway.DeleteStage,

    -- ** UpdateStage
    module Network.AWS.APIGateway.UpdateStage,

    -- ** CreateUsagePlanKey
    module Network.AWS.APIGateway.CreateUsagePlanKey,

    -- ** GetGatewayResponse
    module Network.AWS.APIGateway.GetGatewayResponse,

    -- ** ImportRestAPI
    module Network.AWS.APIGateway.ImportRestAPI,

    -- ** PutMethodResponse
    module Network.AWS.APIGateway.PutMethodResponse,

    -- ** GetBasePathMapping
    module Network.AWS.APIGateway.GetBasePathMapping,

    -- ** GetRequestValidators (Paginated)
    module Network.AWS.APIGateway.GetRequestValidators,

    -- ** GetDomainNames (Paginated)
    module Network.AWS.APIGateway.GetDomainNames,

    -- ** GetSDKType
    module Network.AWS.APIGateway.GetSDKType,

    -- ** PutGatewayResponse
    module Network.AWS.APIGateway.PutGatewayResponse,

    -- ** GetExport
    module Network.AWS.APIGateway.GetExport,

    -- ** GetClientCertificate
    module Network.AWS.APIGateway.GetClientCertificate,

    -- ** TestInvokeAuthorizer
    module Network.AWS.APIGateway.TestInvokeAuthorizer,

    -- ** GetTags
    module Network.AWS.APIGateway.GetTags,

    -- ** GetDeployment
    module Network.AWS.APIGateway.GetDeployment,

    -- ** GetAccount
    module Network.AWS.APIGateway.GetAccount,

    -- ** PutIntegration
    module Network.AWS.APIGateway.PutIntegration,

    -- ** GetResources (Paginated)
    module Network.AWS.APIGateway.GetResources,

    -- ** GetResource
    module Network.AWS.APIGateway.GetResource,

    -- ** CreateDocumentationVersion
    module Network.AWS.APIGateway.CreateDocumentationVersion,

    -- ** GetAuthorizers (Paginated)
    module Network.AWS.APIGateway.GetAuthorizers,

    -- ** PutIntegrationResponse
    module Network.AWS.APIGateway.PutIntegrationResponse,

    -- ** GetUsagePlanKeys (Paginated)
    module Network.AWS.APIGateway.GetUsagePlanKeys,

    -- ** CreateDocumentationPart
    module Network.AWS.APIGateway.CreateDocumentationPart,

    -- ** GetStages
    module Network.AWS.APIGateway.GetStages,

    -- ** GetDomainName
    module Network.AWS.APIGateway.GetDomainName,

    -- ** GetModelTemplate
    module Network.AWS.APIGateway.GetModelTemplate,

    -- ** DeleteRestAPI
    module Network.AWS.APIGateway.DeleteRestAPI,

    -- ** GetMethod
    module Network.AWS.APIGateway.GetMethod,

    -- ** UpdateRestAPI
    module Network.AWS.APIGateway.UpdateRestAPI,

    -- ** CreateVPCLink
    module Network.AWS.APIGateway.CreateVPCLink,

    -- ** GetRequestValidator
    module Network.AWS.APIGateway.GetRequestValidator,

    -- ** UpdateDocumentationVersion
    module Network.AWS.APIGateway.UpdateDocumentationVersion,

    -- ** ImportAPIKeys
    module Network.AWS.APIGateway.ImportAPIKeys,

    -- ** DeleteDocumentationVersion
    module Network.AWS.APIGateway.DeleteDocumentationVersion,

    -- ** PutMethod
    module Network.AWS.APIGateway.PutMethod,

    -- ** DeleteAPIKey
    module Network.AWS.APIGateway.DeleteAPIKey,

    -- ** FlushStageAuthorizersCache
    module Network.AWS.APIGateway.FlushStageAuthorizersCache,

    -- ** UpdateAPIKey
    module Network.AWS.APIGateway.UpdateAPIKey,

    -- ** GetRestAPI
    module Network.AWS.APIGateway.GetRestAPI,

    -- ** CreateModel
    module Network.AWS.APIGateway.CreateModel,

    -- ** CreateAPIKey
    module Network.AWS.APIGateway.CreateAPIKey,

    -- ** DeleteUsagePlanKey
    module Network.AWS.APIGateway.DeleteUsagePlanKey,

    -- ** UpdateAccount
    module Network.AWS.APIGateway.UpdateAccount,

    -- ** GetVPCLinks (Paginated)
    module Network.AWS.APIGateway.GetVPCLinks,

    -- ** UpdateAuthorizer
    module Network.AWS.APIGateway.UpdateAuthorizer,

    -- ** CreateBasePathMapping
    module Network.AWS.APIGateway.CreateBasePathMapping,

    -- ** GetDocumentationParts (Paginated)
    module Network.AWS.APIGateway.GetDocumentationParts,

    -- ** DeleteAuthorizer
    module Network.AWS.APIGateway.DeleteAuthorizer,

    -- ** DeleteClientCertificate
    module Network.AWS.APIGateway.DeleteClientCertificate,

    -- ** DeleteMethodResponse
    module Network.AWS.APIGateway.DeleteMethodResponse,

    -- ** DeleteBasePathMapping
    module Network.AWS.APIGateway.DeleteBasePathMapping,

    -- ** GetDocumentationVersions (Paginated)
    module Network.AWS.APIGateway.GetDocumentationVersions,

    -- ** UpdateBasePathMapping
    module Network.AWS.APIGateway.UpdateBasePathMapping,

    -- ** UpdateClientCertificate
    module Network.AWS.APIGateway.UpdateClientCertificate,

    -- ** UpdateMethodResponse
    module Network.AWS.APIGateway.UpdateMethodResponse,

    -- ** CreateDeployment
    module Network.AWS.APIGateway.CreateDeployment,

    -- ** GetAPIKeys (Paginated)
    module Network.AWS.APIGateway.GetAPIKeys,

    -- ** CreateUsagePlan
    module Network.AWS.APIGateway.CreateUsagePlan,

    -- ** UpdateGatewayResponse
    module Network.AWS.APIGateway.UpdateGatewayResponse,

    -- ** GetSDK
    module Network.AWS.APIGateway.GetSDK,

    -- ** GetMethodResponse
    module Network.AWS.APIGateway.GetMethodResponse,

    -- ** GetModels (Paginated)
    module Network.AWS.APIGateway.GetModels,

    -- ** GetStage
    module Network.AWS.APIGateway.GetStage,

    -- ** DeleteGatewayResponse
    module Network.AWS.APIGateway.DeleteGatewayResponse,

    -- * Types

    -- ** APIKeySourceType
    APIKeySourceType (..),

    -- ** APIKeysFormat
    APIKeysFormat (..),

    -- ** AuthorizerType
    AuthorizerType (..),

    -- ** CacheClusterSize
    CacheClusterSize (..),

    -- ** CacheClusterStatus
    CacheClusterStatus (..),

    -- ** ConnectionType
    ConnectionType (..),

    -- ** ContentHandlingStrategy
    ContentHandlingStrategy (..),

    -- ** DocumentationPartType
    DocumentationPartType (..),

    -- ** DomainNameStatus
    DomainNameStatus (..),

    -- ** EndpointType
    EndpointType (..),

    -- ** GatewayResponseType
    GatewayResponseType (..),

    -- ** IntegrationType
    IntegrationType (..),

    -- ** LocationStatusType
    LocationStatusType (..),

    -- ** Op
    Op (..),

    -- ** PutMode
    PutMode (..),

    -- ** QuotaPeriodType
    QuotaPeriodType (..),

    -- ** SecurityPolicy
    SecurityPolicy (..),

    -- ** UnauthorizedCacheControlHeaderStrategy
    UnauthorizedCacheControlHeaderStrategy (..),

    -- ** VPCLinkStatus
    VPCLinkStatus (..),

    -- ** APIKey
    APIKey,
    apiKey,
    akCreatedDate,
    akCustomerId,
    akLastUpdatedDate,
    akStageKeys,
    akEnabled,
    akId,
    akName,
    akTags,
    akDescription,
    akValue,

    -- ** APIStage
    APIStage,
    apiStage,
    asApiId,
    asStage,
    asThrottle,

    -- ** AccessLogSettings
    AccessLogSettings,
    accessLogSettings,
    alsDestinationARN,
    alsFormat,

    -- ** Account
    Account,
    account,
    aThrottleSettings,
    aApiKeyVersion,
    aFeatures,
    aCloudwatchRoleARN,

    -- ** Authorizer
    Authorizer,
    authorizer,
    aIdentityValidationExpression,
    aAuthorizerCredentials,
    aId,
    aName,
    aProviderARNs,
    aAuthorizerURI,
    aIdentitySource,
    aType,
    aAuthType,
    aAuthorizerResultTtlInSeconds,

    -- ** BasePathMapping
    BasePathMapping,
    basePathMapping,
    bpmBasePath,
    bpmStage,
    bpmRestAPIId,

    -- ** CanarySettings
    CanarySettings,
    canarySettings,
    csDeploymentId,
    csPercentTraffic,
    csUseStageCache,
    csStageVariableOverrides,

    -- ** ClientCertificate
    ClientCertificate,
    clientCertificate,
    ccCreatedDate,
    ccExpirationDate,
    ccPemEncodedCertificate,
    ccTags,
    ccClientCertificateId,
    ccDescription,

    -- ** Deployment
    Deployment,
    deployment,
    dCreatedDate,
    dId,
    dApiSummary,
    dDescription,

    -- ** DeploymentCanarySettings
    DeploymentCanarySettings,
    deploymentCanarySettings,
    dcsPercentTraffic,
    dcsUseStageCache,
    dcsStageVariableOverrides,

    -- ** DocumentationPart
    DocumentationPart,
    documentationPart,
    dpId,
    dpProperties,
    dpLocation,

    -- ** DocumentationPartLocation
    DocumentationPartLocation,
    documentationPartLocation,
    dplName,
    dplMethod,
    dplStatusCode,
    dplPath,
    dplType,

    -- ** DocumentationVersion
    DocumentationVersion,
    documentationVersion,
    dvCreatedDate,
    dvVersion,
    dvDescription,

    -- ** DomainName
    DomainName,
    domainName,
    dnRegionalHostedZoneId,
    dnRegionalCertificateName,
    dnMutualTLSAuthentication,
    dnEndpointConfiguration,
    dnDistributionHostedZoneId,
    dnCertificateARN,
    dnDomainNameStatusMessage,
    dnDistributionDomainName,
    dnCertificateUploadDate,
    dnDomainName,
    dnTags,
    dnSecurityPolicy,
    dnDomainNameStatus,
    dnRegionalCertificateARN,
    dnCertificateName,
    dnRegionalDomainName,

    -- ** EndpointConfiguration
    EndpointConfiguration,
    endpointConfiguration,
    ecTypes,
    ecVpcEndpointIds,

    -- ** GatewayResponse
    GatewayResponse,
    gatewayResponse,
    grResponseTemplates,
    grStatusCode,
    grResponseParameters,
    grResponseType,
    grDefaultResponse,

    -- ** Integration
    Integration,
    integration,
    iHttpMethod,
    iPassthroughBehavior,
    iContentHandling,
    iUri,
    iConnectionType,
    iConnectionId,
    iRequestTemplates,
    iTimeoutInMillis,
    iCacheNamespace,
    iCacheKeyParameters,
    iTlsConfig,
    iIntegrationResponses,
    iRequestParameters,
    iType,
    iCredentials,

    -- ** IntegrationResponse
    IntegrationResponse,
    integrationResponse,
    irContentHandling,
    irResponseTemplates,
    irStatusCode,
    irResponseParameters,
    irSelectionPattern,

    -- ** Method
    Method,
    method,
    mHttpMethod,
    mMethodIntegration,
    mApiKeyRequired,
    mAuthorizationType,
    mRequestModels,
    mOperationName,
    mRequestValidatorId,
    mMethodResponses,
    mAuthorizerId,
    mRequestParameters,
    mAuthorizationScopes,

    -- ** MethodResponse
    MethodResponse,
    methodResponse,
    mrResponseModels,
    mrStatusCode,
    mrResponseParameters,

    -- ** MethodSetting
    MethodSetting,
    methodSetting,
    msDataTraceEnabled,
    msRequireAuthorizationForCacheControl,
    msCacheDataEncrypted,
    msThrottlingRateLimit,
    msThrottlingBurstLimit,
    msCacheTtlInSeconds,
    msCachingEnabled,
    msUnauthorizedCacheControlHeaderStrategy,
    msLoggingLevel,
    msMetricsEnabled,

    -- ** MethodSnapshot
    MethodSnapshot,
    methodSnapshot,
    msApiKeyRequired,
    msAuthorizationType,

    -- ** Model
    Model,
    model,
    mContentType,
    mSchema,
    mId,
    mName,
    mDescription,

    -- ** MutualTLSAuthentication
    MutualTLSAuthentication,
    mutualTLSAuthentication,
    mtaTruststoreVersion,
    mtaTruststoreURI,
    mtaTruststoreWarnings,

    -- ** MutualTLSAuthenticationInput
    MutualTLSAuthenticationInput,
    mutualTLSAuthenticationInput,
    mtaiTruststoreVersion,
    mtaiTruststoreURI,

    -- ** PatchOperation
    PatchOperation,
    patchOperation,
    poOp,
    poFrom,
    poValue,
    poPath,

    -- ** QuotaSettings
    QuotaSettings,
    quotaSettings,
    qsPeriod,
    qsLimit,
    qsOffset,

    -- ** RequestValidator
    RequestValidator,
    requestValidator,
    rvValidateRequestBody,
    rvId,
    rvValidateRequestParameters,
    rvName,

    -- ** Resource
    Resource,
    resource,
    rId,
    rPathPart,
    rParentId,
    rResourceMethods,
    rPath,

    -- ** RestAPI
    RestAPI,
    restAPI,
    raCreatedDate,
    raWarnings,
    raEndpointConfiguration,
    raBinaryMediaTypes,
    raId,
    raVersion,
    raName,
    raTags,
    raDescription,
    raDisableExecuteAPIEndpoint,
    raPolicy,
    raMinimumCompressionSize,
    raApiKeySource,

    -- ** SDKConfigurationProperty
    SDKConfigurationProperty,
    sdkConfigurationProperty,
    scpRequired,
    scpFriendlyName,
    scpName,
    scpDescription,
    scpDefaultValue,

    -- ** SDKType
    SDKType,
    sdkType,
    stFriendlyName,
    stId,
    stConfigurationProperties,
    stDescription,

    -- ** Stage
    Stage,
    stage,
    sDeploymentId,
    sCreatedDate,
    sTracingEnabled,
    sWebACLARN,
    sLastUpdatedDate,
    sCacheClusterEnabled,
    sStageName,
    sDocumentationVersion,
    sVariables,
    sAccessLogSettings,
    sTags,
    sClientCertificateId,
    sDescription,
    sCanarySettings,
    sCacheClusterSize,
    sMethodSettings,
    sCacheClusterStatus,

    -- ** StageKey
    StageKey,
    stageKey,
    skStageName,
    skRestAPIId,

    -- ** TLSConfig
    TLSConfig,
    tlsConfig,
    tcInsecureSkipVerification,

    -- ** ThrottleSettings
    ThrottleSettings,
    throttleSettings,
    tsBurstLimit,
    tsRateLimit,

    -- ** Usage
    Usage,
    usage,
    uStartDate,
    uItems,
    uPosition,
    uUsagePlanId,
    uEndDate,

    -- ** UsagePlan
    UsagePlan,
    usagePlan,
    upId,
    upName,
    upApiStages,
    upTags,
    upDescription,
    upQuota,
    upProductCode,
    upThrottle,

    -- ** UsagePlanKey
    UsagePlanKey,
    usagePlanKey,
    upkId,
    upkName,
    upkValue,
    upkType,

    -- ** VPCLink
    VPCLink,
    vpcLink,
    vlStatusMessage,
    vlStatus,
    vlId,
    vlName,
    vlTargetARNs,
    vlTags,
    vlDescription,
  )
where

import Network.AWS.APIGateway.CreateAPIKey
import Network.AWS.APIGateway.CreateAuthorizer
import Network.AWS.APIGateway.CreateBasePathMapping
import Network.AWS.APIGateway.CreateDeployment
import Network.AWS.APIGateway.CreateDocumentationPart
import Network.AWS.APIGateway.CreateDocumentationVersion
import Network.AWS.APIGateway.CreateDomainName
import Network.AWS.APIGateway.CreateModel
import Network.AWS.APIGateway.CreateRequestValidator
import Network.AWS.APIGateway.CreateResource
import Network.AWS.APIGateway.CreateRestAPI
import Network.AWS.APIGateway.CreateStage
import Network.AWS.APIGateway.CreateUsagePlan
import Network.AWS.APIGateway.CreateUsagePlanKey
import Network.AWS.APIGateway.CreateVPCLink
import Network.AWS.APIGateway.DeleteAPIKey
import Network.AWS.APIGateway.DeleteAuthorizer
import Network.AWS.APIGateway.DeleteBasePathMapping
import Network.AWS.APIGateway.DeleteClientCertificate
import Network.AWS.APIGateway.DeleteDeployment
import Network.AWS.APIGateway.DeleteDocumentationPart
import Network.AWS.APIGateway.DeleteDocumentationVersion
import Network.AWS.APIGateway.DeleteDomainName
import Network.AWS.APIGateway.DeleteGatewayResponse
import Network.AWS.APIGateway.DeleteIntegration
import Network.AWS.APIGateway.DeleteIntegrationResponse
import Network.AWS.APIGateway.DeleteMethod
import Network.AWS.APIGateway.DeleteMethodResponse
import Network.AWS.APIGateway.DeleteModel
import Network.AWS.APIGateway.DeleteRequestValidator
import Network.AWS.APIGateway.DeleteResource
import Network.AWS.APIGateway.DeleteRestAPI
import Network.AWS.APIGateway.DeleteStage
import Network.AWS.APIGateway.DeleteUsagePlan
import Network.AWS.APIGateway.DeleteUsagePlanKey
import Network.AWS.APIGateway.DeleteVPCLink
import Network.AWS.APIGateway.FlushStageAuthorizersCache
import Network.AWS.APIGateway.FlushStageCache
import Network.AWS.APIGateway.GenerateClientCertificate
import Network.AWS.APIGateway.GetAPIKey
import Network.AWS.APIGateway.GetAPIKeys
import Network.AWS.APIGateway.GetAccount
import Network.AWS.APIGateway.GetAuthorizer
import Network.AWS.APIGateway.GetAuthorizers
import Network.AWS.APIGateway.GetBasePathMapping
import Network.AWS.APIGateway.GetBasePathMappings
import Network.AWS.APIGateway.GetClientCertificate
import Network.AWS.APIGateway.GetClientCertificates
import Network.AWS.APIGateway.GetDeployment
import Network.AWS.APIGateway.GetDeployments
import Network.AWS.APIGateway.GetDocumentationPart
import Network.AWS.APIGateway.GetDocumentationParts
import Network.AWS.APIGateway.GetDocumentationVersion
import Network.AWS.APIGateway.GetDocumentationVersions
import Network.AWS.APIGateway.GetDomainName
import Network.AWS.APIGateway.GetDomainNames
import Network.AWS.APIGateway.GetExport
import Network.AWS.APIGateway.GetGatewayResponse
import Network.AWS.APIGateway.GetGatewayResponses
import Network.AWS.APIGateway.GetIntegration
import Network.AWS.APIGateway.GetIntegrationResponse
import Network.AWS.APIGateway.GetMethod
import Network.AWS.APIGateway.GetMethodResponse
import Network.AWS.APIGateway.GetModel
import Network.AWS.APIGateway.GetModelTemplate
import Network.AWS.APIGateway.GetModels
import Network.AWS.APIGateway.GetRequestValidator
import Network.AWS.APIGateway.GetRequestValidators
import Network.AWS.APIGateway.GetResource
import Network.AWS.APIGateway.GetResources
import Network.AWS.APIGateway.GetRestAPI
import Network.AWS.APIGateway.GetRestAPIs
import Network.AWS.APIGateway.GetSDK
import Network.AWS.APIGateway.GetSDKType
import Network.AWS.APIGateway.GetSDKTypes
import Network.AWS.APIGateway.GetStage
import Network.AWS.APIGateway.GetStages
import Network.AWS.APIGateway.GetTags
import Network.AWS.APIGateway.GetUsage
import Network.AWS.APIGateway.GetUsagePlan
import Network.AWS.APIGateway.GetUsagePlanKey
import Network.AWS.APIGateway.GetUsagePlanKeys
import Network.AWS.APIGateway.GetUsagePlans
import Network.AWS.APIGateway.GetVPCLink
import Network.AWS.APIGateway.GetVPCLinks
import Network.AWS.APIGateway.ImportAPIKeys
import Network.AWS.APIGateway.ImportDocumentationParts
import Network.AWS.APIGateway.ImportRestAPI
import Network.AWS.APIGateway.PutGatewayResponse
import Network.AWS.APIGateway.PutIntegration
import Network.AWS.APIGateway.PutIntegrationResponse
import Network.AWS.APIGateway.PutMethod
import Network.AWS.APIGateway.PutMethodResponse
import Network.AWS.APIGateway.PutRestAPI
import Network.AWS.APIGateway.TagResource
import Network.AWS.APIGateway.TestInvokeAuthorizer
import Network.AWS.APIGateway.TestInvokeMethod
import Network.AWS.APIGateway.Types
import Network.AWS.APIGateway.UntagResource
import Network.AWS.APIGateway.UpdateAPIKey
import Network.AWS.APIGateway.UpdateAccount
import Network.AWS.APIGateway.UpdateAuthorizer
import Network.AWS.APIGateway.UpdateBasePathMapping
import Network.AWS.APIGateway.UpdateClientCertificate
import Network.AWS.APIGateway.UpdateDeployment
import Network.AWS.APIGateway.UpdateDocumentationPart
import Network.AWS.APIGateway.UpdateDocumentationVersion
import Network.AWS.APIGateway.UpdateDomainName
import Network.AWS.APIGateway.UpdateGatewayResponse
import Network.AWS.APIGateway.UpdateIntegration
import Network.AWS.APIGateway.UpdateIntegrationResponse
import Network.AWS.APIGateway.UpdateMethod
import Network.AWS.APIGateway.UpdateMethodResponse
import Network.AWS.APIGateway.UpdateModel
import Network.AWS.APIGateway.UpdateRequestValidator
import Network.AWS.APIGateway.UpdateResource
import Network.AWS.APIGateway.UpdateRestAPI
import Network.AWS.APIGateway.UpdateStage
import Network.AWS.APIGateway.UpdateUsage
import Network.AWS.APIGateway.UpdateUsagePlan
import Network.AWS.APIGateway.UpdateVPCLink
import Network.AWS.APIGateway.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'APIGateway'.

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
