{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types
  ( -- * Service Configuration
    apiGateway,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _UnauthorizedException,
    _ServiceUnavailableException,
    _LimitExceededException,
    _ConflictException,
    _TooManyRequestsException,

    -- * APIKeySourceType
    APIKeySourceType (..),

    -- * APIKeysFormat
    APIKeysFormat (..),

    -- * AuthorizerType
    AuthorizerType (..),

    -- * CacheClusterSize
    CacheClusterSize (..),

    -- * CacheClusterStatus
    CacheClusterStatus (..),

    -- * ConnectionType
    ConnectionType (..),

    -- * ContentHandlingStrategy
    ContentHandlingStrategy (..),

    -- * DocumentationPartType
    DocumentationPartType (..),

    -- * DomainNameStatus
    DomainNameStatus (..),

    -- * EndpointType
    EndpointType (..),

    -- * GatewayResponseType
    GatewayResponseType (..),

    -- * IntegrationType
    IntegrationType (..),

    -- * LocationStatusType
    LocationStatusType (..),

    -- * Op
    Op (..),

    -- * PutMode
    PutMode (..),

    -- * QuotaPeriodType
    QuotaPeriodType (..),

    -- * SecurityPolicy
    SecurityPolicy (..),

    -- * UnauthorizedCacheControlHeaderStrategy
    UnauthorizedCacheControlHeaderStrategy (..),

    -- * VPCLinkStatus
    VPCLinkStatus (..),

    -- * APIKey
    APIKey (..),
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

    -- * APIStage
    APIStage (..),
    apiStage,
    asApiId,
    asStage,
    asThrottle,

    -- * AccessLogSettings
    AccessLogSettings (..),
    accessLogSettings,
    alsDestinationARN,
    alsFormat,

    -- * Account
    Account (..),
    account,
    aThrottleSettings,
    aApiKeyVersion,
    aFeatures,
    aCloudwatchRoleARN,

    -- * Authorizer
    Authorizer (..),
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

    -- * BasePathMapping
    BasePathMapping (..),
    basePathMapping,
    bpmBasePath,
    bpmStage,
    bpmRestAPIId,

    -- * CanarySettings
    CanarySettings (..),
    canarySettings,
    csDeploymentId,
    csPercentTraffic,
    csUseStageCache,
    csStageVariableOverrides,

    -- * ClientCertificate
    ClientCertificate (..),
    clientCertificate,
    ccCreatedDate,
    ccExpirationDate,
    ccPemEncodedCertificate,
    ccTags,
    ccClientCertificateId,
    ccDescription,

    -- * Deployment
    Deployment (..),
    deployment,
    dCreatedDate,
    dId,
    dApiSummary,
    dDescription,

    -- * DeploymentCanarySettings
    DeploymentCanarySettings (..),
    deploymentCanarySettings,
    dcsPercentTraffic,
    dcsUseStageCache,
    dcsStageVariableOverrides,

    -- * DocumentationPart
    DocumentationPart (..),
    documentationPart,
    dpId,
    dpProperties,
    dpLocation,

    -- * DocumentationPartLocation
    DocumentationPartLocation (..),
    documentationPartLocation,
    dplName,
    dplMethod,
    dplStatusCode,
    dplPath,
    dplType,

    -- * DocumentationVersion
    DocumentationVersion (..),
    documentationVersion,
    dvCreatedDate,
    dvVersion,
    dvDescription,

    -- * DomainName
    DomainName (..),
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

    -- * EndpointConfiguration
    EndpointConfiguration (..),
    endpointConfiguration,
    ecTypes,
    ecVpcEndpointIds,

    -- * GatewayResponse
    GatewayResponse (..),
    gatewayResponse,
    grResponseTemplates,
    grStatusCode,
    grResponseParameters,
    grResponseType,
    grDefaultResponse,

    -- * Integration
    Integration (..),
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

    -- * IntegrationResponse
    IntegrationResponse (..),
    integrationResponse,
    irContentHandling,
    irResponseTemplates,
    irStatusCode,
    irResponseParameters,
    irSelectionPattern,

    -- * Method
    Method (..),
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

    -- * MethodResponse
    MethodResponse (..),
    methodResponse,
    mrResponseModels,
    mrStatusCode,
    mrResponseParameters,

    -- * MethodSetting
    MethodSetting (..),
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

    -- * MethodSnapshot
    MethodSnapshot (..),
    methodSnapshot,
    msApiKeyRequired,
    msAuthorizationType,

    -- * Model
    Model (..),
    model,
    mContentType,
    mSchema,
    mId,
    mName,
    mDescription,

    -- * MutualTLSAuthentication
    MutualTLSAuthentication (..),
    mutualTLSAuthentication,
    mtaTruststoreVersion,
    mtaTruststoreURI,
    mtaTruststoreWarnings,

    -- * MutualTLSAuthenticationInput
    MutualTLSAuthenticationInput (..),
    mutualTLSAuthenticationInput,
    mtaiTruststoreVersion,
    mtaiTruststoreURI,

    -- * PatchOperation
    PatchOperation (..),
    patchOperation,
    poOp,
    poFrom,
    poValue,
    poPath,

    -- * QuotaSettings
    QuotaSettings (..),
    quotaSettings,
    qsPeriod,
    qsLimit,
    qsOffset,

    -- * RequestValidator
    RequestValidator (..),
    requestValidator,
    rvValidateRequestBody,
    rvId,
    rvValidateRequestParameters,
    rvName,

    -- * Resource
    Resource (..),
    resource,
    rId,
    rPathPart,
    rParentId,
    rResourceMethods,
    rPath,

    -- * RestAPI
    RestAPI (..),
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

    -- * SDKConfigurationProperty
    SDKConfigurationProperty (..),
    sdkConfigurationProperty,
    scpRequired,
    scpFriendlyName,
    scpName,
    scpDescription,
    scpDefaultValue,

    -- * SDKType
    SDKType (..),
    sdkType,
    stFriendlyName,
    stId,
    stConfigurationProperties,
    stDescription,

    -- * Stage
    Stage (..),
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

    -- * StageKey
    StageKey (..),
    stageKey,
    skStageName,
    skRestAPIId,

    -- * TLSConfig
    TLSConfig (..),
    tlsConfig,
    tcInsecureSkipVerification,

    -- * ThrottleSettings
    ThrottleSettings (..),
    throttleSettings,
    tsBurstLimit,
    tsRateLimit,

    -- * Usage
    Usage (..),
    usage,
    uStartDate,
    uItems,
    uPosition,
    uUsagePlanId,
    uEndDate,

    -- * UsagePlan
    UsagePlan (..),
    usagePlan,
    upId,
    upName,
    upApiStages,
    upTags,
    upDescription,
    upQuota,
    upProductCode,
    upThrottle,

    -- * UsagePlanKey
    UsagePlanKey (..),
    usagePlanKey,
    upkId,
    upkName,
    upkValue,
    upkType,

    -- * VPCLink
    VPCLink (..),
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

import Network.AWS.APIGateway.Types.APIKey
import Network.AWS.APIGateway.Types.APIKeySourceType
import Network.AWS.APIGateway.Types.APIKeysFormat
import Network.AWS.APIGateway.Types.APIStage
import Network.AWS.APIGateway.Types.AccessLogSettings
import Network.AWS.APIGateway.Types.Account
import Network.AWS.APIGateway.Types.Authorizer
import Network.AWS.APIGateway.Types.AuthorizerType
import Network.AWS.APIGateway.Types.BasePathMapping
import Network.AWS.APIGateway.Types.CacheClusterSize
import Network.AWS.APIGateway.Types.CacheClusterStatus
import Network.AWS.APIGateway.Types.CanarySettings
import Network.AWS.APIGateway.Types.ClientCertificate
import Network.AWS.APIGateway.Types.ConnectionType
import Network.AWS.APIGateway.Types.ContentHandlingStrategy
import Network.AWS.APIGateway.Types.Deployment
import Network.AWS.APIGateway.Types.DeploymentCanarySettings
import Network.AWS.APIGateway.Types.DocumentationPart
import Network.AWS.APIGateway.Types.DocumentationPartLocation
import Network.AWS.APIGateway.Types.DocumentationPartType
import Network.AWS.APIGateway.Types.DocumentationVersion
import Network.AWS.APIGateway.Types.DomainName
import Network.AWS.APIGateway.Types.DomainNameStatus
import Network.AWS.APIGateway.Types.EndpointConfiguration
import Network.AWS.APIGateway.Types.EndpointType
import Network.AWS.APIGateway.Types.GatewayResponse
import Network.AWS.APIGateway.Types.GatewayResponseType
import Network.AWS.APIGateway.Types.Integration
import Network.AWS.APIGateway.Types.IntegrationResponse
import Network.AWS.APIGateway.Types.IntegrationType
import Network.AWS.APIGateway.Types.LocationStatusType
import Network.AWS.APIGateway.Types.Method
import Network.AWS.APIGateway.Types.MethodResponse
import Network.AWS.APIGateway.Types.MethodSetting
import Network.AWS.APIGateway.Types.MethodSnapshot
import Network.AWS.APIGateway.Types.Model
import Network.AWS.APIGateway.Types.MutualTLSAuthentication
import Network.AWS.APIGateway.Types.MutualTLSAuthenticationInput
import Network.AWS.APIGateway.Types.Op
import Network.AWS.APIGateway.Types.PatchOperation
import Network.AWS.APIGateway.Types.PutMode
import Network.AWS.APIGateway.Types.QuotaPeriodType
import Network.AWS.APIGateway.Types.QuotaSettings
import Network.AWS.APIGateway.Types.RequestValidator
import Network.AWS.APIGateway.Types.Resource
import Network.AWS.APIGateway.Types.RestAPI
import Network.AWS.APIGateway.Types.SDKConfigurationProperty
import Network.AWS.APIGateway.Types.SDKType
import Network.AWS.APIGateway.Types.SecurityPolicy
import Network.AWS.APIGateway.Types.Stage
import Network.AWS.APIGateway.Types.StageKey
import Network.AWS.APIGateway.Types.TLSConfig
import Network.AWS.APIGateway.Types.ThrottleSettings
import Network.AWS.APIGateway.Types.UnauthorizedCacheControlHeaderStrategy
import Network.AWS.APIGateway.Types.Usage
import Network.AWS.APIGateway.Types.UsagePlan
import Network.AWS.APIGateway.Types.UsagePlanKey
import Network.AWS.APIGateway.Types.VPCLink
import Network.AWS.APIGateway.Types.VPCLinkStatus
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-07-09@ of the Amazon API Gateway SDK configuration.
apiGateway :: Service
apiGateway =
  Service
    { _svcAbbrev = "APIGateway",
      _svcSigner = v4,
      _svcPrefix = "apigateway",
      _svcVersion = "2015-07-09",
      _svcEndpoint = defaultEndpoint apiGateway,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "APIGateway",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has
          ( hasCode "ProvisionedThroughputExceededException"
              . hasStatus 400
          )
          e =
        Just "throughput_exceeded"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has
          (hasCode "RequestThrottledException" . hasStatus 400)
          e =
        Just "request_throttled_exception"
      | has
          (hasCode "ThrottledException" . hasStatus 400)
          e =
        Just "throttled_exception"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | has (hasStatus 500) e = Just "general_server_error"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing

-- | The requested resource is not found. Make sure that the request URI is correct.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError apiGateway "NotFoundException"
    . hasStatus 404

-- | The submitted request is not valid, for example, the input is incomplete or incorrect. See the accompanying error message for details.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException =
  _MatchServiceError apiGateway "BadRequestException"
    . hasStatus 400

-- | The request is denied because the caller has insufficient permissions.
_UnauthorizedException :: AsError a => Getting (First ServiceError) a ServiceError
_UnauthorizedException =
  _MatchServiceError
    apiGateway
    "UnauthorizedException"
    . hasStatus 401

-- | The requested service is not available. For details see the accompanying error message. Retry after the specified time period.
_ServiceUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceUnavailableException =
  _MatchServiceError
    apiGateway
    "ServiceUnavailableException"
    . hasStatus 503

-- | The request exceeded the rate limit. Retry after the specified time period.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    apiGateway
    "LimitExceededException"
    . hasStatus 429

-- | The request configuration has conflicts. For details, see the accompanying error message.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError apiGateway "ConflictException"
    . hasStatus 409

-- | The request has reached its throttling limit. Retry after the specified time period.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException =
  _MatchServiceError
    apiGateway
    "TooManyRequestsException"
    . hasStatus 429
