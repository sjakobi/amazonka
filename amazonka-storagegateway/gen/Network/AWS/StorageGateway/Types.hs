{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types
  ( -- * Service Configuration
    storageGateway,

    -- * Errors
    _ServiceUnavailableError,
    _InternalServerError,
    _InvalidGatewayRequestException,

    -- * ActiveDirectoryStatus
    ActiveDirectoryStatus (..),

    -- * AvailabilityMonitorTestStatus
    AvailabilityMonitorTestStatus (..),

    -- * CaseSensitivity
    CaseSensitivity (..),

    -- * FileShareType
    FileShareType (..),

    -- * HostEnvironment
    HostEnvironment (..),

    -- * ObjectACL
    ObjectACL (..),

    -- * PoolStatus
    PoolStatus (..),

    -- * RetentionLockType
    RetentionLockType (..),

    -- * SMBSecurityStrategy
    SMBSecurityStrategy (..),

    -- * TapeStorageClass
    TapeStorageClass (..),

    -- * AutomaticTapeCreationPolicyInfo
    AutomaticTapeCreationPolicyInfo (..),
    automaticTapeCreationPolicyInfo,
    atcpiAutomaticTapeCreationRules,
    atcpiGatewayARN,

    -- * AutomaticTapeCreationRule
    AutomaticTapeCreationRule (..),
    automaticTapeCreationRule,
    atcrWorm,
    atcrTapeBarcodePrefix,
    atcrPoolId,
    atcrTapeSizeInBytes,
    atcrMinimumNumTapes,

    -- * BandwidthRateLimitInterval
    BandwidthRateLimitInterval (..),
    bandwidthRateLimitInterval,
    brliAverageUploadRateLimitInBitsPerSec,
    brliAverageDownloadRateLimitInBitsPerSec,
    brliStartHourOfDay,
    brliStartMinuteOfHour,
    brliEndHourOfDay,
    brliEndMinuteOfHour,
    brliDaysOfWeek,

    -- * CacheAttributes
    CacheAttributes (..),
    cacheAttributes,
    caCacheStaleTimeoutInSeconds,

    -- * CachediSCSIVolume
    CachediSCSIVolume (..),
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

    -- * ChapInfo
    ChapInfo (..),
    chapInfo,
    ciInitiatorName,
    ciTargetARN,
    ciSecretToAuthenticateTarget,
    ciSecretToAuthenticateInitiator,

    -- * DeviceiSCSIAttributes
    DeviceiSCSIAttributes (..),
    deviceiSCSIAttributes,
    dscsiaChapEnabled,
    dscsiaTargetARN,
    dscsiaNetworkInterfaceId,
    dscsiaNetworkInterfacePort,

    -- * Disk
    Disk (..),
    disk,
    dDiskAllocationResource,
    dDiskStatus,
    dDiskSizeInBytes,
    dDiskAttributeList,
    dDiskPath,
    dDiskId,
    dDiskAllocationType,
    dDiskNode,

    -- * FileShareInfo
    FileShareInfo (..),
    fileShareInfo,
    fsiFileShareId,
    fsiFileShareType,
    fsiFileShareStatus,
    fsiFileShareARN,
    fsiGatewayARN,

    -- * GatewayInfo
    GatewayInfo (..),
    gatewayInfo,
    giGatewayOperationalState,
    giGatewayName,
    giGatewayType,
    giEC2InstanceRegion,
    giEC2InstanceId,
    giGatewayARN,
    giGatewayId,

    -- * NFSFileShareDefaults
    NFSFileShareDefaults (..),
    nFSFileShareDefaults,
    nfsfsdOwnerId,
    nfsfsdGroupId,
    nfsfsdDirectoryMode,
    nfsfsdFileMode,

    -- * NFSFileShareInfo
    NFSFileShareInfo (..),
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

    -- * NetworkInterface
    NetworkInterface (..),
    networkInterface,
    niMACAddress,
    niIPv6Address,
    niIPv4Address,

    -- * PoolInfo
    PoolInfo (..),
    poolInfo,
    piPoolARN,
    piPoolName,
    piStorageClass,
    piRetentionLockType,
    piPoolStatus,
    piRetentionLockTimeInDays,

    -- * SMBFileShareInfo
    SMBFileShareInfo (..),
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

    -- * StorediSCSIVolume
    StorediSCSIVolume (..),
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

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * Tape
    Tape (..),
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

    -- * TapeArchive
    TapeArchive (..),
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

    -- * TapeInfo
    TapeInfo (..),
    tapeInfo,
    tiPoolEntryDate,
    tiTapeStatus,
    tiPoolId,
    tiTapeARN,
    tiTapeBarcode,
    tiTapeSizeInBytes,
    tiRetentionStartDate,
    tiGatewayARN,

    -- * TapeRecoveryPointInfo
    TapeRecoveryPointInfo (..),
    tapeRecoveryPointInfo,
    trpiTapeStatus,
    trpiTapeARN,
    trpiTapeSizeInBytes,
    trpiTapeRecoveryPointTime,

    -- * VTLDevice
    VTLDevice (..),
    vTLDevice,
    vtldVTLDeviceProductIdentifier,
    vtldVTLDeviceVendor,
    vtldDeviceiSCSIAttributes,
    vtldVTLDeviceType,
    vtldVTLDeviceARN,

    -- * VolumeInfo
    VolumeInfo (..),
    volumeInfo,
    viVolumeARN,
    viVolumeId,
    viVolumeSizeInBytes,
    viVolumeType,
    viGatewayARN,
    viVolumeAttachmentStatus,
    viGatewayId,

    -- * VolumeRecoveryPointInfo
    VolumeRecoveryPointInfo (..),
    volumeRecoveryPointInfo,
    vrpiVolumeARN,
    vrpiVolumeSizeInBytes,
    vrpiVolumeUsageInBytes,
    vrpiVolumeRecoveryPointTime,

    -- * VolumeiSCSIAttributes
    VolumeiSCSIAttributes (..),
    volumeiSCSIAttributes,
    vscsiaChapEnabled,
    vscsiaLunNumber,
    vscsiaTargetARN,
    vscsiaNetworkInterfaceId,
    vscsiaNetworkInterfacePort,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.StorageGateway.Types.ActiveDirectoryStatus
import Network.AWS.StorageGateway.Types.AutomaticTapeCreationPolicyInfo
import Network.AWS.StorageGateway.Types.AutomaticTapeCreationRule
import Network.AWS.StorageGateway.Types.AvailabilityMonitorTestStatus
import Network.AWS.StorageGateway.Types.BandwidthRateLimitInterval
import Network.AWS.StorageGateway.Types.CacheAttributes
import Network.AWS.StorageGateway.Types.CachediSCSIVolume
import Network.AWS.StorageGateway.Types.CaseSensitivity
import Network.AWS.StorageGateway.Types.ChapInfo
import Network.AWS.StorageGateway.Types.DeviceiSCSIAttributes
import Network.AWS.StorageGateway.Types.Disk
import Network.AWS.StorageGateway.Types.FileShareInfo
import Network.AWS.StorageGateway.Types.FileShareType
import Network.AWS.StorageGateway.Types.GatewayInfo
import Network.AWS.StorageGateway.Types.HostEnvironment
import Network.AWS.StorageGateway.Types.NFSFileShareDefaults
import Network.AWS.StorageGateway.Types.NFSFileShareInfo
import Network.AWS.StorageGateway.Types.NetworkInterface
import Network.AWS.StorageGateway.Types.ObjectACL
import Network.AWS.StorageGateway.Types.PoolInfo
import Network.AWS.StorageGateway.Types.PoolStatus
import Network.AWS.StorageGateway.Types.RetentionLockType
import Network.AWS.StorageGateway.Types.SMBFileShareInfo
import Network.AWS.StorageGateway.Types.SMBSecurityStrategy
import Network.AWS.StorageGateway.Types.StorediSCSIVolume
import Network.AWS.StorageGateway.Types.Tag
import Network.AWS.StorageGateway.Types.Tape
import Network.AWS.StorageGateway.Types.TapeArchive
import Network.AWS.StorageGateway.Types.TapeInfo
import Network.AWS.StorageGateway.Types.TapeRecoveryPointInfo
import Network.AWS.StorageGateway.Types.TapeStorageClass
import Network.AWS.StorageGateway.Types.VTLDevice
import Network.AWS.StorageGateway.Types.VolumeInfo
import Network.AWS.StorageGateway.Types.VolumeRecoveryPointInfo
import Network.AWS.StorageGateway.Types.VolumeiSCSIAttributes

-- | API version @2013-06-30@ of the Amazon Storage Gateway SDK configuration.
storageGateway :: Service
storageGateway =
  Service
    { _svcAbbrev = "StorageGateway",
      _svcSigner = v4,
      _svcPrefix = "storagegateway",
      _svcVersion = "2013-06-30",
      _svcEndpoint = defaultEndpoint storageGateway,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "StorageGateway",
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

-- | An internal server error has occurred because the service is unavailable. For more information, see the error and message fields.
_ServiceUnavailableError :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceUnavailableError =
  _MatchServiceError
    storageGateway
    "ServiceUnavailableError"

-- | An internal server error has occurred during the request. For more information, see the error and message fields.
_InternalServerError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerError =
  _MatchServiceError
    storageGateway
    "InternalServerError"

-- | An exception occurred because an invalid gateway request was issued to the service. For more information, see the error and message fields.
_InvalidGatewayRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidGatewayRequestException =
  _MatchServiceError
    storageGateway
    "InvalidGatewayRequestException"
