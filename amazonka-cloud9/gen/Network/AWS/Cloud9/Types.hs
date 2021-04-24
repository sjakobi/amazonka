{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Cloud9.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types
  ( -- * Service Configuration
    cloud9,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _ConcurrentAccessException,
    _InternalServerErrorException,
    _ForbiddenException,
    _LimitExceededException,
    _ConflictException,
    _TooManyRequestsException,

    -- * ConnectionType
    ConnectionType (..),

    -- * EnvironmentLifecycleStatus
    EnvironmentLifecycleStatus (..),

    -- * EnvironmentStatus
    EnvironmentStatus (..),

    -- * EnvironmentType
    EnvironmentType (..),

    -- * MemberPermissions
    MemberPermissions (..),

    -- * Permissions
    Permissions (..),

    -- * Environment
    Environment (..),
    environment,
    eLifecycle,
    eConnectionType,
    eId,
    eArn,
    eName,
    eOwnerARN,
    eDescription,
    eType,

    -- * EnvironmentLifecycle
    EnvironmentLifecycle (..),
    environmentLifecycle,
    elStatus,
    elReason,
    elFailureResource,

    -- * EnvironmentMember
    EnvironmentMember (..),
    environmentMember,
    emUserARN,
    emPermissions,
    emEnvironmentId,
    emUserId,
    emLastAccess,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.Cloud9.Types.ConnectionType
import Network.AWS.Cloud9.Types.Environment
import Network.AWS.Cloud9.Types.EnvironmentLifecycle
import Network.AWS.Cloud9.Types.EnvironmentLifecycleStatus
import Network.AWS.Cloud9.Types.EnvironmentMember
import Network.AWS.Cloud9.Types.EnvironmentStatus
import Network.AWS.Cloud9.Types.EnvironmentType
import Network.AWS.Cloud9.Types.MemberPermissions
import Network.AWS.Cloud9.Types.Permissions
import Network.AWS.Cloud9.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-09-23@ of the Amazon Cloud9 SDK configuration.
cloud9 :: Service
cloud9 =
  Service
    { _svcAbbrev = "Cloud9",
      _svcSigner = v4,
      _svcPrefix = "cloud9",
      _svcVersion = "2017-09-23",
      _svcEndpoint = defaultEndpoint cloud9,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Cloud9",
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

-- | The target resource cannot be found.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError cloud9 "NotFoundException"

-- | The target request is invalid.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException =
  _MatchServiceError cloud9 "BadRequestException"

-- | A concurrent access issue occurred.
_ConcurrentAccessException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentAccessException =
  _MatchServiceError
    cloud9
    "ConcurrentAccessException"

-- | An internal server error occurred.
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException =
  _MatchServiceError
    cloud9
    "InternalServerErrorException"

-- | An access permissions issue occurred.
_ForbiddenException :: AsError a => Getting (First ServiceError) a ServiceError
_ForbiddenException =
  _MatchServiceError cloud9 "ForbiddenException"

-- | A service limit was exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError cloud9 "LimitExceededException"

-- | A conflict occurred.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError cloud9 "ConflictException"

-- | Too many service requests were made over the given time period.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException =
  _MatchServiceError
    cloud9
    "TooManyRequestsException"
