{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    newAutomaticTapeCreationPolicyInfo,

    -- * AutomaticTapeCreationRule
    AutomaticTapeCreationRule (..),
    newAutomaticTapeCreationRule,

    -- * BandwidthRateLimitInterval
    BandwidthRateLimitInterval (..),
    newBandwidthRateLimitInterval,

    -- * CacheAttributes
    CacheAttributes (..),
    newCacheAttributes,

    -- * CachediSCSIVolume
    CachediSCSIVolume (..),
    newCachediSCSIVolume,

    -- * ChapInfo
    ChapInfo (..),
    newChapInfo,

    -- * DeviceiSCSIAttributes
    DeviceiSCSIAttributes (..),
    newDeviceiSCSIAttributes,

    -- * Disk
    Disk (..),
    newDisk,

    -- * FileShareInfo
    FileShareInfo (..),
    newFileShareInfo,

    -- * GatewayInfo
    GatewayInfo (..),
    newGatewayInfo,

    -- * NFSFileShareDefaults
    NFSFileShareDefaults (..),
    newNFSFileShareDefaults,

    -- * NFSFileShareInfo
    NFSFileShareInfo (..),
    newNFSFileShareInfo,

    -- * NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,

    -- * PoolInfo
    PoolInfo (..),
    newPoolInfo,

    -- * SMBFileShareInfo
    SMBFileShareInfo (..),
    newSMBFileShareInfo,

    -- * StorediSCSIVolume
    StorediSCSIVolume (..),
    newStorediSCSIVolume,

    -- * Tag
    Tag (..),
    newTag,

    -- * Tape
    Tape (..),
    newTape,

    -- * TapeArchive
    TapeArchive (..),
    newTapeArchive,

    -- * TapeInfo
    TapeInfo (..),
    newTapeInfo,

    -- * TapeRecoveryPointInfo
    TapeRecoveryPointInfo (..),
    newTapeRecoveryPointInfo,

    -- * VTLDevice
    VTLDevice (..),
    newVTLDevice,

    -- * VolumeInfo
    VolumeInfo (..),
    newVolumeInfo,

    -- * VolumeRecoveryPointInfo
    VolumeRecoveryPointInfo (..),
    newVolumeRecoveryPointInfo,

    -- * VolumeiSCSIAttributes
    VolumeiSCSIAttributes (..),
    newVolumeiSCSIAttributes,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign
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
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "StorageGateway",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "storagegateway",
      Prelude._svcVersion = "2013-06-30",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "StorageGateway",
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

-- | An internal server error has occurred because the service is
-- unavailable. For more information, see the error and message fields.
_ServiceUnavailableError :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceUnavailableError =
  Prelude._MatchServiceError
    defaultService
    "ServiceUnavailableError"

-- | An internal server error has occurred during the request. For more
-- information, see the error and message fields.
_InternalServerError :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServerError =
  Prelude._MatchServiceError
    defaultService
    "InternalServerError"

-- | An exception occurred because an invalid gateway request was issued to
-- the service. For more information, see the error and message fields.
_InvalidGatewayRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidGatewayRequestException =
  Prelude._MatchServiceError
    defaultService
    "InvalidGatewayRequestException"
