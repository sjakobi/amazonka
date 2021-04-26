{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ServiceUnavailableException,
    _ConcurrentModificationException,
    _ResourceInUseException,
    _LimitExceededException,
    _InvalidKMSResourceException,
    _ResourceNotFoundException,
    _InvalidArgumentException,

    -- * CompressionFormat
    CompressionFormat (..),

    -- * ContentEncoding
    ContentEncoding (..),

    -- * DeliveryStreamEncryptionStatus
    DeliveryStreamEncryptionStatus (..),

    -- * DeliveryStreamFailureType
    DeliveryStreamFailureType (..),

    -- * DeliveryStreamStatus
    DeliveryStreamStatus (..),

    -- * DeliveryStreamType
    DeliveryStreamType (..),

    -- * ElasticsearchIndexRotationPeriod
    ElasticsearchIndexRotationPeriod (..),

    -- * ElasticsearchS3BackupMode
    ElasticsearchS3BackupMode (..),

    -- * HECEndpointType
    HECEndpointType (..),

    -- * HttpEndpointS3BackupMode
    HttpEndpointS3BackupMode (..),

    -- * KeyType
    KeyType (..),

    -- * NoEncryptionConfig
    NoEncryptionConfig (..),

    -- * OrcCompression
    OrcCompression (..),

    -- * OrcFormatVersion
    OrcFormatVersion (..),

    -- * ParquetCompression
    ParquetCompression (..),

    -- * ParquetWriterVersion
    ParquetWriterVersion (..),

    -- * ProcessorParameterName
    ProcessorParameterName (..),

    -- * ProcessorType
    ProcessorType (..),

    -- * RedshiftS3BackupMode
    RedshiftS3BackupMode (..),

    -- * S3BackupMode
    S3BackupMode (..),

    -- * SplunkS3BackupMode
    SplunkS3BackupMode (..),

    -- * BufferingHints
    BufferingHints (..),
    newBufferingHints,

    -- * CloudWatchLoggingOptions
    CloudWatchLoggingOptions (..),
    newCloudWatchLoggingOptions,

    -- * CopyCommand
    CopyCommand (..),
    newCopyCommand,

    -- * DataFormatConversionConfiguration
    DataFormatConversionConfiguration (..),
    newDataFormatConversionConfiguration,

    -- * DeliveryStreamDescription
    DeliveryStreamDescription (..),
    newDeliveryStreamDescription,

    -- * DeliveryStreamEncryptionConfiguration
    DeliveryStreamEncryptionConfiguration (..),
    newDeliveryStreamEncryptionConfiguration,

    -- * DeliveryStreamEncryptionConfigurationInput
    DeliveryStreamEncryptionConfigurationInput (..),
    newDeliveryStreamEncryptionConfigurationInput,

    -- * Deserializer
    Deserializer (..),
    newDeserializer,

    -- * DestinationDescription
    DestinationDescription (..),
    newDestinationDescription,

    -- * ElasticsearchBufferingHints
    ElasticsearchBufferingHints (..),
    newElasticsearchBufferingHints,

    -- * ElasticsearchDestinationConfiguration
    ElasticsearchDestinationConfiguration (..),
    newElasticsearchDestinationConfiguration,

    -- * ElasticsearchDestinationDescription
    ElasticsearchDestinationDescription (..),
    newElasticsearchDestinationDescription,

    -- * ElasticsearchDestinationUpdate
    ElasticsearchDestinationUpdate (..),
    newElasticsearchDestinationUpdate,

    -- * ElasticsearchRetryOptions
    ElasticsearchRetryOptions (..),
    newElasticsearchRetryOptions,

    -- * EncryptionConfiguration
    EncryptionConfiguration (..),
    newEncryptionConfiguration,

    -- * ExtendedS3DestinationConfiguration
    ExtendedS3DestinationConfiguration (..),
    newExtendedS3DestinationConfiguration,

    -- * ExtendedS3DestinationDescription
    ExtendedS3DestinationDescription (..),
    newExtendedS3DestinationDescription,

    -- * ExtendedS3DestinationUpdate
    ExtendedS3DestinationUpdate (..),
    newExtendedS3DestinationUpdate,

    -- * FailureDescription
    FailureDescription (..),
    newFailureDescription,

    -- * HiveJsonSerDe
    HiveJsonSerDe (..),
    newHiveJsonSerDe,

    -- * HttpEndpointBufferingHints
    HttpEndpointBufferingHints (..),
    newHttpEndpointBufferingHints,

    -- * HttpEndpointCommonAttribute
    HttpEndpointCommonAttribute (..),
    newHttpEndpointCommonAttribute,

    -- * HttpEndpointConfiguration
    HttpEndpointConfiguration (..),
    newHttpEndpointConfiguration,

    -- * HttpEndpointDescription
    HttpEndpointDescription (..),
    newHttpEndpointDescription,

    -- * HttpEndpointDestinationConfiguration
    HttpEndpointDestinationConfiguration (..),
    newHttpEndpointDestinationConfiguration,

    -- * HttpEndpointDestinationDescription
    HttpEndpointDestinationDescription (..),
    newHttpEndpointDestinationDescription,

    -- * HttpEndpointDestinationUpdate
    HttpEndpointDestinationUpdate (..),
    newHttpEndpointDestinationUpdate,

    -- * HttpEndpointRequestConfiguration
    HttpEndpointRequestConfiguration (..),
    newHttpEndpointRequestConfiguration,

    -- * HttpEndpointRetryOptions
    HttpEndpointRetryOptions (..),
    newHttpEndpointRetryOptions,

    -- * InputFormatConfiguration
    InputFormatConfiguration (..),
    newInputFormatConfiguration,

    -- * KMSEncryptionConfig
    KMSEncryptionConfig (..),
    newKMSEncryptionConfig,

    -- * KinesisStreamSourceConfiguration
    KinesisStreamSourceConfiguration (..),
    newKinesisStreamSourceConfiguration,

    -- * KinesisStreamSourceDescription
    KinesisStreamSourceDescription (..),
    newKinesisStreamSourceDescription,

    -- * OpenXJsonSerDe
    OpenXJsonSerDe (..),
    newOpenXJsonSerDe,

    -- * OrcSerDe
    OrcSerDe (..),
    newOrcSerDe,

    -- * OutputFormatConfiguration
    OutputFormatConfiguration (..),
    newOutputFormatConfiguration,

    -- * ParquetSerDe
    ParquetSerDe (..),
    newParquetSerDe,

    -- * ProcessingConfiguration
    ProcessingConfiguration (..),
    newProcessingConfiguration,

    -- * Processor
    Processor (..),
    newProcessor,

    -- * ProcessorParameter
    ProcessorParameter (..),
    newProcessorParameter,

    -- * PutRecordBatchResponseEntry
    PutRecordBatchResponseEntry (..),
    newPutRecordBatchResponseEntry,

    -- * Record
    Record (..),
    newRecord,

    -- * RedshiftDestinationConfiguration
    RedshiftDestinationConfiguration (..),
    newRedshiftDestinationConfiguration,

    -- * RedshiftDestinationDescription
    RedshiftDestinationDescription (..),
    newRedshiftDestinationDescription,

    -- * RedshiftDestinationUpdate
    RedshiftDestinationUpdate (..),
    newRedshiftDestinationUpdate,

    -- * RedshiftRetryOptions
    RedshiftRetryOptions (..),
    newRedshiftRetryOptions,

    -- * S3DestinationConfiguration
    S3DestinationConfiguration (..),
    newS3DestinationConfiguration,

    -- * S3DestinationDescription
    S3DestinationDescription (..),
    newS3DestinationDescription,

    -- * S3DestinationUpdate
    S3DestinationUpdate (..),
    newS3DestinationUpdate,

    -- * SchemaConfiguration
    SchemaConfiguration (..),
    newSchemaConfiguration,

    -- * Serializer
    Serializer (..),
    newSerializer,

    -- * SourceDescription
    SourceDescription (..),
    newSourceDescription,

    -- * SplunkDestinationConfiguration
    SplunkDestinationConfiguration (..),
    newSplunkDestinationConfiguration,

    -- * SplunkDestinationDescription
    SplunkDestinationDescription (..),
    newSplunkDestinationDescription,

    -- * SplunkDestinationUpdate
    SplunkDestinationUpdate (..),
    newSplunkDestinationUpdate,

    -- * SplunkRetryOptions
    SplunkRetryOptions (..),
    newSplunkRetryOptions,

    -- * Tag
    Tag (..),
    newTag,

    -- * VpcConfiguration
    VpcConfiguration (..),
    newVpcConfiguration,

    -- * VpcConfigurationDescription
    VpcConfigurationDescription (..),
    newVpcConfigurationDescription,
  )
