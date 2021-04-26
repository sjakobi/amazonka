{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ResourceAlreadyExistsException,
    _ServiceUnavailableException,
    _ThrottlingException,
    _InvalidRequestException,
    _LimitExceededException,
    _ResourceNotFoundException,
    _InternalFailureException,

    -- * ChannelStatus
    ChannelStatus (..),

    -- * ComputeType
    ComputeType (..),

    -- * DatasetActionType
    DatasetActionType (..),

    -- * DatasetContentState
    DatasetContentState (..),

    -- * DatasetStatus
    DatasetStatus (..),

    -- * DatastoreStatus
    DatastoreStatus (..),

    -- * FileFormatType
    FileFormatType (..),

    -- * LoggingLevel
    LoggingLevel (..),

    -- * ReprocessingStatus
    ReprocessingStatus (..),

    -- * AddAttributesActivity
    AddAttributesActivity (..),
    newAddAttributesActivity,

    -- * BatchPutMessageErrorEntry
    BatchPutMessageErrorEntry (..),
    newBatchPutMessageErrorEntry,

    -- * Channel
    Channel (..),
    newChannel,

    -- * ChannelActivity
    ChannelActivity (..),
    newChannelActivity,

    -- * ChannelMessages
    ChannelMessages (..),
    newChannelMessages,

    -- * ChannelStatistics
    ChannelStatistics (..),
    newChannelStatistics,

    -- * ChannelStorage
    ChannelStorage (..),
    newChannelStorage,

    -- * ChannelStorageSummary
    ChannelStorageSummary (..),
    newChannelStorageSummary,

    -- * ChannelSummary
    ChannelSummary (..),
    newChannelSummary,

    -- * Column
    Column (..),
    newColumn,

    -- * ContainerDatasetAction
    ContainerDatasetAction (..),
    newContainerDatasetAction,

    -- * CustomerManagedChannelS3Storage
    CustomerManagedChannelS3Storage (..),
    newCustomerManagedChannelS3Storage,

    -- * CustomerManagedChannelS3StorageSummary
    CustomerManagedChannelS3StorageSummary (..),
    newCustomerManagedChannelS3StorageSummary,

    -- * CustomerManagedDatastoreS3Storage
    CustomerManagedDatastoreS3Storage (..),
    newCustomerManagedDatastoreS3Storage,

    -- * CustomerManagedDatastoreS3StorageSummary
    CustomerManagedDatastoreS3StorageSummary (..),
    newCustomerManagedDatastoreS3StorageSummary,

    -- * Dataset
    Dataset (..),
    newDataset,

    -- * DatasetAction
    DatasetAction (..),
    newDatasetAction,

    -- * DatasetActionSummary
    DatasetActionSummary (..),
    newDatasetActionSummary,

    -- * DatasetContentDeliveryDestination
    DatasetContentDeliveryDestination (..),
    newDatasetContentDeliveryDestination,

    -- * DatasetContentDeliveryRule
    DatasetContentDeliveryRule (..),
    newDatasetContentDeliveryRule,

    -- * DatasetContentStatus
    DatasetContentStatus (..),
    newDatasetContentStatus,

    -- * DatasetContentSummary
    DatasetContentSummary (..),
    newDatasetContentSummary,

    -- * DatasetContentVersionValue
    DatasetContentVersionValue (..),
    newDatasetContentVersionValue,

    -- * DatasetEntry
    DatasetEntry (..),
    newDatasetEntry,

    -- * DatasetSummary
    DatasetSummary (..),
    newDatasetSummary,

    -- * DatasetTrigger
    DatasetTrigger (..),
    newDatasetTrigger,

    -- * Datastore
    Datastore (..),
    newDatastore,

    -- * DatastoreActivity
    DatastoreActivity (..),
    newDatastoreActivity,

    -- * DatastoreStatistics
    DatastoreStatistics (..),
    newDatastoreStatistics,

    -- * DatastoreStorage
    DatastoreStorage (..),
    newDatastoreStorage,

    -- * DatastoreStorageSummary
    DatastoreStorageSummary (..),
    newDatastoreStorageSummary,

    -- * DatastoreSummary
    DatastoreSummary (..),
    newDatastoreSummary,

    -- * DeltaTime
    DeltaTime (..),
    newDeltaTime,

    -- * DeltaTimeSessionWindowConfiguration
    DeltaTimeSessionWindowConfiguration (..),
    newDeltaTimeSessionWindowConfiguration,

    -- * DeviceRegistryEnrichActivity
    DeviceRegistryEnrichActivity (..),
    newDeviceRegistryEnrichActivity,

    -- * DeviceShadowEnrichActivity
    DeviceShadowEnrichActivity (..),
    newDeviceShadowEnrichActivity,

    -- * EstimatedResourceSize
    EstimatedResourceSize (..),
    newEstimatedResourceSize,

    -- * FileFormatConfiguration
    FileFormatConfiguration (..),
    newFileFormatConfiguration,

    -- * FilterActivity
    FilterActivity (..),
    newFilterActivity,

    -- * GlueConfiguration
    GlueConfiguration (..),
    newGlueConfiguration,

    -- * IotEventsDestinationConfiguration
    IotEventsDestinationConfiguration (..),
    newIotEventsDestinationConfiguration,

    -- * JsonConfiguration
    JsonConfiguration (..),
    newJsonConfiguration,

    -- * LambdaActivity
    LambdaActivity (..),
    newLambdaActivity,

    -- * LateDataRule
    LateDataRule (..),
    newLateDataRule,

    -- * LateDataRuleConfiguration
    LateDataRuleConfiguration (..),
    newLateDataRuleConfiguration,

    -- * LoggingOptions
    LoggingOptions (..),
    newLoggingOptions,

    -- * MathActivity
    MathActivity (..),
    newMathActivity,

    -- * Message
    Message (..),
    newMessage,

    -- * OutputFileUriValue
    OutputFileUriValue (..),
    newOutputFileUriValue,

    -- * ParquetConfiguration
    ParquetConfiguration (..),
    newParquetConfiguration,

    -- * Pipeline
    Pipeline (..),
    newPipeline,

    -- * PipelineActivity
    PipelineActivity (..),
    newPipelineActivity,

    -- * PipelineSummary
    PipelineSummary (..),
    newPipelineSummary,

    -- * QueryFilter
    QueryFilter (..),
    newQueryFilter,

    -- * RemoveAttributesActivity
    RemoveAttributesActivity (..),
    newRemoveAttributesActivity,

    -- * ReprocessingSummary
    ReprocessingSummary (..),
    newReprocessingSummary,

    -- * ResourceConfiguration
    ResourceConfiguration (..),
    newResourceConfiguration,

    -- * RetentionPeriod
    RetentionPeriod (..),
    newRetentionPeriod,

    -- * S3DestinationConfiguration
    S3DestinationConfiguration (..),
    newS3DestinationConfiguration,

    -- * Schedule
    Schedule (..),
    newSchedule,

    -- * SchemaDefinition
    SchemaDefinition (..),
    newSchemaDefinition,

    -- * SelectAttributesActivity
    SelectAttributesActivity (..),
    newSelectAttributesActivity,

    -- * ServiceManagedChannelS3Storage
    ServiceManagedChannelS3Storage (..),
    newServiceManagedChannelS3Storage,

    -- * ServiceManagedChannelS3StorageSummary
    ServiceManagedChannelS3StorageSummary (..),
    newServiceManagedChannelS3StorageSummary,

    -- * ServiceManagedDatastoreS3Storage
    ServiceManagedDatastoreS3Storage (..),
    newServiceManagedDatastoreS3Storage,

    -- * ServiceManagedDatastoreS3StorageSummary
    ServiceManagedDatastoreS3StorageSummary (..),
    newServiceManagedDatastoreS3StorageSummary,

    -- * SqlQueryDatasetAction
    SqlQueryDatasetAction (..),
    newSqlQueryDatasetAction,

    -- * Tag
    Tag (..),
    newTag,

    -- * TriggeringDataset
    TriggeringDataset (..),
    newTriggeringDataset,

    -- * Variable
    Variable (..),
    newVariable,

    -- * VersioningConfiguration
    VersioningConfiguration (..),
    newVersioningConfiguration,
  )
