{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Kinesis Data Firehose API Reference__
--
-- Amazon Kinesis Data Firehose is a fully managed service that delivers real-time streaming data to destinations such as Amazon Simple Storage Service (Amazon S3), Amazon Elasticsearch Service (Amazon ES), Amazon Redshift, and Splunk.
module Network.AWS.Firehose
  ( -- * Service Configuration
    firehose,

    -- * Errors
    -- $errors

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** InvalidKMSResourceException
    _InvalidKMSResourceException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InvalidArgumentException
    _InvalidArgumentException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** StartDeliveryStreamEncryption
    module Network.AWS.Firehose.StartDeliveryStreamEncryption,

    -- ** StopDeliveryStreamEncryption
    module Network.AWS.Firehose.StopDeliveryStreamEncryption,

    -- ** ListDeliveryStreams
    module Network.AWS.Firehose.ListDeliveryStreams,

    -- ** PutRecordBatch
    module Network.AWS.Firehose.PutRecordBatch,

    -- ** ListTagsForDeliveryStream
    module Network.AWS.Firehose.ListTagsForDeliveryStream,

    -- ** UpdateDestination
    module Network.AWS.Firehose.UpdateDestination,

    -- ** DescribeDeliveryStream
    module Network.AWS.Firehose.DescribeDeliveryStream,

    -- ** CreateDeliveryStream
    module Network.AWS.Firehose.CreateDeliveryStream,

    -- ** PutRecord
    module Network.AWS.Firehose.PutRecord,

    -- ** DeleteDeliveryStream
    module Network.AWS.Firehose.DeleteDeliveryStream,

    -- ** UntagDeliveryStream
    module Network.AWS.Firehose.UntagDeliveryStream,

    -- ** TagDeliveryStream
    module Network.AWS.Firehose.TagDeliveryStream,

    -- * Types

    -- ** CompressionFormat
    CompressionFormat (..),

    -- ** ContentEncoding
    ContentEncoding (..),

    -- ** DeliveryStreamEncryptionStatus
    DeliveryStreamEncryptionStatus (..),

    -- ** DeliveryStreamFailureType
    DeliveryStreamFailureType (..),

    -- ** DeliveryStreamStatus
    DeliveryStreamStatus (..),

    -- ** DeliveryStreamType
    DeliveryStreamType (..),

    -- ** ElasticsearchIndexRotationPeriod
    ElasticsearchIndexRotationPeriod (..),

    -- ** ElasticsearchS3BackupMode
    ElasticsearchS3BackupMode (..),

    -- ** HECEndpointType
    HECEndpointType (..),

    -- ** HTTPEndpointS3BackupMode
    HTTPEndpointS3BackupMode (..),

    -- ** KeyType
    KeyType (..),

    -- ** NoEncryptionConfig
    NoEncryptionConfig (..),

    -- ** OrcCompression
    OrcCompression (..),

    -- ** OrcFormatVersion
    OrcFormatVersion (..),

    -- ** ParquetCompression
    ParquetCompression (..),

    -- ** ParquetWriterVersion
    ParquetWriterVersion (..),

    -- ** ProcessorParameterName
    ProcessorParameterName (..),

    -- ** ProcessorType
    ProcessorType (..),

    -- ** RedshiftS3BackupMode
    RedshiftS3BackupMode (..),

    -- ** S3BackupMode
    S3BackupMode (..),

    -- ** SplunkS3BackupMode
    SplunkS3BackupMode (..),

    -- ** BufferingHints
    BufferingHints,
    bufferingHints,
    bhSizeInMBs,
    bhIntervalInSeconds,

    -- ** CloudWatchLoggingOptions
    CloudWatchLoggingOptions,
    cloudWatchLoggingOptions,
    cwloLogStreamName,
    cwloEnabled,
    cwloLogGroupName,

    -- ** CopyCommand
    CopyCommand,
    copyCommand,
    ccCopyOptions,
    ccDataTableColumns,
    ccDataTableName,

    -- ** DataFormatConversionConfiguration
    DataFormatConversionConfiguration,
    dataFormatConversionConfiguration,
    dfccEnabled,
    dfccInputFormatConfiguration,
    dfccOutputFormatConfiguration,
    dfccSchemaConfiguration,

    -- ** DeliveryStreamDescription
    DeliveryStreamDescription,
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

    -- ** DeliveryStreamEncryptionConfiguration
    DeliveryStreamEncryptionConfiguration,
    deliveryStreamEncryptionConfiguration,
    dsecStatus,
    dsecKeyARN,
    dsecKeyType,
    dsecFailureDescription,

    -- ** DeliveryStreamEncryptionConfigurationInput
    DeliveryStreamEncryptionConfigurationInput,
    deliveryStreamEncryptionConfigurationInput,
    dseciKeyARN,
    dseciKeyType,

    -- ** Deserializer
    Deserializer,
    deserializer,
    dHiveJSONSerDe,
    dOpenXJSONSerDe,

    -- ** DestinationDescription
    DestinationDescription,
    destinationDescription,
    ddElasticsearchDestinationDescription,
    ddHTTPEndpointDestinationDescription,
    ddExtendedS3DestinationDescription,
    ddRedshiftDestinationDescription,
    ddSplunkDestinationDescription,
    ddS3DestinationDescription,
    ddDestinationId,

    -- ** ElasticsearchBufferingHints
    ElasticsearchBufferingHints,
    elasticsearchBufferingHints,
    ebhSizeInMBs,
    ebhIntervalInSeconds,

    -- ** ElasticsearchDestinationConfiguration
    ElasticsearchDestinationConfiguration,
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

    -- ** ElasticsearchDestinationDescription
    ElasticsearchDestinationDescription,
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

    -- ** ElasticsearchDestinationUpdate
    ElasticsearchDestinationUpdate,
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

    -- ** ElasticsearchRetryOptions
    ElasticsearchRetryOptions,
    elasticsearchRetryOptions,
    eroDurationInSeconds,

    -- ** EncryptionConfiguration
    EncryptionConfiguration,
    encryptionConfiguration,
    ecKMSEncryptionConfig,
    ecNoEncryptionConfig,

    -- ** ExtendedS3DestinationConfiguration
    ExtendedS3DestinationConfiguration,
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

    -- ** ExtendedS3DestinationDescription
    ExtendedS3DestinationDescription,
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

    -- ** ExtendedS3DestinationUpdate
    ExtendedS3DestinationUpdate,
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

    -- ** FailureDescription
    FailureDescription,
    failureDescription,
    fdType,
    fdDetails,

    -- ** HTTPEndpointBufferingHints
    HTTPEndpointBufferingHints,
    hTTPEndpointBufferingHints,
    httpebhSizeInMBs,
    httpebhIntervalInSeconds,

    -- ** HTTPEndpointCommonAttribute
    HTTPEndpointCommonAttribute,
    hTTPEndpointCommonAttribute,
    httpecaAttributeName,
    httpecaAttributeValue,

    -- ** HTTPEndpointConfiguration
    HTTPEndpointConfiguration,
    hTTPEndpointConfiguration,
    httpecAccessKey,
    httpecName,
    httpecURL,

    -- ** HTTPEndpointDescription
    HTTPEndpointDescription,
    hTTPEndpointDescription,
    httpedName,
    httpedURL,

    -- ** HTTPEndpointDestinationConfiguration
    HTTPEndpointDestinationConfiguration,
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

    -- ** HTTPEndpointDestinationDescription
    HTTPEndpointDestinationDescription,
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

    -- ** HTTPEndpointDestinationUpdate
    HTTPEndpointDestinationUpdate,
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

    -- ** HTTPEndpointRequestConfiguration
    HTTPEndpointRequestConfiguration,
    hTTPEndpointRequestConfiguration,
    httpercContentEncoding,
    httpercCommonAttributes,

    -- ** HTTPEndpointRetryOptions
    HTTPEndpointRetryOptions,
    hTTPEndpointRetryOptions,
    httperoDurationInSeconds,

    -- ** HiveJSONSerDe
    HiveJSONSerDe,
    hiveJSONSerDe,
    hjsdTimestampFormats,

    -- ** InputFormatConfiguration
    InputFormatConfiguration,
    inputFormatConfiguration,
    ifcDeserializer,

    -- ** KMSEncryptionConfig
    KMSEncryptionConfig,
    kmsEncryptionConfig,
    kecAWSKMSKeyARN,

    -- ** KinesisStreamSourceConfiguration
    KinesisStreamSourceConfiguration,
    kinesisStreamSourceConfiguration,
    ksscKinesisStreamARN,
    ksscRoleARN,

    -- ** KinesisStreamSourceDescription
    KinesisStreamSourceDescription,
    kinesisStreamSourceDescription,
    kssdRoleARN,
    kssdDeliveryStartTimestamp,
    kssdKinesisStreamARN,

    -- ** OpenXJSONSerDe
    OpenXJSONSerDe,
    openXJSONSerDe,
    oxjsdCaseInsensitive,
    oxjsdColumnToJSONKeyMappings,
    oxjsdConvertDotsInJSONKeysToUnderscores,

    -- ** OrcSerDe
    OrcSerDe,
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

    -- ** OutputFormatConfiguration
    OutputFormatConfiguration,
    outputFormatConfiguration,
    ofcSerializer,

    -- ** ParquetSerDe
    ParquetSerDe,
    parquetSerDe,
    psdPageSizeBytes,
    psdEnableDictionaryCompression,
    psdMaxPaddingBytes,
    psdCompression,
    psdWriterVersion,
    psdBlockSizeBytes,

    -- ** ProcessingConfiguration
    ProcessingConfiguration,
    processingConfiguration,
    pcEnabled,
    pcProcessors,

    -- ** Processor
    Processor,
    processor,
    pParameters,
    pType,

    -- ** ProcessorParameter
    ProcessorParameter,
    processorParameter,
    ppParameterName,
    ppParameterValue,

    -- ** PutRecordBatchResponseEntry
    PutRecordBatchResponseEntry,
    putRecordBatchResponseEntry,
    prbreRecordId,
    prbreErrorMessage,
    prbreErrorCode,

    -- ** Record
    Record,
    record,
    rData,

    -- ** RedshiftDestinationConfiguration
    RedshiftDestinationConfiguration,
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

    -- ** RedshiftDestinationDescription
    RedshiftDestinationDescription,
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

    -- ** RedshiftDestinationUpdate
    RedshiftDestinationUpdate,
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

    -- ** RedshiftRetryOptions
    RedshiftRetryOptions,
    redshiftRetryOptions,
    rroDurationInSeconds,

    -- ** S3DestinationConfiguration
    S3DestinationConfiguration,
    s3DestinationConfiguration,
    sdcErrorOutputPrefix,
    sdcEncryptionConfiguration,
    sdcCloudWatchLoggingOptions,
    sdcPrefix,
    sdcBufferingHints,
    sdcCompressionFormat,
    sdcRoleARN,
    sdcBucketARN,

    -- ** S3DestinationDescription
    S3DestinationDescription,
    s3DestinationDescription,
    sddErrorOutputPrefix,
    sddCloudWatchLoggingOptions,
    sddPrefix,
    sddRoleARN,
    sddBucketARN,
    sddBufferingHints,
    sddCompressionFormat,
    sddEncryptionConfiguration,

    -- ** S3DestinationUpdate
    S3DestinationUpdate,
    s3DestinationUpdate,
    sduErrorOutputPrefix,
    sduEncryptionConfiguration,
    sduRoleARN,
    sduBucketARN,
    sduCloudWatchLoggingOptions,
    sduPrefix,
    sduBufferingHints,
    sduCompressionFormat,

    -- ** SchemaConfiguration
    SchemaConfiguration,
    schemaConfiguration,
    scRoleARN,
    scTableName,
    scCatalogId,
    scVersionId,
    scRegion,
    scDatabaseName,

    -- ** Serializer
    Serializer,
    serializer,
    sOrcSerDe,
    sParquetSerDe,

    -- ** SourceDescription
    SourceDescription,
    sourceDescription,
    sdKinesisStreamSourceDescription,

    -- ** SplunkDestinationConfiguration
    SplunkDestinationConfiguration,
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

    -- ** SplunkDestinationDescription
    SplunkDestinationDescription,
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

    -- ** SplunkDestinationUpdate
    SplunkDestinationUpdate,
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

    -- ** SplunkRetryOptions
    SplunkRetryOptions,
    splunkRetryOptions,
    sroDurationInSeconds,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,

    -- ** VPCConfiguration
    VPCConfiguration,
    vpcConfiguration,
    vcSubnetIds,
    vcRoleARN,
    vcSecurityGroupIds,

    -- ** VPCConfigurationDescription
    VPCConfigurationDescription,
    vpcConfigurationDescription,
    vcdSubnetIds,
    vcdRoleARN,
    vcdSecurityGroupIds,
    vcdVPCId,
  )
where

import Network.AWS.Firehose.CreateDeliveryStream
import Network.AWS.Firehose.DeleteDeliveryStream
import Network.AWS.Firehose.DescribeDeliveryStream
import Network.AWS.Firehose.ListDeliveryStreams
import Network.AWS.Firehose.ListTagsForDeliveryStream
import Network.AWS.Firehose.PutRecord
import Network.AWS.Firehose.PutRecordBatch
import Network.AWS.Firehose.StartDeliveryStreamEncryption
import Network.AWS.Firehose.StopDeliveryStreamEncryption
import Network.AWS.Firehose.TagDeliveryStream
import Network.AWS.Firehose.Types
import Network.AWS.Firehose.UntagDeliveryStream
import Network.AWS.Firehose.UpdateDestination
import Network.AWS.Firehose.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Firehose'.

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
