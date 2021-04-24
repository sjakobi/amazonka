{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is the Amazon Rekognition API reference.
module Network.AWS.Rekognition
  ( -- * Service Configuration
    rekognition,

    -- * Errors
    -- $errors

    -- ** ServiceQuotaExceededException
    _ServiceQuotaExceededException,

    -- ** VideoTooLargeException
    _VideoTooLargeException,

    -- ** InvalidPaginationTokenException
    _InvalidPaginationTokenException,

    -- ** HumanLoopQuotaExceededException
    _HumanLoopQuotaExceededException,

    -- ** ImageTooLargeException
    _ImageTooLargeException,

    -- ** ResourceNotReadyException
    _ResourceNotReadyException,

    -- ** InvalidS3ObjectException
    _InvalidS3ObjectException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** InternalServerError
    _InternalServerError,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ProvisionedThroughputExceededException
    _ProvisionedThroughputExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** IdempotentParameterMismatchException
    _IdempotentParameterMismatchException,

    -- ** InvalidImageFormatException
    _InvalidImageFormatException,

    -- * Waiters
    -- $waiters

    -- ** ProjectVersionTrainingCompleted
    projectVersionTrainingCompleted,

    -- ** ProjectVersionRunning
    projectVersionRunning,

    -- * Operations
    -- $operations

    -- ** StartFaceSearch
    module Network.AWS.Rekognition.StartFaceSearch,

    -- ** DescribeStreamProcessor
    module Network.AWS.Rekognition.DescribeStreamProcessor,

    -- ** DeleteCollection
    module Network.AWS.Rekognition.DeleteCollection,

    -- ** GetLabelDetection
    module Network.AWS.Rekognition.GetLabelDetection,

    -- ** SearchFaces
    module Network.AWS.Rekognition.SearchFaces,

    -- ** GetTextDetection
    module Network.AWS.Rekognition.GetTextDetection,

    -- ** CreateProject
    module Network.AWS.Rekognition.CreateProject,

    -- ** DetectCustomLabels
    module Network.AWS.Rekognition.DetectCustomLabels,

    -- ** RecognizeCelebrities
    module Network.AWS.Rekognition.RecognizeCelebrities,

    -- ** StartFaceDetection
    module Network.AWS.Rekognition.StartFaceDetection,

    -- ** DetectModerationLabels
    module Network.AWS.Rekognition.DetectModerationLabels,

    -- ** DeleteFaces
    module Network.AWS.Rekognition.DeleteFaces,

    -- ** ListStreamProcessors (Paginated)
    module Network.AWS.Rekognition.ListStreamProcessors,

    -- ** DescribeCollection
    module Network.AWS.Rekognition.DescribeCollection,

    -- ** DeleteStreamProcessor
    module Network.AWS.Rekognition.DeleteStreamProcessor,

    -- ** ListFaces (Paginated)
    module Network.AWS.Rekognition.ListFaces,

    -- ** SearchFacesByImage
    module Network.AWS.Rekognition.SearchFacesByImage,

    -- ** CompareFaces
    module Network.AWS.Rekognition.CompareFaces,

    -- ** DetectLabels
    module Network.AWS.Rekognition.DetectLabels,

    -- ** GetSegmentDetection
    module Network.AWS.Rekognition.GetSegmentDetection,

    -- ** GetCelebrityRecognition
    module Network.AWS.Rekognition.GetCelebrityRecognition,

    -- ** StartPersonTracking
    module Network.AWS.Rekognition.StartPersonTracking,

    -- ** CreateCollection
    module Network.AWS.Rekognition.CreateCollection,

    -- ** StopProjectVersion
    module Network.AWS.Rekognition.StopProjectVersion,

    -- ** StartProjectVersion
    module Network.AWS.Rekognition.StartProjectVersion,

    -- ** ListCollections (Paginated)
    module Network.AWS.Rekognition.ListCollections,

    -- ** DetectProtectiveEquipment
    module Network.AWS.Rekognition.DetectProtectiveEquipment,

    -- ** GetPersonTracking
    module Network.AWS.Rekognition.GetPersonTracking,

    -- ** DeleteProject
    module Network.AWS.Rekognition.DeleteProject,

    -- ** IndexFaces
    module Network.AWS.Rekognition.IndexFaces,

    -- ** StartSegmentDetection
    module Network.AWS.Rekognition.StartSegmentDetection,

    -- ** StartCelebrityRecognition
    module Network.AWS.Rekognition.StartCelebrityRecognition,

    -- ** GetFaceSearch
    module Network.AWS.Rekognition.GetFaceSearch,

    -- ** StartLabelDetection
    module Network.AWS.Rekognition.StartLabelDetection,

    -- ** DescribeProjectVersions (Paginated)
    module Network.AWS.Rekognition.DescribeProjectVersions,

    -- ** DeleteProjectVersion
    module Network.AWS.Rekognition.DeleteProjectVersion,

    -- ** CreateStreamProcessor
    module Network.AWS.Rekognition.CreateStreamProcessor,

    -- ** GetContentModeration
    module Network.AWS.Rekognition.GetContentModeration,

    -- ** GetCelebrityInfo
    module Network.AWS.Rekognition.GetCelebrityInfo,

    -- ** DescribeProjects (Paginated)
    module Network.AWS.Rekognition.DescribeProjects,

    -- ** CreateProjectVersion
    module Network.AWS.Rekognition.CreateProjectVersion,

    -- ** GetFaceDetection
    module Network.AWS.Rekognition.GetFaceDetection,

    -- ** StartContentModeration
    module Network.AWS.Rekognition.StartContentModeration,

    -- ** DetectFaces
    module Network.AWS.Rekognition.DetectFaces,

    -- ** DetectText
    module Network.AWS.Rekognition.DetectText,

    -- ** StartTextDetection
    module Network.AWS.Rekognition.StartTextDetection,

    -- ** StopStreamProcessor
    module Network.AWS.Rekognition.StopStreamProcessor,

    -- ** StartStreamProcessor
    module Network.AWS.Rekognition.StartStreamProcessor,

    -- * Types

    -- ** Attribute
    Attribute (..),

    -- ** BodyPart
    BodyPart (..),

    -- ** CelebrityRecognitionSortBy
    CelebrityRecognitionSortBy (..),

    -- ** ContentClassifier
    ContentClassifier (..),

    -- ** ContentModerationSortBy
    ContentModerationSortBy (..),

    -- ** EmotionName
    EmotionName (..),

    -- ** FaceAttributes
    FaceAttributes (..),

    -- ** FaceSearchSortBy
    FaceSearchSortBy (..),

    -- ** GenderType
    GenderType (..),

    -- ** LabelDetectionSortBy
    LabelDetectionSortBy (..),

    -- ** LandmarkType
    LandmarkType (..),

    -- ** OrientationCorrection
    OrientationCorrection (..),

    -- ** PersonTrackingSortBy
    PersonTrackingSortBy (..),

    -- ** ProjectStatus
    ProjectStatus (..),

    -- ** ProjectVersionStatus
    ProjectVersionStatus (..),

    -- ** ProtectiveEquipmentType
    ProtectiveEquipmentType (..),

    -- ** QualityFilter
    QualityFilter (..),

    -- ** Reason
    Reason (..),

    -- ** SegmentType
    SegmentType (..),

    -- ** StreamProcessorStatus
    StreamProcessorStatus (..),

    -- ** TechnicalCueType
    TechnicalCueType (..),

    -- ** TextTypes
    TextTypes (..),

    -- ** VideoJobStatus
    VideoJobStatus (..),

    -- ** AgeRange
    AgeRange,
    ageRange,
    arHigh,
    arLow,

    -- ** Asset
    Asset,
    asset,
    aGroundTruthManifest,

    -- ** AudioMetadata
    AudioMetadata,
    audioMetadata,
    amCodec,
    amSampleRate,
    amDurationMillis,
    amNumberOfChannels,

    -- ** Beard
    Beard,
    beard,
    bConfidence,
    bValue,

    -- ** BoundingBox
    BoundingBox,
    boundingBox,
    bbHeight,
    bbWidth,
    bbTop,
    bbLeft,

    -- ** Celebrity
    Celebrity,
    celebrity,
    cURLs,
    cId,
    cMatchConfidence,
    cName,
    cFace,

    -- ** CelebrityDetail
    CelebrityDetail,
    celebrityDetail,
    cdURLs,
    cdId,
    cdBoundingBox,
    cdName,
    cdConfidence,
    cdFace,

    -- ** CelebrityRecognition
    CelebrityRecognition,
    celebrityRecognition,
    crTimestamp,
    crCelebrity,

    -- ** CompareFacesMatch
    CompareFacesMatch,
    compareFacesMatch,
    cfmSimilarity,
    cfmFace,

    -- ** ComparedFace
    ComparedFace,
    comparedFace,
    cfPose,
    cfLandmarks,
    cfBoundingBox,
    cfConfidence,
    cfQuality,

    -- ** ComparedSourceImageFace
    ComparedSourceImageFace,
    comparedSourceImageFace,
    csifBoundingBox,
    csifConfidence,

    -- ** ContentModerationDetection
    ContentModerationDetection,
    contentModerationDetection,
    cmdTimestamp,
    cmdModerationLabel,

    -- ** CoversBodyPart
    CoversBodyPart,
    coversBodyPart,
    cbpConfidence,
    cbpValue,

    -- ** CustomLabel
    CustomLabel,
    customLabel,
    clName,
    clConfidence,
    clGeometry,

    -- ** DetectTextFilters
    DetectTextFilters,
    detectTextFilters,
    dtfRegionsOfInterest,
    dtfWordFilter,

    -- ** DetectionFilter
    DetectionFilter,
    detectionFilter,
    dfMinBoundingBoxWidth,
    dfMinConfidence,
    dfMinBoundingBoxHeight,

    -- ** Emotion
    Emotion,
    emotion,
    eConfidence,
    eType,

    -- ** EquipmentDetection
    EquipmentDetection,
    equipmentDetection,
    edCoversBodyPart,
    edBoundingBox,
    edConfidence,
    edType,

    -- ** EvaluationResult
    EvaluationResult,
    evaluationResult,
    erF1Score,
    erSummary,

    -- ** EyeOpen
    EyeOpen,
    eyeOpen,
    eoConfidence,
    eoValue,

    -- ** Eyeglasses
    Eyeglasses,
    eyeglasses,
    eyeConfidence,
    eyeValue,

    -- ** Face
    Face,
    face,
    fFaceId,
    fImageId,
    fExternalImageId,
    fBoundingBox,
    fConfidence,

    -- ** FaceDetail
    FaceDetail,
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

    -- ** FaceDetection
    FaceDetection,
    faceDetection,
    fdFace,
    fdTimestamp,

    -- ** FaceMatch
    FaceMatch,
    faceMatch,
    fmSimilarity,
    fmFace,

    -- ** FaceRecord
    FaceRecord,
    faceRecord,
    frFaceDetail,
    frFace,

    -- ** FaceSearchSettings
    FaceSearchSettings,
    faceSearchSettings,
    fssCollectionId,
    fssFaceMatchThreshold,

    -- ** Gender
    Gender,
    gender,
    gConfidence,
    gValue,

    -- ** Geometry
    Geometry,
    geometry,
    gPolygon,
    gBoundingBox,

    -- ** GroundTruthManifest
    GroundTruthManifest,
    groundTruthManifest,
    gtmS3Object,

    -- ** HumanLoopActivationOutput
    HumanLoopActivationOutput,
    humanLoopActivationOutput,
    hlaoHumanLoopActivationReasons,
    hlaoHumanLoopARN,
    hlaoHumanLoopActivationConditionsEvaluationResults,

    -- ** HumanLoopConfig
    HumanLoopConfig,
    humanLoopConfig,
    hlcDataAttributes,
    hlcHumanLoopName,
    hlcFlowDefinitionARN,

    -- ** HumanLoopDataAttributes
    HumanLoopDataAttributes,
    humanLoopDataAttributes,
    hldaContentClassifiers,

    -- ** Image
    Image,
    image,
    iBytes,
    iS3Object,

    -- ** ImageQuality
    ImageQuality,
    imageQuality,
    iqBrightness,
    iqSharpness,

    -- ** Instance
    Instance,
    instance',
    iBoundingBox,
    iConfidence,

    -- ** KinesisDataStream
    KinesisDataStream,
    kinesisDataStream,
    kdsARN,

    -- ** KinesisVideoStream
    KinesisVideoStream,
    kinesisVideoStream,
    kvsARN,

    -- ** Label
    Label,
    label,
    lParents,
    lInstances,
    lName,
    lConfidence,

    -- ** LabelDetection
    LabelDetection,
    labelDetection,
    ldLabel,
    ldTimestamp,

    -- ** Landmark
    Landmark,
    landmark,
    lY,
    lX,
    lType,

    -- ** ModerationLabel
    ModerationLabel,
    moderationLabel,
    mlName,
    mlConfidence,
    mlParentName,

    -- ** MouthOpen
    MouthOpen,
    mouthOpen,
    moConfidence,
    moValue,

    -- ** Mustache
    Mustache,
    mustache,
    mConfidence,
    mValue,

    -- ** NotificationChannel
    NotificationChannel,
    notificationChannel,
    ncSNSTopicARN,
    ncRoleARN,

    -- ** OutputConfig
    OutputConfig,
    outputConfig,
    ocS3Bucket,
    ocS3KeyPrefix,

    -- ** Parent
    Parent,
    parent,
    pName,

    -- ** PersonDetail
    PersonDetail,
    personDetail,
    pdBoundingBox,
    pdFace,
    pdIndex,

    -- ** PersonDetection
    PersonDetection,
    personDetection,
    pdTimestamp,
    pdPerson,

    -- ** PersonMatch
    PersonMatch,
    personMatch,
    pmFaceMatches,
    pmTimestamp,
    pmPerson,

    -- ** Point
    Point,
    point,
    pY,
    pX,

    -- ** Pose
    Pose,
    pose,
    pYaw,
    pPitch,
    pRoll,

    -- ** ProjectDescription
    ProjectDescription,
    projectDescription,
    pdCreationTimestamp,
    pdStatus,
    pdProjectARN,

    -- ** ProjectVersionDescription
    ProjectVersionDescription,
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

    -- ** ProtectiveEquipmentBodyPart
    ProtectiveEquipmentBodyPart,
    protectiveEquipmentBodyPart,
    pebpEquipmentDetections,
    pebpName,
    pebpConfidence,

    -- ** ProtectiveEquipmentPerson
    ProtectiveEquipmentPerson,
    protectiveEquipmentPerson,
    pepId,
    pepBoundingBox,
    pepBodyParts,
    pepConfidence,

    -- ** ProtectiveEquipmentSummarizationAttributes
    ProtectiveEquipmentSummarizationAttributes,
    protectiveEquipmentSummarizationAttributes,
    pesaMinConfidence,
    pesaRequiredEquipmentTypes,

    -- ** ProtectiveEquipmentSummary
    ProtectiveEquipmentSummary,
    protectiveEquipmentSummary,
    pesPersonsWithRequiredEquipment,
    pesPersonsIndeterminate,
    pesPersonsWithoutRequiredEquipment,

    -- ** RegionOfInterest
    RegionOfInterest,
    regionOfInterest,
    roiBoundingBox,

    -- ** S3Object
    S3Object,
    s3Object,
    soVersion,
    soName,
    soBucket,

    -- ** SegmentDetection
    SegmentDetection,
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

    -- ** SegmentTypeInfo
    SegmentTypeInfo,
    segmentTypeInfo,
    stiModelVersion,
    stiType,

    -- ** ShotSegment
    ShotSegment,
    shotSegment,
    ssConfidence,
    ssIndex,

    -- ** Smile
    Smile,
    smile,
    smiConfidence,
    smiValue,

    -- ** StartSegmentDetectionFilters
    StartSegmentDetectionFilters,
    startSegmentDetectionFilters,
    ssdfTechnicalCueFilter,
    ssdfShotFilter,

    -- ** StartShotDetectionFilter
    StartShotDetectionFilter,
    startShotDetectionFilter,
    ssdfMinSegmentConfidence,

    -- ** StartTechnicalCueDetectionFilter
    StartTechnicalCueDetectionFilter,
    startTechnicalCueDetectionFilter,
    stcdfMinSegmentConfidence,

    -- ** StartTextDetectionFilters
    StartTextDetectionFilters,
    startTextDetectionFilters,
    stdfRegionsOfInterest,
    stdfWordFilter,

    -- ** StreamProcessor
    StreamProcessor,
    streamProcessor,
    spStatus,
    spName,

    -- ** StreamProcessorInput
    StreamProcessorInput,
    streamProcessorInput,
    spiKinesisVideoStream,

    -- ** StreamProcessorOutput
    StreamProcessorOutput,
    streamProcessorOutput,
    spoKinesisDataStream,

    -- ** StreamProcessorSettings
    StreamProcessorSettings,
    streamProcessorSettings,
    spsFaceSearch,

    -- ** Summary
    Summary,
    summary,
    sS3Object,

    -- ** Sunglasses
    Sunglasses,
    sunglasses,
    sConfidence,
    sValue,

    -- ** TechnicalCueSegment
    TechnicalCueSegment,
    technicalCueSegment,
    tcsConfidence,
    tcsType,

    -- ** TestingData
    TestingData,
    testingData,
    tdAutoCreate,
    tdAssets,

    -- ** TestingDataResult
    TestingDataResult,
    testingDataResult,
    tdrInput,
    tdrOutput,
    tdrValidation,

    -- ** TextDetection
    TextDetection,
    textDetection,
    tdDetectedText,
    tdId,
    tdConfidence,
    tdParentId,
    tdType,
    tdGeometry,

    -- ** TextDetectionResult
    TextDetectionResult,
    textDetectionResult,
    tdrTextDetection,
    tdrTimestamp,

    -- ** TrainingData
    TrainingData,
    trainingData,
    tAssets,

    -- ** TrainingDataResult
    TrainingDataResult,
    trainingDataResult,
    tInput,
    tOutput,
    tValidation,

    -- ** UnindexedFace
    UnindexedFace,
    unindexedFace,
    ufFaceDetail,
    ufReasons,

    -- ** ValidationData
    ValidationData,
    validationData,
    vdAssets,

    -- ** Video
    Video,
    video,
    vS3Object,

    -- ** VideoMetadata
    VideoMetadata,
    videoMetadata,
    vmCodec,
    vmFormat,
    vmFrameHeight,
    vmFrameRate,
    vmFrameWidth,
    vmDurationMillis,
  )
where

import Network.AWS.Rekognition.CompareFaces
import Network.AWS.Rekognition.CreateCollection
import Network.AWS.Rekognition.CreateProject
import Network.AWS.Rekognition.CreateProjectVersion
import Network.AWS.Rekognition.CreateStreamProcessor
import Network.AWS.Rekognition.DeleteCollection
import Network.AWS.Rekognition.DeleteFaces
import Network.AWS.Rekognition.DeleteProject
import Network.AWS.Rekognition.DeleteProjectVersion
import Network.AWS.Rekognition.DeleteStreamProcessor
import Network.AWS.Rekognition.DescribeCollection
import Network.AWS.Rekognition.DescribeProjectVersions
import Network.AWS.Rekognition.DescribeProjects
import Network.AWS.Rekognition.DescribeStreamProcessor
import Network.AWS.Rekognition.DetectCustomLabels
import Network.AWS.Rekognition.DetectFaces
import Network.AWS.Rekognition.DetectLabels
import Network.AWS.Rekognition.DetectModerationLabels
import Network.AWS.Rekognition.DetectProtectiveEquipment
import Network.AWS.Rekognition.DetectText
import Network.AWS.Rekognition.GetCelebrityInfo
import Network.AWS.Rekognition.GetCelebrityRecognition
import Network.AWS.Rekognition.GetContentModeration
import Network.AWS.Rekognition.GetFaceDetection
import Network.AWS.Rekognition.GetFaceSearch
import Network.AWS.Rekognition.GetLabelDetection
import Network.AWS.Rekognition.GetPersonTracking
import Network.AWS.Rekognition.GetSegmentDetection
import Network.AWS.Rekognition.GetTextDetection
import Network.AWS.Rekognition.IndexFaces
import Network.AWS.Rekognition.ListCollections
import Network.AWS.Rekognition.ListFaces
import Network.AWS.Rekognition.ListStreamProcessors
import Network.AWS.Rekognition.RecognizeCelebrities
import Network.AWS.Rekognition.SearchFaces
import Network.AWS.Rekognition.SearchFacesByImage
import Network.AWS.Rekognition.StartCelebrityRecognition
import Network.AWS.Rekognition.StartContentModeration
import Network.AWS.Rekognition.StartFaceDetection
import Network.AWS.Rekognition.StartFaceSearch
import Network.AWS.Rekognition.StartLabelDetection
import Network.AWS.Rekognition.StartPersonTracking
import Network.AWS.Rekognition.StartProjectVersion
import Network.AWS.Rekognition.StartSegmentDetection
import Network.AWS.Rekognition.StartStreamProcessor
import Network.AWS.Rekognition.StartTextDetection
import Network.AWS.Rekognition.StopProjectVersion
import Network.AWS.Rekognition.StopStreamProcessor
import Network.AWS.Rekognition.Types
import Network.AWS.Rekognition.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Rekognition'.

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
