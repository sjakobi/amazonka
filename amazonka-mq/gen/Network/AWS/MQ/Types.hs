{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    newAvailabilityZone,

    -- * BrokerEngineType
    BrokerEngineType (..),
    newBrokerEngineType,

    -- * BrokerInstance
    BrokerInstance (..),
    newBrokerInstance,

    -- * BrokerInstanceOption
    BrokerInstanceOption (..),
    newBrokerInstanceOption,

    -- * BrokerSummary
    BrokerSummary (..),
    newBrokerSummary,

    -- * Configuration
    Configuration (..),
    newConfiguration,

    -- * ConfigurationId
    ConfigurationId (..),
    newConfigurationId,

    -- * ConfigurationRevision
    ConfigurationRevision (..),
    newConfigurationRevision,

    -- * Configurations
    Configurations (..),
    newConfigurations,

    -- * EncryptionOptions
    EncryptionOptions (..),
    newEncryptionOptions,

    -- * EngineVersion
    EngineVersion (..),
    newEngineVersion,

    -- * LdapServerMetadataInput
    LdapServerMetadataInput (..),
    newLdapServerMetadataInput,

    -- * LdapServerMetadataOutput
    LdapServerMetadataOutput (..),
    newLdapServerMetadataOutput,

    -- * Logs
    Logs (..),
    newLogs,

    -- * LogsSummary
    LogsSummary (..),
    newLogsSummary,

    -- * PendingLogs
    PendingLogs (..),
    newPendingLogs,

    -- * SanitizationWarning
    SanitizationWarning (..),
    newSanitizationWarning,

    -- * User
    User (..),
    newUser,

    -- * UserPendingChanges
    UserPendingChanges (..),
    newUserPendingChanges,

    -- * UserSummary
    UserSummary (..),
    newUserSummary,

    -- * WeeklyStartTime
    WeeklyStartTime (..),
    newWeeklyStartTime,
  )
where

import qualified Network.AWS.Lens as Lens
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
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-11-27@ of the Amazon MQ SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "MQ",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "mq",
      Prelude._svcVersion = "2017-11-27",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseJSONError "MQ",
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

-- | Returns information about an error.
_NotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotFoundException =
  Prelude._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | Returns information about an error.
_BadRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BadRequestException =
  Prelude._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Prelude.hasStatus 400

-- | Returns information about an error.
_UnauthorizedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnauthorizedException =
  Prelude._MatchServiceError
    defaultService
    "UnauthorizedException"
    Prelude.. Prelude.hasStatus 401

-- | Returns information about an error.
_InternalServerErrorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServerErrorException =
  Prelude._MatchServiceError
    defaultService
    "InternalServerErrorException"
    Prelude.. Prelude.hasStatus 500

-- | Returns information about an error.
_ForbiddenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ForbiddenException =
  Prelude._MatchServiceError
    defaultService
    "ForbiddenException"
    Prelude.. Prelude.hasStatus 403

-- | Returns information about an error.
_ConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictException =
  Prelude._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Prelude.hasStatus 409