where

import Network.AWS.Firehose.Types.BufferingHints
import Network.AWS.Firehose.Types.CloudWatchLoggingOptions
import Network.AWS.Firehose.Types.CompressionFormat
import Network.AWS.Firehose.Types.ContentEncoding
import Network.AWS.Firehose.Types.CopyCommand
import Network.AWS.Firehose.Types.DataFormatConversionConfiguration
import Network.AWS.Firehose.Types.DeliveryStreamDescription
import Network.AWS.Firehose.Types.DeliveryStreamEncryptionConfiguration
import Network.AWS.Firehose.Types.DeliveryStreamEncryptionConfigurationInput
import Network.AWS.Firehose.Types.DeliveryStreamEncryptionStatus
import Network.AWS.Firehose.Types.DeliveryStreamFailureType
import Network.AWS.Firehose.Types.DeliveryStreamStatus
import Network.AWS.Firehose.Types.DeliveryStreamType
import Network.AWS.Firehose.Types.Deserializer
import Network.AWS.Firehose.Types.DestinationDescription
import Network.AWS.Firehose.Types.ElasticsearchBufferingHints
import Network.AWS.Firehose.Types.ElasticsearchDestinationConfiguration
import Network.AWS.Firehose.Types.ElasticsearchDestinationDescription
import Network.AWS.Firehose.Types.ElasticsearchDestinationUpdate
import Network.AWS.Firehose.Types.ElasticsearchIndexRotationPeriod
import Network.AWS.Firehose.Types.ElasticsearchRetryOptions
import Network.AWS.Firehose.Types.ElasticsearchS3BackupMode
import Network.AWS.Firehose.Types.EncryptionConfiguration
import Network.AWS.Firehose.Types.ExtendedS3DestinationConfiguration
import Network.AWS.Firehose.Types.ExtendedS3DestinationDescription
import Network.AWS.Firehose.Types.ExtendedS3DestinationUpdate
import Network.AWS.Firehose.Types.FailureDescription
import Network.AWS.Firehose.Types.HECEndpointType
import Network.AWS.Firehose.Types.HiveJsonSerDe
import Network.AWS.Firehose.Types.HttpEndpointBufferingHints
import Network.AWS.Firehose.Types.HttpEndpointCommonAttribute
import Network.AWS.Firehose.Types.HttpEndpointConfiguration
import Network.AWS.Firehose.Types.HttpEndpointDescription
import Network.AWS.Firehose.Types.HttpEndpointDestinationConfiguration
import Network.AWS.Firehose.Types.HttpEndpointDestinationDescription
import Network.AWS.Firehose.Types.HttpEndpointDestinationUpdate
import Network.AWS.Firehose.Types.HttpEndpointRequestConfiguration
import Network.AWS.Firehose.Types.HttpEndpointRetryOptions
import Network.AWS.Firehose.Types.HttpEndpointS3BackupMode
import Network.AWS.Firehose.Types.InputFormatConfiguration
import Network.AWS.Firehose.Types.KMSEncryptionConfig
import Network.AWS.Firehose.Types.KeyType
import Network.AWS.Firehose.Types.KinesisStreamSourceConfiguration
import Network.AWS.Firehose.Types.KinesisStreamSourceDescription
import Network.AWS.Firehose.Types.NoEncryptionConfig
import Network.AWS.Firehose.Types.OpenXJsonSerDe
import Network.AWS.Firehose.Types.OrcCompression
import Network.AWS.Firehose.Types.OrcFormatVersion
import Network.AWS.Firehose.Types.OrcSerDe
import Network.AWS.Firehose.Types.OutputFormatConfiguration
import Network.AWS.Firehose.Types.ParquetCompression
import Network.AWS.Firehose.Types.ParquetSerDe
import Network.AWS.Firehose.Types.ParquetWriterVersion
import Network.AWS.Firehose.Types.ProcessingConfiguration
import Network.AWS.Firehose.Types.Processor
import Network.AWS.Firehose.Types.ProcessorParameter
import Network.AWS.Firehose.Types.ProcessorParameterName
import Network.AWS.Firehose.Types.ProcessorType
import Network.AWS.Firehose.Types.PutRecordBatchResponseEntry
import Network.AWS.Firehose.Types.Record
import Network.AWS.Firehose.Types.RedshiftDestinationConfiguration
import Network.AWS.Firehose.Types.RedshiftDestinationDescription
import Network.AWS.Firehose.Types.RedshiftDestinationUpdate
import Network.AWS.Firehose.Types.RedshiftRetryOptions
import Network.AWS.Firehose.Types.RedshiftS3BackupMode
import Network.AWS.Firehose.Types.S3BackupMode
import Network.AWS.Firehose.Types.S3DestinationConfiguration
import Network.AWS.Firehose.Types.S3DestinationDescription
import Network.AWS.Firehose.Types.S3DestinationUpdate
import Network.AWS.Firehose.Types.SchemaConfiguration
import Network.AWS.Firehose.Types.Serializer
import Network.AWS.Firehose.Types.SourceDescription
import Network.AWS.Firehose.Types.SplunkDestinationConfiguration
import Network.AWS.Firehose.Types.SplunkDestinationDescription
import Network.AWS.Firehose.Types.SplunkDestinationUpdate
import Network.AWS.Firehose.Types.SplunkRetryOptions
import Network.AWS.Firehose.Types.SplunkS3BackupMode
import Network.AWS.Firehose.Types.Tag
import Network.AWS.Firehose.Types.VpcConfiguration
import Network.AWS.Firehose.Types.VpcConfigurationDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-08-04@ of the Amazon Kinesis Firehose SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Firehose",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "firehose",
      Prelude._svcVersion = "2015-08-04",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "Firehose",
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

