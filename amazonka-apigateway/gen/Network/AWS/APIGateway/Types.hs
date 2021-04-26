{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _UnauthorizedException,
    _ServiceUnavailableException,
    _LimitExceededException,
    _ConflictException,
    _TooManyRequestsException,

    -- * ApiKeySourceType
    ApiKeySourceType (..),

    -- * ApiKeysFormat
    ApiKeysFormat (..),

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

    -- * VpcLinkStatus
    VpcLinkStatus (..),

    -- * AccessLogSettings
    AccessLogSettings (..),
    newAccessLogSettings,

    -- * Account
    Account (..),
    newAccount,

    -- * ApiKey
    ApiKey (..),
    newApiKey,

    -- * ApiStage
    ApiStage (..),
    newApiStage,

    -- * Authorizer
    Authorizer (..),
    newAuthorizer,

    -- * BasePathMapping
    BasePathMapping (..),
    newBasePathMapping,

    -- * CanarySettings
    CanarySettings (..),
    newCanarySettings,

    -- * ClientCertificate
    ClientCertificate (..),
    newClientCertificate,

    -- * Deployment
    Deployment (..),
    newDeployment,

    -- * DeploymentCanarySettings
    DeploymentCanarySettings (..),
    newDeploymentCanarySettings,

    -- * DocumentationPart
    DocumentationPart (..),
    newDocumentationPart,

    -- * DocumentationPartLocation
    DocumentationPartLocation (..),
    newDocumentationPartLocation,

    -- * DocumentationVersion
    DocumentationVersion (..),
    newDocumentationVersion,

    -- * DomainName
    DomainName (..),
    newDomainName,

    -- * EndpointConfiguration
    EndpointConfiguration (..),
    newEndpointConfiguration,

    -- * GatewayResponse
    GatewayResponse (..),
    newGatewayResponse,

    -- * Integration
    Integration (..),
    newIntegration,

    -- * IntegrationResponse
    IntegrationResponse (..),
    newIntegrationResponse,

    -- * Method
    Method (..),
    newMethod,

    -- * MethodResponse
    MethodResponse (..),
    newMethodResponse,

    -- * MethodSetting
    MethodSetting (..),
    newMethodSetting,

    -- * MethodSnapshot
    MethodSnapshot (..),
    newMethodSnapshot,

    -- * Model
    Model (..),
    newModel,

    -- * MutualTlsAuthentication
    MutualTlsAuthentication (..),
    newMutualTlsAuthentication,

    -- * MutualTlsAuthenticationInput
    MutualTlsAuthenticationInput (..),
    newMutualTlsAuthenticationInput,

    -- * PatchOperation
    PatchOperation (..),
    newPatchOperation,

    -- * QuotaSettings
    QuotaSettings (..),
    newQuotaSettings,

    -- * RequestValidator
    RequestValidator (..),
    newRequestValidator,

    -- * Resource
    Resource (..),
    newResource,

    -- * RestApi
    RestApi (..),
    newRestApi,

    -- * SdkConfigurationProperty
    SdkConfigurationProperty (..),
    newSdkConfigurationProperty,

    -- * SdkType
    SdkType (..),
    newSdkType,

    -- * Stage
    Stage (..),
    newStage,

    -- * StageKey
    StageKey (..),
    newStageKey,

    -- * ThrottleSettings
    ThrottleSettings (..),
    newThrottleSettings,

    -- * TlsConfig
    TlsConfig (..),
    newTlsConfig,

    -- * Usage
    Usage (..),
    newUsage,

    -- * UsagePlan
    UsagePlan (..),
    newUsagePlan,

    -- * UsagePlanKey
    UsagePlanKey (..),
    newUsagePlanKey,

    -- * VpcLink
    VpcLink (..),
    newVpcLink,
  )
where

import Network.AWS.APIGateway.Types.AccessLogSettings
import Network.AWS.APIGateway.Types.Account
import Network.AWS.APIGateway.Types.ApiKey
import Network.AWS.APIGateway.Types.ApiKeySourceType
import Network.AWS.APIGateway.Types.ApiKeysFormat
import Network.AWS.APIGateway.Types.ApiStage
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
import Network.AWS.APIGateway.Types.MutualTlsAuthentication
import Network.AWS.APIGateway.Types.MutualTlsAuthenticationInput
import Network.AWS.APIGateway.Types.Op
import Network.AWS.APIGateway.Types.PatchOperation
import Network.AWS.APIGateway.Types.PutMode
import Network.AWS.APIGateway.Types.QuotaPeriodType
import Network.AWS.APIGateway.Types.QuotaSettings
import Network.AWS.APIGateway.Types.RequestValidator
import Network.AWS.APIGateway.Types.Resource
import Network.AWS.APIGateway.Types.RestApi
import Network.AWS.APIGateway.Types.SdkConfigurationProperty
import Network.AWS.APIGateway.Types.SdkType
import Network.AWS.APIGateway.Types.SecurityPolicy
import Network.AWS.APIGateway.Types.Stage
import Network.AWS.APIGateway.Types.StageKey
import Network.AWS.APIGateway.Types.ThrottleSettings
import Network.AWS.APIGateway.Types.TlsConfig
import Network.AWS.APIGateway.Types.UnauthorizedCacheControlHeaderStrategy
import Network.AWS.APIGateway.Types.Usage
import Network.AWS.APIGateway.Types.UsagePlan
import Network.AWS.APIGateway.Types.UsagePlanKey
import Network.AWS.APIGateway.Types.VpcLink
import Network.AWS.APIGateway.Types.VpcLinkStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-07-09@ of the Amazon API Gateway SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "APIGateway",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "apigateway",
      Prelude._svcVersion = "2015-07-09",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "APIGateway",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | The requested resource is not found. Make sure that the request URI is
-- correct.
_NotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotFoundException =
  Prelude._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | The submitted request is not valid, for example, the input is incomplete
-- or incorrect. See the accompanying error message for details.
_BadRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BadRequestException =
  Prelude._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Prelude.hasStatus 400

-- | The request is denied because the caller has insufficient permissions.
_UnauthorizedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnauthorizedException =
  Prelude._MatchServiceError
    defaultService
    "UnauthorizedException"
    Prelude.. Prelude.hasStatus 401

-- | The requested service is not available. For details see the accompanying
-- error message. Retry after the specified time period.
_ServiceUnavailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceUnavailableException =
  Prelude._MatchServiceError
    defaultService
    "ServiceUnavailableException"
    Prelude.. Prelude.hasStatus 503

-- | The request exceeded the rate limit. Retry after the specified time
-- period.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Prelude.hasStatus 429

-- | The request configuration has conflicts. For details, see the
-- accompanying error message.
_ConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictException =
  Prelude._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Prelude.hasStatus 409

-- | The request has reached its throttling limit. Retry after the specified
-- time period.
_TooManyRequestsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyRequestsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyRequestsException"
    Prelude.. Prelude.hasStatus 429
