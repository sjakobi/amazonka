{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Storage Gateway Service__
--
-- AWS Storage Gateway is the service that connects an on-premises software appliance with cloud-based storage to provide seamless and secure integration between an organization's on-premises IT environment and the AWS storage infrastructure. The service enables you to securely upload data to the AWS Cloud for cost effective backup and rapid disaster recovery.
--
-- Use the following links to get started using the /AWS Storage Gateway Service API Reference/ :
--
--     * <https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewayHTTPRequestsHeaders AWS Storage Gateway required request headers> : Describes the required headers that you must send with every POST request to AWS Storage Gateway.
--
--     * <https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewaySigningRequests Signing requests> : AWS Storage Gateway requires that you authenticate every request you send; this topic describes how sign such a request.
--
--     * <https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#APIErrorResponses Error responses> : Provides reference information about AWS Storage Gateway errors.
--
--     * <https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_Operations.html Operations in AWS Storage Gateway> : Contains detailed descriptions of all AWS Storage Gateway operations, their request parameters, response elements, possible errors, and examples of requests and responses.
--
--     * <https://docs.aws.amazon.com/general/latest/gr/sg.html AWS Storage Gateway endpoints and quotas> : Provides a list of each AWS Region and the endpoints available for use with AWS Storage Gateway.
--
--
--
-- /Important:/ IDs for Storage Gateway volumes and Amazon EBS snapshots created from gateway volumes are changing to a longer format. Starting in December 2016, all new volumes and snapshots will be created with a 17-character string. Starting in April 2016, you will be able to use these longer IDs so you can test your systems with the new format. For more information, see <http://aws.amazon.com/ec2/faqs/#longer-ids Longer EC2 and EBS resource IDs> .
--
-- For example, a volume Amazon Resource Name (ARN) with the longer volume ID format looks like the following:
--
-- @arn:aws:storagegateway:us-west-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABBCCDDEEFFG@ .
--
-- A snapshot ID with the longer ID format looks like the following: @snap-78e226633445566ee@ .
--
-- For more information, see <http://forums.aws.amazon.com/ann.jspa?annID=3557 Announcement: Heads-up – Longer AWS Storage Gateway volume and snapshot IDs coming in 2016> .
module Network.AWS.StorageGateway
  ( -- * Service Configuration
    storageGateway,

    -- * Errors
    -- $errors

    -- ** ServiceUnavailableError
    _ServiceUnavailableError,

    -- ** InternalServerError
    _InternalServerError,

    -- ** InvalidGatewayRequestException
    _InvalidGatewayRequestException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DetachVolume
    module Network.AWS.StorageGateway.DetachVolume,

    -- ** CreateNFSFileShare
    module Network.AWS.StorageGateway.CreateNFSFileShare,

    -- ** RetrieveTapeArchive
    module Network.AWS.StorageGateway.RetrieveTapeArchive,

    -- ** CancelArchival
    module Network.AWS.StorageGateway.CancelArchival,

    -- ** DescribeSMBSettings
    module Network.AWS.StorageGateway.DescribeSMBSettings,

    -- ** AddWorkingStorage
    module Network.AWS.StorageGateway.AddWorkingStorage,

    -- ** ListTapes (Paginated)
    module Network.AWS.StorageGateway.ListTapes,

    -- ** ListVolumes (Paginated)
    module Network.AWS.StorageGateway.ListVolumes,

    -- ** DescribeSMBFileShares
    module Network.AWS.StorageGateway.DescribeSMBFileShares,

    -- ** DescribeCache
    module Network.AWS.StorageGateway.DescribeCache,

    -- ** UpdateMaintenanceStartTime
    module Network.AWS.StorageGateway.UpdateMaintenanceStartTime,

    -- ** DescribeGatewayInformation
    module Network.AWS.StorageGateway.DescribeGatewayInformation,

    -- ** ActivateGateway
    module Network.AWS.StorageGateway.ActivateGateway,

    -- ** RefreshCache
    module Network.AWS.StorageGateway.RefreshCache,

    -- ** UpdateNFSFileShare
    module Network.AWS.StorageGateway.UpdateNFSFileShare,

    -- ** DescribeTapes (Paginated)
    module Network.AWS.StorageGateway.DescribeTapes,

    -- ** ListVolumeRecoveryPoints
    module Network.AWS.StorageGateway.ListVolumeRecoveryPoints,

    -- ** UpdateSMBFileShare
    module Network.AWS.StorageGateway.UpdateSMBFileShare,

    -- ** DescribeAvailabilityMonitorTest
    module Network.AWS.StorageGateway.DescribeAvailabilityMonitorTest,

    -- ** RemoveTagsFromResource
    module Network.AWS.StorageGateway.RemoveTagsFromResource,

    -- ** DeleteTapeArchive
    module Network.AWS.StorageGateway.DeleteTapeArchive,

    -- ** AttachVolume
    module Network.AWS.StorageGateway.AttachVolume,

    -- ** CreateSMBFileShare
    module Network.AWS.StorageGateway.CreateSMBFileShare,

    -- ** UpdateGatewaySoftwareNow
    module Network.AWS.StorageGateway.UpdateGatewaySoftwareNow,

    -- ** StartGateway
    module Network.AWS.StorageGateway.StartGateway,

    -- ** UpdateSMBSecurityStrategy
    module Network.AWS.StorageGateway.UpdateSMBSecurityStrategy,

    -- ** CreateTapePool
    module Network.AWS.StorageGateway.CreateTapePool,

    -- ** CancelRetrieval
    module Network.AWS.StorageGateway.CancelRetrieval,

    -- ** DescribeBandwidthRateLimit
    module Network.AWS.StorageGateway.DescribeBandwidthRateLimit,

    -- ** ListTapePools (Paginated)
    module Network.AWS.StorageGateway.ListTapePools,

    -- ** JoinDomain
    module Network.AWS.StorageGateway.JoinDomain,

    -- ** ListFileShares (Paginated)
    module Network.AWS.StorageGateway.ListFileShares,

    -- ** ListVolumeInitiators
    module Network.AWS.StorageGateway.ListVolumeInitiators,

    -- ** CreateTapeWithBarcode
    module Network.AWS.StorageGateway.CreateTapeWithBarcode,

    -- ** SetLocalConsolePassword
    module Network.AWS.StorageGateway.SetLocalConsolePassword,

    -- ** DescribeChapCredentials
    module Network.AWS.StorageGateway.DescribeChapCredentials,

    -- ** CreateTapes
    module Network.AWS.StorageGateway.CreateTapes,

    -- ** UpdateVTLDeviceType
    module Network.AWS.StorageGateway.UpdateVTLDeviceType,

    -- ** CreateCachediSCSIVolume
    module Network.AWS.StorageGateway.CreateCachediSCSIVolume,

    -- ** DescribeSnapshotSchedule
    module Network.AWS.StorageGateway.DescribeSnapshotSchedule,

    -- ** UpdateBandwidthRateLimitSchedule
    module Network.AWS.StorageGateway.UpdateBandwidthRateLimitSchedule,

    -- ** DisableGateway
    module Network.AWS.StorageGateway.DisableGateway,

    -- ** CreateStorediSCSIVolume
    module Network.AWS.StorageGateway.CreateStorediSCSIVolume,

    -- ** DescribeTapeArchives (Paginated)
    module Network.AWS.StorageGateway.DescribeTapeArchives,

    -- ** DeleteTape
    module Network.AWS.StorageGateway.DeleteTape,

    -- ** ResetCache
    module Network.AWS.StorageGateway.ResetCache,

    -- ** AddTagsToResource
    module Network.AWS.StorageGateway.AddTagsToResource,

    -- ** SetSMBGuestPassword
    module Network.AWS.StorageGateway.SetSMBGuestPassword,

    -- ** DeleteGateway
    module Network.AWS.StorageGateway.DeleteGateway,

    -- ** CreateSnapshotFromVolumeRecoveryPoint
    module Network.AWS.StorageGateway.CreateSnapshotFromVolumeRecoveryPoint,

    -- ** UpdateBandwidthRateLimit
    module Network.AWS.StorageGateway.UpdateBandwidthRateLimit,

    -- ** DescribeTapeRecoveryPoints (Paginated)
    module Network.AWS.StorageGateway.DescribeTapeRecoveryPoints,

    -- ** DeleteVolume
    module Network.AWS.StorageGateway.DeleteVolume,

    -- ** ListLocalDisks
    module Network.AWS.StorageGateway.ListLocalDisks,

    -- ** DeleteBandwidthRateLimit
    module Network.AWS.StorageGateway.DeleteBandwidthRateLimit,

    -- ** RetrieveTapeRecoveryPoint
    module Network.AWS.StorageGateway.RetrieveTapeRecoveryPoint,

    -- ** ListGateways (Paginated)
    module Network.AWS.StorageGateway.ListGateways,

    -- ** DescribeNFSFileShares
    module Network.AWS.StorageGateway.DescribeNFSFileShares,

    -- ** DescribeStorediSCSIVolumes
    module Network.AWS.StorageGateway.DescribeStorediSCSIVolumes,

    -- ** DescribeUploadBuffer
    module Network.AWS.StorageGateway.DescribeUploadBuffer,

    -- ** StartAvailabilityMonitorTest
    module Network.AWS.StorageGateway.StartAvailabilityMonitorTest,

    -- ** DeleteChapCredentials
    module Network.AWS.StorageGateway.DeleteChapCredentials,

    -- ** UpdateChapCredentials
    module Network.AWS.StorageGateway.UpdateChapCredentials,

    -- ** DeleteSnapshotSchedule
    module Network.AWS.StorageGateway.DeleteSnapshotSchedule,

    -- ** ShutdownGateway
    module Network.AWS.StorageGateway.ShutdownGateway,

    -- ** DescribeBandwidthRateLimitSchedule
    module Network.AWS.StorageGateway.DescribeBandwidthRateLimitSchedule,

    -- ** DescribeVTLDevices (Paginated)
    module Network.AWS.StorageGateway.DescribeVTLDevices,

    -- ** CreateSnapshot
    module Network.AWS.StorageGateway.CreateSnapshot,

    -- ** UpdateSnapshotSchedule
    module Network.AWS.StorageGateway.UpdateSnapshotSchedule,

    -- ** UpdateSMBFileShareVisibility
    module Network.AWS.StorageGateway.UpdateSMBFileShareVisibility,

    -- ** ListAutomaticTapeCreationPolicies
    module Network.AWS.StorageGateway.ListAutomaticTapeCreationPolicies,

    -- ** AddCache
    module Network.AWS.StorageGateway.AddCache,

    -- ** NotifyWhenUploaded
    module Network.AWS.StorageGateway.NotifyWhenUploaded,

    -- ** DescribeCachediSCSIVolumes
    module Network.AWS.StorageGateway.DescribeCachediSCSIVolumes,

    -- ** DeleteAutomaticTapeCreationPolicy
    module Network.AWS.StorageGateway.DeleteAutomaticTapeCreationPolicy,

    -- ** UpdateAutomaticTapeCreationPolicy
    module Network.AWS.StorageGateway.UpdateAutomaticTapeCreationPolicy,

    -- ** DescribeWorkingStorage
    module Network.AWS.StorageGateway.DescribeWorkingStorage,

    -- ** UpdateGatewayInformation
    module Network.AWS.StorageGateway.UpdateGatewayInformation,

    -- ** DescribeMaintenanceStartTime
    module Network.AWS.StorageGateway.DescribeMaintenanceStartTime,

    -- ** AssignTapePool
    module Network.AWS.StorageGateway.AssignTapePool,

    -- ** DeleteTapePool
    module Network.AWS.StorageGateway.DeleteTapePool,

    -- ** ListTagsForResource (Paginated)
    module Network.AWS.StorageGateway.ListTagsForResource,

    -- ** DeleteFileShare
    module Network.AWS.StorageGateway.DeleteFileShare,

    -- ** AddUploadBuffer
    module Network.AWS.StorageGateway.AddUploadBuffer,

    -- * Types

    -- ** ActiveDirectoryStatus
    ActiveDirectoryStatus (..),

    -- ** AvailabilityMonitorTestStatus
    AvailabilityMonitorTestStatus (..),

    -- ** CaseSensitivity
    CaseSensitivity (..),

    -- ** FileShareType
    FileShareType (..),

    -- ** HostEnvironment
    HostEnvironment (..),

    -- ** ObjectACL
    ObjectACL (..),

    -- ** PoolStatus
    PoolStatus (..),

    -- ** RetentionLockType
    RetentionLockType (..),

    -- ** SMBSecurityStrategy
    SMBSecurityStrategy (..),

    -- ** TapeStorageClass
    TapeStorageClass (..),

    -- ** AutomaticTapeCreationPolicyInfo
    AutomaticTapeCreationPolicyInfo,
    automaticTapeCreationPolicyInfo,
    atcpiAutomaticTapeCreationRules,
    atcpiGatewayARN,

    -- ** AutomaticTapeCreationRule
    AutomaticTapeCreationRule,
    automaticTapeCreationRule,
    atcrWorm,
    atcrTapeBarcodePrefix,
    atcrPoolId,
    atcrTapeSizeInBytes,
    atcrMinimumNumTapes,

    -- ** BandwidthRateLimitInterval
    BandwidthRateLimitInterval,
    bandwidthRateLimitInterval,
    brliAverageUploadRateLimitInBitsPerSec,
    brliAverageDownloadRateLimitInBitsPerSec,
    brliStartHourOfDay,
    brliStartMinuteOfHour,
    brliEndHourOfDay,
    brliEndMinuteOfHour,
    brliDaysOfWeek,

    -- ** CacheAttributes
    CacheAttributes,
    cacheAttributes,
    caCacheStaleTimeoutInSeconds,

    -- ** CachediSCSIVolume
    CachediSCSIVolume,
    cachediSCSIVolume,
    cscsivSourceSnapshotId,
    cscsivVolumeStatus,
    cscsivCreatedDate,
    cscsivTargetName,
    cscsivVolumeARN,
    cscsivVolumeId,
    cscsivKMSKey,
    cscsivVolumeiSCSIAttributes,
    cscsivVolumeUsedInBytes,
    cscsivVolumeSizeInBytes,
    cscsivVolumeType,
    cscsivVolumeAttachmentStatus,
    cscsivVolumeProgress,

    -- ** ChapInfo
    ChapInfo,
    chapInfo,
    ciInitiatorName,
    ciTargetARN,
    ciSecretToAuthenticateTarget,
    ciSecretToAuthenticateInitiator,

    -- ** DeviceiSCSIAttributes
    DeviceiSCSIAttributes,
    deviceiSCSIAttributes,
    dscsiaChapEnabled,
    dscsiaTargetARN,
    dscsiaNetworkInterfaceId,
    dscsiaNetworkInterfacePort,

    -- ** Disk
    Disk,
    disk,
    dDiskAllocationResource,
    dDiskStatus,
    dDiskSizeInBytes,
    dDiskAttributeList,
    dDiskPath,
    dDiskId,
    dDiskAllocationType,
    dDiskNode,

    -- ** FileShareInfo
    FileShareInfo,
    fileShareInfo,
    fsiFileShareId,
    fsiFileShareType,
    fsiFileShareStatus,
    fsiFileShareARN,
    fsiGatewayARN,

    -- ** GatewayInfo
    GatewayInfo,
    gatewayInfo,
    giGatewayOperationalState,
    giGatewayName,
    giGatewayType,
    giEC2InstanceRegion,
    giEC2InstanceId,
    giGatewayARN,
    giGatewayId,

    -- ** NFSFileShareDefaults
    NFSFileShareDefaults,
    nFSFileShareDefaults,
    nfsfsdOwnerId,
    nfsfsdGroupId,
    nfsfsdDirectoryMode,
    nfsfsdFileMode,

    -- ** NFSFileShareInfo
    NFSFileShareInfo,
    nFSFileShareInfo,
    nfsfsiDefaultStorageClass,
    nfsfsiFileShareName,
    nfsfsiGuessMIMETypeEnabled,
    nfsfsiReadOnly,
    nfsfsiFileShareId,
    nfsfsiKMSEncrypted,
    nfsfsiLocationARN,
    nfsfsiSquash,
    nfsfsiNotificationPolicy,
    nfsfsiKMSKey,
    nfsfsiFileShareStatus,
    nfsfsiRole,
    nfsfsiTags,
    nfsfsiFileShareARN,
    nfsfsiCacheAttributes,
    nfsfsiClientList,
    nfsfsiObjectACL,
    nfsfsiNFSFileShareDefaults,
    nfsfsiPath,
    nfsfsiGatewayARN,
    nfsfsiRequesterPays,

    -- ** NetworkInterface
    NetworkInterface,
    networkInterface,
    niMACAddress,
    niIPv6Address,
    niIPv4Address,

    -- ** PoolInfo
    PoolInfo,
    poolInfo,
    piPoolARN,
    piPoolName,
    piStorageClass,
    piRetentionLockType,
    piPoolStatus,
    piRetentionLockTimeInDays,

    -- ** SMBFileShareInfo
    SMBFileShareInfo,
    sMBFileShareInfo,
    smbfsiSMBACLEnabled,
    smbfsiAccessBasedEnumeration,
    smbfsiDefaultStorageClass,
    smbfsiFileShareName,
    smbfsiCaseSensitivity,
    smbfsiGuessMIMETypeEnabled,
    smbfsiReadOnly,
    smbfsiFileShareId,
    smbfsiKMSEncrypted,
    smbfsiAuthentication,
    smbfsiLocationARN,
    smbfsiNotificationPolicy,
    smbfsiValidUserList,
    smbfsiKMSKey,
    smbfsiFileShareStatus,
    smbfsiAdminUserList,
    smbfsiAuditDestinationARN,
    smbfsiRole,
    smbfsiTags,
    smbfsiFileShareARN,
    smbfsiCacheAttributes,
    smbfsiObjectACL,
    smbfsiPath,
    smbfsiGatewayARN,
    smbfsiRequesterPays,
    smbfsiInvalidUserList,

    -- ** StorediSCSIVolume
    StorediSCSIVolume,
    storediSCSIVolume,
    sscsivSourceSnapshotId,
    sscsivVolumeStatus,
    sscsivCreatedDate,
    sscsivTargetName,
    sscsivVolumeARN,
    sscsivVolumeId,
    sscsivKMSKey,
    sscsivPreservedExistingData,
    sscsivVolumeiSCSIAttributes,
    sscsivVolumeUsedInBytes,
    sscsivVolumeSizeInBytes,
    sscsivVolumeDiskId,
    sscsivVolumeType,
    sscsivVolumeAttachmentStatus,
    sscsivVolumeProgress,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** Tape
    Tape,
    tape,
    tPoolEntryDate,
    tTapeStatus,
    tTapeCreatedDate,
    tPoolId,
    tVTLDevice,
    tTapeARN,
    tKMSKey,
    tWorm,
    tTapeBarcode,
    tTapeUsedInBytes,
    tTapeSizeInBytes,
    tRetentionStartDate,
    tProgress,

    -- ** TapeArchive
    TapeArchive,
    tapeArchive,
    taPoolEntryDate,
    taTapeStatus,
    taTapeCreatedDate,
    taPoolId,
    taCompletionTime,
    taRetrievedTo,
    taTapeARN,
    taKMSKey,
    taWorm,
    taTapeBarcode,
    taTapeUsedInBytes,
    taTapeSizeInBytes,
    taRetentionStartDate,

    -- ** TapeInfo
    TapeInfo,
    tapeInfo,
    tiPoolEntryDate,
    tiTapeStatus,
    tiPoolId,
    tiTapeARN,
    tiTapeBarcode,
    tiTapeSizeInBytes,
    tiRetentionStartDate,
    tiGatewayARN,

    -- ** TapeRecoveryPointInfo
    TapeRecoveryPointInfo,
    tapeRecoveryPointInfo,
    trpiTapeStatus,
    trpiTapeARN,
    trpiTapeSizeInBytes,
    trpiTapeRecoveryPointTime,

    -- ** VTLDevice
    VTLDevice,
    vTLDevice,
    vtldVTLDeviceProductIdentifier,
    vtldVTLDeviceVendor,
    vtldDeviceiSCSIAttributes,
    vtldVTLDeviceType,
    vtldVTLDeviceARN,

    -- ** VolumeInfo
    VolumeInfo,
    volumeInfo,
    viVolumeARN,
    viVolumeId,
    viVolumeSizeInBytes,
    viVolumeType,
    viGatewayARN,
    viVolumeAttachmentStatus,
    viGatewayId,

    -- ** VolumeRecoveryPointInfo
    VolumeRecoveryPointInfo,
    volumeRecoveryPointInfo,
    vrpiVolumeARN,
    vrpiVolumeSizeInBytes,
    vrpiVolumeUsageInBytes,
    vrpiVolumeRecoveryPointTime,

    -- ** VolumeiSCSIAttributes
    VolumeiSCSIAttributes,
    volumeiSCSIAttributes,
    vscsiaChapEnabled,
    vscsiaLunNumber,
    vscsiaTargetARN,
    vscsiaNetworkInterfaceId,
    vscsiaNetworkInterfacePort,
  )
where

import Network.AWS.StorageGateway.ActivateGateway
import Network.AWS.StorageGateway.AddCache
import Network.AWS.StorageGateway.AddTagsToResource
import Network.AWS.StorageGateway.AddUploadBuffer
import Network.AWS.StorageGateway.AddWorkingStorage
import Network.AWS.StorageGateway.AssignTapePool
import Network.AWS.StorageGateway.AttachVolume
import Network.AWS.StorageGateway.CancelArchival
import Network.AWS.StorageGateway.CancelRetrieval
import Network.AWS.StorageGateway.CreateCachediSCSIVolume
import Network.AWS.StorageGateway.CreateNFSFileShare
import Network.AWS.StorageGateway.CreateSMBFileShare
import Network.AWS.StorageGateway.CreateSnapshot
import Network.AWS.StorageGateway.CreateSnapshotFromVolumeRecoveryPoint
import Network.AWS.StorageGateway.CreateStorediSCSIVolume
import Network.AWS.StorageGateway.CreateTapePool
import Network.AWS.StorageGateway.CreateTapeWithBarcode
import Network.AWS.StorageGateway.CreateTapes
import Network.AWS.StorageGateway.DeleteAutomaticTapeCreationPolicy
import Network.AWS.StorageGateway.DeleteBandwidthRateLimit
import Network.AWS.StorageGateway.DeleteChapCredentials
import Network.AWS.StorageGateway.DeleteFileShare
import Network.AWS.StorageGateway.DeleteGateway
import Network.AWS.StorageGateway.DeleteSnapshotSchedule
import Network.AWS.StorageGateway.DeleteTape
import Network.AWS.StorageGateway.DeleteTapeArchive
import Network.AWS.StorageGateway.DeleteTapePool
import Network.AWS.StorageGateway.DeleteVolume
import Network.AWS.StorageGateway.DescribeAvailabilityMonitorTest
import Network.AWS.StorageGateway.DescribeBandwidthRateLimit
import Network.AWS.StorageGateway.DescribeBandwidthRateLimitSchedule
import Network.AWS.StorageGateway.DescribeCache
import Network.AWS.StorageGateway.DescribeCachediSCSIVolumes
import Network.AWS.StorageGateway.DescribeChapCredentials
import Network.AWS.StorageGateway.DescribeGatewayInformation
import Network.AWS.StorageGateway.DescribeMaintenanceStartTime
import Network.AWS.StorageGateway.DescribeNFSFileShares
import Network.AWS.StorageGateway.DescribeSMBFileShares
import Network.AWS.StorageGateway.DescribeSMBSettings
import Network.AWS.StorageGateway.DescribeSnapshotSchedule
import Network.AWS.StorageGateway.DescribeStorediSCSIVolumes
import Network.AWS.StorageGateway.DescribeTapeArchives
import Network.AWS.StorageGateway.DescribeTapeRecoveryPoints
import Network.AWS.StorageGateway.DescribeTapes
import Network.AWS.StorageGateway.DescribeUploadBuffer
import Network.AWS.StorageGateway.DescribeVTLDevices
import Network.AWS.StorageGateway.DescribeWorkingStorage
import Network.AWS.StorageGateway.DetachVolume
import Network.AWS.StorageGateway.DisableGateway
import Network.AWS.StorageGateway.JoinDomain
import Network.AWS.StorageGateway.ListAutomaticTapeCreationPolicies
import Network.AWS.StorageGateway.ListFileShares
import Network.AWS.StorageGateway.ListGateways
import Network.AWS.StorageGateway.ListLocalDisks
import Network.AWS.StorageGateway.ListTagsForResource
import Network.AWS.StorageGateway.ListTapePools
import Network.AWS.StorageGateway.ListTapes
import Network.AWS.StorageGateway.ListVolumeInitiators
import Network.AWS.StorageGateway.ListVolumeRecoveryPoints
import Network.AWS.StorageGateway.ListVolumes
import Network.AWS.StorageGateway.NotifyWhenUploaded
import Network.AWS.StorageGateway.RefreshCache
import Network.AWS.StorageGateway.RemoveTagsFromResource
import Network.AWS.StorageGateway.ResetCache
import Network.AWS.StorageGateway.RetrieveTapeArchive
import Network.AWS.StorageGateway.RetrieveTapeRecoveryPoint
import Network.AWS.StorageGateway.SetLocalConsolePassword
import Network.AWS.StorageGateway.SetSMBGuestPassword
import Network.AWS.StorageGateway.ShutdownGateway
import Network.AWS.StorageGateway.StartAvailabilityMonitorTest
import Network.AWS.StorageGateway.StartGateway
import Network.AWS.StorageGateway.Types
import Network.AWS.StorageGateway.UpdateAutomaticTapeCreationPolicy
import Network.AWS.StorageGateway.UpdateBandwidthRateLimit
import Network.AWS.StorageGateway.UpdateBandwidthRateLimitSchedule
import Network.AWS.StorageGateway.UpdateChapCredentials
import Network.AWS.StorageGateway.UpdateGatewayInformation
import Network.AWS.StorageGateway.UpdateGatewaySoftwareNow
import Network.AWS.StorageGateway.UpdateMaintenanceStartTime
import Network.AWS.StorageGateway.UpdateNFSFileShare
import Network.AWS.StorageGateway.UpdateSMBFileShare
import Network.AWS.StorageGateway.UpdateSMBFileShareVisibility
import Network.AWS.StorageGateway.UpdateSMBSecurityStrategy
import Network.AWS.StorageGateway.UpdateSnapshotSchedule
import Network.AWS.StorageGateway.UpdateVTLDeviceType
import Network.AWS.StorageGateway.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'StorageGateway'.

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
