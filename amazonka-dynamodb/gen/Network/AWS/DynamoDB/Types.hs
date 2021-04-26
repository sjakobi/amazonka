{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    newArchivalSummary,

    -- * AttributeDefinition
    AttributeDefinition (..),
    newAttributeDefinition,

    -- * AttributeValue
    AttributeValue (..),
    newAttributeValue,

    -- * AttributeValueUpdate
    AttributeValueUpdate (..),
    newAttributeValueUpdate,

    -- * AutoScalingPolicyDescription
    AutoScalingPolicyDescription (..),
    newAutoScalingPolicyDescription,

    -- * AutoScalingPolicyUpdate
    AutoScalingPolicyUpdate (..),
    newAutoScalingPolicyUpdate,

    -- * AutoScalingSettingsDescription
    AutoScalingSettingsDescription (..),
    newAutoScalingSettingsDescription,

    -- * AutoScalingSettingsUpdate
    AutoScalingSettingsUpdate (..),
    newAutoScalingSettingsUpdate,

    -- * AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription (..),
    newAutoScalingTargetTrackingScalingPolicyConfigurationDescription,

    -- * AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate (..),
    newAutoScalingTargetTrackingScalingPolicyConfigurationUpdate,

    -- * BackupDescription
    BackupDescription (..),
    newBackupDescription,

    -- * BackupDetails
    BackupDetails (..),
    newBackupDetails,

    -- * BackupSummary
    BackupSummary (..),
    newBackupSummary,

    -- * BatchStatementError
    BatchStatementError (..),
    newBatchStatementError,

    -- * BatchStatementRequest
    BatchStatementRequest (..),
    newBatchStatementRequest,

    -- * BatchStatementResponse
    BatchStatementResponse (..),
    newBatchStatementResponse,

    -- * BillingModeSummary
    BillingModeSummary (..),
    newBillingModeSummary,

    -- * Capacity
    Capacity (..),
    newCapacity,

    -- * Condition
    Condition (..),
    newCondition,

    -- * ConditionCheck
    ConditionCheck (..),
    newConditionCheck,

    -- * ConsumedCapacity
    ConsumedCapacity (..),
    newConsumedCapacity,

    -- * ContinuousBackupsDescription
    ContinuousBackupsDescription (..),
    newContinuousBackupsDescription,

    -- * ContributorInsightsSummary
    ContributorInsightsSummary (..),
    newContributorInsightsSummary,

    -- * CreateGlobalSecondaryIndexAction
    CreateGlobalSecondaryIndexAction (..),
    newCreateGlobalSecondaryIndexAction,

    -- * CreateReplicaAction
    CreateReplicaAction (..),
    newCreateReplicaAction,

    -- * CreateReplicationGroupMemberAction
    CreateReplicationGroupMemberAction (..),
    newCreateReplicationGroupMemberAction,

    -- * Delete
    Delete (..),
    newDelete,

    -- * DeleteGlobalSecondaryIndexAction
    DeleteGlobalSecondaryIndexAction (..),
    newDeleteGlobalSecondaryIndexAction,

    -- * DeleteReplicaAction
    DeleteReplicaAction (..),
    newDeleteReplicaAction,

    -- * DeleteReplicationGroupMemberAction
    DeleteReplicationGroupMemberAction (..),
    newDeleteReplicationGroupMemberAction,

    -- * DeleteRequest
    DeleteRequest (..),
    newDeleteRequest,

    -- * Endpoint
    Endpoint (..),
    newEndpoint,

    -- * ExpectedAttributeValue
    ExpectedAttributeValue (..),
    newExpectedAttributeValue,

    -- * ExportDescription
    ExportDescription (..),
    newExportDescription,

    -- * ExportSummary
    ExportSummary (..),
    newExportSummary,

    -- * FailureException
    FailureException (..),
    newFailureException,

    -- * Get
    Get (..),
    newGet,

    -- * GlobalSecondaryIndex
    GlobalSecondaryIndex (..),
    newGlobalSecondaryIndex,

    -- * GlobalSecondaryIndexAutoScalingUpdate
    GlobalSecondaryIndexAutoScalingUpdate (..),
    newGlobalSecondaryIndexAutoScalingUpdate,

    -- * GlobalSecondaryIndexDescription
    GlobalSecondaryIndexDescription (..),
    newGlobalSecondaryIndexDescription,

    -- * GlobalSecondaryIndexInfo
    GlobalSecondaryIndexInfo (..),
    newGlobalSecondaryIndexInfo,

    -- * GlobalSecondaryIndexUpdate
    GlobalSecondaryIndexUpdate (..),
    newGlobalSecondaryIndexUpdate,

    -- * GlobalTable
    GlobalTable (..),
    newGlobalTable,

    -- * GlobalTableDescription
    GlobalTableDescription (..),
    newGlobalTableDescription,

    -- * GlobalTableGlobalSecondaryIndexSettingsUpdate
    GlobalTableGlobalSecondaryIndexSettingsUpdate (..),
    newGlobalTableGlobalSecondaryIndexSettingsUpdate,

    -- * ItemCollectionMetrics
    ItemCollectionMetrics (..),
    newItemCollectionMetrics,

    -- * ItemResponse
    ItemResponse (..),
    newItemResponse,

    -- * KeySchemaElement
    KeySchemaElement (..),
    newKeySchemaElement,

    -- * KeysAndAttributes
    KeysAndAttributes (..),
    newKeysAndAttributes,

    -- * KinesisDataStreamDestination
    KinesisDataStreamDestination (..),
    newKinesisDataStreamDestination,

    -- * KinesisStreamingDestinationInput
    KinesisStreamingDestinationInput (..),
    newKinesisStreamingDestinationInput,

    -- * KinesisStreamingDestinationOutput
    KinesisStreamingDestinationOutput (..),
    newKinesisStreamingDestinationOutput,

    -- * LocalSecondaryIndex
    LocalSecondaryIndex (..),
    newLocalSecondaryIndex,

    -- * LocalSecondaryIndexDescription
    LocalSecondaryIndexDescription (..),
    newLocalSecondaryIndexDescription,

    -- * LocalSecondaryIndexInfo
    LocalSecondaryIndexInfo (..),
    newLocalSecondaryIndexInfo,

    -- * ParameterizedStatement
    ParameterizedStatement (..),
    newParameterizedStatement,

    -- * PointInTimeRecoveryDescription
    PointInTimeRecoveryDescription (..),
    newPointInTimeRecoveryDescription,

    -- * PointInTimeRecoverySpecification
    PointInTimeRecoverySpecification (..),
    newPointInTimeRecoverySpecification,

    -- * Projection
    Projection (..),
    newProjection,

    -- * ProvisionedThroughput
    ProvisionedThroughput (..),
    newProvisionedThroughput,

    -- * ProvisionedThroughputDescription
    ProvisionedThroughputDescription (..),
    newProvisionedThroughputDescription,

    -- * ProvisionedThroughputOverride
    ProvisionedThroughputOverride (..),
    newProvisionedThroughputOverride,

    -- * Put
    Put (..),
    newPut,

    -- * PutRequest
    PutRequest (..),
    newPutRequest,

    -- * Replica
    Replica (..),
    newReplica,

    -- * ReplicaAutoScalingDescription
    ReplicaAutoScalingDescription (..),
    newReplicaAutoScalingDescription,

    -- * ReplicaAutoScalingUpdate
    ReplicaAutoScalingUpdate (..),
    newReplicaAutoScalingUpdate,

    -- * ReplicaDescription
    ReplicaDescription (..),
    newReplicaDescription,

    -- * ReplicaGlobalSecondaryIndex
    ReplicaGlobalSecondaryIndex (..),
    newReplicaGlobalSecondaryIndex,

    -- * ReplicaGlobalSecondaryIndexAutoScalingDescription
    ReplicaGlobalSecondaryIndexAutoScalingDescription (..),
    newReplicaGlobalSecondaryIndexAutoScalingDescription,

    -- * ReplicaGlobalSecondaryIndexAutoScalingUpdate
    ReplicaGlobalSecondaryIndexAutoScalingUpdate (..),
    newReplicaGlobalSecondaryIndexAutoScalingUpdate,

    -- * ReplicaGlobalSecondaryIndexDescription
    ReplicaGlobalSecondaryIndexDescription (..),
    newReplicaGlobalSecondaryIndexDescription,

    -- * ReplicaGlobalSecondaryIndexSettingsDescription
    ReplicaGlobalSecondaryIndexSettingsDescription (..),
    newReplicaGlobalSecondaryIndexSettingsDescription,

    -- * ReplicaGlobalSecondaryIndexSettingsUpdate
    ReplicaGlobalSecondaryIndexSettingsUpdate (..),
    newReplicaGlobalSecondaryIndexSettingsUpdate,

    -- * ReplicaSettingsDescription
    ReplicaSettingsDescription (..),
    newReplicaSettingsDescription,

    -- * ReplicaSettingsUpdate
    ReplicaSettingsUpdate (..),
    newReplicaSettingsUpdate,

    -- * ReplicaUpdate
    ReplicaUpdate (..),
    newReplicaUpdate,

    -- * ReplicationGroupUpdate
    ReplicationGroupUpdate (..),
    newReplicationGroupUpdate,

    -- * RestoreSummary
    RestoreSummary (..),
    newRestoreSummary,

    -- * SSEDescription
    SSEDescription (..),
    newSSEDescription,

    -- * SSESpecification
    SSESpecification (..),
    newSSESpecification,

    -- * SourceTableDetails
    SourceTableDetails (..),
    newSourceTableDetails,

    -- * SourceTableFeatureDetails
    SourceTableFeatureDetails (..),
    newSourceTableFeatureDetails,

    -- * StreamSpecification
    StreamSpecification (..),
    newStreamSpecification,

    -- * TableAutoScalingDescription
    TableAutoScalingDescription (..),
    newTableAutoScalingDescription,

    -- * TableDescription
    TableDescription (..),
    newTableDescription,

    -- * Tag
    Tag (..),
    newTag,

    -- * TimeToLiveDescription
    TimeToLiveDescription (..),
    newTimeToLiveDescription,

    -- * TimeToLiveSpecification
    TimeToLiveSpecification (..),
    newTimeToLiveSpecification,

    -- * TransactGetItem
    TransactGetItem (..),
    newTransactGetItem,

    -- * TransactWriteItem
    TransactWriteItem (..),
    newTransactWriteItem,

    -- * Update
    Update (..),
    newUpdate,

    -- * UpdateGlobalSecondaryIndexAction
    UpdateGlobalSecondaryIndexAction (..),
    newUpdateGlobalSecondaryIndexAction,

    -- * UpdateReplicationGroupMemberAction
    UpdateReplicationGroupMemberAction (..),
    newUpdateReplicationGroupMemberAction,

    -- * WriteRequest
    WriteRequest (..),
    newWriteRequest,
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2012-08-10@ of the Amazon DynamoDB SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "DynamoDB",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "dynamodb",
      Prelude._svcVersion = "2012-08-10",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "DynamoDB",
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
      | Lens.has
          ( Prelude.hasCode "TransactionInProgressException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "still_processing"
      | Prelude.otherwise = Prelude.Nothing

-- | The specified @ExportTime@ is outside of the point in time recovery
-- window.
_InvalidExportTimeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidExportTimeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidExportTimeException"

-- | A target table with the specified name already exists.
_TableAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TableAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "TableAlreadyExistsException"

-- | The specified global table already exists.
_GlobalTableAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_GlobalTableAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "GlobalTableAlreadyExistsException"

-- | A condition specified in the operation could not be evaluated.
_ConditionalCheckFailedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConditionalCheckFailedException =
  Prelude._MatchServiceError
    defaultService
    "ConditionalCheckFailedException"

-- | The specified replica is already part of the global table.
_ReplicaAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReplicaAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "ReplicaAlreadyExistsException"

-- | The transaction with the given request token is already in progress.
_TransactionInProgressException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TransactionInProgressException =
  Prelude._MatchServiceError
    defaultService
    "TransactionInProgressException"

-- | The specified global table does not exist.
_GlobalTableNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_GlobalTableNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "GlobalTableNotFoundException"

-- | An invalid restore time was specified. RestoreDateTime must be between
-- EarliestRestorableDateTime and LatestRestorableDateTime.
_InvalidRestoreTimeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRestoreTimeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidRestoreTimeException"

-- | Point in time recovery has not yet been enabled for this source table.
_PointInTimeRecoveryUnavailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PointInTimeRecoveryUnavailableException =
  Prelude._MatchServiceError
    defaultService
    "PointInTimeRecoveryUnavailableException"

-- | The specified export was not found.
_ExportNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ExportNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ExportNotFoundException"

-- | There is another ongoing conflicting backup control plane operation on
-- the table. The backup is either being created, deleted or restored to a
-- table.
_BackupInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BackupInUseException =
  Prelude._MatchServiceError
    defaultService
    "BackupInUseException"

-- | Backups have not yet been enabled for this table.
_ContinuousBackupsUnavailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ContinuousBackupsUnavailableException =
  Prelude._MatchServiceError
    defaultService
    "ContinuousBackupsUnavailableException"

-- | There was a conflict when writing to the specified S3 bucket.
_ExportConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ExportConflictException =
  Prelude._MatchServiceError
    defaultService
    "ExportConflictException"

-- | There was an attempt to insert an item with the same primary key as an
-- item that already exists in the DynamoDB table.
_DuplicateItemException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateItemException =
  Prelude._MatchServiceError
    defaultService
    "DuplicateItemException"

-- | A target table with the specified name is either being created or
-- deleted.
_TableInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TableInUseException =
  Prelude._MatchServiceError
    defaultService
    "TableInUseException"

-- | Operation was rejected because there is an ongoing transaction for the
-- item.
_TransactionConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TransactionConflictException =
  Prelude._MatchServiceError
    defaultService
    "TransactionConflictException"

-- | An error occurred on the server side.
_InternalServerError :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServerError =
  Prelude._MatchServiceError
    defaultService
    "InternalServerError"

-- | Throughput exceeds the current throughput quota for your account. Please
-- contact AWS Support at <https://aws.amazon.com/support AWS Support> to
-- request a quota increase.
_RequestLimitExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RequestLimitExceeded =
  Prelude._MatchServiceError
    defaultService
    "RequestLimitExceeded"

-- | An item collection is too large. This exception is only returned for
-- tables that have one or more local secondary indexes.
_ItemCollectionSizeLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ItemCollectionSizeLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "ItemCollectionSizeLimitExceededException"

-- | The specified replica is no longer part of the global table.
_ReplicaNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReplicaNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ReplicaNotFoundException"

-- | The entire transaction request was canceled.
--
-- DynamoDB cancels a @TransactWriteItems@ request under the following
-- circumstances:
--
-- -   A condition in one of the condition expressions is not met.
--
-- -   A table in the @TransactWriteItems@ request is in a different
--     account or region.
--
-- -   More than one action in the @TransactWriteItems@ operation targets
--     the same item.
--
-- -   There is insufficient provisioned capacity for the transaction to be
--     completed.
--
-- -   An item size becomes too large (larger than 400 KB), or a local
--     secondary index (LSI) becomes too large, or a similar validation
--     error occurs because of changes made by the transaction.
--
-- -   There is a user error, such as an invalid data format.
--
-- DynamoDB cancels a @TransactGetItems@ request under the following
-- circumstances:
--
-- -   There is an ongoing @TransactGetItems@ operation that conflicts with
--     a concurrent @PutItem@, @UpdateItem@, @DeleteItem@ or
--     @TransactWriteItems@ request. In this case the @TransactGetItems@
--     operation fails with a @TransactionCanceledException@.
--
-- -   A table in the @TransactGetItems@ request is in a different account
--     or region.
--
-- -   There is insufficient provisioned capacity for the transaction to be
--     completed.
--
-- -   There is a user error, such as an invalid data format.
--
-- If using Java, DynamoDB lists the cancellation reasons on the
-- @CancellationReasons@ property. This property is not set for other
-- languages. Transaction cancellation reasons are ordered in the order of
-- requested items, if an item has no error it will have @NONE@ code and
-- @Null@ message.
--
-- Cancellation reason codes and possible error messages:
--
-- -   No Errors:
--
--     -   Code: @NONE@
--
--     -   Message: @null@
--
-- -   Conditional Check Failed:
--
--     -   Code: @ConditionalCheckFailed@
--
--     -   Message: The conditional request failed.
--
-- -   Item Collection Size Limit Exceeded:
--
--     -   Code: @ItemCollectionSizeLimitExceeded@
--
--     -   Message: Collection size exceeded.
--
-- -   Transaction Conflict:
--
--     -   Code: @TransactionConflict@
--
--     -   Message: Transaction is ongoing for the item.
--
-- -   Provisioned Throughput Exceeded:
--
--     -   Code: @ProvisionedThroughputExceeded@
--
--     -   Messages:
--
--         -   The level of configured provisioned throughput for the table
--             was exceeded. Consider increasing your provisioning level
--             with the UpdateTable API.
--
--             This Message is received when provisioned throughput is
--             exceeded is on a provisioned DynamoDB table.
--
--         -   The level of configured provisioned throughput for one or
--             more global secondary indexes of the table was exceeded.
--             Consider increasing your provisioning level for the
--             under-provisioned global secondary indexes with the
--             UpdateTable API.
--
--             This message is returned when provisioned throughput is
--             exceeded is on a provisioned GSI.
--
-- -   Throttling Error:
--
--     -   Code: @ThrottlingError@
--
--     -   Messages:
--
--         -   Throughput exceeds the current capacity of your table or
--             index. DynamoDB is automatically scaling your table or index
--             so please try again shortly. If exceptions persist, check if
--             you have a hot key:
--             https:\/\/docs.aws.amazon.com\/amazondynamodb\/latest\/developerguide\/bp-partition-key-design.html.
--
--             This message is returned when writes get throttled on an
--             On-Demand table as DynamoDB is automatically scaling the
--             table.
--
--         -   Throughput exceeds the current capacity for one or more
--             global secondary indexes. DynamoDB is automatically scaling
--             your index so please try again shortly.
--
--             This message is returned when when writes get throttled on
--             an On-Demand GSI as DynamoDB is automatically scaling the
--             GSI.
--
-- -   Validation Error:
--
--     -   Code: @ValidationError@
--
--     -   Messages:
--
--         -   One or more parameter values were invalid.
--
--         -   The update expression attempted to update the secondary
--             index key beyond allowed size limits.
--
--         -   The update expression attempted to update the secondary
--             index key to unsupported type.
--
--         -   An operand in the update expression has an incorrect data
--             type.
--
--         -   Item size to update has exceeded the maximum allowed size.
--
--         -   Number overflow. Attempting to store a number with magnitude
--             larger than supported range.
--
--         -   Type mismatch for attribute to update.
--
--         -   Nesting Levels have exceeded supported limits.
--
--         -   The document path provided in the update expression is
--             invalid for update.
--
--         -   The provided expression refers to an attribute that does not
--             exist in the item.
_TransactionCanceledException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TransactionCanceledException =
  Prelude._MatchServiceError
    defaultService
    "TransactionCanceledException"

-- | The operation conflicts with the resource\'s availability. For example,
-- you attempted to recreate an existing table, or tried to delete a table
-- currently in the @CREATING@ state.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | There is no limit to the number of daily on-demand backups that can be
-- taken.
--
-- Up to 50 simultaneous table operations are allowed per account. These
-- operations include @CreateTable@, @UpdateTable@,
-- @DeleteTable@,@UpdateTimeToLive@, @RestoreTableFromBackup@, and
-- @RestoreTableToPointInTime@.
--
-- The only exception is when you are creating a table with one or more
-- secondary indexes. You can have up to 25 such requests running at a
-- time; however, if the table or index specifications are complex,
-- DynamoDB might temporarily reduce the number of concurrent operations.
--
-- There is a soft account quota of 256 tables.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | Your request rate is too high. The AWS SDKs for DynamoDB automatically
-- retry requests that receive this exception. Your request is eventually
-- successful, unless your retry queue is too large to finish. Reduce the
-- frequency of requests and use exponential backoff. For more information,
-- go to
-- <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#Programming.Errors.RetryAndBackoff Error Retries and Exponential Backoff>
-- in the /Amazon DynamoDB Developer Guide/.
_ProvisionedThroughputExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ProvisionedThroughputExceededException =
  Prelude._MatchServiceError
    defaultService
    "ProvisionedThroughputExceededException"

-- | The operation tried to access a nonexistent table or index. The resource
-- might not be specified correctly, or its status might not be @ACTIVE@.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | DynamoDB rejected the request because you retried a request with a
-- different payload but with an idempotent token that was already used.
_IdempotentParameterMismatchException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IdempotentParameterMismatchException =
  Prelude._MatchServiceError
    defaultService
    "IdempotentParameterMismatchException"

-- | Backup not found for the given BackupARN.
_BackupNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BackupNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "BackupNotFoundException"

-- | The operation tried to access a nonexistent index.
_IndexNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IndexNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "IndexNotFoundException"

-- | A source table with the name @TableName@ does not currently exist within
-- the subscriber\'s account.
_TableNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TableNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "TableNotFoundException"