-- | The service is unavailable. Back off and retry the operation. If you
-- continue to see the exception, throughput limits for the delivery stream
-- may have been exceeded. For more information about limits and how to
-- request an increase, see
-- <https://docs.aws.amazon.com/firehose/latest/dev/limits.html Amazon Kinesis Data Firehose Limits>.
_ServiceUnavailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceUnavailableException =
  Prelude._MatchServiceError
    defaultService
    "ServiceUnavailableException"

-- | Another modification has already happened. Fetch @VersionId@ again and
-- use it to update the destination.
_ConcurrentModificationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentModificationException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentModificationException"

-- | The resource is already in use and not available for this operation.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | You have already reached the limit for a requested resource.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | Kinesis Data Firehose throws this exception when an attempt to put
-- records or to start or stop delivery stream encryption fails. This
-- happens when the KMS service throws one of the following exception
-- types: @AccessDeniedException@, @InvalidStateException@,
-- @DisabledException@, or @NotFoundException@.
_InvalidKMSResourceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidKMSResourceException =
  Prelude._MatchServiceError
    defaultService
    "InvalidKMSResourceException"

-- | The specified resource could not be found.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The specified input parameter has a value that is not valid.
_InvalidArgumentException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidArgumentException =
  Prelude._MatchServiceError
    defaultService
    "InvalidArgumentException"
