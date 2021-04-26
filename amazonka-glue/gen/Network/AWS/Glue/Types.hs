{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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

    -- * CsvHeaderOption
    CsvHeaderOption (..),

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
    newAction,

    -- * BackfillError
    BackfillError (..),
    newBackfillError,

    -- * BatchStopJobRunError
    BatchStopJobRunError (..),
    newBatchStopJobRunError,

    -- * BatchStopJobRunSuccessfulSubmission
    BatchStopJobRunSuccessfulSubmission (..),
    newBatchStopJobRunSuccessfulSubmission,

    -- * BatchUpdatePartitionFailureEntry
    BatchUpdatePartitionFailureEntry (..),
    newBatchUpdatePartitionFailureEntry,

    -- * BatchUpdatePartitionRequestEntry
    BatchUpdatePartitionRequestEntry (..),
    newBatchUpdatePartitionRequestEntry,

    -- * BinaryColumnStatisticsData
    BinaryColumnStatisticsData (..),
    newBinaryColumnStatisticsData,

    -- * BooleanColumnStatisticsData
    BooleanColumnStatisticsData (..),
    newBooleanColumnStatisticsData,

    -- * CatalogEntry
    CatalogEntry (..),
    newCatalogEntry,

    -- * CatalogImportStatus
    CatalogImportStatus (..),
    newCatalogImportStatus,

    -- * CatalogTarget
    CatalogTarget (..),
    newCatalogTarget,

    -- * Classifier
    Classifier (..),
    newClassifier,

    -- * CloudWatchEncryption
    CloudWatchEncryption (..),
    newCloudWatchEncryption,

    -- * CodeGenEdge
    CodeGenEdge (..),
    newCodeGenEdge,

    -- * CodeGenNode
    CodeGenNode (..),
    newCodeGenNode,

    -- * CodeGenNodeArg
    CodeGenNodeArg (..),
    newCodeGenNodeArg,

    -- * Column
    Column (..),
    newColumn,

    -- * ColumnError
    ColumnError (..),
    newColumnError,

    -- * ColumnImportance
    ColumnImportance (..),
    newColumnImportance,

    -- * ColumnStatistics
    ColumnStatistics (..),
    newColumnStatistics,

    -- * ColumnStatisticsData
    ColumnStatisticsData (..),
    newColumnStatisticsData,

    -- * ColumnStatisticsError
    ColumnStatisticsError (..),
    newColumnStatisticsError,

    -- * Condition
    Condition (..),
    newCondition,

    -- * ConfusionMatrix
    ConfusionMatrix (..),
    newConfusionMatrix,

    -- * Connection
    Connection (..),
    newConnection,

    -- * ConnectionInput
    ConnectionInput (..),
    newConnectionInput,

    -- * ConnectionPasswordEncryption
    ConnectionPasswordEncryption (..),
    newConnectionPasswordEncryption,

    -- * ConnectionsList
    ConnectionsList (..),
    newConnectionsList,

    -- * Crawl
    Crawl (..),
    newCrawl,

    -- * Crawler
    Crawler (..),
    newCrawler,

    -- * CrawlerMetrics
    CrawlerMetrics (..),
    newCrawlerMetrics,

    -- * CrawlerNodeDetails
    CrawlerNodeDetails (..),
    newCrawlerNodeDetails,

    -- * CrawlerTargets
    CrawlerTargets (..),
    newCrawlerTargets,

    -- * CreateCsvClassifierRequest
    CreateCsvClassifierRequest (..),
    newCreateCsvClassifierRequest,

    -- * CreateGrokClassifierRequest
    CreateGrokClassifierRequest (..),
    newCreateGrokClassifierRequest,

    -- * CreateJsonClassifierRequest
    CreateJsonClassifierRequest (..),
    newCreateJsonClassifierRequest,

    -- * CreateXMLClassifierRequest
    CreateXMLClassifierRequest (..),
    newCreateXMLClassifierRequest,

    -- * CsvClassifier
    CsvClassifier (..),
    newCsvClassifier,

    -- * DataCatalogEncryptionSettings
    DataCatalogEncryptionSettings (..),
    newDataCatalogEncryptionSettings,

    -- * DataLakePrincipal
    DataLakePrincipal (..),
    newDataLakePrincipal,

    -- * Database
    Database (..),
    newDatabase,

    -- * DatabaseIdentifier
    DatabaseIdentifier (..),
    newDatabaseIdentifier,

    -- * DatabaseInput
    DatabaseInput (..),
    newDatabaseInput,

    -- * DateColumnStatisticsData
    DateColumnStatisticsData (..),
    newDateColumnStatisticsData,

    -- * DecimalColumnStatisticsData
    DecimalColumnStatisticsData (..),
    newDecimalColumnStatisticsData,

    -- * DecimalNumber
    DecimalNumber (..),
    newDecimalNumber,

    -- * DevEndpoint
    DevEndpoint (..),
    newDevEndpoint,

    -- * DevEndpointCustomLibraries
    DevEndpointCustomLibraries (..),
    newDevEndpointCustomLibraries,

    -- * DoubleColumnStatisticsData
    DoubleColumnStatisticsData (..),
    newDoubleColumnStatisticsData,

    -- * DynamoDBTarget
    DynamoDBTarget (..),
    newDynamoDBTarget,

    -- * Edge
    Edge (..),
    newEdge,

    -- * EncryptionAtRest
    EncryptionAtRest (..),
    newEncryptionAtRest,

    -- * EncryptionConfiguration
    EncryptionConfiguration (..),
    newEncryptionConfiguration,

    -- * ErrorDetail
    ErrorDetail (..),
    newErrorDetail,

    -- * ErrorDetails
    ErrorDetails (..),
    newErrorDetails,

    -- * EvaluationMetrics
    EvaluationMetrics (..),
    newEvaluationMetrics,

    -- * ExecutionProperty
    ExecutionProperty (..),
    newExecutionProperty,

    -- * ExportLabelsTaskRunProperties
    ExportLabelsTaskRunProperties (..),
    newExportLabelsTaskRunProperties,

    -- * FindMatchesMetrics
    FindMatchesMetrics (..),
    newFindMatchesMetrics,

    -- * FindMatchesParameters
    FindMatchesParameters (..),
    newFindMatchesParameters,

    -- * FindMatchesTaskRunProperties
    FindMatchesTaskRunProperties (..),
    newFindMatchesTaskRunProperties,

    -- * GetConnectionsFilter
    GetConnectionsFilter (..),
    newGetConnectionsFilter,

    -- * GluePolicy
    GluePolicy (..),
    newGluePolicy,

    -- * GlueTable
    GlueTable (..),
    newGlueTable,

    -- * GrokClassifier
    GrokClassifier (..),
    newGrokClassifier,

    -- * ImportLabelsTaskRunProperties
    ImportLabelsTaskRunProperties (..),
    newImportLabelsTaskRunProperties,

    -- * JdbcTarget
    JdbcTarget (..),
    newJdbcTarget,

    -- * Job
    Job (..),
    newJob,

    -- * JobBookmarkEntry
    JobBookmarkEntry (..),
    newJobBookmarkEntry,

    -- * JobBookmarksEncryption
    JobBookmarksEncryption (..),
    newJobBookmarksEncryption,

    -- * JobCommand
    JobCommand (..),
    newJobCommand,

    -- * JobNodeDetails
    JobNodeDetails (..),
    newJobNodeDetails,

    -- * JobRun
    JobRun (..),
    newJobRun,

    -- * JobUpdate
    JobUpdate (..),
    newJobUpdate,

    -- * JsonClassifier
    JsonClassifier (..),
    newJsonClassifier,

    -- * KeySchemaElement
    KeySchemaElement (..),
    newKeySchemaElement,

    -- * LabelingSetGenerationTaskRunProperties
    LabelingSetGenerationTaskRunProperties (..),
    newLabelingSetGenerationTaskRunProperties,

    -- * LastCrawlInfo
    LastCrawlInfo (..),
    newLastCrawlInfo,

    -- * LineageConfiguration
    LineageConfiguration (..),
    newLineageConfiguration,

    -- * Location
    Location (..),
    newLocation,

    -- * LongColumnStatisticsData
    LongColumnStatisticsData (..),
    newLongColumnStatisticsData,

    -- * MLTransform
    MLTransform (..),
    newMLTransform,

    -- * MLUserDataEncryption
    MLUserDataEncryption (..),
    newMLUserDataEncryption,

    -- * MappingEntry
    MappingEntry (..),
    newMappingEntry,

    -- * MetadataInfo
    MetadataInfo (..),
    newMetadataInfo,

    -- * MetadataKeyValuePair
    MetadataKeyValuePair (..),
    newMetadataKeyValuePair,

    -- * MongoDBTarget
    MongoDBTarget (..),
    newMongoDBTarget,

    -- * Node
    Node (..),
    newNode,

    -- * NotificationProperty
    NotificationProperty (..),
    newNotificationProperty,

    -- * Order
    Order (..),
    newOrder,

    -- * Partition
    Partition (..),
    newPartition,

    -- * PartitionError
    PartitionError (..),
    newPartitionError,

    -- * PartitionIndex
    PartitionIndex (..),
    newPartitionIndex,

    -- * PartitionIndexDescriptor
    PartitionIndexDescriptor (..),
    newPartitionIndexDescriptor,

    -- * PartitionInput
    PartitionInput (..),
    newPartitionInput,

    -- * PartitionValueList
    PartitionValueList (..),
    newPartitionValueList,

    -- * PhysicalConnectionRequirements
    PhysicalConnectionRequirements (..),
    newPhysicalConnectionRequirements,

    -- * Predecessor
    Predecessor (..),
    newPredecessor,

    -- * Predicate
    Predicate (..),
    newPredicate,

    -- * PrincipalPermissions
    PrincipalPermissions (..),
    newPrincipalPermissions,

    -- * PropertyPredicate
    PropertyPredicate (..),
    newPropertyPredicate,

    -- * RecrawlPolicy
    RecrawlPolicy (..),
    newRecrawlPolicy,

    -- * RegistryId
    RegistryId (..),
    newRegistryId,

    -- * RegistryListItem
    RegistryListItem (..),
    newRegistryListItem,

    -- * ResourceUri
    ResourceUri (..),
    newResourceUri,

    -- * S3Encryption
    S3Encryption (..),
    newS3Encryption,

    -- * S3Target
    S3Target (..),
    newS3Target,

    -- * Schedule
    Schedule (..),
    newSchedule,

    -- * SchemaChangePolicy
    SchemaChangePolicy (..),
    newSchemaChangePolicy,

    -- * SchemaColumn
    SchemaColumn (..),
    newSchemaColumn,

    -- * SchemaId
    SchemaId (..),
    newSchemaId,

    -- * SchemaListItem
    SchemaListItem (..),
    newSchemaListItem,

    -- * SchemaReference
    SchemaReference (..),
    newSchemaReference,

    -- * SchemaVersionErrorItem
    SchemaVersionErrorItem (..),
    newSchemaVersionErrorItem,

    -- * SchemaVersionListItem
    SchemaVersionListItem (..),
    newSchemaVersionListItem,

    -- * SchemaVersionNumber
    SchemaVersionNumber (..),
    newSchemaVersionNumber,

    -- * SecurityConfiguration
    SecurityConfiguration (..),
    newSecurityConfiguration,

    -- * Segment
    Segment (..),
    newSegment,

    -- * SerDeInfo
    SerDeInfo (..),
    newSerDeInfo,

    -- * SkewedInfo
    SkewedInfo (..),
    newSkewedInfo,

    -- * SortCriterion
    SortCriterion (..),
    newSortCriterion,

    -- * StorageDescriptor
    StorageDescriptor (..),
    newStorageDescriptor,

    -- * StringColumnStatisticsData
    StringColumnStatisticsData (..),
    newStringColumnStatisticsData,

    -- * Table
    Table (..),
    newTable,

    -- * TableError
    TableError (..),
    newTableError,

    -- * TableIdentifier
    TableIdentifier (..),
    newTableIdentifier,

    -- * TableInput
    TableInput (..),
    newTableInput,

    -- * TableVersion
    TableVersion (..),
    newTableVersion,

    -- * TableVersionError
    TableVersionError (..),
    newTableVersionError,

    -- * TaskRun
    TaskRun (..),
    newTaskRun,

    -- * TaskRunFilterCriteria
    TaskRunFilterCriteria (..),
    newTaskRunFilterCriteria,

    -- * TaskRunProperties
    TaskRunProperties (..),
    newTaskRunProperties,

    -- * TaskRunSortCriteria
    TaskRunSortCriteria (..),
    newTaskRunSortCriteria,

    -- * TransformEncryption
    TransformEncryption (..),
    newTransformEncryption,

    -- * TransformFilterCriteria
    TransformFilterCriteria (..),
    newTransformFilterCriteria,

    -- * TransformParameters
    TransformParameters (..),
    newTransformParameters,

    -- * TransformSortCriteria
    TransformSortCriteria (..),
    newTransformSortCriteria,

    -- * Trigger
    Trigger (..),
    newTrigger,

    -- * TriggerNodeDetails
    TriggerNodeDetails (..),
    newTriggerNodeDetails,

    -- * TriggerUpdate
    TriggerUpdate (..),
    newTriggerUpdate,

    -- * UpdateCsvClassifierRequest
    UpdateCsvClassifierRequest (..),
    newUpdateCsvClassifierRequest,

    -- * UpdateGrokClassifierRequest
    UpdateGrokClassifierRequest (..),
    newUpdateGrokClassifierRequest,

    -- * UpdateJsonClassifierRequest
    UpdateJsonClassifierRequest (..),
    newUpdateJsonClassifierRequest,

    -- * UpdateXMLClassifierRequest
    UpdateXMLClassifierRequest (..),
    newUpdateXMLClassifierRequest,

    -- * UserDefinedFunction
    UserDefinedFunction (..),
    newUserDefinedFunction,

    -- * UserDefinedFunctionInput
    UserDefinedFunctionInput (..),
    newUserDefinedFunctionInput,

    -- * Workflow
    Workflow (..),
    newWorkflow,

    -- * WorkflowGraph
    WorkflowGraph (..),
    newWorkflowGraph,

    -- * WorkflowRun
    WorkflowRun (..),
    newWorkflowRun,

    -- * WorkflowRunStatistics
    WorkflowRunStatistics (..),
    newWorkflowRunStatistics,

    -- * XMLClassifier
    XMLClassifier (..),
    newXMLClassifier,
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
import Network.AWS.Glue.Types.CreateCsvClassifierRequest
import Network.AWS.Glue.Types.CreateGrokClassifierRequest
import Network.AWS.Glue.Types.CreateJsonClassifierRequest
import Network.AWS.Glue.Types.CreateXMLClassifierRequest
import Network.AWS.Glue.Types.CsvClassifier
import Network.AWS.Glue.Types.CsvHeaderOption
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
import Network.AWS.Glue.Types.JsonClassifier
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
import Network.AWS.Glue.Types.ResourceUri
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
import Network.AWS.Glue.Types.UpdateCsvClassifierRequest
import Network.AWS.Glue.Types.UpdateGrokClassifierRequest
import Network.AWS.Glue.Types.UpdateJsonClassifierRequest
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-03-31@ of the Amazon Glue SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Glue",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "glue",
      Prelude._svcVersion = "2017-03-31",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseJSONError "Glue",
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

-- | A specified entity does not exist
_EntityNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_EntityNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "EntityNotFoundException"

-- | The specified crawler is not running.
_CrawlerNotRunningException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CrawlerNotRunningException =
  Prelude._MatchServiceError
    defaultService
    "CrawlerNotRunningException"

-- | There was a version conflict.
_VersionMismatchException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_VersionMismatchException =
  Prelude._MatchServiceError
    defaultService
    "VersionMismatchException"

-- | An encryption operation failed.
_GlueEncryptionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_GlueEncryptionException =
  Prelude._MatchServiceError
    defaultService
    "GlueEncryptionException"

-- | The input provided was not valid.
_InvalidInputException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInputException =
  Prelude._MatchServiceError
    defaultService
    "InvalidInputException"

-- | An internal service error occurred.
_InternalServiceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServiceException =
  Prelude._MatchServiceError
    defaultService
    "InternalServiceException"

-- | The workflow is in an invalid state to perform a requested operation.
_IllegalWorkflowStateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IllegalWorkflowStateException =
  Prelude._MatchServiceError
    defaultService
    "IllegalWorkflowStateException"

-- | Too many jobs are being run concurrently.
_ConcurrentRunsExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentRunsExceededException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentRunsExceededException"

-- | Two processes are trying to modify a resource simultaneously.
_ConcurrentModificationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentModificationException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentModificationException"

-- | A specified condition was not satisfied.
_ConditionCheckFailureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConditionCheckFailureException =
  Prelude._MatchServiceError
    defaultService
    "ConditionCheckFailureException"

-- | The specified scheduler is transitioning.
_SchedulerTransitioningException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SchedulerTransitioningException =
  Prelude._MatchServiceError
    defaultService
    "SchedulerTransitioningException"

-- | The specified scheduler is already running.
_SchedulerRunningException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SchedulerRunningException =
  Prelude._MatchServiceError
    defaultService
    "SchedulerRunningException"

-- | Access to a resource was denied.
_AccessDeniedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AccessDeniedException =
  Prelude._MatchServiceError
    defaultService
    "AccessDeniedException"

-- | A value could not be validated.
_ValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ValidationException =
  Prelude._MatchServiceError
    defaultService
    "ValidationException"

-- | The operation cannot be performed because the crawler is already
-- running.
_CrawlerRunningException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CrawlerRunningException =
  Prelude._MatchServiceError
    defaultService
    "CrawlerRunningException"

-- | The machine learning transform is not ready to run.
_MLTransformNotReadyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MLTransformNotReadyException =
  Prelude._MatchServiceError
    defaultService
    "MLTransformNotReadyException"

-- | The @CreatePartitions@ API was called on a table that has indexes
-- enabled.
_ConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictException =
  Prelude._MatchServiceError
    defaultService
    "ConflictException"

-- | A resource to be created or added already exists.
_AlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "AlreadyExistsException"

-- | The operation timed out.
_OperationTimeoutException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OperationTimeoutException =
  Prelude._MatchServiceError
    defaultService
    "OperationTimeoutException"

-- | The same unique identifier was associated with two different records.
_IdempotentParameterMismatchException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IdempotentParameterMismatchException =
  Prelude._MatchServiceError
    defaultService
    "IdempotentParameterMismatchException"

-- | The specified crawler is stopping.
_CrawlerStoppingException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CrawlerStoppingException =
  Prelude._MatchServiceError
    defaultService
    "CrawlerStoppingException"

-- | There is no applicable schedule.
_NoScheduleException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoScheduleException =
  Prelude._MatchServiceError
    defaultService
    "NoScheduleException"

-- | A resource numerical limit was exceeded.
_ResourceNumberLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNumberLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNumberLimitExceededException"

-- | The specified scheduler is not running.
_SchedulerNotRunningException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SchedulerNotRunningException =
  Prelude._MatchServiceError
    defaultService
    "SchedulerNotRunningException"
