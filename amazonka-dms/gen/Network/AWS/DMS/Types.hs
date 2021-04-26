{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _KMSDisabledFault,
    _KMSFault,
    _KMSAccessDeniedFault,
    _AccessDeniedFault,
    _InvalidCertificateFault,
    _SNSNoAuthorizationFault,
    _InvalidResourceStateFault,
    _ResourceNotFoundFault,
    _KMSKeyNotAccessibleFault,
    _ResourceQuotaExceededFault,
    _SNSInvalidTopicFault,
    _KMSNotFoundFault,
    _KMSInvalidStateFault,
    _SubnetAlreadyInUse,
    _InsufficientResourceCapacityFault,
    _S3AccessDeniedFault,
    _StorageQuotaExceededFault,
    _ResourceAlreadyExistsFault,
    _ReplicationSubnetGroupDoesNotCoverEnoughAZs,
    _S3ResourceNotFoundFault,
    _UpgradeDependencyFailureFault,
    _KMSThrottlingFault,
    _InvalidSubnet,

    -- * AuthMechanismValue
    AuthMechanismValue (..),

    -- * AuthTypeValue
    AuthTypeValue (..),

    -- * CharLengthSemantics
    CharLengthSemantics (..),

    -- * CompressionTypeValue
    CompressionTypeValue (..),

    -- * DataFormatValue
    DataFormatValue (..),

    -- * DatePartitionDelimiterValue
    DatePartitionDelimiterValue (..),

    -- * DatePartitionSequenceValue
    DatePartitionSequenceValue (..),

    -- * DmsSslModeValue
    DmsSslModeValue (..),

    -- * EncodingTypeValue
    EncodingTypeValue (..),

    -- * EncryptionModeValue
    EncryptionModeValue (..),

    -- * MessageFormatValue
    MessageFormatValue (..),

    -- * MigrationTypeValue
    MigrationTypeValue (..),

    -- * NestingLevelValue
    NestingLevelValue (..),

    -- * ParquetVersionValue
    ParquetVersionValue (..),

    -- * RefreshSchemasStatusTypeValue
    RefreshSchemasStatusTypeValue (..),

    -- * ReleaseStatusValues
    ReleaseStatusValues (..),

    -- * ReloadOptionValue
    ReloadOptionValue (..),

    -- * ReplicationEndpointTypeValue
    ReplicationEndpointTypeValue (..),

    -- * SafeguardPolicy
    SafeguardPolicy (..),

    -- * SourceType
    SourceType (..),

    -- * StartReplicationTaskTypeValue
    StartReplicationTaskTypeValue (..),

    -- * TargetDbType
    TargetDbType (..),

    -- * AccountQuota
    AccountQuota (..),
    newAccountQuota,

    -- * AvailabilityZone
    AvailabilityZone (..),
    newAvailabilityZone,

    -- * Certificate
    Certificate (..),
    newCertificate,

    -- * Connection
    Connection (..),
    newConnection,

    -- * DmsTransferSettings
    DmsTransferSettings (..),
    newDmsTransferSettings,

    -- * DocDbSettings
    DocDbSettings (..),
    newDocDbSettings,

    -- * DynamoDbSettings
    DynamoDbSettings (..),
    newDynamoDbSettings,

    -- * ElasticsearchSettings
    ElasticsearchSettings (..),
    newElasticsearchSettings,

    -- * Endpoint
    Endpoint (..),
    newEndpoint,

    -- * Event
    Event (..),
    newEvent,

    -- * EventCategoryGroup
    EventCategoryGroup (..),
    newEventCategoryGroup,

    -- * EventSubscription
    EventSubscription (..),
    newEventSubscription,

    -- * Filter
    Filter (..),
    newFilter,

    -- * IBMDb2Settings
    IBMDb2Settings (..),
    newIBMDb2Settings,

    -- * KafkaSettings
    KafkaSettings (..),
    newKafkaSettings,

    -- * KinesisSettings
    KinesisSettings (..),
    newKinesisSettings,

    -- * MicrosoftSQLServerSettings
    MicrosoftSQLServerSettings (..),
    newMicrosoftSQLServerSettings,

    -- * MongoDbSettings
    MongoDbSettings (..),
    newMongoDbSettings,

    -- * MySQLSettings
    MySQLSettings (..),
    newMySQLSettings,

    -- * NeptuneSettings
    NeptuneSettings (..),
    newNeptuneSettings,

    -- * OracleSettings
    OracleSettings (..),
    newOracleSettings,

    -- * OrderableReplicationInstance
    OrderableReplicationInstance (..),
    newOrderableReplicationInstance,

    -- * PendingMaintenanceAction
    PendingMaintenanceAction (..),
    newPendingMaintenanceAction,

    -- * PostgreSQLSettings
    PostgreSQLSettings (..),
    newPostgreSQLSettings,

    -- * RedshiftSettings
    RedshiftSettings (..),
    newRedshiftSettings,

    -- * RefreshSchemasStatus
    RefreshSchemasStatus (..),
    newRefreshSchemasStatus,

    -- * ReplicationInstance
    ReplicationInstance (..),
    newReplicationInstance,

    -- * ReplicationInstanceTaskLog
    ReplicationInstanceTaskLog (..),
    newReplicationInstanceTaskLog,

    -- * ReplicationPendingModifiedValues
    ReplicationPendingModifiedValues (..),
    newReplicationPendingModifiedValues,

    -- * ReplicationSubnetGroup
    ReplicationSubnetGroup (..),
    newReplicationSubnetGroup,

    -- * ReplicationTask
    ReplicationTask (..),
    newReplicationTask,

    -- * ReplicationTaskAssessmentResult
    ReplicationTaskAssessmentResult (..),
    newReplicationTaskAssessmentResult,

    -- * ReplicationTaskAssessmentRun
    ReplicationTaskAssessmentRun (..),
    newReplicationTaskAssessmentRun,

    -- * ReplicationTaskAssessmentRunProgress
    ReplicationTaskAssessmentRunProgress (..),
    newReplicationTaskAssessmentRunProgress,

    -- * ReplicationTaskIndividualAssessment
    ReplicationTaskIndividualAssessment (..),
    newReplicationTaskIndividualAssessment,

    -- * ReplicationTaskStats
    ReplicationTaskStats (..),
    newReplicationTaskStats,

    -- * ResourcePendingMaintenanceActions
    ResourcePendingMaintenanceActions (..),
    newResourcePendingMaintenanceActions,

    -- * S3Settings
    S3Settings (..),
    newS3Settings,

    -- * Subnet
    Subnet (..),
    newSubnet,

    -- * SupportedEndpointType
    SupportedEndpointType (..),
    newSupportedEndpointType,

    -- * SybaseSettings
    SybaseSettings (..),
    newSybaseSettings,

    -- * TableStatistics
    TableStatistics (..),
    newTableStatistics,

    -- * TableToReload
    TableToReload (..),
    newTableToReload,

    -- * Tag
    Tag (..),
    newTag,

    -- * VpcSecurityGroupMembership
    VpcSecurityGroupMembership (..),
    newVpcSecurityGroupMembership,
  )
