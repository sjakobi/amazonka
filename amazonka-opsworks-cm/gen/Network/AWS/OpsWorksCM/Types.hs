{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorksCM.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorksCM.Types
  ( -- * Service Configuration
    opsWorksCM,

    -- * Errors
    _InvalidStateException,
    _ResourceAlreadyExistsException,
    _InvalidNextTokenException,
    _ValidationException,
    _LimitExceededException,
    _ResourceNotFoundException,

    -- * BackupStatus
    BackupStatus (..),

    -- * BackupType
    BackupType (..),

    -- * MaintenanceStatus
    MaintenanceStatus (..),

    -- * NodeAssociationStatus
    NodeAssociationStatus (..),

    -- * ServerStatus
    ServerStatus (..),

    -- * AccountAttribute
    AccountAttribute (..),
    accountAttribute,
    aaUsed,
    aaName,
    aaMaximum,

    -- * Backup
    Backup (..),
    backup,
    bSecurityGroupIds,
    bInstanceProfileARN,
    bPreferredBackupWindow,
    bStatus,
    bServiceRoleARN,
    bUserARN,
    bInstanceType,
    bBackupType,
    bBackupId,
    bS3DataURL,
    bBackupARN,
    bSubnetIds,
    bKeyPair,
    bS3DataSize,
    bCreatedAt,
    bServerName,
    bS3LogURL,
    bEngineVersion,
    bPreferredMaintenanceWindow,
    bToolsVersion,
    bEngineModel,
    bEngine,
    bDescription,
    bStatusDescription,

    -- * EngineAttribute
    EngineAttribute (..),
    engineAttribute,
    eaName,
    eaValue,

    -- * Server
    Server (..),
    server,
    sSecurityGroupIds,
    sInstanceProfileARN,
    sPreferredBackupWindow,
    sStatus,
    sDisableAutomatedBackup,
    sServiceRoleARN,
    sInstanceType,
    sEngineAttributes,
    sCustomDomain,
    sSubnetIds,
    sKeyPair,
    sCreatedAt,
    sServerName,
    sAssociatePublicIPAddress,
    sEngineVersion,
    sPreferredMaintenanceWindow,
    sBackupRetentionCount,
    sMaintenanceStatus,
    sCloudFormationStackARN,
    sEngineModel,
    sEngine,
    sEndpoint,
    sServerARN,
    sStatusReason,

    -- * ServerEvent
    ServerEvent (..),
    serverEvent,
    seLogURL,
    seMessage,
    seCreatedAt,
    seServerName,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types.AccountAttribute
import Network.AWS.OpsWorksCM.Types.Backup
import Network.AWS.OpsWorksCM.Types.BackupStatus
import Network.AWS.OpsWorksCM.Types.BackupType
import Network.AWS.OpsWorksCM.Types.EngineAttribute
import Network.AWS.OpsWorksCM.Types.MaintenanceStatus
import Network.AWS.OpsWorksCM.Types.NodeAssociationStatus
import Network.AWS.OpsWorksCM.Types.Server
import Network.AWS.OpsWorksCM.Types.ServerEvent
import Network.AWS.OpsWorksCM.Types.ServerStatus
import Network.AWS.OpsWorksCM.Types.Tag
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-11-01@ of the Amazon OpsWorks CM SDK configuration.
opsWorksCM :: Service
opsWorksCM =
  Service
    { _svcAbbrev = "OpsWorksCM",
      _svcSigner = v4,
      _svcPrefix = "opsworks-cm",
      _svcVersion = "2016-11-01",
      _svcEndpoint = defaultEndpoint opsWorksCM,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "OpsWorksCM",
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

-- | The resource is in a state that does not allow you to perform a specified action.
_InvalidStateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidStateException =
  _MatchServiceError
    opsWorksCM
    "InvalidStateException"

-- | The requested resource cannot be created because it already exists.
_ResourceAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAlreadyExistsException =
  _MatchServiceError
    opsWorksCM
    "ResourceAlreadyExistsException"

-- | This occurs when the provided nextToken is not valid.
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    opsWorksCM
    "InvalidNextTokenException"

-- | One or more of the provided request parameters are not valid.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError opsWorksCM "ValidationException"

-- | The limit of servers or backups has been reached.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    opsWorksCM
    "LimitExceededException"

-- | The requested resource does not exist, or access was denied.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    opsWorksCM
    "ResourceNotFoundException"
