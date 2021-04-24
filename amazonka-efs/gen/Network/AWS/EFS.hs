{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Elastic File System__
--
-- Amazon Elastic File System (Amazon EFS) provides simple, scalable file storage for use with Amazon EC2 instances in the AWS Cloud. With Amazon EFS, storage capacity is elastic, growing and shrinking automatically as you add and remove files, so your applications have the storage they need, when they need it. For more information, see the <https://docs.aws.amazon.com/efs/latest/ug/api-reference.html User Guide> .
module Network.AWS.EFS
  ( -- * Service Configuration
    efs,

    -- * Errors
    -- $errors

    -- ** SecurityGroupLimitExceeded
    _SecurityGroupLimitExceeded,

    -- ** FileSystemInUse
    _FileSystemInUse,

    -- ** DependencyTimeout
    _DependencyTimeout,

    -- ** ThroughputLimitExceeded
    _ThroughputLimitExceeded,

    -- ** AccessPointAlreadyExists
    _AccessPointAlreadyExists,

    -- ** AccessPointLimitExceeded
    _AccessPointLimitExceeded,

    -- ** InvalidPolicyException
    _InvalidPolicyException,

    -- ** AccessPointNotFound
    _AccessPointNotFound,

    -- ** FileSystemNotFound
    _FileSystemNotFound,

    -- ** SubnetNotFound
    _SubnetNotFound,

    -- ** NetworkInterfaceLimitExceeded
    _NetworkInterfaceLimitExceeded,

    -- ** FileSystemAlreadyExists
    _FileSystemAlreadyExists,

    -- ** TooManyRequests
    _TooManyRequests,

    -- ** FileSystemLimitExceeded
    _FileSystemLimitExceeded,

    -- ** IncorrectMountTargetState
    _IncorrectMountTargetState,

    -- ** InternalServerError
    _InternalServerError,

    -- ** MountTargetNotFound
    _MountTargetNotFound,

    -- ** ValidationException
    _ValidationException,

    -- ** NoFreeAddressesInSubnet
    _NoFreeAddressesInSubnet,

    -- ** BadRequest
    _BadRequest,

    -- ** InsufficientThroughputCapacity
    _InsufficientThroughputCapacity,

    -- ** PolicyNotFound
    _PolicyNotFound,

    -- ** IncorrectFileSystemLifeCycleState
    _IncorrectFileSystemLifeCycleState,

    -- ** IPAddressInUse
    _IPAddressInUse,

    -- ** MountTargetConflict
    _MountTargetConflict,

    -- ** SecurityGroupNotFound
    _SecurityGroupNotFound,

    -- ** UnsupportedAvailabilityZone
    _UnsupportedAvailabilityZone,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** PutBackupPolicy
    module Network.AWS.EFS.PutBackupPolicy,

    -- ** PutLifecycleConfiguration
    module Network.AWS.EFS.PutLifecycleConfiguration,

    -- ** DeleteAccessPoint
    module Network.AWS.EFS.DeleteAccessPoint,

    -- ** ModifyMountTargetSecurityGroups
    module Network.AWS.EFS.ModifyMountTargetSecurityGroups,

    -- ** DescribeFileSystemPolicy
    module Network.AWS.EFS.DescribeFileSystemPolicy,

    -- ** UntagResource
    module Network.AWS.EFS.UntagResource,

    -- ** TagResource
    module Network.AWS.EFS.TagResource,

    -- ** CreateMountTarget
    module Network.AWS.EFS.CreateMountTarget,

    -- ** DeleteMountTarget
    module Network.AWS.EFS.DeleteMountTarget,

    -- ** DescribeFileSystems (Paginated)
    module Network.AWS.EFS.DescribeFileSystems,

    -- ** DescribeMountTargets (Paginated)
    module Network.AWS.EFS.DescribeMountTargets,

    -- ** DeleteFileSystemPolicy
    module Network.AWS.EFS.DeleteFileSystemPolicy,

    -- ** CreateFileSystem
    module Network.AWS.EFS.CreateFileSystem,

    -- ** CreateAccessPoint
    module Network.AWS.EFS.CreateAccessPoint,

    -- ** DescribeAccessPoints
    module Network.AWS.EFS.DescribeAccessPoints,

    -- ** DescribeLifecycleConfiguration
    module Network.AWS.EFS.DescribeLifecycleConfiguration,

    -- ** DescribeMountTargetSecurityGroups
    module Network.AWS.EFS.DescribeMountTargetSecurityGroups,

    -- ** DescribeBackupPolicy
    module Network.AWS.EFS.DescribeBackupPolicy,

    -- ** UpdateFileSystem
    module Network.AWS.EFS.UpdateFileSystem,

    -- ** ListTagsForResource
    module Network.AWS.EFS.ListTagsForResource,

    -- ** DeleteFileSystem
    module Network.AWS.EFS.DeleteFileSystem,

    -- ** PutFileSystemPolicy
    module Network.AWS.EFS.PutFileSystemPolicy,

    -- * Types

    -- ** LifeCycleState
    LifeCycleState (..),

    -- ** PerformanceMode
    PerformanceMode (..),

    -- ** Status
    Status (..),

    -- ** ThroughputMode
    ThroughputMode (..),

    -- ** TransitionToIARules
    TransitionToIARules (..),

    -- ** AccessPointDescription
    AccessPointDescription,
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

    -- ** BackupPolicy
    BackupPolicy,
    backupPolicy,
    bpStatus,

    -- ** BackupPolicyDescription
    BackupPolicyDescription,
    backupPolicyDescription,
    bpdBackupPolicy,

    -- ** CreationInfo
    CreationInfo,
    creationInfo,
    ciOwnerUid,
    ciOwnerGid,
    ciPermissions,

    -- ** FileSystemDescription
    FileSystemDescription,
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

    -- ** FileSystemPolicyDescription
    FileSystemPolicyDescription,
    fileSystemPolicyDescription,
    fspdFileSystemId,
    fspdPolicy,

    -- ** FileSystemSize
    FileSystemSize,
    fileSystemSize,
    fssValueInStandard,
    fssValueInIA,
    fssTimestamp,
    fssValue,

    -- ** LifecycleConfigurationDescription
    LifecycleConfigurationDescription,
    lifecycleConfigurationDescription,
    lcdLifecyclePolicies,

    -- ** LifecyclePolicy
    LifecyclePolicy,
    lifecyclePolicy,
    lpTransitionToIA,

    -- ** MountTargetDescription
    MountTargetDescription,
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

    -- ** PosixUser
    PosixUser,
    posixUser,
    puSecondaryGids,
    puUid,
    puGid,

    -- ** RootDirectory
    RootDirectory,
    rootDirectory,
    rdCreationInfo,
    rdPath,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.EFS.CreateAccessPoint
import Network.AWS.EFS.CreateFileSystem
import Network.AWS.EFS.CreateMountTarget
import Network.AWS.EFS.DeleteAccessPoint
import Network.AWS.EFS.DeleteFileSystem
import Network.AWS.EFS.DeleteFileSystemPolicy
import Network.AWS.EFS.DeleteMountTarget
import Network.AWS.EFS.DescribeAccessPoints
import Network.AWS.EFS.DescribeBackupPolicy
import Network.AWS.EFS.DescribeFileSystemPolicy
import Network.AWS.EFS.DescribeFileSystems
import Network.AWS.EFS.DescribeLifecycleConfiguration
import Network.AWS.EFS.DescribeMountTargetSecurityGroups
import Network.AWS.EFS.DescribeMountTargets
import Network.AWS.EFS.ListTagsForResource
import Network.AWS.EFS.ModifyMountTargetSecurityGroups
import Network.AWS.EFS.PutBackupPolicy
import Network.AWS.EFS.PutFileSystemPolicy
import Network.AWS.EFS.PutLifecycleConfiguration
import Network.AWS.EFS.TagResource
import Network.AWS.EFS.Types
import Network.AWS.EFS.UntagResource
import Network.AWS.EFS.UpdateFileSystem
import Network.AWS.EFS.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'EFS'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
