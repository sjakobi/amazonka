{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types
  ( -- * Service Configuration
    kinesisVideoArchivedMedia,

    -- * Errors
    _InvalidMediaFrameException,
    _ClientLimitExceededException,
    _InvalidCodecPrivateDataException,
    _NoDataRetentionException,
    _UnsupportedStreamMediaTypeException,
    _ResourceNotFoundException,
    _MissingCodecPrivateDataException,
    _NotAuthorizedException,
    _InvalidArgumentException,

    -- * ClipFragmentSelectorType
    ClipFragmentSelectorType (..),

    -- * ContainerFormat
    ContainerFormat (..),

    -- * DASHDisplayFragmentNumber
    DASHDisplayFragmentNumber (..),

    -- * DASHDisplayFragmentTimestamp
    DASHDisplayFragmentTimestamp (..),

    -- * DASHFragmentSelectorType
    DASHFragmentSelectorType (..),

    -- * DASHPlaybackMode
    DASHPlaybackMode (..),

    -- * FragmentSelectorType
    FragmentSelectorType (..),

    -- * HLSDiscontinuityMode
    HLSDiscontinuityMode (..),

    -- * HLSDisplayFragmentTimestamp
    HLSDisplayFragmentTimestamp (..),

    -- * HLSFragmentSelectorType
    HLSFragmentSelectorType (..),

    -- * HLSPlaybackMode
    HLSPlaybackMode (..),

    -- * ClipFragmentSelector
    ClipFragmentSelector (..),
    clipFragmentSelector,
    cfsFragmentSelectorType,
    cfsTimestampRange,

    -- * ClipTimestampRange
    ClipTimestampRange (..),
    clipTimestampRange,
    ctrStartTimestamp,
    ctrEndTimestamp,

    -- * DASHFragmentSelector
    DASHFragmentSelector (..),
    dASHFragmentSelector,
    dashfsFragmentSelectorType,
    dashfsTimestampRange,

    -- * DASHTimestampRange
    DASHTimestampRange (..),
    dASHTimestampRange,
    dashtrEndTimestamp,
    dashtrStartTimestamp,

    -- * Fragment
    Fragment (..),
    fragment,
    fProducerTimestamp,
    fFragmentNumber,
    fFragmentSizeInBytes,
    fServerTimestamp,
    fFragmentLengthInMilliseconds,

    -- * FragmentSelector
    FragmentSelector (..),
    fragmentSelector,
    fsFragmentSelectorType,
    fsTimestampRange,

    -- * HLSFragmentSelector
    HLSFragmentSelector (..),
    hLSFragmentSelector,
    hlsfsFragmentSelectorType,
    hlsfsTimestampRange,

    -- * HLSTimestampRange
    HLSTimestampRange (..),
    hLSTimestampRange,
    hlstrEndTimestamp,
    hlstrStartTimestamp,

    -- * TimestampRange
    TimestampRange (..),
    timestampRange,
    trStartTimestamp,
    trEndTimestamp,
  )
where

import Network.AWS.KinesisVideoArchivedMedia.Types.ClipFragmentSelector
import Network.AWS.KinesisVideoArchivedMedia.Types.ClipFragmentSelectorType
import Network.AWS.KinesisVideoArchivedMedia.Types.ClipTimestampRange
import Network.AWS.KinesisVideoArchivedMedia.Types.ContainerFormat
import Network.AWS.KinesisVideoArchivedMedia.Types.DASHDisplayFragmentNumber
import Network.AWS.KinesisVideoArchivedMedia.Types.DASHDisplayFragmentTimestamp
import Network.AWS.KinesisVideoArchivedMedia.Types.DASHFragmentSelector
import Network.AWS.KinesisVideoArchivedMedia.Types.DASHFragmentSelectorType
import Network.AWS.KinesisVideoArchivedMedia.Types.DASHPlaybackMode
import Network.AWS.KinesisVideoArchivedMedia.Types.DASHTimestampRange
import Network.AWS.KinesisVideoArchivedMedia.Types.Fragment
import Network.AWS.KinesisVideoArchivedMedia.Types.FragmentSelector
import Network.AWS.KinesisVideoArchivedMedia.Types.FragmentSelectorType
import Network.AWS.KinesisVideoArchivedMedia.Types.HLSDiscontinuityMode
import Network.AWS.KinesisVideoArchivedMedia.Types.HLSDisplayFragmentTimestamp
import Network.AWS.KinesisVideoArchivedMedia.Types.HLSFragmentSelector
import Network.AWS.KinesisVideoArchivedMedia.Types.HLSFragmentSelectorType
import Network.AWS.KinesisVideoArchivedMedia.Types.HLSPlaybackMode
import Network.AWS.KinesisVideoArchivedMedia.Types.HLSTimestampRange
import Network.AWS.KinesisVideoArchivedMedia.Types.TimestampRange
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-09-30@ of the Amazon Kinesis Video Streams Archived Media SDK configuration.
kinesisVideoArchivedMedia :: Service
kinesisVideoArchivedMedia =
  Service
    { _svcAbbrev = "KinesisVideoArchivedMedia",
      _svcSigner = v4,
      _svcPrefix = "kinesisvideo",
      _svcVersion = "2017-09-30",
      _svcEndpoint =
        defaultEndpoint kinesisVideoArchivedMedia,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError =
        parseJSONError "KinesisVideoArchivedMedia",
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

-- | One or more frames in the requested clip could not be parsed based on the specified codec.
_InvalidMediaFrameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidMediaFrameException =
  _MatchServiceError
    kinesisVideoArchivedMedia
    "InvalidMediaFrameException"
    . hasStatus 400

-- | Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client calls. Try making the call later.
_ClientLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ClientLimitExceededException =
  _MatchServiceError
    kinesisVideoArchivedMedia
    "ClientLimitExceededException"
    . hasStatus 400

-- | The codec private data in at least one of the tracks of the video stream is not valid for this operation.
_InvalidCodecPrivateDataException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCodecPrivateDataException =
  _MatchServiceError
    kinesisVideoArchivedMedia
    "InvalidCodecPrivateDataException"
    . hasStatus 400

-- | A streaming session was requested for a stream that does not retain data (that is, has a @DataRetentionInHours@ of 0).
_NoDataRetentionException :: AsError a => Getting (First ServiceError) a ServiceError
_NoDataRetentionException =
  _MatchServiceError
    kinesisVideoArchivedMedia
    "NoDataRetentionException"
    . hasStatus 400

-- | The type of the media (for example, h.264 or h.265 video or ACC or G.711 audio) could not be determined from the codec IDs of the tracks in the first fragment for a playback session. The codec ID for track 1 should be @V_MPEG/ISO/AVC@ and, optionally, the codec ID for track 2 should be @A_AAC@ .
_UnsupportedStreamMediaTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedStreamMediaTypeException =
  _MatchServiceError
    kinesisVideoArchivedMedia
    "UnsupportedStreamMediaTypeException"
    . hasStatus 400

-- | @GetMedia@ throws this error when Kinesis Video Streams can't find the stream that you specified.
--
--
-- @GetHLSStreamingSessionURL@ and @GetDASHStreamingSessionURL@ throw this error if a session with a @PlaybackMode@ of @ON_DEMAND@ or @LIVE_REPLAY@ is requested for a stream that has no fragments within the requested time range, or if a session with a @PlaybackMode@ of @LIVE@ is requested for a stream that has no fragments within the last 30 seconds.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    kinesisVideoArchivedMedia
    "ResourceNotFoundException"
    . hasStatus 404

-- | No codec private data was found in at least one of tracks of the video stream.
_MissingCodecPrivateDataException :: AsError a => Getting (First ServiceError) a ServiceError
_MissingCodecPrivateDataException =
  _MatchServiceError
    kinesisVideoArchivedMedia
    "MissingCodecPrivateDataException"
    . hasStatus 400

-- | Status Code: 403, The caller is not authorized to perform an operation on the given stream, or the token has expired.
_NotAuthorizedException :: AsError a => Getting (First ServiceError) a ServiceError
_NotAuthorizedException =
  _MatchServiceError
    kinesisVideoArchivedMedia
    "NotAuthorizedException"
    . hasStatus 401

-- | A specified parameter exceeds its restrictions, is not supported, or can't be used.
_InvalidArgumentException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidArgumentException =
  _MatchServiceError
    kinesisVideoArchivedMedia
    "InvalidArgumentException"
    . hasStatus 400
