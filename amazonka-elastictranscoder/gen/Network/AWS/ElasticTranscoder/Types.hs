{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types
  ( -- * Service Configuration
    elasticTranscoder,

    -- * Errors
    _IncompatibleVersionException,
    _InternalServiceException,
    _AccessDeniedException,
    _ValidationException,
    _ResourceInUseException,
    _LimitExceededException,
    _ResourceNotFoundException,

    -- * Artwork
    Artwork (..),
    artwork,
    aInputKey,
    aAlbumArtFormat,
    aSizingPolicy,
    aEncryption,
    aPaddingPolicy,
    aMaxHeight,
    aMaxWidth,

    -- * AudioCodecOptions
    AudioCodecOptions (..),
    audioCodecOptions,
    acoBitDepth,
    acoSigned,
    acoBitOrder,
    acoProfile,

    -- * AudioParameters
    AudioParameters (..),
    audioParameters,
    apCodecOptions,
    apCodec,
    apChannels,
    apSampleRate,
    apAudioPackingMode,
    apBitRate,

    -- * CaptionFormat
    CaptionFormat (..),
    captionFormat,
    cfFormat,
    cfEncryption,
    cfPattern,

    -- * CaptionSource
    CaptionSource (..),
    captionSource,
    csKey,
    csTimeOffset,
    csEncryption,
    csLabel,
    csLanguage,

    -- * Captions
    Captions (..),
    captions,
    cCaptionSources,
    cCaptionFormats,
    cMergePolicy,

    -- * Clip
    Clip (..),
    clip,
    cTimeSpan,

    -- * CreateJobOutput
    CreateJobOutput (..),
    createJobOutput,
    cjoKey,
    cjoThumbnailPattern,
    cjoThumbnailEncryption,
    cjoWatermarks,
    cjoPresetId,
    cjoAlbumArt,
    cjoEncryption,
    cjoRotate,
    cjoComposition,
    cjoSegmentDuration,
    cjoCaptions,

    -- * CreateJobPlaylist
    CreateJobPlaylist (..),
    createJobPlaylist,
    cjpPlayReadyDrm,
    cjpOutputKeys,
    cjpFormat,
    cjpHlsContentProtection,
    cjpName,

    -- * DetectedProperties
    DetectedProperties (..),
    detectedProperties,
    dpHeight,
    dpWidth,
    dpFileSize,
    dpFrameRate,
    dpDurationMillis,

    -- * Encryption
    Encryption (..),
    encryption,
    eKey,
    eMode,
    eKeyMD5,
    eInitializationVector,

    -- * HlsContentProtection
    HlsContentProtection (..),
    hlsContentProtection,
    hcpKey,
    hcpLicenseAcquisitionURL,
    hcpKeyMD5,
    hcpMethod,
    hcpInitializationVector,
    hcpKeyStoragePolicy,

    -- * InputCaptions
    InputCaptions (..),
    inputCaptions,
    icCaptionSources,
    icMergePolicy,

    -- * Job'
    Job' (..),
    job',
    jPipelineId,
    jStatus,
    jOutputs,
    jInput,
    jOutputKeyPrefix,
    jARN,
    jId,
    jOutput,
    jUserMetadata,
    jTiming,
    jInputs,
    jPlaylists,

    -- * JobAlbumArt
    JobAlbumArt (..),
    jobAlbumArt,
    jaaArtwork,
    jaaMergePolicy,

    -- * JobInput
    JobInput (..),
    jobInput,
    jiContainer,
    jiKey,
    jiTimeSpan,
    jiInputCaptions,
    jiEncryption,
    jiDetectedProperties,
    jiFrameRate,
    jiAspectRatio,
    jiResolution,
    jiInterlaced,

    -- * JobOutput
    JobOutput (..),
    jobOutput,
    joHeight,
    joKey,
    joStatus,
    joThumbnailPattern,
    joDuration,
    joWidth,
    joThumbnailEncryption,
    joWatermarks,
    joFileSize,
    joPresetId,
    joAlbumArt,
    joId,
    joStatusDetail,
    joEncryption,
    joFrameRate,
    joAppliedColorSpaceConversion,
    joRotate,
    joDurationMillis,
    joComposition,
    joSegmentDuration,
    joCaptions,

    -- * JobWatermark
    JobWatermark (..),
    jobWatermark,
    jwInputKey,
    jwEncryption,
    jwPresetWatermarkId,

    -- * Notifications
    Notifications (..),
    notifications,
    nWarning,
    nError,
    nProgressing,
    nCompleted,

    -- * Permission
    Permission (..),
    permission,
    pAccess,
    pGranteeType,
    pGrantee,

    -- * Pipeline
    Pipeline (..),
    pipeline,
    pipStatus,
    pipOutputBucket,
    pipARN,
    pipId,
    pipName,
    pipRole,
    pipNotifications,
    pipThumbnailConfig,
    pipContentConfig,
    pipInputBucket,
    pipAWSKMSKeyARN,

    -- * PipelineOutputConfig
    PipelineOutputConfig (..),
    pipelineOutputConfig,
    pocPermissions,
    pocStorageClass,
    pocBucket,

    -- * PlayReadyDrm
    PlayReadyDrm (..),
    playReadyDrm,
    prdKey,
    prdLicenseAcquisitionURL,
    prdKeyMD5,
    prdFormat,
    prdInitializationVector,
    prdKeyId,

    -- * Playlist
    Playlist (..),
    playlist,
    plaStatus,
    plaPlayReadyDrm,
    plaOutputKeys,
    plaFormat,
    plaHlsContentProtection,
    plaStatusDetail,
    plaName,

    -- * Preset
    Preset (..),
    preset,
    pContainer,
    pARN,
    pId,
    pThumbnails,
    pName,
    pVideo,
    pAudio,
    pDescription,
    pType,

    -- * PresetWatermark
    PresetWatermark (..),
    presetWatermark,
    pwHorizontalAlign,
    pwHorizontalOffset,
    pwSizingPolicy,
    pwId,
    pwVerticalOffset,
    pwVerticalAlign,
    pwOpacity,
    pwTarget,
    pwMaxHeight,
    pwMaxWidth,

    -- * Thumbnails
    Thumbnails (..),
    thumbnails,
    tFormat,
    tSizingPolicy,
    tInterval,
    tAspectRatio,
    tPaddingPolicy,
    tResolution,
    tMaxHeight,
    tMaxWidth,

    -- * TimeSpan
    TimeSpan (..),
    timeSpan,
    tsDuration,
    tsStartTime,

    -- * Timing
    Timing (..),
    timing,
    tSubmitTimeMillis,
    tStartTimeMillis,
    tFinishTimeMillis,

    -- * VideoParameters
    VideoParameters (..),
    videoParameters,
    vpKeyframesMaxDist,
    vpCodecOptions,
    vpFixedGOP,
    vpCodec,
    vpWatermarks,
    vpMaxFrameRate,
    vpDisplayAspectRatio,
    vpSizingPolicy,
    vpFrameRate,
    vpAspectRatio,
    vpPaddingPolicy,
    vpResolution,
    vpMaxHeight,
    vpBitRate,
    vpMaxWidth,

    -- * Warning
    Warning (..),
    warning,
    wMessage,
    wCode,
  )
where

import Network.AWS.ElasticTranscoder.Types.Artwork
import Network.AWS.ElasticTranscoder.Types.AudioCodecOptions
import Network.AWS.ElasticTranscoder.Types.AudioParameters
import Network.AWS.ElasticTranscoder.Types.CaptionFormat
import Network.AWS.ElasticTranscoder.Types.CaptionSource
import Network.AWS.ElasticTranscoder.Types.Captions
import Network.AWS.ElasticTranscoder.Types.Clip
import Network.AWS.ElasticTranscoder.Types.CreateJobOutput
import Network.AWS.ElasticTranscoder.Types.CreateJobPlaylist
import Network.AWS.ElasticTranscoder.Types.DetectedProperties
import Network.AWS.ElasticTranscoder.Types.Encryption
import Network.AWS.ElasticTranscoder.Types.HlsContentProtection
import Network.AWS.ElasticTranscoder.Types.InputCaptions
import Network.AWS.ElasticTranscoder.Types.Job'
import Network.AWS.ElasticTranscoder.Types.JobAlbumArt
import Network.AWS.ElasticTranscoder.Types.JobInput
import Network.AWS.ElasticTranscoder.Types.JobOutput
import Network.AWS.ElasticTranscoder.Types.JobWatermark
import Network.AWS.ElasticTranscoder.Types.Notifications
import Network.AWS.ElasticTranscoder.Types.Permission
import Network.AWS.ElasticTranscoder.Types.Pipeline
import Network.AWS.ElasticTranscoder.Types.PipelineOutputConfig
import Network.AWS.ElasticTranscoder.Types.PlayReadyDrm
import Network.AWS.ElasticTranscoder.Types.Playlist
import Network.AWS.ElasticTranscoder.Types.Preset
import Network.AWS.ElasticTranscoder.Types.PresetWatermark
import Network.AWS.ElasticTranscoder.Types.Thumbnails
import Network.AWS.ElasticTranscoder.Types.TimeSpan
import Network.AWS.ElasticTranscoder.Types.Timing
import Network.AWS.ElasticTranscoder.Types.VideoParameters
import Network.AWS.ElasticTranscoder.Types.Warning
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2012-09-25@ of the Amazon Elastic Transcoder SDK configuration.
elasticTranscoder :: Service
elasticTranscoder =
  Service
    { _svcAbbrev = "ElasticTranscoder",
      _svcSigner = v4,
      _svcPrefix = "elastictranscoder",
      _svcVersion = "2012-09-25",
      _svcEndpoint = defaultEndpoint elasticTranscoder,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "ElasticTranscoder",
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

-- | Prism for IncompatibleVersionException' errors.
_IncompatibleVersionException :: AsError a => Getting (First ServiceError) a ServiceError
_IncompatibleVersionException =
  _MatchServiceError
    elasticTranscoder
    "IncompatibleVersionException"
    . hasStatus 400

-- | Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
_InternalServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceException =
  _MatchServiceError
    elasticTranscoder
    "InternalServiceException"

-- | General authentication failure. The request was not signed correctly.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError
    elasticTranscoder
    "AccessDeniedException"
    . hasStatus 403

-- | One or more required parameter values were not provided in the request.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError
    elasticTranscoder
    "ValidationException"
    . hasStatus 400

-- | The resource you are attempting to change is in use. For example, you are attempting to delete a pipeline that is currently in use.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError
    elasticTranscoder
    "ResourceInUseException"
    . hasStatus 409

-- | Too many operations for a given AWS account. For example, the number of pipelines exceeds the maximum allowed.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    elasticTranscoder
    "LimitExceededException"
    . hasStatus 429

-- | The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    elasticTranscoder
    "ResourceNotFoundException"
    . hasStatus 404
