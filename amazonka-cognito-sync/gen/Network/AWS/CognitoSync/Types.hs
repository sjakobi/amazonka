{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoSync.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types
  ( -- * Service Configuration
    cognitoSync,

    -- * Errors
    _InvalidConfigurationException,
    _ResourceConflictException,
    _InternalErrorException,
    _ConcurrentModificationException,
    _InvalidParameterException,
    _LambdaThrottledException,
    _AlreadyStreamedException,
    _InvalidLambdaFunctionOutputException,
    _LimitExceededException,
    _DuplicateRequestException,
    _ResourceNotFoundException,
    _NotAuthorizedException,
    _TooManyRequestsException,

    -- * BulkPublishStatus
    BulkPublishStatus (..),

    -- * Operation
    Operation (..),

    -- * Platform
    Platform (..),

    -- * StreamingStatus
    StreamingStatus (..),

    -- * CognitoStreams
    CognitoStreams (..),
    cognitoStreams,
    csRoleARN,
    csStreamName,
    csStreamingStatus,

    -- * Dataset
    Dataset (..),
    dataset,
    dLastModifiedDate,
    dNumRecords,
    dCreationDate,
    dDataStorage,
    dIdentityId,
    dLastModifiedBy,
    dDatasetName,

    -- * IdentityPoolUsage
    IdentityPoolUsage (..),
    identityPoolUsage,
    ipuLastModifiedDate,
    ipuIdentityPoolId,
    ipuSyncSessionsCount,
    ipuDataStorage,

    -- * IdentityUsage
    IdentityUsage (..),
    identityUsage,
    iuLastModifiedDate,
    iuIdentityPoolId,
    iuDatasetCount,
    iuDataStorage,
    iuIdentityId,

    -- * PushSync
    PushSync (..),
    pushSync,
    psRoleARN,
    psApplicationARNs,

    -- * Record
    Record (..),
    record,
    rDeviceLastModifiedDate,
    rLastModifiedDate,
    rKey,
    rSyncCount,
    rValue,
    rLastModifiedBy,

    -- * RecordPatch
    RecordPatch (..),
    recordPatch,
    rpDeviceLastModifiedDate,
    rpValue,
    rpOp,
    rpKey,
    rpSyncCount,
  )
where

import Network.AWS.CognitoSync.Types.BulkPublishStatus
import Network.AWS.CognitoSync.Types.CognitoStreams
import Network.AWS.CognitoSync.Types.Dataset
import Network.AWS.CognitoSync.Types.IdentityPoolUsage
import Network.AWS.CognitoSync.Types.IdentityUsage
import Network.AWS.CognitoSync.Types.Operation
import Network.AWS.CognitoSync.Types.Platform
import Network.AWS.CognitoSync.Types.PushSync
import Network.AWS.CognitoSync.Types.Record
import Network.AWS.CognitoSync.Types.RecordPatch
import Network.AWS.CognitoSync.Types.StreamingStatus
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2014-06-30@ of the Amazon Cognito Sync SDK configuration.
cognitoSync :: Service
cognitoSync =
  Service
    { _svcAbbrev = "CognitoSync",
      _svcSigner = v4,
      _svcPrefix = "cognito-sync",
      _svcVersion = "2014-06-30",
      _svcEndpoint = defaultEndpoint cognitoSync,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CognitoSync",
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

-- | Prism for InvalidConfigurationException' errors.
_InvalidConfigurationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidConfigurationException =
  _MatchServiceError
    cognitoSync
    "InvalidConfiguration"
    . hasStatus 400

-- | Thrown if an update can't be applied because the resource was changed by another call and this would result in a conflict.
_ResourceConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceConflictException =
  _MatchServiceError cognitoSync "ResourceConflict"
    . hasStatus 409

-- | Indicates an internal service error.
_InternalErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalErrorException =
  _MatchServiceError cognitoSync "InternalError"
    . hasStatus 500

-- | Thrown if there are parallel requests to modify a resource.
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException =
  _MatchServiceError
    cognitoSync
    "ConcurrentModification"
    . hasStatus 400

-- | Thrown when a request parameter does not comply with the associated constraints.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError cognitoSync "InvalidParameter"
    . hasStatus 400

-- | AWS Lambda throttled your account, please contact AWS Support
_LambdaThrottledException :: AsError a => Getting (First ServiceError) a ServiceError
_LambdaThrottledException =
  _MatchServiceError cognitoSync "LambdaThrottled"
    . hasStatus 429

-- | An exception thrown when a bulk publish operation is requested less than 24 hours after a previous bulk publish operation completed successfully.
_AlreadyStreamedException :: AsError a => Getting (First ServiceError) a ServiceError
_AlreadyStreamedException =
  _MatchServiceError cognitoSync "AlreadyStreamed"
    . hasStatus 400

-- | The AWS Lambda function returned invalid output or an exception.
_InvalidLambdaFunctionOutputException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLambdaFunctionOutputException =
  _MatchServiceError
    cognitoSync
    "InvalidLambdaFunctionOutput"
    . hasStatus 400

-- | Thrown when the limit on the number of objects or operations has been exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError cognitoSync "LimitExceeded"
    . hasStatus 400

-- | An exception thrown when there is an IN_PROGRESS bulk publish operation for the given identity pool.
_DuplicateRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateRequestException =
  _MatchServiceError cognitoSync "DuplicateRequest"
    . hasStatus 400

-- | Thrown if the resource doesn't exist.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError cognitoSync "ResourceNotFound"
    . hasStatus 404

-- | Thrown when a user is not authorized to access the requested resource.
_NotAuthorizedException :: AsError a => Getting (First ServiceError) a ServiceError
_NotAuthorizedException =
  _MatchServiceError cognitoSync "NotAuthorizedError"
    . hasStatus 403

-- | Thrown if the request is throttled.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException =
  _MatchServiceError cognitoSync "TooManyRequests"
    . hasStatus 429
