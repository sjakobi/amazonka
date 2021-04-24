{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types
  ( -- * Service Configuration
    glue,

    -- * Errors
    _EntityNotFoundException,
    _CrawlerNotRunningException,
    _VersionMismatchException,
    _GlueEncryptionException,
    _InvalidInputException,
    _InternalServiceException,
    _IllegalWorkflowStateException,
    _ConcurrentRunsExceededException,
    _ConcurrentModificationException,
    _ConditionCheckFailureException,
    _SchedulerTransitioningException,
    _SchedulerRunningException,
    _AccessDeniedException,
    _ValidationException,
    _CrawlerRunningException,
    _MLTransformNotReadyException,
    _ConflictException,
    _AlreadyExistsException,
    _OperationTimeoutException,
    _IdempotentParameterMismatchException,
    _CrawlerStoppingException,
    _NoScheduleException,
    _ResourceNumberLimitExceededException,
    _SchedulerNotRunningException,

    -- * BackfillErrorCode
    BackfillErrorCode (..),

    -- * CSVHeaderOption
    CSVHeaderOption (..),

    -- * CatalogEncryptionMode
    CatalogEncryptionMode (..),

    -- * CloudWatchEncryptionMode
    CloudWatchEncryptionMode (..),

    -- * ColumnStatisticsType
    ColumnStatisticsType (..),

    -- * Comparator
    Comparator (..),

    -- * Compatibility
    Compatibility (..),

    -- * ConnectionPropertyKey
    ConnectionPropertyKey (..),

    -- * ConnectionType
    ConnectionType (..),

    -- * CrawlState
    CrawlState (..),

    -- * CrawlerLineageSettings
    CrawlerLineageSettings (..),

    -- * CrawlerState
    CrawlerState (..),

    -- * DataFormat
    DataFormat (..),

    -- * DeleteBehavior
    DeleteBehavior (..),

    -- * EnableHybridValues
    EnableHybridValues (..),

    -- * ExistCondition
    ExistCondition (..),

    -- * JobBookmarksEncryptionMode
    JobBookmarksEncryptionMode (..),

    -- * JobRunState
    JobRunState (..),

    -- * Language
    Language (..),

    -- * LastCrawlStatus
    LastCrawlStatus (..),

    -- * Logical
    Logical (..),

    -- * LogicalOperator
    LogicalOperator (..),

    -- * MLUserDataEncryptionModeString
    MLUserDataEncryptionModeString (..),

    -- * NodeType
    NodeType (..),

    -- * PartitionIndexStatus
    PartitionIndexStatus (..),

    -- * Permission
    Permission (..),

    -- * PrincipalType
    PrincipalType (..),

    -- * RecrawlBehavior
    RecrawlBehavior (..),

    -- * RegistryStatus
    RegistryStatus (..),

    -- * ResourceShareType
    ResourceShareType (..),

    -- * ResourceType
    ResourceType (..),

    -- * S3EncryptionMode
    S3EncryptionMode (..),

    -- * ScheduleState
    ScheduleState (..),

    -- * SchemaDiffType
    SchemaDiffType (..),

    -- * SchemaStatus
    SchemaStatus (..),

    -- * SchemaVersionStatus
    SchemaVersionStatus (..),

    -- * Sort
    Sort (..),

    -- * SortDirectionType
    SortDirectionType (..),

    -- * TaskRunSortColumnType
    TaskRunSortColumnType (..),

    -- * TaskStatusType
    TaskStatusType (..),

    -- * TaskType
    TaskType (..),

    -- * TransformSortColumnType
    TransformSortColumnType (..),

    -- * TransformStatusType
    TransformStatusType (..),

    -- * TransformType
    TransformType (..),

    -- * TriggerState
    TriggerState (..),

    -- * TriggerType
    TriggerType (..),

    -- * UpdateBehavior
    UpdateBehavior (..),

    -- * WorkerType
    WorkerType (..),

    -- * WorkflowRunStatus
    WorkflowRunStatus (..),

    -- * Action
    Action (..),
    action,
    aSecurityConfiguration,
    aCrawlerName,
    aTimeout,
    aNotificationProperty,
    aJobName,
    aArguments,

    -- * BackfillError
    BackfillError (..),
    backfillError,
    bePartitions,
    beCode,

    -- * BatchStopJobRunError
    BatchStopJobRunError (..),
    batchStopJobRunError,
    bsjreErrorDetail,
    bsjreJobRunId,
    bsjreJobName,

    -- * BatchStopJobRunSuccessfulSubmission
    BatchStopJobRunSuccessfulSubmission (..),
    batchStopJobRunSuccessfulSubmission,
    bsjrssJobRunId,
    bsjrssJobName,

    -- * BatchUpdatePartitionFailureEntry
    BatchUpdatePartitionFailureEntry (..),
    batchUpdatePartitionFailureEntry,
    bupfeErrorDetail,
    bupfePartitionValueList,

    -- * BatchUpdatePartitionRequestEntry
    BatchUpdatePartitionRequestEntry (..),
    batchUpdatePartitionRequestEntry,
    buprePartitionValueList,
    buprePartitionInput,

    -- * BinaryColumnStatisticsData
    BinaryColumnStatisticsData (..),
    binaryColumnStatisticsData,
    bcsdMaximumLength,
    bcsdAverageLength,
    bcsdNumberOfNulls,

    -- * BooleanColumnStatisticsData
    BooleanColumnStatisticsData (..),
    booleanColumnStatisticsData,
    bNumberOfTrues,
    bNumberOfFalses,
    bNumberOfNulls,

    -- * CSVClassifier
    CSVClassifier (..),
    csvClassifier,
    ccCreationTime,
    ccContainsHeader,
    ccDelimiter,
    ccDisableValueTrimming,
    ccVersion,
    ccLastUpdated,
    ccHeader,
    ccQuoteSymbol,
    ccAllowSingleColumn,
    ccName,

    -- * CatalogEntry
    CatalogEntry (..),
    catalogEntry,
    ceDatabaseName,
    ceTableName,

    -- * CatalogImportStatus
    CatalogImportStatus (..),
    catalogImportStatus,
    cisImportedBy,
    cisImportCompleted,
    cisImportTime,

    -- * CatalogTarget
    CatalogTarget (..),
    catalogTarget,
    ctDatabaseName,
    ctTables,

    -- * Classifier
    Classifier (..),
    classifier,
    cXMLClassifier,
    cJSONClassifier,
    cCSVClassifier,
    cGrokClassifier,

    -- * CloudWatchEncryption
    CloudWatchEncryption (..),
    cloudWatchEncryption,
    cweCloudWatchEncryptionMode,
    cweKMSKeyARN,

    -- * CodeGenEdge
    CodeGenEdge (..),
    codeGenEdge,
    cgeTargetParameter,
    cgeSource,
    cgeTarget,

    -- * CodeGenNode
    CodeGenNode (..),
    codeGenNode,
    cgnLineNumber,
    cgnId,
    cgnNodeType,
    cgnArgs,

    -- * CodeGenNodeArg
    CodeGenNodeArg (..),
    codeGenNodeArg,
    cgnaParam,
    cgnaName,
    cgnaValue,

    -- * Column
    Column (..),
    column,
    cComment,
    cType,
    cParameters,
    cName,

    -- * ColumnError
    ColumnError (..),
    columnError,
    ceColumnName,
    ceError,

    -- * ColumnImportance
    ColumnImportance (..),
    columnImportance,
    ciImportance,
    ciColumnName,

    -- * ColumnStatistics
    ColumnStatistics (..),
    columnStatistics,
    csColumnName,
    csColumnType,
    csAnalyzedTime,
    csStatisticsData,

    -- * ColumnStatisticsData
    ColumnStatisticsData (..),
    columnStatisticsData,
    csdDateColumnStatisticsData,
    csdBinaryColumnStatisticsData,
    csdBooleanColumnStatisticsData,
    csdLongColumnStatisticsData,
    csdStringColumnStatisticsData,
    csdDoubleColumnStatisticsData,
    csdDecimalColumnStatisticsData,
    csdType,

    -- * ColumnStatisticsError
    ColumnStatisticsError (..),
    columnStatisticsError,
    cseColumnStatistics,
    cseError,

    -- * Condition
    Condition (..),
    condition,
    cCrawlState,
    cCrawlerName,
    cState,
    cLogicalOperator,
    cJobName,

    -- * ConfusionMatrix
    ConfusionMatrix (..),
    confusionMatrix,
    cmNumFalsePositives,
    cmNumTrueNegatives,
    cmNumFalseNegatives,
    cmNumTruePositives,

    -- * Connection
    Connection (..),
    connection,
    conConnectionProperties,
    conCreationTime,
    conConnectionType,
    conPhysicalConnectionRequirements,
    conName,
    conLastUpdatedBy,
    conDescription,
    conMatchCriteria,
    conLastUpdatedTime,

    -- * ConnectionInput
    ConnectionInput (..),
    connectionInput,
    ciPhysicalConnectionRequirements,
    ciDescription,
    ciMatchCriteria,
    ciName,
    ciConnectionType,
    ciConnectionProperties,

    -- * ConnectionPasswordEncryption
    ConnectionPasswordEncryption (..),
    connectionPasswordEncryption,
    cpeAWSKMSKeyId,
    cpeReturnConnectionPasswordEncrypted,

    -- * ConnectionsList
    ConnectionsList (..),
    connectionsList,
    clConnections,

    -- * Crawl
    Crawl (..),
    crawl,
    craLogGroup,
    craState,
    craCompletedOn,
    craErrorMessage,
    craStartedOn,
    craLogStream,

    -- * Crawler
    Crawler (..),
    crawler,
    crarSchemaChangePolicy,
    crarRecrawlPolicy,
    crarClassifiers,
    crarCreationTime,
    crarConfiguration,
    crarLineageConfiguration,
    crarVersion,
    crarTargets,
    crarLastUpdated,
    crarState,
    crarName,
    crarCrawlElapsedTime,
    crarRole,
    crarLastCrawl,
    crarTablePrefix,
    crarDescription,
    crarSchedule,
    crarCrawlerSecurityConfiguration,
    crarDatabaseName,

    -- * CrawlerMetrics
    CrawlerMetrics (..),
    crawlerMetrics,
    cmCrawlerName,
    cmTablesDeleted,
    cmTablesUpdated,
    cmTablesCreated,
    cmMedianRuntimeSeconds,
    cmStillEstimating,
    cmTimeLeftSeconds,
    cmLastRuntimeSeconds,

    -- * CrawlerNodeDetails
    CrawlerNodeDetails (..),
    crawlerNodeDetails,
    cndCrawls,

    -- * CrawlerTargets
    CrawlerTargets (..),
    crawlerTargets,
    ctCatalogTargets,
    ctMongoDBTargets,
    ctDynamoDBTargets,
    ctJdbcTargets,
    ctS3Targets,

    -- * CreateCSVClassifierRequest
    CreateCSVClassifierRequest (..),
    createCSVClassifierRequest,
    cccrContainsHeader,
    cccrDelimiter,
    cccrDisableValueTrimming,
    cccrHeader,
    cccrQuoteSymbol,
    cccrAllowSingleColumn,
    cccrName,

    -- * CreateGrokClassifierRequest
    CreateGrokClassifierRequest (..),
    createGrokClassifierRequest,
    cgcrCustomPatterns,
    cgcrClassification,
    cgcrName,
    cgcrGrokPattern,

    -- * CreateJSONClassifierRequest
    CreateJSONClassifierRequest (..),
    createJSONClassifierRequest,
    cjcrName,
    cjcrJSONPath,

    -- * CreateXMLClassifierRequest
    CreateXMLClassifierRequest (..),
    createXMLClassifierRequest,
    cxcrRowTag,
    cxcrClassification,
    cxcrName,

    -- * DataCatalogEncryptionSettings
    DataCatalogEncryptionSettings (..),
    dataCatalogEncryptionSettings,
    dcesEncryptionAtRest,
    dcesConnectionPasswordEncryption,

    -- * DataLakePrincipal
    DataLakePrincipal (..),
    dataLakePrincipal,
    dlpDataLakePrincipalIdentifier,

    -- * Database
    Database (..),
    database,
    dCreateTableDefaultPermissions,
    dCatalogId,
    dTargetDatabase,
    dCreateTime,
    dDescription,
    dLocationURI,
    dParameters,
    dName,

    -- * DatabaseIdentifier
    DatabaseIdentifier (..),
    databaseIdentifier,
    diCatalogId,
    diDatabaseName,

    -- * DatabaseInput
    DatabaseInput (..),
    databaseInput,
    diCreateTableDefaultPermissions,
    diTargetDatabase,
    diDescription,
    diLocationURI,
    diParameters,
    diName,

    -- * DateColumnStatisticsData
    DateColumnStatisticsData (..),
    dateColumnStatisticsData,
    dcsdMaximumValue,
    dcsdMinimumValue,
    dcsdNumberOfNulls,
    dcsdNumberOfDistinctValues,

    -- * DecimalColumnStatisticsData
    DecimalColumnStatisticsData (..),
    decimalColumnStatisticsData,
    decMaximumValue,
    decMinimumValue,
    decNumberOfNulls,
    decNumberOfDistinctValues,

    -- * DecimalNumber
    DecimalNumber (..),
    decimalNumber,
    dnUnscaledValue,
    dnScale,

    -- * DevEndpoint
    DevEndpoint (..),
    devEndpoint,
    deSecurityGroupIds,
    deLastUpdateStatus,
    dePublicAddress,
    deStatus,
    deEndpointName,
    deRoleARN,
    deYarnEndpointAddress,
    deSecurityConfiguration,
    dePublicKey,
    deCreatedTimestamp,
    dePrivateAddress,
    deLastModifiedTimestamp,
    deExtraPythonLibsS3Path,
    deNumberOfWorkers,
    deZeppelinRemoteSparkInterpreterPort,
    deAvailabilityZone,
    deFailureReason,
    deGlueVersion,
    deNumberOfNodes,
    deWorkerType,
    deSubnetId,
    deVPCId,
    deArguments,
    dePublicKeys,
    deExtraJARsS3Path,

    -- * DevEndpointCustomLibraries
    DevEndpointCustomLibraries (..),
    devEndpointCustomLibraries,
    declExtraPythonLibsS3Path,
    declExtraJARsS3Path,

    -- * DoubleColumnStatisticsData
    DoubleColumnStatisticsData (..),
    doubleColumnStatisticsData,
    dMaximumValue,
    dMinimumValue,
    dNumberOfNulls,
    dNumberOfDistinctValues,

    -- * DynamoDBTarget
    DynamoDBTarget (..),
    dynamoDBTarget,
    ddtScanAll,
    ddtScanRate,
    ddtPath,

    -- * Edge
    Edge (..),
    edge,
    eDestinationId,
    eSourceId,

    -- * EncryptionAtRest
    EncryptionAtRest (..),
    encryptionAtRest,
    earSseAWSKMSKeyId,
    earCatalogEncryptionMode,

    -- * EncryptionConfiguration
    EncryptionConfiguration (..),
    encryptionConfiguration,
    ecJobBookmarksEncryption,
    ecS3Encryption,
    ecCloudWatchEncryption,

    -- * ErrorDetail
    ErrorDetail (..),
    errorDetail,
    edErrorMessage,
    edErrorCode,

    -- * ErrorDetails
    ErrorDetails (..),
    errorDetails,
    eErrorMessage,
    eErrorCode,

    -- * EvaluationMetrics
    EvaluationMetrics (..),
    evaluationMetrics,
    emFindMatchesMetrics,
    emTransformType,

    -- * ExecutionProperty
    ExecutionProperty (..),
    executionProperty,
    epMaxConcurrentRuns,

    -- * ExportLabelsTaskRunProperties
    ExportLabelsTaskRunProperties (..),
    exportLabelsTaskRunProperties,
    eltrpOutputS3Path,

    -- * FindMatchesMetrics
    FindMatchesMetrics (..),
    findMatchesMetrics,
    fmmF1,
    fmmConfusionMatrix,
    fmmColumnImportances,
    fmmPrecision,
    fmmAreaUnderPRCurve,
    fmmRecall,

    -- * FindMatchesParameters
    FindMatchesParameters (..),
    findMatchesParameters,
    fmpAccuracyCostTradeoff,
    fmpEnforceProvidedLabels,
    fmpPrecisionRecallTradeoff,
    fmpPrimaryKeyColumnName,

    -- * FindMatchesTaskRunProperties
    FindMatchesTaskRunProperties (..),
    findMatchesTaskRunProperties,
    fmtrpJobRunId,
    fmtrpJobName,
    fmtrpJobId,

    -- * GetConnectionsFilter
    GetConnectionsFilter (..),
    getConnectionsFilter,
    gcfConnectionType,
    gcfMatchCriteria,

    -- * GluePolicy
    GluePolicy (..),
    gluePolicy,
    gpPolicyInJSON,
    gpUpdateTime,
    gpCreateTime,
    gpPolicyHash,

    -- * GlueTable
    GlueTable (..),
    glueTable,
    gtConnectionName,
    gtCatalogId,
    gtDatabaseName,
    gtTableName,

    -- * GrokClassifier
    GrokClassifier (..),
    grokClassifier,
    gcCreationTime,
    gcVersion,
    gcLastUpdated,
    gcCustomPatterns,
    gcName,
    gcClassification,
    gcGrokPattern,

    -- * ImportLabelsTaskRunProperties
    ImportLabelsTaskRunProperties (..),
    importLabelsTaskRunProperties,
    iltrpReplace,
    iltrpInputS3Path,

    -- * JSONClassifier
    JSONClassifier (..),
    jsonClassifier,
    jsoncCreationTime,
    jsoncVersion,
    jsoncLastUpdated,
    jsoncName,
    jsoncJSONPath,

    -- * JdbcTarget
    JdbcTarget (..),
    jdbcTarget,
    jtConnectionName,
    jtExclusions,
    jtPath,

    -- * Job
    Job (..),
    job,
    jNonOverridableArguments,
    jCreatedOn,
    jSecurityConfiguration,
    jTimeout,
    jMaxCapacity,
    jConnections,
    jNotificationProperty,
    jLastModifiedOn,
    jCommand,
    jNumberOfWorkers,
    jName,
    jRole,
    jGlueVersion,
    jWorkerType,
    jDescription,
    jDefaultArguments,
    jAllocatedCapacity,
    jExecutionProperty,
    jMaxRetries,
    jLogURI,

    -- * JobBookmarkEntry
    JobBookmarkEntry (..),
    jobBookmarkEntry,
    jbeRunId,
    jbeJobBookmark,
    jbeVersion,
    jbeRun,
    jbeJobName,
    jbePreviousRunId,
    jbeAttempt,

    -- * JobBookmarksEncryption
    JobBookmarksEncryption (..),
    jobBookmarksEncryption,
    jbeJobBookmarksEncryptionMode,
    jbeKMSKeyARN,

    -- * JobCommand
    JobCommand (..),
    jobCommand,
    jcPythonVersion,
    jcScriptLocation,
    jcName,

    -- * JobNodeDetails
    JobNodeDetails (..),
    jobNodeDetails,
    jndJobRuns,

    -- * JobRun
    JobRun (..),
    jobRun,
    jrPredecessorRuns,
    jrExecutionTime,
    jrSecurityConfiguration,
    jrTimeout,
    jrMaxCapacity,
    jrId,
    jrNotificationProperty,
    jrLastModifiedOn,
    jrTriggerName,
    jrNumberOfWorkers,
    jrLogGroupName,
    jrCompletedOn,
    jrGlueVersion,
    jrJobRunState,
    jrWorkerType,
    jrErrorMessage,
    jrStartedOn,
    jrJobName,
    jrArguments,
    jrAllocatedCapacity,
    jrPreviousRunId,
    jrAttempt,

    -- * JobUpdate
    JobUpdate (..),
    jobUpdate,
    juNonOverridableArguments,
    juSecurityConfiguration,
    juTimeout,
    juMaxCapacity,
    juConnections,
    juNotificationProperty,
    juCommand,
    juNumberOfWorkers,
    juRole,
    juGlueVersion,
    juWorkerType,
    juDescription,
    juDefaultArguments,
    juAllocatedCapacity,
    juExecutionProperty,
    juMaxRetries,
    juLogURI,

    -- * KeySchemaElement
    KeySchemaElement (..),
    keySchemaElement,
    kseName,
    kseType,

    -- * LabelingSetGenerationTaskRunProperties
    LabelingSetGenerationTaskRunProperties (..),
    labelingSetGenerationTaskRunProperties,
    lsgtrpOutputS3Path,

    -- * LastCrawlInfo
    LastCrawlInfo (..),
    lastCrawlInfo,
    lciStatus,
    lciMessagePrefix,
    lciLogGroup,
    lciStartTime,
    lciErrorMessage,
    lciLogStream,

    -- * LineageConfiguration
    LineageConfiguration (..),
    lineageConfiguration,
    lcCrawlerLineageSettings,

    -- * Location
    Location (..),
    location,
    lJdbc,
    lDynamoDB,
    lS3,

    -- * LongColumnStatisticsData
    LongColumnStatisticsData (..),
    longColumnStatisticsData,
    lcsdMaximumValue,
    lcsdMinimumValue,
    lcsdNumberOfNulls,
    lcsdNumberOfDistinctValues,

    -- * MLTransform
    MLTransform (..),
    mLTransform,
    mltStatus,
    mltTransformId,
    mltSchema,
    mltCreatedOn,
    mltInputRecordTables,
    mltTransformEncryption,
    mltTimeout,
    mltMaxCapacity,
    mltLastModifiedOn,
    mltNumberOfWorkers,
    mltName,
    mltRole,
    mltGlueVersion,
    mltEvaluationMetrics,
    mltWorkerType,
    mltDescription,
    mltLabelCount,
    mltParameters,
    mltMaxRetries,

    -- * MLUserDataEncryption
    MLUserDataEncryption (..),
    mLUserDataEncryption,
    mludeKMSKeyId,
    mludeMlUserDataEncryptionMode,

    -- * MappingEntry
    MappingEntry (..),
    mappingEntry,
    meTargetType,
    meTargetTable,
    meTargetPath,
    meSourceTable,
    meSourcePath,
    meSourceType,

    -- * MetadataInfo
    MetadataInfo (..),
    metadataInfo,
    miCreatedTime,
    miMetadataValue,

    -- * MetadataKeyValuePair
    MetadataKeyValuePair (..),
    metadataKeyValuePair,
    mkvpMetadataKey,
    mkvpMetadataValue,

    -- * MongoDBTarget
    MongoDBTarget (..),
    mongoDBTarget,
    mdtConnectionName,
    mdtScanAll,
    mdtPath,

    -- * Node
    Node (..),
    node,
    nJobDetails,
    nTriggerDetails,
    nName,
    nUniqueId,
    nCrawlerDetails,
    nType,

    -- * NotificationProperty
    NotificationProperty (..),
    notificationProperty,
    npNotifyDelayAfter,

    -- * Order
    Order (..),
    order,
    oColumn,
    oSortOrder,

    -- * Partition
    Partition (..),
    partition,
    pCreationTime,
    pTableName,
    pCatalogId,
    pValues,
    pStorageDescriptor,
    pLastAnalyzedTime,
    pLastAccessTime,
    pParameters,
    pDatabaseName,

    -- * PartitionError
    PartitionError (..),
    partitionError,
    peErrorDetail,
    pePartitionValues,

    -- * PartitionIndex
    PartitionIndex (..),
    partitionIndex,
    piKeys,
    piIndexName,

    -- * PartitionIndexDescriptor
    PartitionIndexDescriptor (..),
    partitionIndexDescriptor,
    pidBackfillErrors,
    pidIndexName,
    pidKeys,
    pidIndexStatus,

    -- * PartitionInput
    PartitionInput (..),
    partitionInput,
    piValues,
    piStorageDescriptor,
    piLastAnalyzedTime,
    piLastAccessTime,
    piParameters,

    -- * PartitionValueList
    PartitionValueList (..),
    partitionValueList,
    pvlValues,

    -- * PhysicalConnectionRequirements
    PhysicalConnectionRequirements (..),
    physicalConnectionRequirements,
    pcrSecurityGroupIdList,
    pcrAvailabilityZone,
    pcrSubnetId,

    -- * Predecessor
    Predecessor (..),
    predecessor,
    pRunId,
    pJobName,

    -- * Predicate
    Predicate (..),
    predicate,
    pLogical,
    pConditions,

    -- * PrincipalPermissions
    PrincipalPermissions (..),
    principalPermissions,
    ppPermissions,
    ppPrincipal,

    -- * PropertyPredicate
    PropertyPredicate (..),
    propertyPredicate,
    ppKey,
    ppValue,
    ppComparator,

    -- * RecrawlPolicy
    RecrawlPolicy (..),
    recrawlPolicy,
    rpRecrawlBehavior,

    -- * RegistryId
    RegistryId (..),
    registryId,
    riRegistryName,
    riRegistryARN,

    -- * RegistryListItem
    RegistryListItem (..),
    registryListItem,
    rliStatus,
    rliUpdatedTime,
    rliCreatedTime,
    rliRegistryName,
    rliDescription,
    rliRegistryARN,

    -- * ResourceURI
    ResourceURI (..),
    resourceURI,
    ruURI,
    ruResourceType,

    -- * S3Encryption
    S3Encryption (..),
    s3Encryption,
    seS3EncryptionMode,
    seKMSKeyARN,

    -- * S3Target
    S3Target (..),
    s3Target,
    stConnectionName,
    stExclusions,
    stPath,

    -- * Schedule
    Schedule (..),
    schedule,
    sState,
    sScheduleExpression,

    -- * SchemaChangePolicy
    SchemaChangePolicy (..),
    schemaChangePolicy,
    scpUpdateBehavior,
    scpDeleteBehavior,

    -- * SchemaColumn
    SchemaColumn (..),
    schemaColumn,
    scName,
    scDataType,

    -- * SchemaId
    SchemaId (..),
    schemaId,
    siSchemaARN,
    siRegistryName,
    siSchemaName,

    -- * SchemaListItem
    SchemaListItem (..),
    schemaListItem,
    sliSchemaARN,
    sliUpdatedTime,
    sliCreatedTime,
    sliRegistryName,
    sliSchemaName,
    sliDescription,
    sliSchemaStatus,

    -- * SchemaReference
    SchemaReference (..),
    schemaReference,
    srSchemaVersionId,
    srSchemaVersionNumber,
    srSchemaId,

    -- * SchemaVersionErrorItem
    SchemaVersionErrorItem (..),
    schemaVersionErrorItem,
    sveiVersionNumber,
    sveiErrorDetails,

    -- * SchemaVersionListItem
    SchemaVersionListItem (..),
    schemaVersionListItem,
    svliSchemaARN,
    svliStatus,
    svliSchemaVersionId,
    svliCreatedTime,
    svliVersionNumber,

    -- * SchemaVersionNumber
    SchemaVersionNumber (..),
    schemaVersionNumber,
    svnLatestVersion,
    svnVersionNumber,

    -- * SecurityConfiguration
    SecurityConfiguration (..),
    securityConfiguration,
    secEncryptionConfiguration,
    secCreatedTimeStamp,
    secName,

    -- * Segment
    Segment (..),
    segment,
    sSegmentNumber,
    sTotalSegments,

    -- * SerDeInfo
    SerDeInfo (..),
    serDeInfo,
    sdiSerializationLibrary,
    sdiName,
    sdiParameters,

    -- * SkewedInfo
    SkewedInfo (..),
    skewedInfo,
    siSkewedColumnNames,
    siSkewedColumnValues,
    siSkewedColumnValueLocationMaps,

    -- * SortCriterion
    SortCriterion (..),
    sortCriterion,
    scFieldName,
    scSort,

    -- * StorageDescriptor
    StorageDescriptor (..),
    storageDescriptor,
    sdCompressed,
    sdNumberOfBuckets,
    sdSkewedInfo,
    sdSchemaReference,
    sdSortColumns,
    sdOutputFormat,
    sdBucketColumns,
    sdSerdeInfo,
    sdLocation,
    sdColumns,
    sdInputFormat,
    sdParameters,
    sdStoredAsSubDirectories,

    -- * StringColumnStatisticsData
    StringColumnStatisticsData (..),
    stringColumnStatisticsData,
    scsdMaximumLength,
    scsdAverageLength,
    scsdNumberOfNulls,
    scsdNumberOfDistinctValues,

    -- * Table
    Table (..),
    table,
    ttViewOriginalText,
    ttCatalogId,
    ttTableType,
    ttStorageDescriptor,
    ttLastAnalyzedTime,
    ttViewExpandedText,
    ttTargetTable,
    ttRetention,
    ttUpdateTime,
    ttCreateTime,
    ttOwner,
    ttPartitionKeys,
    ttDescription,
    ttLastAccessTime,
    ttCreatedBy,
    ttIsRegisteredWithLakeFormation,
    ttParameters,
    ttDatabaseName,
    ttName,

    -- * TableError
    TableError (..),
    tableError,
    teTableName,
    teErrorDetail,

    -- * TableIdentifier
    TableIdentifier (..),
    tableIdentifier,
    tiCatalogId,
    tiName,
    tiDatabaseName,

    -- * TableInput
    TableInput (..),
    tableInput,
    tabViewOriginalText,
    tabTableType,
    tabStorageDescriptor,
    tabLastAnalyzedTime,
    tabViewExpandedText,
    tabTargetTable,
    tabRetention,
    tabOwner,
    tabPartitionKeys,
    tabDescription,
    tabLastAccessTime,
    tabParameters,
    tabName,

    -- * TableVersion
    TableVersion (..),
    tableVersion,
    tvVersionId,
    tvTable,

    -- * TableVersionError
    TableVersionError (..),
    tableVersionError,
    tveTableName,
    tveErrorDetail,
    tveVersionId,

    -- * TaskRun
    TaskRun (..),
    taskRun,
    trExecutionTime,
    trStatus,
    trTransformId,
    trTaskRunId,
    trErrorString,
    trLastModifiedOn,
    trLogGroupName,
    trCompletedOn,
    trProperties,
    trStartedOn,

    -- * TaskRunFilterCriteria
    TaskRunFilterCriteria (..),
    taskRunFilterCriteria,
    trfcStatus,
    trfcTaskRunType,
    trfcStartedBefore,
    trfcStartedAfter,

    -- * TaskRunProperties
    TaskRunProperties (..),
    taskRunProperties,
    trpExportLabelsTaskRunProperties,
    trpFindMatchesTaskRunProperties,
    trpLabelingSetGenerationTaskRunProperties,
    trpTaskType,
    trpImportLabelsTaskRunProperties,

    -- * TaskRunSortCriteria
    TaskRunSortCriteria (..),
    taskRunSortCriteria,
    trscColumn,
    trscSortDirection,

    -- * TransformEncryption
    TransformEncryption (..),
    transformEncryption,
    teMlUserDataEncryption,
    teTaskRunSecurityConfigurationName,

    -- * TransformFilterCriteria
    TransformFilterCriteria (..),
    transformFilterCriteria,
    tfcCreatedAfter,
    tfcStatus,
    tfcTransformType,
    tfcSchema,
    tfcCreatedBefore,
    tfcLastModifiedBefore,
    tfcLastModifiedAfter,
    tfcName,
    tfcGlueVersion,

    -- * TransformParameters
    TransformParameters (..),
    transformParameters,
    tpFindMatchesParameters,
    tpTransformType,

    -- * TransformSortCriteria
    TransformSortCriteria (..),
    transformSortCriteria,
    tscColumn,
    tscSortDirection,

    -- * Trigger
    Trigger (..),
    trigger,
    tWorkflowName,
    tId,
    tActions,
    tState,
    tName,
    tPredicate,
    tDescription,
    tType,
    tSchedule,

    -- * TriggerNodeDetails
    TriggerNodeDetails (..),
    triggerNodeDetails,
    tndTrigger,

    -- * TriggerUpdate
    TriggerUpdate (..),
    triggerUpdate,
    tuActions,
    tuName,
    tuPredicate,
    tuDescription,
    tuSchedule,

    -- * UpdateCSVClassifierRequest
    UpdateCSVClassifierRequest (..),
    updateCSVClassifierRequest,
    uccrContainsHeader,
    uccrDelimiter,
    uccrDisableValueTrimming,
    uccrHeader,
    uccrQuoteSymbol,
    uccrAllowSingleColumn,
    uccrName,

    -- * UpdateGrokClassifierRequest
    UpdateGrokClassifierRequest (..),
    updateGrokClassifierRequest,
    ugcrGrokPattern,
    ugcrClassification,
    ugcrCustomPatterns,
    ugcrName,

    -- * UpdateJSONClassifierRequest
    UpdateJSONClassifierRequest (..),
    updateJSONClassifierRequest,
    ujcrJSONPath,
    ujcrName,

    -- * UpdateXMLClassifierRequest
    UpdateXMLClassifierRequest (..),
    updateXMLClassifierRequest,
    uxcrClassification,
    uxcrRowTag,
    uxcrName,

    -- * UserDefinedFunction
    UserDefinedFunction (..),
    userDefinedFunction,
    udfOwnerType,
    udfClassName,
    udfCatalogId,
    udfOwnerName,
    udfFunctionName,
    udfResourceURIs,
    udfCreateTime,
    udfDatabaseName,

    -- * UserDefinedFunctionInput
    UserDefinedFunctionInput (..),
    userDefinedFunctionInput,
    udfiOwnerType,
    udfiClassName,
    udfiOwnerName,
    udfiFunctionName,
    udfiResourceURIs,

    -- * Workflow
    Workflow (..),
    workflow,
    wCreatedOn,
    wDefaultRunProperties,
    wLastRun,
    wMaxConcurrentRuns,
    wLastModifiedOn,
    wName,
    wGraph,
    wDescription,

    -- * WorkflowGraph
    WorkflowGraph (..),
    workflowGraph,
    wgNodes,
    wgEdges,

    -- * WorkflowRun
    WorkflowRun (..),
    workflowRun,
    wrWorkflowRunId,
    wrStatus,
    wrWorkflowRunProperties,
    wrStatistics,
    wrName,
    wrCompletedOn,
    wrGraph,
    wrErrorMessage,
    wrStartedOn,
    wrPreviousRunId,

    -- * WorkflowRunStatistics
    WorkflowRunStatistics (..),
    workflowRunStatistics,
    wrsTimeoutActions,
    wrsSucceededActions,
    wrsRunningActions,
    wrsTotalActions,
    wrsStoppedActions,
    wrsFailedActions,

    -- * XMLClassifier
    XMLClassifier (..),
    xmlClassifier,
    xcCreationTime,
    xcVersion,
    xcLastUpdated,
    xcRowTag,
    xcName,
    xcClassification,
  )
where

import Network.AWS.Glue.Types.Action
import Network.AWS.Glue.Types.BackfillError
import Network.AWS.Glue.Types.BackfillErrorCode
import Network.AWS.Glue.Types.BatchStopJobRunError
import Network.AWS.Glue.Types.BatchStopJobRunSuccessfulSubmission
import Network.AWS.Glue.Types.BatchUpdatePartitionFailureEntry
import Network.AWS.Glue.Types.BatchUpdatePartitionRequestEntry
import Network.AWS.Glue.Types.BinaryColumnStatisticsData
import Network.AWS.Glue.Types.BooleanColumnStatisticsData
import Network.AWS.Glue.Types.CSVClassifier
import Network.AWS.Glue.Types.CSVHeaderOption
import Network.AWS.Glue.Types.CatalogEncryptionMode
import Network.AWS.Glue.Types.CatalogEntry
import Network.AWS.Glue.Types.CatalogImportStatus
import Network.AWS.Glue.Types.CatalogTarget
import Network.AWS.Glue.Types.Classifier
import Network.AWS.Glue.Types.CloudWatchEncryption
import Network.AWS.Glue.Types.CloudWatchEncryptionMode
import Network.AWS.Glue.Types.CodeGenEdge
import Network.AWS.Glue.Types.CodeGenNode
import Network.AWS.Glue.Types.CodeGenNodeArg
import Network.AWS.Glue.Types.Column
import Network.AWS.Glue.Types.ColumnError
import Network.AWS.Glue.Types.ColumnImportance
import Network.AWS.Glue.Types.ColumnStatistics
import Network.AWS.Glue.Types.ColumnStatisticsData
import Network.AWS.Glue.Types.ColumnStatisticsError
import Network.AWS.Glue.Types.ColumnStatisticsType
import Network.AWS.Glue.Types.Comparator
import Network.AWS.Glue.Types.Compatibility
import Network.AWS.Glue.Types.Condition
import Network.AWS.Glue.Types.ConfusionMatrix
import Network.AWS.Glue.Types.Connection
import Network.AWS.Glue.Types.ConnectionInput
import Network.AWS.Glue.Types.ConnectionPasswordEncryption
import Network.AWS.Glue.Types.ConnectionPropertyKey
import Network.AWS.Glue.Types.ConnectionType
import Network.AWS.Glue.Types.ConnectionsList
import Network.AWS.Glue.Types.Crawl
import Network.AWS.Glue.Types.CrawlState
import Network.AWS.Glue.Types.Crawler
import Network.AWS.Glue.Types.CrawlerLineageSettings
import Network.AWS.Glue.Types.CrawlerMetrics
import Network.AWS.Glue.Types.CrawlerNodeDetails
import Network.AWS.Glue.Types.CrawlerState
import Network.AWS.Glue.Types.CrawlerTargets
import Network.AWS.Glue.Types.CreateCSVClassifierRequest
import Network.AWS.Glue.Types.CreateGrokClassifierRequest
import Network.AWS.Glue.Types.CreateJSONClassifierRequest
import Network.AWS.Glue.Types.CreateXMLClassifierRequest
import Network.AWS.Glue.Types.DataCatalogEncryptionSettings
import Network.AWS.Glue.Types.DataFormat
import Network.AWS.Glue.Types.DataLakePrincipal
import Network.AWS.Glue.Types.Database
import Network.AWS.Glue.Types.DatabaseIdentifier
import Network.AWS.Glue.Types.DatabaseInput
import Network.AWS.Glue.Types.DateColumnStatisticsData
import Network.AWS.Glue.Types.DecimalColumnStatisticsData
import Network.AWS.Glue.Types.DecimalNumber
import Network.AWS.Glue.Types.DeleteBehavior
import Network.AWS.Glue.Types.DevEndpoint
import Network.AWS.Glue.Types.DevEndpointCustomLibraries
import Network.AWS.Glue.Types.DoubleColumnStatisticsData
import Network.AWS.Glue.Types.DynamoDBTarget
import Network.AWS.Glue.Types.Edge
import Network.AWS.Glue.Types.EnableHybridValues
import Network.AWS.Glue.Types.EncryptionAtRest
import Network.AWS.Glue.Types.EncryptionConfiguration
import Network.AWS.Glue.Types.ErrorDetail
import Network.AWS.Glue.Types.ErrorDetails
import Network.AWS.Glue.Types.EvaluationMetrics
import Network.AWS.Glue.Types.ExecutionProperty
import Network.AWS.Glue.Types.ExistCondition
import Network.AWS.Glue.Types.ExportLabelsTaskRunProperties
import Network.AWS.Glue.Types.FindMatchesMetrics
import Network.AWS.Glue.Types.FindMatchesParameters
import Network.AWS.Glue.Types.FindMatchesTaskRunProperties
import Network.AWS.Glue.Types.GetConnectionsFilter
import Network.AWS.Glue.Types.GluePolicy
import Network.AWS.Glue.Types.GlueTable
import Network.AWS.Glue.Types.GrokClassifier
import Network.AWS.Glue.Types.ImportLabelsTaskRunProperties
import Network.AWS.Glue.Types.JSONClassifier
import Network.AWS.Glue.Types.JdbcTarget
import Network.AWS.Glue.Types.Job
import Network.AWS.Glue.Types.JobBookmarkEntry
import Network.AWS.Glue.Types.JobBookmarksEncryption
import Network.AWS.Glue.Types.JobBookmarksEncryptionMode
import Network.AWS.Glue.Types.JobCommand
import Network.AWS.Glue.Types.JobNodeDetails
import Network.AWS.Glue.Types.JobRun
import Network.AWS.Glue.Types.JobRunState
import Network.AWS.Glue.Types.JobUpdate
import Network.AWS.Glue.Types.KeySchemaElement
import Network.AWS.Glue.Types.LabelingSetGenerationTaskRunProperties
import Network.AWS.Glue.Types.Language
import Network.AWS.Glue.Types.LastCrawlInfo
import Network.AWS.Glue.Types.LastCrawlStatus
import Network.AWS.Glue.Types.LineageConfiguration
import Network.AWS.Glue.Types.Location
import Network.AWS.Glue.Types.Logical
import Network.AWS.Glue.Types.LogicalOperator
import Network.AWS.Glue.Types.LongColumnStatisticsData
import Network.AWS.Glue.Types.MLTransform
import Network.AWS.Glue.Types.MLUserDataEncryption
import Network.AWS.Glue.Types.MLUserDataEncryptionModeString
import Network.AWS.Glue.Types.MappingEntry
import Network.AWS.Glue.Types.MetadataInfo
import Network.AWS.Glue.Types.MetadataKeyValuePair
import Network.AWS.Glue.Types.MongoDBTarget
import Network.AWS.Glue.Types.Node
import Network.AWS.Glue.Types.NodeType
import Network.AWS.Glue.Types.NotificationProperty
import Network.AWS.Glue.Types.Order
import Network.AWS.Glue.Types.Partition
import Network.AWS.Glue.Types.PartitionError
import Network.AWS.Glue.Types.PartitionIndex
import Network.AWS.Glue.Types.PartitionIndexDescriptor
import Network.AWS.Glue.Types.PartitionIndexStatus
import Network.AWS.Glue.Types.PartitionInput
import Network.AWS.Glue.Types.PartitionValueList
import Network.AWS.Glue.Types.Permission
import Network.AWS.Glue.Types.PhysicalConnectionRequirements
import Network.AWS.Glue.Types.Predecessor
import Network.AWS.Glue.Types.Predicate
import Network.AWS.Glue.Types.PrincipalPermissions
import Network.AWS.Glue.Types.PrincipalType
import Network.AWS.Glue.Types.PropertyPredicate
import Network.AWS.Glue.Types.RecrawlBehavior
import Network.AWS.Glue.Types.RecrawlPolicy
import Network.AWS.Glue.Types.RegistryId
import Network.AWS.Glue.Types.RegistryListItem
import Network.AWS.Glue.Types.RegistryStatus
import Network.AWS.Glue.Types.ResourceShareType
import Network.AWS.Glue.Types.ResourceType
import Network.AWS.Glue.Types.ResourceURI
import Network.AWS.Glue.Types.S3Encryption
import Network.AWS.Glue.Types.S3EncryptionMode
import Network.AWS.Glue.Types.S3Target
import Network.AWS.Glue.Types.Schedule
import Network.AWS.Glue.Types.ScheduleState
import Network.AWS.Glue.Types.SchemaChangePolicy
import Network.AWS.Glue.Types.SchemaColumn
import Network.AWS.Glue.Types.SchemaDiffType
import Network.AWS.Glue.Types.SchemaId
import Network.AWS.Glue.Types.SchemaListItem
import Network.AWS.Glue.Types.SchemaReference
import Network.AWS.Glue.Types.SchemaStatus
import Network.AWS.Glue.Types.SchemaVersionErrorItem
import Network.AWS.Glue.Types.SchemaVersionListItem
import Network.AWS.Glue.Types.SchemaVersionNumber
import Network.AWS.Glue.Types.SchemaVersionStatus
import Network.AWS.Glue.Types.SecurityConfiguration
import Network.AWS.Glue.Types.Segment
import Network.AWS.Glue.Types.SerDeInfo
import Network.AWS.Glue.Types.SkewedInfo
import Network.AWS.Glue.Types.Sort
import Network.AWS.Glue.Types.SortCriterion
import Network.AWS.Glue.Types.SortDirectionType
import Network.AWS.Glue.Types.StorageDescriptor
import Network.AWS.Glue.Types.StringColumnStatisticsData
import Network.AWS.Glue.Types.Table
import Network.AWS.Glue.Types.TableError
import Network.AWS.Glue.Types.TableIdentifier
import Network.AWS.Glue.Types.TableInput
import Network.AWS.Glue.Types.TableVersion
import Network.AWS.Glue.Types.TableVersionError
import Network.AWS.Glue.Types.TaskRun
import Network.AWS.Glue.Types.TaskRunFilterCriteria
import Network.AWS.Glue.Types.TaskRunProperties
import Network.AWS.Glue.Types.TaskRunSortColumnType
import Network.AWS.Glue.Types.TaskRunSortCriteria
import Network.AWS.Glue.Types.TaskStatusType
import Network.AWS.Glue.Types.TaskType
import Network.AWS.Glue.Types.TransformEncryption
import Network.AWS.Glue.Types.TransformFilterCriteria
import Network.AWS.Glue.Types.TransformParameters
import Network.AWS.Glue.Types.TransformSortColumnType
import Network.AWS.Glue.Types.TransformSortCriteria
import Network.AWS.Glue.Types.TransformStatusType
import Network.AWS.Glue.Types.TransformType
import Network.AWS.Glue.Types.Trigger
import Network.AWS.Glue.Types.TriggerNodeDetails
import Network.AWS.Glue.Types.TriggerState
import Network.AWS.Glue.Types.TriggerType
import Network.AWS.Glue.Types.TriggerUpdate
import Network.AWS.Glue.Types.UpdateBehavior
import Network.AWS.Glue.Types.UpdateCSVClassifierRequest
import Network.AWS.Glue.Types.UpdateGrokClassifierRequest
import Network.AWS.Glue.Types.UpdateJSONClassifierRequest
import Network.AWS.Glue.Types.UpdateXMLClassifierRequest
import Network.AWS.Glue.Types.UserDefinedFunction
import Network.AWS.Glue.Types.UserDefinedFunctionInput
import Network.AWS.Glue.Types.WorkerType
import Network.AWS.Glue.Types.Workflow
import Network.AWS.Glue.Types.WorkflowGraph
import Network.AWS.Glue.Types.WorkflowRun
import Network.AWS.Glue.Types.WorkflowRunStatistics
import Network.AWS.Glue.Types.WorkflowRunStatus
import Network.AWS.Glue.Types.XMLClassifier
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-03-31@ of the Amazon Glue SDK configuration.
glue :: Service
glue =
  Service
    { _svcAbbrev = "Glue",
      _svcSigner = v4,
      _svcPrefix = "glue",
      _svcVersion = "2017-03-31",
      _svcEndpoint = defaultEndpoint glue,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Glue",
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

-- | A specified entity does not exist
_EntityNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_EntityNotFoundException =
  _MatchServiceError glue "EntityNotFoundException"

-- | The specified crawler is not running.
_CrawlerNotRunningException :: AsError a => Getting (First ServiceError) a ServiceError
_CrawlerNotRunningException =
  _MatchServiceError
    glue
    "CrawlerNotRunningException"

-- | There was a version conflict.
_VersionMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_VersionMismatchException =
  _MatchServiceError glue "VersionMismatchException"

-- | An encryption operation failed.
_GlueEncryptionException :: AsError a => Getting (First ServiceError) a ServiceError
_GlueEncryptionException =
  _MatchServiceError glue "GlueEncryptionException"

-- | The input provided was not valid.
_InvalidInputException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInputException =
  _MatchServiceError glue "InvalidInputException"

-- | An internal service error occurred.
_InternalServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceException =
  _MatchServiceError glue "InternalServiceException"

-- | The workflow is in an invalid state to perform a requested operation.
_IllegalWorkflowStateException :: AsError a => Getting (First ServiceError) a ServiceError
_IllegalWorkflowStateException =
  _MatchServiceError
    glue
    "IllegalWorkflowStateException"

-- | Too many jobs are being run concurrently.
_ConcurrentRunsExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentRunsExceededException =
  _MatchServiceError
    glue
    "ConcurrentRunsExceededException"

-- | Two processes are trying to modify a resource simultaneously.
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException =
  _MatchServiceError
    glue
    "ConcurrentModificationException"

-- | A specified condition was not satisfied.
_ConditionCheckFailureException :: AsError a => Getting (First ServiceError) a ServiceError
_ConditionCheckFailureException =
  _MatchServiceError
    glue
    "ConditionCheckFailureException"

-- | The specified scheduler is transitioning.
_SchedulerTransitioningException :: AsError a => Getting (First ServiceError) a ServiceError
_SchedulerTransitioningException =
  _MatchServiceError
    glue
    "SchedulerTransitioningException"

-- | The specified scheduler is already running.
_SchedulerRunningException :: AsError a => Getting (First ServiceError) a ServiceError
_SchedulerRunningException =
  _MatchServiceError glue "SchedulerRunningException"

-- | Access to a resource was denied.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError glue "AccessDeniedException"

-- | A value could not be validated.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError glue "ValidationException"

-- | The operation cannot be performed because the crawler is already running.
_CrawlerRunningException :: AsError a => Getting (First ServiceError) a ServiceError
_CrawlerRunningException =
  _MatchServiceError glue "CrawlerRunningException"

-- | The machine learning transform is not ready to run.
_MLTransformNotReadyException :: AsError a => Getting (First ServiceError) a ServiceError
_MLTransformNotReadyException =
  _MatchServiceError
    glue
    "MLTransformNotReadyException"

-- | The @CreatePartitions@ API was called on a table that has indexes enabled.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError glue "ConflictException"

-- | A resource to be created or added already exists.
_AlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_AlreadyExistsException =
  _MatchServiceError glue "AlreadyExistsException"

-- | The operation timed out.
_OperationTimeoutException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationTimeoutException =
  _MatchServiceError glue "OperationTimeoutException"

-- | The same unique identifier was associated with two different records.
_IdempotentParameterMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_IdempotentParameterMismatchException =
  _MatchServiceError
    glue
    "IdempotentParameterMismatchException"

-- | The specified crawler is stopping.
_CrawlerStoppingException :: AsError a => Getting (First ServiceError) a ServiceError
_CrawlerStoppingException =
  _MatchServiceError glue "CrawlerStoppingException"

-- | There is no applicable schedule.
_NoScheduleException :: AsError a => Getting (First ServiceError) a ServiceError
_NoScheduleException =
  _MatchServiceError glue "NoScheduleException"

-- | A resource numerical limit was exceeded.
_ResourceNumberLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNumberLimitExceededException =
  _MatchServiceError
    glue
    "ResourceNumberLimitExceededException"

-- | The specified scheduler is not running.
_SchedulerNotRunningException :: AsError a => Getting (First ServiceError) a ServiceError
_SchedulerNotRunningException =
  _MatchServiceError
    glue
    "SchedulerNotRunningException"
