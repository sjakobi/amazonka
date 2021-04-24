{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MigrationHub.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MigrationHub.Types
  ( -- * Service Configuration
    migrationHub,

    -- * Errors
    _UnauthorizedOperation,
    _InvalidInputException,
    _ServiceUnavailableException,
    _ThrottlingException,
    _InternalServerError,
    _HomeRegionNotSetException,
    _PolicyErrorException,
    _AccessDeniedException,
    _ResourceNotFoundException,
    _DryRunOperation,

    -- * ApplicationStatus
    ApplicationStatus (..),

    -- * MigrationStatus
    MigrationStatus (..),

    -- * ResourceAttributeType
    ResourceAttributeType (..),

    -- * ApplicationState
    ApplicationState (..),
    applicationState,
    asApplicationId,
    asApplicationStatus,
    asLastUpdatedTime,

    -- * CreatedArtifact
    CreatedArtifact (..),
    createdArtifact,
    caDescription,
    caName,

    -- * DiscoveredResource
    DiscoveredResource (..),
    discoveredResource,
    drDescription,
    drConfigurationId,

    -- * MigrationTask
    MigrationTask (..),
    migrationTask,
    mtResourceAttributeList,
    mtUpdateDateTime,
    mtTask,
    mtMigrationTaskName,
    mtProgressUpdateStream,

    -- * MigrationTaskSummary
    MigrationTaskSummary (..),
    migrationTaskSummary,
    mtsStatus,
    mtsProgressPercent,
    mtsUpdateDateTime,
    mtsStatusDetail,
    mtsMigrationTaskName,
    mtsProgressUpdateStream,

    -- * ProgressUpdateStreamSummary
    ProgressUpdateStreamSummary (..),
    progressUpdateStreamSummary,
    pussProgressUpdateStreamName,

    -- * ResourceAttribute
    ResourceAttribute (..),
    resourceAttribute,
    raType,
    raValue,

    -- * Task
    Task (..),
    task,
    tProgressPercent,
    tStatusDetail,
    tStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MigrationHub.Types.ApplicationState
import Network.AWS.MigrationHub.Types.ApplicationStatus
import Network.AWS.MigrationHub.Types.CreatedArtifact
import Network.AWS.MigrationHub.Types.DiscoveredResource
import Network.AWS.MigrationHub.Types.MigrationStatus
import Network.AWS.MigrationHub.Types.MigrationTask
import Network.AWS.MigrationHub.Types.MigrationTaskSummary
import Network.AWS.MigrationHub.Types.ProgressUpdateStreamSummary
import Network.AWS.MigrationHub.Types.ResourceAttribute
import Network.AWS.MigrationHub.Types.ResourceAttributeType
import Network.AWS.MigrationHub.Types.Task
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-05-31@ of the Amazon Migration Hub SDK configuration.
migrationHub :: Service
migrationHub =
  Service
    { _svcAbbrev = "MigrationHub",
      _svcSigner = v4,
      _svcPrefix = "mgh",
      _svcVersion = "2017-05-31",
      _svcEndpoint = defaultEndpoint migrationHub,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "MigrationHub",
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

-- | Exception raised to indicate a request was not authorized when the @DryRun@ flag is set to "true".
_UnauthorizedOperation :: AsError a => Getting (First ServiceError) a ServiceError
_UnauthorizedOperation =
  _MatchServiceError
    migrationHub
    "UnauthorizedOperation"

-- | Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.
_InvalidInputException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInputException =
  _MatchServiceError
    migrationHub
    "InvalidInputException"

-- | Exception raised when there is an internal, configuration, or dependency error encountered.
_ServiceUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceUnavailableException =
  _MatchServiceError
    migrationHub
    "ServiceUnavailableException"

-- | The request was denied due to request throttling.
_ThrottlingException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottlingException =
  _MatchServiceError
    migrationHub
    "ThrottlingException"

-- | Exception raised when an internal, configuration, or dependency error is encountered.
_InternalServerError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerError =
  _MatchServiceError
    migrationHub
    "InternalServerError"

-- | The home region is not set. Set the home region to continue.
_HomeRegionNotSetException :: AsError a => Getting (First ServiceError) a ServiceError
_HomeRegionNotSetException =
  _MatchServiceError
    migrationHub
    "HomeRegionNotSetException"

-- | Exception raised when there are problems accessing Application Discovery Service (Application Discovery Service); most likely due to a misconfigured policy or the @migrationhub-discovery@ role is missing or not configured correctly.
_PolicyErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_PolicyErrorException =
  _MatchServiceError
    migrationHub
    "PolicyErrorException"

-- | You do not have sufficient access to perform this action.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError
    migrationHub
    "AccessDeniedException"

-- | Exception raised when the request references a resource (Application Discovery Service configuration, update stream, migration task, etc.) that does not exist in Application Discovery Service (Application Discovery Service) or in Migration Hub's repository.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    migrationHub
    "ResourceNotFoundException"

-- | Exception raised to indicate a successfully authorized action when the @DryRun@ flag is set to "true".
_DryRunOperation :: AsError a => Getting (First ServiceError) a ServiceError
_DryRunOperation =
  _MatchServiceError migrationHub "DryRunOperation"
