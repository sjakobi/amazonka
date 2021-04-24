{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSMv2.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types
  ( -- * Service Configuration
    cloudHSMv2,

    -- * Errors
    _CloudHSMInternalFailureException,
    _CloudHSMResourceNotFoundException,
    _CloudHSMAccessDeniedException,
    _CloudHSMInvalidRequestException,
    _CloudHSMServiceException,
    _CloudHSMTagException,

    -- * BackupPolicy
    BackupPolicy (..),

    -- * BackupRetentionType
    BackupRetentionType (..),

    -- * BackupState
    BackupState (..),

    -- * ClusterState
    ClusterState (..),

    -- * HSMState
    HSMState (..),

    -- * Backup
    Backup (..),
    backup,
    bClusterId,
    bBackupState,
    bSourceBackup,
    bCopyTimestamp,
    bCreateTimestamp,
    bNeverExpires,
    bSourceCluster,
    bDeleteTimestamp,
    bTagList,
    bSourceRegion,
    bBackupId,

    -- * BackupRetentionPolicy
    BackupRetentionPolicy (..),
    backupRetentionPolicy,
    brpValue,
    brpType,

    -- * Certificates
    Certificates (..),
    certificates,
    cAWSHardwareCertificate,
    cHSMCertificate,
    cClusterCSR,
    cClusterCertificate,
    cManufacturerHardwareCertificate,

    -- * Cluster
    Cluster (..),
    cluster,
    cClusterId,
    cStateMessage,
    cBackupPolicy,
    cCreateTimestamp,
    cSubnetMapping,
    cState,
    cPreCoPassword,
    cSecurityGroup,
    cHSMType,
    cSourceBackupId,
    cCertificates,
    cTagList,
    cVPCId,
    cHSMs,
    cBackupRetentionPolicy,

    -- * DestinationBackup
    DestinationBackup (..),
    destinationBackup,
    dbSourceBackup,
    dbCreateTimestamp,
    dbSourceCluster,
    dbSourceRegion,

    -- * HSM
    HSM (..),
    hsm,
    hsmClusterId,
    hsmStateMessage,
    hsmEniIP,
    hsmEniId,
    hsmState,
    hsmAvailabilityZone,
    hsmSubnetId,
    hsmHSMId,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.CloudHSMv2.Types.Backup
import Network.AWS.CloudHSMv2.Types.BackupPolicy
import Network.AWS.CloudHSMv2.Types.BackupRetentionPolicy
import Network.AWS.CloudHSMv2.Types.BackupRetentionType
import Network.AWS.CloudHSMv2.Types.BackupState
import Network.AWS.CloudHSMv2.Types.Certificates
import Network.AWS.CloudHSMv2.Types.Cluster
import Network.AWS.CloudHSMv2.Types.ClusterState
import Network.AWS.CloudHSMv2.Types.DestinationBackup
import Network.AWS.CloudHSMv2.Types.HSM
import Network.AWS.CloudHSMv2.Types.HSMState
import Network.AWS.CloudHSMv2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-04-28@ of the Amazon CloudHSM V2 SDK configuration.
cloudHSMv2 :: Service
cloudHSMv2 =
  Service
    { _svcAbbrev = "CloudHSMv2",
      _svcSigner = v4,
      _svcPrefix = "cloudhsmv2",
      _svcVersion = "2017-04-28",
      _svcEndpoint = defaultEndpoint cloudHSMv2,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CloudHSMv2",
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

-- | The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
_CloudHSMInternalFailureException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMInternalFailureException =
  _MatchServiceError
    cloudHSMv2
    "CloudHsmInternalFailureException"

-- | The request was rejected because it refers to a resource that cannot be found.
_CloudHSMResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMResourceNotFoundException =
  _MatchServiceError
    cloudHSMv2
    "CloudHsmResourceNotFoundException"

-- | The request was rejected because the requester does not have permission to perform the requested operation.
_CloudHSMAccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMAccessDeniedException =
  _MatchServiceError
    cloudHSMv2
    "CloudHsmAccessDeniedException"

-- | The request was rejected because it is not a valid request.
_CloudHSMInvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMInvalidRequestException =
  _MatchServiceError
    cloudHSMv2
    "CloudHsmInvalidRequestException"

-- | The request was rejected because an error occurred.
_CloudHSMServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMServiceException =
  _MatchServiceError
    cloudHSMv2
    "CloudHsmServiceException"

-- | The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.
_CloudHSMTagException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMTagException =
  _MatchServiceError
    cloudHSMv2
    "CloudHsmTagException"
