{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types
  ( -- * Service Configuration
    dynamoDB,

    -- * Errors
    _InvalidExportTimeException,
    _TableAlreadyExistsException,
    _GlobalTableAlreadyExistsException,
    _ConditionalCheckFailedException,
    _ReplicaAlreadyExistsException,
    _TransactionInProgressException,
    _GlobalTableNotFoundException,
    _InvalidRestoreTimeException,
    _PointInTimeRecoveryUnavailableException,
    _ExportNotFoundException,
    _BackupInUseException,
    _ContinuousBackupsUnavailableException,
    _ExportConflictException,
    _DuplicateItemException,
    _TableInUseException,
    _TransactionConflictException,
    _InternalServerError,
    _RequestLimitExceeded,
    _ItemCollectionSizeLimitExceededException,
    _ReplicaNotFoundException,
    _TransactionCanceledException,
    _ResourceInUseException,
    _LimitExceededException,
    _ProvisionedThroughputExceededException,
    _ResourceNotFoundException,
    _IdempotentParameterMismatchException,
    _BackupNotFoundException,
    _IndexNotFoundException,
    _TableNotFoundException,

    -- * AttributeAction
    AttributeAction (..),

    -- * BackupStatus
    BackupStatus (..),

    -- * BackupType
    BackupType (..),

    -- * BackupTypeFilter
    BackupTypeFilter (..),

    -- * BatchStatementErrorCodeEnum
    BatchStatementErrorCodeEnum (..),

    -- * BillingMode
    BillingMode (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * ConditionalOperator
    ConditionalOperator (..),

    -- * ContinuousBackupsStatus
    ContinuousBackupsStatus (..),

    -- * ContributorInsightsAction
    ContributorInsightsAction (..),

    -- * ContributorInsightsStatus
    ContributorInsightsStatus (..),

    -- * DestinationStatus
    DestinationStatus (..),

    -- * ExportFormat
    ExportFormat (..),

    -- * ExportStatus
    ExportStatus (..),

    -- * GlobalTableStatus
    GlobalTableStatus (..),

    -- * IndexStatus
    IndexStatus (..),

    -- * KeyType
    KeyType (..),

    -- * PointInTimeRecoveryStatus
    PointInTimeRecoveryStatus (..),

    -- * ProjectionType
    ProjectionType (..),

    -- * ReplicaStatus
    ReplicaStatus (..),

    -- * ReturnConsumedCapacity
    ReturnConsumedCapacity (..),

    -- * ReturnItemCollectionMetrics
    ReturnItemCollectionMetrics (..),

    -- * ReturnValue
    ReturnValue (..),

    -- * ReturnValuesOnConditionCheckFailure
    ReturnValuesOnConditionCheckFailure (..),

    -- * S3SseAlgorithm
    S3SseAlgorithm (..),

    -- * SSEStatus
    SSEStatus (..),

    -- * SSEType
    SSEType (..),

    -- * ScalarAttributeType
    ScalarAttributeType (..),

    -- * Select
    Select (..),

    -- * StreamViewType
    StreamViewType (..),

    -- * TableStatus
    TableStatus (..),

    -- * TimeToLiveStatus
    TimeToLiveStatus (..),

    -- * ArchivalSummary
    ArchivalSummary (..),
    archivalSummary,
    asArchivalBackupARN,
    asArchivalReason,
    asArchivalDateTime,

    -- * AttributeDefinition
    AttributeDefinition (..),
    attributeDefinition,
    adAttributeName,
    adAttributeType,

    -- * AttributeValue
    AttributeValue (..),
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

    -- * AttributeValueUpdate
    AttributeValueUpdate (..),
    attributeValueUpdate,
    avuAction,
    avuValue,

    -- * AutoScalingPolicyDescription
    AutoScalingPolicyDescription (..),
    autoScalingPolicyDescription,
    aspdPolicyName,
    aspdTargetTrackingScalingPolicyConfiguration,

    -- * AutoScalingPolicyUpdate
    AutoScalingPolicyUpdate (..),
    autoScalingPolicyUpdate,
    aspuPolicyName,
    aspuTargetTrackingScalingPolicyConfiguration,

    -- * AutoScalingSettingsDescription
    AutoScalingSettingsDescription (..),
    autoScalingSettingsDescription,
    assdScalingPolicies,
    assdMinimumUnits,
    assdMaximumUnits,
    assdAutoScalingRoleARN,
    assdAutoScalingDisabled,

    -- * AutoScalingSettingsUpdate
    AutoScalingSettingsUpdate (..),
    autoScalingSettingsUpdate,
    assuScalingPolicyUpdate,
    assuMinimumUnits,
    assuMaximumUnits,
    assuAutoScalingRoleARN,
    assuAutoScalingDisabled,

    -- * AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription (..),
    autoScalingTargetTrackingScalingPolicyConfigurationDescription,
    asttspcdDisableScaleIn,
    asttspcdScaleOutCooldown,
    asttspcdScaleInCooldown,
    asttspcdTargetValue,

    -- * AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate (..),
    autoScalingTargetTrackingScalingPolicyConfigurationUpdate,
    asttspcuDisableScaleIn,
    asttspcuScaleOutCooldown,
    asttspcuScaleInCooldown,
    asttspcuTargetValue,

    -- * BackupDescription
    BackupDescription (..),
    backupDescription,
    bdSourceTableDetails,
    bdBackupDetails,
    bdSourceTableFeatureDetails,

    -- * BackupDetails
    BackupDetails (..),
    backupDetails,
    bdBackupExpiryDateTime,
    bdBackupSizeBytes,
    bdBackupARN,
    bdBackupName,
    bdBackupStatus,
    bdBackupType,
    bdBackupCreationDateTime,

    -- * BackupSummary
    BackupSummary (..),
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

    -- * BatchStatementError
    BatchStatementError (..),
    batchStatementError,
    bseMessage,
    bseCode,

    -- * BatchStatementRequest
    BatchStatementRequest (..),
    batchStatementRequest,
    bsrConsistentRead,
    bsrParameters,
    bsrStatement,

    -- * BatchStatementResponse
    BatchStatementResponse (..),
    batchStatementResponse,
    bsrTableName,
    bsrItem,
    bsrError,

    -- * BillingModeSummary
    BillingModeSummary (..),
    billingModeSummary,
    bmsBillingMode,
    bmsLastUpdateToPayPerRequestDateTime,

    -- * Capacity
    Capacity (..),
    capacity,
    cWriteCapacityUnits,
    cCapacityUnits,
    cReadCapacityUnits,

    -- * Condition
    Condition (..),
    condition,
    cAttributeValueList,
    cComparisonOperator,

    -- * ConditionCheck
    ConditionCheck (..),
    conditionCheck,
    cExpressionAttributeValues,
    cReturnValuesOnConditionCheckFailure,
    cExpressionAttributeNames,
    cKey,
    cTableName,
    cConditionExpression,

    -- * ConsumedCapacity
    ConsumedCapacity (..),
    consumedCapacity,
    ccLocalSecondaryIndexes,
    ccGlobalSecondaryIndexes,
    ccTableName,
    ccWriteCapacityUnits,
    ccCapacityUnits,
    ccTable,
    ccReadCapacityUnits,

    -- * ContinuousBackupsDescription
    ContinuousBackupsDescription (..),
    continuousBackupsDescription,
    cbdPointInTimeRecoveryDescription,
    cbdContinuousBackupsStatus,

    -- * ContributorInsightsSummary
    ContributorInsightsSummary (..),
    contributorInsightsSummary,
    cisTableName,
    cisIndexName,
    cisContributorInsightsStatus,

    -- * CreateGlobalSecondaryIndexAction
    CreateGlobalSecondaryIndexAction (..),
    createGlobalSecondaryIndexAction,
    cgsiaProvisionedThroughput,
    cgsiaIndexName,
    cgsiaKeySchema,
    cgsiaProjection,

    -- * CreateReplicaAction
    CreateReplicaAction (..),
    createReplicaAction,
    craRegionName,

    -- * CreateReplicationGroupMemberAction
    CreateReplicationGroupMemberAction (..),
    createReplicationGroupMemberAction,
    crgmaGlobalSecondaryIndexes,
    crgmaProvisionedThroughputOverride,
    crgmaKMSMasterKeyId,
    crgmaRegionName,

    -- * Delete
    Delete (..),
    delete',
    dExpressionAttributeValues,
    dReturnValuesOnConditionCheckFailure,
    dExpressionAttributeNames,
    dConditionExpression,
    dKey,
    dTableName,

    -- * DeleteGlobalSecondaryIndexAction
    DeleteGlobalSecondaryIndexAction (..),
    deleteGlobalSecondaryIndexAction,
    dgsiaIndexName,

    -- * DeleteReplicaAction
    DeleteReplicaAction (..),
    deleteReplicaAction,
    draRegionName,

    -- * DeleteReplicationGroupMemberAction
    DeleteReplicationGroupMemberAction (..),
    deleteReplicationGroupMemberAction,
    drgmaRegionName,

    -- * DeleteRequest
    DeleteRequest (..),
    deleteRequest,
    drKey,

    -- * Endpoint
    Endpoint (..),
    endpoint,
    eAddress,
    eCachePeriodInMinutes,

    -- * ExpectedAttributeValue
    ExpectedAttributeValue (..),
    expectedAttributeValue,
    eavComparisonOperator,
    eavExists,
    eavValue,
    eavAttributeValueList,

    -- * ExportDescription
    ExportDescription (..),
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

    -- * ExportSummary
    ExportSummary (..),
    exportSummary,
    esExportStatus,
    esExportARN,

    -- * FailureException
    FailureException (..),
    failureException,
    feExceptionName,
    feExceptionDescription,

    -- * Get
    Get (..),
    get',
    getProjectionExpression,
    getExpressionAttributeNames,
    getKey,
    getTableName,

    -- * GlobalSecondaryIndex
    GlobalSecondaryIndex (..),
    globalSecondaryIndex,
    gsiProvisionedThroughput,
    gsiIndexName,
    gsiKeySchema,
    gsiProjection,

    -- * GlobalSecondaryIndexAutoScalingUpdate
    GlobalSecondaryIndexAutoScalingUpdate (..),
    globalSecondaryIndexAutoScalingUpdate,
    gsiasuIndexName,
    gsiasuProvisionedWriteCapacityAutoScalingUpdate,

    -- * GlobalSecondaryIndexDescription
    GlobalSecondaryIndexDescription (..),
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

    -- * GlobalSecondaryIndexInfo
    GlobalSecondaryIndexInfo (..),
    globalSecondaryIndexInfo,
    gsiiIndexName,
    gsiiKeySchema,
    gsiiProjection,
    gsiiProvisionedThroughput,

    -- * GlobalSecondaryIndexUpdate
    GlobalSecondaryIndexUpdate (..),
    globalSecondaryIndexUpdate,
    gsiuCreate,
    gsiuUpdate,
    gsiuDelete,

    -- * GlobalTable
    GlobalTable (..),
    globalTable,
    gtGlobalTableName,
    gtReplicationGroup,

    -- * GlobalTableDescription
    GlobalTableDescription (..),
    globalTableDescription,
    gtdGlobalTableName,
    gtdGlobalTableStatus,
    gtdReplicationGroup,
    gtdCreationDateTime,
    gtdGlobalTableARN,

    -- * GlobalTableGlobalSecondaryIndexSettingsUpdate
    GlobalTableGlobalSecondaryIndexSettingsUpdate (..),
    globalTableGlobalSecondaryIndexSettingsUpdate,
    gtgsisuProvisionedWriteCapacityAutoScalingSettingsUpdate,
    gtgsisuProvisionedWriteCapacityUnits,
    gtgsisuIndexName,

    -- * ItemCollectionMetrics
    ItemCollectionMetrics (..),
    itemCollectionMetrics,
    icmItemCollectionKey,
    icmSizeEstimateRangeGB,

    -- * ItemResponse
    ItemResponse (..),
    itemResponse,
    irItem,

    -- * KeySchemaElement
    KeySchemaElement (..),
    keySchemaElement,
    kseAttributeName,
    kseKeyType,

    -- * KeysAndAttributes
    KeysAndAttributes (..),
    keysAndAttributes,
    kaaProjectionExpression,
    kaaConsistentRead,
    kaaExpressionAttributeNames,
    kaaAttributesToGet,
    kaaKeys,

    -- * KinesisDataStreamDestination
    KinesisDataStreamDestination (..),
    kinesisDataStreamDestination,
    kdsdDestinationStatusDescription,
    kdsdStreamARN,
    kdsdDestinationStatus,

    -- * KinesisStreamingDestinationInput
    KinesisStreamingDestinationInput (..),
    kinesisStreamingDestinationInput,
    ksdiTableName,
    ksdiStreamARN,

    -- * KinesisStreamingDestinationOutput
    KinesisStreamingDestinationOutput (..),
    kinesisStreamingDestinationOutput,
    ksdoTableName,
    ksdoStreamARN,
    ksdoDestinationStatus,

    -- * LocalSecondaryIndex
    LocalSecondaryIndex (..),
    localSecondaryIndex,
    lsiIndexName,
    lsiKeySchema,
    lsiProjection,

    -- * LocalSecondaryIndexDescription
    LocalSecondaryIndexDescription (..),
    localSecondaryIndexDescription,
    lsidIndexName,
    lsidKeySchema,
    lsidIndexARN,
    lsidProjection,
    lsidIndexSizeBytes,
    lsidItemCount,

    -- * LocalSecondaryIndexInfo
    LocalSecondaryIndexInfo (..),
    localSecondaryIndexInfo,
    lsiiIndexName,
    lsiiKeySchema,
    lsiiProjection,

    -- * ParameterizedStatement
    ParameterizedStatement (..),
    parameterizedStatement,
    psParameters,
    psStatement,

    -- * PointInTimeRecoveryDescription
    PointInTimeRecoveryDescription (..),
    pointInTimeRecoveryDescription,
    pitrdLatestRestorableDateTime,
    pitrdEarliestRestorableDateTime,
    pitrdPointInTimeRecoveryStatus,

    -- * PointInTimeRecoverySpecification
    PointInTimeRecoverySpecification (..),
    pointInTimeRecoverySpecification,
    pitrsPointInTimeRecoveryEnabled,

    -- * Projection
    Projection (..),
    projection,
    pNonKeyAttributes,
    pProjectionType,

    -- * ProvisionedThroughput
    ProvisionedThroughput (..),
    provisionedThroughput,
    ptReadCapacityUnits,
    ptWriteCapacityUnits,

    -- * ProvisionedThroughputDescription
    ProvisionedThroughputDescription (..),
    provisionedThroughputDescription,
    ptdLastDecreaseDateTime,
    ptdLastIncreaseDateTime,
    ptdWriteCapacityUnits,
    ptdNumberOfDecreasesToday,
    ptdReadCapacityUnits,

    -- * ProvisionedThroughputOverride
    ProvisionedThroughputOverride (..),
    provisionedThroughputOverride,
    ptoReadCapacityUnits,

    -- * Put
    Put (..),
    put,
    pExpressionAttributeValues,
    pReturnValuesOnConditionCheckFailure,
    pExpressionAttributeNames,
    pConditionExpression,
    pItem,
    pTableName,

    -- * PutRequest
    PutRequest (..),
    putRequest,
    prItem,

    -- * Replica
    Replica (..),
    replica,
    rRegionName,

    -- * ReplicaAutoScalingDescription
    ReplicaAutoScalingDescription (..),
    replicaAutoScalingDescription,
    rasdRegionName,
    rasdReplicaProvisionedReadCapacityAutoScalingSettings,
    rasdGlobalSecondaryIndexes,
    rasdReplicaProvisionedWriteCapacityAutoScalingSettings,
    rasdReplicaStatus,

    -- * ReplicaAutoScalingUpdate
    ReplicaAutoScalingUpdate (..),
    replicaAutoScalingUpdate,
    rasuReplicaProvisionedReadCapacityAutoScalingUpdate,
    rasuReplicaGlobalSecondaryIndexUpdates,
    rasuRegionName,

    -- * ReplicaDescription
    ReplicaDescription (..),
    replicaDescription,
    rdRegionName,
    rdGlobalSecondaryIndexes,
    rdProvisionedThroughputOverride,
    rdKMSMasterKeyId,
    rdReplicaStatusDescription,
    rdReplicaStatusPercentProgress,
    rdReplicaStatus,
    rdReplicaInaccessibleDateTime,

    -- * ReplicaGlobalSecondaryIndex
    ReplicaGlobalSecondaryIndex (..),
    replicaGlobalSecondaryIndex,
    rgsiProvisionedThroughputOverride,
    rgsiIndexName,

    -- * ReplicaGlobalSecondaryIndexAutoScalingDescription
    ReplicaGlobalSecondaryIndexAutoScalingDescription (..),
    replicaGlobalSecondaryIndexAutoScalingDescription,
    rgsiasdIndexName,
    rgsiasdProvisionedReadCapacityAutoScalingSettings,
    rgsiasdProvisionedWriteCapacityAutoScalingSettings,
    rgsiasdIndexStatus,

    -- * ReplicaGlobalSecondaryIndexAutoScalingUpdate
    ReplicaGlobalSecondaryIndexAutoScalingUpdate (..),
    replicaGlobalSecondaryIndexAutoScalingUpdate,
    rgsiasuIndexName,
    rgsiasuProvisionedReadCapacityAutoScalingUpdate,

    -- * ReplicaGlobalSecondaryIndexDescription
    ReplicaGlobalSecondaryIndexDescription (..),
    replicaGlobalSecondaryIndexDescription,
    rgsidIndexName,
    rgsidProvisionedThroughputOverride,

    -- * ReplicaGlobalSecondaryIndexSettingsDescription
    ReplicaGlobalSecondaryIndexSettingsDescription (..),
    replicaGlobalSecondaryIndexSettingsDescription,
    rgsisdProvisionedWriteCapacityUnits,
    rgsisdProvisionedReadCapacityUnits,
    rgsisdProvisionedReadCapacityAutoScalingSettings,
    rgsisdProvisionedWriteCapacityAutoScalingSettings,
    rgsisdIndexStatus,
    rgsisdIndexName,

    -- * ReplicaGlobalSecondaryIndexSettingsUpdate
    ReplicaGlobalSecondaryIndexSettingsUpdate (..),
    replicaGlobalSecondaryIndexSettingsUpdate,
    rgsisuProvisionedReadCapacityUnits,
    rgsisuProvisionedReadCapacityAutoScalingSettingsUpdate,
    rgsisuIndexName,

    -- * ReplicaSettingsDescription
    ReplicaSettingsDescription (..),
    replicaSettingsDescription,
    rsdReplicaBillingModeSummary,
    rsdReplicaProvisionedReadCapacityAutoScalingSettings,
    rsdReplicaProvisionedWriteCapacityAutoScalingSettings,
    rsdReplicaGlobalSecondaryIndexSettings,
    rsdReplicaProvisionedWriteCapacityUnits,
    rsdReplicaStatus,
    rsdReplicaProvisionedReadCapacityUnits,
    rsdRegionName,

    -- * ReplicaSettingsUpdate
    ReplicaSettingsUpdate (..),
    replicaSettingsUpdate,
    rsuReplicaGlobalSecondaryIndexSettingsUpdate,
    rsuReplicaProvisionedReadCapacityUnits,
    rsuReplicaProvisionedReadCapacityAutoScalingSettingsUpdate,
    rsuRegionName,

    -- * ReplicaUpdate
    ReplicaUpdate (..),
    replicaUpdate,
    ruCreate,
    ruDelete,

    -- * ReplicationGroupUpdate
    ReplicationGroupUpdate (..),
    replicationGroupUpdate,
    rguCreate,
    rguUpdate,
    rguDelete,

    -- * RestoreSummary
    RestoreSummary (..),
    restoreSummary,
    rsSourceBackupARN,
    rsSourceTableARN,
    rsRestoreDateTime,
    rsRestoreInProgress,

    -- * SSEDescription
    SSEDescription (..),
    sSEDescription,
    ssedStatus,
    ssedKMSMasterKeyARN,
    ssedInaccessibleEncryptionDateTime,
    ssedSSEType,

    -- * SSESpecification
    SSESpecification (..),
    sSESpecification,
    ssesKMSMasterKeyId,
    ssesEnabled,
    ssesSSEType,

    -- * SourceTableDetails
    SourceTableDetails (..),
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

    -- * SourceTableFeatureDetails
    SourceTableFeatureDetails (..),
    sourceTableFeatureDetails,
    stfdLocalSecondaryIndexes,
    stfdGlobalSecondaryIndexes,
    stfdTimeToLiveDescription,
    stfdSSEDescription,
    stfdStreamDescription,

    -- * StreamSpecification
    StreamSpecification (..),
    streamSpecification,
    ssStreamViewType,
    ssStreamEnabled,

    -- * TableAutoScalingDescription
    TableAutoScalingDescription (..),
    tableAutoScalingDescription,
    tasdTableName,
    tasdReplicas,
    tasdTableStatus,

    -- * TableDescription
    TableDescription (..),
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

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TimeToLiveDescription
    TimeToLiveDescription (..),
    timeToLiveDescription,
    ttldTimeToLiveStatus,
    ttldAttributeName,

    -- * TimeToLiveSpecification
    TimeToLiveSpecification (..),
    timeToLiveSpecification,
    ttlsEnabled,
    ttlsAttributeName,

    -- * TransactGetItem
    TransactGetItem (..),
    transactGetItem,
    tgiGet,

    -- * TransactWriteItem
    TransactWriteItem (..),
    transactWriteItem,
    twiPut,
    twiConditionCheck,
    twiUpdate,
    twiDelete,

    -- * Update
    Update (..),
    update,
    uExpressionAttributeValues,
    uReturnValuesOnConditionCheckFailure,
    uExpressionAttributeNames,
    uConditionExpression,
    uKey,
    uUpdateExpression,
    uTableName,

    -- * UpdateGlobalSecondaryIndexAction
    UpdateGlobalSecondaryIndexAction (..),
    updateGlobalSecondaryIndexAction,
    ugsiaIndexName,
    ugsiaProvisionedThroughput,

    -- * UpdateReplicationGroupMemberAction
    UpdateReplicationGroupMemberAction (..),
    updateReplicationGroupMemberAction,
    urgmaGlobalSecondaryIndexes,
    urgmaProvisionedThroughputOverride,
    urgmaKMSMasterKeyId,
    urgmaRegionName,

    -- * WriteRequest
    WriteRequest (..),
    writeRequest,
    wrDeleteRequest,
    wrPutRequest,
  )
where

import Network.AWS.DynamoDB.Types.ArchivalSummary
import Network.AWS.DynamoDB.Types.AttributeAction
import Network.AWS.DynamoDB.Types.AttributeDefinition
import Network.AWS.DynamoDB.Types.AttributeValue
import Network.AWS.DynamoDB.Types.AttributeValueUpdate
import Network.AWS.DynamoDB.Types.AutoScalingPolicyDescription
import Network.AWS.DynamoDB.Types.AutoScalingPolicyUpdate
import Network.AWS.DynamoDB.Types.AutoScalingSettingsDescription
import Network.AWS.DynamoDB.Types.AutoScalingSettingsUpdate
import Network.AWS.DynamoDB.Types.AutoScalingTargetTrackingScalingPolicyConfigurationDescription
import Network.AWS.DynamoDB.Types.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
import Network.AWS.DynamoDB.Types.BackupDescription
import Network.AWS.DynamoDB.Types.BackupDetails
import Network.AWS.DynamoDB.Types.BackupStatus
import Network.AWS.DynamoDB.Types.BackupSummary
import Network.AWS.DynamoDB.Types.BackupType
import Network.AWS.DynamoDB.Types.BackupTypeFilter
import Network.AWS.DynamoDB.Types.BatchStatementError
import Network.AWS.DynamoDB.Types.BatchStatementErrorCodeEnum
import Network.AWS.DynamoDB.Types.BatchStatementRequest
import Network.AWS.DynamoDB.Types.BatchStatementResponse
import Network.AWS.DynamoDB.Types.BillingMode
import Network.AWS.DynamoDB.Types.BillingModeSummary
import Network.AWS.DynamoDB.Types.Capacity
import Network.AWS.DynamoDB.Types.ComparisonOperator
import Network.AWS.DynamoDB.Types.Condition
import Network.AWS.DynamoDB.Types.ConditionCheck
import Network.AWS.DynamoDB.Types.ConditionalOperator
import Network.AWS.DynamoDB.Types.ConsumedCapacity
import Network.AWS.DynamoDB.Types.ContinuousBackupsDescription
import Network.AWS.DynamoDB.Types.ContinuousBackupsStatus
import Network.AWS.DynamoDB.Types.ContributorInsightsAction
import Network.AWS.DynamoDB.Types.ContributorInsightsStatus
import Network.AWS.DynamoDB.Types.ContributorInsightsSummary
import Network.AWS.DynamoDB.Types.CreateGlobalSecondaryIndexAction
import Network.AWS.DynamoDB.Types.CreateReplicaAction
import Network.AWS.DynamoDB.Types.CreateReplicationGroupMemberAction
import Network.AWS.DynamoDB.Types.Delete
import Network.AWS.DynamoDB.Types.DeleteGlobalSecondaryIndexAction
import Network.AWS.DynamoDB.Types.DeleteReplicaAction
import Network.AWS.DynamoDB.Types.DeleteReplicationGroupMemberAction
import Network.AWS.DynamoDB.Types.DeleteRequest
import Network.AWS.DynamoDB.Types.DestinationStatus
import Network.AWS.DynamoDB.Types.Endpoint
import Network.AWS.DynamoDB.Types.ExpectedAttributeValue
import Network.AWS.DynamoDB.Types.ExportDescription
import Network.AWS.DynamoDB.Types.ExportFormat
import Network.AWS.DynamoDB.Types.ExportStatus
import Network.AWS.DynamoDB.Types.ExportSummary
import Network.AWS.DynamoDB.Types.FailureException
import Network.AWS.DynamoDB.Types.Get
import Network.AWS.DynamoDB.Types.GlobalSecondaryIndex
import Network.AWS.DynamoDB.Types.GlobalSecondaryIndexAutoScalingUpdate
import Network.AWS.DynamoDB.Types.GlobalSecondaryIndexDescription
import Network.AWS.DynamoDB.Types.GlobalSecondaryIndexInfo
import Network.AWS.DynamoDB.Types.GlobalSecondaryIndexUpdate
import Network.AWS.DynamoDB.Types.GlobalTable
import Network.AWS.DynamoDB.Types.GlobalTableDescription
import Network.AWS.DynamoDB.Types.GlobalTableGlobalSecondaryIndexSettingsUpdate
import Network.AWS.DynamoDB.Types.GlobalTableStatus
import Network.AWS.DynamoDB.Types.IndexStatus
import Network.AWS.DynamoDB.Types.ItemCollectionMetrics
import Network.AWS.DynamoDB.Types.ItemResponse
import Network.AWS.DynamoDB.Types.KeySchemaElement
import Network.AWS.DynamoDB.Types.KeyType
import Network.AWS.DynamoDB.Types.KeysAndAttributes
import Network.AWS.DynamoDB.Types.KinesisDataStreamDestination
import Network.AWS.DynamoDB.Types.KinesisStreamingDestinationInput
import Network.AWS.DynamoDB.Types.KinesisStreamingDestinationOutput
import Network.AWS.DynamoDB.Types.LocalSecondaryIndex
import Network.AWS.DynamoDB.Types.LocalSecondaryIndexDescription
import Network.AWS.DynamoDB.Types.LocalSecondaryIndexInfo
import Network.AWS.DynamoDB.Types.ParameterizedStatement
import Network.AWS.DynamoDB.Types.PointInTimeRecoveryDescription
import Network.AWS.DynamoDB.Types.PointInTimeRecoverySpecification
import Network.AWS.DynamoDB.Types.PointInTimeRecoveryStatus
import Network.AWS.DynamoDB.Types.Projection
import Network.AWS.DynamoDB.Types.ProjectionType
import Network.AWS.DynamoDB.Types.ProvisionedThroughput
import Network.AWS.DynamoDB.Types.ProvisionedThroughputDescription
import Network.AWS.DynamoDB.Types.ProvisionedThroughputOverride
import Network.AWS.DynamoDB.Types.Put
import Network.AWS.DynamoDB.Types.PutRequest
import Network.AWS.DynamoDB.Types.Replica
import Network.AWS.DynamoDB.Types.ReplicaAutoScalingDescription
import Network.AWS.DynamoDB.Types.ReplicaAutoScalingUpdate
import Network.AWS.DynamoDB.Types.ReplicaDescription
import Network.AWS.DynamoDB.Types.ReplicaGlobalSecondaryIndex
import Network.AWS.DynamoDB.Types.ReplicaGlobalSecondaryIndexAutoScalingDescription
import Network.AWS.DynamoDB.Types.ReplicaGlobalSecondaryIndexAutoScalingUpdate
import Network.AWS.DynamoDB.Types.ReplicaGlobalSecondaryIndexDescription
import Network.AWS.DynamoDB.Types.ReplicaGlobalSecondaryIndexSettingsDescription
import Network.AWS.DynamoDB.Types.ReplicaGlobalSecondaryIndexSettingsUpdate
import Network.AWS.DynamoDB.Types.ReplicaSettingsDescription
import Network.AWS.DynamoDB.Types.ReplicaSettingsUpdate
import Network.AWS.DynamoDB.Types.ReplicaStatus
import Network.AWS.DynamoDB.Types.ReplicaUpdate
import Network.AWS.DynamoDB.Types.ReplicationGroupUpdate
import Network.AWS.DynamoDB.Types.RestoreSummary
import Network.AWS.DynamoDB.Types.ReturnConsumedCapacity
import Network.AWS.DynamoDB.Types.ReturnItemCollectionMetrics
import Network.AWS.DynamoDB.Types.ReturnValue
import Network.AWS.DynamoDB.Types.ReturnValuesOnConditionCheckFailure
import Network.AWS.DynamoDB.Types.S3SseAlgorithm
import Network.AWS.DynamoDB.Types.SSEDescription
import Network.AWS.DynamoDB.Types.SSESpecification
import Network.AWS.DynamoDB.Types.SSEStatus
import Network.AWS.DynamoDB.Types.SSEType
import Network.AWS.DynamoDB.Types.ScalarAttributeType
import Network.AWS.DynamoDB.Types.Select
import Network.AWS.DynamoDB.Types.SourceTableDetails
import Network.AWS.DynamoDB.Types.SourceTableFeatureDetails
import Network.AWS.DynamoDB.Types.StreamSpecification
import Network.AWS.DynamoDB.Types.StreamViewType
import Network.AWS.DynamoDB.Types.TableAutoScalingDescription
import Network.AWS.DynamoDB.Types.TableDescription
import Network.AWS.DynamoDB.Types.TableStatus
import Network.AWS.DynamoDB.Types.Tag
import Network.AWS.DynamoDB.Types.TimeToLiveDescription
import Network.AWS.DynamoDB.Types.TimeToLiveSpecification
import Network.AWS.DynamoDB.Types.TimeToLiveStatus
import Network.AWS.DynamoDB.Types.TransactGetItem
import Network.AWS.DynamoDB.Types.TransactWriteItem
import Network.AWS.DynamoDB.Types.Update
import Network.AWS.DynamoDB.Types.UpdateGlobalSecondaryIndexAction
import Network.AWS.DynamoDB.Types.UpdateReplicationGroupMemberAction
import Network.AWS.DynamoDB.Types.WriteRequest
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2012-08-10@ of the Amazon DynamoDB SDK configuration.
dynamoDB :: Service
dynamoDB =
  Service
    { _svcAbbrev = "DynamoDB",
      _svcSigner = v4,
      _svcPrefix = "dynamodb",
      _svcVersion = "2012-08-10",
      _svcEndpoint = defaultEndpoint dynamoDB,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "DynamoDB",
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
      | has
          ( hasCode "TransactionInProgressException"
              . hasStatus 400
          )
          e =
        Just "still_processing"
      | otherwise = Nothing

-- | The specified @ExportTime@ is outside of the point in time recovery window.
_InvalidExportTimeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidExportTimeException =
  _MatchServiceError
    dynamoDB
    "InvalidExportTimeException"

-- | A target table with the specified name already exists.
_TableAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_TableAlreadyExistsException =
  _MatchServiceError
    dynamoDB
    "TableAlreadyExistsException"

-- | The specified global table already exists.
_GlobalTableAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_GlobalTableAlreadyExistsException =
  _MatchServiceError
    dynamoDB
    "GlobalTableAlreadyExistsException"

-- | A condition specified in the operation could not be evaluated.
_ConditionalCheckFailedException :: AsError a => Getting (First ServiceError) a ServiceError
_ConditionalCheckFailedException =
  _MatchServiceError
    dynamoDB
    "ConditionalCheckFailedException"

-- | The specified replica is already part of the global table.
_ReplicaAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ReplicaAlreadyExistsException =
  _MatchServiceError
    dynamoDB
    "ReplicaAlreadyExistsException"

-- | The transaction with the given request token is already in progress.
_TransactionInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_TransactionInProgressException =
  _MatchServiceError
    dynamoDB
    "TransactionInProgressException"

-- | The specified global table does not exist.
_GlobalTableNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_GlobalTableNotFoundException =
  _MatchServiceError
    dynamoDB
    "GlobalTableNotFoundException"

-- | An invalid restore time was specified. RestoreDateTime must be between EarliestRestorableDateTime and LatestRestorableDateTime.
_InvalidRestoreTimeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRestoreTimeException =
  _MatchServiceError
    dynamoDB
    "InvalidRestoreTimeException"

-- | Point in time recovery has not yet been enabled for this source table.
_PointInTimeRecoveryUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_PointInTimeRecoveryUnavailableException =
  _MatchServiceError
    dynamoDB
    "PointInTimeRecoveryUnavailableException"

-- | The specified export was not found.
_ExportNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ExportNotFoundException =
  _MatchServiceError
    dynamoDB
    "ExportNotFoundException"

-- | There is another ongoing conflicting backup control plane operation on the table. The backup is either being created, deleted or restored to a table.
_BackupInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_BackupInUseException =
  _MatchServiceError dynamoDB "BackupInUseException"

-- | Backups have not yet been enabled for this table.
_ContinuousBackupsUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ContinuousBackupsUnavailableException =
  _MatchServiceError
    dynamoDB
    "ContinuousBackupsUnavailableException"

-- | There was a conflict when writing to the specified S3 bucket.
_ExportConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ExportConflictException =
  _MatchServiceError
    dynamoDB
    "ExportConflictException"

-- | There was an attempt to insert an item with the same primary key as an item that already exists in the DynamoDB table.
_DuplicateItemException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateItemException =
  _MatchServiceError
    dynamoDB
    "DuplicateItemException"

-- | A target table with the specified name is either being created or deleted.
_TableInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_TableInUseException =
  _MatchServiceError dynamoDB "TableInUseException"

-- | Operation was rejected because there is an ongoing transaction for the item.
_TransactionConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_TransactionConflictException =
  _MatchServiceError
    dynamoDB
    "TransactionConflictException"

-- | An error occurred on the server side.
_InternalServerError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerError =
  _MatchServiceError dynamoDB "InternalServerError"

-- | Throughput exceeds the current throughput quota for your account. Please contact AWS Support at <https://aws.amazon.com/support AWS Support> to request a quota increase.
_RequestLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_RequestLimitExceeded =
  _MatchServiceError dynamoDB "RequestLimitExceeded"

-- | An item collection is too large. This exception is only returned for tables that have one or more local secondary indexes.
_ItemCollectionSizeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ItemCollectionSizeLimitExceededException =
  _MatchServiceError
    dynamoDB
    "ItemCollectionSizeLimitExceededException"

-- | The specified replica is no longer part of the global table.
_ReplicaNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ReplicaNotFoundException =
  _MatchServiceError
    dynamoDB
    "ReplicaNotFoundException"

-- | The entire transaction request was canceled.
--
--
-- DynamoDB cancels a @TransactWriteItems@ request under the following circumstances:
--
--     * A condition in one of the condition expressions is not met.
--
--     * A table in the @TransactWriteItems@ request is in a different account or region.
--
--     * More than one action in the @TransactWriteItems@ operation targets the same item.
--
--     * There is insufficient provisioned capacity for the transaction to be completed.
--
--     * An item size becomes too large (larger than 400 KB), or a local secondary index (LSI) becomes too large, or a similar validation error occurs because of changes made by the transaction.
--
--     * There is a user error, such as an invalid data format.
--
--
--
-- DynamoDB cancels a @TransactGetItems@ request under the following circumstances:
--
--     * There is an ongoing @TransactGetItems@ operation that conflicts with a concurrent @PutItem@ , @UpdateItem@ , @DeleteItem@ or @TransactWriteItems@ request. In this case the @TransactGetItems@ operation fails with a @TransactionCanceledException@ .
--
--     * A table in the @TransactGetItems@ request is in a different account or region.
--
--     * There is insufficient provisioned capacity for the transaction to be completed.
--
--     * There is a user error, such as an invalid data format.
--
--
--
-- Cancellation reason codes and possible error messages:
--
--     * No Errors:
--
--     * Code: @NONE@
--
--     * Message: @null@
--
--
--
--     * Conditional Check Failed:
--
--     * Code: @ConditionalCheckFailed@
--
--     * Message: The conditional request failed.
--
--
--
--     * Item Collection Size Limit Exceeded:
--
--     * Code: @ItemCollectionSizeLimitExceeded@
--
--     * Message: Collection size exceeded.
--
--
--
--     * Transaction Conflict:
--
--     * Code: @TransactionConflict@
--
--     * Message: Transaction is ongoing for the item.
--
--
--
--     * Provisioned Throughput Exceeded:
--
--     * Code: @ProvisionedThroughputExceeded@
--
--     * Messages:
--
--     * The level of configured provisioned throughput for the table was exceeded. Consider increasing your provisioning level with the UpdateTable API.
--
--     * The level of configured provisioned throughput for one or more global secondary indexes of the table was exceeded. Consider increasing your provisioning level for the under-provisioned global secondary indexes with the UpdateTable API.
--
--
--
--
--
--     * Throttling Error:
--
--     * Code: @ThrottlingError@
--
--     * Messages:
--
--     * Throughput exceeds the current capacity of your table or index. DynamoDB is automatically scaling your table or index so please try again shortly. If exceptions persist, check if you have a hot key: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-partition-key-design.html.
--
--     * Throughput exceeds the current capacity for one or more global secondary indexes. DynamoDB is automatically scaling your index so please try again shortly.
--
--
--
--
--
--     * Validation Error:
--
--     * Code: @ValidationError@
--
--     * Messages:
--
--     * One or more parameter values were invalid.
--
--     * The update expression attempted to update the secondary index key beyond allowed size limits.
--
--     * The update expression attempted to update the secondary index key to unsupported type.
--
--     * An operand in the update expression has an incorrect data type.
--
--     * Item size to update has exceeded the maximum allowed size.
--
--     * Number overflow. Attempting to store a number with magnitude larger than supported range.
--
--     * Type mismatch for attribute to update.
--
--     * Nesting Levels have exceeded supported limits.
--
--     * The document path provided in the update expression is invalid for update.
--
--     * The provided expression refers to an attribute that does not exist in the item.
_TransactionCanceledException :: AsError a => Getting (First ServiceError) a ServiceError
_TransactionCanceledException =
  _MatchServiceError
    dynamoDB
    "TransactionCanceledException"

-- | The operation conflicts with the resource's availability. For example, you attempted to recreate an existing table, or tried to delete a table currently in the @CREATING@ state.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError
    dynamoDB
    "ResourceInUseException"

-- | There is no limit to the number of daily on-demand backups that can be taken.
--
--
-- Up to 50 simultaneous table operations are allowed per account. These operations include @CreateTable@ , @UpdateTable@ , @DeleteTable@ ,@UpdateTimeToLive@ , @RestoreTableFromBackup@ , and @RestoreTableToPointInTime@ .
--
-- The only exception is when you are creating a table with one or more secondary indexes. You can have up to 25 such requests running at a time; however, if the table or index specifications are complex, DynamoDB might temporarily reduce the number of concurrent operations.
--
-- There is a soft account quota of 256 tables.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    dynamoDB
    "LimitExceededException"

-- | Your request rate is too high. The AWS SDKs for DynamoDB automatically retry requests that receive this exception. Your request is eventually successful, unless your retry queue is too large to finish. Reduce the frequency of requests and use exponential backoff. For more information, go to <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#Programming.Errors.RetryAndBackoff Error Retries and Exponential Backoff> in the /Amazon DynamoDB Developer Guide/ .
_ProvisionedThroughputExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ProvisionedThroughputExceededException =
  _MatchServiceError
    dynamoDB
    "ProvisionedThroughputExceededException"

-- | The operation tried to access a nonexistent table or index. The resource might not be specified correctly, or its status might not be @ACTIVE@ .
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    dynamoDB
    "ResourceNotFoundException"

-- | DynamoDB rejected the request because you retried a request with a different payload but with an idempotent token that was already used.
_IdempotentParameterMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_IdempotentParameterMismatchException =
  _MatchServiceError
    dynamoDB
    "IdempotentParameterMismatchException"

-- | Backup not found for the given BackupARN.
_BackupNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_BackupNotFoundException =
  _MatchServiceError
    dynamoDB
    "BackupNotFoundException"

-- | The operation tried to access a nonexistent index.
_IndexNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_IndexNotFoundException =
  _MatchServiceError
    dynamoDB
    "IndexNotFoundException"

-- | A source table with the name @TableName@ does not currently exist within the subscriber's account.
_TableNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_TableNotFoundException =
  _MatchServiceError
    dynamoDB
    "TableNotFoundException"
