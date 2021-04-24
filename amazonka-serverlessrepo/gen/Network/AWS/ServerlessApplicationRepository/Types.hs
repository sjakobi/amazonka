{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServerlessApplicationRepository.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServerlessApplicationRepository.Types
  ( -- * Service Configuration
    serverlessApplicationRepository,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _InternalServerErrorException,
    _ForbiddenException,
    _ConflictException,
    _TooManyRequestsException,

    -- * Capability
    Capability (..),

    -- * Status
    Status (..),

    -- * ApplicationDependencySummary
    ApplicationDependencySummary (..),
    applicationDependencySummary,
    adsApplicationId,
    adsSemanticVersion,

    -- * ApplicationPolicyStatement
    ApplicationPolicyStatement (..),
    applicationPolicyStatement,
    apsStatementId,
    apsPrincipalOrgIds,
    apsPrincipals,
    apsActions,

    -- * ApplicationSummary
    ApplicationSummary (..),
    applicationSummary,
    asCreationTime,
    asSpdxLicenseId,
    asLabels,
    asHomePageURL,
    asDescription,
    asAuthor,
    asApplicationId,
    asName,

    -- * ParameterDefinition
    ParameterDefinition (..),
    parameterDefinition,
    pdMaxValue,
    pdMinLength,
    pdAllowedValues,
    pdMinValue,
    pdDescription,
    pdConstraintDescription,
    pdType,
    pdNoEcho,
    pdMaxLength,
    pdAllowedPattern,
    pdDefaultValue,
    pdReferencedByResources,
    pdName,

    -- * ParameterValue
    ParameterValue (..),
    parameterValue,
    pvValue,
    pvName,

    -- * RollbackConfiguration
    RollbackConfiguration (..),
    rollbackConfiguration,
    rcMonitoringTimeInMinutes,
    rcRollbackTriggers,

    -- * RollbackTrigger
    RollbackTrigger (..),
    rollbackTrigger,
    rtType,
    rtARN,

    -- * Tag
    Tag (..),
    tag,
    tagValue,
    tagKey,

    -- * Version
    Version (..),
    version,
    vSourceCodeArchiveURL,
    vSourceCodeURL,
    vTemplateURL,
    vParameterDefinitions,
    vResourcesSupported,
    vCreationTime,
    vRequiredCapabilities,
    vApplicationId,
    vSemanticVersion,

    -- * VersionSummary
    VersionSummary (..),
    versionSummary,
    vsSourceCodeURL,
    vsCreationTime,
    vsApplicationId,
    vsSemanticVersion,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServerlessApplicationRepository.Types.ApplicationDependencySummary
import Network.AWS.ServerlessApplicationRepository.Types.ApplicationPolicyStatement
import Network.AWS.ServerlessApplicationRepository.Types.ApplicationSummary
import Network.AWS.ServerlessApplicationRepository.Types.Capability
import Network.AWS.ServerlessApplicationRepository.Types.ParameterDefinition
import Network.AWS.ServerlessApplicationRepository.Types.ParameterValue
import Network.AWS.ServerlessApplicationRepository.Types.RollbackConfiguration
import Network.AWS.ServerlessApplicationRepository.Types.RollbackTrigger
import Network.AWS.ServerlessApplicationRepository.Types.Status
import Network.AWS.ServerlessApplicationRepository.Types.Tag
import Network.AWS.ServerlessApplicationRepository.Types.Version
import Network.AWS.ServerlessApplicationRepository.Types.VersionSummary
import Network.AWS.Sign.V4

-- | API version @2017-09-08@ of the Amazon ServerlessApplicationRepository SDK configuration.
serverlessApplicationRepository :: Service
serverlessApplicationRepository =
  Service
    { _svcAbbrev =
        "ServerlessApplicationRepository",
      _svcSigner = v4,
      _svcPrefix = "serverlessrepo",
      _svcVersion = "2017-09-08",
      _svcEndpoint =
        defaultEndpoint serverlessApplicationRepository,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError =
        parseJSONError "ServerlessApplicationRepository",
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

-- | The resource (for example, an access policy statement) specified in the request doesn't exist.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError
    serverlessApplicationRepository
    "NotFoundException"
    . hasStatus 404

-- | One of the parameters in the request is invalid.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException =
  _MatchServiceError
    serverlessApplicationRepository
    "BadRequestException"
    . hasStatus 400

-- | The AWS Serverless Application Repository service encountered an internal error.
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException =
  _MatchServiceError
    serverlessApplicationRepository
    "InternalServerErrorException"
    . hasStatus 500

-- | The client is not authenticated.
_ForbiddenException :: AsError a => Getting (First ServiceError) a ServiceError
_ForbiddenException =
  _MatchServiceError
    serverlessApplicationRepository
    "ForbiddenException"
    . hasStatus 403

-- | The resource already exists.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError
    serverlessApplicationRepository
    "ConflictException"
    . hasStatus 409

-- | The client is sending more than the allowed number of requests per unit of time.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException =
  _MatchServiceError
    serverlessApplicationRepository
    "TooManyRequestsException"
    . hasStatus 429
