{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecretsManager.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecretsManager.Types
  ( -- * Service Configuration
    secretsManager,

    -- * Errors
    _MalformedPolicyDocumentException,
    _EncryptionFailure,
    _PublicPolicyException,
    _DecryptionFailure,
    _InvalidNextTokenException,
    _PreconditionNotMetException,
    _InvalidRequestException,
    _InvalidParameterException,
    _LimitExceededException,
    _ResourceNotFoundException,
    _ResourceExistsException,
    _InternalServiceError,

    -- * FilterNameStringType
    FilterNameStringType (..),

    -- * SortOrderType
    SortOrderType (..),

    -- * StatusType
    StatusType (..),

    -- * Filter
    Filter (..),
    filter',
    fKey,
    fValues,

    -- * ReplicaRegionType
    ReplicaRegionType (..),
    replicaRegionType,
    rrtKMSKeyId,
    rrtRegion,

    -- * ReplicationStatusType
    ReplicationStatusType (..),
    replicationStatusType,
    rstStatusMessage,
    rstStatus,
    rstKMSKeyId,
    rstLastAccessedDate,
    rstRegion,

    -- * RotationRulesType
    RotationRulesType (..),
    rotationRulesType,
    rrtAutomaticallyAfterDays,

    -- * SecretListEntry
    SecretListEntry (..),
    secretListEntry,
    sleCreatedDate,
    sleOwningService,
    sleSecretVersionsToStages,
    sleLastRotatedDate,
    sleARN,
    sleKMSKeyId,
    sleName,
    sleLastChangedDate,
    slePrimaryRegion,
    sleRotationRules,
    sleTags,
    sleRotationEnabled,
    sleDeletedDate,
    sleRotationLambdaARN,
    sleDescription,
    sleLastAccessedDate,

    -- * SecretVersionsListEntry
    SecretVersionsListEntry (..),
    secretVersionsListEntry,
    svleCreatedDate,
    svleVersionStages,
    svleVersionId,
    svleLastAccessedDate,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * ValidationErrorsEntry
    ValidationErrorsEntry (..),
    validationErrorsEntry,
    veeCheckName,
    veeErrorMessage,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SecretsManager.Types.Filter
import Network.AWS.SecretsManager.Types.FilterNameStringType
import Network.AWS.SecretsManager.Types.ReplicaRegionType
import Network.AWS.SecretsManager.Types.ReplicationStatusType
import Network.AWS.SecretsManager.Types.RotationRulesType
import Network.AWS.SecretsManager.Types.SecretListEntry
import Network.AWS.SecretsManager.Types.SecretVersionsListEntry
import Network.AWS.SecretsManager.Types.SortOrderType
import Network.AWS.SecretsManager.Types.StatusType
import Network.AWS.SecretsManager.Types.Tag
import Network.AWS.SecretsManager.Types.ValidationErrorsEntry
import Network.AWS.Sign.V4

-- | API version @2017-10-17@ of the Amazon Secrets Manager SDK configuration.
secretsManager :: Service
secretsManager =
  Service
    { _svcAbbrev = "SecretsManager",
      _svcSigner = v4,
      _svcPrefix = "secretsmanager",
      _svcVersion = "2017-10-17",
      _svcEndpoint = defaultEndpoint secretsManager,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "SecretsManager",
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

-- | You provided a resource-based policy with syntax errors.
_MalformedPolicyDocumentException :: AsError a => Getting (First ServiceError) a ServiceError
_MalformedPolicyDocumentException =
  _MatchServiceError
    secretsManager
    "MalformedPolicyDocumentException"

-- | Secrets Manager can't encrypt the protected secret text using the provided KMS key. Check that the customer master key (CMK) is available, enabled, and not in an invalid state. For more information, see <http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> .
_EncryptionFailure :: AsError a => Getting (First ServiceError) a ServiceError
_EncryptionFailure =
  _MatchServiceError
    secretsManager
    "EncryptionFailure"

-- | The BlockPublicPolicy parameter is set to true and the resource policy did not prevent broad access to the secret.
_PublicPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_PublicPolicyException =
  _MatchServiceError
    secretsManager
    "PublicPolicyException"

-- | Secrets Manager can't decrypt the protected secret text using the provided KMS key.
_DecryptionFailure :: AsError a => Getting (First ServiceError) a ServiceError
_DecryptionFailure =
  _MatchServiceError
    secretsManager
    "DecryptionFailure"

-- | You provided an invalid @NextToken@ value.
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    secretsManager
    "InvalidNextTokenException"

-- | The request failed because you did not complete all the prerequisite steps.
_PreconditionNotMetException :: AsError a => Getting (First ServiceError) a ServiceError
_PreconditionNotMetException =
  _MatchServiceError
    secretsManager
    "PreconditionNotMetException"

-- | You provided a parameter value that is not valid for the current state of the resource.
--
--
-- Possible causes:
--
--     * You tried to perform the operation on a secret that's currently marked deleted.
--
--     * You tried to enable rotation on a secret that doesn't already have a Lambda function ARN configured and you didn't include such an ARN as a parameter in this call.
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException =
  _MatchServiceError
    secretsManager
    "InvalidRequestException"

-- | You provided an invalid value for a parameter.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    secretsManager
    "InvalidParameterException"

-- | The request failed because it would exceed one of the Secrets Manager internal limits.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    secretsManager
    "LimitExceededException"

-- | We can't find the resource that you asked for.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    secretsManager
    "ResourceNotFoundException"

-- | A resource with the ID you requested already exists.
_ResourceExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceExistsException =
  _MatchServiceError
    secretsManager
    "ResourceExistsException"

-- | An error occurred on the server side.
_InternalServiceError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceError =
  _MatchServiceError
    secretsManager
    "InternalServiceError"
