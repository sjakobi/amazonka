{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types
  ( -- * Service Configuration
    sageMaker,

    -- * Errors
    _ResourceInUse,
    _ResourceLimitExceeded,
    _ConflictException,
    _ResourceNotFound,

    -- * AWSManagedHumanLoopRequestSource
    AWSManagedHumanLoopRequestSource (..),

    -- * ActionStatus
    ActionStatus (..),

    -- * AlgorithmSortBy
    AlgorithmSortBy (..),

    -- * AlgorithmStatus
    AlgorithmStatus (..),

    -- * AppImageConfigSortKey
    AppImageConfigSortKey (..),

    -- * AppInstanceType
    AppInstanceType (..),

    -- * AppNetworkAccessType
    AppNetworkAccessType (..),

    -- * AppSortKey
    AppSortKey (..),

    -- * AppStatus
    AppStatus (..),

    -- * AppType
    AppType (..),

    -- * ArtifactSourceIdType
    ArtifactSourceIdType (..),

    -- * AssemblyType
    AssemblyType (..),

    -- * AssociationEdgeType
    AssociationEdgeType (..),

    -- * AthenaResultCompressionType
    AthenaResultCompressionType (..),

    -- * AthenaResultFormat
    AthenaResultFormat (..),

    -- * AuthMode
    AuthMode (..),

    -- * AutoMLJobObjectiveType
    AutoMLJobObjectiveType (..),

    -- * AutoMLJobSecondaryStatus
    AutoMLJobSecondaryStatus (..),

    -- * AutoMLJobStatus
    AutoMLJobStatus (..),

    -- * AutoMLMetricEnum
    AutoMLMetricEnum (..),

    -- * AutoMLS3DataType
    AutoMLS3DataType (..),

    -- * AutoMLSortBy
    AutoMLSortBy (..),

    -- * AutoMLSortOrder
    AutoMLSortOrder (..),

    -- * BatchStrategy
    BatchStrategy (..),

    -- * BooleanOperator
    BooleanOperator (..),

    -- * CandidateSortBy
    CandidateSortBy (..),

    -- * CandidateStatus
    CandidateStatus (..),

    -- * CandidateStepType
    CandidateStepType (..),

    -- * CapacitySizeType
    CapacitySizeType (..),

    -- * CaptureMode
    CaptureMode (..),

    -- * CaptureStatus
    CaptureStatus (..),

    -- * CodeRepositorySortBy
    CodeRepositorySortBy (..),

    -- * CodeRepositorySortOrder
    CodeRepositorySortOrder (..),

    -- * CompilationJobStatus
    CompilationJobStatus (..),

    -- * CompressionType
    CompressionType (..),

    -- * ConditionOutcome
    ConditionOutcome (..),

    -- * ContainerMode
    ContainerMode (..),

    -- * ContentClassifier
    ContentClassifier (..),

    -- * DataDistributionType
    DataDistributionType (..),

    -- * DetailedAlgorithmStatus
    DetailedAlgorithmStatus (..),

    -- * DetailedModelPackageStatus
    DetailedModelPackageStatus (..),

    -- * DirectInternetAccess
    DirectInternetAccess (..),

    -- * DomainStatus
    DomainStatus (..),

    -- * EdgePackagingJobStatus
    EdgePackagingJobStatus (..),

    -- * EndpointConfigSortKey
    EndpointConfigSortKey (..),

    -- * EndpointSortKey
    EndpointSortKey (..),

    -- * EndpointStatus
    EndpointStatus (..),

    -- * ExecutionStatus
    ExecutionStatus (..),

    -- * FeatureGroupSortBy
    FeatureGroupSortBy (..),

    -- * FeatureGroupSortOrder
    FeatureGroupSortOrder (..),

    -- * FeatureGroupStatus
    FeatureGroupStatus (..),

    -- * FeatureType
    FeatureType (..),

    -- * FileSystemAccessMode
    FileSystemAccessMode (..),

    -- * FileSystemType
    FileSystemType (..),

    -- * FlowDefinitionStatus
    FlowDefinitionStatus (..),

    -- * Framework
    Framework (..),

    -- * HumanTaskUiStatus
    HumanTaskUiStatus (..),

    -- * HyperParameterScalingType
    HyperParameterScalingType (..),

    -- * HyperParameterTuningJobObjectiveType
    HyperParameterTuningJobObjectiveType (..),

    -- * HyperParameterTuningJobSortByOptions
    HyperParameterTuningJobSortByOptions (..),

    -- * HyperParameterTuningJobStatus
    HyperParameterTuningJobStatus (..),

    -- * HyperParameterTuningJobStrategyType
    HyperParameterTuningJobStrategyType (..),

    -- * HyperParameterTuningJobWarmStartType
    HyperParameterTuningJobWarmStartType (..),

    -- * ImageSortBy
    ImageSortBy (..),

    -- * ImageSortOrder
    ImageSortOrder (..),

    -- * ImageStatus
    ImageStatus (..),

    -- * ImageVersionSortBy
    ImageVersionSortBy (..),

    -- * ImageVersionSortOrder
    ImageVersionSortOrder (..),

    -- * ImageVersionStatus
    ImageVersionStatus (..),

    -- * InferenceExecutionMode
    InferenceExecutionMode (..),

    -- * InputMode
    InputMode (..),

    -- * InstanceType
    InstanceType (..),

    -- * JoinSource
    JoinSource (..),

    -- * LabelingJobStatus
    LabelingJobStatus (..),

    -- * ListCompilationJobsSortBy
    ListCompilationJobsSortBy (..),

    -- * ListDeviceFleetsSortBy
    ListDeviceFleetsSortBy (..),

    -- * ListEdgePackagingJobsSortBy
    ListEdgePackagingJobsSortBy (..),

    -- * ListLabelingJobsForWorkteamSortByOptions
    ListLabelingJobsForWorkteamSortByOptions (..),

    -- * ListWorkforcesSortByOptions
    ListWorkforcesSortByOptions (..),

    -- * ListWorkteamsSortByOptions
    ListWorkteamsSortByOptions (..),

    -- * ModelApprovalStatus
    ModelApprovalStatus (..),

    -- * ModelCacheSetting
    ModelCacheSetting (..),

    -- * ModelPackageGroupSortBy
    ModelPackageGroupSortBy (..),

    -- * ModelPackageGroupStatus
    ModelPackageGroupStatus (..),

    -- * ModelPackageSortBy
    ModelPackageSortBy (..),

    -- * ModelPackageStatus
    ModelPackageStatus (..),

    -- * ModelPackageType
    ModelPackageType (..),

    -- * ModelSortKey
    ModelSortKey (..),

    -- * MonitoringExecutionSortKey
    MonitoringExecutionSortKey (..),

    -- * MonitoringJobDefinitionSortKey
    MonitoringJobDefinitionSortKey (..),

    -- * MonitoringProblemType
    MonitoringProblemType (..),

    -- * MonitoringScheduleSortKey
    MonitoringScheduleSortKey (..),

    -- * MonitoringType
    MonitoringType (..),

    -- * NotebookInstanceAcceleratorType
    NotebookInstanceAcceleratorType (..),

    -- * NotebookInstanceLifecycleConfigSortKey
    NotebookInstanceLifecycleConfigSortKey (..),

    -- * NotebookInstanceLifecycleConfigSortOrder
    NotebookInstanceLifecycleConfigSortOrder (..),

    -- * NotebookInstanceSortKey
    NotebookInstanceSortKey (..),

    -- * NotebookInstanceSortOrder
    NotebookInstanceSortOrder (..),

    -- * NotebookInstanceStatus
    NotebookInstanceStatus (..),

    -- * NotebookOutputOption
    NotebookOutputOption (..),

    -- * ObjectiveStatus
    ObjectiveStatus (..),

    -- * OfflineStoreStatusValue
    OfflineStoreStatusValue (..),

    -- * Operator
    Operator (..),

    -- * OrderKey
    OrderKey (..),

    -- * ParameterType
    ParameterType (..),

    -- * PipelineExecutionStatus
    PipelineExecutionStatus (..),

    -- * PipelineStatus
    PipelineStatus (..),

    -- * ProblemType
    ProblemType (..),

    -- * ProcessingInstanceType
    ProcessingInstanceType (..),

    -- * ProcessingJobStatus
    ProcessingJobStatus (..),

    -- * ProcessingS3CompressionType
    ProcessingS3CompressionType (..),

    -- * ProcessingS3DataDistributionType
    ProcessingS3DataDistributionType (..),

    -- * ProcessingS3DataType
    ProcessingS3DataType (..),

    -- * ProcessingS3InputMode
    ProcessingS3InputMode (..),

    -- * ProcessingS3UploadMode
    ProcessingS3UploadMode (..),

    -- * ProductionVariantAcceleratorType
    ProductionVariantAcceleratorType (..),

    -- * ProductionVariantInstanceType
    ProductionVariantInstanceType (..),

    -- * ProfilingStatus
    ProfilingStatus (..),

    -- * ProjectSortBy
    ProjectSortBy (..),

    -- * ProjectSortOrder
    ProjectSortOrder (..),

    -- * ProjectStatus
    ProjectStatus (..),

    -- * RecordWrapper
    RecordWrapper (..),

    -- * RedshiftResultCompressionType
    RedshiftResultCompressionType (..),

    -- * RedshiftResultFormat
    RedshiftResultFormat (..),

    -- * RepositoryAccessMode
    RepositoryAccessMode (..),

    -- * ResourceType
    ResourceType (..),

    -- * RetentionType
    RetentionType (..),

    -- * RootAccess
    RootAccess (..),

    -- * RuleEvaluationStatus
    RuleEvaluationStatus (..),

    -- * S3DataDistribution
    S3DataDistribution (..),

    -- * S3DataType
    S3DataType (..),

    -- * SagemakerServicecatalogStatus
    SagemakerServicecatalogStatus (..),

    -- * ScheduleStatus
    ScheduleStatus (..),

    -- * SearchSortOrder
    SearchSortOrder (..),

    -- * SecondaryStatus
    SecondaryStatus (..),

    -- * SortActionsBy
    SortActionsBy (..),

    -- * SortArtifactsBy
    SortArtifactsBy (..),

    -- * SortAssociationsBy
    SortAssociationsBy (..),

    -- * SortBy
    SortBy (..),

    -- * SortContextsBy
    SortContextsBy (..),

    -- * SortExperimentsBy
    SortExperimentsBy (..),

    -- * SortOrder
    SortOrder (..),

    -- * SortPipelineExecutionsBy
    SortPipelineExecutionsBy (..),

    -- * SortPipelinesBy
    SortPipelinesBy (..),

    -- * SortTrialComponentsBy
    SortTrialComponentsBy (..),

    -- * SortTrialsBy
    SortTrialsBy (..),

    -- * SplitType
    SplitType (..),

    -- * StepStatus
    StepStatus (..),

    -- * TargetDevice
    TargetDevice (..),

    -- * TargetPlatformAccelerator
    TargetPlatformAccelerator (..),

    -- * TargetPlatformArch
    TargetPlatformArch (..),

    -- * TargetPlatformOS
    TargetPlatformOS (..),

    -- * TrafficRoutingConfigType
    TrafficRoutingConfigType (..),

    -- * TrainingInputMode
    TrainingInputMode (..),

    -- * TrainingInstanceType
    TrainingInstanceType (..),

    -- * TrainingJobEarlyStoppingType
    TrainingJobEarlyStoppingType (..),

    -- * TrainingJobSortByOptions
    TrainingJobSortByOptions (..),

    -- * TrainingJobStatus
    TrainingJobStatus (..),

    -- * TransformInstanceType
    TransformInstanceType (..),

    -- * TransformJobStatus
    TransformJobStatus (..),

    -- * TrialComponentPrimaryStatus
    TrialComponentPrimaryStatus (..),

    -- * UserProfileSortKey
    UserProfileSortKey (..),

    -- * UserProfileStatus
    UserProfileStatus (..),

    -- * VariantPropertyType
    VariantPropertyType (..),

    -- * ActionSource
    ActionSource (..),
    actionSource,
    aSourceId,
    aSourceType,
    aSourceURI,

    -- * ActionSummary
    ActionSummary (..),
    actionSummary,
    actStatus,
    actCreationTime,
    actActionName,
    actActionType,
    actActionARN,
    actSource,
    actLastModifiedTime,

    -- * AgentVersion
    AgentVersion (..),
    agentVersion,
    avVersion,
    avAgentCount,

    -- * Alarm
    Alarm (..),
    alarm,
    aAlarmName,

    -- * AlgorithmSpecification
    AlgorithmSpecification (..),
    algorithmSpecification,
    asTrainingImage,
    asEnableSageMakerMetricsTimeSeries,
    asMetricDefinitions,
    asAlgorithmName,
    asTrainingInputMode,

    -- * AlgorithmStatusDetails
    AlgorithmStatusDetails (..),
    algorithmStatusDetails,
    asdValidationStatuses,
    asdImageScanStatuses,

    -- * AlgorithmStatusItem
    AlgorithmStatusItem (..),
    algorithmStatusItem,
    asiFailureReason,
    asiName,
    asiStatus,

    -- * AlgorithmSummary
    AlgorithmSummary (..),
    algorithmSummary,
    aAlgorithmDescription,
    aAlgorithmName,
    aAlgorithmARN,
    aCreationTime,
    aAlgorithmStatus,

    -- * AlgorithmValidationProfile
    AlgorithmValidationProfile (..),
    algorithmValidationProfile,
    avpTransformJobDefinition,
    avpProfileName,
    avpTrainingJobDefinition,

    -- * AlgorithmValidationSpecification
    AlgorithmValidationSpecification (..),
    algorithmValidationSpecification,
    avsValidationRole,
    avsValidationProfiles,

    -- * AnnotationConsolidationConfig
    AnnotationConsolidationConfig (..),
    annotationConsolidationConfig,
    accAnnotationConsolidationLambdaARN,

    -- * AppDetails
    AppDetails (..),
    appDetails,
    adStatus,
    adCreationTime,
    adAppType,
    adAppName,
    adUserProfileName,
    adDomainId,

    -- * AppImageConfigDetails
    AppImageConfigDetails (..),
    appImageConfigDetails,
    aicdCreationTime,
    aicdAppImageConfigARN,
    aicdKernelGatewayImageConfig,
    aicdAppImageConfigName,
    aicdLastModifiedTime,

    -- * AppSpecification
    AppSpecification (..),
    appSpecification,
    asContainerArguments,
    asContainerEntrypoint,
    asImageURI,

    -- * ArtifactSource
    ArtifactSource (..),
    artifactSource,
    asSourceTypes,
    asSourceURI,

    -- * ArtifactSourceType
    ArtifactSourceType (..),
    artifactSourceType,
    astSourceIdType,
    astValue,

    -- * ArtifactSummary
    ArtifactSummary (..),
    artifactSummary,
    asCreationTime,
    asArtifactName,
    asArtifactType,
    asArtifactARN,
    asSource,
    asLastModifiedTime,

    -- * AssociationSummary
    AssociationSummary (..),
    associationSummary,
    assDestinationType,
    assCreationTime,
    assDestinationARN,
    assDestinationName,
    assSourceName,
    assAssociationType,
    assCreatedBy,
    assSourceARN,
    assSourceType,

    -- * AthenaDatasetDefinition
    AthenaDatasetDefinition (..),
    athenaDatasetDefinition,
    addOutputCompression,
    addKMSKeyId,
    addWorkGroup,
    addCatalog,
    addDatabase,
    addQueryString,
    addOutputS3URI,
    addOutputFormat,

    -- * AutoMLCandidate
    AutoMLCandidate (..),
    autoMLCandidate,
    amlcEndTime,
    amlcInferenceContainers,
    amlcFailureReason,
    amlcFinalAutoMLJobObjectiveMetric,
    amlcCandidateName,
    amlcObjectiveStatus,
    amlcCandidateSteps,
    amlcCandidateStatus,
    amlcCreationTime,
    amlcLastModifiedTime,

    -- * AutoMLCandidateStep
    AutoMLCandidateStep (..),
    autoMLCandidateStep,
    amlcsCandidateStepType,
    amlcsCandidateStepARN,
    amlcsCandidateStepName,

    -- * AutoMLChannel
    AutoMLChannel (..),
    autoMLChannel,
    amlcCompressionType,
    amlcDataSource,
    amlcTargetAttributeName,

    -- * AutoMLContainerDefinition
    AutoMLContainerDefinition (..),
    autoMLContainerDefinition,
    amlcdEnvironment,
    amlcdImage,
    amlcdModelDataURL,

    -- * AutoMLDataSource
    AutoMLDataSource (..),
    autoMLDataSource,
    amldsS3DataSource,

    -- * AutoMLJobArtifacts
    AutoMLJobArtifacts (..),
    autoMLJobArtifacts,
    amljaCandidateDefinitionNotebookLocation,
    amljaDataExplorationNotebookLocation,

    -- * AutoMLJobCompletionCriteria
    AutoMLJobCompletionCriteria (..),
    autoMLJobCompletionCriteria,
    amljccMaxRuntimePerTrainingJobInSeconds,
    amljccMaxAutoMLJobRuntimeInSeconds,
    amljccMaxCandidates,

    -- * AutoMLJobConfig
    AutoMLJobConfig (..),
    autoMLJobConfig,
    amljcSecurityConfig,
    amljcCompletionCriteria,

    -- * AutoMLJobObjective
    AutoMLJobObjective (..),
    autoMLJobObjective,
    amljoMetricName,

    -- * AutoMLJobSummary
    AutoMLJobSummary (..),
    autoMLJobSummary,
    amljsEndTime,
    amljsFailureReason,
    amljsAutoMLJobName,
    amljsAutoMLJobARN,
    amljsAutoMLJobStatus,
    amljsAutoMLJobSecondaryStatus,
    amljsCreationTime,
    amljsLastModifiedTime,

    -- * AutoMLOutputDataConfig
    AutoMLOutputDataConfig (..),
    autoMLOutputDataConfig,
    amlodcKMSKeyId,
    amlodcS3OutputPath,

    -- * AutoMLS3DataSource
    AutoMLS3DataSource (..),
    autoMLS3DataSource,
    amlsdsS3DataType,
    amlsdsS3URI,

    -- * AutoMLSecurityConfig
    AutoMLSecurityConfig (..),
    autoMLSecurityConfig,
    amlscVPCConfig,
    amlscEnableInterContainerTrafficEncryption,
    amlscVolumeKMSKeyId,

    -- * AutoRollbackConfig
    AutoRollbackConfig (..),
    autoRollbackConfig,
    arcAlarms,

    -- * Bias
    Bias (..),
    bias,
    bReport,

    -- * BlueGreenUpdatePolicy
    BlueGreenUpdatePolicy (..),
    blueGreenUpdatePolicy,
    bgupTerminationWaitInSeconds,
    bgupMaximumExecutionTimeoutInSeconds,
    bgupTrafficRoutingConfiguration,

    -- * CacheHitResult
    CacheHitResult (..),
    cacheHitResult,
    chrSourcePipelineExecutionARN,

    -- * CapacitySize
    CapacitySize (..),
    capacitySize,
    csType,
    csValue,

    -- * CaptureContentTypeHeader
    CaptureContentTypeHeader (..),
    captureContentTypeHeader,
    ccthCSVContentTypes,
    ccthJSONContentTypes,

    -- * CaptureOption
    CaptureOption (..),
    captureOption,
    coCaptureMode,

    -- * CategoricalParameterRange
    CategoricalParameterRange (..),
    categoricalParameterRange,
    cprName,
    cprValues,

    -- * CategoricalParameterRangeSpecification
    CategoricalParameterRangeSpecification (..),
    categoricalParameterRangeSpecification,
    cprsValues,

    -- * Channel
    Channel (..),
    channel,
    cContentType,
    cRecordWrapperType,
    cShuffleConfig,
    cCompressionType,
    cInputMode,
    cChannelName,
    cDataSource,

    -- * ChannelSpecification
    ChannelSpecification (..),
    channelSpecification,
    csDescription,
    csIsRequired,
    csSupportedCompressionTypes,
    csName,
    csSupportedContentTypes,
    csSupportedInputModes,

    -- * CheckpointConfig
    CheckpointConfig (..),
    checkpointConfig,
    ccLocalPath,
    ccS3URI,

    -- * CodeRepositorySummary
    CodeRepositorySummary (..),
    codeRepositorySummary,
    crsGitConfig,
    crsCodeRepositoryName,
    crsCodeRepositoryARN,
    crsCreationTime,
    crsLastModifiedTime,

    -- * CognitoConfig
    CognitoConfig (..),
    cognitoConfig,
    ccUserPool,
    ccClientId,

    -- * CognitoMemberDefinition
    CognitoMemberDefinition (..),
    cognitoMemberDefinition,
    cmdUserPool,
    cmdUserGroup,
    cmdClientId,

    -- * CollectionConfiguration
    CollectionConfiguration (..),
    collectionConfiguration,
    ccCollectionParameters,
    ccCollectionName,

    -- * CompilationJobSummary
    CompilationJobSummary (..),
    compilationJobSummary,
    cjsCompilationTargetPlatformArch,
    cjsCompilationStartTime,
    cjsCompilationTargetPlatformOS,
    cjsCompilationTargetPlatformAccelerator,
    cjsLastModifiedTime,
    cjsCompilationEndTime,
    cjsCompilationTargetDevice,
    cjsCompilationJobName,
    cjsCompilationJobARN,
    cjsCreationTime,
    cjsCompilationJobStatus,

    -- * ConditionStepMetadata
    ConditionStepMetadata (..),
    conditionStepMetadata,
    csmOutcome,

    -- * ContainerDefinition
    ContainerDefinition (..),
    containerDefinition,
    cdMultiModelConfig,
    cdModelDataURL,
    cdMode,
    cdContainerHostname,
    cdImageConfig,
    cdEnvironment,
    cdModelPackageName,
    cdImage,

    -- * ContextSource
    ContextSource (..),
    contextSource,
    csSourceId,
    csSourceType,
    csSourceURI,

    -- * ContextSummary
    ContextSummary (..),
    contextSummary,
    csContextType,
    csCreationTime,
    csContextName,
    csSource,
    csLastModifiedTime,
    csContextARN,

    -- * ContinuousParameterRange
    ContinuousParameterRange (..),
    continuousParameterRange,
    cScalingType,
    cName,
    cMinValue,
    cMaxValue,

    -- * ContinuousParameterRangeSpecification
    ContinuousParameterRangeSpecification (..),
    continuousParameterRangeSpecification,
    cprsMinValue,
    cprsMaxValue,

    -- * CustomImage
    CustomImage (..),
    customImage,
    ciImageVersionNumber,
    ciImageName,
    ciAppImageConfigName,

    -- * DataCaptureConfig
    DataCaptureConfig (..),
    dataCaptureConfig,
    dccCaptureContentTypeHeader,
    dccKMSKeyId,
    dccEnableCapture,
    dccInitialSamplingPercentage,
    dccDestinationS3URI,
    dccCaptureOptions,

    -- * DataCaptureConfigSummary
    DataCaptureConfigSummary (..),
    dataCaptureConfigSummary,
    dccsEnableCapture,
    dccsCaptureStatus,
    dccsCurrentSamplingPercentage,
    dccsDestinationS3URI,
    dccsKMSKeyId,

    -- * DataCatalogConfig
    DataCatalogConfig (..),
    dataCatalogConfig,
    dccTableName,
    dccCatalog,
    dccDatabase,

    -- * DataProcessing
    DataProcessing (..),
    dataProcessing,
    dpOutputFilter,
    dpJoinSource,
    dpInputFilter,

    -- * DataQualityAppSpecification
    DataQualityAppSpecification (..),
    dataQualityAppSpecification,
    dqasContainerArguments,
    dqasContainerEntrypoint,
    dqasPostAnalyticsProcessorSourceURI,
    dqasEnvironment,
    dqasRecordPreprocessorSourceURI,
    dqasImageURI,

    -- * DataQualityBaselineConfig
    DataQualityBaselineConfig (..),
    dataQualityBaselineConfig,
    dqbcStatisticsResource,
    dqbcConstraintsResource,
    dqbcBaseliningJobName,

    -- * DataQualityJobInput
    DataQualityJobInput (..),
    dataQualityJobInput,
    dqjiEndpointInput,

    -- * DataSource
    DataSource (..),
    dataSource,
    dsFileSystemDataSource,
    dsS3DataSource,

    -- * DatasetDefinition
    DatasetDefinition (..),
    datasetDefinition,
    ddRedshiftDatasetDefinition,
    ddAthenaDatasetDefinition,
    ddLocalPath,
    ddInputMode,
    ddDataDistributionType,

    -- * DebugHookConfig
    DebugHookConfig (..),
    debugHookConfig,
    dhcCollectionConfigurations,
    dhcHookParameters,
    dhcLocalPath,
    dhcS3OutputPath,

    -- * DebugRuleConfiguration
    DebugRuleConfiguration (..),
    debugRuleConfiguration,
    drcRuleParameters,
    drcInstanceType,
    drcS3OutputPath,
    drcVolumeSizeInGB,
    drcLocalPath,
    drcRuleConfigurationName,
    drcRuleEvaluatorImage,

    -- * DebugRuleEvaluationStatus
    DebugRuleEvaluationStatus (..),
    debugRuleEvaluationStatus,
    dresRuleConfigurationName,
    dresStatusDetails,
    dresRuleEvaluationStatus,
    dresLastModifiedTime,
    dresRuleEvaluationJobARN,

    -- * DeployedImage
    DeployedImage (..),
    deployedImage,
    diSpecifiedImage,
    diResolvedImage,
    diResolutionTime,

    -- * DeploymentConfig
    DeploymentConfig (..),
    deploymentConfig,
    dcAutoRollbackConfiguration,
    dcBlueGreenUpdatePolicy,

    -- * DesiredWeightAndCapacity
    DesiredWeightAndCapacity (..),
    desiredWeightAndCapacity,
    dwacDesiredInstanceCount,
    dwacDesiredWeight,
    dwacVariantName,

    -- * Device
    Device (..),
    device,
    dIotThingName,
    dDescription,
    dDeviceName,

    -- * DeviceFleetSummary
    DeviceFleetSummary (..),
    deviceFleetSummary,
    dfsCreationTime,
    dfsLastModifiedTime,
    dfsDeviceFleetARN,
    dfsDeviceFleetName,

    -- * DeviceStats
    DeviceStats (..),
    deviceStats,
    dsConnectedDeviceCount,
    dsRegisteredDeviceCount,

    -- * DeviceSummary
    DeviceSummary (..),
    deviceSummary,
    dsDeviceFleetName,
    dsLatestHeartbeat,
    dsRegistrationTime,
    dsModels,
    dsIotThingName,
    dsDescription,
    dsDeviceName,
    dsDeviceARN,

    -- * DomainDetails
    DomainDetails (..),
    domainDetails,
    ddsStatus,
    ddsCreationTime,
    ddsDomainId,
    ddsDomainARN,
    ddsDomainName,
    ddsLastModifiedTime,
    ddsURL,

    -- * EdgeModel
    EdgeModel (..),
    edgeModel,
    emLatestInference,
    emLatestSampleTime,
    emModelName,
    emModelVersion,

    -- * EdgeModelStat
    EdgeModelStat (..),
    edgeModelStat,
    eModelName,
    eModelVersion,
    eOfflineDeviceCount,
    eConnectedDeviceCount,
    eActiveDeviceCount,
    eSamplingDeviceCount,

    -- * EdgeModelSummary
    EdgeModelSummary (..),
    edgeModelSummary,
    emsModelName,
    emsModelVersion,

    -- * EdgeOutputConfig
    EdgeOutputConfig (..),
    edgeOutputConfig,
    eocKMSKeyId,
    eocS3OutputLocation,

    -- * EdgePackagingJobSummary
    EdgePackagingJobSummary (..),
    edgePackagingJobSummary,
    epjsCreationTime,
    epjsCompilationJobName,
    epjsModelVersion,
    epjsLastModifiedTime,
    epjsModelName,
    epjsEdgePackagingJobARN,
    epjsEdgePackagingJobName,
    epjsEdgePackagingJobStatus,

    -- * Endpoint
    Endpoint (..),
    endpoint,
    endProductionVariants,
    endMonitoringSchedules,
    endFailureReason,
    endTags,
    endDataCaptureConfig,
    endEndpointName,
    endEndpointARN,
    endEndpointConfigName,
    endEndpointStatus,
    endCreationTime,
    endLastModifiedTime,

    -- * EndpointConfigSummary
    EndpointConfigSummary (..),
    endpointConfigSummary,
    ecsEndpointConfigName,
    ecsEndpointConfigARN,
    ecsCreationTime,

    -- * EndpointInput
    EndpointInput (..),
    endpointInput,
    eiEndTimeOffset,
    eiInferenceAttribute,
    eiS3InputMode,
    eiS3DataDistributionType,
    eiProbabilityAttribute,
    eiProbabilityThresholdAttribute,
    eiFeaturesAttribute,
    eiStartTimeOffset,
    eiEndpointName,
    eiLocalPath,

    -- * EndpointSummary
    EndpointSummary (..),
    endpointSummary,
    esEndpointName,
    esEndpointARN,
    esCreationTime,
    esLastModifiedTime,
    esEndpointStatus,

    -- * Experiment
    Experiment (..),
    experiment,
    eExperimentARN,
    eCreationTime,
    eSource,
    eTags,
    eLastModifiedTime,
    eExperimentName,
    eDescription,
    eCreatedBy,
    eLastModifiedBy,
    eDisplayName,

    -- * ExperimentConfig
    ExperimentConfig (..),
    experimentConfig,
    ecExperimentName,
    ecTrialComponentDisplayName,
    ecTrialName,

    -- * ExperimentSource
    ExperimentSource (..),
    experimentSource,
    esSourceType,
    esSourceARN,

    -- * ExperimentSummary
    ExperimentSummary (..),
    experimentSummary,
    expExperimentARN,
    expCreationTime,
    expExperimentSource,
    expLastModifiedTime,
    expExperimentName,
    expDisplayName,

    -- * Explainability
    Explainability (..),
    explainability,
    eReport,

    -- * FeatureDefinition
    FeatureDefinition (..),
    featureDefinition,
    fdFeatureType,
    fdFeatureName,

    -- * FeatureGroup
    FeatureGroup (..),
    featureGroup,
    fgFeatureGroupStatus,
    fgOfflineStoreConfig,
    fgCreationTime,
    fgRoleARN,
    fgFeatureGroupARN,
    fgRecordIdentifierFeatureName,
    fgFeatureDefinitions,
    fgOfflineStoreStatus,
    fgEventTimeFeatureName,
    fgFeatureGroupName,
    fgFailureReason,
    fgTags,
    fgDescription,
    fgOnlineStoreConfig,

    -- * FeatureGroupSummary
    FeatureGroupSummary (..),
    featureGroupSummary,
    fgsFeatureGroupStatus,
    fgsOfflineStoreStatus,
    fgsFeatureGroupName,
    fgsFeatureGroupARN,
    fgsCreationTime,

    -- * FileSystemConfig
    FileSystemConfig (..),
    fileSystemConfig,
    fscDefaultGid,
    fscMountPath,
    fscDefaultUid,

    -- * FileSystemDataSource
    FileSystemDataSource (..),
    fileSystemDataSource,
    fsdsFileSystemId,
    fsdsFileSystemAccessMode,
    fsdsFileSystemType,
    fsdsDirectoryPath,

    -- * Filter
    Filter (..),
    filter',
    fOperator,
    fValue,
    fName,

    -- * FinalAutoMLJobObjectiveMetric
    FinalAutoMLJobObjectiveMetric (..),
    finalAutoMLJobObjectiveMetric,
    famljomType,
    famljomMetricName,
    famljomValue,

    -- * FinalHyperParameterTuningJobObjectiveMetric
    FinalHyperParameterTuningJobObjectiveMetric (..),
    finalHyperParameterTuningJobObjectiveMetric,
    fhptjomType,
    fhptjomMetricName,
    fhptjomValue,

    -- * FlowDefinitionOutputConfig
    FlowDefinitionOutputConfig (..),
    flowDefinitionOutputConfig,
    fdocKMSKeyId,
    fdocS3OutputPath,

    -- * FlowDefinitionSummary
    FlowDefinitionSummary (..),
    flowDefinitionSummary,
    fdsFailureReason,
    fdsFlowDefinitionName,
    fdsFlowDefinitionARN,
    fdsFlowDefinitionStatus,
    fdsCreationTime,

    -- * GitConfig
    GitConfig (..),
    gitConfig,
    gcSecretARN,
    gcBranch,
    gcRepositoryURL,

    -- * GitConfigForUpdate
    GitConfigForUpdate (..),
    gitConfigForUpdate,
    gcfuSecretARN,

    -- * HumanLoopActivationConditionsConfig
    HumanLoopActivationConditionsConfig (..),
    humanLoopActivationConditionsConfig,
    hlaccHumanLoopActivationConditions,

    -- * HumanLoopActivationConfig
    HumanLoopActivationConfig (..),
    humanLoopActivationConfig,
    hlacHumanLoopActivationConditionsConfig,

    -- * HumanLoopConfig
    HumanLoopConfig (..),
    humanLoopConfig,
    hlcTaskKeywords,
    hlcTaskTimeLimitInSeconds,
    hlcTaskAvailabilityLifetimeInSeconds,
    hlcPublicWorkforceTaskPrice,
    hlcWorkteamARN,
    hlcHumanTaskUiARN,
    hlcTaskTitle,
    hlcTaskDescription,
    hlcTaskCount,

    -- * HumanLoopRequestSource
    HumanLoopRequestSource (..),
    humanLoopRequestSource,
    hlrsAWSManagedHumanLoopRequestSource,

    -- * HumanTaskConfig
    HumanTaskConfig (..),
    humanTaskConfig,
    htcTaskKeywords,
    htcTaskAvailabilityLifetimeInSeconds,
    htcMaxConcurrentTaskCount,
    htcPublicWorkforceTaskPrice,
    htcWorkteamARN,
    htcUiConfig,
    htcPreHumanTaskLambdaARN,
    htcTaskTitle,
    htcTaskDescription,
    htcNumberOfHumanWorkersPerDataObject,
    htcTaskTimeLimitInSeconds,
    htcAnnotationConsolidationConfig,

    -- * HumanTaskUiSummary
    HumanTaskUiSummary (..),
    humanTaskUiSummary,
    htusHumanTaskUiName,
    htusHumanTaskUiARN,
    htusCreationTime,

    -- * HyperParameterAlgorithmSpecification
    HyperParameterAlgorithmSpecification (..),
    hyperParameterAlgorithmSpecification,
    hpasTrainingImage,
    hpasMetricDefinitions,
    hpasAlgorithmName,
    hpasTrainingInputMode,

    -- * HyperParameterSpecification
    HyperParameterSpecification (..),
    hyperParameterSpecification,
    hpsRange,
    hpsIsTunable,
    hpsDescription,
    hpsIsRequired,
    hpsDefaultValue,
    hpsName,
    hpsType,

    -- * HyperParameterTrainingJobDefinition
    HyperParameterTrainingJobDefinition (..),
    hyperParameterTrainingJobDefinition,
    hptjdVPCConfig,
    hptjdInputDataConfig,
    hptjdEnableManagedSpotTraining,
    hptjdStaticHyperParameters,
    hptjdHyperParameterRanges,
    hptjdEnableNetworkIsolation,
    hptjdEnableInterContainerTrafficEncryption,
    hptjdCheckpointConfig,
    hptjdTuningObjective,
    hptjdDefinitionName,
    hptjdAlgorithmSpecification,
    hptjdRoleARN,
    hptjdOutputDataConfig,
    hptjdResourceConfig,
    hptjdStoppingCondition,

    -- * HyperParameterTrainingJobSummary
    HyperParameterTrainingJobSummary (..),
    hyperParameterTrainingJobSummary,
    hptjsFinalHyperParameterTuningJobObjectiveMetric,
    hptjsTuningJobName,
    hptjsFailureReason,
    hptjsObjectiveStatus,
    hptjsTrainingJobDefinitionName,
    hptjsTrainingStartTime,
    hptjsTrainingEndTime,
    hptjsTrainingJobName,
    hptjsTrainingJobARN,
    hptjsCreationTime,
    hptjsTrainingJobStatus,
    hptjsTunedHyperParameters,

    -- * HyperParameterTuningJobConfig
    HyperParameterTuningJobConfig (..),
    hyperParameterTuningJobConfig,
    hptjcHyperParameterTuningJobObjective,
    hptjcParameterRanges,
    hptjcTuningJobCompletionCriteria,
    hptjcTrainingJobEarlyStoppingType,
    hptjcStrategy,
    hptjcResourceLimits,

    -- * HyperParameterTuningJobObjective
    HyperParameterTuningJobObjective (..),
    hyperParameterTuningJobObjective,
    hptjoType,
    hptjoMetricName,

    -- * HyperParameterTuningJobSummary
    HyperParameterTuningJobSummary (..),
    hyperParameterTuningJobSummary,
    hResourceLimits,
    hHyperParameterTuningEndTime,
    hLastModifiedTime,
    hHyperParameterTuningJobName,
    hHyperParameterTuningJobARN,
    hHyperParameterTuningJobStatus,
    hStrategy,
    hCreationTime,
    hTrainingJobStatusCounters,
    hObjectiveStatusCounters,

    -- * HyperParameterTuningJobWarmStartConfig
    HyperParameterTuningJobWarmStartConfig (..),
    hyperParameterTuningJobWarmStartConfig,
    hptjwscParentHyperParameterTuningJobs,
    hptjwscWarmStartType,

    -- * Image
    Image (..),
    image,
    iFailureReason,
    iDescription,
    iDisplayName,
    iCreationTime,
    iImageARN,
    iImageName,
    iImageStatus,
    iLastModifiedTime,

    -- * ImageConfig
    ImageConfig (..),
    imageConfig,
    icRepositoryAccessMode,

    -- * ImageVersion
    ImageVersion (..),
    imageVersion,
    ivFailureReason,
    ivCreationTime,
    ivImageARN,
    ivImageVersionARN,
    ivImageVersionStatus,
    ivLastModifiedTime,
    ivVersion,

    -- * InferenceExecutionConfig
    InferenceExecutionConfig (..),
    inferenceExecutionConfig,
    iecMode,

    -- * InferenceSpecification
    InferenceSpecification (..),
    inferenceSpecification,
    isSupportedTransformInstanceTypes,
    isSupportedRealtimeInferenceInstanceTypes,
    isContainers,
    isSupportedContentTypes,
    isSupportedResponseMIMETypes,

    -- * InputConfig
    InputConfig (..),
    inputConfig,
    icFrameworkVersion,
    icS3URI,
    icDataInputConfig,
    icFramework,

    -- * IntegerParameterRange
    IntegerParameterRange (..),
    integerParameterRange,
    iprScalingType,
    iprName,
    iprMinValue,
    iprMaxValue,

    -- * IntegerParameterRangeSpecification
    IntegerParameterRangeSpecification (..),
    integerParameterRangeSpecification,
    iprsMinValue,
    iprsMaxValue,

    -- * JupyterServerAppSettings
    JupyterServerAppSettings (..),
    jupyterServerAppSettings,
    jsasDefaultResourceSpec,

    -- * KernelGatewayAppSettings
    KernelGatewayAppSettings (..),
    kernelGatewayAppSettings,
    kgasCustomImages,
    kgasDefaultResourceSpec,

    -- * KernelGatewayImageConfig
    KernelGatewayImageConfig (..),
    kernelGatewayImageConfig,
    kgicFileSystemConfig,
    kgicKernelSpecs,

    -- * KernelSpec
    KernelSpec (..),
    kernelSpec,
    ksDisplayName,
    ksName,

    -- * LabelCounters
    LabelCounters (..),
    labelCounters,
    lcUnlabeled,
    lcFailedNonRetryableError,
    lcMachineLabeled,
    lcHumanLabeled,
    lcTotalLabeled,

    -- * LabelCountersForWorkteam
    LabelCountersForWorkteam (..),
    labelCountersForWorkteam,
    lcfwPendingHuman,
    lcfwTotal,
    lcfwHumanLabeled,

    -- * LabelingJobAlgorithmsConfig
    LabelingJobAlgorithmsConfig (..),
    labelingJobAlgorithmsConfig,
    ljacInitialActiveLearningModelARN,
    ljacLabelingJobResourceConfig,
    ljacLabelingJobAlgorithmSpecificationARN,

    -- * LabelingJobDataAttributes
    LabelingJobDataAttributes (..),
    labelingJobDataAttributes,
    ljdaContentClassifiers,

    -- * LabelingJobDataSource
    LabelingJobDataSource (..),
    labelingJobDataSource,
    ljdsSNSDataSource,
    ljdsS3DataSource,

    -- * LabelingJobForWorkteamSummary
    LabelingJobForWorkteamSummary (..),
    labelingJobForWorkteamSummary,
    ljfwsLabelCounters,
    ljfwsLabelingJobName,
    ljfwsNumberOfHumanWorkersPerDataObject,
    ljfwsJobReferenceCode,
    ljfwsWorkRequesterAccountId,
    ljfwsCreationTime,

    -- * LabelingJobInputConfig
    LabelingJobInputConfig (..),
    labelingJobInputConfig,
    ljicDataAttributes,
    ljicDataSource,

    -- * LabelingJobOutput
    LabelingJobOutput (..),
    labelingJobOutput,
    ljoFinalActiveLearningModelARN,
    ljoOutputDatasetS3URI,

    -- * LabelingJobOutputConfig
    LabelingJobOutputConfig (..),
    labelingJobOutputConfig,
    ljocKMSKeyId,
    ljocSNSTopicARN,
    ljocS3OutputPath,

    -- * LabelingJobResourceConfig
    LabelingJobResourceConfig (..),
    labelingJobResourceConfig,
    ljrcVolumeKMSKeyId,

    -- * LabelingJobS3DataSource
    LabelingJobS3DataSource (..),
    labelingJobS3DataSource,
    ljsdsManifestS3URI,

    -- * LabelingJobSNSDataSource
    LabelingJobSNSDataSource (..),
    labelingJobSNSDataSource,
    ljsdsSNSTopicARN,

    -- * LabelingJobStoppingConditions
    LabelingJobStoppingConditions (..),
    labelingJobStoppingConditions,
    ljscMaxPercentageOfInputDatasetLabeled,
    ljscMaxHumanLabeledObjectCount,

    -- * LabelingJobSummary
    LabelingJobSummary (..),
    labelingJobSummary,
    ljsAnnotationConsolidationLambdaARN,
    ljsInputConfig,
    ljsFailureReason,
    ljsLabelingJobOutput,
    ljsLabelingJobName,
    ljsLabelingJobARN,
    ljsCreationTime,
    ljsLastModifiedTime,
    ljsLabelingJobStatus,
    ljsLabelCounters,
    ljsWorkteamARN,
    ljsPreHumanTaskLambdaARN,

    -- * MemberDefinition
    MemberDefinition (..),
    memberDefinition,
    mdOidcMemberDefinition,
    mdCognitoMemberDefinition,

    -- * MetadataProperties
    MetadataProperties (..),
    metadataProperties,
    mpGeneratedBy,
    mpCommitId,
    mpProjectId,
    mpRepository,

    -- * MetricData
    MetricData (..),
    metricData,
    mdMetricName,
    mdTimestamp,
    mdValue,

    -- * MetricDefinition
    MetricDefinition (..),
    metricDefinition,
    mdName,
    mdRegex,

    -- * MetricsSource
    MetricsSource (..),
    metricsSource,
    msContentDigest,
    msContentType,
    msS3URI,

    -- * ModelArtifacts
    ModelArtifacts (..),
    modelArtifacts,
    maS3ModelArtifacts,

    -- * ModelBiasAppSpecification
    ModelBiasAppSpecification (..),
    modelBiasAppSpecification,
    mbasEnvironment,
    mbasImageURI,
    mbasConfigURI,

    -- * ModelBiasBaselineConfig
    ModelBiasBaselineConfig (..),
    modelBiasBaselineConfig,
    mbbcConstraintsResource,
    mbbcBaseliningJobName,

    -- * ModelBiasJobInput
    ModelBiasJobInput (..),
    modelBiasJobInput,
    mbjiEndpointInput,
    mbjiGroundTruthS3Input,

    -- * ModelClientConfig
    ModelClientConfig (..),
    modelClientConfig,
    mccInvocationsTimeoutInSeconds,
    mccInvocationsMaxRetries,

    -- * ModelDataQuality
    ModelDataQuality (..),
    modelDataQuality,
    mdqConstraints,
    mdqStatistics,

    -- * ModelDigests
    ModelDigests (..),
    modelDigests,
    mdArtifactDigest,

    -- * ModelExplainabilityAppSpecification
    ModelExplainabilityAppSpecification (..),
    modelExplainabilityAppSpecification,
    measEnvironment,
    measImageURI,
    measConfigURI,

    -- * ModelExplainabilityBaselineConfig
    ModelExplainabilityBaselineConfig (..),
    modelExplainabilityBaselineConfig,
    mebcConstraintsResource,
    mebcBaseliningJobName,

    -- * ModelExplainabilityJobInput
    ModelExplainabilityJobInput (..),
    modelExplainabilityJobInput,
    mejiEndpointInput,

    -- * ModelMetrics
    ModelMetrics (..),
    modelMetrics,
    mmBias,
    mmExplainability,
    mmModelDataQuality,
    mmModelQuality,

    -- * ModelPackage
    ModelPackage (..),
    modelPackage,
    mpSourceAlgorithmSpecification,
    mpModelPackageVersion,
    mpMetadataProperties,
    mpCreationTime,
    mpValidationSpecification,
    mpModelPackageStatusDetails,
    mpModelMetrics,
    mpCertifyForMarketplace,
    mpModelPackageName,
    mpModelApprovalStatus,
    mpApprovalDescription,
    mpTags,
    mpModelPackageStatus,
    mpLastModifiedTime,
    mpInferenceSpecification,
    mpModelPackageDescription,
    mpCreatedBy,
    mpModelPackageARN,
    mpLastModifiedBy,
    mpModelPackageGroupName,

    -- * ModelPackageContainerDefinition
    ModelPackageContainerDefinition (..),
    modelPackageContainerDefinition,
    mpcdImageDigest,
    mpcdModelDataURL,
    mpcdContainerHostname,
    mpcdProductId,
    mpcdImage,

    -- * ModelPackageGroup
    ModelPackageGroup (..),
    modelPackageGroup,
    mpgModelPackageGroupARN,
    mpgCreationTime,
    mpgModelPackageGroupDescription,
    mpgTags,
    mpgModelPackageGroupStatus,
    mpgCreatedBy,
    mpgModelPackageGroupName,

    -- * ModelPackageGroupSummary
    ModelPackageGroupSummary (..),
    modelPackageGroupSummary,
    mpgsModelPackageGroupDescription,
    mpgsModelPackageGroupName,
    mpgsModelPackageGroupARN,
    mpgsCreationTime,
    mpgsModelPackageGroupStatus,

    -- * ModelPackageStatusDetails
    ModelPackageStatusDetails (..),
    modelPackageStatusDetails,
    mpsdImageScanStatuses,
    mpsdValidationStatuses,

    -- * ModelPackageStatusItem
    ModelPackageStatusItem (..),
    modelPackageStatusItem,
    mpsiFailureReason,
    mpsiName,
    mpsiStatus,

    -- * ModelPackageSummary
    ModelPackageSummary (..),
    modelPackageSummary,
    mpsModelPackageVersion,
    mpsModelApprovalStatus,
    mpsModelPackageDescription,
    mpsModelPackageGroupName,
    mpsModelPackageName,
    mpsModelPackageARN,
    mpsCreationTime,
    mpsModelPackageStatus,

    -- * ModelPackageValidationProfile
    ModelPackageValidationProfile (..),
    modelPackageValidationProfile,
    mpvpProfileName,
    mpvpTransformJobDefinition,

    -- * ModelPackageValidationSpecification
    ModelPackageValidationSpecification (..),
    modelPackageValidationSpecification,
    mpvsValidationRole,
    mpvsValidationProfiles,

    -- * ModelQuality
    ModelQuality (..),
    modelQuality,
    mqConstraints,
    mqStatistics,

    -- * ModelQualityAppSpecification
    ModelQualityAppSpecification (..),
    modelQualityAppSpecification,
    mqasContainerArguments,
    mqasContainerEntrypoint,
    mqasPostAnalyticsProcessorSourceURI,
    mqasEnvironment,
    mqasRecordPreprocessorSourceURI,
    mqasProblemType,
    mqasImageURI,

    -- * ModelQualityBaselineConfig
    ModelQualityBaselineConfig (..),
    modelQualityBaselineConfig,
    mqbcConstraintsResource,
    mqbcBaseliningJobName,

    -- * ModelQualityJobInput
    ModelQualityJobInput (..),
    modelQualityJobInput,
    mqjiEndpointInput,
    mqjiGroundTruthS3Input,

    -- * ModelStepMetadata
    ModelStepMetadata (..),
    modelStepMetadata,
    msmARN,

    -- * ModelSummary
    ModelSummary (..),
    modelSummary,
    msModelName,
    msModelARN,
    msCreationTime,

    -- * MonitoringAppSpecification
    MonitoringAppSpecification (..),
    monitoringAppSpecification,
    masContainerArguments,
    masContainerEntrypoint,
    masPostAnalyticsProcessorSourceURI,
    masRecordPreprocessorSourceURI,
    masImageURI,

    -- * MonitoringBaselineConfig
    MonitoringBaselineConfig (..),
    monitoringBaselineConfig,
    mbcStatisticsResource,
    mbcConstraintsResource,
    mbcBaseliningJobName,

    -- * MonitoringClusterConfig
    MonitoringClusterConfig (..),
    monitoringClusterConfig,
    mccVolumeKMSKeyId,
    mccInstanceCount,
    mccInstanceType,
    mccVolumeSizeInGB,

    -- * MonitoringConstraintsResource
    MonitoringConstraintsResource (..),
    monitoringConstraintsResource,
    mcrS3URI,

    -- * MonitoringExecutionSummary
    MonitoringExecutionSummary (..),
    monitoringExecutionSummary,
    mesEndpointName,
    mesMonitoringType,
    mesMonitoringJobDefinitionName,
    mesFailureReason,
    mesProcessingJobARN,
    mesMonitoringScheduleName,
    mesScheduledTime,
    mesCreationTime,
    mesLastModifiedTime,
    mesMonitoringExecutionStatus,

    -- * MonitoringGroundTruthS3Input
    MonitoringGroundTruthS3Input (..),
    monitoringGroundTruthS3Input,
    mgtsiS3URI,

    -- * MonitoringInput
    MonitoringInput (..),
    monitoringInput,
    miEndpointInput,

    -- * MonitoringJobDefinition
    MonitoringJobDefinition (..),
    monitoringJobDefinition,
    mjdNetworkConfig,
    mjdEnvironment,
    mjdBaselineConfig,
    mjdStoppingCondition,
    mjdMonitoringInputs,
    mjdMonitoringOutputConfig,
    mjdMonitoringResources,
    mjdMonitoringAppSpecification,
    mjdRoleARN,

    -- * MonitoringJobDefinitionSummary
    MonitoringJobDefinitionSummary (..),
    monitoringJobDefinitionSummary,
    mjdsMonitoringJobDefinitionName,
    mjdsMonitoringJobDefinitionARN,
    mjdsCreationTime,
    mjdsEndpointName,

    -- * MonitoringNetworkConfig
    MonitoringNetworkConfig (..),
    monitoringNetworkConfig,
    mncVPCConfig,
    mncEnableNetworkIsolation,
    mncEnableInterContainerTrafficEncryption,

    -- * MonitoringOutput
    MonitoringOutput (..),
    monitoringOutput,
    moS3Output,

    -- * MonitoringOutputConfig
    MonitoringOutputConfig (..),
    monitoringOutputConfig,
    mocKMSKeyId,
    mocMonitoringOutputs,

    -- * MonitoringResources
    MonitoringResources (..),
    monitoringResources,
    mrClusterConfig,

    -- * MonitoringS3Output
    MonitoringS3Output (..),
    monitoringS3Output,
    msoS3UploadMode,
    msoS3URI,
    msoLocalPath,

    -- * MonitoringSchedule
    MonitoringSchedule (..),
    monitoringSchedule,
    mEndpointName,
    mCreationTime,
    mMonitoringType,
    mMonitoringScheduleName,
    mMonitoringScheduleStatus,
    mFailureReason,
    mMonitoringScheduleARN,
    mTags,
    mLastModifiedTime,
    mMonitoringScheduleConfig,
    mLastMonitoringExecutionSummary,

    -- * MonitoringScheduleConfig
    MonitoringScheduleConfig (..),
    monitoringScheduleConfig,
    mscScheduleConfig,
    mscMonitoringType,
    mscMonitoringJobDefinitionName,
    mscMonitoringJobDefinition,

    -- * MonitoringScheduleSummary
    MonitoringScheduleSummary (..),
    monitoringScheduleSummary,
    mssEndpointName,
    mssMonitoringType,
    mssMonitoringJobDefinitionName,
    mssMonitoringScheduleName,
    mssMonitoringScheduleARN,
    mssCreationTime,
    mssLastModifiedTime,
    mssMonitoringScheduleStatus,

    -- * MonitoringStatisticsResource
    MonitoringStatisticsResource (..),
    monitoringStatisticsResource,
    msrS3URI,

    -- * MonitoringStoppingCondition
    MonitoringStoppingCondition (..),
    monitoringStoppingCondition,
    mscMaxRuntimeInSeconds,

    -- * MultiModelConfig
    MultiModelConfig (..),
    multiModelConfig,
    mmcModelCacheSetting,

    -- * NestedFilters
    NestedFilters (..),
    nestedFilters,
    nfNestedPropertyName,
    nfFilters,

    -- * NetworkConfig
    NetworkConfig (..),
    networkConfig,
    ncVPCConfig,
    ncEnableNetworkIsolation,
    ncEnableInterContainerTrafficEncryption,

    -- * NotebookInstanceLifecycleConfigSummary
    NotebookInstanceLifecycleConfigSummary (..),
    notebookInstanceLifecycleConfigSummary,
    nilcsCreationTime,
    nilcsLastModifiedTime,
    nilcsNotebookInstanceLifecycleConfigName,
    nilcsNotebookInstanceLifecycleConfigARN,

    -- * NotebookInstanceLifecycleHook
    NotebookInstanceLifecycleHook (..),
    notebookInstanceLifecycleHook,
    nilhContent,

    -- * NotebookInstanceSummary
    NotebookInstanceSummary (..),
    notebookInstanceSummary,
    nisCreationTime,
    nisDefaultCodeRepository,
    nisInstanceType,
    nisNotebookInstanceLifecycleConfigName,
    nisAdditionalCodeRepositories,
    nisNotebookInstanceStatus,
    nisLastModifiedTime,
    nisURL,
    nisNotebookInstanceName,
    nisNotebookInstanceARN,

    -- * NotificationConfiguration
    NotificationConfiguration (..),
    notificationConfiguration,
    ncNotificationTopicARN,

    -- * ObjectiveStatusCounters
    ObjectiveStatusCounters (..),
    objectiveStatusCounters,
    oscSucceeded,
    oscPending,
    oscFailed,

    -- * OfflineStoreConfig
    OfflineStoreConfig (..),
    offlineStoreConfig,
    oscDisableGlueTableCreation,
    oscDataCatalogConfig,
    oscS3StorageConfig,

    -- * OfflineStoreStatus
    OfflineStoreStatus (..),
    offlineStoreStatus,
    ossBlockedReason,
    ossStatus,

    -- * OidcConfig
    OidcConfig (..),
    oidcConfig,
    ocClientId,
    ocClientSecret,
    ocIssuer,
    ocAuthorizationEndpoint,
    ocTokenEndpoint,
    ocUserInfoEndpoint,
    ocLogoutEndpoint,
    ocJwksURI,

    -- * OidcConfigForResponse
    OidcConfigForResponse (..),
    oidcConfigForResponse,
    ocfrClientId,
    ocfrTokenEndpoint,
    ocfrAuthorizationEndpoint,
    ocfrUserInfoEndpoint,
    ocfrLogoutEndpoint,
    ocfrIssuer,
    ocfrJwksURI,

    -- * OidcMemberDefinition
    OidcMemberDefinition (..),
    oidcMemberDefinition,
    omdGroups,

    -- * OnlineStoreConfig
    OnlineStoreConfig (..),
    onlineStoreConfig,
    oscSecurityConfig,
    oscEnableOnlineStore,

    -- * OnlineStoreSecurityConfig
    OnlineStoreSecurityConfig (..),
    onlineStoreSecurityConfig,
    osscKMSKeyId,

    -- * OutputConfig
    OutputConfig (..),
    outputConfig,
    ocCompilerOptions,
    ocKMSKeyId,
    ocTargetDevice,
    ocTargetPlatform,
    ocS3OutputLocation,

    -- * OutputDataConfig
    OutputDataConfig (..),
    outputDataConfig,
    odcKMSKeyId,
    odcS3OutputPath,

    -- * Parameter
    Parameter (..),
    parameter,
    pName,
    pValue,

    -- * ParameterRange
    ParameterRange (..),
    parameterRange,
    prContinuousParameterRangeSpecification,
    prIntegerParameterRangeSpecification,
    prCategoricalParameterRangeSpecification,

    -- * ParameterRanges
    ParameterRanges (..),
    parameterRanges,
    prIntegerParameterRanges,
    prCategoricalParameterRanges,
    prContinuousParameterRanges,

    -- * Parent
    Parent (..),
    parent,
    pExperimentName,
    pTrialName,

    -- * ParentHyperParameterTuningJob
    ParentHyperParameterTuningJob (..),
    parentHyperParameterTuningJob,
    phptjHyperParameterTuningJobName,

    -- * Pipeline
    Pipeline (..),
    pipeline,
    pipPipelineARN,
    pipPipelineDescription,
    pipCreationTime,
    pipRoleARN,
    pipLastRunTime,
    pipPipelineDisplayName,
    pipTags,
    pipLastModifiedTime,
    pipPipelineStatus,
    pipCreatedBy,
    pipLastModifiedBy,
    pipPipelineName,

    -- * PipelineExecution
    PipelineExecution (..),
    pipelineExecution,
    pePipelineARN,
    peCreationTime,
    pePipelineExecutionDescription,
    pePipelineParameters,
    pePipelineExecutionDisplayName,
    pePipelineExecutionStatus,
    peLastModifiedTime,
    peCreatedBy,
    peLastModifiedBy,
    pePipelineExecutionARN,

    -- * PipelineExecutionStep
    PipelineExecutionStep (..),
    pipelineExecutionStep,
    pStartTime,
    pMetadata,
    pEndTime,
    pFailureReason,
    pStepStatus,
    pCacheHitResult,
    pStepName,

    -- * PipelineExecutionStepMetadata
    PipelineExecutionStepMetadata (..),
    pipelineExecutionStepMetadata,
    pesmModel,
    pesmProcessingJob,
    pesmCondition,
    pesmTrainingJob,
    pesmRegisterModel,
    pesmTransformJob,

    -- * PipelineExecutionSummary
    PipelineExecutionSummary (..),
    pipelineExecutionSummary,
    pesPipelineExecutionDescription,
    pesStartTime,
    pesPipelineExecutionDisplayName,
    pesPipelineExecutionStatus,
    pesPipelineExecutionARN,

    -- * PipelineSummary
    PipelineSummary (..),
    pipelineSummary,
    pPipelineARN,
    pPipelineDescription,
    pCreationTime,
    pRoleARN,
    pLastExecutionTime,
    pPipelineDisplayName,
    pLastModifiedTime,
    pPipelineName,

    -- * ProcessingClusterConfig
    ProcessingClusterConfig (..),
    processingClusterConfig,
    pccVolumeKMSKeyId,
    pccInstanceCount,
    pccInstanceType,
    pccVolumeSizeInGB,

    -- * ProcessingFeatureStoreOutput
    ProcessingFeatureStoreOutput (..),
    processingFeatureStoreOutput,
    pfsoFeatureGroupName,

    -- * ProcessingInput
    ProcessingInput (..),
    processingInput,
    piDatasetDefinition,
    piAppManaged,
    piS3Input,
    piInputName,

    -- * ProcessingJob
    ProcessingJob (..),
    processingJob,
    pjNetworkConfig,
    pjCreationTime,
    pjAppSpecification,
    pjProcessingEndTime,
    pjRoleARN,
    pjProcessingOutputConfig,
    pjExitMessage,
    pjExperimentConfig,
    pjProcessingJobStatus,
    pjEnvironment,
    pjAutoMLJobARN,
    pjFailureReason,
    pjMonitoringScheduleARN,
    pjProcessingJobARN,
    pjTags,
    pjLastModifiedTime,
    pjProcessingInputs,
    pjProcessingStartTime,
    pjStoppingCondition,
    pjProcessingJobName,
    pjProcessingResources,
    pjTrainingJobARN,

    -- * ProcessingJobStepMetadata
    ProcessingJobStepMetadata (..),
    processingJobStepMetadata,
    pjsmARN,

    -- * ProcessingJobSummary
    ProcessingJobSummary (..),
    processingJobSummary,
    pjsProcessingEndTime,
    pjsExitMessage,
    pjsFailureReason,
    pjsLastModifiedTime,
    pjsProcessingJobName,
    pjsProcessingJobARN,
    pjsCreationTime,
    pjsProcessingJobStatus,

    -- * ProcessingOutput
    ProcessingOutput (..),
    processingOutput,
    poS3Output,
    poFeatureStoreOutput,
    poAppManaged,
    poOutputName,

    -- * ProcessingOutputConfig
    ProcessingOutputConfig (..),
    processingOutputConfig,
    pocKMSKeyId,
    pocOutputs,

    -- * ProcessingResources
    ProcessingResources (..),
    processingResources,
    prClusterConfig,

    -- * ProcessingS3Input
    ProcessingS3Input (..),
    processingS3Input,
    psiS3CompressionType,
    psiS3InputMode,
    psiS3DataDistributionType,
    psiLocalPath,
    psiS3URI,
    psiS3DataType,

    -- * ProcessingS3Output
    ProcessingS3Output (..),
    processingS3Output,
    psoS3URI,
    psoLocalPath,
    psoS3UploadMode,

    -- * ProcessingStoppingCondition
    ProcessingStoppingCondition (..),
    processingStoppingCondition,
    pscMaxRuntimeInSeconds,

    -- * ProductionVariant
    ProductionVariant (..),
    productionVariant,
    pvInitialVariantWeight,
    pvAcceleratorType,
    pvCoreDumpConfig,
    pvVariantName,
    pvModelName,
    pvInitialInstanceCount,
    pvInstanceType,

    -- * ProductionVariantCoreDumpConfig
    ProductionVariantCoreDumpConfig (..),
    productionVariantCoreDumpConfig,
    pvcdcKMSKeyId,
    pvcdcDestinationS3URI,

    -- * ProductionVariantSummary
    ProductionVariantSummary (..),
    productionVariantSummary,
    pvsDeployedImages,
    pvsDesiredInstanceCount,
    pvsCurrentWeight,
    pvsCurrentInstanceCount,
    pvsDesiredWeight,
    pvsVariantName,

    -- * ProfilerConfig
    ProfilerConfig (..),
    profilerConfig,
    pcProfilingParameters,
    pcProfilingIntervalInMilliseconds,
    pcS3OutputPath,

    -- * ProfilerConfigForUpdate
    ProfilerConfigForUpdate (..),
    profilerConfigForUpdate,
    pcfuS3OutputPath,
    pcfuProfilingParameters,
    pcfuProfilingIntervalInMilliseconds,
    pcfuDisableProfiler,

    -- * ProfilerRuleConfiguration
    ProfilerRuleConfiguration (..),
    profilerRuleConfiguration,
    prcRuleParameters,
    prcInstanceType,
    prcS3OutputPath,
    prcVolumeSizeInGB,
    prcLocalPath,
    prcRuleConfigurationName,
    prcRuleEvaluatorImage,

    -- * ProfilerRuleEvaluationStatus
    ProfilerRuleEvaluationStatus (..),
    profilerRuleEvaluationStatus,
    presRuleConfigurationName,
    presStatusDetails,
    presRuleEvaluationStatus,
    presLastModifiedTime,
    presRuleEvaluationJobARN,

    -- * ProjectSummary
    ProjectSummary (..),
    projectSummary,
    psProjectDescription,
    psProjectName,
    psProjectARN,
    psProjectId,
    psCreationTime,
    psProjectStatus,

    -- * PropertyNameQuery
    PropertyNameQuery (..),
    propertyNameQuery,
    pnqPropertyNameHint,

    -- * PropertyNameSuggestion
    PropertyNameSuggestion (..),
    propertyNameSuggestion,
    pnsPropertyName,

    -- * ProvisioningParameter
    ProvisioningParameter (..),
    provisioningParameter,
    ppKey,
    ppValue,

    -- * PublicWorkforceTaskPrice
    PublicWorkforceTaskPrice (..),
    publicWorkforceTaskPrice,
    pwtpAmountInUsd,

    -- * RedshiftDatasetDefinition
    RedshiftDatasetDefinition (..),
    redshiftDatasetDefinition,
    rddOutputCompression,
    rddKMSKeyId,
    rddClusterId,
    rddDatabase,
    rddDBUser,
    rddQueryString,
    rddClusterRoleARN,
    rddOutputS3URI,
    rddOutputFormat,

    -- * RegisterModelStepMetadata
    RegisterModelStepMetadata (..),
    registerModelStepMetadata,
    rmsmARN,

    -- * RenderableTask
    RenderableTask (..),
    renderableTask,
    rtInput,

    -- * RenderingError
    RenderingError (..),
    renderingError,
    reCode,
    reMessage,

    -- * ResolvedAttributes
    ResolvedAttributes (..),
    resolvedAttributes,
    raCompletionCriteria,
    raAutoMLJobObjective,
    raProblemType,

    -- * ResourceConfig
    ResourceConfig (..),
    resourceConfig,
    rcVolumeKMSKeyId,
    rcInstanceType,
    rcInstanceCount,
    rcVolumeSizeInGB,

    -- * ResourceLimits
    ResourceLimits (..),
    resourceLimits,
    rlMaxNumberOfTrainingJobs,
    rlMaxParallelTrainingJobs,

    -- * ResourceSpec
    ResourceSpec (..),
    resourceSpec,
    rsInstanceType,
    rsSageMakerImageARN,
    rsSageMakerImageVersionARN,

    -- * RetentionPolicy
    RetentionPolicy (..),
    retentionPolicy,
    rpHomeEfsFileSystem,

    -- * S3DataSource
    S3DataSource (..),
    s3DataSource,
    sdsS3DataDistributionType,
    sdsAttributeNames,
    sdsS3DataType,
    sdsS3URI,

    -- * S3StorageConfig
    S3StorageConfig (..),
    s3StorageConfig,
    sscKMSKeyId,
    sscResolvedOutputS3URI,
    sscS3URI,

    -- * ScheduleConfig
    ScheduleConfig (..),
    scheduleConfig,
    scScheduleExpression,

    -- * SearchExpression
    SearchExpression (..),
    searchExpression,
    seNestedFilters,
    seOperator,
    seFilters,
    seSubExpressions,

    -- * SearchRecord
    SearchRecord (..),
    searchRecord,
    srExperiment,
    srFeatureGroup,
    srModelPackage,
    srTrainingJob,
    srEndpoint,
    srPipelineExecution,
    srTrialComponent,
    srModelPackageGroup,
    srPipeline,
    srTrial,

    -- * SecondaryStatusTransition
    SecondaryStatusTransition (..),
    secondaryStatusTransition,
    sstStatusMessage,
    sstEndTime,
    sstStatus,
    sstStartTime,

    -- * ServiceCatalogProvisionedProductDetails
    ServiceCatalogProvisionedProductDetails (..),
    serviceCatalogProvisionedProductDetails,
    scppdProvisionedProductStatusMessage,
    scppdProvisionedProductId,

    -- * ServiceCatalogProvisioningDetails
    ServiceCatalogProvisioningDetails (..),
    serviceCatalogProvisioningDetails,
    scpdProvisioningParameters,
    scpdPathId,
    scpdProductId,
    scpdProvisioningArtifactId,

    -- * SharingSettings
    SharingSettings (..),
    sharingSettings,
    ssS3KMSKeyId,
    ssS3OutputPath,
    ssNotebookOutputOption,

    -- * ShuffleConfig
    ShuffleConfig (..),
    shuffleConfig,
    scSeed,

    -- * SourceAlgorithm
    SourceAlgorithm (..),
    sourceAlgorithm,
    saModelDataURL,
    saAlgorithmName,

    -- * SourceAlgorithmSpecification
    SourceAlgorithmSpecification (..),
    sourceAlgorithmSpecification,
    sasSourceAlgorithms,

    -- * SourceIPConfig
    SourceIPConfig (..),
    sourceIPConfig,
    sicCidrs,

    -- * StoppingCondition
    StoppingCondition (..),
    stoppingCondition,
    scMaxRuntimeInSeconds,
    scMaxWaitTimeInSeconds,

    -- * SubscribedWorkteam
    SubscribedWorkteam (..),
    subscribedWorkteam,
    swMarketplaceTitle,
    swListingId,
    swMarketplaceDescription,
    swSellerName,
    swWorkteamARN,

    -- * SuggestionQuery
    SuggestionQuery (..),
    suggestionQuery,
    sqPropertyNameQuery,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TargetPlatform
    TargetPlatform (..),
    targetPlatform,
    tpAccelerator,
    tpOS,
    tpArch,

    -- * TensorBoardAppSettings
    TensorBoardAppSettings (..),
    tensorBoardAppSettings,
    tbasDefaultResourceSpec,

    -- * TensorBoardOutputConfig
    TensorBoardOutputConfig (..),
    tensorBoardOutputConfig,
    tbocLocalPath,
    tbocS3OutputPath,

    -- * TrafficRoutingConfig
    TrafficRoutingConfig (..),
    trafficRoutingConfig,
    trcCanarySize,
    trcType,
    trcWaitIntervalInSeconds,

    -- * TrainingJob
    TrainingJob (..),
    trainingJob,
    tjVPCConfig,
    tjDebugRuleConfigurations,
    tjInputDataConfig,
    tjHyperParameters,
    tjEnableManagedSpotTraining,
    tjCreationTime,
    tjLabelingJobARN,
    tjRoleARN,
    tjTrainingTimeInSeconds,
    tjExperimentConfig,
    tjEnableNetworkIsolation,
    tjEnableInterContainerTrafficEncryption,
    tjTrainingJobName,
    tjCheckpointConfig,
    tjOutputDataConfig,
    tjTuningJobARN,
    tjModelArtifacts,
    tjSecondaryStatusTransitions,
    tjFinalMetricDataList,
    tjAutoMLJobARN,
    tjFailureReason,
    tjTags,
    tjSecondaryStatus,
    tjLastModifiedTime,
    tjTensorBoardOutputConfig,
    tjStoppingCondition,
    tjDebugRuleEvaluationStatuses,
    tjTrainingJobStatus,
    tjDebugHookConfig,
    tjBillableTimeInSeconds,
    tjResourceConfig,
    tjTrainingStartTime,
    tjTrainingEndTime,
    tjAlgorithmSpecification,
    tjTrainingJobARN,

    -- * TrainingJobDefinition
    TrainingJobDefinition (..),
    trainingJobDefinition,
    tjdHyperParameters,
    tjdTrainingInputMode,
    tjdInputDataConfig,
    tjdOutputDataConfig,
    tjdResourceConfig,
    tjdStoppingCondition,

    -- * TrainingJobStatusCounters
    TrainingJobStatusCounters (..),
    trainingJobStatusCounters,
    tjscStopped,
    tjscCompleted,
    tjscNonRetryableError,
    tjscInProgress,
    tjscRetryableError,

    -- * TrainingJobStepMetadata
    TrainingJobStepMetadata (..),
    trainingJobStepMetadata,
    tjsmARN,

    -- * TrainingJobSummary
    TrainingJobSummary (..),
    trainingJobSummary,
    traLastModifiedTime,
    traTrainingEndTime,
    traTrainingJobName,
    traTrainingJobARN,
    traCreationTime,
    traTrainingJobStatus,

    -- * TrainingSpecification
    TrainingSpecification (..),
    trainingSpecification,
    tsSupportedHyperParameters,
    tsMetricDefinitions,
    tsTrainingImageDigest,
    tsSupportsDistributedTraining,
    tsSupportedTuningJobObjectiveMetrics,
    tsTrainingImage,
    tsSupportedTrainingInstanceTypes,
    tsTrainingChannels,

    -- * TransformDataSource
    TransformDataSource (..),
    transformDataSource,
    tdsS3DataSource,

    -- * TransformInput
    TransformInput (..),
    transformInput,
    tiContentType,
    tiSplitType,
    tiCompressionType,
    tiDataSource,

    -- * TransformJob
    TransformJob (..),
    transformJob,
    tCreationTime,
    tLabelingJobARN,
    tTransformJobName,
    tTransformStartTime,
    tTransformOutput,
    tExperimentConfig,
    tMaxConcurrentTransforms,
    tEnvironment,
    tMaxPayloadInMB,
    tBatchStrategy,
    tTransformJobStatus,
    tAutoMLJobARN,
    tFailureReason,
    tModelClientConfig,
    tTags,
    tTransformEndTime,
    tTransformJobARN,
    tDataProcessing,
    tModelName,
    tTransformResources,
    tTransformInput,

    -- * TransformJobDefinition
    TransformJobDefinition (..),
    transformJobDefinition,
    tjdMaxConcurrentTransforms,
    tjdEnvironment,
    tjdMaxPayloadInMB,
    tjdBatchStrategy,
    tjdTransformInput,
    tjdTransformOutput,
    tjdTransformResources,

    -- * TransformJobStepMetadata
    TransformJobStepMetadata (..),
    transformJobStepMetadata,
    tARN,

    -- * TransformJobSummary
    TransformJobSummary (..),
    transformJobSummary,
    tjsFailureReason,
    tjsLastModifiedTime,
    tjsTransformEndTime,
    tjsTransformJobName,
    tjsTransformJobARN,
    tjsCreationTime,
    tjsTransformJobStatus,

    -- * TransformOutput
    TransformOutput (..),
    transformOutput,
    toAccept,
    toAssembleWith,
    toKMSKeyId,
    toS3OutputPath,

    -- * TransformResources
    TransformResources (..),
    transformResources,
    trVolumeKMSKeyId,
    trInstanceType,
    trInstanceCount,

    -- * TransformS3DataSource
    TransformS3DataSource (..),
    transformS3DataSource,
    tsdsS3DataType,
    tsdsS3URI,

    -- * Trial
    Trial (..),
    trial,
    triTrialARN,
    triMetadataProperties,
    triCreationTime,
    triSource,
    triTrialComponentSummaries,
    triTags,
    triLastModifiedTime,
    triExperimentName,
    triCreatedBy,
    triLastModifiedBy,
    triDisplayName,
    triTrialName,

    -- * TrialComponent
    TrialComponent (..),
    trialComponent,
    tcParents,
    tcStatus,
    tcMetadataProperties,
    tcCreationTime,
    tcSourceDetail,
    tcTrialComponentARN,
    tcStartTime,
    tcSource,
    tcEndTime,
    tcMetrics,
    tcTags,
    tcLastModifiedTime,
    tcInputArtifacts,
    tcCreatedBy,
    tcLastModifiedBy,
    tcDisplayName,
    tcParameters,
    tcOutputArtifacts,
    tcTrialComponentName,

    -- * TrialComponentArtifact
    TrialComponentArtifact (..),
    trialComponentArtifact,
    tcaMediaType,
    tcaValue,

    -- * TrialComponentMetricSummary
    TrialComponentMetricSummary (..),
    trialComponentMetricSummary,
    tcmsMetricName,
    tcmsMin,
    tcmsStdDev,
    tcmsMax,
    tcmsTimeStamp,
    tcmsCount,
    tcmsSourceARN,
    tcmsAvg,
    tcmsLast,

    -- * TrialComponentParameterValue
    TrialComponentParameterValue (..),
    trialComponentParameterValue,
    tcpvStringValue,
    tcpvNumberValue,

    -- * TrialComponentSimpleSummary
    TrialComponentSimpleSummary (..),
    trialComponentSimpleSummary,
    tcssCreationTime,
    tcssTrialComponentARN,
    tcssCreatedBy,
    tcssTrialComponentSource,
    tcssTrialComponentName,

    -- * TrialComponentSource
    TrialComponentSource (..),
    trialComponentSource,
    tcsSourceType,
    tcsSourceARN,

    -- * TrialComponentSourceDetail
    TrialComponentSourceDetail (..),
    trialComponentSourceDetail,
    tcsdProcessingJob,
    tcsdTrainingJob,
    tcsdTransformJob,
    tcsdSourceARN,

    -- * TrialComponentStatus
    TrialComponentStatus (..),
    trialComponentStatus,
    tcsMessage,
    tcsPrimaryStatus,

    -- * TrialComponentSummary
    TrialComponentSummary (..),
    trialComponentSummary,
    tcsStatus,
    tcsCreationTime,
    tcsTrialComponentARN,
    tcsStartTime,
    tcsEndTime,
    tcsLastModifiedTime,
    tcsCreatedBy,
    tcsLastModifiedBy,
    tcsTrialComponentSource,
    tcsDisplayName,
    tcsTrialComponentName,

    -- * TrialSource
    TrialSource (..),
    trialSource,
    tsSourceType,
    tsSourceARN,

    -- * TrialSummary
    TrialSummary (..),
    trialSummary,
    tsTrialSource,
    tsTrialARN,
    tsCreationTime,
    tsLastModifiedTime,
    tsDisplayName,
    tsTrialName,

    -- * TuningJobCompletionCriteria
    TuningJobCompletionCriteria (..),
    tuningJobCompletionCriteria,
    tjccTargetObjectiveMetricValue,

    -- * USD
    USD (..),
    uSD,
    usdDollars,
    usdCents,
    usdTenthFractionsOfACent,

    -- * UiConfig
    UiConfig (..),
    uiConfig,
    ucHumanTaskUiARN,
    ucUiTemplateS3URI,

    -- * UiTemplate
    UiTemplate (..),
    uiTemplate,
    utContent,

    -- * UiTemplateInfo
    UiTemplateInfo (..),
    uiTemplateInfo,
    utiContentSha256,
    utiURL,

    -- * UserContext
    UserContext (..),
    userContext,
    ucUserProfileName,
    ucDomainId,
    ucUserProfileARN,

    -- * UserProfileDetails
    UserProfileDetails (..),
    userProfileDetails,
    updStatus,
    updCreationTime,
    updUserProfileName,
    updDomainId,
    updLastModifiedTime,

    -- * UserSettings
    UserSettings (..),
    userSettings,
    usKernelGatewayAppSettings,
    usTensorBoardAppSettings,
    usSecurityGroups,
    usJupyterServerAppSettings,
    usExecutionRole,
    usSharingSettings,

    -- * VPCConfig
    VPCConfig (..),
    vpcConfig,
    vcSecurityGroupIds,
    vcSubnets,

    -- * VariantProperty
    VariantProperty (..),
    variantProperty,
    vpVariantPropertyType,

    -- * Workforce
    Workforce (..),
    workforce,
    worLastUpdatedDate,
    worCreateDate,
    worSubDomain,
    worSourceIPConfig,
    worOidcConfig,
    worCognitoConfig,
    worWorkforceName,
    worWorkforceARN,

    -- * Workteam
    Workteam (..),
    workteam,
    wWorkforceARN,
    wLastUpdatedDate,
    wCreateDate,
    wNotificationConfiguration,
    wProductListingIds,
    wSubDomain,
    wWorkteamName,
    wMemberDefinitions,
    wWorkteamARN,
    wDescription,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.AWSManagedHumanLoopRequestSource
import Network.AWS.SageMaker.Types.ActionSource
import Network.AWS.SageMaker.Types.ActionStatus
import Network.AWS.SageMaker.Types.ActionSummary
import Network.AWS.SageMaker.Types.AgentVersion
import Network.AWS.SageMaker.Types.Alarm
import Network.AWS.SageMaker.Types.AlgorithmSortBy
import Network.AWS.SageMaker.Types.AlgorithmSpecification
import Network.AWS.SageMaker.Types.AlgorithmStatus
import Network.AWS.SageMaker.Types.AlgorithmStatusDetails
import Network.AWS.SageMaker.Types.AlgorithmStatusItem
import Network.AWS.SageMaker.Types.AlgorithmSummary
import Network.AWS.SageMaker.Types.AlgorithmValidationProfile
import Network.AWS.SageMaker.Types.AlgorithmValidationSpecification
import Network.AWS.SageMaker.Types.AnnotationConsolidationConfig
import Network.AWS.SageMaker.Types.AppDetails
import Network.AWS.SageMaker.Types.AppImageConfigDetails
import Network.AWS.SageMaker.Types.AppImageConfigSortKey
import Network.AWS.SageMaker.Types.AppInstanceType
import Network.AWS.SageMaker.Types.AppNetworkAccessType
import Network.AWS.SageMaker.Types.AppSortKey
import Network.AWS.SageMaker.Types.AppSpecification
import Network.AWS.SageMaker.Types.AppStatus
import Network.AWS.SageMaker.Types.AppType
import Network.AWS.SageMaker.Types.ArtifactSource
import Network.AWS.SageMaker.Types.ArtifactSourceIdType
import Network.AWS.SageMaker.Types.ArtifactSourceType
import Network.AWS.SageMaker.Types.ArtifactSummary
import Network.AWS.SageMaker.Types.AssemblyType
import Network.AWS.SageMaker.Types.AssociationEdgeType
import Network.AWS.SageMaker.Types.AssociationSummary
import Network.AWS.SageMaker.Types.AthenaDatasetDefinition
import Network.AWS.SageMaker.Types.AthenaResultCompressionType
import Network.AWS.SageMaker.Types.AthenaResultFormat
import Network.AWS.SageMaker.Types.AuthMode
import Network.AWS.SageMaker.Types.AutoMLCandidate
import Network.AWS.SageMaker.Types.AutoMLCandidateStep
import Network.AWS.SageMaker.Types.AutoMLChannel
import Network.AWS.SageMaker.Types.AutoMLContainerDefinition
import Network.AWS.SageMaker.Types.AutoMLDataSource
import Network.AWS.SageMaker.Types.AutoMLJobArtifacts
import Network.AWS.SageMaker.Types.AutoMLJobCompletionCriteria
import Network.AWS.SageMaker.Types.AutoMLJobConfig
import Network.AWS.SageMaker.Types.AutoMLJobObjective
import Network.AWS.SageMaker.Types.AutoMLJobObjectiveType
import Network.AWS.SageMaker.Types.AutoMLJobSecondaryStatus
import Network.AWS.SageMaker.Types.AutoMLJobStatus
import Network.AWS.SageMaker.Types.AutoMLJobSummary
import Network.AWS.SageMaker.Types.AutoMLMetricEnum
import Network.AWS.SageMaker.Types.AutoMLOutputDataConfig
import Network.AWS.SageMaker.Types.AutoMLS3DataSource
import Network.AWS.SageMaker.Types.AutoMLS3DataType
import Network.AWS.SageMaker.Types.AutoMLSecurityConfig
import Network.AWS.SageMaker.Types.AutoMLSortBy
import Network.AWS.SageMaker.Types.AutoMLSortOrder
import Network.AWS.SageMaker.Types.AutoRollbackConfig
import Network.AWS.SageMaker.Types.BatchStrategy
import Network.AWS.SageMaker.Types.Bias
import Network.AWS.SageMaker.Types.BlueGreenUpdatePolicy
import Network.AWS.SageMaker.Types.BooleanOperator
import Network.AWS.SageMaker.Types.CacheHitResult
import Network.AWS.SageMaker.Types.CandidateSortBy
import Network.AWS.SageMaker.Types.CandidateStatus
import Network.AWS.SageMaker.Types.CandidateStepType
import Network.AWS.SageMaker.Types.CapacitySize
import Network.AWS.SageMaker.Types.CapacitySizeType
import Network.AWS.SageMaker.Types.CaptureContentTypeHeader
import Network.AWS.SageMaker.Types.CaptureMode
import Network.AWS.SageMaker.Types.CaptureOption
import Network.AWS.SageMaker.Types.CaptureStatus
import Network.AWS.SageMaker.Types.CategoricalParameterRange
import Network.AWS.SageMaker.Types.CategoricalParameterRangeSpecification
import Network.AWS.SageMaker.Types.Channel
import Network.AWS.SageMaker.Types.ChannelSpecification
import Network.AWS.SageMaker.Types.CheckpointConfig
import Network.AWS.SageMaker.Types.CodeRepositorySortBy
import Network.AWS.SageMaker.Types.CodeRepositorySortOrder
import Network.AWS.SageMaker.Types.CodeRepositorySummary
import Network.AWS.SageMaker.Types.CognitoConfig
import Network.AWS.SageMaker.Types.CognitoMemberDefinition
import Network.AWS.SageMaker.Types.CollectionConfiguration
import Network.AWS.SageMaker.Types.CompilationJobStatus
import Network.AWS.SageMaker.Types.CompilationJobSummary
import Network.AWS.SageMaker.Types.CompressionType
import Network.AWS.SageMaker.Types.ConditionOutcome
import Network.AWS.SageMaker.Types.ConditionStepMetadata
import Network.AWS.SageMaker.Types.ContainerDefinition
import Network.AWS.SageMaker.Types.ContainerMode
import Network.AWS.SageMaker.Types.ContentClassifier
import Network.AWS.SageMaker.Types.ContextSource
import Network.AWS.SageMaker.Types.ContextSummary
import Network.AWS.SageMaker.Types.ContinuousParameterRange
import Network.AWS.SageMaker.Types.ContinuousParameterRangeSpecification
import Network.AWS.SageMaker.Types.CustomImage
import Network.AWS.SageMaker.Types.DataCaptureConfig
import Network.AWS.SageMaker.Types.DataCaptureConfigSummary
import Network.AWS.SageMaker.Types.DataCatalogConfig
import Network.AWS.SageMaker.Types.DataDistributionType
import Network.AWS.SageMaker.Types.DataProcessing
import Network.AWS.SageMaker.Types.DataQualityAppSpecification
import Network.AWS.SageMaker.Types.DataQualityBaselineConfig
import Network.AWS.SageMaker.Types.DataQualityJobInput
import Network.AWS.SageMaker.Types.DataSource
import Network.AWS.SageMaker.Types.DatasetDefinition
import Network.AWS.SageMaker.Types.DebugHookConfig
import Network.AWS.SageMaker.Types.DebugRuleConfiguration
import Network.AWS.SageMaker.Types.DebugRuleEvaluationStatus
import Network.AWS.SageMaker.Types.DeployedImage
import Network.AWS.SageMaker.Types.DeploymentConfig
import Network.AWS.SageMaker.Types.DesiredWeightAndCapacity
import Network.AWS.SageMaker.Types.DetailedAlgorithmStatus
import Network.AWS.SageMaker.Types.DetailedModelPackageStatus
import Network.AWS.SageMaker.Types.Device
import Network.AWS.SageMaker.Types.DeviceFleetSummary
import Network.AWS.SageMaker.Types.DeviceStats
import Network.AWS.SageMaker.Types.DeviceSummary
import Network.AWS.SageMaker.Types.DirectInternetAccess
import Network.AWS.SageMaker.Types.DomainDetails
import Network.AWS.SageMaker.Types.DomainStatus
import Network.AWS.SageMaker.Types.EdgeModel
import Network.AWS.SageMaker.Types.EdgeModelStat
import Network.AWS.SageMaker.Types.EdgeModelSummary
import Network.AWS.SageMaker.Types.EdgeOutputConfig
import Network.AWS.SageMaker.Types.EdgePackagingJobStatus
import Network.AWS.SageMaker.Types.EdgePackagingJobSummary
import Network.AWS.SageMaker.Types.Endpoint
import Network.AWS.SageMaker.Types.EndpointConfigSortKey
import Network.AWS.SageMaker.Types.EndpointConfigSummary
import Network.AWS.SageMaker.Types.EndpointInput
import Network.AWS.SageMaker.Types.EndpointSortKey
import Network.AWS.SageMaker.Types.EndpointStatus
import Network.AWS.SageMaker.Types.EndpointSummary
import Network.AWS.SageMaker.Types.ExecutionStatus
import Network.AWS.SageMaker.Types.Experiment
import Network.AWS.SageMaker.Types.ExperimentConfig
import Network.AWS.SageMaker.Types.ExperimentSource
import Network.AWS.SageMaker.Types.ExperimentSummary
import Network.AWS.SageMaker.Types.Explainability
import Network.AWS.SageMaker.Types.FeatureDefinition
import Network.AWS.SageMaker.Types.FeatureGroup
import Network.AWS.SageMaker.Types.FeatureGroupSortBy
import Network.AWS.SageMaker.Types.FeatureGroupSortOrder
import Network.AWS.SageMaker.Types.FeatureGroupStatus
import Network.AWS.SageMaker.Types.FeatureGroupSummary
import Network.AWS.SageMaker.Types.FeatureType
import Network.AWS.SageMaker.Types.FileSystemAccessMode
import Network.AWS.SageMaker.Types.FileSystemConfig
import Network.AWS.SageMaker.Types.FileSystemDataSource
import Network.AWS.SageMaker.Types.FileSystemType
import Network.AWS.SageMaker.Types.Filter
import Network.AWS.SageMaker.Types.FinalAutoMLJobObjectiveMetric
import Network.AWS.SageMaker.Types.FinalHyperParameterTuningJobObjectiveMetric
import Network.AWS.SageMaker.Types.FlowDefinitionOutputConfig
import Network.AWS.SageMaker.Types.FlowDefinitionStatus
import Network.AWS.SageMaker.Types.FlowDefinitionSummary
import Network.AWS.SageMaker.Types.Framework
import Network.AWS.SageMaker.Types.GitConfig
import Network.AWS.SageMaker.Types.GitConfigForUpdate
import Network.AWS.SageMaker.Types.HumanLoopActivationConditionsConfig
import Network.AWS.SageMaker.Types.HumanLoopActivationConfig
import Network.AWS.SageMaker.Types.HumanLoopConfig
import Network.AWS.SageMaker.Types.HumanLoopRequestSource
import Network.AWS.SageMaker.Types.HumanTaskConfig
import Network.AWS.SageMaker.Types.HumanTaskUiStatus
import Network.AWS.SageMaker.Types.HumanTaskUiSummary
import Network.AWS.SageMaker.Types.HyperParameterAlgorithmSpecification
import Network.AWS.SageMaker.Types.HyperParameterScalingType
import Network.AWS.SageMaker.Types.HyperParameterSpecification
import Network.AWS.SageMaker.Types.HyperParameterTrainingJobDefinition
import Network.AWS.SageMaker.Types.HyperParameterTrainingJobSummary
import Network.AWS.SageMaker.Types.HyperParameterTuningJobConfig
import Network.AWS.SageMaker.Types.HyperParameterTuningJobObjective
import Network.AWS.SageMaker.Types.HyperParameterTuningJobObjectiveType
import Network.AWS.SageMaker.Types.HyperParameterTuningJobSortByOptions
import Network.AWS.SageMaker.Types.HyperParameterTuningJobStatus
import Network.AWS.SageMaker.Types.HyperParameterTuningJobStrategyType
import Network.AWS.SageMaker.Types.HyperParameterTuningJobSummary
import Network.AWS.SageMaker.Types.HyperParameterTuningJobWarmStartConfig
import Network.AWS.SageMaker.Types.HyperParameterTuningJobWarmStartType
import Network.AWS.SageMaker.Types.Image
import Network.AWS.SageMaker.Types.ImageConfig
import Network.AWS.SageMaker.Types.ImageSortBy
import Network.AWS.SageMaker.Types.ImageSortOrder
import Network.AWS.SageMaker.Types.ImageStatus
import Network.AWS.SageMaker.Types.ImageVersion
import Network.AWS.SageMaker.Types.ImageVersionSortBy
import Network.AWS.SageMaker.Types.ImageVersionSortOrder
import Network.AWS.SageMaker.Types.ImageVersionStatus
import Network.AWS.SageMaker.Types.InferenceExecutionConfig
import Network.AWS.SageMaker.Types.InferenceExecutionMode
import Network.AWS.SageMaker.Types.InferenceSpecification
import Network.AWS.SageMaker.Types.InputConfig
import Network.AWS.SageMaker.Types.InputMode
import Network.AWS.SageMaker.Types.InstanceType
import Network.AWS.SageMaker.Types.IntegerParameterRange
import Network.AWS.SageMaker.Types.IntegerParameterRangeSpecification
import Network.AWS.SageMaker.Types.JoinSource
import Network.AWS.SageMaker.Types.JupyterServerAppSettings
import Network.AWS.SageMaker.Types.KernelGatewayAppSettings
import Network.AWS.SageMaker.Types.KernelGatewayImageConfig
import Network.AWS.SageMaker.Types.KernelSpec
import Network.AWS.SageMaker.Types.LabelCounters
import Network.AWS.SageMaker.Types.LabelCountersForWorkteam
import Network.AWS.SageMaker.Types.LabelingJobAlgorithmsConfig
import Network.AWS.SageMaker.Types.LabelingJobDataAttributes
import Network.AWS.SageMaker.Types.LabelingJobDataSource
import Network.AWS.SageMaker.Types.LabelingJobForWorkteamSummary
import Network.AWS.SageMaker.Types.LabelingJobInputConfig
import Network.AWS.SageMaker.Types.LabelingJobOutput
import Network.AWS.SageMaker.Types.LabelingJobOutputConfig
import Network.AWS.SageMaker.Types.LabelingJobResourceConfig
import Network.AWS.SageMaker.Types.LabelingJobS3DataSource
import Network.AWS.SageMaker.Types.LabelingJobSNSDataSource
import Network.AWS.SageMaker.Types.LabelingJobStatus
import Network.AWS.SageMaker.Types.LabelingJobStoppingConditions
import Network.AWS.SageMaker.Types.LabelingJobSummary
import Network.AWS.SageMaker.Types.ListCompilationJobsSortBy
import Network.AWS.SageMaker.Types.ListDeviceFleetsSortBy
import Network.AWS.SageMaker.Types.ListEdgePackagingJobsSortBy
import Network.AWS.SageMaker.Types.ListLabelingJobsForWorkteamSortByOptions
import Network.AWS.SageMaker.Types.ListWorkforcesSortByOptions
import Network.AWS.SageMaker.Types.ListWorkteamsSortByOptions
import Network.AWS.SageMaker.Types.MemberDefinition
import Network.AWS.SageMaker.Types.MetadataProperties
import Network.AWS.SageMaker.Types.MetricData
import Network.AWS.SageMaker.Types.MetricDefinition
import Network.AWS.SageMaker.Types.MetricsSource
import Network.AWS.SageMaker.Types.ModelApprovalStatus
import Network.AWS.SageMaker.Types.ModelArtifacts
import Network.AWS.SageMaker.Types.ModelBiasAppSpecification
import Network.AWS.SageMaker.Types.ModelBiasBaselineConfig
import Network.AWS.SageMaker.Types.ModelBiasJobInput
import Network.AWS.SageMaker.Types.ModelCacheSetting
import Network.AWS.SageMaker.Types.ModelClientConfig
import Network.AWS.SageMaker.Types.ModelDataQuality
import Network.AWS.SageMaker.Types.ModelDigests
import Network.AWS.SageMaker.Types.ModelExplainabilityAppSpecification
import Network.AWS.SageMaker.Types.ModelExplainabilityBaselineConfig
import Network.AWS.SageMaker.Types.ModelExplainabilityJobInput
import Network.AWS.SageMaker.Types.ModelMetrics
import Network.AWS.SageMaker.Types.ModelPackage
import Network.AWS.SageMaker.Types.ModelPackageContainerDefinition
import Network.AWS.SageMaker.Types.ModelPackageGroup
import Network.AWS.SageMaker.Types.ModelPackageGroupSortBy
import Network.AWS.SageMaker.Types.ModelPackageGroupStatus
import Network.AWS.SageMaker.Types.ModelPackageGroupSummary
import Network.AWS.SageMaker.Types.ModelPackageSortBy
import Network.AWS.SageMaker.Types.ModelPackageStatus
import Network.AWS.SageMaker.Types.ModelPackageStatusDetails
import Network.AWS.SageMaker.Types.ModelPackageStatusItem
import Network.AWS.SageMaker.Types.ModelPackageSummary
import Network.AWS.SageMaker.Types.ModelPackageType
import Network.AWS.SageMaker.Types.ModelPackageValidationProfile
import Network.AWS.SageMaker.Types.ModelPackageValidationSpecification
import Network.AWS.SageMaker.Types.ModelQuality
import Network.AWS.SageMaker.Types.ModelQualityAppSpecification
import Network.AWS.SageMaker.Types.ModelQualityBaselineConfig
import Network.AWS.SageMaker.Types.ModelQualityJobInput
import Network.AWS.SageMaker.Types.ModelSortKey
import Network.AWS.SageMaker.Types.ModelStepMetadata
import Network.AWS.SageMaker.Types.ModelSummary
import Network.AWS.SageMaker.Types.MonitoringAppSpecification
import Network.AWS.SageMaker.Types.MonitoringBaselineConfig
import Network.AWS.SageMaker.Types.MonitoringClusterConfig
import Network.AWS.SageMaker.Types.MonitoringConstraintsResource
import Network.AWS.SageMaker.Types.MonitoringExecutionSortKey
import Network.AWS.SageMaker.Types.MonitoringExecutionSummary
import Network.AWS.SageMaker.Types.MonitoringGroundTruthS3Input
import Network.AWS.SageMaker.Types.MonitoringInput
import Network.AWS.SageMaker.Types.MonitoringJobDefinition
import Network.AWS.SageMaker.Types.MonitoringJobDefinitionSortKey
import Network.AWS.SageMaker.Types.MonitoringJobDefinitionSummary
import Network.AWS.SageMaker.Types.MonitoringNetworkConfig
import Network.AWS.SageMaker.Types.MonitoringOutput
import Network.AWS.SageMaker.Types.MonitoringOutputConfig
import Network.AWS.SageMaker.Types.MonitoringProblemType
import Network.AWS.SageMaker.Types.MonitoringResources
import Network.AWS.SageMaker.Types.MonitoringS3Output
import Network.AWS.SageMaker.Types.MonitoringSchedule
import Network.AWS.SageMaker.Types.MonitoringScheduleConfig
import Network.AWS.SageMaker.Types.MonitoringScheduleSortKey
import Network.AWS.SageMaker.Types.MonitoringScheduleSummary
import Network.AWS.SageMaker.Types.MonitoringStatisticsResource
import Network.AWS.SageMaker.Types.MonitoringStoppingCondition
import Network.AWS.SageMaker.Types.MonitoringType
import Network.AWS.SageMaker.Types.MultiModelConfig
import Network.AWS.SageMaker.Types.NestedFilters
import Network.AWS.SageMaker.Types.NetworkConfig
import Network.AWS.SageMaker.Types.NotebookInstanceAcceleratorType
import Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSortKey
import Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSortOrder
import Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSummary
import Network.AWS.SageMaker.Types.NotebookInstanceLifecycleHook
import Network.AWS.SageMaker.Types.NotebookInstanceSortKey
import Network.AWS.SageMaker.Types.NotebookInstanceSortOrder
import Network.AWS.SageMaker.Types.NotebookInstanceStatus
import Network.AWS.SageMaker.Types.NotebookInstanceSummary
import Network.AWS.SageMaker.Types.NotebookOutputOption
import Network.AWS.SageMaker.Types.NotificationConfiguration
import Network.AWS.SageMaker.Types.ObjectiveStatus
import Network.AWS.SageMaker.Types.ObjectiveStatusCounters
import Network.AWS.SageMaker.Types.OfflineStoreConfig
import Network.AWS.SageMaker.Types.OfflineStoreStatus
import Network.AWS.SageMaker.Types.OfflineStoreStatusValue
import Network.AWS.SageMaker.Types.OidcConfig
import Network.AWS.SageMaker.Types.OidcConfigForResponse
import Network.AWS.SageMaker.Types.OidcMemberDefinition
import Network.AWS.SageMaker.Types.OnlineStoreConfig
import Network.AWS.SageMaker.Types.OnlineStoreSecurityConfig
import Network.AWS.SageMaker.Types.Operator
import Network.AWS.SageMaker.Types.OrderKey
import Network.AWS.SageMaker.Types.OutputConfig
import Network.AWS.SageMaker.Types.OutputDataConfig
import Network.AWS.SageMaker.Types.Parameter
import Network.AWS.SageMaker.Types.ParameterRange
import Network.AWS.SageMaker.Types.ParameterRanges
import Network.AWS.SageMaker.Types.ParameterType
import Network.AWS.SageMaker.Types.Parent
import Network.AWS.SageMaker.Types.ParentHyperParameterTuningJob
import Network.AWS.SageMaker.Types.Pipeline
import Network.AWS.SageMaker.Types.PipelineExecution
import Network.AWS.SageMaker.Types.PipelineExecutionStatus
import Network.AWS.SageMaker.Types.PipelineExecutionStep
import Network.AWS.SageMaker.Types.PipelineExecutionStepMetadata
import Network.AWS.SageMaker.Types.PipelineExecutionSummary
import Network.AWS.SageMaker.Types.PipelineStatus
import Network.AWS.SageMaker.Types.PipelineSummary
import Network.AWS.SageMaker.Types.ProblemType
import Network.AWS.SageMaker.Types.ProcessingClusterConfig
import Network.AWS.SageMaker.Types.ProcessingFeatureStoreOutput
import Network.AWS.SageMaker.Types.ProcessingInput
import Network.AWS.SageMaker.Types.ProcessingInstanceType
import Network.AWS.SageMaker.Types.ProcessingJob
import Network.AWS.SageMaker.Types.ProcessingJobStatus
import Network.AWS.SageMaker.Types.ProcessingJobStepMetadata
import Network.AWS.SageMaker.Types.ProcessingJobSummary
import Network.AWS.SageMaker.Types.ProcessingOutput
import Network.AWS.SageMaker.Types.ProcessingOutputConfig
import Network.AWS.SageMaker.Types.ProcessingResources
import Network.AWS.SageMaker.Types.ProcessingS3CompressionType
import Network.AWS.SageMaker.Types.ProcessingS3DataDistributionType
import Network.AWS.SageMaker.Types.ProcessingS3DataType
import Network.AWS.SageMaker.Types.ProcessingS3Input
import Network.AWS.SageMaker.Types.ProcessingS3InputMode
import Network.AWS.SageMaker.Types.ProcessingS3Output
import Network.AWS.SageMaker.Types.ProcessingS3UploadMode
import Network.AWS.SageMaker.Types.ProcessingStoppingCondition
import Network.AWS.SageMaker.Types.ProductionVariant
import Network.AWS.SageMaker.Types.ProductionVariantAcceleratorType
import Network.AWS.SageMaker.Types.ProductionVariantCoreDumpConfig
import Network.AWS.SageMaker.Types.ProductionVariantInstanceType
import Network.AWS.SageMaker.Types.ProductionVariantSummary
import Network.AWS.SageMaker.Types.ProfilerConfig
import Network.AWS.SageMaker.Types.ProfilerConfigForUpdate
import Network.AWS.SageMaker.Types.ProfilerRuleConfiguration
import Network.AWS.SageMaker.Types.ProfilerRuleEvaluationStatus
import Network.AWS.SageMaker.Types.ProfilingStatus
import Network.AWS.SageMaker.Types.ProjectSortBy
import Network.AWS.SageMaker.Types.ProjectSortOrder
import Network.AWS.SageMaker.Types.ProjectStatus
import Network.AWS.SageMaker.Types.ProjectSummary
import Network.AWS.SageMaker.Types.PropertyNameQuery
import Network.AWS.SageMaker.Types.PropertyNameSuggestion
import Network.AWS.SageMaker.Types.ProvisioningParameter
import Network.AWS.SageMaker.Types.PublicWorkforceTaskPrice
import Network.AWS.SageMaker.Types.RecordWrapper
import Network.AWS.SageMaker.Types.RedshiftDatasetDefinition
import Network.AWS.SageMaker.Types.RedshiftResultCompressionType
import Network.AWS.SageMaker.Types.RedshiftResultFormat
import Network.AWS.SageMaker.Types.RegisterModelStepMetadata
import Network.AWS.SageMaker.Types.RenderableTask
import Network.AWS.SageMaker.Types.RenderingError
import Network.AWS.SageMaker.Types.RepositoryAccessMode
import Network.AWS.SageMaker.Types.ResolvedAttributes
import Network.AWS.SageMaker.Types.ResourceConfig
import Network.AWS.SageMaker.Types.ResourceLimits
import Network.AWS.SageMaker.Types.ResourceSpec
import Network.AWS.SageMaker.Types.ResourceType
import Network.AWS.SageMaker.Types.RetentionPolicy
import Network.AWS.SageMaker.Types.RetentionType
import Network.AWS.SageMaker.Types.RootAccess
import Network.AWS.SageMaker.Types.RuleEvaluationStatus
import Network.AWS.SageMaker.Types.S3DataDistribution
import Network.AWS.SageMaker.Types.S3DataSource
import Network.AWS.SageMaker.Types.S3DataType
import Network.AWS.SageMaker.Types.S3StorageConfig
import Network.AWS.SageMaker.Types.SagemakerServicecatalogStatus
import Network.AWS.SageMaker.Types.ScheduleConfig
import Network.AWS.SageMaker.Types.ScheduleStatus
import Network.AWS.SageMaker.Types.SearchExpression
import Network.AWS.SageMaker.Types.SearchRecord
import Network.AWS.SageMaker.Types.SearchSortOrder
import Network.AWS.SageMaker.Types.SecondaryStatus
import Network.AWS.SageMaker.Types.SecondaryStatusTransition
import Network.AWS.SageMaker.Types.ServiceCatalogProvisionedProductDetails
import Network.AWS.SageMaker.Types.ServiceCatalogProvisioningDetails
import Network.AWS.SageMaker.Types.SharingSettings
import Network.AWS.SageMaker.Types.ShuffleConfig
import Network.AWS.SageMaker.Types.SortActionsBy
import Network.AWS.SageMaker.Types.SortArtifactsBy
import Network.AWS.SageMaker.Types.SortAssociationsBy
import Network.AWS.SageMaker.Types.SortBy
import Network.AWS.SageMaker.Types.SortContextsBy
import Network.AWS.SageMaker.Types.SortExperimentsBy
import Network.AWS.SageMaker.Types.SortOrder
import Network.AWS.SageMaker.Types.SortPipelineExecutionsBy
import Network.AWS.SageMaker.Types.SortPipelinesBy
import Network.AWS.SageMaker.Types.SortTrialComponentsBy
import Network.AWS.SageMaker.Types.SortTrialsBy
import Network.AWS.SageMaker.Types.SourceAlgorithm
import Network.AWS.SageMaker.Types.SourceAlgorithmSpecification
import Network.AWS.SageMaker.Types.SourceIPConfig
import Network.AWS.SageMaker.Types.SplitType
import Network.AWS.SageMaker.Types.StepStatus
import Network.AWS.SageMaker.Types.StoppingCondition
import Network.AWS.SageMaker.Types.SubscribedWorkteam
import Network.AWS.SageMaker.Types.SuggestionQuery
import Network.AWS.SageMaker.Types.Tag
import Network.AWS.SageMaker.Types.TargetDevice
import Network.AWS.SageMaker.Types.TargetPlatform
import Network.AWS.SageMaker.Types.TargetPlatformAccelerator
import Network.AWS.SageMaker.Types.TargetPlatformArch
import Network.AWS.SageMaker.Types.TargetPlatformOS
import Network.AWS.SageMaker.Types.TensorBoardAppSettings
import Network.AWS.SageMaker.Types.TensorBoardOutputConfig
import Network.AWS.SageMaker.Types.TrafficRoutingConfig
import Network.AWS.SageMaker.Types.TrafficRoutingConfigType
import Network.AWS.SageMaker.Types.TrainingInputMode
import Network.AWS.SageMaker.Types.TrainingInstanceType
import Network.AWS.SageMaker.Types.TrainingJob
import Network.AWS.SageMaker.Types.TrainingJobDefinition
import Network.AWS.SageMaker.Types.TrainingJobEarlyStoppingType
import Network.AWS.SageMaker.Types.TrainingJobSortByOptions
import Network.AWS.SageMaker.Types.TrainingJobStatus
import Network.AWS.SageMaker.Types.TrainingJobStatusCounters
import Network.AWS.SageMaker.Types.TrainingJobStepMetadata
import Network.AWS.SageMaker.Types.TrainingJobSummary
import Network.AWS.SageMaker.Types.TrainingSpecification
import Network.AWS.SageMaker.Types.TransformDataSource
import Network.AWS.SageMaker.Types.TransformInput
import Network.AWS.SageMaker.Types.TransformInstanceType
import Network.AWS.SageMaker.Types.TransformJob
import Network.AWS.SageMaker.Types.TransformJobDefinition
import Network.AWS.SageMaker.Types.TransformJobStatus
import Network.AWS.SageMaker.Types.TransformJobStepMetadata
import Network.AWS.SageMaker.Types.TransformJobSummary
import Network.AWS.SageMaker.Types.TransformOutput
import Network.AWS.SageMaker.Types.TransformResources
import Network.AWS.SageMaker.Types.TransformS3DataSource
import Network.AWS.SageMaker.Types.Trial
import Network.AWS.SageMaker.Types.TrialComponent
import Network.AWS.SageMaker.Types.TrialComponentArtifact
import Network.AWS.SageMaker.Types.TrialComponentMetricSummary
import Network.AWS.SageMaker.Types.TrialComponentParameterValue
import Network.AWS.SageMaker.Types.TrialComponentPrimaryStatus
import Network.AWS.SageMaker.Types.TrialComponentSimpleSummary
import Network.AWS.SageMaker.Types.TrialComponentSource
import Network.AWS.SageMaker.Types.TrialComponentSourceDetail
import Network.AWS.SageMaker.Types.TrialComponentStatus
import Network.AWS.SageMaker.Types.TrialComponentSummary
import Network.AWS.SageMaker.Types.TrialSource
import Network.AWS.SageMaker.Types.TrialSummary
import Network.AWS.SageMaker.Types.TuningJobCompletionCriteria
import Network.AWS.SageMaker.Types.USD
import Network.AWS.SageMaker.Types.UiConfig
import Network.AWS.SageMaker.Types.UiTemplate
import Network.AWS.SageMaker.Types.UiTemplateInfo
import Network.AWS.SageMaker.Types.UserContext
import Network.AWS.SageMaker.Types.UserProfileDetails
import Network.AWS.SageMaker.Types.UserProfileSortKey
import Network.AWS.SageMaker.Types.UserProfileStatus
import Network.AWS.SageMaker.Types.UserSettings
import Network.AWS.SageMaker.Types.VPCConfig
import Network.AWS.SageMaker.Types.VariantProperty
import Network.AWS.SageMaker.Types.VariantPropertyType
import Network.AWS.SageMaker.Types.Workforce
import Network.AWS.SageMaker.Types.Workteam
import Network.AWS.Sign.V4

-- | API version @2017-07-24@ of the Amazon SageMaker Service SDK configuration.
sageMaker :: Service
sageMaker =
  Service
    { _svcAbbrev = "SageMaker",
      _svcSigner = v4,
      _svcPrefix = "api.sagemaker",
      _svcVersion = "2017-07-24",
      _svcEndpoint = defaultEndpoint sageMaker,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "SageMaker",
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

-- | Resource being accessed is in use.
_ResourceInUse :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUse =
  _MatchServiceError sageMaker "ResourceInUse"

-- | You have exceeded an Amazon SageMaker resource limit. For example, you might have too many training jobs created.
_ResourceLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceLimitExceeded =
  _MatchServiceError
    sageMaker
    "ResourceLimitExceeded"

-- | There was a conflict when you attempted to modify an experiment, trial, or trial component.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError sageMaker "ConflictException"

-- | Resource being access is not found.
_ResourceNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFound =
  _MatchServiceError sageMaker "ResourceNotFound"
