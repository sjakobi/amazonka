{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types
  ( -- * Service Configuration
    mq,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _UnauthorizedException,
    _InternalServerErrorException,
    _ForbiddenException,
    _ConflictException,

    -- * AuthenticationStrategy
    AuthenticationStrategy (..),

    -- * BrokerState
    BrokerState (..),

    -- * BrokerStorageType
    BrokerStorageType (..),

    -- * ChangeType
    ChangeType (..),

    -- * DayOfWeek
    DayOfWeek (..),

    -- * DeploymentMode
    DeploymentMode (..),

    -- * EngineType
    EngineType (..),

    -- * SanitizationWarningReason
    SanitizationWarningReason (..),

    -- * AvailabilityZone
    AvailabilityZone (..),
    availabilityZone,
    azName,

    -- * BrokerEngineType
    BrokerEngineType (..),
    brokerEngineType,
    betEngineType,
    betEngineVersions,

    -- * BrokerInstance
    BrokerInstance (..),
    brokerInstance,
    biEndpoints,
    biIPAddress,
    biConsoleURL,

    -- * BrokerInstanceOption
    BrokerInstanceOption (..),
    brokerInstanceOption,
    bioAvailabilityZones,
    bioStorageType,
    bioEngineType,
    bioSupportedDeploymentModes,
    bioSupportedEngineVersions,
    bioHostInstanceType,

    -- * BrokerSummary
    BrokerSummary (..),
    brokerSummary,
    bsBrokerName,
    bsBrokerId,
    bsEngineType,
    bsBrokerState,
    bsHostInstanceType,
    bsBrokerARN,
    bsCreated,
    bsDeploymentMode,

    -- * Configuration
    Configuration (..),
    configuration,
    cEngineType,
    cAuthenticationStrategy,
    cLatestRevision,
    cARN,
    cId,
    cName,
    cEngineVersion,
    cTags,
    cDescription,
    cCreated,

    -- * ConfigurationId
    ConfigurationId (..),
    configurationId,
    ciId,
    ciRevision,

    -- * ConfigurationRevision
    ConfigurationRevision (..),
    configurationRevision,
    crDescription,
    crRevision,
    crCreated,

    -- * Configurations
    Configurations (..),
    configurations,
    cPending,
    cCurrent,
    cHistory,

    -- * EncryptionOptions
    EncryptionOptions (..),
    encryptionOptions,
    eoKMSKeyId,
    eoUseAWSOwnedKey,

    -- * EngineVersion
    EngineVersion (..),
    engineVersion,
    evName,

    -- * LdapServerMetadataInput
    LdapServerMetadataInput (..),
    ldapServerMetadataInput,
    lsmiUserBase,
    lsmiUserSearchMatching,
    lsmiRoleName,
    lsmiServiceAccountPassword,
    lsmiUserSearchSubtree,
    lsmiServiceAccountUsername,
    lsmiUserRoleName,
    lsmiRoleBase,
    lsmiRoleSearchMatching,
    lsmiHosts,
    lsmiRoleSearchSubtree,

    -- * LdapServerMetadataOutput
    LdapServerMetadataOutput (..),
    ldapServerMetadataOutput,
    lsmoUserBase,
    lsmoUserSearchMatching,
    lsmoRoleName,
    lsmoUserSearchSubtree,
    lsmoServiceAccountUsername,
    lsmoUserRoleName,
    lsmoRoleBase,
    lsmoRoleSearchMatching,
    lsmoHosts,
    lsmoRoleSearchSubtree,

    -- * Logs
    Logs (..),
    logs,
    lGeneral,
    lAudit,

    -- * LogsSummary
    LogsSummary (..),
    logsSummary,
    lsGeneral,
    lsAudit,
    lsPending,
    lsAuditLogGroup,
    lsGeneralLogGroup,

    -- * PendingLogs
    PendingLogs (..),
    pendingLogs,
    plGeneral,
    plAudit,

    -- * SanitizationWarning
    SanitizationWarning (..),
    sanitizationWarning,
    swElementName,
    swAttributeName,
    swReason,

    -- * User
    User (..),
    user,
    uGroups,
    uPassword,
    uUsername,
    uConsoleAccess,

    -- * UserPendingChanges
    UserPendingChanges (..),
    userPendingChanges,
    upcGroups,
    upcPendingChange,
    upcConsoleAccess,

    -- * UserSummary
    UserSummary (..),
    userSummary,
    usPendingChange,
    usUsername,

    -- * WeeklyStartTime
    WeeklyStartTime (..),
    weeklyStartTime,
    wstDayOfWeek,
    wstTimeOfDay,
    wstTimeZone,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types.AuthenticationStrategy
import Network.AWS.MQ.Types.AvailabilityZone
import Network.AWS.MQ.Types.BrokerEngineType
import Network.AWS.MQ.Types.BrokerInstance
import Network.AWS.MQ.Types.BrokerInstanceOption
import Network.AWS.MQ.Types.BrokerState
import Network.AWS.MQ.Types.BrokerStorageType
import Network.AWS.MQ.Types.BrokerSummary
import Network.AWS.MQ.Types.ChangeType
import Network.AWS.MQ.Types.Configuration
import Network.AWS.MQ.Types.ConfigurationId
import Network.AWS.MQ.Types.ConfigurationRevision
import Network.AWS.MQ.Types.Configurations
import Network.AWS.MQ.Types.DayOfWeek
import Network.AWS.MQ.Types.DeploymentMode
import Network.AWS.MQ.Types.EncryptionOptions
import Network.AWS.MQ.Types.EngineType
import Network.AWS.MQ.Types.EngineVersion
import Network.AWS.MQ.Types.LdapServerMetadataInput
import Network.AWS.MQ.Types.LdapServerMetadataOutput
import Network.AWS.MQ.Types.Logs
import Network.AWS.MQ.Types.LogsSummary
import Network.AWS.MQ.Types.PendingLogs
import Network.AWS.MQ.Types.SanitizationWarning
import Network.AWS.MQ.Types.SanitizationWarningReason
import Network.AWS.MQ.Types.User
import Network.AWS.MQ.Types.UserPendingChanges
import Network.AWS.MQ.Types.UserSummary
import Network.AWS.MQ.Types.WeeklyStartTime
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-11-27@ of the Amazon MQ SDK configuration.
mq :: Service
mq =
  Service
    { _svcAbbrev = "MQ",
      _svcSigner = v4,
      _svcPrefix = "mq",
      _svcVersion = "2017-11-27",
      _svcEndpoint = defaultEndpoint mq,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "MQ",
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

-- | Returns information about an error.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError mq "NotFoundException"
    . hasStatus 404

-- | Returns information about an error.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException =
  _MatchServiceError mq "BadRequestException"
    . hasStatus 400

-- | Returns information about an error.
_UnauthorizedException :: AsError a => Getting (First ServiceError) a ServiceError
_UnauthorizedException =
  _MatchServiceError mq "UnauthorizedException"
    . hasStatus 401

-- | Returns information about an error.
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException =
  _MatchServiceError
    mq
    "InternalServerErrorException"
    . hasStatus 500

-- | Returns information about an error.
_ForbiddenException :: AsError a => Getting (First ServiceError) a ServiceError
_ForbiddenException =
  _MatchServiceError mq "ForbiddenException"
    . hasStatus 403

-- | Returns information about an error.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError mq "ConflictException"
    . hasStatus 409
