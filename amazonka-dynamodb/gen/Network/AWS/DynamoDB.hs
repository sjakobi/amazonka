{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon DynamoDB__
--
-- Amazon DynamoDB is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability. DynamoDB lets you offload the administrative burdens of operating and scaling a distributed database, so that you don't have to worry about hardware provisioning, setup and configuration, replication, software patching, or cluster scaling.
--
-- With DynamoDB, you can create database tables that can store and retrieve any amount of data, and serve any level of request traffic. You can scale up or scale down your tables' throughput capacity without downtime or performance degradation, and use the AWS Management Console to monitor resource utilization and performance metrics.
--
-- DynamoDB automatically spreads the data and traffic for your tables over a sufficient number of servers to handle your throughput and storage requirements, while maintaining consistent and fast performance. All of your data is stored on solid state disks (SSDs) and automatically replicated across multiple Availability Zones in an AWS region, providing built-in high availability and data durability.
module Network.AWS.DynamoDB
  ( -- * Service Configuration
    dynamoDB,

    -- * Errors
    -- $errors

    -- ** InvalidExportTimeException
    _InvalidExportTimeException,

    -- ** TableAlreadyExistsException
    _TableAlreadyExistsException,

    -- ** GlobalTableAlreadyExistsException
    _GlobalTableAlreadyExistsException,

    -- ** ConditionalCheckFailedException
    _ConditionalCheckFailedException,

    -- ** ReplicaAlreadyExistsException
    _ReplicaAlreadyExistsException,

    -- ** TransactionInProgressException
    _TransactionInProgressException,

    -- ** GlobalTableNotFoundException
    _GlobalTableNotFoundException,

    -- ** InvalidRestoreTimeException
    _InvalidRestoreTimeException,

    -- ** PointInTimeRecoveryUnavailableException
    _PointInTimeRecoveryUnavailableException,

    -- ** ExportNotFoundException
    _ExportNotFoundException,

    -- ** BackupInUseException
    _BackupInUseException,

    -- ** ContinuousBackupsUnavailableException
    _ContinuousBackupsUnavailableException,

    -- ** ExportConflictException
    _ExportConflictException,

    -- ** DuplicateItemException
    _DuplicateItemException,

    -- ** TableInUseException
    _TableInUseException,

    -- ** TransactionConflictException
    _TransactionConflictException,

    -- ** InternalServerError
    _InternalServerError,

    -- ** RequestLimitExceeded
    _RequestLimitExceeded,

    -- ** ItemCollectionSizeLimitExceededException
    _ItemCollectionSizeLimitExceededException,

    -- ** ReplicaNotFoundException
    _ReplicaNotFoundException,

    -- ** TransactionCanceledException
    _TransactionCanceledException,

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

    -- ** BackupNotFoundException
    _BackupNotFoundException,

    -- ** IndexNotFoundException
    _IndexNotFoundException,

    -- ** TableNotFoundException
    _TableNotFoundException,

    -- * Waiters
    -- $waiters

    -- ** TableNotExists
    tableNotExists,

    -- ** TableExists
    tableExists,

    -- * Operations
    -- $operations

    -- ** BatchGetItem
    module Network.AWS.DynamoDB.BatchGetItem,

    -- ** UpdateContributorInsights
    module Network.AWS.DynamoDB.UpdateContributorInsights,

    -- ** DeleteBackup
    module Network.AWS.DynamoDB.DeleteBackup,

    -- ** DeleteItem
    module Network.AWS.DynamoDB.DeleteItem,

    -- ** UpdateItem
    module Network.AWS.DynamoDB.UpdateItem,

    -- ** ListContributorInsights
    module Network.AWS.DynamoDB.ListContributorInsights,

    -- ** ListGlobalTables
    module Network.AWS.DynamoDB.ListGlobalTables,

    -- ** DisableKinesisStreamingDestination
    module Network.AWS.DynamoDB.DisableKinesisStreamingDestination,

    -- ** UpdateContinuousBackups
    module Network.AWS.DynamoDB.UpdateContinuousBackups,

    -- ** CreateGlobalTable
    module Network.AWS.DynamoDB.CreateGlobalTable,

    -- ** BatchExecuteStatement
    module Network.AWS.DynamoDB.BatchExecuteStatement,

    -- ** RestoreTableFromBackup
    module Network.AWS.DynamoDB.RestoreTableFromBackup,

    -- ** DescribeLimits
    module Network.AWS.DynamoDB.DescribeLimits,

    -- ** ExecuteTransaction
    module Network.AWS.DynamoDB.ExecuteTransaction,

    -- ** RestoreTableToPointInTime
    module Network.AWS.DynamoDB.RestoreTableToPointInTime,

    -- ** UntagResource
    module Network.AWS.DynamoDB.UntagResource,

    -- ** DescribeContributorInsights
    module Network.AWS.DynamoDB.DescribeContributorInsights,

    -- ** DescribeBackup
    module Network.AWS.DynamoDB.DescribeBackup,

    -- ** ListTagsOfResource (Paginated)
    module Network.AWS.DynamoDB.ListTagsOfResource,

    -- ** TagResource
    module Network.AWS.DynamoDB.TagResource,

    -- ** DescribeGlobalTableSettings
    module Network.AWS.DynamoDB.DescribeGlobalTableSettings,

    -- ** UpdateTableReplicaAutoScaling
    module Network.AWS.DynamoDB.UpdateTableReplicaAutoScaling,

    -- ** DescribeTimeToLive
    module Network.AWS.DynamoDB.DescribeTimeToLive,

    -- ** Query (Paginated)
    module Network.AWS.DynamoDB.Query,

    -- ** CreateTable
    module Network.AWS.DynamoDB.CreateTable,

    -- ** CreateBackup
    module Network.AWS.DynamoDB.CreateBackup,

    -- ** ListTables (Paginated)
    module Network.AWS.DynamoDB.ListTables,

    -- ** Scan (Paginated)
    module Network.AWS.DynamoDB.Scan,

    -- ** UpdateTable
    module Network.AWS.DynamoDB.UpdateTable,

    -- ** DeleteTable
    module Network.AWS.DynamoDB.DeleteTable,

    -- ** TransactWriteItems
    module Network.AWS.DynamoDB.TransactWriteItems,

    -- ** ExportTableToPointInTime
    module Network.AWS.DynamoDB.ExportTableToPointInTime,

    -- ** ListBackups (Paginated)
    module Network.AWS.DynamoDB.ListBackups,

    -- ** TransactGetItems
    module Network.AWS.DynamoDB.TransactGetItems,

    -- ** UpdateGlobalTable
    module Network.AWS.DynamoDB.UpdateGlobalTable,

    -- ** BatchWriteItem
    module Network.AWS.DynamoDB.BatchWriteItem,

    -- ** PutItem
    module Network.AWS.DynamoDB.PutItem,

    -- ** UpdateTimeToLive
    module Network.AWS.DynamoDB.UpdateTimeToLive,

    -- ** UpdateGlobalTableSettings
    module Network.AWS.DynamoDB.UpdateGlobalTableSettings,

    -- ** EnableKinesisStreamingDestination
    module Network.AWS.DynamoDB.EnableKinesisStreamingDestination,

    -- ** DescribeExport
    module Network.AWS.DynamoDB.DescribeExport,

    -- ** DescribeTableReplicaAutoScaling
    module Network.AWS.DynamoDB.DescribeTableReplicaAutoScaling,

    -- ** GetItem
    module Network.AWS.DynamoDB.GetItem,

    -- ** DescribeTable
    module Network.AWS.DynamoDB.DescribeTable,

    -- ** DescribeGlobalTable
    module Network.AWS.DynamoDB.DescribeGlobalTable,

    -- ** ListExports
    module Network.AWS.DynamoDB.ListExports,

    -- ** DescribeContinuousBackups
    module Network.AWS.DynamoDB.DescribeContinuousBackups,

    -- ** DescribeKinesisStreamingDestination
    module Network.AWS.DynamoDB.DescribeKinesisStreamingDestination,

    -- ** DescribeEndpoints
    module Network.AWS.DynamoDB.DescribeEndpoints,

    -- ** ExecuteStatement
    module Network.AWS.DynamoDB.ExecuteStatement,

    -- * Types

    -- ** AttributeAction
    AttributeAction (..),

    -- ** BackupStatus
    BackupStatus (..),

    -- ** BackupType
    BackupType (..),

    -- ** BackupTypeFilter
    BackupTypeFilter (..),

    -- ** BatchStatementErrorCodeEnum
    BatchStatementErrorCodeEnum (..),

    -- ** BillingMode
    BillingMode (..),

    -- ** ComparisonOperator
    ComparisonOperator (..),

    -- ** ConditionalOperator
    ConditionalOperator (..),

    -- ** ContinuousBackupsStatus
    ContinuousBackupsStatus (..),

    -- ** ContributorInsightsAction
    ContributorInsightsAction (..),

    -- ** ContributorInsightsStatus
    ContributorInsightsStatus (..),

    -- ** DestinationStatus
    DestinationStatus (..),

    -- ** ExportFormat
    ExportFormat (..),

    -- ** ExportStatus
    ExportStatus (..),

    -- ** GlobalTableStatus
    GlobalTableStatus (..),

    -- ** IndexStatus
    IndexStatus (..),

    -- ** KeyType
    KeyType (..),

    -- ** PointInTimeRecoveryStatus
    PointInTimeRecoveryStatus (..),

    -- ** ProjectionType
    ProjectionType (..),

    -- ** ReplicaStatus
    ReplicaStatus (..),

    -- ** ReturnConsumedCapacity
    ReturnConsumedCapacity (..),

    -- ** ReturnItemCollectionMetrics
    ReturnItemCollectionMetrics (..),

    -- ** ReturnValue
    ReturnValue (..),

    -- ** ReturnValuesOnConditionCheckFailure
    ReturnValuesOnConditionCheckFailure (..),

    -- ** S3SseAlgorithm
    S3SseAlgorithm (..),

    -- ** SSEStatus
    SSEStatus (..),

    -- ** SSEType
    SSEType (..),

    -- ** ScalarAttributeType
    ScalarAttributeType (..),

    -- ** Select
    Select (..),

    -- ** StreamViewType
    StreamViewType (..),

    -- ** TableStatus
    TableStatus (..),

    -- ** TimeToLiveStatus
    TimeToLiveStatus (..),

    -- ** ArchivalSummary
    ArchivalSummary,
    archivalSummary,
    asArchivalBackupARN,
    asArchivalReason,
    asArchivalDateTime,

    -- ** AttributeDefinition
    AttributeDefinition,
    attributeDefinition,
    adAttributeName,
    adAttributeType,

    -- ** AttributeValue
    AttributeValue,
    attributeValue,
    avBS,
    avBOOL,
    avN,
    avS,
    avNULL,
    avM,
    avB,
    avL,
    avSS,
    avNS,

    -- ** AttributeValueUpdate
    AttributeValueUpdate,
    attributeValueUpdate,
    avuAction,
    avuValue,

    -- ** AutoScalingPolicyDescription
    AutoScalingPolicyDescription,
    autoScalingPolicyDescription,
    aspdPolicyName,
    aspdTargetTrackingScalingPolicyConfiguration,

    -- ** AutoScalingPolicyUpdate
    AutoScalingPolicyUpdate,
    autoScalingPolicyUpdate,
    aspuPolicyName,
    aspuTargetTrackingScalingPolicyConfiguration,

    -- ** AutoScalingSettingsDescription
    AutoScalingSettingsDescription,
    autoScalingSettingsDescription,
    assdScalingPolicies,
    assdMinimumUnits,
    assdMaximumUnits,
    assdAutoScalingRoleARN,
    assdAutoScalingDisabled,

    -- ** AutoScalingSettingsUpdate
    AutoScalingSettingsUpdate,
    autoScalingSettingsUpdate,
    assuScalingPolicyUpdate,
    assuMinimumUnits,
    assuMaximumUnits,
    assuAutoScalingRoleARN,
    assuAutoScalingDisabled,

    -- ** AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription,
    autoScalingTargetTrackingScalingPolicyConfigurationDescription,
    asttspcdDisableScaleIn,
    asttspcdScaleOutCooldown,
    asttspcdScaleInCooldown,
    asttspcdTargetValue,

    -- ** AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate,
    autoScalingTargetTrackingScalingPolicyConfigurationUpdate,
    asttspcuDisableScaleIn,
    asttspcuScaleOutCooldown,
    asttspcuScaleInCooldown,
    asttspcuTargetValue,

    -- ** BackupDescription
    BackupDescription,
    backupDescription,
    bdSourceTableDetails,
    bdBackupDetails,
    bdSourceTableFeatureDetails,

    -- ** BackupDetails
    BackupDetails,
    backupDetails,
    bdBackupExpiryDateTime,
    bdBackupSizeBytes,
    bdBackupARN,
    bdBackupName,
    bdBackupStatus,
    bdBackupType,
    bdBackupCreationDateTime,

    -- ** BackupSummary
    BackupSummary,
    backupSummary,
    bsTableName,
    bsBackupName,
    bsBackupType,
    bsBackupCreationDateTime,
    bsTableARN,
    bsTableId,
    bsBackupARN,
    bsBackupExpiryDateTime,
    bsBackupSizeBytes,
    bsBackupStatus,

    -- ** BatchStatementError
    BatchStatementError,
    batchStatementError,
    bseMessage,
    bseCode,

    -- ** BatchStatementRequest
    BatchStatementRequest,
    batchStatementRequest,
    bsrConsistentRead,
    bsrParameters,
    bsrStatement,

    -- ** BatchStatementResponse
    BatchStatementResponse,
    batchStatementResponse,
    bsrTableName,
    bsrItem,
    bsrError,

    -- ** BillingModeSummary
    BillingModeSummary,
    billingModeSummary,
    bmsBillingMode,
    bmsLastUpdateToPayPerRequestDateTime,

    -- ** Capacity
    Capacity,
    capacity,
    cWriteCapacityUnits,
    cCapacityUnits,
    cReadCapacityUnits,

    -- ** Condition
    Condition,
    condition,
    cAttributeValueList,
    cComparisonOperator,

    -- ** ConditionCheck
    ConditionCheck,
    conditionCheck,
    cExpressionAttributeValues,
    cReturnValuesOnConditionCheckFailure,
    cExpressionAttributeNames,
    cKey,
    cTableName,
    cConditionExpression,

    -- ** ConsumedCapacity
    ConsumedCapacity,
    consumedCapacity,
    ccLocalSecondaryIndexes,
    ccGlobalSecondaryIndexes,
    ccTableName,
    ccWriteCapacityUnits,
    ccCapacityUnits,
    ccTable,
    ccReadCapacityUnits,

    -- ** ContinuousBackupsDescription
    ContinuousBackupsDescription,
    continuousBackupsDescription,
    cbdPointInTimeRecoveryDescription,
    cbdContinuousBackupsStatus,

    -- ** ContributorInsightsSummary
    ContributorInsightsSummary,
    contributorInsightsSummary,
    cisTableName,
    cisIndexName,
    cisContributorInsightsStatus,

    -- ** CreateGlobalSecondaryIndexAction
    CreateGlobalSecondaryIndexAction,
    createGlobalSecondaryIndexAction,
    cgsiaProvisionedThroughput,
    cgsiaIndexName,
    cgsiaKeySchema,
    cgsiaProjection,

    -- ** CreateReplicaAction
    CreateReplicaAction,
    createReplicaAction,
    craRegionName,

    -- ** CreateReplicationGroupMemberAction
    CreateReplicationGroupMemberAction,
    createReplicationGroupMemberAction,
    crgmaGlobalSecondaryIndexes,
    crgmaProvisionedThroughputOverride,
    crgmaKMSMasterKeyId,
    crgmaRegionName,

    -- ** Delete
    Delete,
    delete',
    dExpressionAttributeValues,
    dReturnValuesOnConditionCheckFailure,
    dExpressionAttributeNames,
    dConditionExpression,
    dKey,
    dTableName,

    -- ** DeleteGlobalSecondaryIndexAction
    DeleteGlobalSecondaryIndexAction,
    deleteGlobalSecondaryIndexAction,
    dgsiaIndexName,

    -- ** DeleteReplicaAction
    DeleteReplicaAction,
    deleteReplicaAction,
    draRegionName,

    -- ** DeleteReplicationGroupMemberAction
    DeleteReplicationGroupMemberAction,
    deleteReplicationGroupMemberAction,
    drgmaRegionName,

    -- ** DeleteRequest
    DeleteRequest,
    deleteRequest,
    drKey,

    -- ** Endpoint
    Endpoint,
    endpoint,
    eAddress,
    eCachePeriodInMinutes,

    -- ** ExpectedAttributeValue
    ExpectedAttributeValue,
    expectedAttributeValue,
    eavComparisonOperator,
    eavExists,
    eavValue,
    eavAttributeValueList,

    -- ** ExportDescription
    ExportDescription,
    exportDescription,
    edExportFormat,
    edExportTime,
    edBilledSizeBytes,
    edS3Bucket,
    edTableARN,
    edTableId,
    edFailureMessage,
    edExportStatus,
    edStartTime,
    edFailureCode,
    edEndTime,
    edS3BucketOwner,
    edExportARN,
    edItemCount,
    edExportManifest,
    edS3Prefix,
    edS3SseKMSKeyId,
    edClientToken,
    edS3SseAlgorithm,

    -- ** ExportSummary
    ExportSummary,
    exportSummary,
    esExportStatus,
    esExportARN,

    -- ** FailureException
    FailureException,
    failureException,
    feExceptionName,
    feExceptionDescription,

    -- ** Get
    Get,
    get',
    getProjectionExpression,
    getExpressionAttributeNames,
    getKey,
    getTableName,

    -- ** GlobalSecondaryIndex
    GlobalSecondaryIndex,
    globalSecondaryIndex,
    gsiProvisionedThroughput,
    gsiIndexName,
    gsiKeySchema,
    gsiProjection,

    -- ** GlobalSecondaryIndexAutoScalingUpdate
    GlobalSecondaryIndexAutoScalingUpdate,
    globalSecondaryIndexAutoScalingUpdate,
    gsiasuIndexName,
    gsiasuProvisionedWriteCapacityAutoScalingUpdate,

    -- ** GlobalSecondaryIndexDescription
    GlobalSecondaryIndexDescription,
    globalSecondaryIndexDescription,
    gsidIndexName,
    gsidKeySchema,
    gsidIndexARN,
    gsidProjection,
    gsidIndexSizeBytes,
    gsidBackfilling,
    gsidItemCount,
    gsidProvisionedThroughput,
    gsidIndexStatus,

    -- ** GlobalSecondaryIndexInfo
    GlobalSecondaryIndexInfo,
    globalSecondaryIndexInfo,
    gsiiIndexName,
    gsiiKeySchema,
    gsiiProjection,
    gsiiProvisionedThroughput,

    -- ** GlobalSecondaryIndexUpdate
    GlobalSecondaryIndexUpdate,
    globalSecondaryIndexUpdate,
    gsiuCreate,
    gsiuUpdate,
    gsiuDelete,

    -- ** GlobalTable
    GlobalTable,
    globalTable,
    gtGlobalTableName,
    gtReplicationGroup,

    -- ** GlobalTableDescription
    GlobalTableDescription,
    globalTableDescription,
    gtdGlobalTableName,
    gtdGlobalTableStatus,
    gtdReplicationGroup,
    gtdCreationDateTime,
    gtdGlobalTableARN,

    -- ** GlobalTableGlobalSecondaryIndexSettingsUpdate
    GlobalTableGlobalSecondaryIndexSettingsUpdate,
    globalTableGlobalSecondaryIndexSettingsUpdate,
    gtgsisuProvisionedWriteCapacityAutoScalingSettingsUpdate,
    gtgsisuProvisionedWriteCapacityUnits,
    gtgsisuIndexName,

    -- ** ItemCollectionMetrics
    ItemCollectionMetrics,
    itemCollectionMetrics,
    icmItemCollectionKey,
    icmSizeEstimateRangeGB,

    -- ** ItemResponse
    ItemResponse,
    itemResponse,
    irItem,

    -- ** KeySchemaElement
    KeySchemaElement,
    keySchemaElement,
    kseAttributeName,
    kseKeyType,

    -- ** KeysAndAttributes
    KeysAndAttributes,
    keysAndAttributes,
    kaaProjectionExpression,
    kaaConsistentRead,
    kaaExpressionAttributeNames,
    kaaAttributesToGet,
    kaaKeys,

    -- ** KinesisDataStreamDestination
    KinesisDataStreamDestination,
    kinesisDataStreamDestination,
    kdsdDestinationStatusDescription,
    kdsdStreamARN,
    kdsdDestinationStatus,

    -- ** KinesisStreamingDestinationInput
    KinesisStreamingDestinationInput,
    kinesisStreamingDestinationInput,
    ksdiTableName,
    ksdiStreamARN,

    -- ** KinesisStreamingDestinationOutput
    KinesisStreamingDestinationOutput,
    kinesisStreamingDestinationOutput,
    ksdoTableName,
    ksdoStreamARN,
    ksdoDestinationStatus,

    -- ** LocalSecondaryIndex
    LocalSecondaryIndex,
    localSecondaryIndex,
    lsiIndexName,
    lsiKeySchema,
    lsiProjection,

    -- ** LocalSecondaryIndexDescription
    LocalSecondaryIndexDescription,
    localSecondaryIndexDescription,
    lsidIndexName,
    lsidKeySchema,
    lsidIndexARN,
    lsidProjection,
    lsidIndexSizeBytes,
    lsidItemCount,

    -- ** LocalSecondaryIndexInfo
    LocalSecondaryIndexInfo,
    localSecondaryIndexInfo,
    lsiiIndexName,
    lsiiKeySchema,
    lsiiProjection,

    -- ** ParameterizedStatement
    ParameterizedStatement,
    parameterizedStatement,
    psParameters,
    psStatement,

    -- ** PointInTimeRecoveryDescription
    PointInTimeRecoveryDescription,
    pointInTimeRecoveryDescription,
    pitrdLatestRestorableDateTime,
    pitrdEarliestRestorableDateTime,
    pitrdPointInTimeRecoveryStatus,

    -- ** PointInTimeRecoverySpecification
    PointInTimeRecoverySpecification,
    pointInTimeRecoverySpecification,
    pitrsPointInTimeRecoveryEnabled,

    -- ** Projection
    Projection,
    projection,
    pNonKeyAttributes,
    pProjectionType,

    -- ** ProvisionedThroughput
    ProvisionedThroughput,
    provisionedThroughput,
    ptReadCapacityUnits,
    ptWriteCapacityUnits,

    -- ** ProvisionedThroughputDescription
    ProvisionedThroughputDescription,
    provisionedThroughputDescription,
    ptdLastDecreaseDateTime,
    ptdLastIncreaseDateTime,
    ptdWriteCapacityUnits,
    ptdNumberOfDecreasesToday,
    ptdReadCapacityUnits,

    -- ** ProvisionedThroughputOverride
    ProvisionedThroughputOverride,
    provisionedThroughputOverride,
    ptoReadCapacityUnits,

    -- ** Put
    Put,
    put,
    pExpressionAttributeValues,
    pReturnValuesOnConditionCheckFailure,
    pExpressionAttributeNames,
    pConditionExpression,
    pItem,
    pTableName,

    -- ** PutRequest
    PutRequest,
    putRequest,
    prItem,

    -- ** Replica
    Replica,
    replica,
    rRegionName,

    -- ** ReplicaAutoScalingDescription
    ReplicaAutoScalingDescription,
    replicaAutoScalingDescription,
    rasdRegionName,
    rasdReplicaProvisionedReadCapacityAutoScalingSettings,
    rasdGlobalSecondaryIndexes,
    rasdReplicaProvisionedWriteCapacityAutoScalingSettings,
    rasdReplicaStatus,

    -- ** ReplicaAutoScalingUpdate
    ReplicaAutoScalingUpdate,
    replicaAutoScalingUpdate,
    rasuReplicaProvisionedReadCapacityAutoScalingUpdate,
    rasuReplicaGlobalSecondaryIndexUpdates,
    rasuRegionName,

    -- ** ReplicaDescription
    ReplicaDescription,
    replicaDescription,
    rdRegionName,
    rdGlobalSecondaryIndexes,
    rdProvisionedThroughputOverride,
    rdKMSMasterKeyId,
    rdReplicaStatusDescription,
    rdReplicaStatusPercentProgress,
    rdReplicaStatus,
    rdReplicaInaccessibleDateTime,

    -- ** ReplicaGlobalSecondaryIndex
    ReplicaGlobalSecondaryIndex,
    replicaGlobalSecondaryIndex,
    rgsiProvisionedThroughputOverride,
    rgsiIndexName,

    -- ** ReplicaGlobalSecondaryIndexAutoScalingDescription
    ReplicaGlobalSecondaryIndexAutoScalingDescription,
    replicaGlobalSecondaryIndexAutoScalingDescription,
    rgsiasdIndexName,
    rgsiasdProvisionedReadCapacityAutoScalingSettings,
    rgsiasdProvisionedWriteCapacityAutoScalingSettings,
    rgsiasdIndexStatus,

    -- ** ReplicaGlobalSecondaryIndexAutoScalingUpdate
    ReplicaGlobalSecondaryIndexAutoScalingUpdate,
    replicaGlobalSecondaryIndexAutoScalingUpdate,
    rgsiasuIndexName,
    rgsiasuProvisionedReadCapacityAutoScalingUpdate,

    -- ** ReplicaGlobalSecondaryIndexDescription
    ReplicaGlobalSecondaryIndexDescription,
    replicaGlobalSecondaryIndexDescription,
    rgsidIndexName,
    rgsidProvisionedThroughputOverride,

    -- ** ReplicaGlobalSecondaryIndexSettingsDescription
    ReplicaGlobalSecondaryIndexSettingsDescription,
    replicaGlobalSecondaryIndexSettingsDescription,
    rgsisdProvisionedWriteCapacityUnits,
    rgsisdProvisionedReadCapacityUnits,
    rgsisdProvisionedReadCapacityAutoScalingSettings,
    rgsisdProvisionedWriteCapacityAutoScalingSettings,
    rgsisdIndexStatus,
    rgsisdIndexName,

    -- ** ReplicaGlobalSecondaryIndexSettingsUpdate
    ReplicaGlobalSecondaryIndexSettingsUpdate,
    replicaGlobalSecondaryIndexSettingsUpdate,
    rgsisuProvisionedReadCapacityUnits,
    rgsisuProvisionedReadCapacityAutoScalingSettingsUpdate,
    rgsisuIndexName,

    -- ** ReplicaSettingsDescription
    ReplicaSettingsDescription,
    replicaSettingsDescription,
    rsdReplicaBillingModeSummary,
    rsdReplicaProvisionedReadCapacityAutoScalingSettings,
    rsdReplicaProvisionedWriteCapacityAutoScalingSettings,
    rsdReplicaGlobalSecondaryIndexSettings,
    rsdReplicaProvisionedWriteCapacityUnits,
    rsdReplicaStatus,
    rsdReplicaProvisionedReadCapacityUnits,
    rsdRegionName,

    -- ** ReplicaSettingsUpdate
    ReplicaSettingsUpdate,
    replicaSettingsUpdate,
    rsuReplicaGlobalSecondaryIndexSettingsUpdate,
    rsuReplicaProvisionedReadCapacityUnits,
    rsuReplicaProvisionedReadCapacityAutoScalingSettingsUpdate,
    rsuRegionName,

    -- ** ReplicaUpdate
    ReplicaUpdate,
    replicaUpdate,
    ruCreate,
    ruDelete,

    -- ** ReplicationGroupUpdate
    ReplicationGroupUpdate,
    replicationGroupUpdate,
    rguCreate,
    rguUpdate,
    rguDelete,

    -- ** RestoreSummary
    RestoreSummary,
    restoreSummary,
    rsSourceBackupARN,
    rsSourceTableARN,
    rsRestoreDateTime,
    rsRestoreInProgress,

    -- ** SSEDescription
    SSEDescription,
    sSEDescription,
    ssedStatus,
    ssedKMSMasterKeyARN,
    ssedInaccessibleEncryptionDateTime,
    ssedSSEType,

    -- ** SSESpecification
    SSESpecification,
    sSESpecification,
    ssesKMSMasterKeyId,
    ssesEnabled,
    ssesSSEType,

    -- ** SourceTableDetails
    SourceTableDetails,
    sourceTableDetails,
    stdTableARN,
    stdBillingMode,
    stdTableSizeBytes,
    stdItemCount,
    stdTableName,
    stdTableId,
    stdKeySchema,
    stdTableCreationDateTime,
    stdProvisionedThroughput,

    -- ** SourceTableFeatureDetails
    SourceTableFeatureDetails,
    sourceTableFeatureDetails,
    stfdLocalSecondaryIndexes,
    stfdGlobalSecondaryIndexes,
    stfdTimeToLiveDescription,
    stfdSSEDescription,
    stfdStreamDescription,

    -- ** StreamSpecification
    StreamSpecification,
    streamSpecification,
    ssStreamViewType,
    ssStreamEnabled,

    -- ** TableAutoScalingDescription
    TableAutoScalingDescription,
    tableAutoScalingDescription,
    tasdTableName,
    tasdReplicas,
    tasdTableStatus,

    -- ** TableDescription
    TableDescription,
    tableDescription,
    tdGlobalTableVersion,
    tdLocalSecondaryIndexes,
    tdRestoreSummary,
    tdStreamSpecification,
    tdGlobalSecondaryIndexes,
    tdTableName,
    tdKeySchema,
    tdTableARN,
    tdTableId,
    tdAttributeDefinitions,
    tdTableSizeBytes,
    tdBillingModeSummary,
    tdLatestStreamLabel,
    tdArchivalSummary,
    tdItemCount,
    tdSSEDescription,
    tdReplicas,
    tdCreationDateTime,
    tdTableStatus,
    tdProvisionedThroughput,
    tdLatestStreamARN,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TimeToLiveDescription
    TimeToLiveDescription,
    timeToLiveDescription,
    ttldTimeToLiveStatus,
    ttldAttributeName,

    -- ** TimeToLiveSpecification
    TimeToLiveSpecification,
    timeToLiveSpecification,
    ttlsEnabled,
    ttlsAttributeName,

    -- ** TransactGetItem
    TransactGetItem,
    transactGetItem,
    tgiGet,

    -- ** TransactWriteItem
    TransactWriteItem,
    transactWriteItem,
    twiPut,
    twiConditionCheck,
    twiUpdate,
    twiDelete,

    -- ** Update
    Update,
    update,
    uExpressionAttributeValues,
    uReturnValuesOnConditionCheckFailure,
    uExpressionAttributeNames,
    uConditionExpression,
    uKey,
    uUpdateExpression,
    uTableName,

    -- ** UpdateGlobalSecondaryIndexAction
    UpdateGlobalSecondaryIndexAction,
    updateGlobalSecondaryIndexAction,
    ugsiaIndexName,
    ugsiaProvisionedThroughput,

    -- ** UpdateReplicationGroupMemberAction
    UpdateReplicationGroupMemberAction,
    updateReplicationGroupMemberAction,
    urgmaGlobalSecondaryIndexes,
    urgmaProvisionedThroughputOverride,
    urgmaKMSMasterKeyId,
    urgmaRegionName,

    -- ** WriteRequest
    WriteRequest,
    writeRequest,
    wrDeleteRequest,
    wrPutRequest,
  )
where

import Network.AWS.DynamoDB.BatchExecuteStatement
import Network.AWS.DynamoDB.BatchGetItem
import Network.AWS.DynamoDB.BatchWriteItem
import Network.AWS.DynamoDB.CreateBackup
import Network.AWS.DynamoDB.CreateGlobalTable
import Network.AWS.DynamoDB.CreateTable
import Network.AWS.DynamoDB.DeleteBackup
import Network.AWS.DynamoDB.DeleteItem
import Network.AWS.DynamoDB.DeleteTable
import Network.AWS.DynamoDB.DescribeBackup
import Network.AWS.DynamoDB.DescribeContinuousBackups
import Network.AWS.DynamoDB.DescribeContributorInsights
import Network.AWS.DynamoDB.DescribeEndpoints
import Network.AWS.DynamoDB.DescribeExport
import Network.AWS.DynamoDB.DescribeGlobalTable
import Network.AWS.DynamoDB.DescribeGlobalTableSettings
import Network.AWS.DynamoDB.DescribeKinesisStreamingDestination
import Network.AWS.DynamoDB.DescribeLimits
import Network.AWS.DynamoDB.DescribeTable
import Network.AWS.DynamoDB.DescribeTableReplicaAutoScaling
import Network.AWS.DynamoDB.DescribeTimeToLive
import Network.AWS.DynamoDB.DisableKinesisStreamingDestination
import Network.AWS.DynamoDB.EnableKinesisStreamingDestination
import Network.AWS.DynamoDB.ExecuteStatement
import Network.AWS.DynamoDB.ExecuteTransaction
import Network.AWS.DynamoDB.ExportTableToPointInTime
import Network.AWS.DynamoDB.GetItem
import Network.AWS.DynamoDB.ListBackups
import Network.AWS.DynamoDB.ListContributorInsights
import Network.AWS.DynamoDB.ListExports
import Network.AWS.DynamoDB.ListGlobalTables
import Network.AWS.DynamoDB.ListTables
import Network.AWS.DynamoDB.ListTagsOfResource
import Network.AWS.DynamoDB.PutItem
import Network.AWS.DynamoDB.Query
import Network.AWS.DynamoDB.RestoreTableFromBackup
import Network.AWS.DynamoDB.RestoreTableToPointInTime
import Network.AWS.DynamoDB.Scan
import Network.AWS.DynamoDB.TagResource
import Network.AWS.DynamoDB.TransactGetItems
import Network.AWS.DynamoDB.TransactWriteItems
import Network.AWS.DynamoDB.Types
import Network.AWS.DynamoDB.UntagResource
import Network.AWS.DynamoDB.UpdateContinuousBackups
import Network.AWS.DynamoDB.UpdateContributorInsights
import Network.AWS.DynamoDB.UpdateGlobalTable
import Network.AWS.DynamoDB.UpdateGlobalTableSettings
import Network.AWS.DynamoDB.UpdateItem
import Network.AWS.DynamoDB.UpdateTable
import Network.AWS.DynamoDB.UpdateTableReplicaAutoScaling
import Network.AWS.DynamoDB.UpdateTimeToLive
import Network.AWS.DynamoDB.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'DynamoDB'.

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
