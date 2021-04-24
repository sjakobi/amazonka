{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Elastic Transcoder Service__
--
-- The AWS Elastic Transcoder Service.
module Network.AWS.ElasticTranscoder
  ( -- * Service Configuration
    elasticTranscoder,

    -- * Errors
    -- $errors

    -- ** IncompatibleVersionException
    _IncompatibleVersionException,

    -- ** InternalServiceException
    _InternalServiceException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ValidationException
    _ValidationException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- ** JobComplete
    jobComplete,

    -- * Operations
    -- $operations

    -- ** ListJobsByPipeline (Paginated)
    module Network.AWS.ElasticTranscoder.ListJobsByPipeline,

    -- ** UpdatePipelineStatus
    module Network.AWS.ElasticTranscoder.UpdatePipelineStatus,

    -- ** ListPresets (Paginated)
    module Network.AWS.ElasticTranscoder.ListPresets,

    -- ** DeletePreset
    module Network.AWS.ElasticTranscoder.DeletePreset,

    -- ** CancelJob
    module Network.AWS.ElasticTranscoder.CancelJob,

    -- ** CreatePreset
    module Network.AWS.ElasticTranscoder.CreatePreset,

    -- ** CreatePipeline
    module Network.AWS.ElasticTranscoder.CreatePipeline,

    -- ** UpdatePipeline
    module Network.AWS.ElasticTranscoder.UpdatePipeline,

    -- ** DeletePipeline
    module Network.AWS.ElasticTranscoder.DeletePipeline,

    -- ** ReadPreset
    module Network.AWS.ElasticTranscoder.ReadPreset,

    -- ** ListJobsByStatus (Paginated)
    module Network.AWS.ElasticTranscoder.ListJobsByStatus,

    -- ** CreateJob
    module Network.AWS.ElasticTranscoder.CreateJob,

    -- ** ListPipelines (Paginated)
    module Network.AWS.ElasticTranscoder.ListPipelines,

    -- ** ReadPipeline
    module Network.AWS.ElasticTranscoder.ReadPipeline,

    -- ** UpdatePipelineNotifications
    module Network.AWS.ElasticTranscoder.UpdatePipelineNotifications,

    -- ** ReadJob
    module Network.AWS.ElasticTranscoder.ReadJob,

    -- * Types

    -- ** Artwork
    Artwork,
    artwork,
    aInputKey,
    aAlbumArtFormat,
    aSizingPolicy,
    aEncryption,
    aPaddingPolicy,
    aMaxHeight,
    aMaxWidth,

    -- ** AudioCodecOptions
    AudioCodecOptions,
    audioCodecOptions,
    acoBitDepth,
    acoSigned,
    acoBitOrder,
    acoProfile,

    -- ** AudioParameters
    AudioParameters,
    audioParameters,
    apCodecOptions,
    apCodec,
    apChannels,
    apSampleRate,
    apAudioPackingMode,
    apBitRate,

    -- ** CaptionFormat
    CaptionFormat,
    captionFormat,
    cfFormat,
    cfEncryption,
    cfPattern,

    -- ** CaptionSource
    CaptionSource,
    captionSource,
    csKey,
    csTimeOffset,
    csEncryption,
    csLabel,
    csLanguage,

    -- ** Captions
    Captions,
    captions,
    cCaptionSources,
    cCaptionFormats,
    cMergePolicy,

    -- ** Clip
    Clip,
    clip,
    cTimeSpan,

    -- ** CreateJobOutput
    CreateJobOutput,
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

    -- ** CreateJobPlaylist
    CreateJobPlaylist,
    createJobPlaylist,
    cjpPlayReadyDrm,
    cjpOutputKeys,
    cjpFormat,
    cjpHlsContentProtection,
    cjpName,

    -- ** DetectedProperties
    DetectedProperties,
    detectedProperties,
    dpHeight,
    dpWidth,
    dpFileSize,
    dpFrameRate,
    dpDurationMillis,

    -- ** Encryption
    Encryption,
    encryption,
    eKey,
    eMode,
    eKeyMD5,
    eInitializationVector,

    -- ** HlsContentProtection
    HlsContentProtection,
    hlsContentProtection,
    hcpKey,
    hcpLicenseAcquisitionURL,
    hcpKeyMD5,
    hcpMethod,
    hcpInitializationVector,
    hcpKeyStoragePolicy,

    -- ** InputCaptions
    InputCaptions,
    inputCaptions,
    icCaptionSources,
    icMergePolicy,

    -- ** Job'
    Job',
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

    -- ** JobAlbumArt
    JobAlbumArt,
    jobAlbumArt,
    jaaArtwork,
    jaaMergePolicy,

    -- ** JobInput
    JobInput,
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

    -- ** JobOutput
    JobOutput,
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

    -- ** JobWatermark
    JobWatermark,
    jobWatermark,
    jwInputKey,
    jwEncryption,
    jwPresetWatermarkId,

    -- ** Notifications
    Notifications,
    notifications,
    nWarning,
    nError,
    nProgressing,
    nCompleted,

    -- ** Permission
    Permission,
    permission,
    pAccess,
    pGranteeType,
    pGrantee,

    -- ** Pipeline
    Pipeline,
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

    -- ** PipelineOutputConfig
    PipelineOutputConfig,
    pipelineOutputConfig,
    pocPermissions,
    pocStorageClass,
    pocBucket,

    -- ** PlayReadyDrm
    PlayReadyDrm,
    playReadyDrm,
    prdKey,
    prdLicenseAcquisitionURL,
    prdKeyMD5,
    prdFormat,
    prdInitializationVector,
    prdKeyId,

    -- ** Playlist
    Playlist,
    playlist,
    plaStatus,
    plaPlayReadyDrm,
    plaOutputKeys,
    plaFormat,
    plaHlsContentProtection,
    plaStatusDetail,
    plaName,

    -- ** Preset
    Preset,
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

    -- ** PresetWatermark
    PresetWatermark,
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

    -- ** Thumbnails
    Thumbnails,
    thumbnails,
    tFormat,
    tSizingPolicy,
    tInterval,
    tAspectRatio,
    tPaddingPolicy,
    tResolution,
    tMaxHeight,
    tMaxWidth,

    -- ** TimeSpan
    TimeSpan,
    timeSpan,
    tsDuration,
    tsStartTime,

    -- ** Timing
    Timing,
    timing,
    tSubmitTimeMillis,
    tStartTimeMillis,
    tFinishTimeMillis,

    -- ** VideoParameters
    VideoParameters,
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

    -- ** Warning
    Warning,
    warning,
    wMessage,
    wCode,
  )
where

import Network.AWS.ElasticTranscoder.CancelJob
import Network.AWS.ElasticTranscoder.CreateJob
import Network.AWS.ElasticTranscoder.CreatePipeline
import Network.AWS.ElasticTranscoder.CreatePreset
import Network.AWS.ElasticTranscoder.DeletePipeline
import Network.AWS.ElasticTranscoder.DeletePreset
import Network.AWS.ElasticTranscoder.ListJobsByPipeline
import Network.AWS.ElasticTranscoder.ListJobsByStatus
import Network.AWS.ElasticTranscoder.ListPipelines
import Network.AWS.ElasticTranscoder.ListPresets
import Network.AWS.ElasticTranscoder.ReadJob
import Network.AWS.ElasticTranscoder.ReadPipeline
import Network.AWS.ElasticTranscoder.ReadPreset
import Network.AWS.ElasticTranscoder.Types
import Network.AWS.ElasticTranscoder.UpdatePipeline
import Network.AWS.ElasticTranscoder.UpdatePipelineNotifications
import Network.AWS.ElasticTranscoder.UpdatePipelineStatus
import Network.AWS.ElasticTranscoder.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ElasticTranscoder'.

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
