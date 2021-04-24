{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Glue__
--
-- Defines the public endpoint for the AWS Glue service.
module Network.AWS.Glue
  ( -- * Service Configuration
    glue,

    -- * Errors
    -- $errors

    -- ** EntityNotFoundException
    _EntityNotFoundException,

    -- ** CrawlerNotRunningException
    _CrawlerNotRunningException,

    -- ** VersionMismatchException
    _VersionMismatchException,

    -- ** GlueEncryptionException
    _GlueEncryptionException,

    -- ** InvalidInputException
    _InvalidInputException,

    -- ** InternalServiceException
    _InternalServiceException,

    -- ** IllegalWorkflowStateException
    _IllegalWorkflowStateException,

    -- ** ConcurrentRunsExceededException
    _ConcurrentRunsExceededException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** ConditionCheckFailureException
    _ConditionCheckFailureException,

    -- ** SchedulerTransitioningException
    _SchedulerTransitioningException,

    -- ** SchedulerRunningException
    _SchedulerRunningException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ValidationException
    _ValidationException,

    -- ** CrawlerRunningException
    _CrawlerRunningException,

    -- ** MLTransformNotReadyException
    _MLTransformNotReadyException,

    -- ** ConflictException
    _ConflictException,

    -- ** AlreadyExistsException
    _AlreadyExistsException,

    -- ** OperationTimeoutException
    _OperationTimeoutException,

    -- ** IdempotentParameterMismatchException
    _IdempotentParameterMismatchException,

    -- ** CrawlerStoppingException
    _CrawlerStoppingException,

    -- ** NoScheduleException
    _NoScheduleException,

    -- ** ResourceNumberLimitExceededException
    _ResourceNumberLimitExceededException,

    -- ** SchedulerNotRunningException
    _SchedulerNotRunningException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetDataCatalogEncryptionSettings
    module Network.AWS.Glue.GetDataCatalogEncryptionSettings,

    -- ** UpdateColumnStatisticsForTable
    module Network.AWS.Glue.UpdateColumnStatisticsForTable,

    -- ** StartMLLabelingSetGenerationTaskRun
    module Network.AWS.Glue.StartMLLabelingSetGenerationTaskRun,

    -- ** DeleteColumnStatisticsForTable
    module Network.AWS.Glue.DeleteColumnStatisticsForTable,

    -- ** GetSchema
    module Network.AWS.Glue.GetSchema,

    -- ** DeleteConnection
    module Network.AWS.Glue.DeleteConnection,

    -- ** UpdateConnection
    module Network.AWS.Glue.UpdateConnection,

    -- ** CheckSchemaVersionValidity
    module Network.AWS.Glue.CheckSchemaVersionValidity,

    -- ** CreateWorkflow
    module Network.AWS.Glue.CreateWorkflow,

    -- ** GetPartitions (Paginated)
    module Network.AWS.Glue.GetPartitions,

    -- ** DeleteSecurityConfiguration
    module Network.AWS.Glue.DeleteSecurityConfiguration,

    -- ** GetPartition
    module Network.AWS.Glue.GetPartition,

    -- ** UpdateRegistry
    module Network.AWS.Glue.UpdateRegistry,

    -- ** ListMLTransforms
    module Network.AWS.Glue.ListMLTransforms,

    -- ** StopCrawler
    module Network.AWS.Glue.StopCrawler,

    -- ** StartImportLabelsTaskRun
    module Network.AWS.Glue.StartImportLabelsTaskRun,

    -- ** GetResourcePolicy
    module Network.AWS.Glue.GetResourcePolicy,

    -- ** QuerySchemaVersionMetadata
    module Network.AWS.Glue.QuerySchemaVersionMetadata,

    -- ** DeleteRegistry
    module Network.AWS.Glue.DeleteRegistry,

    -- ** GetPartitionIndexes (Paginated)
    module Network.AWS.Glue.GetPartitionIndexes,

    -- ** StartCrawler
    module Network.AWS.Glue.StartCrawler,

    -- ** GetCatalogImportStatus
    module Network.AWS.Glue.GetCatalogImportStatus,

    -- ** GetColumnStatisticsForPartition
    module Network.AWS.Glue.GetColumnStatisticsForPartition,

    -- ** CreateRegistry
    module Network.AWS.Glue.CreateRegistry,

    -- ** ListTriggers
    module Network.AWS.Glue.ListTriggers,

    -- ** CreateMLTransform
    module Network.AWS.Glue.CreateMLTransform,

    -- ** StopCrawlerSchedule
    module Network.AWS.Glue.StopCrawlerSchedule,

    -- ** UpdateTrigger
    module Network.AWS.Glue.UpdateTrigger,

    -- ** GetSchemaByDefinition
    module Network.AWS.Glue.GetSchemaByDefinition,

    -- ** ListRegistries (Paginated)
    module Network.AWS.Glue.ListRegistries,

    -- ** StartCrawlerSchedule
    module Network.AWS.Glue.StartCrawlerSchedule,

    -- ** DeleteTrigger
    module Network.AWS.Glue.DeleteTrigger,

    -- ** GetJob
    module Network.AWS.Glue.GetJob,

    -- ** UpdateClassifier
    module Network.AWS.Glue.UpdateClassifier,

    -- ** DeleteClassifier
    module Network.AWS.Glue.DeleteClassifier,

    -- ** DeleteJob
    module Network.AWS.Glue.DeleteJob,

    -- ** UpdateJob
    module Network.AWS.Glue.UpdateJob,

    -- ** CreateUserDefinedFunction
    module Network.AWS.Glue.CreateUserDefinedFunction,

    -- ** GetTrigger
    module Network.AWS.Glue.GetTrigger,

    -- ** BatchGetJobs
    module Network.AWS.Glue.BatchGetJobs,

    -- ** CreateClassifier
    module Network.AWS.Glue.CreateClassifier,

    -- ** GetSecurityConfigurations (Paginated)
    module Network.AWS.Glue.GetSecurityConfigurations,

    -- ** PutResourcePolicy
    module Network.AWS.Glue.PutResourcePolicy,

    -- ** UpdatePartition
    module Network.AWS.Glue.UpdatePartition,

    -- ** GetSchemaVersionsDiff
    module Network.AWS.Glue.GetSchemaVersionsDiff,

    -- ** UntagResource
    module Network.AWS.Glue.UntagResource,

    -- ** BatchDeleteTable
    module Network.AWS.Glue.BatchDeleteTable,

    -- ** StartMLEvaluationTaskRun
    module Network.AWS.Glue.StartMLEvaluationTaskRun,

    -- ** GetDatabase
    module Network.AWS.Glue.GetDatabase,

    -- ** DeletePartition
    module Network.AWS.Glue.DeletePartition,

    -- ** GetJobRuns (Paginated)
    module Network.AWS.Glue.GetJobRuns,

    -- ** GetMLTransforms
    module Network.AWS.Glue.GetMLTransforms,

    -- ** GetJobRun
    module Network.AWS.Glue.GetJobRun,

    -- ** CreateDevEndpoint
    module Network.AWS.Glue.CreateDevEndpoint,

    -- ** CreatePartitionIndex
    module Network.AWS.Glue.CreatePartitionIndex,

    -- ** TagResource
    module Network.AWS.Glue.TagResource,

    -- ** GetSecurityConfiguration
    module Network.AWS.Glue.GetSecurityConfiguration,

    -- ** CreateCrawler
    module Network.AWS.Glue.CreateCrawler,

    -- ** GetMLTaskRuns
    module Network.AWS.Glue.GetMLTaskRuns,

    -- ** ListCrawlers
    module Network.AWS.Glue.ListCrawlers,

    -- ** UpdateDevEndpoint
    module Network.AWS.Glue.UpdateDevEndpoint,

    -- ** CreateSchema
    module Network.AWS.Glue.CreateSchema,

    -- ** ListDevEndpoints
    module Network.AWS.Glue.ListDevEndpoints,

    -- ** DeleteCrawler
    module Network.AWS.Glue.DeleteCrawler,

    -- ** DeleteDevEndpoint
    module Network.AWS.Glue.DeleteDevEndpoint,

    -- ** GetWorkflow
    module Network.AWS.Glue.GetWorkflow,

    -- ** GetSchemaVersion
    module Network.AWS.Glue.GetSchemaVersion,

    -- ** UpdateCrawler
    module Network.AWS.Glue.UpdateCrawler,

    -- ** DeleteWorkflow
    module Network.AWS.Glue.DeleteWorkflow,

    -- ** RegisterSchemaVersion
    module Network.AWS.Glue.RegisterSchemaVersion,

    -- ** GetMapping
    module Network.AWS.Glue.GetMapping,

    -- ** StopWorkflowRun
    module Network.AWS.Glue.StopWorkflowRun,

    -- ** CreateConnection
    module Network.AWS.Glue.CreateConnection,

    -- ** BatchCreatePartition
    module Network.AWS.Glue.BatchCreatePartition,

    -- ** CreateTable
    module Network.AWS.Glue.CreateTable,

    -- ** UpdateWorkflow
    module Network.AWS.Glue.UpdateWorkflow,

    -- ** GetClassifiers (Paginated)
    module Network.AWS.Glue.GetClassifiers,

    -- ** BatchStopJobRun
    module Network.AWS.Glue.BatchStopJobRun,

    -- ** StartWorkflowRun
    module Network.AWS.Glue.StartWorkflowRun,

    -- ** ListWorkflows
    module Network.AWS.Glue.ListWorkflows,

    -- ** ListSchemaVersions (Paginated)
    module Network.AWS.Glue.ListSchemaVersions,

    -- ** BatchDeletePartition
    module Network.AWS.Glue.BatchDeletePartition,

    -- ** PutSchemaVersionMetadata
    module Network.AWS.Glue.PutSchemaVersionMetadata,

    -- ** GetWorkflowRuns
    module Network.AWS.Glue.GetWorkflowRuns,

    -- ** GetTags
    module Network.AWS.Glue.GetTags,

    -- ** BatchUpdatePartition
    module Network.AWS.Glue.BatchUpdatePartition,

    -- ** GetUserDefinedFunctions (Paginated)
    module Network.AWS.Glue.GetUserDefinedFunctions,

    -- ** UpdateTable
    module Network.AWS.Glue.UpdateTable,

    -- ** DeleteTable
    module Network.AWS.Glue.DeleteTable,

    -- ** DeleteDatabase
    module Network.AWS.Glue.DeleteDatabase,

    -- ** UpdateDatabase
    module Network.AWS.Glue.UpdateDatabase,

    -- ** GetUserDefinedFunction
    module Network.AWS.Glue.GetUserDefinedFunction,

    -- ** UpdateMLTransform
    module Network.AWS.Glue.UpdateMLTransform,

    -- ** GetWorkflowRun
    module Network.AWS.Glue.GetWorkflowRun,

    -- ** DeleteMLTransform
    module Network.AWS.Glue.DeleteMLTransform,

    -- ** CreateTrigger
    module Network.AWS.Glue.CreateTrigger,

    -- ** CreateDatabase
    module Network.AWS.Glue.CreateDatabase,

    -- ** GetClassifier
    module Network.AWS.Glue.GetClassifier,

    -- ** DeleteSchemaVersions
    module Network.AWS.Glue.DeleteSchemaVersions,

    -- ** BatchGetTriggers
    module Network.AWS.Glue.BatchGetTriggers,

    -- ** BatchDeleteTableVersion
    module Network.AWS.Glue.BatchDeleteTableVersion,

    -- ** GetTableVersions (Paginated)
    module Network.AWS.Glue.GetTableVersions,

    -- ** GetDevEndpoints (Paginated)
    module Network.AWS.Glue.GetDevEndpoints,

    -- ** GetCrawlers (Paginated)
    module Network.AWS.Glue.GetCrawlers,

    -- ** StartJobRun
    module Network.AWS.Glue.StartJobRun,

    -- ** ImportCatalogToGlue
    module Network.AWS.Glue.ImportCatalogToGlue,

    -- ** CreatePartition
    module Network.AWS.Glue.CreatePartition,

    -- ** ResetJobBookmark
    module Network.AWS.Glue.ResetJobBookmark,

    -- ** ListJobs
    module Network.AWS.Glue.ListJobs,

    -- ** BatchDeleteConnection
    module Network.AWS.Glue.BatchDeleteConnection,

    -- ** GetTables (Paginated)
    module Network.AWS.Glue.GetTables,

    -- ** DeleteColumnStatisticsForPartition
    module Network.AWS.Glue.DeleteColumnStatisticsForPartition,

    -- ** DeleteResourcePolicy
    module Network.AWS.Glue.DeleteResourcePolicy,

    -- ** GetRegistry
    module Network.AWS.Glue.GetRegistry,

    -- ** ResumeWorkflowRun
    module Network.AWS.Glue.ResumeWorkflowRun,

    -- ** CancelMLTaskRun
    module Network.AWS.Glue.CancelMLTaskRun,

    -- ** CreateJob
    module Network.AWS.Glue.CreateJob,

    -- ** SearchTables
    module Network.AWS.Glue.SearchTables,

    -- ** UpdateUserDefinedFunction
    module Network.AWS.Glue.UpdateUserDefinedFunction,

    -- ** UpdateColumnStatisticsForPartition
    module Network.AWS.Glue.UpdateColumnStatisticsForPartition,

    -- ** GetConnections (Paginated)
    module Network.AWS.Glue.GetConnections,

    -- ** GetMLTransform
    module Network.AWS.Glue.GetMLTransform,

    -- ** CreateScript
    module Network.AWS.Glue.CreateScript,

    -- ** GetMLTaskRun
    module Network.AWS.Glue.GetMLTaskRun,

    -- ** DeleteUserDefinedFunction
    module Network.AWS.Glue.DeleteUserDefinedFunction,

    -- ** StartTrigger
    module Network.AWS.Glue.StartTrigger,

    -- ** PutDataCatalogEncryptionSettings
    module Network.AWS.Glue.PutDataCatalogEncryptionSettings,

    -- ** RemoveSchemaVersionMetadata
    module Network.AWS.Glue.RemoveSchemaVersionMetadata,

    -- ** BatchGetPartition
    module Network.AWS.Glue.BatchGetPartition,

    -- ** GetTable
    module Network.AWS.Glue.GetTable,

    -- ** UpdateCrawlerSchedule
    module Network.AWS.Glue.UpdateCrawlerSchedule,

    -- ** GetColumnStatisticsForTable
    module Network.AWS.Glue.GetColumnStatisticsForTable,

    -- ** StopTrigger
    module Network.AWS.Glue.StopTrigger,

    -- ** ListSchemas (Paginated)
    module Network.AWS.Glue.ListSchemas,

    -- ** GetConnection
    module Network.AWS.Glue.GetConnection,

    -- ** GetDatabases (Paginated)
    module Network.AWS.Glue.GetDatabases,

    -- ** DeleteSchema
    module Network.AWS.Glue.DeleteSchema,

    -- ** UpdateSchema
    module Network.AWS.Glue.UpdateSchema,

    -- ** GetDataflowGraph
    module Network.AWS.Glue.GetDataflowGraph,

    -- ** BatchGetDevEndpoints
    module Network.AWS.Glue.BatchGetDevEndpoints,

    -- ** StartExportLabelsTaskRun
    module Network.AWS.Glue.StartExportLabelsTaskRun,

    -- ** GetTriggers (Paginated)
    module Network.AWS.Glue.GetTriggers,

    -- ** BatchGetCrawlers
    module Network.AWS.Glue.BatchGetCrawlers,

    -- ** GetPlan
    module Network.AWS.Glue.GetPlan,

    -- ** GetCrawlerMetrics (Paginated)
    module Network.AWS.Glue.GetCrawlerMetrics,

    -- ** GetWorkflowRunProperties
    module Network.AWS.Glue.GetWorkflowRunProperties,

    -- ** DeletePartitionIndex
    module Network.AWS.Glue.DeletePartitionIndex,

    -- ** GetJobBookmark
    module Network.AWS.Glue.GetJobBookmark,

    -- ** DeleteTableVersion
    module Network.AWS.Glue.DeleteTableVersion,

    -- ** GetTableVersion
    module Network.AWS.Glue.GetTableVersion,

    -- ** PutWorkflowRunProperties
    module Network.AWS.Glue.PutWorkflowRunProperties,

    -- ** BatchGetWorkflows
    module Network.AWS.Glue.BatchGetWorkflows,

    -- ** GetResourcePolicies (Paginated)
    module Network.AWS.Glue.GetResourcePolicies,

    -- ** GetJobs (Paginated)
    module Network.AWS.Glue.GetJobs,

    -- ** GetDevEndpoint
    module Network.AWS.Glue.GetDevEndpoint,

    -- ** GetCrawler
    module Network.AWS.Glue.GetCrawler,

    -- ** CreateSecurityConfiguration
    module Network.AWS.Glue.CreateSecurityConfiguration,

    -- * Types

    -- ** BackfillErrorCode
    BackfillErrorCode (..),

    -- ** CSVHeaderOption
    CSVHeaderOption (..),

    -- ** CatalogEncryptionMode
    CatalogEncryptionMode (..),

    -- ** CloudWatchEncryptionMode
    CloudWatchEncryptionMode (..),

    -- ** ColumnStatisticsType
    ColumnStatisticsType (..),

    -- ** Comparator
    Comparator (..),

    -- ** Compatibility
    Compatibility (..),

    -- ** ConnectionPropertyKey
    ConnectionPropertyKey (..),

    -- ** ConnectionType
    ConnectionType (..),

    -- ** CrawlState
    CrawlState (..),

    -- ** CrawlerLineageSettings
    CrawlerLineageSettings (..),

    -- ** CrawlerState
    CrawlerState (..),

    -- ** DataFormat
    DataFormat (..),

    -- ** DeleteBehavior
    DeleteBehavior (..),

    -- ** EnableHybridValues
    EnableHybridValues (..),

    -- ** ExistCondition
    ExistCondition (..),

    -- ** JobBookmarksEncryptionMode
    JobBookmarksEncryptionMode (..),

    -- ** JobRunState
    JobRunState (..),

    -- ** Language
    Language (..),

    -- ** LastCrawlStatus
    LastCrawlStatus (..),

    -- ** Logical
    Logical (..),

    -- ** LogicalOperator
    LogicalOperator (..),

    -- ** MLUserDataEncryptionModeString
    MLUserDataEncryptionModeString (..),

    -- ** NodeType
    NodeType (..),

    -- ** PartitionIndexStatus
    PartitionIndexStatus (..),

    -- ** Permission
    Permission (..),

    -- ** PrincipalType
    PrincipalType (..),

    -- ** RecrawlBehavior
    RecrawlBehavior (..),

    -- ** RegistryStatus
    RegistryStatus (..),

    -- ** ResourceShareType
    ResourceShareType (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** S3EncryptionMode
    S3EncryptionMode (..),

    -- ** ScheduleState
    ScheduleState (..),

    -- ** SchemaDiffType
    SchemaDiffType (..),

    -- ** SchemaStatus
    SchemaStatus (..),

    -- ** SchemaVersionStatus
    SchemaVersionStatus (..),

    -- ** Sort
    Sort (..),

    -- ** SortDirectionType
    SortDirectionType (..),

    -- ** TaskRunSortColumnType
    TaskRunSortColumnType (..),

    -- ** TaskStatusType
    TaskStatusType (..),

    -- ** TaskType
    TaskType (..),

    -- ** TransformSortColumnType
    TransformSortColumnType (..),

    -- ** TransformStatusType
    TransformStatusType (..),

    -- ** TransformType
    TransformType (..),

    -- ** TriggerState
    TriggerState (..),

    -- ** TriggerType
    TriggerType (..),

    -- ** UpdateBehavior
    UpdateBehavior (..),

    -- ** WorkerType
    WorkerType (..),

    -- ** WorkflowRunStatus
    WorkflowRunStatus (..),

    -- ** Action
    Action,
    action,
    aSecurityConfiguration,
    aCrawlerName,
    aTimeout,
    aNotificationProperty,
    aJobName,
    aArguments,

    -- ** BackfillError
    BackfillError,
    backfillError,
    bePartitions,
    beCode,

    -- ** BatchStopJobRunError
    BatchStopJobRunError,
    batchStopJobRunError,
    bsjreErrorDetail,
    bsjreJobRunId,
    bsjreJobName,

    -- ** BatchStopJobRunSuccessfulSubmission
    BatchStopJobRunSuccessfulSubmission,
    batchStopJobRunSuccessfulSubmission,
    bsjrssJobRunId,
    bsjrssJobName,

    -- ** BatchUpdatePartitionFailureEntry
    BatchUpdatePartitionFailureEntry,
    batchUpdatePartitionFailureEntry,
    bupfeErrorDetail,
    bupfePartitionValueList,

    -- ** BatchUpdatePartitionRequestEntry
    BatchUpdatePartitionRequestEntry,
    batchUpdatePartitionRequestEntry,
    buprePartitionValueList,
    buprePartitionInput,

    -- ** BinaryColumnStatisticsData
    BinaryColumnStatisticsData,
    binaryColumnStatisticsData,
    bcsdMaximumLength,
    bcsdAverageLength,
    bcsdNumberOfNulls,

    -- ** BooleanColumnStatisticsData
    BooleanColumnStatisticsData,
    booleanColumnStatisticsData,
    bNumberOfTrues,
    bNumberOfFalses,
    bNumberOfNulls,

    -- ** CSVClassifier
    CSVClassifier,
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

    -- ** CatalogEntry
    CatalogEntry,
    catalogEntry,
    ceDatabaseName,
    ceTableName,

    -- ** CatalogImportStatus
    CatalogImportStatus,
    catalogImportStatus,
    cisImportedBy,
    cisImportCompleted,
    cisImportTime,

    -- ** CatalogTarget
    CatalogTarget,
    catalogTarget,
    ctDatabaseName,
    ctTables,

    -- ** Classifier
    Classifier,
    classifier,
    cXMLClassifier,
    cJSONClassifier,
    cCSVClassifier,
    cGrokClassifier,

    -- ** CloudWatchEncryption
    CloudWatchEncryption,
    cloudWatchEncryption,
    cweCloudWatchEncryptionMode,
    cweKMSKeyARN,

    -- ** CodeGenEdge
    CodeGenEdge,
    codeGenEdge,
    cgeTargetParameter,
    cgeSource,
    cgeTarget,

    -- ** CodeGenNode
    CodeGenNode,
    codeGenNode,
    cgnLineNumber,
    cgnId,
    cgnNodeType,
    cgnArgs,

    -- ** CodeGenNodeArg
    CodeGenNodeArg,
    codeGenNodeArg,
    cgnaParam,
    cgnaName,
    cgnaValue,

    -- ** Column
    Column,
    column,
    cComment,
    cType,
    cParameters,
    cName,

    -- ** ColumnError
    ColumnError,
    columnError,
    ceColumnName,
    ceError,

    -- ** ColumnImportance
    ColumnImportance,
    columnImportance,
    ciImportance,
    ciColumnName,

    -- ** ColumnStatistics
    ColumnStatistics,
    columnStatistics,
    csColumnName,
    csColumnType,
    csAnalyzedTime,
    csStatisticsData,

    -- ** ColumnStatisticsData
    ColumnStatisticsData,
    columnStatisticsData,
    csdDateColumnStatisticsData,
    csdBinaryColumnStatisticsData,
    csdBooleanColumnStatisticsData,
    csdLongColumnStatisticsData,
    csdStringColumnStatisticsData,
    csdDoubleColumnStatisticsData,
    csdDecimalColumnStatisticsData,
    csdType,

    -- ** ColumnStatisticsError
    ColumnStatisticsError,
    columnStatisticsError,
    cseColumnStatistics,
    cseError,

    -- ** Condition
    Condition,
    condition,
    cCrawlState,
    cCrawlerName,
    cState,
    cLogicalOperator,
    cJobName,

    -- ** ConfusionMatrix
    ConfusionMatrix,
    confusionMatrix,
    cmNumFalsePositives,
    cmNumTrueNegatives,
    cmNumFalseNegatives,
    cmNumTruePositives,

    -- ** Connection
    Connection,
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

    -- ** ConnectionInput
    ConnectionInput,
    connectionInput,
    ciPhysicalConnectionRequirements,
    ciDescription,
    ciMatchCriteria,
    ciName,
    ciConnectionType,
    ciConnectionProperties,

    -- ** ConnectionPasswordEncryption
    ConnectionPasswordEncryption,
    connectionPasswordEncryption,
    cpeAWSKMSKeyId,
    cpeReturnConnectionPasswordEncrypted,

    -- ** ConnectionsList
    ConnectionsList,
    connectionsList,
    clConnections,

    -- ** Crawl
    Crawl,
    crawl,
    craLogGroup,
    craState,
    craCompletedOn,
    craErrorMessage,
    craStartedOn,
    craLogStream,

    -- ** Crawler
    Crawler,
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

    -- ** CrawlerMetrics
    CrawlerMetrics,
    crawlerMetrics,
    cmCrawlerName,
    cmTablesDeleted,
    cmTablesUpdated,
    cmTablesCreated,
    cmMedianRuntimeSeconds,
    cmStillEstimating,
    cmTimeLeftSeconds,
    cmLastRuntimeSeconds,

    -- ** CrawlerNodeDetails
    CrawlerNodeDetails,
    crawlerNodeDetails,
    cndCrawls,

    -- ** CrawlerTargets
    CrawlerTargets,
    crawlerTargets,
    ctCatalogTargets,
    ctMongoDBTargets,
    ctDynamoDBTargets,
    ctJdbcTargets,
    ctS3Targets,

    -- ** CreateCSVClassifierRequest
    CreateCSVClassifierRequest,
    createCSVClassifierRequest,
    cccrContainsHeader,
    cccrDelimiter,
    cccrDisableValueTrimming,
    cccrHeader,
    cccrQuoteSymbol,
    cccrAllowSingleColumn,
    cccrName,

    -- ** CreateGrokClassifierRequest
    CreateGrokClassifierRequest,
    createGrokClassifierRequest,
    cgcrCustomPatterns,
    cgcrClassification,
    cgcrName,
    cgcrGrokPattern,

    -- ** CreateJSONClassifierRequest
    CreateJSONClassifierRequest,
    createJSONClassifierRequest,
    cjcrName,
    cjcrJSONPath,

    -- ** CreateXMLClassifierRequest
    CreateXMLClassifierRequest,
    createXMLClassifierRequest,
    cxcrRowTag,
    cxcrClassification,
    cxcrName,

    -- ** DataCatalogEncryptionSettings
    DataCatalogEncryptionSettings,
    dataCatalogEncryptionSettings,
    dcesEncryptionAtRest,
    dcesConnectionPasswordEncryption,

    -- ** DataLakePrincipal
    DataLakePrincipal,
    dataLakePrincipal,
    dlpDataLakePrincipalIdentifier,

    -- ** Database
    Database,
    database,
    dCreateTableDefaultPermissions,
    dCatalogId,
    dTargetDatabase,
    dCreateTime,
    dDescription,
    dLocationURI,
    dParameters,
    dName,

    -- ** DatabaseIdentifier
    DatabaseIdentifier,
    databaseIdentifier,
    diCatalogId,
    diDatabaseName,

    -- ** DatabaseInput
    DatabaseInput,
    databaseInput,
    diCreateTableDefaultPermissions,
    diTargetDatabase,
    diDescription,
    diLocationURI,
    diParameters,
    diName,

    -- ** DateColumnStatisticsData
    DateColumnStatisticsData,
    dateColumnStatisticsData,
    dcsdMaximumValue,
    dcsdMinimumValue,
    dcsdNumberOfNulls,
    dcsdNumberOfDistinctValues,

    -- ** DecimalColumnStatisticsData
    DecimalColumnStatisticsData,
    decimalColumnStatisticsData,
    decMaximumValue,
    decMinimumValue,
    decNumberOfNulls,
    decNumberOfDistinctValues,

    -- ** DecimalNumber
    DecimalNumber,
    decimalNumber,
    dnUnscaledValue,
    dnScale,

    -- ** DevEndpoint
    DevEndpoint,
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

    -- ** DevEndpointCustomLibraries
    DevEndpointCustomLibraries,
    devEndpointCustomLibraries,
    declExtraPythonLibsS3Path,
    declExtraJARsS3Path,

    -- ** DoubleColumnStatisticsData
    DoubleColumnStatisticsData,
    doubleColumnStatisticsData,
    dMaximumValue,
    dMinimumValue,
    dNumberOfNulls,
    dNumberOfDistinctValues,

    -- ** DynamoDBTarget
    DynamoDBTarget,
    dynamoDBTarget,
    ddtScanAll,
    ddtScanRate,
    ddtPath,

    -- ** Edge
    Edge,
    edge,
    eDestinationId,
    eSourceId,

    -- ** EncryptionAtRest
    EncryptionAtRest,
    encryptionAtRest,
    earSseAWSKMSKeyId,
    earCatalogEncryptionMode,

    -- ** EncryptionConfiguration
    EncryptionConfiguration,
    encryptionConfiguration,
    ecJobBookmarksEncryption,
    ecS3Encryption,
    ecCloudWatchEncryption,

    -- ** ErrorDetail
    ErrorDetail,
    errorDetail,
    edErrorMessage,
    edErrorCode,

    -- ** ErrorDetails
    ErrorDetails,
    errorDetails,
    eErrorMessage,
    eErrorCode,

    -- ** EvaluationMetrics
    EvaluationMetrics,
    evaluationMetrics,
    emFindMatchesMetrics,
    emTransformType,

    -- ** ExecutionProperty
    ExecutionProperty,
    executionProperty,
    epMaxConcurrentRuns,

    -- ** ExportLabelsTaskRunProperties
    ExportLabelsTaskRunProperties,
    exportLabelsTaskRunProperties,
    eltrpOutputS3Path,

    -- ** FindMatchesMetrics
    FindMatchesMetrics,
    findMatchesMetrics,
    fmmF1,
    fmmConfusionMatrix,
    fmmColumnImportances,
    fmmPrecision,
    fmmAreaUnderPRCurve,
    fmmRecall,

    -- ** FindMatchesParameters
    FindMatchesParameters,
    findMatchesParameters,
    fmpAccuracyCostTradeoff,
    fmpEnforceProvidedLabels,
    fmpPrecisionRecallTradeoff,
    fmpPrimaryKeyColumnName,

    -- ** FindMatchesTaskRunProperties
    FindMatchesTaskRunProperties,
    findMatchesTaskRunProperties,
    fmtrpJobRunId,
    fmtrpJobName,
    fmtrpJobId,

    -- ** GetConnectionsFilter
    GetConnectionsFilter,
    getConnectionsFilter,
    gcfConnectionType,
    gcfMatchCriteria,

    -- ** GluePolicy
    GluePolicy,
    gluePolicy,
    gpPolicyInJSON,
    gpUpdateTime,
    gpCreateTime,
    gpPolicyHash,

    -- ** GlueTable
    GlueTable,
    glueTable,
    gtConnectionName,
    gtCatalogId,
    gtDatabaseName,
    gtTableName,

    -- ** GrokClassifier
    GrokClassifier,
    grokClassifier,
    gcCreationTime,
    gcVersion,
    gcLastUpdated,
    gcCustomPatterns,
    gcName,
    gcClassification,
    gcGrokPattern,

    -- ** ImportLabelsTaskRunProperties
    ImportLabelsTaskRunProperties,
    importLabelsTaskRunProperties,
    iltrpReplace,
    iltrpInputS3Path,

    -- ** JSONClassifier
    JSONClassifier,
    jsonClassifier,
    jsoncCreationTime,
    jsoncVersion,
    jsoncLastUpdated,
    jsoncName,
    jsoncJSONPath,

    -- ** JdbcTarget
    JdbcTarget,
    jdbcTarget,
    jtConnectionName,
    jtExclusions,
    jtPath,

    -- ** Job
    Job,
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

    -- ** JobBookmarkEntry
    JobBookmarkEntry,
    jobBookmarkEntry,
    jbeRunId,
    jbeJobBookmark,
    jbeVersion,
    jbeRun,
    jbeJobName,
    jbePreviousRunId,
    jbeAttempt,

    -- ** JobBookmarksEncryption
    JobBookmarksEncryption,
    jobBookmarksEncryption,
    jbeJobBookmarksEncryptionMode,
    jbeKMSKeyARN,

    -- ** JobCommand
    JobCommand,
    jobCommand,
    jcPythonVersion,
    jcScriptLocation,
    jcName,

    -- ** JobNodeDetails
    JobNodeDetails,
    jobNodeDetails,
    jndJobRuns,

    -- ** JobRun
    JobRun,
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

    -- ** JobUpdate
    JobUpdate,
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

    -- ** KeySchemaElement
    KeySchemaElement,
    keySchemaElement,
    kseName,
    kseType,

    -- ** LabelingSetGenerationTaskRunProperties
    LabelingSetGenerationTaskRunProperties,
    labelingSetGenerationTaskRunProperties,
    lsgtrpOutputS3Path,

    -- ** LastCrawlInfo
    LastCrawlInfo,
    lastCrawlInfo,
    lciStatus,
    lciMessagePrefix,
    lciLogGroup,
    lciStartTime,
    lciErrorMessage,
    lciLogStream,

    -- ** LineageConfiguration
    LineageConfiguration,
    lineageConfiguration,
    lcCrawlerLineageSettings,

    -- ** Location
    Location,
    location,
    lJdbc,
    lDynamoDB,
    lS3,

    -- ** LongColumnStatisticsData
    LongColumnStatisticsData,
    longColumnStatisticsData,
    lcsdMaximumValue,
    lcsdMinimumValue,
    lcsdNumberOfNulls,
    lcsdNumberOfDistinctValues,

    -- ** MLTransform
    MLTransform,
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

    -- ** MLUserDataEncryption
    MLUserDataEncryption,
    mLUserDataEncryption,
    mludeKMSKeyId,
    mludeMlUserDataEncryptionMode,

    -- ** MappingEntry
    MappingEntry,
    mappingEntry,
    meTargetType,
    meTargetTable,
    meTargetPath,
    meSourceTable,
    meSourcePath,
    meSourceType,

    -- ** MetadataInfo
    MetadataInfo,
    metadataInfo,
    miCreatedTime,
    miMetadataValue,

    -- ** MetadataKeyValuePair
    MetadataKeyValuePair,
    metadataKeyValuePair,
    mkvpMetadataKey,
    mkvpMetadataValue,

    -- ** MongoDBTarget
    MongoDBTarget,
    mongoDBTarget,
    mdtConnectionName,
    mdtScanAll,
    mdtPath,

    -- ** Node
    Node,
    node,
    nJobDetails,
    nTriggerDetails,
    nName,
    nUniqueId,
    nCrawlerDetails,
    nType,

    -- ** NotificationProperty
    NotificationProperty,
    notificationProperty,
    npNotifyDelayAfter,

    -- ** Order
    Order,
    order,
    oColumn,
    oSortOrder,

    -- ** Partition
    Partition,
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

    -- ** PartitionError
    PartitionError,
    partitionError,
    peErrorDetail,
    pePartitionValues,

    -- ** PartitionIndex
    PartitionIndex,
    partitionIndex,
    piKeys,
    piIndexName,

    -- ** PartitionIndexDescriptor
    PartitionIndexDescriptor,
    partitionIndexDescriptor,
    pidBackfillErrors,
    pidIndexName,
    pidKeys,
    pidIndexStatus,

    -- ** PartitionInput
    PartitionInput,
    partitionInput,
    piValues,
    piStorageDescriptor,
    piLastAnalyzedTime,
    piLastAccessTime,
    piParameters,

    -- ** PartitionValueList
    PartitionValueList,
    partitionValueList,
    pvlValues,

    -- ** PhysicalConnectionRequirements
    PhysicalConnectionRequirements,
    physicalConnectionRequirements,
    pcrSecurityGroupIdList,
    pcrAvailabilityZone,
    pcrSubnetId,

    -- ** Predecessor
    Predecessor,
    predecessor,
    pRunId,
    pJobName,

    -- ** Predicate
    Predicate,
    predicate,
    pLogical,
    pConditions,

    -- ** PrincipalPermissions
    PrincipalPermissions,
    principalPermissions,
    ppPermissions,
    ppPrincipal,

    -- ** PropertyPredicate
    PropertyPredicate,
    propertyPredicate,
    ppKey,
    ppValue,
    ppComparator,

    -- ** RecrawlPolicy
    RecrawlPolicy,
    recrawlPolicy,
    rpRecrawlBehavior,

    -- ** RegistryId
    RegistryId,
    registryId,
    riRegistryName,
    riRegistryARN,

    -- ** RegistryListItem
    RegistryListItem,
    registryListItem,
    rliStatus,
    rliUpdatedTime,
    rliCreatedTime,
    rliRegistryName,
    rliDescription,
    rliRegistryARN,

    -- ** ResourceURI
    ResourceURI,
    resourceURI,
    ruURI,
    ruResourceType,

    -- ** S3Encryption
    S3Encryption,
    s3Encryption,
    seS3EncryptionMode,
    seKMSKeyARN,

    -- ** S3Target
    S3Target,
    s3Target,
    stConnectionName,
    stExclusions,
    stPath,

    -- ** Schedule
    Schedule,
    schedule,
    sState,
    sScheduleExpression,

    -- ** SchemaChangePolicy
    SchemaChangePolicy,
    schemaChangePolicy,
    scpUpdateBehavior,
    scpDeleteBehavior,

    -- ** SchemaColumn
    SchemaColumn,
    schemaColumn,
    scName,
    scDataType,

    -- ** SchemaId
    SchemaId,
    schemaId,
    siSchemaARN,
    siRegistryName,
    siSchemaName,

    -- ** SchemaListItem
    SchemaListItem,
    schemaListItem,
    sliSchemaARN,
    sliUpdatedTime,
    sliCreatedTime,
    sliRegistryName,
    sliSchemaName,
    sliDescription,
    sliSchemaStatus,

    -- ** SchemaReference
    SchemaReference,
    schemaReference,
    srSchemaVersionId,
    srSchemaVersionNumber,
    srSchemaId,

    -- ** SchemaVersionErrorItem
    SchemaVersionErrorItem,
    schemaVersionErrorItem,
    sveiVersionNumber,
    sveiErrorDetails,

    -- ** SchemaVersionListItem
    SchemaVersionListItem,
    schemaVersionListItem,
    svliSchemaARN,
    svliStatus,
    svliSchemaVersionId,
    svliCreatedTime,
    svliVersionNumber,

    -- ** SchemaVersionNumber
    SchemaVersionNumber,
    schemaVersionNumber,
    svnLatestVersion,
    svnVersionNumber,

    -- ** SecurityConfiguration
    SecurityConfiguration,
    securityConfiguration,
    secEncryptionConfiguration,
    secCreatedTimeStamp,
    secName,

    -- ** Segment
    Segment,
    segment,
    sSegmentNumber,
    sTotalSegments,

    -- ** SerDeInfo
    SerDeInfo,
    serDeInfo,
    sdiSerializationLibrary,
    sdiName,
    sdiParameters,

    -- ** SkewedInfo
    SkewedInfo,
    skewedInfo,
    siSkewedColumnNames,
    siSkewedColumnValues,
    siSkewedColumnValueLocationMaps,

    -- ** SortCriterion
    SortCriterion,
    sortCriterion,
    scFieldName,
    scSort,

    -- ** StorageDescriptor
    StorageDescriptor,
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

    -- ** StringColumnStatisticsData
    StringColumnStatisticsData,
    stringColumnStatisticsData,
    scsdMaximumLength,
    scsdAverageLength,
    scsdNumberOfNulls,
    scsdNumberOfDistinctValues,

    -- ** Table
    Table,
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

    -- ** TableError
    TableError,
    tableError,
    teTableName,
    teErrorDetail,

    -- ** TableIdentifier
    TableIdentifier,
    tableIdentifier,
    tiCatalogId,
    tiName,
    tiDatabaseName,

    -- ** TableInput
    TableInput,
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

    -- ** TableVersion
    TableVersion,
    tableVersion,
    tvVersionId,
    tvTable,

    -- ** TableVersionError
    TableVersionError,
    tableVersionError,
    tveTableName,
    tveErrorDetail,
    tveVersionId,

    -- ** TaskRun
    TaskRun,
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

    -- ** TaskRunFilterCriteria
    TaskRunFilterCriteria,
    taskRunFilterCriteria,
    trfcStatus,
    trfcTaskRunType,
    trfcStartedBefore,
    trfcStartedAfter,

    -- ** TaskRunProperties
    TaskRunProperties,
    taskRunProperties,
    trpExportLabelsTaskRunProperties,
    trpFindMatchesTaskRunProperties,
    trpLabelingSetGenerationTaskRunProperties,
    trpTaskType,
    trpImportLabelsTaskRunProperties,

    -- ** TaskRunSortCriteria
    TaskRunSortCriteria,
    taskRunSortCriteria,
    trscColumn,
    trscSortDirection,

    -- ** TransformEncryption
    TransformEncryption,
    transformEncryption,
    teMlUserDataEncryption,
    teTaskRunSecurityConfigurationName,

    -- ** TransformFilterCriteria
    TransformFilterCriteria,
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

    -- ** TransformParameters
    TransformParameters,
    transformParameters,
    tpFindMatchesParameters,
    tpTransformType,

    -- ** TransformSortCriteria
    TransformSortCriteria,
    transformSortCriteria,
    tscColumn,
    tscSortDirection,

    -- ** Trigger
    Trigger,
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

    -- ** TriggerNodeDetails
    TriggerNodeDetails,
    triggerNodeDetails,
    tndTrigger,

    -- ** TriggerUpdate
    TriggerUpdate,
    triggerUpdate,
    tuActions,
    tuName,
    tuPredicate,
    tuDescription,
    tuSchedule,

    -- ** UpdateCSVClassifierRequest
    UpdateCSVClassifierRequest,
    updateCSVClassifierRequest,
    uccrContainsHeader,
    uccrDelimiter,
    uccrDisableValueTrimming,
    uccrHeader,
    uccrQuoteSymbol,
    uccrAllowSingleColumn,
    uccrName,

    -- ** UpdateGrokClassifierRequest
    UpdateGrokClassifierRequest,
    updateGrokClassifierRequest,
    ugcrGrokPattern,
    ugcrClassification,
    ugcrCustomPatterns,
    ugcrName,

    -- ** UpdateJSONClassifierRequest
    UpdateJSONClassifierRequest,
    updateJSONClassifierRequest,
    ujcrJSONPath,
    ujcrName,

    -- ** UpdateXMLClassifierRequest
    UpdateXMLClassifierRequest,
    updateXMLClassifierRequest,
    uxcrClassification,
    uxcrRowTag,
    uxcrName,

    -- ** UserDefinedFunction
    UserDefinedFunction,
    userDefinedFunction,
    udfOwnerType,
    udfClassName,
    udfCatalogId,
    udfOwnerName,
    udfFunctionName,
    udfResourceURIs,
    udfCreateTime,
    udfDatabaseName,

    -- ** UserDefinedFunctionInput
    UserDefinedFunctionInput,
    userDefinedFunctionInput,
    udfiOwnerType,
    udfiClassName,
    udfiOwnerName,
    udfiFunctionName,
    udfiResourceURIs,

    -- ** Workflow
    Workflow,
    workflow,
    wCreatedOn,
    wDefaultRunProperties,
    wLastRun,
    wMaxConcurrentRuns,
    wLastModifiedOn,
    wName,
    wGraph,
    wDescription,

    -- ** WorkflowGraph
    WorkflowGraph,
    workflowGraph,
    wgNodes,
    wgEdges,

    -- ** WorkflowRun
    WorkflowRun,
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

    -- ** WorkflowRunStatistics
    WorkflowRunStatistics,
    workflowRunStatistics,
    wrsTimeoutActions,
    wrsSucceededActions,
    wrsRunningActions,
    wrsTotalActions,
    wrsStoppedActions,
    wrsFailedActions,

    -- ** XMLClassifier
    XMLClassifier,
    xmlClassifier,
    xcCreationTime,
    xcVersion,
    xcLastUpdated,
    xcRowTag,
    xcName,
    xcClassification,
  )
where

import Network.AWS.Glue.BatchCreatePartition
import Network.AWS.Glue.BatchDeleteConnection
import Network.AWS.Glue.BatchDeletePartition
import Network.AWS.Glue.BatchDeleteTable
import Network.AWS.Glue.BatchDeleteTableVersion
import Network.AWS.Glue.BatchGetCrawlers
import Network.AWS.Glue.BatchGetDevEndpoints
import Network.AWS.Glue.BatchGetJobs
import Network.AWS.Glue.BatchGetPartition
import Network.AWS.Glue.BatchGetTriggers
import Network.AWS.Glue.BatchGetWorkflows
import Network.AWS.Glue.BatchStopJobRun
import Network.AWS.Glue.BatchUpdatePartition
import Network.AWS.Glue.CancelMLTaskRun
import Network.AWS.Glue.CheckSchemaVersionValidity
import Network.AWS.Glue.CreateClassifier
import Network.AWS.Glue.CreateConnection
import Network.AWS.Glue.CreateCrawler
import Network.AWS.Glue.CreateDatabase
import Network.AWS.Glue.CreateDevEndpoint
import Network.AWS.Glue.CreateJob
import Network.AWS.Glue.CreateMLTransform
import Network.AWS.Glue.CreatePartition
import Network.AWS.Glue.CreatePartitionIndex
import Network.AWS.Glue.CreateRegistry
import Network.AWS.Glue.CreateSchema
import Network.AWS.Glue.CreateScript
import Network.AWS.Glue.CreateSecurityConfiguration
import Network.AWS.Glue.CreateTable
import Network.AWS.Glue.CreateTrigger
import Network.AWS.Glue.CreateUserDefinedFunction
import Network.AWS.Glue.CreateWorkflow
import Network.AWS.Glue.DeleteClassifier
import Network.AWS.Glue.DeleteColumnStatisticsForPartition
import Network.AWS.Glue.DeleteColumnStatisticsForTable
import Network.AWS.Glue.DeleteConnection
import Network.AWS.Glue.DeleteCrawler
import Network.AWS.Glue.DeleteDatabase
import Network.AWS.Glue.DeleteDevEndpoint
import Network.AWS.Glue.DeleteJob
import Network.AWS.Glue.DeleteMLTransform
import Network.AWS.Glue.DeletePartition
import Network.AWS.Glue.DeletePartitionIndex
import Network.AWS.Glue.DeleteRegistry
import Network.AWS.Glue.DeleteResourcePolicy
import Network.AWS.Glue.DeleteSchema
import Network.AWS.Glue.DeleteSchemaVersions
import Network.AWS.Glue.DeleteSecurityConfiguration
import Network.AWS.Glue.DeleteTable
import Network.AWS.Glue.DeleteTableVersion
import Network.AWS.Glue.DeleteTrigger
import Network.AWS.Glue.DeleteUserDefinedFunction
import Network.AWS.Glue.DeleteWorkflow
import Network.AWS.Glue.GetCatalogImportStatus
import Network.AWS.Glue.GetClassifier
import Network.AWS.Glue.GetClassifiers
import Network.AWS.Glue.GetColumnStatisticsForPartition
import Network.AWS.Glue.GetColumnStatisticsForTable
import Network.AWS.Glue.GetConnection
import Network.AWS.Glue.GetConnections
import Network.AWS.Glue.GetCrawler
import Network.AWS.Glue.GetCrawlerMetrics
import Network.AWS.Glue.GetCrawlers
import Network.AWS.Glue.GetDataCatalogEncryptionSettings
import Network.AWS.Glue.GetDatabase
import Network.AWS.Glue.GetDatabases
import Network.AWS.Glue.GetDataflowGraph
import Network.AWS.Glue.GetDevEndpoint
import Network.AWS.Glue.GetDevEndpoints
import Network.AWS.Glue.GetJob
import Network.AWS.Glue.GetJobBookmark
import Network.AWS.Glue.GetJobRun
import Network.AWS.Glue.GetJobRuns
import Network.AWS.Glue.GetJobs
import Network.AWS.Glue.GetMLTaskRun
import Network.AWS.Glue.GetMLTaskRuns
import Network.AWS.Glue.GetMLTransform
import Network.AWS.Glue.GetMLTransforms
import Network.AWS.Glue.GetMapping
import Network.AWS.Glue.GetPartition
import Network.AWS.Glue.GetPartitionIndexes
import Network.AWS.Glue.GetPartitions
import Network.AWS.Glue.GetPlan
import Network.AWS.Glue.GetRegistry
import Network.AWS.Glue.GetResourcePolicies
import Network.AWS.Glue.GetResourcePolicy
import Network.AWS.Glue.GetSchema
import Network.AWS.Glue.GetSchemaByDefinition
import Network.AWS.Glue.GetSchemaVersion
import Network.AWS.Glue.GetSchemaVersionsDiff
import Network.AWS.Glue.GetSecurityConfiguration
import Network.AWS.Glue.GetSecurityConfigurations
import Network.AWS.Glue.GetTable
import Network.AWS.Glue.GetTableVersion
import Network.AWS.Glue.GetTableVersions
import Network.AWS.Glue.GetTables
import Network.AWS.Glue.GetTags
import Network.AWS.Glue.GetTrigger
import Network.AWS.Glue.GetTriggers
import Network.AWS.Glue.GetUserDefinedFunction
import Network.AWS.Glue.GetUserDefinedFunctions
import Network.AWS.Glue.GetWorkflow
import Network.AWS.Glue.GetWorkflowRun
import Network.AWS.Glue.GetWorkflowRunProperties
import Network.AWS.Glue.GetWorkflowRuns
import Network.AWS.Glue.ImportCatalogToGlue
import Network.AWS.Glue.ListCrawlers
import Network.AWS.Glue.ListDevEndpoints
import Network.AWS.Glue.ListJobs
import Network.AWS.Glue.ListMLTransforms
import Network.AWS.Glue.ListRegistries
import Network.AWS.Glue.ListSchemaVersions
import Network.AWS.Glue.ListSchemas
import Network.AWS.Glue.ListTriggers
import Network.AWS.Glue.ListWorkflows
import Network.AWS.Glue.PutDataCatalogEncryptionSettings
import Network.AWS.Glue.PutResourcePolicy
import Network.AWS.Glue.PutSchemaVersionMetadata
import Network.AWS.Glue.PutWorkflowRunProperties
import Network.AWS.Glue.QuerySchemaVersionMetadata
import Network.AWS.Glue.RegisterSchemaVersion
import Network.AWS.Glue.RemoveSchemaVersionMetadata
import Network.AWS.Glue.ResetJobBookmark
import Network.AWS.Glue.ResumeWorkflowRun
import Network.AWS.Glue.SearchTables
import Network.AWS.Glue.StartCrawler
import Network.AWS.Glue.StartCrawlerSchedule
import Network.AWS.Glue.StartExportLabelsTaskRun
import Network.AWS.Glue.StartImportLabelsTaskRun
import Network.AWS.Glue.StartJobRun
import Network.AWS.Glue.StartMLEvaluationTaskRun
import Network.AWS.Glue.StartMLLabelingSetGenerationTaskRun
import Network.AWS.Glue.StartTrigger
import Network.AWS.Glue.StartWorkflowRun
import Network.AWS.Glue.StopCrawler
import Network.AWS.Glue.StopCrawlerSchedule
import Network.AWS.Glue.StopTrigger
import Network.AWS.Glue.StopWorkflowRun
import Network.AWS.Glue.TagResource
import Network.AWS.Glue.Types
import Network.AWS.Glue.UntagResource
import Network.AWS.Glue.UpdateClassifier
import Network.AWS.Glue.UpdateColumnStatisticsForPartition
import Network.AWS.Glue.UpdateColumnStatisticsForTable
import Network.AWS.Glue.UpdateConnection
import Network.AWS.Glue.UpdateCrawler
import Network.AWS.Glue.UpdateCrawlerSchedule
import Network.AWS.Glue.UpdateDatabase
import Network.AWS.Glue.UpdateDevEndpoint
import Network.AWS.Glue.UpdateJob
import Network.AWS.Glue.UpdateMLTransform
import Network.AWS.Glue.UpdatePartition
import Network.AWS.Glue.UpdateRegistry
import Network.AWS.Glue.UpdateSchema
import Network.AWS.Glue.UpdateTable
import Network.AWS.Glue.UpdateTrigger
import Network.AWS.Glue.UpdateUserDefinedFunction
import Network.AWS.Glue.UpdateWorkflow
import Network.AWS.Glue.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Glue'.

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