where

import Network.AWS.DMS.Types.AccountQuota
import Network.AWS.DMS.Types.AuthMechanismValue
import Network.AWS.DMS.Types.AuthTypeValue
import Network.AWS.DMS.Types.AvailabilityZone
import Network.AWS.DMS.Types.Certificate
import Network.AWS.DMS.Types.CharLengthSemantics
import Network.AWS.DMS.Types.CompressionTypeValue
import Network.AWS.DMS.Types.Connection
import Network.AWS.DMS.Types.DataFormatValue
import Network.AWS.DMS.Types.DatePartitionDelimiterValue
import Network.AWS.DMS.Types.DatePartitionSequenceValue
import Network.AWS.DMS.Types.DmsSslModeValue
import Network.AWS.DMS.Types.DmsTransferSettings
import Network.AWS.DMS.Types.DocDbSettings
import Network.AWS.DMS.Types.DynamoDbSettings
import Network.AWS.DMS.Types.ElasticsearchSettings
import Network.AWS.DMS.Types.EncodingTypeValue
import Network.AWS.DMS.Types.EncryptionModeValue
import Network.AWS.DMS.Types.Endpoint
import Network.AWS.DMS.Types.Event
import Network.AWS.DMS.Types.EventCategoryGroup
import Network.AWS.DMS.Types.EventSubscription
import Network.AWS.DMS.Types.Filter
import Network.AWS.DMS.Types.IBMDb2Settings
import Network.AWS.DMS.Types.KafkaSettings
import Network.AWS.DMS.Types.KinesisSettings
import Network.AWS.DMS.Types.MessageFormatValue
import Network.AWS.DMS.Types.MicrosoftSQLServerSettings
import Network.AWS.DMS.Types.MigrationTypeValue
import Network.AWS.DMS.Types.MongoDbSettings
import Network.AWS.DMS.Types.MySQLSettings
import Network.AWS.DMS.Types.NeptuneSettings
import Network.AWS.DMS.Types.NestingLevelValue
import Network.AWS.DMS.Types.OracleSettings
import Network.AWS.DMS.Types.OrderableReplicationInstance
import Network.AWS.DMS.Types.ParquetVersionValue
import Network.AWS.DMS.Types.PendingMaintenanceAction
import Network.AWS.DMS.Types.PostgreSQLSettings
import Network.AWS.DMS.Types.RedshiftSettings
import Network.AWS.DMS.Types.RefreshSchemasStatus
import Network.AWS.DMS.Types.RefreshSchemasStatusTypeValue
import Network.AWS.DMS.Types.ReleaseStatusValues
import Network.AWS.DMS.Types.ReloadOptionValue
import Network.AWS.DMS.Types.ReplicationEndpointTypeValue
import Network.AWS.DMS.Types.ReplicationInstance
import Network.AWS.DMS.Types.ReplicationInstanceTaskLog
import Network.AWS.DMS.Types.ReplicationPendingModifiedValues
import Network.AWS.DMS.Types.ReplicationSubnetGroup
import Network.AWS.DMS.Types.ReplicationTask
import Network.AWS.DMS.Types.ReplicationTaskAssessmentResult
import Network.AWS.DMS.Types.ReplicationTaskAssessmentRun
import Network.AWS.DMS.Types.ReplicationTaskAssessmentRunProgress
import Network.AWS.DMS.Types.ReplicationTaskIndividualAssessment
import Network.AWS.DMS.Types.ReplicationTaskStats
import Network.AWS.DMS.Types.ResourcePendingMaintenanceActions
import Network.AWS.DMS.Types.S3Settings
import Network.AWS.DMS.Types.SafeguardPolicy
import Network.AWS.DMS.Types.SourceType
import Network.AWS.DMS.Types.StartReplicationTaskTypeValue
import Network.AWS.DMS.Types.Subnet
import Network.AWS.DMS.Types.SupportedEndpointType
import Network.AWS.DMS.Types.SybaseSettings
import Network.AWS.DMS.Types.TableStatistics
import Network.AWS.DMS.Types.TableToReload
import Network.AWS.DMS.Types.Tag
import Network.AWS.DMS.Types.TargetDbType
import Network.AWS.DMS.Types.VpcSecurityGroupMembership
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2016-01-01@ of the Amazon Database Migration Service SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "DMS",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "dms",
      Prelude._svcVersion = "2016-01-01",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseJSONError "DMS",
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

