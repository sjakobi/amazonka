{-# LANGUAGE OverloadedStrings #-}

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
    firehose,

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

    -- * HTTPEndpointS3BackupMode
    HTTPEndpointS3BackupMode (..),

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
    bufferingHints,
    bhSizeInMBs,
    bhIntervalInSeconds,

    -- * CloudWatchLoggingOptions
    CloudWatchLoggingOptions (..),
    cloudWatchLoggingOptions,
    cwloLogStreamName,
    cwloEnabled,
    cwloLogGroupName,

    -- * CopyCommand
    CopyCommand (..),
    copyCommand,
    ccCopyOptions,
    ccDataTableColumns,
    ccDataTableName,

    -- * DataFormatConversionConfiguration
    DataFormatConversionConfiguration (..),
    dataFormatConversionConfiguration,
    dfccEnabled,
    dfccInputFormatConfiguration,
    dfccOutputFormatConfiguration,
    dfccSchemaConfiguration,

    -- * DeliveryStreamDescription
    DeliveryStreamDescription (..),
    deliveryStreamDescription,
    dsdDeliveryStreamEncryptionConfiguration,
    dsdSource,
    dsdCreateTimestamp,
    dsdFailureDescription,
    dsdLastUpdateTimestamp,
    dsdDeliveryStreamName,
    dsdDeliveryStreamARN,
    dsdDeliveryStreamStatus,
    dsdDeliveryStreamType,
    dsdVersionId,
    dsdDestinations,
    dsdHasMoreDestinations,

    -- * DeliveryStreamEncryptionConfiguration
    DeliveryStreamEncryptionConfiguration (..),
    deliveryStreamEncryptionConfiguration,
    dsecStatus,
    dsecKeyARN,
    dsecKeyType,
    dsecFailureDescription,

    -- * DeliveryStreamEncryptionConfigurationInput
    DeliveryStreamEncryptionConfigurationInput (..),
    deliveryStreamEncryptionConfigurationInput,
    dseciKeyARN,
    dseciKeyType,

    -- * Deserializer
    Deserializer (..),
    deserializer,
    dHiveJSONSerDe,
    dOpenXJSONSerDe,

    -- * DestinationDescription
    DestinationDescription (..),
    destinationDescription,
    ddElasticsearchDestinationDescription,
    ddHTTPEndpointDestinationDescription,
    ddExtendedS3DestinationDescription,
    ddRedshiftDestinationDescription,
    ddSplunkDestinationDescription,
    ddS3DestinationDescription,
    ddDestinationId,

    -- * ElasticsearchBufferingHints
    ElasticsearchBufferingHints (..),
    elasticsearchBufferingHints,
    ebhSizeInMBs,
    ebhIntervalInSeconds,

    -- * ElasticsearchDestinationConfiguration
    ElasticsearchDestinationConfiguration (..),
    elasticsearchDestinationConfiguration,
    edcTypeName,
    edcClusterEndpoint,
    edcProcessingConfiguration,
    edcCloudWatchLoggingOptions,
    edcDomainARN,
    edcVPCConfiguration,
    edcIndexRotationPeriod,
    edcBufferingHints,
    edcRetryOptions,
    edcS3BackupMode,
    edcRoleARN,
    edcIndexName,
    edcS3Configuration,

    -- * ElasticsearchDestinationDescription
    ElasticsearchDestinationDescription (..),
    elasticsearchDestinationDescription,
    eddTypeName,
    eddRoleARN,
    eddClusterEndpoint,
    eddIndexName,
    eddProcessingConfiguration,
    eddCloudWatchLoggingOptions,
    eddDomainARN,
    eddIndexRotationPeriod,
    eddVPCConfigurationDescription,
    eddBufferingHints,
    eddRetryOptions,
    eddS3BackupMode,
    eddS3DestinationDescription,

    -- * ElasticsearchDestinationUpdate
    ElasticsearchDestinationUpdate (..),
    elasticsearchDestinationUpdate,
    eduTypeName,
    eduRoleARN,
    eduClusterEndpoint,
    eduIndexName,
    eduS3Update,
    eduProcessingConfiguration,
    eduCloudWatchLoggingOptions,
    eduDomainARN,
    eduIndexRotationPeriod,
    eduBufferingHints,
    eduRetryOptions,

    -- * ElasticsearchRetryOptions
    ElasticsearchRetryOptions (..),
    elasticsearchRetryOptions,
    eroDurationInSeconds,

    -- * EncryptionConfiguration
    EncryptionConfiguration (..),
    encryptionConfiguration,
    ecKMSEncryptionConfig,
    ecNoEncryptionConfig,

    -- * ExtendedS3DestinationConfiguration
    ExtendedS3DestinationConfiguration (..),
    extendedS3DestinationConfiguration,
    esdcErrorOutputPrefix,
    esdcEncryptionConfiguration,
    esdcS3BackupConfiguration,
    esdcProcessingConfiguration,
    esdcDataFormatConversionConfiguration,
    esdcCloudWatchLoggingOptions,
    esdcPrefix,
    esdcBufferingHints,
    esdcS3BackupMode,
    esdcCompressionFormat,
    esdcRoleARN,
    esdcBucketARN,

    -- * ExtendedS3DestinationDescription
    ExtendedS3DestinationDescription (..),
    extendedS3DestinationDescription,
    esddErrorOutputPrefix,
    esddProcessingConfiguration,
    esddDataFormatConversionConfiguration,
    esddCloudWatchLoggingOptions,
    esddPrefix,
    esddS3BackupDescription,
    esddS3BackupMode,
    esddRoleARN,
    esddBucketARN,
    esddBufferingHints,
    esddCompressionFormat,
    esddEncryptionConfiguration,

    -- * ExtendedS3DestinationUpdate
    ExtendedS3DestinationUpdate (..),
    extendedS3DestinationUpdate,
    esduErrorOutputPrefix,
    esduEncryptionConfiguration,
    esduRoleARN,
    esduBucketARN,
    esduProcessingConfiguration,
    esduDataFormatConversionConfiguration,
    esduCloudWatchLoggingOptions,
    esduPrefix,
    esduS3BackupUpdate,
    esduBufferingHints,
    esduS3BackupMode,
    esduCompressionFormat,

    -- * FailureDescription
    FailureDescription (..),
    failureDescription,
    fdType,
    fdDetails,

    -- * HTTPEndpointBufferingHints
    HTTPEndpointBufferingHints (..),
    hTTPEndpointBufferingHints,
    httpebhSizeInMBs,
    httpebhIntervalInSeconds,

    -- * HTTPEndpointCommonAttribute
    HTTPEndpointCommonAttribute (..),
    hTTPEndpointCommonAttribute,
    httpecaAttributeName,
    httpecaAttributeValue,

    -- * HTTPEndpointConfiguration
    HTTPEndpointConfiguration (..),
    hTTPEndpointConfiguration,
    httpecAccessKey,
    httpecName,
    httpecURL,

    -- * HTTPEndpointDescription
    HTTPEndpointDescription (..),
    hTTPEndpointDescription,
    httpedName,
    httpedURL,

    -- * HTTPEndpointDestinationConfiguration
    HTTPEndpointDestinationConfiguration (..),
    hTTPEndpointDestinationConfiguration,
    httpedcRoleARN,
    httpedcProcessingConfiguration,
    httpedcCloudWatchLoggingOptions,
    httpedcRequestConfiguration,
    httpedcBufferingHints,
    httpedcRetryOptions,
    httpedcS3BackupMode,
    httpedcEndpointConfiguration,
    httpedcS3Configuration,

    -- * HTTPEndpointDestinationDescription
    HTTPEndpointDestinationDescription (..),
    hTTPEndpointDestinationDescription,
    httpeddRoleARN,
    httpeddProcessingConfiguration,
    httpeddEndpointConfiguration,
    httpeddCloudWatchLoggingOptions,
    httpeddRequestConfiguration,
    httpeddBufferingHints,
    httpeddRetryOptions,
    httpeddS3BackupMode,
    httpeddS3DestinationDescription,

    -- * HTTPEndpointDestinationUpdate
    HTTPEndpointDestinationUpdate (..),
    hTTPEndpointDestinationUpdate,
    httpeduRoleARN,
    httpeduS3Update,
    httpeduProcessingConfiguration,
    httpeduEndpointConfiguration,
    httpeduCloudWatchLoggingOptions,
    httpeduRequestConfiguration,
    httpeduBufferingHints,
    httpeduRetryOptions,
    httpeduS3BackupMode,

    -- * HTTPEndpointRequestConfiguration
    HTTPEndpointRequestConfiguration (..),
    hTTPEndpointRequestConfiguration,
    httpercContentEncoding,
    httpercCommonAttributes,

    -- * HTTPEndpointRetryOptions
    HTTPEndpointRetryOptions (..),
    hTTPEndpointRetryOptions,
    httperoDurationInSeconds,

    -- * HiveJSONSerDe
    HiveJSONSerDe (..),
    hiveJSONSerDe,
    hjsdTimestampFormats,

    -- * InputFormatConfiguration
    InputFormatConfiguration (..),
    inputFormatConfiguration,
    ifcDeserializer,

    -- * KMSEncryptionConfig
    KMSEncryptionConfig (..),
    kmsEncryptionConfig,
    kecAWSKMSKeyARN,

    -- * KinesisStreamSourceConfiguration
    KinesisStreamSourceConfiguration (..),
    kinesisStreamSourceConfiguration,
    ksscKinesisStreamARN,
    ksscRoleARN,

    -- * KinesisStreamSourceDescription
    KinesisStreamSourceDescription (..),
    kinesisStreamSourceDescription,
    kssdRoleARN,
    kssdDeliveryStartTimestamp,
    kssdKinesisStreamARN,

    -- * OpenXJSONSerDe
    OpenXJSONSerDe (..),
    openXJSONSerDe,
    oxjsdCaseInsensitive,
    oxjsdColumnToJSONKeyMappings,
    oxjsdConvertDotsInJSONKeysToUnderscores,

    -- * OrcSerDe
    OrcSerDe (..),
    orcSerDe,
    osdRowIndexStride,
    osdCompression,
    osdDictionaryKeyThreshold,
    osdBlockSizeBytes,
    osdFormatVersion,
    osdBloomFilterColumns,
    osdEnablePadding,
    osdBloomFilterFalsePositiveProbability,
    osdPaddingTolerance,
    osdStripeSizeBytes,

    -- * OutputFormatConfiguration
    OutputFormatConfiguration (..),
    outputFormatConfiguration,
    ofcSerializer,

    -- * ParquetSerDe
    ParquetSerDe (..),
    parquetSerDe,
    psdPageSizeBytes,
    psdEnableDictionaryCompression,
    psdMaxPaddingBytes,
    psdCompression,
    psdWriterVersion,
    psdBlockSizeBytes,

    -- * ProcessingConfiguration
    ProcessingConfiguration (..),
    processingConfiguration,
    pcEnabled,
    pcProcessors,

    -- * Processor
    Processor (..),
    processor,
    pParameters,
    pType,

    -- * ProcessorParameter
    ProcessorParameter (..),
    processorParameter,
    ppParameterName,
    ppParameterValue,

    -- * PutRecordBatchResponseEntry
    PutRecordBatchResponseEntry (..),
    putRecordBatchResponseEntry,
    prbreRecordId,
    prbreErrorMessage,
    prbreErrorCode,

    -- * Record
    Record (..),
    record,
    rData,

    -- * RedshiftDestinationConfiguration
    RedshiftDestinationConfiguration (..),
    redshiftDestinationConfiguration,
    rdcS3BackupConfiguration,
    rdcProcessingConfiguration,
    rdcCloudWatchLoggingOptions,
    rdcRetryOptions,
    rdcS3BackupMode,
    rdcRoleARN,
    rdcClusterJDBCURL,
    rdcCopyCommand,
    rdcUsername,
    rdcPassword,
    rdcS3Configuration,

    -- * RedshiftDestinationDescription
    RedshiftDestinationDescription (..),
    redshiftDestinationDescription,
    rddProcessingConfiguration,
    rddCloudWatchLoggingOptions,
    rddS3BackupDescription,
    rddRetryOptions,
    rddS3BackupMode,
    rddRoleARN,
    rddClusterJDBCURL,
    rddCopyCommand,
    rddUsername,
    rddS3DestinationDescription,

    -- * RedshiftDestinationUpdate
    RedshiftDestinationUpdate (..),
    redshiftDestinationUpdate,
    rduRoleARN,
    rduS3Update,
    rduClusterJDBCURL,
    rduProcessingConfiguration,
    rduCloudWatchLoggingOptions,
    rduCopyCommand,
    rduS3BackupUpdate,
    rduPassword,
    rduUsername,
    rduRetryOptions,
    rduS3BackupMode,

    -- * RedshiftRetryOptions
    RedshiftRetryOptions (..),
    redshiftRetryOptions,
    rroDurationInSeconds,

    -- * S3DestinationConfiguration
    S3DestinationConfiguration (..),
    s3DestinationConfiguration,
    sdcErrorOutputPrefix,
    sdcEncryptionConfiguration,
    sdcCloudWatchLoggingOptions,
    sdcPrefix,
    sdcBufferingHints,
    sdcCompressionFormat,
    sdcRoleARN,
    sdcBucketARN,

    -- * S3DestinationDescription
    S3DestinationDescription (..),
    s3DestinationDescription,
    sddErrorOutputPrefix,
    sddCloudWatchLoggingOptions,
    sddPrefix,
    sddRoleARN,
    sddBucketARN,
    sddBufferingHints,
    sddCompressionFormat,
    sddEncryptionConfiguration,

    -- * S3DestinationUpdate
    S3DestinationUpdate (..),
    s3DestinationUpdate,
    sduErrorOutputPrefix,
    sduEncryptionConfiguration,
    sduRoleARN,
    sduBucketARN,
    sduCloudWatchLoggingOptions,
    sduPrefix,
    sduBufferingHints,
    sduCompressionFormat,

    -- * SchemaConfiguration
    SchemaConfiguration (..),
    schemaConfiguration,
    scRoleARN,
    scTableName,
    scCatalogId,
    scVersionId,
    scRegion,
    scDatabaseName,

    -- * Serializer
    Serializer (..),
    serializer,
    sOrcSerDe,
    sParquetSerDe,

    -- * SourceDescription
    SourceDescription (..),
    sourceDescription,
    sdKinesisStreamSourceDescription,

    -- * SplunkDestinationConfiguration
    SplunkDestinationConfiguration (..),
    splunkDestinationConfiguration,
    sdcdHECAcknowledgmentTimeoutInSeconds,
    sdcdProcessingConfiguration,
    sdcdCloudWatchLoggingOptions,
    sdcdRetryOptions,
    sdcdS3BackupMode,
    sdcdHECEndpoint,
    sdcdHECEndpointType,
    sdcdHECToken,
    sdcdS3Configuration,

    -- * SplunkDestinationDescription
    SplunkDestinationDescription (..),
    splunkDestinationDescription,
    sHECAcknowledgmentTimeoutInSeconds,
    sProcessingConfiguration,
    sCloudWatchLoggingOptions,
    sHECEndpointType,
    sRetryOptions,
    sS3BackupMode,
    sHECEndpoint,
    sHECToken,
    sS3DestinationDescription,

    -- * SplunkDestinationUpdate
    SplunkDestinationUpdate (..),
    splunkDestinationUpdate,
    splS3Update,
    splHECAcknowledgmentTimeoutInSeconds,
    splProcessingConfiguration,
    splCloudWatchLoggingOptions,
    splHECEndpointType,
    splRetryOptions,
    splS3BackupMode,
    splHECEndpoint,
    splHECToken,

    -- * SplunkRetryOptions
    SplunkRetryOptions (..),
    splunkRetryOptions,
    sroDurationInSeconds,

    -- * Tag
    Tag (..),
    tag,
    tagValue,
    tagKey,

    -- * VPCConfiguration
    VPCConfiguration (..),
    vpcConfiguration,
    vcSubnetIds,
    vcRoleARN,
    vcSecurityGroupIds,

    -- * VPCConfigurationDescription
    VPCConfigurationDescription (..),
    vpcConfigurationDescription,
    vcdSubnetIds,
    vcdRoleARN,
    vcdSecurityGroupIds,
    vcdVPCId,
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
import Network.AWS.Firehose.Types.HTTPEndpointBufferingHints
import Network.AWS.Firehose.Types.HTTPEndpointCommonAttribute
import Network.AWS.Firehose.Types.HTTPEndpointConfiguration
import Network.AWS.Firehose.Types.HTTPEndpointDescription
import Network.AWS.Firehose.Types.HTTPEndpointDestinationConfiguration
import Network.AWS.Firehose.Types.HTTPEndpointDestinationDescription
import Network.AWS.Firehose.Types.HTTPEndpointDestinationUpdate
import Network.AWS.Firehose.Types.HTTPEndpointRequestConfiguration
import Network.AWS.Firehose.Types.HTTPEndpointRetryOptions
import Network.AWS.Firehose.Types.HTTPEndpointS3BackupMode
import Network.AWS.Firehose.Types.HiveJSONSerDe
import Network.AWS.Firehose.Types.InputFormatConfiguration
import Network.AWS.Firehose.Types.KMSEncryptionConfig
import Network.AWS.Firehose.Types.KeyType
import Network.AWS.Firehose.Types.KinesisStreamSourceConfiguration
import Network.AWS.Firehose.Types.KinesisStreamSourceDescription
import Network.AWS.Firehose.Types.NoEncryptionConfig
import Network.AWS.Firehose.Types.OpenXJSONSerDe
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
import Network.AWS.Firehose.Types.VPCConfiguration
import Network.AWS.Firehose.Types.VPCConfigurationDescription
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-08-04@ of the Amazon Kinesis Firehose SDK configuration.
firehose :: Service
firehose =
  Service
    { _svcAbbrev = "Firehose",
      _svcSigner = v4,
      _svcPrefix = "firehose",
      _svcVersion = "2015-08-04",
      _svcEndpoint = defaultEndpoint firehose,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Firehose",
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

-- | The service is unavailable. Back off and retry the operation. If you continue to see the exception, throughput limits for the delivery stream may have been exceeded. For more information about limits and how to request an increase, see <https://docs.aws.amazon.com/firehose/latest/dev/limits.html Amazon Kinesis Data Firehose Limits> .
_ServiceUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceUnavailableException =
  _MatchServiceError
    firehose
    "ServiceUnavailableException"

-- | Another modification has already happened. Fetch @VersionId@ again and use it to update the destination.
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException =
  _MatchServiceError
    firehose
    "ConcurrentModificationException"

-- | The resource is already in use and not available for this operation.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError
    firehose
    "ResourceInUseException"

-- | You have already reached the limit for a requested resource.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    firehose
    "LimitExceededException"

-- | Kinesis Data Firehose throws this exception when an attempt to put records or to start or stop delivery stream encryption fails. This happens when the KMS service throws one of the following exception types: @AccessDeniedException@ , @InvalidStateException@ , @DisabledException@ , or @NotFoundException@ .
_InvalidKMSResourceException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidKMSResourceException =
  _MatchServiceError
    firehose
    "InvalidKMSResourceException"

-- | The specified resource could not be found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    firehose
    "ResourceNotFoundException"

-- | The specified input parameter has a value that is not valid.
_InvalidArgumentException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidArgumentException =
  _MatchServiceError
    firehose
    "InvalidArgumentException"
