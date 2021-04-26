{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ServiceQuotaExceededException,
    _VideoTooLargeException,
    _InvalidPaginationTokenException,
    _HumanLoopQuotaExceededException,
    _ImageTooLargeException,
    _ResourceNotReadyException,
    _InvalidS3ObjectException,
    _ResourceAlreadyExistsException,
    _ThrottlingException,
    _InternalServerError,
    _InvalidParameterException,
    _AccessDeniedException,
    _ResourceInUseException,
    _LimitExceededException,
    _ProvisionedThroughputExceededException,
    _ResourceNotFoundException,
    _IdempotentParameterMismatchException,
    _InvalidImageFormatException,

    -- * Attribute
    Attribute (..),

    -- * BodyPart
    BodyPart (..),

    -- * CelebrityRecognitionSortBy
    CelebrityRecognitionSortBy (..),

    -- * ContentClassifier
    ContentClassifier (..),

    -- * ContentModerationSortBy
    ContentModerationSortBy (..),

    -- * EmotionName
    EmotionName (..),

    -- * FaceAttributes
    FaceAttributes (..),

    -- * FaceSearchSortBy
    FaceSearchSortBy (..),

    -- * GenderType
    GenderType (..),

    -- * LabelDetectionSortBy
    LabelDetectionSortBy (..),

    -- * LandmarkType
    LandmarkType (..),

    -- * OrientationCorrection
    OrientationCorrection (..),

    -- * PersonTrackingSortBy
    PersonTrackingSortBy (..),

    -- * ProjectStatus
    ProjectStatus (..),

    -- * ProjectVersionStatus
    ProjectVersionStatus (..),

    -- * ProtectiveEquipmentType
    ProtectiveEquipmentType (..),

    -- * QualityFilter
    QualityFilter (..),

    -- * Reason
    Reason (..),

    -- * SegmentType
    SegmentType (..),

    -- * StreamProcessorStatus
    StreamProcessorStatus (..),

    -- * TechnicalCueType
    TechnicalCueType (..),

    -- * TextTypes
    TextTypes (..),

    -- * VideoJobStatus
    VideoJobStatus (..),

    -- * AgeRange
    AgeRange (..),
    newAgeRange,

    -- * Asset
    Asset (..),
    newAsset,

    -- * AudioMetadata
    AudioMetadata (..),
    newAudioMetadata,

    -- * Beard
    Beard (..),
    newBeard,

    -- * BoundingBox
    BoundingBox (..),
    newBoundingBox,

    -- * Celebrity
    Celebrity (..),
    newCelebrity,

    -- * CelebrityDetail
    CelebrityDetail (..),
    newCelebrityDetail,

    -- * CelebrityRecognition
    CelebrityRecognition (..),
    newCelebrityRecognition,

    -- * CompareFacesMatch
    CompareFacesMatch (..),
    newCompareFacesMatch,

    -- * ComparedFace
    ComparedFace (..),
    newComparedFace,

    -- * ComparedSourceImageFace
    ComparedSourceImageFace (..),
    newComparedSourceImageFace,

    -- * ContentModerationDetection
    ContentModerationDetection (..),
    newContentModerationDetection,

    -- * CoversBodyPart
    CoversBodyPart (..),
    newCoversBodyPart,

    -- * CustomLabel
    CustomLabel (..),
    newCustomLabel,

    -- * DetectTextFilters
    DetectTextFilters (..),
    newDetectTextFilters,

    -- * DetectionFilter
    DetectionFilter (..),
    newDetectionFilter,

    -- * Emotion
    Emotion (..),
    newEmotion,

    -- * EquipmentDetection
    EquipmentDetection (..),
    newEquipmentDetection,

    -- * EvaluationResult
    EvaluationResult (..),
    newEvaluationResult,

    -- * EyeOpen
    EyeOpen (..),
    newEyeOpen,

    -- * Eyeglasses
    Eyeglasses (..),
    newEyeglasses,

    -- * Face
    Face (..),
    newFace,

    -- * FaceDetail
    FaceDetail (..),
    newFaceDetail,

    -- * FaceDetection
    FaceDetection (..),
    newFaceDetection,

    -- * FaceMatch
    FaceMatch (..),
    newFaceMatch,

    -- * FaceRecord
    FaceRecord (..),
    newFaceRecord,

    -- * FaceSearchSettings
    FaceSearchSettings (..),
    newFaceSearchSettings,

    -- * Gender
    Gender (..),
    newGender,

    -- * Geometry
    Geometry (..),
    newGeometry,

    -- * GroundTruthManifest
    GroundTruthManifest (..),
    newGroundTruthManifest,

    -- * HumanLoopActivationOutput
    HumanLoopActivationOutput (..),
    newHumanLoopActivationOutput,

    -- * HumanLoopConfig
    HumanLoopConfig (..),
    newHumanLoopConfig,

    -- * HumanLoopDataAttributes
    HumanLoopDataAttributes (..),
    newHumanLoopDataAttributes,

    -- * Image
    Image (..),
    newImage,

    -- * ImageQuality
    ImageQuality (..),
    newImageQuality,

    -- * Instance
    Instance (..),
    newInstance,

    -- * KinesisDataStream
    KinesisDataStream (..),
    newKinesisDataStream,

    -- * KinesisVideoStream
    KinesisVideoStream (..),
    newKinesisVideoStream,

    -- * Label
    Label (..),
    newLabel,

    -- * LabelDetection
    LabelDetection (..),
    newLabelDetection,

    -- * Landmark
    Landmark (..),
    newLandmark,

    -- * ModerationLabel
    ModerationLabel (..),
    newModerationLabel,

    -- * MouthOpen
    MouthOpen (..),
    newMouthOpen,

    -- * Mustache
    Mustache (..),
    newMustache,

    -- * NotificationChannel
    NotificationChannel (..),
    newNotificationChannel,

    -- * OutputConfig
    OutputConfig (..),
    newOutputConfig,

    -- * Parent
    Parent (..),
    newParent,

    -- * PersonDetail
    PersonDetail (..),
    newPersonDetail,

    -- * PersonDetection
    PersonDetection (..),
    newPersonDetection,

    -- * PersonMatch
    PersonMatch (..),
    newPersonMatch,

    -- * Point
    Point (..),
    newPoint,

    -- * Pose
    Pose (..),
    newPose,

    -- * ProjectDescription
    ProjectDescription (..),
    newProjectDescription,

    -- * ProjectVersionDescription
    ProjectVersionDescription (..),
    newProjectVersionDescription,

    -- * ProtectiveEquipmentBodyPart
    ProtectiveEquipmentBodyPart (..),
    newProtectiveEquipmentBodyPart,

    -- * ProtectiveEquipmentPerson
    ProtectiveEquipmentPerson (..),
    newProtectiveEquipmentPerson,

    -- * ProtectiveEquipmentSummarizationAttributes
    ProtectiveEquipmentSummarizationAttributes (..),
    newProtectiveEquipmentSummarizationAttributes,

    -- * ProtectiveEquipmentSummary
    ProtectiveEquipmentSummary (..),
    newProtectiveEquipmentSummary,

    -- * RegionOfInterest
    RegionOfInterest (..),
    newRegionOfInterest,

    -- * S3Object
    S3Object (..),
    newS3Object,

    -- * SegmentDetection
    SegmentDetection (..),
    newSegmentDetection,

    -- * SegmentTypeInfo
    SegmentTypeInfo (..),
    newSegmentTypeInfo,

    -- * ShotSegment
    ShotSegment (..),
    newShotSegment,

    -- * Smile
    Smile (..),
    newSmile,

    -- * StartSegmentDetectionFilters
    StartSegmentDetectionFilters (..),
    newStartSegmentDetectionFilters,

    -- * StartShotDetectionFilter
    StartShotDetectionFilter (..),
    newStartShotDetectionFilter,

    -- * StartTechnicalCueDetectionFilter
    StartTechnicalCueDetectionFilter (..),
    newStartTechnicalCueDetectionFilter,

    -- * StartTextDetectionFilters
    StartTextDetectionFilters (..),
    newStartTextDetectionFilters,

    -- * StreamProcessor
    StreamProcessor (..),
    newStreamProcessor,

    -- * StreamProcessorInput
    StreamProcessorInput (..),
    newStreamProcessorInput,

    -- * StreamProcessorOutput
    StreamProcessorOutput (..),
    newStreamProcessorOutput,

    -- * StreamProcessorSettings
    StreamProcessorSettings (..),
    newStreamProcessorSettings,

    -- * Summary
    Summary (..),
    newSummary,

    -- * Sunglasses
    Sunglasses (..),
    newSunglasses,

    -- * TechnicalCueSegment
    TechnicalCueSegment (..),
    newTechnicalCueSegment,

    -- * TestingData
    TestingData (..),
    newTestingData,

    -- * TestingDataResult
    TestingDataResult (..),
    newTestingDataResult,

    -- * TextDetection
    TextDetection (..),
    newTextDetection,

    -- * TextDetectionResult
    TextDetectionResult (..),
    newTextDetectionResult,

    -- * TrainingData
    TrainingData (..),
    newTrainingData,

    -- * TrainingDataResult
    TrainingDataResult (..),
    newTrainingDataResult,

    -- * UnindexedFace
    UnindexedFace (..),
    newUnindexedFace,

    -- * ValidationData
    ValidationData (..),
    newValidationData,

    -- * Video
    Video (..),
    newVideo,

    -- * VideoMetadata
    VideoMetadata (..),
    newVideoMetadata,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Rekognition.Types.AgeRange
import Network.AWS.Rekognition.Types.Asset
import Network.AWS.Rekognition.Types.Attribute
import Network.AWS.Rekognition.Types.AudioMetadata
import Network.AWS.Rekognition.Types.Beard
import Network.AWS.Rekognition.Types.BodyPart
import Network.AWS.Rekognition.Types.BoundingBox
import Network.AWS.Rekognition.Types.Celebrity
import Network.AWS.Rekognition.Types.CelebrityDetail
import Network.AWS.Rekognition.Types.CelebrityRecognition
import Network.AWS.Rekognition.Types.CelebrityRecognitionSortBy
import Network.AWS.Rekognition.Types.CompareFacesMatch
import Network.AWS.Rekognition.Types.ComparedFace
import Network.AWS.Rekognition.Types.ComparedSourceImageFace
import Network.AWS.Rekognition.Types.ContentClassifier
import Network.AWS.Rekognition.Types.ContentModerationDetection
import Network.AWS.Rekognition.Types.ContentModerationSortBy
import Network.AWS.Rekognition.Types.CoversBodyPart
import Network.AWS.Rekognition.Types.CustomLabel
import Network.AWS.Rekognition.Types.DetectTextFilters
import Network.AWS.Rekognition.Types.DetectionFilter
import Network.AWS.Rekognition.Types.Emotion
import Network.AWS.Rekognition.Types.EmotionName
import Network.AWS.Rekognition.Types.EquipmentDetection
import Network.AWS.Rekognition.Types.EvaluationResult
import Network.AWS.Rekognition.Types.EyeOpen
import Network.AWS.Rekognition.Types.Eyeglasses
import Network.AWS.Rekognition.Types.Face
import Network.AWS.Rekognition.Types.FaceAttributes
import Network.AWS.Rekognition.Types.FaceDetail
import Network.AWS.Rekognition.Types.FaceDetection
import Network.AWS.Rekognition.Types.FaceMatch
import Network.AWS.Rekognition.Types.FaceRecord
import Network.AWS.Rekognition.Types.FaceSearchSettings
import Network.AWS.Rekognition.Types.FaceSearchSortBy
import Network.AWS.Rekognition.Types.Gender
import Network.AWS.Rekognition.Types.GenderType
import Network.AWS.Rekognition.Types.Geometry
import Network.AWS.Rekognition.Types.GroundTruthManifest
import Network.AWS.Rekognition.Types.HumanLoopActivationOutput
import Network.AWS.Rekognition.Types.HumanLoopConfig
import Network.AWS.Rekognition.Types.HumanLoopDataAttributes
import Network.AWS.Rekognition.Types.Image
import Network.AWS.Rekognition.Types.ImageQuality
import Network.AWS.Rekognition.Types.Instance
import Network.AWS.Rekognition.Types.KinesisDataStream
import Network.AWS.Rekognition.Types.KinesisVideoStream
import Network.AWS.Rekognition.Types.Label
import Network.AWS.Rekognition.Types.LabelDetection
import Network.AWS.Rekognition.Types.LabelDetectionSortBy
import Network.AWS.Rekognition.Types.Landmark
import Network.AWS.Rekognition.Types.LandmarkType
import Network.AWS.Rekognition.Types.ModerationLabel
import Network.AWS.Rekognition.Types.MouthOpen
import Network.AWS.Rekognition.Types.Mustache
import Network.AWS.Rekognition.Types.NotificationChannel
import Network.AWS.Rekognition.Types.OrientationCorrection
import Network.AWS.Rekognition.Types.OutputConfig
import Network.AWS.Rekognition.Types.Parent
import Network.AWS.Rekognition.Types.PersonDetail
import Network.AWS.Rekognition.Types.PersonDetection
import Network.AWS.Rekognition.Types.PersonMatch
import Network.AWS.Rekognition.Types.PersonTrackingSortBy
import Network.AWS.Rekognition.Types.Point
import Network.AWS.Rekognition.Types.Pose
import Network.AWS.Rekognition.Types.ProjectDescription
import Network.AWS.Rekognition.Types.ProjectStatus
import Network.AWS.Rekognition.Types.ProjectVersionDescription
import Network.AWS.Rekognition.Types.ProjectVersionStatus
import Network.AWS.Rekognition.Types.ProtectiveEquipmentBodyPart
import Network.AWS.Rekognition.Types.ProtectiveEquipmentPerson
import Network.AWS.Rekognition.Types.ProtectiveEquipmentSummarizationAttributes
import Network.AWS.Rekognition.Types.ProtectiveEquipmentSummary
import Network.AWS.Rekognition.Types.ProtectiveEquipmentType
import Network.AWS.Rekognition.Types.QualityFilter
import Network.AWS.Rekognition.Types.Reason
import Network.AWS.Rekognition.Types.RegionOfInterest
import Network.AWS.Rekognition.Types.S3Object
import Network.AWS.Rekognition.Types.SegmentDetection
import Network.AWS.Rekognition.Types.SegmentType
import Network.AWS.Rekognition.Types.SegmentTypeInfo
import Network.AWS.Rekognition.Types.ShotSegment
import Network.AWS.Rekognition.Types.Smile
import Network.AWS.Rekognition.Types.StartSegmentDetectionFilters
import Network.AWS.Rekognition.Types.StartShotDetectionFilter
import Network.AWS.Rekognition.Types.StartTechnicalCueDetectionFilter
import Network.AWS.Rekognition.Types.StartTextDetectionFilters
import Network.AWS.Rekognition.Types.StreamProcessor
import Network.AWS.Rekognition.Types.StreamProcessorInput
import Network.AWS.Rekognition.Types.StreamProcessorOutput
import Network.AWS.Rekognition.Types.StreamProcessorSettings
import Network.AWS.Rekognition.Types.StreamProcessorStatus
import Network.AWS.Rekognition.Types.Summary
import Network.AWS.Rekognition.Types.Sunglasses
import Network.AWS.Rekognition.Types.TechnicalCueSegment
import Network.AWS.Rekognition.Types.TechnicalCueType
import Network.AWS.Rekognition.Types.TestingData
import Network.AWS.Rekognition.Types.TestingDataResult
import Network.AWS.Rekognition.Types.TextDetection
import Network.AWS.Rekognition.Types.TextDetectionResult
import Network.AWS.Rekognition.Types.TextTypes
import Network.AWS.Rekognition.Types.TrainingData
import Network.AWS.Rekognition.Types.TrainingDataResult
import Network.AWS.Rekognition.Types.UnindexedFace
import Network.AWS.Rekognition.Types.ValidationData
import Network.AWS.Rekognition.Types.Video
import Network.AWS.Rekognition.Types.VideoJobStatus
import Network.AWS.Rekognition.Types.VideoMetadata
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2016-06-27@ of the Amazon Rekognition SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Rekognition",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "rekognition",
      Prelude._svcVersion = "2016-06-27",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "Rekognition",
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

-- | The size of the collection exceeds the allowed limit. For more
-- information, see Limits in Amazon Rekognition in the Amazon Rekognition
-- Developer Guide.
_ServiceQuotaExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceQuotaExceededException =
  Prelude._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"

-- | The file size or duration of the supplied media is too large. The
-- maximum file size is 10GB. The maximum duration is 6 hours.
_VideoTooLargeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_VideoTooLargeException =
  Prelude._MatchServiceError
    defaultService
    "VideoTooLargeException"

-- | Pagination token in the request is not valid.
_InvalidPaginationTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidPaginationTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidPaginationTokenException"

-- | The number of in-progress human reviews you have has exceeded the number
-- allowed.
_HumanLoopQuotaExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HumanLoopQuotaExceededException =
  Prelude._MatchServiceError
    defaultService
    "HumanLoopQuotaExceededException"

-- | The input image size exceeds the allowed limit. For more information,
-- see Limits in Amazon Rekognition in the Amazon Rekognition Developer
-- Guide.
_ImageTooLargeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ImageTooLargeException =
  Prelude._MatchServiceError
    defaultService
    "ImageTooLargeException"

-- | The requested resource isn\'t ready. For example, this exception occurs
-- when you call @DetectCustomLabels@ with a model version that isn\'t
-- deployed.
_ResourceNotReadyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotReadyException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotReadyException"

-- | Amazon Rekognition is unable to access the S3 object specified in the
-- request.
_InvalidS3ObjectException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidS3ObjectException =
  Prelude._MatchServiceError
    defaultService
    "InvalidS3ObjectException"

-- | A collection with the specified ID already exists.
_ResourceAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "ResourceAlreadyExistsException"

-- | Amazon Rekognition is temporarily unable to process the request. Try
-- your call again.
_ThrottlingException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ThrottlingException =
  Prelude._MatchServiceError
    defaultService
    "ThrottlingException"

-- | Amazon Rekognition experienced a service issue. Try your call again.
_InternalServerError :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServerError =
  Prelude._MatchServiceError
    defaultService
    "InternalServerError"

-- | Input parameter violated a constraint. Validate your parameter before
-- calling the API operation again.
_InvalidParameterException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameterException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterException"

-- | You are not authorized to perform the action.
_AccessDeniedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AccessDeniedException =
  Prelude._MatchServiceError
    defaultService
    "AccessDeniedException"

-- | The specified resource is already being used.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | An Amazon Rekognition service limit was exceeded. For example, if you
-- start too many Amazon Rekognition Video jobs concurrently, calls to
-- start operations (@StartLabelDetection@, for example) will raise a
-- @LimitExceededException@ exception (HTTP status code: 400) until the
-- number of concurrently running jobs is below the Amazon Rekognition
-- service limit.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | The number of requests exceeded your throughput limit. If you want to
-- increase this limit, contact Amazon Rekognition.
_ProvisionedThroughputExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ProvisionedThroughputExceededException =
  Prelude._MatchServiceError
    defaultService
    "ProvisionedThroughputExceededException"

-- | The collection specified in the request cannot be found.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | A @ClientRequestToken@ input parameter was reused with an operation, but
-- at least one of the other input parameters is different from the
-- previous call to the operation.
_IdempotentParameterMismatchException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IdempotentParameterMismatchException =
  Prelude._MatchServiceError
    defaultService
    "IdempotentParameterMismatchException"

-- | The provided image format is not supported.
_InvalidImageFormatException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidImageFormatException =
  Prelude._MatchServiceError
    defaultService
    "InvalidImageFormatException"
