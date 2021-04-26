{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ObjectNotInActiveTierError,
    _NoSuchKey,
    _ObjectAlreadyInActiveTierError,
    _BucketAlreadyOwnedByYou,
    _NoSuchUpload,
    _InvalidObjectState,
    _BucketAlreadyExists,
    _NoSuchBucket,

    -- * Re-exported Types
    module Network.AWS.S3.Internal,

    -- * AnalyticsS3ExportFileFormat
    AnalyticsS3ExportFileFormat (..),

    -- * ArchiveStatus
    ArchiveStatus (..),

    -- * BucketAccelerateStatus
    BucketAccelerateStatus (..),

    -- * BucketCannedACL
    BucketCannedACL (..),

    -- * BucketLogsPermission
    BucketLogsPermission (..),

    -- * BucketVersioningStatus
    BucketVersioningStatus (..),

    -- * CompressionType
    CompressionType (..),

    -- * DeleteMarkerReplicationStatus
    DeleteMarkerReplicationStatus (..),

    -- * EncodingType
    EncodingType (..),

    -- * Event
    Event (..),

    -- * ExistingObjectReplicationStatus
    ExistingObjectReplicationStatus (..),

    -- * ExpirationStatus
    ExpirationStatus (..),

    -- * ExpressionType
    ExpressionType (..),

    -- * FileHeaderInfo
    FileHeaderInfo (..),

    -- * FilterRuleName
    FilterRuleName (..),

    -- * IntelligentTieringAccessTier
    IntelligentTieringAccessTier (..),

    -- * IntelligentTieringStatus
    IntelligentTieringStatus (..),

    -- * InventoryFormat
    InventoryFormat (..),

    -- * InventoryFrequency
    InventoryFrequency (..),

    -- * InventoryIncludedObjectVersions
    InventoryIncludedObjectVersions (..),

    -- * InventoryOptionalField
    InventoryOptionalField (..),

    -- * JSONType
    JSONType (..),

    -- * MFADelete
    MFADelete (..),

    -- * MFADeleteStatus
    MFADeleteStatus (..),

    -- * MetadataDirective
    MetadataDirective (..),

    -- * MetricsStatus
    MetricsStatus (..),

    -- * ObjectCannedACL
    ObjectCannedACL (..),

    -- * ObjectLockEnabled
    ObjectLockEnabled (..),

    -- * ObjectLockLegalHoldStatus
    ObjectLockLegalHoldStatus (..),

    -- * ObjectLockMode
    ObjectLockMode (..),

    -- * ObjectLockRetentionMode
    ObjectLockRetentionMode (..),

    -- * ObjectOwnership
    ObjectOwnership (..),

    -- * ObjectStorageClass
    ObjectStorageClass (..),

    -- * ObjectVersionStorageClass
    ObjectVersionStorageClass (..),

    -- * OwnerOverride
    OwnerOverride (..),

    -- * Payer
    Payer (..),

    -- * Permission
    Permission (..),

    -- * Protocol
    Protocol (..),

    -- * QuoteFields
    QuoteFields (..),

    -- * ReplicaModificationsStatus
    ReplicaModificationsStatus (..),

    -- * ReplicationRuleStatus
    ReplicationRuleStatus (..),

    -- * ReplicationStatus
    ReplicationStatus (..),

    -- * ReplicationTimeStatus
    ReplicationTimeStatus (..),

    -- * RequestCharged
    RequestCharged (..),

    -- * RequestPayer
    RequestPayer (..),

    -- * RestoreRequestType
    RestoreRequestType (..),

    -- * ServerSideEncryption
    ServerSideEncryption (..),

    -- * SseKmsEncryptedObjectsStatus
    SseKmsEncryptedObjectsStatus (..),

    -- * StorageClass
    StorageClass (..),

    -- * StorageClassAnalysisSchemaVersion
    StorageClassAnalysisSchemaVersion (..),

    -- * TaggingDirective
    TaggingDirective (..),

    -- * Tier
    Tier (..),

    -- * TransitionStorageClass
    TransitionStorageClass (..),

    -- * Type
    Type (..),

    -- * AbortIncompleteMultipartUpload
    AbortIncompleteMultipartUpload (..),
    newAbortIncompleteMultipartUpload,

    -- * AccelerateConfiguration
    AccelerateConfiguration (..),
    newAccelerateConfiguration,

    -- * AccessControlPolicy
    AccessControlPolicy (..),
    newAccessControlPolicy,

    -- * AccessControlTranslation
    AccessControlTranslation (..),
    newAccessControlTranslation,

    -- * AnalyticsAndOperator
    AnalyticsAndOperator (..),
    newAnalyticsAndOperator,

    -- * AnalyticsConfiguration
    AnalyticsConfiguration (..),
    newAnalyticsConfiguration,

    -- * AnalyticsExportDestination
    AnalyticsExportDestination (..),
    newAnalyticsExportDestination,

    -- * AnalyticsFilter
    AnalyticsFilter (..),
    newAnalyticsFilter,

    -- * AnalyticsS3BucketDestination
    AnalyticsS3BucketDestination (..),
    newAnalyticsS3BucketDestination,

    -- * Bucket
    Bucket (..),
    newBucket,

    -- * BucketLifecycleConfiguration
    BucketLifecycleConfiguration (..),
    newBucketLifecycleConfiguration,

    -- * BucketLoggingStatus
    BucketLoggingStatus (..),
    newBucketLoggingStatus,

    -- * CORSConfiguration
    CORSConfiguration (..),
    newCORSConfiguration,

    -- * CORSRule
    CORSRule (..),
    newCORSRule,

    -- * CSVInput
    CSVInput (..),
    newCSVInput,

    -- * CSVOutput
    CSVOutput (..),
    newCSVOutput,

    -- * CommonPrefix
    CommonPrefix (..),
    newCommonPrefix,

    -- * CompletedMultipartUpload
    CompletedMultipartUpload (..),
    newCompletedMultipartUpload,

    -- * CompletedPart
    CompletedPart (..),
    newCompletedPart,

    -- * Condition
    Condition (..),
    newCondition,

    -- * ContinuationEvent
    ContinuationEvent (..),
    newContinuationEvent,

    -- * CopyObjectResult
    CopyObjectResult (..),
    newCopyObjectResult,

    -- * CopyPartResult
    CopyPartResult (..),
    newCopyPartResult,

    -- * CreateBucketConfiguration
    CreateBucketConfiguration (..),
    newCreateBucketConfiguration,

    -- * DefaultRetention
    DefaultRetention (..),
    newDefaultRetention,

    -- * Delete
    Delete (..),
    newDelete,

    -- * DeleteMarkerEntry
    DeleteMarkerEntry (..),
    newDeleteMarkerEntry,

    -- * DeleteMarkerReplication
    DeleteMarkerReplication (..),
    newDeleteMarkerReplication,

    -- * DeletedObject
    DeletedObject (..),
    newDeletedObject,

    -- * Destination
    Destination (..),
    newDestination,

    -- * Encryption
    Encryption (..),
    newEncryption,

    -- * EncryptionConfiguration
    EncryptionConfiguration (..),
    newEncryptionConfiguration,

    -- * EndEvent
    EndEvent (..),
    newEndEvent,

    -- * ErrorDocument
    ErrorDocument (..),
    newErrorDocument,

    -- * ExistingObjectReplication
    ExistingObjectReplication (..),
    newExistingObjectReplication,

    -- * FilterRule
    FilterRule (..),
    newFilterRule,

    -- * GlacierJobParameters
    GlacierJobParameters (..),
    newGlacierJobParameters,

    -- * Grant
    Grant (..),
    newGrant,

    -- * Grantee
    Grantee (..),
    newGrantee,

    -- * IndexDocument
    IndexDocument (..),
    newIndexDocument,

    -- * Initiator
    Initiator (..),
    newInitiator,

    -- * InputSerialization
    InputSerialization (..),
    newInputSerialization,

    -- * IntelligentTieringAndOperator
    IntelligentTieringAndOperator (..),
    newIntelligentTieringAndOperator,

    -- * IntelligentTieringConfiguration
    IntelligentTieringConfiguration (..),
    newIntelligentTieringConfiguration,

    -- * IntelligentTieringFilter
    IntelligentTieringFilter (..),
    newIntelligentTieringFilter,

    -- * InventoryConfiguration
    InventoryConfiguration (..),
    newInventoryConfiguration,

    -- * InventoryDestination
    InventoryDestination (..),
    newInventoryDestination,

    -- * InventoryEncryption
    InventoryEncryption (..),
    newInventoryEncryption,

    -- * InventoryFilter
    InventoryFilter (..),
    newInventoryFilter,

    -- * InventoryS3BucketDestination
    InventoryS3BucketDestination (..),
    newInventoryS3BucketDestination,

    -- * InventorySchedule
    InventorySchedule (..),
    newInventorySchedule,

    -- * JSONInput
    JSONInput (..),
    newJSONInput,

    -- * JSONOutput
    JSONOutput (..),
    newJSONOutput,

    -- * LambdaFunctionConfiguration
    LambdaFunctionConfiguration (..),
    newLambdaFunctionConfiguration,

    -- * LifecycleExpiration
    LifecycleExpiration (..),
    newLifecycleExpiration,

    -- * LifecycleRule
    LifecycleRule (..),
    newLifecycleRule,

    -- * LifecycleRuleAndOperator
    LifecycleRuleAndOperator (..),
    newLifecycleRuleAndOperator,

    -- * LifecycleRuleFilter
    LifecycleRuleFilter (..),
    newLifecycleRuleFilter,

    -- * LoggingEnabled
    LoggingEnabled (..),
    newLoggingEnabled,

    -- * MetadataEntry
    MetadataEntry (..),
    newMetadataEntry,

    -- * Metrics
    Metrics (..),
    newMetrics,

    -- * MetricsAndOperator
    MetricsAndOperator (..),
    newMetricsAndOperator,

    -- * MetricsConfiguration
    MetricsConfiguration (..),
    newMetricsConfiguration,

    -- * MetricsFilter
    MetricsFilter (..),
    newMetricsFilter,

    -- * MultipartUpload
    MultipartUpload (..),
    newMultipartUpload,

    -- * NoncurrentVersionExpiration
    NoncurrentVersionExpiration (..),
    newNoncurrentVersionExpiration,

    -- * NoncurrentVersionTransition
    NoncurrentVersionTransition (..),
    newNoncurrentVersionTransition,

    -- * NotificationConfiguration
    NotificationConfiguration (..),
    newNotificationConfiguration,

    -- * NotificationConfigurationFilter
    NotificationConfigurationFilter (..),
    newNotificationConfigurationFilter,

    -- * Object
    Object (..),
    newObject,

    -- * ObjectIdentifier
    ObjectIdentifier (..),
    newObjectIdentifier,

    -- * ObjectLockConfiguration
    ObjectLockConfiguration (..),
    newObjectLockConfiguration,

    -- * ObjectLockLegalHold
    ObjectLockLegalHold (..),
    newObjectLockLegalHold,

    -- * ObjectLockRetention
    ObjectLockRetention (..),
    newObjectLockRetention,

    -- * ObjectLockRule
    ObjectLockRule (..),
    newObjectLockRule,

    -- * ObjectVersion
    ObjectVersion (..),
    newObjectVersion,

    -- * OutputLocation
    OutputLocation (..),
    newOutputLocation,

    -- * OutputSerialization
    OutputSerialization (..),
    newOutputSerialization,

    -- * Owner
    Owner (..),
    newOwner,

    -- * OwnershipControls
    OwnershipControls (..),
    newOwnershipControls,

    -- * OwnershipControlsRule
    OwnershipControlsRule (..),
    newOwnershipControlsRule,

    -- * ParquetInput
    ParquetInput (..),
    newParquetInput,

    -- * Part
    Part (..),
    newPart,

    -- * PolicyStatus
    PolicyStatus (..),
    newPolicyStatus,

    -- * Progress
    Progress (..),
    newProgress,

    -- * ProgressEvent
    ProgressEvent (..),
    newProgressEvent,

    -- * PublicAccessBlockConfiguration
    PublicAccessBlockConfiguration (..),
    newPublicAccessBlockConfiguration,

    -- * QueueConfiguration
    QueueConfiguration (..),
    newQueueConfiguration,

    -- * RecordsEvent
    RecordsEvent (..),
    newRecordsEvent,

    -- * Redirect
    Redirect (..),
    newRedirect,

    -- * RedirectAllRequestsTo
    RedirectAllRequestsTo (..),
    newRedirectAllRequestsTo,

    -- * ReplicaModifications
    ReplicaModifications (..),
    newReplicaModifications,

    -- * ReplicationConfiguration
    ReplicationConfiguration (..),
    newReplicationConfiguration,

    -- * ReplicationRule
    ReplicationRule (..),
    newReplicationRule,

    -- * ReplicationRuleAndOperator
    ReplicationRuleAndOperator (..),
    newReplicationRuleAndOperator,

    -- * ReplicationRuleFilter
    ReplicationRuleFilter (..),
    newReplicationRuleFilter,

    -- * ReplicationTime
    ReplicationTime (..),
    newReplicationTime,

    -- * ReplicationTimeValue
    ReplicationTimeValue (..),
    newReplicationTimeValue,

    -- * RequestPaymentConfiguration
    RequestPaymentConfiguration (..),
    newRequestPaymentConfiguration,

    -- * RequestProgress
    RequestProgress (..),
    newRequestProgress,

    -- * RestoreRequest
    RestoreRequest (..),
    newRestoreRequest,

    -- * RoutingRule
    RoutingRule (..),
    newRoutingRule,

    -- * S3KeyFilter
    S3KeyFilter (..),
    newS3KeyFilter,

    -- * S3Location
    S3Location (..),
    newS3Location,

    -- * S3ServiceError
    S3ServiceError (..),
    newS3ServiceError,

    -- * SSEKMS
    SSEKMS (..),
    newSSEKMS,

    -- * SSES3
    SSES3 (..),
    newSSES3,

    -- * ScanRange
    ScanRange (..),
    newScanRange,

    -- * SelectObjectContentEventStream
    SelectObjectContentEventStream (..),
    newSelectObjectContentEventStream,

    -- * SelectParameters
    SelectParameters (..),
    newSelectParameters,

    -- * ServerSideEncryptionByDefault
    ServerSideEncryptionByDefault (..),
    newServerSideEncryptionByDefault,

    -- * ServerSideEncryptionConfiguration
    ServerSideEncryptionConfiguration (..),
    newServerSideEncryptionConfiguration,

    -- * ServerSideEncryptionRule
    ServerSideEncryptionRule (..),
    newServerSideEncryptionRule,

    -- * SourceSelectionCriteria
    SourceSelectionCriteria (..),
    newSourceSelectionCriteria,

    -- * SseKmsEncryptedObjects
    SseKmsEncryptedObjects (..),
    newSseKmsEncryptedObjects,

    -- * Stats
    Stats (..),
    newStats,

    -- * StatsEvent
    StatsEvent (..),
    newStatsEvent,

    -- * StorageClassAnalysis
    StorageClassAnalysis (..),
    newStorageClassAnalysis,

    -- * StorageClassAnalysisDataExport
    StorageClassAnalysisDataExport (..),
    newStorageClassAnalysisDataExport,

    -- * Tag
    Tag (..),
    newTag,

    -- * Tagging
    Tagging (..),
    newTagging,

    -- * TargetGrant
    TargetGrant (..),
    newTargetGrant,

    -- * Tiering
    Tiering (..),
    newTiering,

    -- * TopicConfiguration
    TopicConfiguration (..),
    newTopicConfiguration,

    -- * Transition
    Transition (..),
    newTransition,

    -- * VersioningConfiguration
    VersioningConfiguration (..),
    newVersioningConfiguration,

    -- * WebsiteConfiguration
    WebsiteConfiguration (..),
    newWebsiteConfiguration,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.AbortIncompleteMultipartUpload
import Network.AWS.S3.Types.AccelerateConfiguration
import Network.AWS.S3.Types.AccessControlPolicy
import Network.AWS.S3.Types.AccessControlTranslation
import Network.AWS.S3.Types.AnalyticsAndOperator
import Network.AWS.S3.Types.AnalyticsConfiguration
import Network.AWS.S3.Types.AnalyticsExportDestination
import Network.AWS.S3.Types.AnalyticsFilter
import Network.AWS.S3.Types.AnalyticsS3BucketDestination
import Network.AWS.S3.Types.AnalyticsS3ExportFileFormat
import Network.AWS.S3.Types.ArchiveStatus
import Network.AWS.S3.Types.Bucket
import Network.AWS.S3.Types.BucketAccelerateStatus
import Network.AWS.S3.Types.BucketCannedACL
import Network.AWS.S3.Types.BucketLifecycleConfiguration
import Network.AWS.S3.Types.BucketLoggingStatus
import Network.AWS.S3.Types.BucketLogsPermission
import Network.AWS.S3.Types.BucketVersioningStatus
import Network.AWS.S3.Types.CORSConfiguration
import Network.AWS.S3.Types.CORSRule
import Network.AWS.S3.Types.CSVInput
import Network.AWS.S3.Types.CSVOutput
import Network.AWS.S3.Types.CommonPrefix
import Network.AWS.S3.Types.CompletedMultipartUpload
import Network.AWS.S3.Types.CompletedPart
import Network.AWS.S3.Types.CompressionType
import Network.AWS.S3.Types.Condition
import Network.AWS.S3.Types.ContinuationEvent
import Network.AWS.S3.Types.CopyObjectResult
import Network.AWS.S3.Types.CopyPartResult
import Network.AWS.S3.Types.CreateBucketConfiguration
import Network.AWS.S3.Types.DefaultRetention
import Network.AWS.S3.Types.Delete
import Network.AWS.S3.Types.DeleteMarkerEntry
import Network.AWS.S3.Types.DeleteMarkerReplication
import Network.AWS.S3.Types.DeleteMarkerReplicationStatus
import Network.AWS.S3.Types.DeletedObject
import Network.AWS.S3.Types.Destination
import Network.AWS.S3.Types.EncodingType
import Network.AWS.S3.Types.Encryption
import Network.AWS.S3.Types.EncryptionConfiguration
import Network.AWS.S3.Types.EndEvent
import Network.AWS.S3.Types.ErrorDocument
import Network.AWS.S3.Types.Event
import Network.AWS.S3.Types.ExistingObjectReplication
import Network.AWS.S3.Types.ExistingObjectReplicationStatus
import Network.AWS.S3.Types.ExpirationStatus
import Network.AWS.S3.Types.ExpressionType
import Network.AWS.S3.Types.FileHeaderInfo
import Network.AWS.S3.Types.FilterRule
import Network.AWS.S3.Types.FilterRuleName
import Network.AWS.S3.Types.GlacierJobParameters
import Network.AWS.S3.Types.Grant
import Network.AWS.S3.Types.Grantee
import Network.AWS.S3.Types.IndexDocument
import Network.AWS.S3.Types.Initiator
import Network.AWS.S3.Types.InputSerialization
import Network.AWS.S3.Types.IntelligentTieringAccessTier
import Network.AWS.S3.Types.IntelligentTieringAndOperator
import Network.AWS.S3.Types.IntelligentTieringConfiguration
import Network.AWS.S3.Types.IntelligentTieringFilter
import Network.AWS.S3.Types.IntelligentTieringStatus
import Network.AWS.S3.Types.InventoryConfiguration
import Network.AWS.S3.Types.InventoryDestination
import Network.AWS.S3.Types.InventoryEncryption
import Network.AWS.S3.Types.InventoryFilter
import Network.AWS.S3.Types.InventoryFormat
import Network.AWS.S3.Types.InventoryFrequency
import Network.AWS.S3.Types.InventoryIncludedObjectVersions
import Network.AWS.S3.Types.InventoryOptionalField
import Network.AWS.S3.Types.InventoryS3BucketDestination
import Network.AWS.S3.Types.InventorySchedule
import Network.AWS.S3.Types.JSONInput
import Network.AWS.S3.Types.JSONOutput
import Network.AWS.S3.Types.JSONType
import Network.AWS.S3.Types.LambdaFunctionConfiguration
import Network.AWS.S3.Types.LifecycleExpiration
import Network.AWS.S3.Types.LifecycleRule
import Network.AWS.S3.Types.LifecycleRuleAndOperator
import Network.AWS.S3.Types.LifecycleRuleFilter
import Network.AWS.S3.Types.LoggingEnabled
import Network.AWS.S3.Types.MFADelete
import Network.AWS.S3.Types.MFADeleteStatus
import Network.AWS.S3.Types.MetadataDirective
import Network.AWS.S3.Types.MetadataEntry
import Network.AWS.S3.Types.Metrics
import Network.AWS.S3.Types.MetricsAndOperator
import Network.AWS.S3.Types.MetricsConfiguration
import Network.AWS.S3.Types.MetricsFilter
import Network.AWS.S3.Types.MetricsStatus
import Network.AWS.S3.Types.MultipartUpload
import Network.AWS.S3.Types.NoncurrentVersionExpiration
import Network.AWS.S3.Types.NoncurrentVersionTransition
import Network.AWS.S3.Types.NotificationConfiguration
import Network.AWS.S3.Types.NotificationConfigurationFilter
import Network.AWS.S3.Types.Object
import Network.AWS.S3.Types.ObjectCannedACL
import Network.AWS.S3.Types.ObjectIdentifier
import Network.AWS.S3.Types.ObjectLockConfiguration
import Network.AWS.S3.Types.ObjectLockEnabled
import Network.AWS.S3.Types.ObjectLockLegalHold
import Network.AWS.S3.Types.ObjectLockLegalHoldStatus
import Network.AWS.S3.Types.ObjectLockMode
import Network.AWS.S3.Types.ObjectLockRetention
import Network.AWS.S3.Types.ObjectLockRetentionMode
import Network.AWS.S3.Types.ObjectLockRule
import Network.AWS.S3.Types.ObjectOwnership
import Network.AWS.S3.Types.ObjectStorageClass
import Network.AWS.S3.Types.ObjectVersion
import Network.AWS.S3.Types.ObjectVersionStorageClass
import Network.AWS.S3.Types.OutputLocation
import Network.AWS.S3.Types.OutputSerialization
import Network.AWS.S3.Types.Owner
import Network.AWS.S3.Types.OwnerOverride
import Network.AWS.S3.Types.OwnershipControls
import Network.AWS.S3.Types.OwnershipControlsRule
import Network.AWS.S3.Types.ParquetInput
import Network.AWS.S3.Types.Part
import Network.AWS.S3.Types.Payer
import Network.AWS.S3.Types.Permission
import Network.AWS.S3.Types.PolicyStatus
import Network.AWS.S3.Types.Progress
import Network.AWS.S3.Types.ProgressEvent
import Network.AWS.S3.Types.Protocol
import Network.AWS.S3.Types.PublicAccessBlockConfiguration
import Network.AWS.S3.Types.QueueConfiguration
import Network.AWS.S3.Types.QuoteFields
import Network.AWS.S3.Types.RecordsEvent
import Network.AWS.S3.Types.Redirect
import Network.AWS.S3.Types.RedirectAllRequestsTo
import Network.AWS.S3.Types.ReplicaModifications
import Network.AWS.S3.Types.ReplicaModificationsStatus
import Network.AWS.S3.Types.ReplicationConfiguration
import Network.AWS.S3.Types.ReplicationRule
import Network.AWS.S3.Types.ReplicationRuleAndOperator
import Network.AWS.S3.Types.ReplicationRuleFilter
import Network.AWS.S3.Types.ReplicationRuleStatus
import Network.AWS.S3.Types.ReplicationStatus
import Network.AWS.S3.Types.ReplicationTime
import Network.AWS.S3.Types.ReplicationTimeStatus
import Network.AWS.S3.Types.ReplicationTimeValue
import Network.AWS.S3.Types.RequestCharged
import Network.AWS.S3.Types.RequestPayer
import Network.AWS.S3.Types.RequestPaymentConfiguration
import Network.AWS.S3.Types.RequestProgress
import Network.AWS.S3.Types.RestoreRequest
import Network.AWS.S3.Types.RestoreRequestType
import Network.AWS.S3.Types.RoutingRule
import Network.AWS.S3.Types.S3KeyFilter
import Network.AWS.S3.Types.S3Location
import Network.AWS.S3.Types.S3ServiceError
import Network.AWS.S3.Types.SSEKMS
import Network.AWS.S3.Types.SSES3
import Network.AWS.S3.Types.ScanRange
import Network.AWS.S3.Types.SelectObjectContentEventStream
import Network.AWS.S3.Types.SelectParameters
import Network.AWS.S3.Types.ServerSideEncryption
import Network.AWS.S3.Types.ServerSideEncryptionByDefault
import Network.AWS.S3.Types.ServerSideEncryptionConfiguration
import Network.AWS.S3.Types.ServerSideEncryptionRule
import Network.AWS.S3.Types.SourceSelectionCriteria
import Network.AWS.S3.Types.SseKmsEncryptedObjects
import Network.AWS.S3.Types.SseKmsEncryptedObjectsStatus
import Network.AWS.S3.Types.Stats
import Network.AWS.S3.Types.StatsEvent
import Network.AWS.S3.Types.StorageClass
import Network.AWS.S3.Types.StorageClassAnalysis
import Network.AWS.S3.Types.StorageClassAnalysisDataExport
import Network.AWS.S3.Types.StorageClassAnalysisSchemaVersion
import Network.AWS.S3.Types.Tag
import Network.AWS.S3.Types.Tagging
import Network.AWS.S3.Types.TaggingDirective
import Network.AWS.S3.Types.TargetGrant
import Network.AWS.S3.Types.Tier
import Network.AWS.S3.Types.Tiering
import Network.AWS.S3.Types.TopicConfiguration
import Network.AWS.S3.Types.Transition
import Network.AWS.S3.Types.TransitionStorageClass
import Network.AWS.S3.Types.Type
import Network.AWS.S3.Types.VersioningConfiguration
import Network.AWS.S3.Types.WebsiteConfiguration
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2006-03-01@ of the Amazon Simple Storage Service SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "S3",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "s3",
      Prelude._svcVersion = "2006-03-01",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseXMLError "S3",
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
          ( Prelude.hasCode "BadDigest"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "contentmd5"
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
          ( Prelude.hasCode "RequestTimeout"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "timeouts"
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

-- | The source object of the COPY operation is not in the active tier and is
-- only stored in Amazon S3 Glacier.
_ObjectNotInActiveTierError :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ObjectNotInActiveTierError =
  Prelude._MatchServiceError
    defaultService
    "ObjectNotInActiveTierError"

-- | The specified key does not exist.
_NoSuchKey :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchKey =
  Prelude._MatchServiceError
    defaultService
    "NoSuchKey"

-- | This operation is not allowed against this storage tier.
_ObjectAlreadyInActiveTierError :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ObjectAlreadyInActiveTierError =
  Prelude._MatchServiceError
    defaultService
    "ObjectAlreadyInActiveTierError"

-- | The bucket you tried to create already exists, and you own it. Amazon S3
-- returns this error in all AWS Regions except in the North Virginia
-- Region. For legacy compatibility, if you re-create an existing bucket
-- that you already own in the North Virginia Region, Amazon S3 returns 200
-- OK and resets the bucket access control lists (ACLs).
_BucketAlreadyOwnedByYou :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BucketAlreadyOwnedByYou =
  Prelude._MatchServiceError
    defaultService
    "BucketAlreadyOwnedByYou"

-- | The specified multipart upload does not exist.
_NoSuchUpload :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchUpload =
  Prelude._MatchServiceError
    defaultService
    "NoSuchUpload"

-- | Object is archived and inaccessible until restored.
_InvalidObjectState :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidObjectState =
  Prelude._MatchServiceError
    defaultService
    "InvalidObjectState"

-- | The requested bucket name is not available. The bucket namespace is
-- shared by all users of the system. Select a different name and try
-- again.
_BucketAlreadyExists :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BucketAlreadyExists =
  Prelude._MatchServiceError
    defaultService
    "BucketAlreadyExists"

-- | The specified bucket does not exist.
_NoSuchBucket :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchBucket =
  Prelude._MatchServiceError
    defaultService
    "NoSuchBucket"
