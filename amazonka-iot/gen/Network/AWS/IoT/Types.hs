{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types
  ( -- * Service Configuration
    ioT,

    -- * Errors
    _IndexNotReadyException,
    _TransferAlreadyCompletedException,
    _InvalidQueryException,
    _CertificateConflictException,
    _TaskAlreadyExistsException,
    _CertificateValidationException,
    _UnauthorizedException,
    _ResourceAlreadyExistsException,
    _InternalException,
    _MalformedPolicyException,
    _ServiceUnavailableException,
    _CertificateStateException,
    _InvalidAggregationException,
    _ThrottlingException,
    _InvalidRequestException,
    _ResourceRegistrationFailureException,
    _SqlParseException,
    _LimitExceededException,
    _InvalidStateTransitionException,
    _NotConfiguredException,
    _ResourceNotFoundException,
    _VersionConflictException,
    _RegistrationCodeValidationException,
    _VersionsLimitExceededException,
    _InternalFailureException,
    _DeleteConflictException,
    _InvalidResponseException,
    _TransferConflictException,
    _ConflictingResourceUpdateException,

    -- * AWSJobAbortCriteriaAbortAction
    AWSJobAbortCriteriaAbortAction (..),

    -- * AWSJobAbortCriteriaFailureType
    AWSJobAbortCriteriaFailureType (..),

    -- * AbortAction
    AbortAction (..),

    -- * ActionType
    ActionType (..),

    -- * AlertTargetType
    AlertTargetType (..),

    -- * AuditCheckRunStatus
    AuditCheckRunStatus (..),

    -- * AuditFindingSeverity
    AuditFindingSeverity (..),

    -- * AuditFrequency
    AuditFrequency (..),

    -- * AuditMitigationActionsExecutionStatus
    AuditMitigationActionsExecutionStatus (..),

    -- * AuditMitigationActionsTaskStatus
    AuditMitigationActionsTaskStatus (..),

    -- * AuditNotificationType
    AuditNotificationType (..),

    -- * AuditTaskStatus
    AuditTaskStatus (..),

    -- * AuditTaskType
    AuditTaskType (..),

    -- * AuthDecision
    AuthDecision (..),

    -- * AuthorizerStatus
    AuthorizerStatus (..),

    -- * AutoRegistrationStatus
    AutoRegistrationStatus (..),

    -- * BehaviorCriteriaType
    BehaviorCriteriaType (..),

    -- * CACertificateStatus
    CACertificateStatus (..),

    -- * CACertificateUpdateAction
    CACertificateUpdateAction (..),

    -- * CannedAccessControlList
    CannedAccessControlList (..),

    -- * CertificateMode
    CertificateMode (..),

    -- * CertificateStatus
    CertificateStatus (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * ConfidenceLevel
    ConfidenceLevel (..),

    -- * CustomMetricType
    CustomMetricType (..),

    -- * DayOfWeek
    DayOfWeek (..),

    -- * DetectMitigationActionExecutionStatus
    DetectMitigationActionExecutionStatus (..),

    -- * DetectMitigationActionsTaskStatus
    DetectMitigationActionsTaskStatus (..),

    -- * DeviceCertificateUpdateAction
    DeviceCertificateUpdateAction (..),

    -- * DimensionType
    DimensionType (..),

    -- * DimensionValueOperator
    DimensionValueOperator (..),

    -- * DomainConfigurationStatus
    DomainConfigurationStatus (..),

    -- * DomainType
    DomainType (..),

    -- * DynamicGroupStatus
    DynamicGroupStatus (..),

    -- * DynamoKeyType
    DynamoKeyType (..),

    -- * EventType
    EventType (..),

    -- * FieldType
    FieldType (..),

    -- * IndexStatus
    IndexStatus (..),

    -- * JobExecutionFailureType
    JobExecutionFailureType (..),

    -- * JobExecutionStatus
    JobExecutionStatus (..),

    -- * JobStatus
    JobStatus (..),

    -- * LogLevel
    LogLevel (..),

    -- * LogTargetType
    LogTargetType (..),

    -- * MessageFormat
    MessageFormat (..),

    -- * MitigationActionType
    MitigationActionType (..),

    -- * ModelStatus
    ModelStatus (..),

    -- * OTAUpdateStatus
    OTAUpdateStatus (..),

    -- * PolicyTemplateName
    PolicyTemplateName (..),

    -- * Protocol
    Protocol (..),

    -- * ReportType
    ReportType (..),

    -- * ResourceType
    ResourceType (..),

    -- * ServerCertificateStatus
    ServerCertificateStatus (..),

    -- * ServiceType
    ServiceType (..),

    -- * TargetSelection
    TargetSelection (..),

    -- * TaskStatus
    TaskStatus (..),

    -- * ThingConnectivityIndexingMode
    ThingConnectivityIndexingMode (..),

    -- * ThingGroupIndexingMode
    ThingGroupIndexingMode (..),

    -- * ThingIndexingMode
    ThingIndexingMode (..),

    -- * TopicRuleDestinationStatus
    TopicRuleDestinationStatus (..),

    -- * ViolationEventType
    ViolationEventType (..),

    -- * AWSJobAbortConfig
    AWSJobAbortConfig (..),
    awsJobAbortConfig,
    ajacAbortCriteriaList,

    -- * AWSJobAbortCriteria
    AWSJobAbortCriteria (..),
    awsJobAbortCriteria,
    ajacFailureType,
    ajacAction,
    ajacThresholdPercentage,
    ajacMinNumberOfExecutedThings,

    -- * AWSJobExecutionsRolloutConfig
    AWSJobExecutionsRolloutConfig (..),
    awsJobExecutionsRolloutConfig,
    ajercExponentialRate,
    ajercMaximumPerMinute,

    -- * AWSJobExponentialRolloutRate
    AWSJobExponentialRolloutRate (..),
    awsJobExponentialRolloutRate,
    ajerrBaseRatePerMinute,
    ajerrIncrementFactor,
    ajerrRateIncreaseCriteria,

    -- * AWSJobPresignedURLConfig
    AWSJobPresignedURLConfig (..),
    awsJobPresignedURLConfig,
    ajpucExpiresInSec,

    -- * AWSJobRateIncreaseCriteria
    AWSJobRateIncreaseCriteria (..),
    awsJobRateIncreaseCriteria,
    ajricNumberOfNotifiedThings,
    ajricNumberOfSucceededThings,

    -- * AWSJobTimeoutConfig
    AWSJobTimeoutConfig (..),
    awsJobTimeoutConfig,
    ajtcInProgressTimeoutInMinutes,

    -- * AbortConfig
    AbortConfig (..),
    abortConfig,
    acCriteriaList,

    -- * AbortCriteria
    AbortCriteria (..),
    abortCriteria,
    acFailureType,
    acAction,
    acThresholdPercentage,
    acMinNumberOfExecutedThings,

    -- * Action
    Action (..),
    action,
    aCloudwatchLogs,
    aCloudwatchMetric,
    aSqs,
    aTimestream,
    aFirehose,
    aSns,
    aElasticsearch,
    aKinesis,
    aSalesforce,
    aDynamoDBv2,
    aLambda,
    aIotAnalytics,
    aIotSiteWise,
    aRepublish,
    aKafka,
    aDynamoDB,
    aStepFunctions,
    aCloudwatchAlarm,
    aHttp,
    aS3,
    aIotEvents,

    -- * ActiveViolation
    ActiveViolation (..),
    activeViolation,
    avViolationId,
    avLastViolationTime,
    avThingName,
    avLastViolationValue,
    avSecurityProfileName,
    avBehavior,
    avViolationStartTime,
    avViolationEventAdditionalInfo,

    -- * AddThingsToThingGroupParams
    AddThingsToThingGroupParams (..),
    addThingsToThingGroupParams,
    atttgpOverrideDynamicGroups,
    atttgpThingGroupNames,

    -- * AlertTarget
    AlertTarget (..),
    alertTarget,
    atAlertTargetARN,
    atRoleARN,

    -- * Allowed
    Allowed (..),
    allowed,
    aPolicies,

    -- * AssetPropertyTimestamp
    AssetPropertyTimestamp (..),
    assetPropertyTimestamp,
    aptOffsetInNanos,
    aptTimeInSeconds,

    -- * AssetPropertyValue
    AssetPropertyValue (..),
    assetPropertyValue,
    apvQuality,
    apvValue,
    apvTimestamp,

    -- * AssetPropertyVariant
    AssetPropertyVariant (..),
    assetPropertyVariant,
    apvDoubleValue,
    apvStringValue,
    apvBooleanValue,
    apvIntegerValue,

    -- * AttributePayload
    AttributePayload (..),
    attributePayload,
    apMerge,
    apAttributes,

    -- * AuditCheckConfiguration
    AuditCheckConfiguration (..),
    auditCheckConfiguration,
    accEnabled,

    -- * AuditCheckDetails
    AuditCheckDetails (..),
    auditCheckDetails,
    acdCheckCompliant,
    acdMessage,
    acdSuppressedNonCompliantResourcesCount,
    acdCheckRunStatus,
    acdTotalResourcesCount,
    acdErrorCode,
    acdNonCompliantResourcesCount,

    -- * AuditFinding
    AuditFinding (..),
    auditFinding,
    afSeverity,
    afFindingId,
    afTaskId,
    afReasonForNonComplianceCode,
    afReasonForNonCompliance,
    afIsSuppressed,
    afCheckName,
    afRelatedResources,
    afFindingTime,
    afTaskStartTime,
    afNonCompliantResource,

    -- * AuditMitigationActionExecutionMetadata
    AuditMitigationActionExecutionMetadata (..),
    auditMitigationActionExecutionMetadata,
    amaemStatus,
    amaemActionName,
    amaemMessage,
    amaemActionId,
    amaemFindingId,
    amaemTaskId,
    amaemStartTime,
    amaemEndTime,
    amaemErrorCode,

    -- * AuditMitigationActionsTaskMetadata
    AuditMitigationActionsTaskMetadata (..),
    auditMitigationActionsTaskMetadata,
    amatmTaskId,
    amatmStartTime,
    amatmTaskStatus,

    -- * AuditMitigationActionsTaskTarget
    AuditMitigationActionsTaskTarget (..),
    auditMitigationActionsTaskTarget,
    amattFindingIds,
    amattAuditTaskId,
    amattAuditCheckToReasonCodeFilter,

    -- * AuditNotificationTarget
    AuditNotificationTarget (..),
    auditNotificationTarget,
    antRoleARN,
    antEnabled,
    antTargetARN,

    -- * AuditSuppression
    AuditSuppression (..),
    auditSuppression,
    asExpirationDate,
    asDescription,
    asSuppressIndefinitely,
    asCheckName,
    asResourceIdentifier,

    -- * AuditTaskMetadata
    AuditTaskMetadata (..),
    auditTaskMetadata,
    atmTaskId,
    atmTaskStatus,
    atmTaskType,

    -- * AuthInfo
    AuthInfo (..),
    authInfo,
    aiActionType,
    aiResources,

    -- * AuthResult
    AuthResult (..),
    authResult,
    arAuthInfo,
    arAllowed,
    arDenied,
    arMissingContextValues,
    arAuthDecision,

    -- * AuthorizerConfig
    AuthorizerConfig (..),
    authorizerConfig,
    acAllowAuthorizerOverride,
    acDefaultAuthorizerName,

    -- * AuthorizerDescription
    AuthorizerDescription (..),
    authorizerDescription,
    adLastModifiedDate,
    adStatus,
    adAuthorizerARN,
    adAuthorizerFunctionARN,
    adCreationDate,
    adTokenSigningPublicKeys,
    adAuthorizerName,
    adSigningDisabled,
    adTokenKeyName,

    -- * AuthorizerSummary
    AuthorizerSummary (..),
    authorizerSummary,
    asAuthorizerARN,
    asAuthorizerName,

    -- * Behavior
    Behavior (..),
    behavior,
    bMetricDimension,
    bSuppressAlerts,
    bMetric,
    bCriteria,
    bName,

    -- * BehaviorCriteria
    BehaviorCriteria (..),
    behaviorCriteria,
    bcComparisonOperator,
    bcConsecutiveDatapointsToAlarm,
    bcStatisticalThreshold,
    bcMlDetectionConfig,
    bcConsecutiveDatapointsToClear,
    bcValue,
    bcDurationSeconds,

    -- * BehaviorModelTrainingSummary
    BehaviorModelTrainingSummary (..),
    behaviorModelTrainingSummary,
    bmtsLastModelRefreshDate,
    bmtsDatapointsCollectionPercentage,
    bmtsModelStatus,
    bmtsBehaviorName,
    bmtsTrainingDataCollectionStartDate,
    bmtsSecurityProfileName,

    -- * BillingGroupMetadata
    BillingGroupMetadata (..),
    billingGroupMetadata,
    bgmCreationDate,

    -- * BillingGroupProperties
    BillingGroupProperties (..),
    billingGroupProperties,
    bgpBillingGroupDescription,

    -- * CACertificate
    CACertificate (..),
    cACertificate,
    cacStatus,
    cacCertificateARN,
    cacCreationDate,
    cacCertificateId,

    -- * CACertificateDescription
    CACertificateDescription (..),
    cACertificateDescription,
    cacdLastModifiedDate,
    cacdStatus,
    cacdCertificateARN,
    cacdCreationDate,
    cacdOwnedBy,
    cacdCustomerVersion,
    cacdGenerationId,
    cacdCertificateId,
    cacdCertificatePem,
    cacdValidity,
    cacdAutoRegistrationStatus,

    -- * Certificate
    Certificate (..),
    certificate,
    cStatus,
    cCertificateMode,
    cCertificateARN,
    cCreationDate,
    cCertificateId,

    -- * CertificateDescription
    CertificateDescription (..),
    certificateDescription,
    cdLastModifiedDate,
    cdStatus,
    cdCertificateMode,
    cdCertificateARN,
    cdPreviousOwnedBy,
    cdCreationDate,
    cdOwnedBy,
    cdCustomerVersion,
    cdGenerationId,
    cdTransferData,
    cdCertificateId,
    cdCertificatePem,
    cdValidity,
    cdCaCertificateId,

    -- * CertificateValidity
    CertificateValidity (..),
    certificateValidity,
    cvNotBefore,
    cvNotAfter,

    -- * CloudwatchAlarmAction
    CloudwatchAlarmAction (..),
    cloudwatchAlarmAction,
    caaRoleARN,
    caaAlarmName,
    caaStateReason,
    caaStateValue,

    -- * CloudwatchLogsAction
    CloudwatchLogsAction (..),
    cloudwatchLogsAction,
    claRoleARN,
    claLogGroupName,

    -- * CloudwatchMetricAction
    CloudwatchMetricAction (..),
    cloudwatchMetricAction,
    cmaMetricTimestamp,
    cmaRoleARN,
    cmaMetricNamespace,
    cmaMetricName,
    cmaMetricValue,
    cmaMetricUnit,

    -- * CodeSigning
    CodeSigning (..),
    codeSigning,
    csStartSigningJobParameter,
    csAwsSignerJobId,
    csCustomCodeSigning,

    -- * CodeSigningCertificateChain
    CodeSigningCertificateChain (..),
    codeSigningCertificateChain,
    csccInlineDocument,
    csccCertificateName,

    -- * CodeSigningSignature
    CodeSigningSignature (..),
    codeSigningSignature,
    cssInlineDocument,

    -- * Configuration
    Configuration (..),
    configuration,
    cEnabled,

    -- * CustomCodeSigning
    CustomCodeSigning (..),
    customCodeSigning,
    ccsSignature,
    ccsSignatureAlgorithm,
    ccsCertificateChain,
    ccsHashAlgorithm,

    -- * Denied
    Denied (..),
    denied,
    dImplicitDeny,
    dExplicitDeny,

    -- * Destination
    Destination (..),
    destination,
    dS3Destination,

    -- * DetectMitigationActionExecution
    DetectMitigationActionExecution (..),
    detectMitigationActionExecution,
    dmaeViolationId,
    dmaeStatus,
    dmaeActionName,
    dmaeExecutionStartDate,
    dmaeMessage,
    dmaeThingName,
    dmaeTaskId,
    dmaeExecutionEndDate,
    dmaeErrorCode,

    -- * DetectMitigationActionsTaskStatistics
    DetectMitigationActionsTaskStatistics (..),
    detectMitigationActionsTaskStatistics,
    dmatsActionsFailed,
    dmatsActionsSkipped,
    dmatsActionsExecuted,

    -- * DetectMitigationActionsTaskSummary
    DetectMitigationActionsTaskSummary (..),
    detectMitigationActionsTaskSummary,
    dmatsTaskEndTime,
    dmatsTaskStatistics,
    dmatsTaskId,
    dmatsViolationEventOccurrenceRange,
    dmatsOnlyActiveViolationsIncluded,
    dmatsTarget,
    dmatsTaskStatus,
    dmatsActionsDefinition,
    dmatsTaskStartTime,
    dmatsSuppressedAlertsIncluded,

    -- * DetectMitigationActionsTaskTarget
    DetectMitigationActionsTaskTarget (..),
    detectMitigationActionsTaskTarget,
    dmattViolationIds,
    dmattBehaviorName,
    dmattSecurityProfileName,

    -- * DomainConfigurationSummary
    DomainConfigurationSummary (..),
    domainConfigurationSummary,
    dcsDomainConfigurationARN,
    dcsDomainConfigurationName,
    dcsServiceType,

    -- * DynamoDBAction
    DynamoDBAction (..),
    dynamoDBAction,
    ddbaRangeKeyValue,
    ddbaRangeKeyType,
    ddbaOperation,
    ddbaHashKeyType,
    ddbaRangeKeyField,
    ddbaPayloadField,
    ddbaTableName,
    ddbaRoleARN,
    ddbaHashKeyField,
    ddbaHashKeyValue,

    -- * DynamoDBv2Action
    DynamoDBv2Action (..),
    dynamoDBv2Action,
    ddaRoleARN,
    ddaPutItem,

    -- * EffectivePolicy
    EffectivePolicy (..),
    effectivePolicy,
    epPolicyName,
    epPolicyDocument,
    epPolicyARN,

    -- * ElasticsearchAction
    ElasticsearchAction (..),
    elasticsearchAction,
    eaRoleARN,
    eaEndpoint,
    eaIndex,
    eaType,
    eaId,

    -- * EnableIOTLoggingParams
    EnableIOTLoggingParams (..),
    enableIOTLoggingParams,
    eiotlpRoleARNForLogging,
    eiotlpLogLevel,

    -- * ErrorInfo
    ErrorInfo (..),
    errorInfo,
    eiMessage,
    eiCode,

    -- * ExplicitDeny
    ExplicitDeny (..),
    explicitDeny,
    edPolicies,

    -- * ExponentialRolloutRate
    ExponentialRolloutRate (..),
    exponentialRolloutRate,
    errBaseRatePerMinute,
    errIncrementFactor,
    errRateIncreaseCriteria,

    -- * Field
    Field (..),
    field,
    fName,
    fType,

    -- * FileLocation
    FileLocation (..),
    fileLocation,
    flStream,
    flS3Location,

    -- * FirehoseAction
    FirehoseAction (..),
    firehoseAction,
    faSeparator,
    faBatchMode,
    faRoleARN,
    faDeliveryStreamName,

    -- * GroupNameAndARN
    GroupNameAndARN (..),
    groupNameAndARN,
    gnaaGroupName,
    gnaaGroupARN,

    -- * HTTPAction
    HTTPAction (..),
    hTTPAction,
    httpaHeaders,
    httpaAuth,
    httpaConfirmationURL,
    httpaUrl,

    -- * HTTPActionHeader
    HTTPActionHeader (..),
    hTTPActionHeader,
    httpahKey,
    httpahValue,

    -- * HTTPAuthorization
    HTTPAuthorization (..),
    hTTPAuthorization,
    httpaSigv4,

    -- * HTTPContext
    HTTPContext (..),
    hTTPContext,
    httpcQueryString,
    httpcHeaders,

    -- * HTTPURLDestinationConfiguration
    HTTPURLDestinationConfiguration (..),
    hTTPURLDestinationConfiguration,
    httpudcConfirmationURL,

    -- * HTTPURLDestinationProperties
    HTTPURLDestinationProperties (..),
    hTTPURLDestinationProperties,
    httpudpConfirmationURL,

    -- * HTTPURLDestinationSummary
    HTTPURLDestinationSummary (..),
    hTTPURLDestinationSummary,
    httpudsConfirmationURL,

    -- * ImplicitDeny
    ImplicitDeny (..),
    implicitDeny,
    idPolicies,

    -- * IotAnalyticsAction
    IotAnalyticsAction (..),
    iotAnalyticsAction,
    iaaChannelName,
    iaaRoleARN,
    iaaBatchMode,
    iaaChannelARN,

    -- * IotEventsAction
    IotEventsAction (..),
    iotEventsAction,
    ieaBatchMode,
    ieaMessageId,
    ieaInputName,
    ieaRoleARN,

    -- * IotSiteWiseAction
    IotSiteWiseAction (..),
    iotSiteWiseAction,
    iswaPutAssetPropertyValueEntries,
    iswaRoleARN,

    -- * Job
    Job (..),
    job,
    jobJobExecutionsRolloutConfig,
    jobStatus,
    jobTargetSelection,
    jobTimeoutConfig,
    jobReasonCode,
    jobNamespaceId,
    jobJobProcessDetails,
    jobComment,
    jobCompletedAt,
    jobCreatedAt,
    jobJobARN,
    jobTargets,
    jobForceCanceled,
    jobPresignedURLConfig,
    jobDescription,
    jobAbortConfig,
    jobLastUpdatedAt,
    jobJobId,

    -- * JobExecution
    JobExecution (..),
    jobExecution,
    jeStartedAt,
    jeStatus,
    jeThingARN,
    jeStatusDetails,
    jeQueuedAt,
    jeForceCanceled,
    jeVersionNumber,
    jeExecutionNumber,
    jeApproximateSecondsBeforeTimedOut,
    jeLastUpdatedAt,
    jeJobId,

    -- * JobExecutionStatusDetails
    JobExecutionStatusDetails (..),
    jobExecutionStatusDetails,
    jesdDetailsMap,

    -- * JobExecutionSummary
    JobExecutionSummary (..),
    jobExecutionSummary,
    jesStartedAt,
    jesStatus,
    jesQueuedAt,
    jesExecutionNumber,
    jesLastUpdatedAt,

    -- * JobExecutionSummaryForJob
    JobExecutionSummaryForJob (..),
    jobExecutionSummaryForJob,
    jesfjThingARN,
    jesfjJobExecutionSummary,

    -- * JobExecutionSummaryForThing
    JobExecutionSummaryForThing (..),
    jobExecutionSummaryForThing,
    jesftJobExecutionSummary,
    jesftJobId,

    -- * JobExecutionsRolloutConfig
    JobExecutionsRolloutConfig (..),
    jobExecutionsRolloutConfig,
    jercExponentialRate,
    jercMaximumPerMinute,

    -- * JobProcessDetails
    JobProcessDetails (..),
    jobProcessDetails,
    jpdProcessingTargets,
    jpdNumberOfSucceededThings,
    jpdNumberOfQueuedThings,
    jpdNumberOfRemovedThings,
    jpdNumberOfInProgressThings,
    jpdNumberOfFailedThings,
    jpdNumberOfRejectedThings,
    jpdNumberOfCanceledThings,
    jpdNumberOfTimedOutThings,

    -- * JobSummary
    JobSummary (..),
    jobSummary,
    jsStatus,
    jsTargetSelection,
    jsCompletedAt,
    jsCreatedAt,
    jsJobARN,
    jsThingGroupId,
    jsLastUpdatedAt,
    jsJobId,

    -- * KafkaAction
    KafkaAction (..),
    kafkaAction,
    kaKey,
    kaPartition,
    kaDestinationARN,
    kaTopic,
    kaClientProperties,

    -- * KeyPair
    KeyPair (..),
    keyPair,
    kpPublicKey,
    kpPrivateKey,

    -- * KinesisAction
    KinesisAction (..),
    kinesisAction,
    kaPartitionKey,
    kaRoleARN,
    kaStreamName,

    -- * LambdaAction
    LambdaAction (..),
    lambdaAction,
    laFunctionARN,

    -- * LogTarget
    LogTarget (..),
    logTarget,
    ltTargetName,
    ltTargetType,

    -- * LogTargetConfiguration
    LogTargetConfiguration (..),
    logTargetConfiguration,
    ltcLogLevel,
    ltcLogTarget,

    -- * LoggingOptionsPayload
    LoggingOptionsPayload (..),
    loggingOptionsPayload,
    lopLogLevel,
    lopRoleARN,

    -- * MachineLearningDetectionConfig
    MachineLearningDetectionConfig (..),
    machineLearningDetectionConfig,
    mldcConfidenceLevel,

    -- * MetricDimension
    MetricDimension (..),
    metricDimension,
    mdOperator,
    mdDimensionName,

    -- * MetricToRetain
    MetricToRetain (..),
    metricToRetain,
    mtrMetricDimension,
    mtrMetric,

    -- * MetricValue
    MetricValue (..),
    metricValue,
    mvNumbers,
    mvPorts,
    mvCidrs,
    mvStrings,
    mvCount,
    mvNumber,

    -- * MitigationAction
    MitigationAction (..),
    mitigationAction,
    maRoleARN,
    maId,
    maActionParams,
    maName,

    -- * MitigationActionIdentifier
    MitigationActionIdentifier (..),
    mitigationActionIdentifier,
    maiActionName,
    maiActionARN,
    maiCreationDate,

    -- * MitigationActionParams
    MitigationActionParams (..),
    mitigationActionParams,
    mapEnableIOTLoggingParams,
    mapReplaceDefaultPolicyVersionParams,
    mapUpdateDeviceCertificateParams,
    mapPublishFindingToSNSParams,
    mapAddThingsToThingGroupParams,
    mapUpdateCACertificateParams,

    -- * MqttContext
    MqttContext (..),
    mqttContext,
    mcClientId,
    mcPassword,
    mcUsername,

    -- * NonCompliantResource
    NonCompliantResource (..),
    nonCompliantResource,
    ncrAdditionalInfo,
    ncrResourceType,
    ncrResourceIdentifier,

    -- * OTAUpdateFile
    OTAUpdateFile (..),
    oTAUpdateFile,
    otaufFileVersion,
    otaufFileLocation,
    otaufAttributes,
    otaufFileName,
    otaufFileType,
    otaufCodeSigning,

    -- * OTAUpdateInfo
    OTAUpdateInfo (..),
    oTAUpdateInfo,
    otauiOtaUpdateStatus,
    otauiLastModifiedDate,
    otauiTargetSelection,
    otauiOtaUpdateARN,
    otauiAwsIotJobId,
    otauiCreationDate,
    otauiAwsIotJobARN,
    otauiProtocols,
    otauiTargets,
    otauiAwsJobPresignedURLConfig,
    otauiErrorInfo,
    otauiDescription,
    otauiOtaUpdateFiles,
    otauiOtaUpdateId,
    otauiAdditionalParameters,
    otauiAwsJobExecutionsRolloutConfig,

    -- * OTAUpdateSummary
    OTAUpdateSummary (..),
    oTAUpdateSummary,
    otausOtaUpdateARN,
    otausCreationDate,
    otausOtaUpdateId,

    -- * OutgoingCertificate
    OutgoingCertificate (..),
    outgoingCertificate,
    ocTransferDate,
    ocCertificateARN,
    ocTransferMessage,
    ocCreationDate,
    ocTransferredTo,
    ocCertificateId,

    -- * PercentPair
    PercentPair (..),
    percentPair,
    ppPercent,
    ppValue,

    -- * Policy
    Policy (..),
    policy,
    pPolicyName,
    pPolicyARN,

    -- * PolicyVersion
    PolicyVersion (..),
    policyVersion,
    pvCreateDate,
    pvVersionId,
    pvIsDefaultVersion,

    -- * PolicyVersionIdentifier
    PolicyVersionIdentifier (..),
    policyVersionIdentifier,
    pviPolicyVersionId,
    pviPolicyName,

    -- * PresignedURLConfig
    PresignedURLConfig (..),
    presignedURLConfig,
    pucRoleARN,
    pucExpiresInSec,

    -- * ProvisioningHook
    ProvisioningHook (..),
    provisioningHook,
    phPayloadVersion,
    phTargetARN,

    -- * ProvisioningTemplateSummary
    ProvisioningTemplateSummary (..),
    provisioningTemplateSummary,
    ptsTemplateName,
    ptsLastModifiedDate,
    ptsEnabled,
    ptsCreationDate,
    ptsDescription,
    ptsTemplateARN,

    -- * ProvisioningTemplateVersionSummary
    ProvisioningTemplateVersionSummary (..),
    provisioningTemplateVersionSummary,
    ptvsCreationDate,
    ptvsVersionId,
    ptvsIsDefaultVersion,

    -- * PublishFindingToSNSParams
    PublishFindingToSNSParams (..),
    publishFindingToSNSParams,
    pftspTopicARN,

    -- * PutAssetPropertyValueEntry
    PutAssetPropertyValueEntry (..),
    putAssetPropertyValueEntry,
    papveEntryId,
    papvePropertyAlias,
    papveAssetId,
    papvePropertyId,
    papvePropertyValues,

    -- * PutItemInput
    PutItemInput (..),
    putItemInput,
    piiTableName,

    -- * RateIncreaseCriteria
    RateIncreaseCriteria (..),
    rateIncreaseCriteria,
    ricNumberOfNotifiedThings,
    ricNumberOfSucceededThings,

    -- * RegistrationConfig
    RegistrationConfig (..),
    registrationConfig,
    rcRoleARN,
    rcTemplateBody,

    -- * RelatedResource
    RelatedResource (..),
    relatedResource,
    rrAdditionalInfo,
    rrResourceType,
    rrResourceIdentifier,

    -- * ReplaceDefaultPolicyVersionParams
    ReplaceDefaultPolicyVersionParams (..),
    replaceDefaultPolicyVersionParams,
    rdpvpTemplateName,

    -- * RepublishAction
    RepublishAction (..),
    republishAction,
    raQos,
    raRoleARN,
    raTopic,

    -- * ResourceIdentifier
    ResourceIdentifier (..),
    resourceIdentifier,
    riRoleAliasARN,
    riClientId,
    riIamRoleARN,
    riCognitoIdentityPoolId,
    riAccount,
    riPolicyVersionIdentifier,
    riDeviceCertificateId,
    riCaCertificateId,

    -- * RoleAliasDescription
    RoleAliasDescription (..),
    roleAliasDescription,
    radRoleAliasARN,
    radLastModifiedDate,
    radRoleARN,
    radCreationDate,
    radOwner,
    radCredentialDurationSeconds,
    radRoleAlias,

    -- * S3Action
    S3Action (..),
    s3Action,
    sCannedACL,
    sRoleARN,
    sBucketName,
    sKey,

    -- * S3Destination
    S3Destination (..),
    s3Destination,
    sdPrefix,
    sdBucket,

    -- * S3Location
    S3Location (..),
    s3Location,
    slKey,
    slVersion,
    slBucket,

    -- * SNSAction
    SNSAction (..),
    snsAction,
    snsaMessageFormat,
    snsaTargetARN,
    snsaRoleARN,

    -- * SalesforceAction
    SalesforceAction (..),
    salesforceAction,
    saToken,
    saUrl,

    -- * ScheduledAuditMetadata
    ScheduledAuditMetadata (..),
    scheduledAuditMetadata,
    samDayOfWeek,
    samScheduledAuditARN,
    samScheduledAuditName,
    samDayOfMonth,
    samFrequency,

    -- * SecurityProfileIdentifier
    SecurityProfileIdentifier (..),
    securityProfileIdentifier,
    spiName,
    spiArn,

    -- * SecurityProfileTarget
    SecurityProfileTarget (..),
    securityProfileTarget,
    sptArn,

    -- * SecurityProfileTargetMapping
    SecurityProfileTargetMapping (..),
    securityProfileTargetMapping,
    sptmTarget,
    sptmSecurityProfileIdentifier,

    -- * ServerCertificateSummary
    ServerCertificateSummary (..),
    serverCertificateSummary,
    scsServerCertificateStatus,
    scsServerCertificateARN,
    scsServerCertificateStatusDetail,

    -- * SigV4Authorization
    SigV4Authorization (..),
    sigV4Authorization,
    svaSigningRegion,
    svaServiceName,
    svaRoleARN,

    -- * SigningProfileParameter
    SigningProfileParameter (..),
    signingProfileParameter,
    sppPlatform,
    sppCertificateARN,
    sppCertificatePathOnDevice,

    -- * SqsAction
    SqsAction (..),
    sqsAction,
    saUseBase64,
    saRoleARN,
    saQueueURL,

    -- * StartSigningJobParameter
    StartSigningJobParameter (..),
    startSigningJobParameter,
    ssjpSigningProfileName,
    ssjpDestination,
    ssjpSigningProfileParameter,

    -- * StatisticalThreshold
    StatisticalThreshold (..),
    statisticalThreshold,
    stStatistic,

    -- * Statistics
    Statistics (..),
    statistics,
    sMinimum,
    sSum,
    sStdDeviation,
    sVariance,
    sAverage,
    sCount,
    sMaximum,
    sSumOfSquares,

    -- * StepFunctionsAction
    StepFunctionsAction (..),
    stepFunctionsAction,
    sfaExecutionNamePrefix,
    sfaStateMachineName,
    sfaRoleARN,

    -- * Stream
    Stream (..),
    stream,
    sStreamId,
    sFileId,

    -- * StreamFile
    StreamFile (..),
    streamFile,
    sfS3Location,
    sfFileId,

    -- * StreamInfo
    StreamInfo (..),
    streamInfo,
    siRoleARN,
    siStreamVersion,
    siCreatedAt,
    siStreamId,
    siStreamARN,
    siDescription,
    siFiles,
    siLastUpdatedAt,

    -- * StreamSummary
    StreamSummary (..),
    streamSummary,
    ssStreamVersion,
    ssStreamId,
    ssStreamARN,
    ssDescription,

    -- * TLSContext
    TLSContext (..),
    tlsContext,
    tcServerName,

    -- * Tag
    Tag (..),
    tag,
    tagValue,
    tagKey,

    -- * TaskStatistics
    TaskStatistics (..),
    taskStatistics,
    tsTotalChecks,
    tsWaitingForDataCollectionChecks,
    tsCompliantChecks,
    tsInProgressChecks,
    tsFailedChecks,
    tsNonCompliantChecks,
    tsCanceledChecks,

    -- * TaskStatisticsForAuditCheck
    TaskStatisticsForAuditCheck (..),
    taskStatisticsForAuditCheck,
    tsfacSucceededFindingsCount,
    tsfacTotalFindingsCount,
    tsfacFailedFindingsCount,
    tsfacSkippedFindingsCount,
    tsfacCanceledFindingsCount,

    -- * ThingAttribute
    ThingAttribute (..),
    thingAttribute,
    taThingARN,
    taThingName,
    taVersion,
    taAttributes,
    taThingTypeName,

    -- * ThingConnectivity
    ThingConnectivity (..),
    thingConnectivity,
    tcConnected,
    tcTimestamp,

    -- * ThingDocument
    ThingDocument (..),
    thingDocument,
    tdThingId,
    tdThingName,
    tdConnectivity,
    tdAttributes,
    tdThingGroupNames,
    tdShadow,
    tdThingTypeName,

    -- * ThingGroupDocument
    ThingGroupDocument (..),
    thingGroupDocument,
    tgdParentGroupNames,
    tgdAttributes,
    tgdThingGroupName,
    tgdThingGroupId,
    tgdThingGroupDescription,

    -- * ThingGroupIndexingConfiguration
    ThingGroupIndexingConfiguration (..),
    thingGroupIndexingConfiguration,
    tgicManagedFields,
    tgicCustomFields,
    tgicThingGroupIndexingMode,

    -- * ThingGroupMetadata
    ThingGroupMetadata (..),
    thingGroupMetadata,
    tgmParentGroupName,
    tgmCreationDate,
    tgmRootToParentThingGroups,

    -- * ThingGroupProperties
    ThingGroupProperties (..),
    thingGroupProperties,
    tgpThingGroupDescription,
    tgpAttributePayload,

    -- * ThingIndexingConfiguration
    ThingIndexingConfiguration (..),
    thingIndexingConfiguration,
    ticManagedFields,
    ticThingConnectivityIndexingMode,
    ticCustomFields,
    ticThingIndexingMode,

    -- * ThingTypeDefinition
    ThingTypeDefinition (..),
    thingTypeDefinition,
    ttdThingTypeProperties,
    ttdThingTypeMetadata,
    ttdThingTypeARN,
    ttdThingTypeName,

    -- * ThingTypeMetadata
    ThingTypeMetadata (..),
    thingTypeMetadata,
    ttmDeprecationDate,
    ttmCreationDate,
    ttmDeprecated,

    -- * ThingTypeProperties
    ThingTypeProperties (..),
    thingTypeProperties,
    ttpSearchableAttributes,
    ttpThingTypeDescription,

    -- * TimeoutConfig
    TimeoutConfig (..),
    timeoutConfig,
    tcInProgressTimeoutInMinutes,

    -- * TimestreamAction
    TimestreamAction (..),
    timestreamAction,
    taTimestamp,
    taRoleARN,
    taDatabaseName,
    taTableName,
    taDimensions,

    -- * TimestreamDimension
    TimestreamDimension (..),
    timestreamDimension,
    tdName,
    tdValue,

    -- * TimestreamTimestamp
    TimestreamTimestamp (..),
    timestreamTimestamp,
    ttValue,
    ttUnit,

    -- * TopicRule
    TopicRule (..),
    topicRule,
    trRuleName,
    trErrorAction,
    trAwsIotSqlVersion,
    trCreatedAt,
    trActions,
    trRuleDisabled,
    trDescription,
    trSql,

    -- * TopicRuleDestination
    TopicRuleDestination (..),
    topicRuleDestination,
    trdStatus,
    trdCreatedAt,
    trdArn,
    trdVpcProperties,
    trdStatusReason,
    trdHttpURLProperties,
    trdLastUpdatedAt,

    -- * TopicRuleDestinationConfiguration
    TopicRuleDestinationConfiguration (..),
    topicRuleDestinationConfiguration,
    trdcVpcConfiguration,
    trdcHttpURLConfiguration,

    -- * TopicRuleDestinationSummary
    TopicRuleDestinationSummary (..),
    topicRuleDestinationSummary,
    trdsHttpURLSummary,
    trdsStatus,
    trdsCreatedAt,
    trdsArn,
    trdsStatusReason,
    trdsVpcDestinationSummary,
    trdsLastUpdatedAt,

    -- * TopicRuleListItem
    TopicRuleListItem (..),
    topicRuleListItem,
    trliRuleName,
    trliRuleARN,
    trliCreatedAt,
    trliTopicPattern,
    trliRuleDisabled,

    -- * TopicRulePayload
    TopicRulePayload (..),
    topicRulePayload,
    trpErrorAction,
    trpAwsIotSqlVersion,
    trpRuleDisabled,
    trpDescription,
    trpSql,
    trpActions,

    -- * TransferData
    TransferData (..),
    transferData,
    tdTransferDate,
    tdTransferMessage,
    tdAcceptDate,
    tdRejectDate,
    tdRejectReason,

    -- * UpdateCACertificateParams
    UpdateCACertificateParams (..),
    updateCACertificateParams,
    ucacpAction,

    -- * UpdateDeviceCertificateParams
    UpdateDeviceCertificateParams (..),
    updateDeviceCertificateParams,
    udcpAction,

    -- * VPCDestinationConfiguration
    VPCDestinationConfiguration (..),
    vpcDestinationConfiguration,
    vdcSecurityGroups,
    vdcSubnetIds,
    vdcVpcId,
    vdcRoleARN,

    -- * VPCDestinationProperties
    VPCDestinationProperties (..),
    vpcDestinationProperties,
    vdpRoleARN,
    vdpSubnetIds,
    vdpSecurityGroups,
    vdpVpcId,

    -- * VPCDestinationSummary
    VPCDestinationSummary (..),
    vpcDestinationSummary,
    vdsRoleARN,
    vdsSubnetIds,
    vdsSecurityGroups,
    vdsVpcId,

    -- * ValidationError
    ValidationError (..),
    validationError,
    veErrorMessage,

    -- * ViolationEvent
    ViolationEvent (..),
    violationEvent,
    veMetricValue,
    veViolationId,
    veThingName,
    veSecurityProfileName,
    veBehavior,
    veViolationEventTime,
    veViolationEventType,
    veViolationEventAdditionalInfo,

    -- * ViolationEventAdditionalInfo
    ViolationEventAdditionalInfo (..),
    violationEventAdditionalInfo,
    veaiConfidenceLevel,

    -- * ViolationEventOccurrenceRange
    ViolationEventOccurrenceRange (..),
    violationEventOccurrenceRange,
    veorStartTime,
    veorEndTime,
  )
where

import Network.AWS.IoT.Types.AWSJobAbortConfig
import Network.AWS.IoT.Types.AWSJobAbortCriteria
import Network.AWS.IoT.Types.AWSJobAbortCriteriaAbortAction
import Network.AWS.IoT.Types.AWSJobAbortCriteriaFailureType
import Network.AWS.IoT.Types.AWSJobExecutionsRolloutConfig
import Network.AWS.IoT.Types.AWSJobExponentialRolloutRate
import Network.AWS.IoT.Types.AWSJobPresignedURLConfig
import Network.AWS.IoT.Types.AWSJobRateIncreaseCriteria
import Network.AWS.IoT.Types.AWSJobTimeoutConfig
import Network.AWS.IoT.Types.AbortAction
import Network.AWS.IoT.Types.AbortConfig
import Network.AWS.IoT.Types.AbortCriteria
import Network.AWS.IoT.Types.Action
import Network.AWS.IoT.Types.ActionType
import Network.AWS.IoT.Types.ActiveViolation
import Network.AWS.IoT.Types.AddThingsToThingGroupParams
import Network.AWS.IoT.Types.AlertTarget
import Network.AWS.IoT.Types.AlertTargetType
import Network.AWS.IoT.Types.Allowed
import Network.AWS.IoT.Types.AssetPropertyTimestamp
import Network.AWS.IoT.Types.AssetPropertyValue
import Network.AWS.IoT.Types.AssetPropertyVariant
import Network.AWS.IoT.Types.AttributePayload
import Network.AWS.IoT.Types.AuditCheckConfiguration
import Network.AWS.IoT.Types.AuditCheckDetails
import Network.AWS.IoT.Types.AuditCheckRunStatus
import Network.AWS.IoT.Types.AuditFinding
import Network.AWS.IoT.Types.AuditFindingSeverity
import Network.AWS.IoT.Types.AuditFrequency
import Network.AWS.IoT.Types.AuditMitigationActionExecutionMetadata
import Network.AWS.IoT.Types.AuditMitigationActionsExecutionStatus
import Network.AWS.IoT.Types.AuditMitigationActionsTaskMetadata
import Network.AWS.IoT.Types.AuditMitigationActionsTaskStatus
import Network.AWS.IoT.Types.AuditMitigationActionsTaskTarget
import Network.AWS.IoT.Types.AuditNotificationTarget
import Network.AWS.IoT.Types.AuditNotificationType
import Network.AWS.IoT.Types.AuditSuppression
import Network.AWS.IoT.Types.AuditTaskMetadata
import Network.AWS.IoT.Types.AuditTaskStatus
import Network.AWS.IoT.Types.AuditTaskType
import Network.AWS.IoT.Types.AuthDecision
import Network.AWS.IoT.Types.AuthInfo
import Network.AWS.IoT.Types.AuthResult
import Network.AWS.IoT.Types.AuthorizerConfig
import Network.AWS.IoT.Types.AuthorizerDescription
import Network.AWS.IoT.Types.AuthorizerStatus
import Network.AWS.IoT.Types.AuthorizerSummary
import Network.AWS.IoT.Types.AutoRegistrationStatus
import Network.AWS.IoT.Types.Behavior
import Network.AWS.IoT.Types.BehaviorCriteria
import Network.AWS.IoT.Types.BehaviorCriteriaType
import Network.AWS.IoT.Types.BehaviorModelTrainingSummary
import Network.AWS.IoT.Types.BillingGroupMetadata
import Network.AWS.IoT.Types.BillingGroupProperties
import Network.AWS.IoT.Types.CACertificate
import Network.AWS.IoT.Types.CACertificateDescription
import Network.AWS.IoT.Types.CACertificateStatus
import Network.AWS.IoT.Types.CACertificateUpdateAction
import Network.AWS.IoT.Types.CannedAccessControlList
import Network.AWS.IoT.Types.Certificate
import Network.AWS.IoT.Types.CertificateDescription
import Network.AWS.IoT.Types.CertificateMode
import Network.AWS.IoT.Types.CertificateStatus
import Network.AWS.IoT.Types.CertificateValidity
import Network.AWS.IoT.Types.CloudwatchAlarmAction
import Network.AWS.IoT.Types.CloudwatchLogsAction
import Network.AWS.IoT.Types.CloudwatchMetricAction
import Network.AWS.IoT.Types.CodeSigning
import Network.AWS.IoT.Types.CodeSigningCertificateChain
import Network.AWS.IoT.Types.CodeSigningSignature
import Network.AWS.IoT.Types.ComparisonOperator
import Network.AWS.IoT.Types.ConfidenceLevel
import Network.AWS.IoT.Types.Configuration
import Network.AWS.IoT.Types.CustomCodeSigning
import Network.AWS.IoT.Types.CustomMetricType
import Network.AWS.IoT.Types.DayOfWeek
import Network.AWS.IoT.Types.Denied
import Network.AWS.IoT.Types.Destination
import Network.AWS.IoT.Types.DetectMitigationActionExecution
import Network.AWS.IoT.Types.DetectMitigationActionExecutionStatus
import Network.AWS.IoT.Types.DetectMitigationActionsTaskStatistics
import Network.AWS.IoT.Types.DetectMitigationActionsTaskStatus
import Network.AWS.IoT.Types.DetectMitigationActionsTaskSummary
import Network.AWS.IoT.Types.DetectMitigationActionsTaskTarget
import Network.AWS.IoT.Types.DeviceCertificateUpdateAction
import Network.AWS.IoT.Types.DimensionType
import Network.AWS.IoT.Types.DimensionValueOperator
import Network.AWS.IoT.Types.DomainConfigurationStatus
import Network.AWS.IoT.Types.DomainConfigurationSummary
import Network.AWS.IoT.Types.DomainType
import Network.AWS.IoT.Types.DynamicGroupStatus
import Network.AWS.IoT.Types.DynamoDBAction
import Network.AWS.IoT.Types.DynamoDBv2Action
import Network.AWS.IoT.Types.DynamoKeyType
import Network.AWS.IoT.Types.EffectivePolicy
import Network.AWS.IoT.Types.ElasticsearchAction
import Network.AWS.IoT.Types.EnableIOTLoggingParams
import Network.AWS.IoT.Types.ErrorInfo
import Network.AWS.IoT.Types.EventType
import Network.AWS.IoT.Types.ExplicitDeny
import Network.AWS.IoT.Types.ExponentialRolloutRate
import Network.AWS.IoT.Types.Field
import Network.AWS.IoT.Types.FieldType
import Network.AWS.IoT.Types.FileLocation
import Network.AWS.IoT.Types.FirehoseAction
import Network.AWS.IoT.Types.GroupNameAndARN
import Network.AWS.IoT.Types.HTTPAction
import Network.AWS.IoT.Types.HTTPActionHeader
import Network.AWS.IoT.Types.HTTPAuthorization
import Network.AWS.IoT.Types.HTTPContext
import Network.AWS.IoT.Types.HTTPURLDestinationConfiguration
import Network.AWS.IoT.Types.HTTPURLDestinationProperties
import Network.AWS.IoT.Types.HTTPURLDestinationSummary
import Network.AWS.IoT.Types.ImplicitDeny
import Network.AWS.IoT.Types.IndexStatus
import Network.AWS.IoT.Types.IotAnalyticsAction
import Network.AWS.IoT.Types.IotEventsAction
import Network.AWS.IoT.Types.IotSiteWiseAction
import Network.AWS.IoT.Types.Job
import Network.AWS.IoT.Types.JobExecution
import Network.AWS.IoT.Types.JobExecutionFailureType
import Network.AWS.IoT.Types.JobExecutionStatus
import Network.AWS.IoT.Types.JobExecutionStatusDetails
import Network.AWS.IoT.Types.JobExecutionSummary
import Network.AWS.IoT.Types.JobExecutionSummaryForJob
import Network.AWS.IoT.Types.JobExecutionSummaryForThing
import Network.AWS.IoT.Types.JobExecutionsRolloutConfig
import Network.AWS.IoT.Types.JobProcessDetails
import Network.AWS.IoT.Types.JobStatus
import Network.AWS.IoT.Types.JobSummary
import Network.AWS.IoT.Types.KafkaAction
import Network.AWS.IoT.Types.KeyPair
import Network.AWS.IoT.Types.KinesisAction
import Network.AWS.IoT.Types.LambdaAction
import Network.AWS.IoT.Types.LogLevel
import Network.AWS.IoT.Types.LogTarget
import Network.AWS.IoT.Types.LogTargetConfiguration
import Network.AWS.IoT.Types.LogTargetType
import Network.AWS.IoT.Types.LoggingOptionsPayload
import Network.AWS.IoT.Types.MachineLearningDetectionConfig
import Network.AWS.IoT.Types.MessageFormat
import Network.AWS.IoT.Types.MetricDimension
import Network.AWS.IoT.Types.MetricToRetain
import Network.AWS.IoT.Types.MetricValue
import Network.AWS.IoT.Types.MitigationAction
import Network.AWS.IoT.Types.MitigationActionIdentifier
import Network.AWS.IoT.Types.MitigationActionParams
import Network.AWS.IoT.Types.MitigationActionType
import Network.AWS.IoT.Types.ModelStatus
import Network.AWS.IoT.Types.MqttContext
import Network.AWS.IoT.Types.NonCompliantResource
import Network.AWS.IoT.Types.OTAUpdateFile
import Network.AWS.IoT.Types.OTAUpdateInfo
import Network.AWS.IoT.Types.OTAUpdateStatus
import Network.AWS.IoT.Types.OTAUpdateSummary
import Network.AWS.IoT.Types.OutgoingCertificate
import Network.AWS.IoT.Types.PercentPair
import Network.AWS.IoT.Types.Policy
import Network.AWS.IoT.Types.PolicyTemplateName
import Network.AWS.IoT.Types.PolicyVersion
import Network.AWS.IoT.Types.PolicyVersionIdentifier
import Network.AWS.IoT.Types.PresignedURLConfig
import Network.AWS.IoT.Types.Protocol
import Network.AWS.IoT.Types.ProvisioningHook
import Network.AWS.IoT.Types.ProvisioningTemplateSummary
import Network.AWS.IoT.Types.ProvisioningTemplateVersionSummary
import Network.AWS.IoT.Types.PublishFindingToSNSParams
import Network.AWS.IoT.Types.PutAssetPropertyValueEntry
import Network.AWS.IoT.Types.PutItemInput
import Network.AWS.IoT.Types.RateIncreaseCriteria
import Network.AWS.IoT.Types.RegistrationConfig
import Network.AWS.IoT.Types.RelatedResource
import Network.AWS.IoT.Types.ReplaceDefaultPolicyVersionParams
import Network.AWS.IoT.Types.ReportType
import Network.AWS.IoT.Types.RepublishAction
import Network.AWS.IoT.Types.ResourceIdentifier
import Network.AWS.IoT.Types.ResourceType
import Network.AWS.IoT.Types.RoleAliasDescription
import Network.AWS.IoT.Types.S3Action
import Network.AWS.IoT.Types.S3Destination
import Network.AWS.IoT.Types.S3Location
import Network.AWS.IoT.Types.SNSAction
import Network.AWS.IoT.Types.SalesforceAction
import Network.AWS.IoT.Types.ScheduledAuditMetadata
import Network.AWS.IoT.Types.SecurityProfileIdentifier
import Network.AWS.IoT.Types.SecurityProfileTarget
import Network.AWS.IoT.Types.SecurityProfileTargetMapping
import Network.AWS.IoT.Types.ServerCertificateStatus
import Network.AWS.IoT.Types.ServerCertificateSummary
import Network.AWS.IoT.Types.ServiceType
import Network.AWS.IoT.Types.SigV4Authorization
import Network.AWS.IoT.Types.SigningProfileParameter
import Network.AWS.IoT.Types.SqsAction
import Network.AWS.IoT.Types.StartSigningJobParameter
import Network.AWS.IoT.Types.StatisticalThreshold
import Network.AWS.IoT.Types.Statistics
import Network.AWS.IoT.Types.StepFunctionsAction
import Network.AWS.IoT.Types.Stream
import Network.AWS.IoT.Types.StreamFile
import Network.AWS.IoT.Types.StreamInfo
import Network.AWS.IoT.Types.StreamSummary
import Network.AWS.IoT.Types.TLSContext
import Network.AWS.IoT.Types.Tag
import Network.AWS.IoT.Types.TargetSelection
import Network.AWS.IoT.Types.TaskStatistics
import Network.AWS.IoT.Types.TaskStatisticsForAuditCheck
import Network.AWS.IoT.Types.TaskStatus
import Network.AWS.IoT.Types.ThingAttribute
import Network.AWS.IoT.Types.ThingConnectivity
import Network.AWS.IoT.Types.ThingConnectivityIndexingMode
import Network.AWS.IoT.Types.ThingDocument
import Network.AWS.IoT.Types.ThingGroupDocument
import Network.AWS.IoT.Types.ThingGroupIndexingConfiguration
import Network.AWS.IoT.Types.ThingGroupIndexingMode
import Network.AWS.IoT.Types.ThingGroupMetadata
import Network.AWS.IoT.Types.ThingGroupProperties
import Network.AWS.IoT.Types.ThingIndexingConfiguration
import Network.AWS.IoT.Types.ThingIndexingMode
import Network.AWS.IoT.Types.ThingTypeDefinition
import Network.AWS.IoT.Types.ThingTypeMetadata
import Network.AWS.IoT.Types.ThingTypeProperties
import Network.AWS.IoT.Types.TimeoutConfig
import Network.AWS.IoT.Types.TimestreamAction
import Network.AWS.IoT.Types.TimestreamDimension
import Network.AWS.IoT.Types.TimestreamTimestamp
import Network.AWS.IoT.Types.TopicRule
import Network.AWS.IoT.Types.TopicRuleDestination
import Network.AWS.IoT.Types.TopicRuleDestinationConfiguration
import Network.AWS.IoT.Types.TopicRuleDestinationStatus
import Network.AWS.IoT.Types.TopicRuleDestinationSummary
import Network.AWS.IoT.Types.TopicRuleListItem
import Network.AWS.IoT.Types.TopicRulePayload
import Network.AWS.IoT.Types.TransferData
import Network.AWS.IoT.Types.UpdateCACertificateParams
import Network.AWS.IoT.Types.UpdateDeviceCertificateParams
import Network.AWS.IoT.Types.VPCDestinationConfiguration
import Network.AWS.IoT.Types.VPCDestinationProperties
import Network.AWS.IoT.Types.VPCDestinationSummary
import Network.AWS.IoT.Types.ValidationError
import Network.AWS.IoT.Types.ViolationEvent
import Network.AWS.IoT.Types.ViolationEventAdditionalInfo
import Network.AWS.IoT.Types.ViolationEventOccurrenceRange
import Network.AWS.IoT.Types.ViolationEventType
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-05-28@ of the Amazon IoT SDK configuration.
ioT :: Service
ioT =
  Service
    { _svcAbbrev = "IoT",
      _svcSigner = v4,
      _svcPrefix = "iot",
      _svcVersion = "2015-05-28",
      _svcEndpoint = defaultEndpoint ioT,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "IoT",
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

-- | The index is not ready.
_IndexNotReadyException :: AsError a => Getting (First ServiceError) a ServiceError
_IndexNotReadyException =
  _MatchServiceError ioT "IndexNotReadyException"
    . hasStatus 400

-- | You can't revert the certificate transfer because the transfer is already complete.
_TransferAlreadyCompletedException :: AsError a => Getting (First ServiceError) a ServiceError
_TransferAlreadyCompletedException =
  _MatchServiceError
    ioT
    "TransferAlreadyCompletedException"
    . hasStatus 410

-- | The query is invalid.
_InvalidQueryException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidQueryException =
  _MatchServiceError ioT "InvalidQueryException"
    . hasStatus 400

-- | Unable to verify the CA certificate used to sign the device certificate you are attempting to register. This is happens when you have registered more than one CA certificate that has the same subject field and public key.
_CertificateConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_CertificateConflictException =
  _MatchServiceError
    ioT
    "CertificateConflictException"
    . hasStatus 409

-- | This exception occurs if you attempt to start a task with the same task-id as an existing task but with a different clientRequestToken.
_TaskAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_TaskAlreadyExistsException =
  _MatchServiceError ioT "TaskAlreadyExistsException"
    . hasStatus 400

-- | The certificate is invalid.
_CertificateValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_CertificateValidationException =
  _MatchServiceError
    ioT
    "CertificateValidationException"
    . hasStatus 400

-- | You are not authorized to perform this operation.
_UnauthorizedException :: AsError a => Getting (First ServiceError) a ServiceError
_UnauthorizedException =
  _MatchServiceError ioT "UnauthorizedException"
    . hasStatus 401

-- | The resource already exists.
_ResourceAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAlreadyExistsException =
  _MatchServiceError
    ioT
    "ResourceAlreadyExistsException"
    . hasStatus 409

-- | An unexpected error has occurred.
_InternalException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalException =
  _MatchServiceError ioT "InternalException"
    . hasStatus 500

-- | The policy documentation is not valid.
_MalformedPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_MalformedPolicyException =
  _MatchServiceError ioT "MalformedPolicyException"
    . hasStatus 400

-- | The service is temporarily unavailable.
_ServiceUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceUnavailableException =
  _MatchServiceError
    ioT
    "ServiceUnavailableException"
    . hasStatus 503

-- | The certificate operation is not allowed.
_CertificateStateException :: AsError a => Getting (First ServiceError) a ServiceError
_CertificateStateException =
  _MatchServiceError ioT "CertificateStateException"
    . hasStatus 406

-- | The aggregation is invalid.
_InvalidAggregationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAggregationException =
  _MatchServiceError
    ioT
    "InvalidAggregationException"
    . hasStatus 400

-- | The rate exceeds the limit.
_ThrottlingException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottlingException =
  _MatchServiceError ioT "ThrottlingException"
    . hasStatus 400

-- | The request is not valid.
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException =
  _MatchServiceError ioT "InvalidRequestException"
    . hasStatus 400

-- | The resource registration failed.
_ResourceRegistrationFailureException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceRegistrationFailureException =
  _MatchServiceError
    ioT
    "ResourceRegistrationFailureException"
    . hasStatus 400

-- | The Rule-SQL expression can't be parsed correctly.
_SqlParseException :: AsError a => Getting (First ServiceError) a ServiceError
_SqlParseException =
  _MatchServiceError ioT "SqlParseException"
    . hasStatus 400

-- | A limit has been exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError ioT "LimitExceededException"
    . hasStatus 410

-- | An attempt was made to change to an invalid state, for example by deleting a job or a job execution which is "IN_PROGRESS" without setting the @force@ parameter.
_InvalidStateTransitionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidStateTransitionException =
  _MatchServiceError
    ioT
    "InvalidStateTransitionException"
    . hasStatus 409

-- | The resource is not configured.
_NotConfiguredException :: AsError a => Getting (First ServiceError) a ServiceError
_NotConfiguredException =
  _MatchServiceError ioT "NotConfiguredException"
    . hasStatus 404

-- | The specified resource does not exist.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError ioT "ResourceNotFoundException"
    . hasStatus 404

-- | An exception thrown when the version of an entity specified with the @expectedVersion@ parameter does not match the latest version in the system.
_VersionConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_VersionConflictException =
  _MatchServiceError ioT "VersionConflictException"
    . hasStatus 409

-- | The registration code is invalid.
_RegistrationCodeValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_RegistrationCodeValidationException =
  _MatchServiceError
    ioT
    "RegistrationCodeValidationException"
    . hasStatus 400

-- | The number of policy versions exceeds the limit.
_VersionsLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_VersionsLimitExceededException =
  _MatchServiceError
    ioT
    "VersionsLimitExceededException"
    . hasStatus 409

-- | An unexpected error has occurred.
_InternalFailureException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalFailureException =
  _MatchServiceError ioT "InternalFailureException"
    . hasStatus 500

-- | You can't delete the resource because it is attached to one or more resources.
_DeleteConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_DeleteConflictException =
  _MatchServiceError ioT "DeleteConflictException"
    . hasStatus 409

-- | The response is invalid.
_InvalidResponseException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResponseException =
  _MatchServiceError ioT "InvalidResponseException"
    . hasStatus 400

-- | You can't transfer the certificate because authorization policies are still attached.
_TransferConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_TransferConflictException =
  _MatchServiceError ioT "TransferConflictException"
    . hasStatus 409

-- | A conflicting resource update exception. This exception is thrown when two pending updates cause a conflict.
_ConflictingResourceUpdateException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictingResourceUpdateException =
  _MatchServiceError
    ioT
    "ConflictingResourceUpdateException"
    . hasStatus 409
