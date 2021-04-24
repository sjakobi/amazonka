{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EFS.Types
  ( -- * Service Configuration
    efs,

    -- * Errors
    _SecurityGroupLimitExceeded,
    _FileSystemInUse,
    _DependencyTimeout,
    _ThroughputLimitExceeded,
    _AccessPointAlreadyExists,
    _AccessPointLimitExceeded,
    _InvalidPolicyException,
    _AccessPointNotFound,
    _FileSystemNotFound,
    _SubnetNotFound,
    _NetworkInterfaceLimitExceeded,
    _FileSystemAlreadyExists,
    _TooManyRequests,
    _FileSystemLimitExceeded,
    _IncorrectMountTargetState,
    _InternalServerError,
    _MountTargetNotFound,
    _ValidationException,
    _NoFreeAddressesInSubnet,
    _BadRequest,
    _InsufficientThroughputCapacity,
    _PolicyNotFound,
    _IncorrectFileSystemLifeCycleState,
    _IPAddressInUse,
    _MountTargetConflict,
    _SecurityGroupNotFound,
    _UnsupportedAvailabilityZone,

    -- * LifeCycleState
    LifeCycleState (..),

    -- * PerformanceMode
    PerformanceMode (..),

    -- * Status
    Status (..),

    -- * ThroughputMode
    ThroughputMode (..),

    -- * TransitionToIARules
    TransitionToIARules (..),

    -- * AccessPointDescription
    AccessPointDescription (..),
    accessPointDescription,
    apdOwnerId,
    apdAccessPointARN,
    apdAccessPointId,
    apdRootDirectory,
    apdName,
    apdPosixUser,
    apdTags,
    apdLifeCycleState,
    apdFileSystemId,
    apdClientToken,

    -- * BackupPolicy
    BackupPolicy (..),
    backupPolicy,
    bpStatus,

    -- * BackupPolicyDescription
    BackupPolicyDescription (..),
    backupPolicyDescription,
    bpdBackupPolicy,

    -- * CreationInfo
    CreationInfo (..),
    creationInfo,
    ciOwnerUid,
    ciOwnerGid,
    ciPermissions,

    -- * FileSystemDescription
    FileSystemDescription (..),
    fileSystemDescription,
    fsdThroughputMode,
    fsdEncrypted,
    fsdFileSystemARN,
    fsdProvisionedThroughputInMibps,
    fsdKMSKeyId,
    fsdName,
    fsdOwnerId,
    fsdCreationToken,
    fsdFileSystemId,
    fsdCreationTime,
    fsdLifeCycleState,
    fsdNumberOfMountTargets,
    fsdSizeInBytes,
    fsdPerformanceMode,
    fsdTags,

    -- * FileSystemPolicyDescription
    FileSystemPolicyDescription (..),
    fileSystemPolicyDescription,
    fspdFileSystemId,
    fspdPolicy,

    -- * FileSystemSize
    FileSystemSize (..),
    fileSystemSize,
    fssValueInStandard,
    fssValueInIA,
    fssTimestamp,
    fssValue,

    -- * LifecycleConfigurationDescription
    LifecycleConfigurationDescription (..),
    lifecycleConfigurationDescription,
    lcdLifecyclePolicies,

    -- * LifecyclePolicy
    LifecyclePolicy (..),
    lifecyclePolicy,
    lpTransitionToIA,

    -- * MountTargetDescription
    MountTargetDescription (..),
    mountTargetDescription,
    mtdOwnerId,
    mtdAvailabilityZoneName,
    mtdAvailabilityZoneId,
    mtdIPAddress,
    mtdNetworkInterfaceId,
    mtdVPCId,
    mtdMountTargetId,
    mtdFileSystemId,
    mtdSubnetId,
    mtdLifeCycleState,

    -- * PosixUser
    PosixUser (..),
    posixUser,
    puSecondaryGids,
    puUid,
    puGid,

    -- * RootDirectory
    RootDirectory (..),
    rootDirectory,
    rdCreationInfo,
    rdPath,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.EFS.Types.AccessPointDescription
import Network.AWS.EFS.Types.BackupPolicy
import Network.AWS.EFS.Types.BackupPolicyDescription
import Network.AWS.EFS.Types.CreationInfo
import Network.AWS.EFS.Types.FileSystemDescription
import Network.AWS.EFS.Types.FileSystemPolicyDescription
import Network.AWS.EFS.Types.FileSystemSize
import Network.AWS.EFS.Types.LifeCycleState
import Network.AWS.EFS.Types.LifecycleConfigurationDescription
import Network.AWS.EFS.Types.LifecyclePolicy
import Network.AWS.EFS.Types.MountTargetDescription
import Network.AWS.EFS.Types.PerformanceMode
import Network.AWS.EFS.Types.PosixUser
import Network.AWS.EFS.Types.RootDirectory
import Network.AWS.EFS.Types.Status
import Network.AWS.EFS.Types.Tag
import Network.AWS.EFS.Types.ThroughputMode
import Network.AWS.EFS.Types.TransitionToIARules
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-02-01@ of the Amazon Elastic File System SDK configuration.
efs :: Service
efs =
  Service
    { _svcAbbrev = "EFS",
      _svcSigner = v4,
      _svcPrefix = "elasticfilesystem",
      _svcVersion = "2015-02-01",
      _svcEndpoint = defaultEndpoint efs,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "EFS",
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

-- | Returned if the size of @SecurityGroups@ specified in the request is greater than five.
_SecurityGroupLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_SecurityGroupLimitExceeded =
  _MatchServiceError efs "SecurityGroupLimitExceeded"
    . hasStatus 400

-- | Returned if a file system has mount targets.
_FileSystemInUse :: AsError a => Getting (First ServiceError) a ServiceError
_FileSystemInUse =
  _MatchServiceError efs "FileSystemInUse"
    . hasStatus 409

-- | The service timed out trying to fulfill the request, and the client should try the call again.
_DependencyTimeout :: AsError a => Getting (First ServiceError) a ServiceError
_DependencyTimeout =
  _MatchServiceError efs "DependencyTimeout"
    . hasStatus 504

-- | Returned if the throughput mode or amount of provisioned throughput can't be changed because the throughput limit of 1024 MiB/s has been reached.
_ThroughputLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_ThroughputLimitExceeded =
  _MatchServiceError efs "ThroughputLimitExceeded"
    . hasStatus 400

-- | Returned if the access point you are trying to create already exists, with the creation token you provided in the request.
_AccessPointAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_AccessPointAlreadyExists =
  _MatchServiceError efs "AccessPointAlreadyExists"
    . hasStatus 409

-- | Returned if the AWS account has already created the maximum number of access points allowed per file system.
_AccessPointLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_AccessPointLimitExceeded =
  _MatchServiceError efs "AccessPointLimitExceeded"
    . hasStatus 403

-- | Returned if the @FileSystemPolicy@ is is malformed or contains an error such as an invalid parameter value or a missing required parameter. Returned in the case of a policy lockout safety check error.
_InvalidPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPolicyException =
  _MatchServiceError efs "InvalidPolicyException"
    . hasStatus 400

-- | Returned if the specified @AccessPointId@ value doesn't exist in the requester's AWS account.
_AccessPointNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_AccessPointNotFound =
  _MatchServiceError efs "AccessPointNotFound"
    . hasStatus 404

-- | Returned if the specified @FileSystemId@ value doesn't exist in the requester's AWS account.
_FileSystemNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_FileSystemNotFound =
  _MatchServiceError efs "FileSystemNotFound"
    . hasStatus 404

-- | Returned if there is no subnet with ID @SubnetId@ provided in the request.
_SubnetNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_SubnetNotFound =
  _MatchServiceError efs "SubnetNotFound"
    . hasStatus 400

-- | The calling account has reached the limit for elastic network interfaces for the specific AWS Region. The client should try to delete some elastic network interfaces or get the account limit raised. For more information, see <https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html Amazon VPC Limits> in the /Amazon VPC User Guide / (see the Network interfaces per VPC entry in the table).
_NetworkInterfaceLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_NetworkInterfaceLimitExceeded =
  _MatchServiceError
    efs
    "NetworkInterfaceLimitExceeded"
    . hasStatus 409

-- | Returned if the file system you are trying to create already exists, with the creation token you provided.
_FileSystemAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_FileSystemAlreadyExists =
  _MatchServiceError efs "FileSystemAlreadyExists"
    . hasStatus 409

-- | Returned if you don’t wait at least 24 hours before changing the throughput mode, or decreasing the Provisioned Throughput value.
_TooManyRequests :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequests =
  _MatchServiceError efs "TooManyRequests"
    . hasStatus 429

-- | Returned if the AWS account has already created the maximum number of file systems allowed per account.
_FileSystemLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_FileSystemLimitExceeded =
  _MatchServiceError efs "FileSystemLimitExceeded"
    . hasStatus 403

-- | Returned if the mount target is not in the correct state for the operation.
_IncorrectMountTargetState :: AsError a => Getting (First ServiceError) a ServiceError
_IncorrectMountTargetState =
  _MatchServiceError efs "IncorrectMountTargetState"
    . hasStatus 409

-- | Returned if an error occurred on the server side.
_InternalServerError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerError =
  _MatchServiceError efs "InternalServerError"
    . hasStatus 500

-- | Returned if there is no mount target with the specified ID found in the caller's account.
_MountTargetNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_MountTargetNotFound =
  _MatchServiceError efs "MountTargetNotFound"
    . hasStatus 404

-- | Returned if the AWS Backup service is not available in the region that the request was made.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError efs "ValidationException"
    . hasStatus 400

-- | Returned if @IpAddress@ was not specified in the request and there are no free IP addresses in the subnet.
_NoFreeAddressesInSubnet :: AsError a => Getting (First ServiceError) a ServiceError
_NoFreeAddressesInSubnet =
  _MatchServiceError efs "NoFreeAddressesInSubnet"
    . hasStatus 409

-- | Returned if the request is malformed or contains an error such as an invalid parameter value or a missing required parameter.
_BadRequest :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequest =
  _MatchServiceError efs "BadRequest" . hasStatus 400

-- | Returned if there's not enough capacity to provision additional throughput. This value might be returned when you try to create a file system in provisioned throughput mode, when you attempt to increase the provisioned throughput of an existing file system, or when you attempt to change an existing file system from bursting to provisioned throughput mode.
_InsufficientThroughputCapacity :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientThroughputCapacity =
  _MatchServiceError
    efs
    "InsufficientThroughputCapacity"
    . hasStatus 503

-- | Returned if the default file system policy is in effect for the EFS file system specified.
_PolicyNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_PolicyNotFound =
  _MatchServiceError efs "PolicyNotFound"
    . hasStatus 404

-- | Returned if the file system's lifecycle state is not "available".
_IncorrectFileSystemLifeCycleState :: AsError a => Getting (First ServiceError) a ServiceError
_IncorrectFileSystemLifeCycleState =
  _MatchServiceError
    efs
    "IncorrectFileSystemLifeCycleState"
    . hasStatus 409

-- | Returned if the request specified an @IpAddress@ that is already in use in the subnet.
_IPAddressInUse :: AsError a => Getting (First ServiceError) a ServiceError
_IPAddressInUse =
  _MatchServiceError efs "IpAddressInUse"
    . hasStatus 409

-- | Returned if the mount target would violate one of the specified restrictions based on the file system's existing mount targets.
_MountTargetConflict :: AsError a => Getting (First ServiceError) a ServiceError
_MountTargetConflict =
  _MatchServiceError efs "MountTargetConflict"
    . hasStatus 409

-- | Returned if one of the specified security groups doesn't exist in the subnet's VPC.
_SecurityGroupNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_SecurityGroupNotFound =
  _MatchServiceError efs "SecurityGroupNotFound"
    . hasStatus 400

-- |
_UnsupportedAvailabilityZone :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedAvailabilityZone =
  _MatchServiceError
    efs
    "UnsupportedAvailabilityZone"
    . hasStatus 400