-- | The specified master key (CMK) isn\'t enabled.
_KMSDisabledFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSDisabledFault =
  Prelude._MatchServiceError
    defaultService
    "KMSDisabledFault"

-- | An AWS Key Management Service (AWS KMS) error is preventing access to
-- AWS KMS.
_KMSFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSFault =
  Prelude._MatchServiceError
    defaultService
    "KMSFault"

-- | The ciphertext references a key that doesn\'t exist or that the DMS
-- account doesn\'t have access to.
_KMSAccessDeniedFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSAccessDeniedFault =
  Prelude._MatchServiceError
    defaultService
    "KMSAccessDeniedFault"

-- | AWS DMS was denied access to the endpoint. Check that the role is
-- correctly configured.
_AccessDeniedFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AccessDeniedFault =
  Prelude._MatchServiceError
    defaultService
    "AccessDeniedFault"

-- | The certificate was not valid.
_InvalidCertificateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidCertificateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidCertificateFault"

-- | You are not authorized for the SNS subscription.
_SNSNoAuthorizationFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SNSNoAuthorizationFault =
  Prelude._MatchServiceError
    defaultService
    "SNSNoAuthorizationFault"

-- | The resource is in a state that prevents it from being used for database
-- migration.
_InvalidResourceStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidResourceStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidResourceStateFault"