where

import Network.AWS.IoTAnalytics.Types.AddAttributesActivity
import Network.AWS.IoTAnalytics.Types.BatchPutMessageErrorEntry
import Network.AWS.IoTAnalytics.Types.Channel
import Network.AWS.IoTAnalytics.Types.ChannelActivity
import Network.AWS.IoTAnalytics.Types.ChannelMessages
import Network.AWS.IoTAnalytics.Types.ChannelStatistics
import Network.AWS.IoTAnalytics.Types.ChannelStatus
import Network.AWS.IoTAnalytics.Types.ChannelStorage
import Network.AWS.IoTAnalytics.Types.ChannelStorageSummary
import Network.AWS.IoTAnalytics.Types.ChannelSummary
import Network.AWS.IoTAnalytics.Types.Column
import Network.AWS.IoTAnalytics.Types.ComputeType
import Network.AWS.IoTAnalytics.Types.ContainerDatasetAction
import Network.AWS.IoTAnalytics.Types.CustomerManagedChannelS3Storage
import Network.AWS.IoTAnalytics.Types.CustomerManagedChannelS3StorageSummary
import Network.AWS.IoTAnalytics.Types.CustomerManagedDatastoreS3Storage
import Network.AWS.IoTAnalytics.Types.CustomerManagedDatastoreS3StorageSummary
import Network.AWS.IoTAnalytics.Types.Dataset
import Network.AWS.IoTAnalytics.Types.DatasetAction
import Network.AWS.IoTAnalytics.Types.DatasetActionSummary
import Network.AWS.IoTAnalytics.Types.DatasetActionType
import Network.AWS.IoTAnalytics.Types.DatasetContentDeliveryDestination
import Network.AWS.IoTAnalytics.Types.DatasetContentDeliveryRule
import Network.AWS.IoTAnalytics.Types.DatasetContentState
import Network.AWS.IoTAnalytics.Types.DatasetContentStatus
import Network.AWS.IoTAnalytics.Types.DatasetContentSummary
import Network.AWS.IoTAnalytics.Types.DatasetContentVersionValue
import Network.AWS.IoTAnalytics.Types.DatasetEntry
import Network.AWS.IoTAnalytics.Types.DatasetStatus
import Network.AWS.IoTAnalytics.Types.DatasetSummary
import Network.AWS.IoTAnalytics.Types.DatasetTrigger
import Network.AWS.IoTAnalytics.Types.Datastore
import Network.AWS.IoTAnalytics.Types.DatastoreActivity
import Network.AWS.IoTAnalytics.Types.DatastoreStatistics
import Network.AWS.IoTAnalytics.Types.DatastoreStatus
import Network.AWS.IoTAnalytics.Types.DatastoreStorage
import Network.AWS.IoTAnalytics.Types.DatastoreStorageSummary
import Network.AWS.IoTAnalytics.Types.DatastoreSummary
import Network.AWS.IoTAnalytics.Types.DeltaTime
import Network.AWS.IoTAnalytics.Types.DeltaTimeSessionWindowConfiguration
import Network.AWS.IoTAnalytics.Types.DeviceRegistryEnrichActivity
import Network.AWS.IoTAnalytics.Types.DeviceShadowEnrichActivity
import Network.AWS.IoTAnalytics.Types.EstimatedResourceSize
import Network.AWS.IoTAnalytics.Types.FileFormatConfiguration
import Network.AWS.IoTAnalytics.Types.FileFormatType
import Network.AWS.IoTAnalytics.Types.FilterActivity
import Network.AWS.IoTAnalytics.Types.GlueConfiguration
import Network.AWS.IoTAnalytics.Types.IotEventsDestinationConfiguration
import Network.AWS.IoTAnalytics.Types.JsonConfiguration
import Network.AWS.IoTAnalytics.Types.LambdaActivity
import Network.AWS.IoTAnalytics.Types.LateDataRule
import Network.AWS.IoTAnalytics.Types.LateDataRuleConfiguration
import Network.AWS.IoTAnalytics.Types.LoggingLevel
import Network.AWS.IoTAnalytics.Types.LoggingOptions
import Network.AWS.IoTAnalytics.Types.MathActivity
import Network.AWS.IoTAnalytics.Types.Message
import Network.AWS.IoTAnalytics.Types.OutputFileUriValue
import Network.AWS.IoTAnalytics.Types.ParquetConfiguration
import Network.AWS.IoTAnalytics.Types.Pipeline
import Network.AWS.IoTAnalytics.Types.PipelineActivity
import Network.AWS.IoTAnalytics.Types.PipelineSummary
import Network.AWS.IoTAnalytics.Types.QueryFilter
import Network.AWS.IoTAnalytics.Types.RemoveAttributesActivity
import Network.AWS.IoTAnalytics.Types.ReprocessingStatus
import Network.AWS.IoTAnalytics.Types.ReprocessingSummary
import Network.AWS.IoTAnalytics.Types.ResourceConfiguration
import Network.AWS.IoTAnalytics.Types.RetentionPeriod
import Network.AWS.IoTAnalytics.Types.S3DestinationConfiguration
import Network.AWS.IoTAnalytics.Types.Schedule
import Network.AWS.IoTAnalytics.Types.SchemaDefinition
import Network.AWS.IoTAnalytics.Types.SelectAttributesActivity
import Network.AWS.IoTAnalytics.Types.ServiceManagedChannelS3Storage
import Network.AWS.IoTAnalytics.Types.ServiceManagedChannelS3StorageSummary
import Network.AWS.IoTAnalytics.Types.ServiceManagedDatastoreS3Storage
import Network.AWS.IoTAnalytics.Types.ServiceManagedDatastoreS3StorageSummary
import Network.AWS.IoTAnalytics.Types.SqlQueryDatasetAction
import Network.AWS.IoTAnalytics.Types.Tag
import Network.AWS.IoTAnalytics.Types.TriggeringDataset
import Network.AWS.IoTAnalytics.Types.Variable
import Network.AWS.IoTAnalytics.Types.VersioningConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-11-27@ of the Amazon IoT Analytics SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "IoTAnalytics",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "iotanalytics",
      Prelude._svcVersion = "2017-11-27",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "IoTAnalytics",
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

-- | A resource with the same name already exists.
_ResourceAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "ResourceAlreadyExistsException"
    Prelude.. Prelude.hasStatus 409

-- | The service is temporarily unavailable.
_ServiceUnavailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceUnavailableException =
  Prelude._MatchServiceError
    defaultService
    "ServiceUnavailableException"
    Prelude.. Prelude.hasStatus 503

-- | The request was denied due to request throttling.
_ThrottlingException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ThrottlingException =
  Prelude._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Prelude.hasStatus 429

-- | The request was not valid.
_InvalidRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRequestException =
  Prelude._MatchServiceError
    defaultService
    "InvalidRequestException"
    Prelude.. Prelude.hasStatus 400

-- | The command caused an internal limit to be exceeded.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Prelude.hasStatus 410

-- | A resource with the specified name could not be found.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | There was an internal failure.
_InternalFailureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalFailureException =
  Prelude._MatchServiceError
    defaultService
    "InternalFailureException"
    Prelude.. Prelude.hasStatus 500
