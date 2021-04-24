{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types
  ( -- * Service Configuration
    mediaPackage,

    -- * Errors
    _NotFoundException,
    _ServiceUnavailableException,
    _InternalServerErrorException,
    _ForbiddenException,
    _UnprocessableEntityException,
    _TooManyRequestsException,

    -- * AdMarkers
    AdMarkers (..),

    -- * AdTriggersElement
    AdTriggersElement (..),

    -- * AdsOnDeliveryRestrictions
    AdsOnDeliveryRestrictions (..),

    -- * EncryptionMethod
    EncryptionMethod (..),

    -- * ManifestLayout
    ManifestLayout (..),

    -- * Origination
    Origination (..),

    -- * PeriodTriggersElement
    PeriodTriggersElement (..),

    -- * PlaylistType
    PlaylistType (..),

    -- * Profile
    Profile (..),

    -- * SegmentTemplateFormat
    SegmentTemplateFormat (..),

    -- * Status
    Status (..),

    -- * StreamOrder
    StreamOrder (..),

    -- * UtcTiming
    UtcTiming (..),

    -- * Authorization
    Authorization (..),
    authorization,
    aSecretsRoleARN,
    aCdnIdentifierSecret,

    -- * Channel
    Channel (..),
    channel,
    cEgressAccessLogs,
    cHlsIngest,
    cARN,
    cId,
    cIngressAccessLogs,
    cTags,
    cDescription,

    -- * CmafEncryption
    CmafEncryption (..),
    cmafEncryption,
    ceKeyRotationIntervalSeconds,
    ceSpekeKeyProvider,

    -- * CmafPackage
    CmafPackage (..),
    cmafPackage,
    cpStreamSelection,
    cpHlsManifests,
    cpSegmentPrefix,
    cpEncryption,
    cpSegmentDurationSeconds,

    -- * CmafPackageCreateOrUpdateParameters
    CmafPackageCreateOrUpdateParameters (..),
    cmafPackageCreateOrUpdateParameters,
    cpcoupStreamSelection,
    cpcoupHlsManifests,
    cpcoupSegmentPrefix,
    cpcoupEncryption,
    cpcoupSegmentDurationSeconds,

    -- * DashEncryption
    DashEncryption (..),
    dashEncryption,
    deKeyRotationIntervalSeconds,
    deSpekeKeyProvider,

    -- * DashPackage
    DashPackage (..),
    dashPackage,
    dpMinBufferTimeSeconds,
    dpStreamSelection,
    dpPeriodTriggers,
    dpAdTriggers,
    dpManifestWindowSeconds,
    dpManifestLayout,
    dpMinUpdatePeriodSeconds,
    dpEncryption,
    dpAdsOnDeliveryRestrictions,
    dpUtcTimingURI,
    dpSegmentDurationSeconds,
    dpProfile,
    dpSegmentTemplateFormat,
    dpSuggestedPresentationDelaySeconds,
    dpUtcTiming,

    -- * EgressAccessLogs
    EgressAccessLogs (..),
    egressAccessLogs,
    ealLogGroupName,

    -- * HarvestJob
    HarvestJob (..),
    harvestJob,
    hjStatus,
    hjS3Destination,
    hjChannelId,
    hjStartTime,
    hjARN,
    hjId,
    hjCreatedAt,
    hjOriginEndpointId,
    hjEndTime,

    -- * HlsEncryption
    HlsEncryption (..),
    hlsEncryption,
    heRepeatExtXKey,
    heEncryptionMethod,
    heConstantInitializationVector,
    heKeyRotationIntervalSeconds,
    heSpekeKeyProvider,

    -- * HlsIngest
    HlsIngest (..),
    hlsIngest,
    hiIngestEndpoints,

    -- * HlsManifest
    HlsManifest (..),
    hlsManifest,
    hmAdMarkers,
    hmProgramDateTimeIntervalSeconds,
    hmPlaylistWindowSeconds,
    hmIncludeIframeOnlyStream,
    hmManifestName,
    hmPlaylistType,
    hmURL,
    hmId,

    -- * HlsManifestCreateOrUpdateParameters
    HlsManifestCreateOrUpdateParameters (..),
    hlsManifestCreateOrUpdateParameters,
    hmcoupAdMarkers,
    hmcoupProgramDateTimeIntervalSeconds,
    hmcoupPlaylistWindowSeconds,
    hmcoupAdTriggers,
    hmcoupIncludeIframeOnlyStream,
    hmcoupManifestName,
    hmcoupAdsOnDeliveryRestrictions,
    hmcoupPlaylistType,
    hmcoupId,

    -- * HlsPackage
    HlsPackage (..),
    hlsPackage,
    hpAdMarkers,
    hpStreamSelection,
    hpProgramDateTimeIntervalSeconds,
    hpPlaylistWindowSeconds,
    hpAdTriggers,
    hpIncludeIframeOnlyStream,
    hpUseAudioRenditionGroup,
    hpEncryption,
    hpAdsOnDeliveryRestrictions,
    hpSegmentDurationSeconds,
    hpPlaylistType,

    -- * IngestEndpoint
    IngestEndpoint (..),
    ingestEndpoint,
    ieId,
    iePassword,
    ieUsername,
    ieURL,

    -- * IngressAccessLogs
    IngressAccessLogs (..),
    ingressAccessLogs,
    ialLogGroupName,

    -- * MssEncryption
    MssEncryption (..),
    mssEncryption,
    meSpekeKeyProvider,

    -- * MssPackage
    MssPackage (..),
    mssPackage,
    mpStreamSelection,
    mpManifestWindowSeconds,
    mpEncryption,
    mpSegmentDurationSeconds,

    -- * OriginEndpoint
    OriginEndpoint (..),
    originEndpoint,
    oeDashPackage,
    oeStartoverWindowSeconds,
    oeOrigination,
    oeChannelId,
    oeCmafPackage,
    oeManifestName,
    oeARN,
    oeId,
    oeWhitelist,
    oeMssPackage,
    oeTags,
    oeDescription,
    oeTimeDelaySeconds,
    oeAuthorization,
    oeURL,
    oeHlsPackage,

    -- * S3Destination
    S3Destination (..),
    s3Destination,
    sdManifestKey,
    sdBucketName,
    sdRoleARN,

    -- * SpekeKeyProvider
    SpekeKeyProvider (..),
    spekeKeyProvider,
    skpCertificateARN,
    skpResourceId,
    skpSystemIds,
    skpURL,
    skpRoleARN,

    -- * StreamSelection
    StreamSelection (..),
    streamSelection,
    ssMinVideoBitsPerSecond,
    ssMaxVideoBitsPerSecond,
    ssStreamOrder,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types.AdMarkers
import Network.AWS.MediaPackage.Types.AdTriggersElement
import Network.AWS.MediaPackage.Types.AdsOnDeliveryRestrictions
import Network.AWS.MediaPackage.Types.Authorization
import Network.AWS.MediaPackage.Types.Channel
import Network.AWS.MediaPackage.Types.CmafEncryption
import Network.AWS.MediaPackage.Types.CmafPackage
import Network.AWS.MediaPackage.Types.CmafPackageCreateOrUpdateParameters
import Network.AWS.MediaPackage.Types.DashEncryption
import Network.AWS.MediaPackage.Types.DashPackage
import Network.AWS.MediaPackage.Types.EgressAccessLogs
import Network.AWS.MediaPackage.Types.EncryptionMethod
import Network.AWS.MediaPackage.Types.HarvestJob
import Network.AWS.MediaPackage.Types.HlsEncryption
import Network.AWS.MediaPackage.Types.HlsIngest
import Network.AWS.MediaPackage.Types.HlsManifest
import Network.AWS.MediaPackage.Types.HlsManifestCreateOrUpdateParameters
import Network.AWS.MediaPackage.Types.HlsPackage
import Network.AWS.MediaPackage.Types.IngestEndpoint
import Network.AWS.MediaPackage.Types.IngressAccessLogs
import Network.AWS.MediaPackage.Types.ManifestLayout
import Network.AWS.MediaPackage.Types.MssEncryption
import Network.AWS.MediaPackage.Types.MssPackage
import Network.AWS.MediaPackage.Types.OriginEndpoint
import Network.AWS.MediaPackage.Types.Origination
import Network.AWS.MediaPackage.Types.PeriodTriggersElement
import Network.AWS.MediaPackage.Types.PlaylistType
import Network.AWS.MediaPackage.Types.Profile
import Network.AWS.MediaPackage.Types.S3Destination
import Network.AWS.MediaPackage.Types.SegmentTemplateFormat
import Network.AWS.MediaPackage.Types.SpekeKeyProvider
import Network.AWS.MediaPackage.Types.Status
import Network.AWS.MediaPackage.Types.StreamOrder
import Network.AWS.MediaPackage.Types.StreamSelection
import Network.AWS.MediaPackage.Types.UtcTiming
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-10-12@ of the Amazon Elemental MediaPackage SDK configuration.
mediaPackage :: Service
mediaPackage =
  Service
    { _svcAbbrev = "MediaPackage",
      _svcSigner = v4,
      _svcPrefix = "mediapackage",
      _svcVersion = "2017-10-12",
      _svcEndpoint = defaultEndpoint mediaPackage,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "MediaPackage",
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

-- | The requested resource does not exist.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError mediaPackage "NotFoundException"
    . hasStatus 404

-- | An unexpected error occurred.
_ServiceUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceUnavailableException =
  _MatchServiceError
    mediaPackage
    "ServiceUnavailableException"
    . hasStatus 503

-- | An unexpected error occurred.
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException =
  _MatchServiceError
    mediaPackage
    "InternalServerErrorException"
    . hasStatus 500

-- | The client is not authorized to access the requested resource.
_ForbiddenException :: AsError a => Getting (First ServiceError) a ServiceError
_ForbiddenException =
  _MatchServiceError
    mediaPackage
    "ForbiddenException"
    . hasStatus 403

-- | The parameters sent in the request are not valid.
_UnprocessableEntityException :: AsError a => Getting (First ServiceError) a ServiceError
_UnprocessableEntityException =
  _MatchServiceError
    mediaPackage
    "UnprocessableEntityException"
    . hasStatus 422

-- | The client has exceeded their resource or throttling limits.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException =
  _MatchServiceError
    mediaPackage
    "TooManyRequestsException"
    . hasStatus 429