-- | The resource could not be found.
_ResourceNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundFault"

-- | AWS DMS cannot access the AWS KMS key.
_KMSKeyNotAccessibleFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSKeyNotAccessibleFault =
  Prelude._MatchServiceError
    defaultService
    "KMSKeyNotAccessibleFault"

-- | The quota for this resource quota has been exceeded.
_ResourceQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "ResourceQuotaExceededFault"

-- | The SNS topic is invalid.
_SNSInvalidTopicFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SNSInvalidTopicFault =
  Prelude._MatchServiceError
    defaultService
    "SNSInvalidTopicFault"

-- | The specified AWS KMS entity or resource can\'t be found.
_KMSNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "KMSNotFoundFault"

-- | The state of the specified AWS KMS resource isn\'t valid for this
-- request.
_KMSInvalidStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSInvalidStateFault =
  Prelude._MatchServiceError
    defaultService
    "KMSInvalidStateFault"

-- | The specified subnet is already in use.
_SubnetAlreadyInUse :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SubnetAlreadyInUse =
  Prelude._MatchServiceError
    defaultService
    "SubnetAlreadyInUse"

-- | There are not enough resources allocated to the database migration.
_InsufficientResourceCapacityFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InsufficientResourceCapacityFault =
  Prelude._MatchServiceError
    defaultService
    "InsufficientResourceCapacityFault"

-- | Insufficient privileges are preventing access to an Amazon S3 object.
_S3AccessDeniedFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_S3AccessDeniedFault =
  Prelude._MatchServiceError
    defaultService
    "S3AccessDeniedFault"

-- | The storage quota has been exceeded.
_StorageQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StorageQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "StorageQuotaExceededFault"

-- | The resource you are attempting to create already exists.
_ResourceAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "ResourceAlreadyExistsFault"

-- | The replication subnet group does not cover enough Availability Zones
-- (AZs). Edit the replication subnet group and add more AZs.
_ReplicationSubnetGroupDoesNotCoverEnoughAZs :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReplicationSubnetGroupDoesNotCoverEnoughAZs =
  Prelude._MatchServiceError
    defaultService
    "ReplicationSubnetGroupDoesNotCoverEnoughAZs"

-- | A specified Amazon S3 bucket, bucket folder, or other object can\'t be
-- found.
_S3ResourceNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_S3ResourceNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "S3ResourceNotFoundFault"

-- | An upgrade dependency is preventing the database migration.
_UpgradeDependencyFailureFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UpgradeDependencyFailureFault =
  Prelude._MatchServiceError
    defaultService
    "UpgradeDependencyFailureFault"

-- | This request triggered AWS KMS request throttling.
_KMSThrottlingFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSThrottlingFault =
  Prelude._MatchServiceError
    defaultService
    "KMSThrottlingFault"

-- | The subnet provided is invalid.
_InvalidSubnet :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSubnet =
  Prelude._MatchServiceError
    defaultService
    "InvalidSubnet"
