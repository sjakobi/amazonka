{-# LANGUAGE OverloadedStrings #-}

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
    rekognition,

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
    ageRange,
    arHigh,
    arLow,

    -- * Asset
    Asset (..),
    asset,
    aGroundTruthManifest,

    -- * AudioMetadata
    AudioMetadata (..),
    audioMetadata,
    amCodec,
    amSampleRate,
    amDurationMillis,
    amNumberOfChannels,

    -- * Beard
    Beard (..),
    beard,
    bConfidence,
    bValue,

    -- * BoundingBox
    BoundingBox (..),
    boundingBox,
    bbHeight,
    bbWidth,
    bbTop,
    bbLeft,

    -- * Celebrity
    Celebrity (..),
    celebrity,
    cURLs,
    cId,
    cMatchConfidence,
    cName,
    cFace,

    -- * CelebrityDetail
    CelebrityDetail (..),
    celebrityDetail,
    cdURLs,
    cdId,
    cdBoundingBox,
    cdName,
    cdConfidence,
    cdFace,

    -- * CelebrityRecognition
    CelebrityRecognition (..),
    celebrityRecognition,
    crTimestamp,
    crCelebrity,

    -- * CompareFacesMatch
    CompareFacesMatch (..),
    compareFacesMatch,
    cfmSimilarity,
    cfmFace,

    -- * ComparedFace
    ComparedFace (..),
    comparedFace,
    cfPose,
    cfLandmarks,
    cfBoundingBox,
    cfConfidence,
    cfQuality,

    -- * ComparedSourceImageFace
    ComparedSourceImageFace (..),
    comparedSourceImageFace,
    csifBoundingBox,
    csifConfidence,

    -- * ContentModerationDetection
    ContentModerationDetection (..),
    contentModerationDetection,
    cmdTimestamp,
    cmdModerationLabel,

    -- * CoversBodyPart
    CoversBodyPart (..),
    coversBodyPart,
    cbpConfidence,
    cbpValue,

    -- * CustomLabel
    CustomLabel (..),
    customLabel,
    clName,
    clConfidence,
    clGeometry,

    -- * DetectTextFilters
    DetectTextFilters (..),
    detectTextFilters,
    dtfRegionsOfInterest,
    dtfWordFilter,

    -- * DetectionFilter
    DetectionFilter (..),
    detectionFilter,
    dfMinBoundingBoxWidth,
    dfMinConfidence,
    dfMinBoundingBoxHeight,

    -- * Emotion
    Emotion (..),
    emotion,
    eConfidence,
    eType,

    -- * EquipmentDetection
    EquipmentDetection (..),
    equipmentDetection,
    edCoversBodyPart,
    edBoundingBox,
    edConfidence,
    edType,

    -- * EvaluationResult
    EvaluationResult (..),
    evaluationResult,
    erF1Score,
    erSummary,

    -- * EyeOpen
    EyeOpen (..),
    eyeOpen,
    eoConfidence,
    eoValue,

    -- * Eyeglasses
    Eyeglasses (..),
    eyeglasses,
    eyeConfidence,
    eyeValue,

    -- * Face
    Face (..),
    face,
    fFaceId,
    fImageId,
    fExternalImageId,
    fBoundingBox,
    fConfidence,

    -- * FaceDetail
    FaceDetail (..),
    faceDetail,
    fdSunglasses,
    fdAgeRange,
    fdPose,
    fdLandmarks,
    fdBeard,
    fdEmotions,
    fdEyeglasses,
    fdGender,
    fdBoundingBox,
    fdMouthOpen,
    fdConfidence,
    fdSmile,
    fdEyesOpen,
    fdMustache,
    fdQuality,

    -- * FaceDetection
    FaceDetection (..),
    faceDetection,
    fdFace,
    fdTimestamp,

    -- * FaceMatch
    FaceMatch (..),
    faceMatch,
    fmSimilarity,
    fmFace,

    -- * FaceRecord
    FaceRecord (..),
    faceRecord,
    frFaceDetail,
    frFace,

    -- * FaceSearchSettings
    FaceSearchSettings (..),
    faceSearchSettings,
    fssCollectionId,
    fssFaceMatchThreshold,

    -- * Gender
    Gender (..),
    gender,
    gConfidence,
    gValue,

    -- * Geometry
    Geometry (..),
    geometry,
    gPolygon,
    gBoundingBox,

    -- * GroundTruthManifest
    GroundTruthManifest (..),
    groundTruthManifest,
    gtmS3Object,

    -- * HumanLoopActivationOutput
    HumanLoopActivationOutput (..),
    humanLoopActivationOutput,
    hlaoHumanLoopActivationReasons,
    hlaoHumanLoopARN,
    hlaoHumanLoopActivationConditionsEvaluationResults,

    -- * HumanLoopConfig
    HumanLoopConfig (..),
    humanLoopConfig,
    hlcDataAttributes,
    hlcHumanLoopName,
    hlcFlowDefinitionARN,

    -- * HumanLoopDataAttributes
    HumanLoopDataAttributes (..),
    humanLoopDataAttributes,
    hldaContentClassifiers,

    -- * Image
    Image (..),
    image,
    iBytes,
    iS3Object,

    -- * ImageQuality
    ImageQuality (..),
    imageQuality,
    iqBrightness,
    iqSharpness,

    -- * Instance
    Instance (..),
    instance',
    iBoundingBox,
    iConfidence,

    -- * KinesisDataStream
    KinesisDataStream (..),
    kinesisDataStream,
    kdsARN,

    -- * KinesisVideoStream
    KinesisVideoStream (..),
    kinesisVideoStream,
    kvsARN,

    -- * Label
    Label (..),
    label,
    lParents,
    lInstances,
    lName,
    lConfidence,

    -- * LabelDetection
    LabelDetection (..),
    labelDetection,
    ldLabel,
    ldTimestamp,

    -- * Landmark
    Landmark (..),
    landmark,
    lY,
    lX,
    lType,

    -- * ModerationLabel
    ModerationLabel (..),
    moderationLabel,
    mlName,
    mlConfidence,
    mlParentName,

    -- * MouthOpen
    MouthOpen (..),
    mouthOpen,
    moConfidence,
    moValue,

    -- * Mustache
    Mustache (..),
    mustache,
    mConfidence,
    mValue,

    -- * NotificationChannel
    NotificationChannel (..),
    notificationChannel,
    ncSNSTopicARN,
    ncRoleARN,

    -- * OutputConfig
    OutputConfig (..),
    outputConfig,
    ocS3Bucket,
    ocS3KeyPrefix,

    -- * Parent
    Parent (..),
    parent,
    pName,

    -- * PersonDetail
    PersonDetail (..),
    personDetail,
    pdBoundingBox,
    pdFace,
    pdIndex,

    -- * PersonDetection
    PersonDetection (..),
    personDetection,
    pdTimestamp,
    pdPerson,

    -- * PersonMatch
    PersonMatch (..),
    personMatch,
    pmFaceMatches,
    pmTimestamp,
    pmPerson,

    -- * Point
    Point (..),
    point,
    pY,
    pX,

    -- * Pose
    Pose (..),
    pose,
    pYaw,
    pPitch,
    pRoll,

    -- * ProjectDescription
    ProjectDescription (..),
    projectDescription,
    pdCreationTimestamp,
    pdStatus,
    pdProjectARN,

    -- * ProjectVersionDescription
    ProjectVersionDescription (..),
    projectVersionDescription,
    pvdCreationTimestamp,
    pvdStatusMessage,
    pvdTestingDataResult,
    pvdEvaluationResult,
    pvdStatus,
    pvdBillableTrainingTimeInSeconds,
    pvdOutputConfig,
    pvdProjectVersionARN,
    pvdMinInferenceUnits,
    pvdTrainingDataResult,
    pvdTrainingEndTimestamp,
    pvdManifestSummary,

    -- * ProtectiveEquipmentBodyPart
    ProtectiveEquipmentBodyPart (..),
    protectiveEquipmentBodyPart,
    pebpEquipmentDetections,
    pebpName,
    pebpConfidence,

    -- * ProtectiveEquipmentPerson
    ProtectiveEquipmentPerson (..),
    protectiveEquipmentPerson,
    pepId,
    pepBoundingBox,
    pepBodyParts,
    pepConfidence,

    -- * ProtectiveEquipmentSummarizationAttributes
    ProtectiveEquipmentSummarizationAttributes (..),
    protectiveEquipmentSummarizationAttributes,
    pesaMinConfidence,
    pesaRequiredEquipmentTypes,

    -- * ProtectiveEquipmentSummary
    ProtectiveEquipmentSummary (..),
    protectiveEquipmentSummary,
    pesPersonsWithRequiredEquipment,
    pesPersonsIndeterminate,
    pesPersonsWithoutRequiredEquipment,

    -- * RegionOfInterest
    RegionOfInterest (..),
    regionOfInterest,
    roiBoundingBox,

    -- * S3Object
    S3Object (..),
    s3Object,
    soVersion,
    soName,
    soBucket,

    -- * SegmentDetection
    SegmentDetection (..),
    segmentDetection,
    sdShotSegment,
    sdEndTimestampMillis,
    sdStartTimecodeSMPTE,
    sdDurationSMPTE,
    sdTechnicalCueSegment,
    sdType,
    sdDurationMillis,
    sdEndTimecodeSMPTE,
    sdStartTimestampMillis,

    -- * SegmentTypeInfo
    SegmentTypeInfo (..),
    segmentTypeInfo,
    stiModelVersion,
    stiType,

    -- * ShotSegment
    ShotSegment (..),
    shotSegment,
    ssConfidence,
    ssIndex,

    -- * Smile
    Smile (..),
    smile,
    smiConfidence,
    smiValue,

    -- * StartSegmentDetectionFilters
    StartSegmentDetectionFilters (..),
    startSegmentDetectionFilters,
    ssdfTechnicalCueFilter,
    ssdfShotFilter,

    -- * StartShotDetectionFilter
    StartShotDetectionFilter (..),
    startShotDetectionFilter,
    ssdfMinSegmentConfidence,

    -- * StartTechnicalCueDetectionFilter
    StartTechnicalCueDetectionFilter (..),
    startTechnicalCueDetectionFilter,
    stcdfMinSegmentConfidence,

    -- * StartTextDetectionFilters
    StartTextDetectionFilters (..),
    startTextDetectionFilters,
    stdfRegionsOfInterest,
    stdfWordFilter,

    -- * StreamProcessor
    StreamProcessor (..),
    streamProcessor,
    spStatus,
    spName,

    -- * StreamProcessorInput
    StreamProcessorInput (..),
    streamProcessorInput,
    spiKinesisVideoStream,

    -- * StreamProcessorOutput
    StreamProcessorOutput (..),
    streamProcessorOutput,
    spoKinesisDataStream,

    -- * StreamProcessorSettings
    StreamProcessorSettings (..),
    streamProcessorSettings,
    spsFaceSearch,

    -- * Summary
    Summary (..),
    summary,
    sS3Object,

    -- * Sunglasses
    Sunglasses (..),
    sunglasses,
    sConfidence,
    sValue,

    -- * TechnicalCueSegment
    TechnicalCueSegment (..),
    technicalCueSegment,
    tcsConfidence,
    tcsType,

    -- * TestingData
    TestingData (..),
    testingData,
    tdAutoCreate,
    tdAssets,

    -- * TestingDataResult
    TestingDataResult (..),
    testingDataResult,
    tdrInput,
    tdrOutput,
    tdrValidation,

    -- * TextDetection
    TextDetection (..),
    textDetection,
    tdDetectedText,
    tdId,
    tdConfidence,
    tdParentId,
    tdType,
    tdGeometry,

    -- * TextDetectionResult
    TextDetectionResult (..),
    textDetectionResult,
    tdrTextDetection,
    tdrTimestamp,

    -- * TrainingData
    TrainingData (..),
    trainingData,
    tAssets,

    -- * TrainingDataResult
    TrainingDataResult (..),
    trainingDataResult,
    tInput,
    tOutput,
    tValidation,

    -- * UnindexedFace
    UnindexedFace (..),
    unindexedFace,
    ufFaceDetail,
    ufReasons,

    -- * ValidationData
    ValidationData (..),
    validationData,
    vdAssets,

    -- * Video
    Video (..),
    video,
    vS3Object,

    -- * VideoMetadata
    VideoMetadata (..),
    videoMetadata,
    vmCodec,
    vmFormat,
    vmFrameHeight,
    vmFrameRate,
    vmFrameWidth,
    vmDurationMillis,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
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
import Network.AWS.Sign.V4

-- | API version @2016-06-27@ of the Amazon Rekognition SDK configuration.
rekognition :: Service
rekognition =
  Service
    { _svcAbbrev = "Rekognition",
      _svcSigner = v4,
      _svcPrefix = "rekognition",
      _svcVersion = "2016-06-27",
      _svcEndpoint = defaultEndpoint rekognition,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Rekognition",
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

-- |
--
--
-- The size of the collection exceeds the allowed limit. For more information, see Limits in Amazon Rekognition in the Amazon Rekognition Developer Guide.
_ServiceQuotaExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceQuotaExceededException =
  _MatchServiceError
    rekognition
    "ServiceQuotaExceededException"

-- | The file size or duration of the supplied media is too large. The maximum file size is 10GB. The maximum duration is 6 hours.
_VideoTooLargeException :: AsError a => Getting (First ServiceError) a ServiceError
_VideoTooLargeException =
  _MatchServiceError
    rekognition
    "VideoTooLargeException"

-- | Pagination token in the request is not valid.
_InvalidPaginationTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPaginationTokenException =
  _MatchServiceError
    rekognition
    "InvalidPaginationTokenException"

-- | The number of in-progress human reviews you have has exceeded the number allowed.
_HumanLoopQuotaExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_HumanLoopQuotaExceededException =
  _MatchServiceError
    rekognition
    "HumanLoopQuotaExceededException"

-- | The input image size exceeds the allowed limit. For more information, see Limits in Amazon Rekognition in the Amazon Rekognition Developer Guide.
_ImageTooLargeException :: AsError a => Getting (First ServiceError) a ServiceError
_ImageTooLargeException =
  _MatchServiceError
    rekognition
    "ImageTooLargeException"

-- | The requested resource isn't ready. For example, this exception occurs when you call @DetectCustomLabels@ with a model version that isn't deployed.
_ResourceNotReadyException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotReadyException =
  _MatchServiceError
    rekognition
    "ResourceNotReadyException"

-- | Amazon Rekognition is unable to access the S3 object specified in the request.
_InvalidS3ObjectException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidS3ObjectException =
  _MatchServiceError
    rekognition
    "InvalidS3ObjectException"

-- | A collection with the specified ID already exists.
_ResourceAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAlreadyExistsException =
  _MatchServiceError
    rekognition
    "ResourceAlreadyExistsException"

-- | Amazon Rekognition is temporarily unable to process the request. Try your call again.
_ThrottlingException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottlingException =
  _MatchServiceError
    rekognition
    "ThrottlingException"

-- | Amazon Rekognition experienced a service issue. Try your call again.
_InternalServerError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerError =
  _MatchServiceError
    rekognition
    "InternalServerError"

-- | Input parameter violated a constraint. Validate your parameter before calling the API operation again.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    rekognition
    "InvalidParameterException"

-- | You are not authorized to perform the action.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError
    rekognition
    "AccessDeniedException"

-- | The specified resource is already being used.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError
    rekognition
    "ResourceInUseException"

-- | An Amazon Rekognition service limit was exceeded. For example, if you start too many Amazon Rekognition Video jobs concurrently, calls to start operations (@StartLabelDetection@ , for example) will raise a @LimitExceededException@ exception (HTTP status code: 400) until the number of concurrently running jobs is below the Amazon Rekognition service limit.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    rekognition
    "LimitExceededException"

-- | The number of requests exceeded your throughput limit. If you want to increase this limit, contact Amazon Rekognition.
_ProvisionedThroughputExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ProvisionedThroughputExceededException =
  _MatchServiceError
    rekognition
    "ProvisionedThroughputExceededException"

-- | The collection specified in the request cannot be found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    rekognition
    "ResourceNotFoundException"

-- | A @ClientRequestToken@ input parameter was reused with an operation, but at least one of the other input parameters is different from the previous call to the operation.
_IdempotentParameterMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_IdempotentParameterMismatchException =
  _MatchServiceError
    rekognition
    "IdempotentParameterMismatchException"

-- | The provided image format is not supported.
_InvalidImageFormatException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidImageFormatException =
  _MatchServiceError
    rekognition
    "InvalidImageFormatException"
