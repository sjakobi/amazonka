{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    newArtwork,

    -- * AudioCodecOptions
    AudioCodecOptions (..),
    newAudioCodecOptions,

    -- * AudioParameters
    AudioParameters (..),
    newAudioParameters,

    -- * CaptionFormat
    CaptionFormat (..),
    newCaptionFormat,

    -- * CaptionSource
    CaptionSource (..),
    newCaptionSource,

    -- * Captions
    Captions (..),
    newCaptions,

    -- * Clip
    Clip (..),
    newClip,

    -- * CreateJobOutput
    CreateJobOutput (..),
    newCreateJobOutput,

    -- * CreateJobPlaylist
    CreateJobPlaylist (..),
    newCreateJobPlaylist,

    -- * DetectedProperties
    DetectedProperties (..),
    newDetectedProperties,

    -- * Encryption
    Encryption (..),
    newEncryption,

    -- * HlsContentProtection
    HlsContentProtection (..),
    newHlsContentProtection,

    -- * InputCaptions
    InputCaptions (..),
    newInputCaptions,

    -- * Job'
    Job' (..),
    newJob',

    -- * JobAlbumArt
    JobAlbumArt (..),
    newJobAlbumArt,

    -- * JobInput
    JobInput (..),
    newJobInput,

    -- * JobOutput
    JobOutput (..),
    newJobOutput,

    -- * JobWatermark
    JobWatermark (..),
    newJobWatermark,

    -- * Notifications
    Notifications (..),
    newNotifications,

    -- * Permission
    Permission (..),
    newPermission,

    -- * Pipeline
    Pipeline (..),
    newPipeline,

    -- * PipelineOutputConfig
    PipelineOutputConfig (..),
    newPipelineOutputConfig,

    -- * PlayReadyDrm
    PlayReadyDrm (..),
    newPlayReadyDrm,

    -- * Playlist
    Playlist (..),
    newPlaylist,

    -- * Preset
    Preset (..),
    newPreset,

    -- * PresetWatermark
    PresetWatermark (..),
    newPresetWatermark,

    -- * Thumbnails
    Thumbnails (..),
    newThumbnails,

    -- * TimeSpan
    TimeSpan (..),
    newTimeSpan,

    -- * Timing
    Timing (..),
    newTiming,

    -- * VideoParameters
    VideoParameters (..),
    newVideoParameters,

    -- * Warning
    Warning (..),
    newWarning,
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2012-09-25@ of the Amazon Elastic Transcoder SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "ElasticTranscoder",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "elastictranscoder",
      Prelude._svcVersion = "2012-09-25",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "ElasticTranscoder",
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

-- | Prism for IncompatibleVersionException' errors.
_IncompatibleVersionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IncompatibleVersionException =
  Prelude._MatchServiceError
    defaultService
    "IncompatibleVersionException"
    Prelude.. Prelude.hasStatus 400

-- | Elastic Transcoder encountered an unexpected exception while trying to
-- fulfill the request.
_InternalServiceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServiceException =
  Prelude._MatchServiceError
    defaultService
    "InternalServiceException"

-- | General authentication failure. The request was not signed correctly.
_AccessDeniedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AccessDeniedException =
  Prelude._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Prelude.hasStatus 403

-- | One or more required parameter values were not provided in the request.
_ValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ValidationException =
  Prelude._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Prelude.hasStatus 400

-- | The resource you are attempting to change is in use. For example, you
-- are attempting to delete a pipeline that is currently in use.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"
    Prelude.. Prelude.hasStatus 409

-- | Too many operations for a given AWS account. For example, the number of
-- pipelines exceeds the maximum allowed.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Prelude.hasStatus 429

-- | The requested resource does not exist or is not available. For example,
-- the pipeline to which you\'re trying to add a job doesn\'t exist or is
-- still being created.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Prelude.hasStatus 404
