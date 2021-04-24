{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon Kinesis Analytics is the easiest way to process streaming data in real time with standard SQL without having to learn new programming languages or processing frameworks. Amazon Kinesis Analytics enables you to create and run SQL queries on streaming data so that you can gain actionable insights and respond to your business and customer needs promptly.
--
--
-- Amazon Kinesis Analytics takes care of everything required to run your queries continuously and scales automatically to match the volume and throughput rate of your incoming data. With Amazon Kinesis Analytics, you only pay for the resources your queries consume. There is no minimum fee or setup cost.
module Network.AWS.KinesisAnalytics
  ( -- * Service Configuration
    kinesisAnalytics,

    -- * Errors
    -- $errors

    -- ** InvalidApplicationConfigurationException
    _InvalidApplicationConfigurationException,

    -- ** ResourceProvisionedThroughputExceededException
    _ResourceProvisionedThroughputExceededException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** UnableToDetectSchemaException
    _UnableToDetectSchemaException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** UnsupportedOperationException
    _UnsupportedOperationException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** CodeValidationException
    _CodeValidationException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InvalidArgumentException
    _InvalidArgumentException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DeleteApplicationOutput
    module Network.AWS.KinesisAnalytics.DeleteApplicationOutput,

    -- ** AddApplicationOutput
    module Network.AWS.KinesisAnalytics.AddApplicationOutput,

    -- ** CreateApplication
    module Network.AWS.KinesisAnalytics.CreateApplication,

    -- ** DeleteApplicationCloudWatchLoggingOption
    module Network.AWS.KinesisAnalytics.DeleteApplicationCloudWatchLoggingOption,

    -- ** AddApplicationCloudWatchLoggingOption
    module Network.AWS.KinesisAnalytics.AddApplicationCloudWatchLoggingOption,

    -- ** UntagResource
    module Network.AWS.KinesisAnalytics.UntagResource,

    -- ** TagResource
    module Network.AWS.KinesisAnalytics.TagResource,

    -- ** StopApplication
    module Network.AWS.KinesisAnalytics.StopApplication,

    -- ** StartApplication
    module Network.AWS.KinesisAnalytics.StartApplication,

    -- ** DescribeApplication
    module Network.AWS.KinesisAnalytics.DescribeApplication,

    -- ** DiscoverInputSchema
    module Network.AWS.KinesisAnalytics.DiscoverInputSchema,

    -- ** AddApplicationInputProcessingConfiguration
    module Network.AWS.KinesisAnalytics.AddApplicationInputProcessingConfiguration,

    -- ** DeleteApplicationInputProcessingConfiguration
    module Network.AWS.KinesisAnalytics.DeleteApplicationInputProcessingConfiguration,

    -- ** DeleteApplication
    module Network.AWS.KinesisAnalytics.DeleteApplication,

    -- ** ListApplications
    module Network.AWS.KinesisAnalytics.ListApplications,

    -- ** UpdateApplication
    module Network.AWS.KinesisAnalytics.UpdateApplication,

    -- ** AddApplicationInput
    module Network.AWS.KinesisAnalytics.AddApplicationInput,

    -- ** AddApplicationReferenceDataSource
    module Network.AWS.KinesisAnalytics.AddApplicationReferenceDataSource,

    -- ** DeleteApplicationReferenceDataSource
    module Network.AWS.KinesisAnalytics.DeleteApplicationReferenceDataSource,

    -- ** ListTagsForResource
    module Network.AWS.KinesisAnalytics.ListTagsForResource,

    -- * Types

    -- ** ApplicationStatus
    ApplicationStatus (..),

    -- ** InputStartingPosition
    InputStartingPosition (..),

    -- ** RecordFormatType
    RecordFormatType (..),

    -- ** ApplicationDetail
    ApplicationDetail,
    applicationDetail,
    adApplicationCode,
    adApplicationDescription,
    adCloudWatchLoggingOptionDescriptions,
    adCreateTimestamp,
    adOutputDescriptions,
    adReferenceDataSourceDescriptions,
    adInputDescriptions,
    adLastUpdateTimestamp,
    adApplicationName,
    adApplicationARN,
    adApplicationStatus,
    adApplicationVersionId,

    -- ** ApplicationSummary
    ApplicationSummary,
    applicationSummary,
    asApplicationName,
    asApplicationARN,
    asApplicationStatus,

    -- ** ApplicationUpdate
    ApplicationUpdate,
    applicationUpdate,
    auReferenceDataSourceUpdates,
    auInputUpdates,
    auCloudWatchLoggingOptionUpdates,
    auApplicationCodeUpdate,
    auOutputUpdates,

    -- ** CSVMappingParameters
    CSVMappingParameters,
    csvMappingParameters,
    cmpRecordRowDelimiter,
    cmpRecordColumnDelimiter,

    -- ** CloudWatchLoggingOption
    CloudWatchLoggingOption,
    cloudWatchLoggingOption,
    cwloLogStreamARN,
    cwloRoleARN,

    -- ** CloudWatchLoggingOptionDescription
    CloudWatchLoggingOptionDescription,
    cloudWatchLoggingOptionDescription,
    cwlodCloudWatchLoggingOptionId,
    cwlodLogStreamARN,
    cwlodRoleARN,

    -- ** CloudWatchLoggingOptionUpdate
    CloudWatchLoggingOptionUpdate,
    cloudWatchLoggingOptionUpdate,
    cwlouLogStreamARNUpdate,
    cwlouRoleARNUpdate,
    cwlouCloudWatchLoggingOptionId,

    -- ** DestinationSchema
    DestinationSchema,
    destinationSchema,
    dsRecordFormatType,

    -- ** Input
    Input,
    input,
    iInputParallelism,
    iKinesisFirehoseInput,
    iKinesisStreamsInput,
    iInputProcessingConfiguration,
    iNamePrefix,
    iInputSchema,

    -- ** InputConfiguration
    InputConfiguration,
    inputConfiguration,
    icId,
    icInputStartingPositionConfiguration,

    -- ** InputDescription
    InputDescription,
    inputDescription,
    idInputSchema,
    idInputStartingPositionConfiguration,
    idInputProcessingConfigurationDescription,
    idInputParallelism,
    idNamePrefix,
    idKinesisStreamsInputDescription,
    idKinesisFirehoseInputDescription,
    idInAppStreamNames,
    idInputId,

    -- ** InputLambdaProcessor
    InputLambdaProcessor,
    inputLambdaProcessor,
    ilpResourceARN,
    ilpRoleARN,

    -- ** InputLambdaProcessorDescription
    InputLambdaProcessorDescription,
    inputLambdaProcessorDescription,
    ilpdResourceARN,
    ilpdRoleARN,

    -- ** InputLambdaProcessorUpdate
    InputLambdaProcessorUpdate,
    inputLambdaProcessorUpdate,
    ilpuResourceARNUpdate,
    ilpuRoleARNUpdate,

    -- ** InputParallelism
    InputParallelism,
    inputParallelism,
    ipCount,

    -- ** InputParallelismUpdate
    InputParallelismUpdate,
    inputParallelismUpdate,
    ipuCountUpdate,

    -- ** InputProcessingConfiguration
    InputProcessingConfiguration,
    inputProcessingConfiguration,
    ipcInputLambdaProcessor,

    -- ** InputProcessingConfigurationDescription
    InputProcessingConfigurationDescription,
    inputProcessingConfigurationDescription,
    ipcdInputLambdaProcessorDescription,

    -- ** InputProcessingConfigurationUpdate
    InputProcessingConfigurationUpdate,
    inputProcessingConfigurationUpdate,
    ipcuInputLambdaProcessorUpdate,

    -- ** InputSchemaUpdate
    InputSchemaUpdate,
    inputSchemaUpdate,
    isuRecordFormatUpdate,
    isuRecordColumnUpdates,
    isuRecordEncodingUpdate,

    -- ** InputStartingPositionConfiguration
    InputStartingPositionConfiguration,
    inputStartingPositionConfiguration,
    ispcInputStartingPosition,

    -- ** InputUpdate
    InputUpdate,
    inputUpdate,
    iuNamePrefixUpdate,
    iuKinesisFirehoseInputUpdate,
    iuKinesisStreamsInputUpdate,
    iuInputProcessingConfigurationUpdate,
    iuInputSchemaUpdate,
    iuInputParallelismUpdate,
    iuInputId,

    -- ** JSONMappingParameters
    JSONMappingParameters,
    jsonMappingParameters,
    jmpRecordRowPath,

    -- ** KinesisFirehoseInput
    KinesisFirehoseInput,
    kinesisFirehoseInput,
    kfiResourceARN,
    kfiRoleARN,

    -- ** KinesisFirehoseInputDescription
    KinesisFirehoseInputDescription,
    kinesisFirehoseInputDescription,
    kfidResourceARN,
    kfidRoleARN,

    -- ** KinesisFirehoseInputUpdate
    KinesisFirehoseInputUpdate,
    kinesisFirehoseInputUpdate,
    kfiuResourceARNUpdate,
    kfiuRoleARNUpdate,

    -- ** KinesisFirehoseOutput
    KinesisFirehoseOutput,
    kinesisFirehoseOutput,
    kfoResourceARN,
    kfoRoleARN,

    -- ** KinesisFirehoseOutputDescription
    KinesisFirehoseOutputDescription,
    kinesisFirehoseOutputDescription,
    kfodResourceARN,
    kfodRoleARN,

    -- ** KinesisFirehoseOutputUpdate
    KinesisFirehoseOutputUpdate,
    kinesisFirehoseOutputUpdate,
    kfouResourceARNUpdate,
    kfouRoleARNUpdate,

    -- ** KinesisStreamsInput
    KinesisStreamsInput,
    kinesisStreamsInput,
    ksiResourceARN,
    ksiRoleARN,

    -- ** KinesisStreamsInputDescription
    KinesisStreamsInputDescription,
    kinesisStreamsInputDescription,
    ksidResourceARN,
    ksidRoleARN,

    -- ** KinesisStreamsInputUpdate
    KinesisStreamsInputUpdate,
    kinesisStreamsInputUpdate,
    ksiuResourceARNUpdate,
    ksiuRoleARNUpdate,

    -- ** KinesisStreamsOutput
    KinesisStreamsOutput,
    kinesisStreamsOutput,
    ksoResourceARN,
    ksoRoleARN,

    -- ** KinesisStreamsOutputDescription
    KinesisStreamsOutputDescription,
    kinesisStreamsOutputDescription,
    ksodResourceARN,
    ksodRoleARN,

    -- ** KinesisStreamsOutputUpdate
    KinesisStreamsOutputUpdate,
    kinesisStreamsOutputUpdate,
    ksouResourceARNUpdate,
    ksouRoleARNUpdate,

    -- ** LambdaOutput
    LambdaOutput,
    lambdaOutput,
    loResourceARN,
    loRoleARN,

    -- ** LambdaOutputDescription
    LambdaOutputDescription,
    lambdaOutputDescription,
    lodResourceARN,
    lodRoleARN,

    -- ** LambdaOutputUpdate
    LambdaOutputUpdate,
    lambdaOutputUpdate,
    louResourceARNUpdate,
    louRoleARNUpdate,

    -- ** MappingParameters
    MappingParameters,
    mappingParameters,
    mpJSONMappingParameters,
    mpCSVMappingParameters,

    -- ** Output
    Output,
    output,
    oLambdaOutput,
    oKinesisFirehoseOutput,
    oKinesisStreamsOutput,
    oName,
    oDestinationSchema,

    -- ** OutputDescription
    OutputDescription,
    outputDescription,
    odKinesisStreamsOutputDescription,
    odKinesisFirehoseOutputDescription,
    odDestinationSchema,
    odOutputId,
    odName,
    odLambdaOutputDescription,

    -- ** OutputUpdate
    OutputUpdate,
    outputUpdate,
    ouKinesisFirehoseOutputUpdate,
    ouDestinationSchemaUpdate,
    ouKinesisStreamsOutputUpdate,
    ouNameUpdate,
    ouLambdaOutputUpdate,
    ouOutputId,

    -- ** RecordColumn
    RecordColumn,
    recordColumn,
    rcMapping,
    rcName,
    rcSqlType,

    -- ** RecordFormat
    RecordFormat,
    recordFormat,
    rfMappingParameters,
    rfRecordFormatType,

    -- ** ReferenceDataSource
    ReferenceDataSource,
    referenceDataSource,
    rdsS3ReferenceDataSource,
    rdsTableName,
    rdsReferenceSchema,

    -- ** ReferenceDataSourceDescription
    ReferenceDataSourceDescription,
    referenceDataSourceDescription,
    rdsdReferenceSchema,
    rdsdReferenceId,
    rdsdTableName,
    rdsdS3ReferenceDataSourceDescription,

    -- ** ReferenceDataSourceUpdate
    ReferenceDataSourceUpdate,
    referenceDataSourceUpdate,
    rdsuS3ReferenceDataSourceUpdate,
    rdsuReferenceSchemaUpdate,
    rdsuTableNameUpdate,
    rdsuReferenceId,

    -- ** S3Configuration
    S3Configuration,
    s3Configuration,
    scRoleARN,
    scBucketARN,
    scFileKey,

    -- ** S3ReferenceDataSource
    S3ReferenceDataSource,
    s3ReferenceDataSource,
    srdsBucketARN,
    srdsFileKey,
    srdsReferenceRoleARN,

    -- ** S3ReferenceDataSourceDescription
    S3ReferenceDataSourceDescription,
    s3ReferenceDataSourceDescription,
    srdsdBucketARN,
    srdsdFileKey,
    srdsdReferenceRoleARN,

    -- ** S3ReferenceDataSourceUpdate
    S3ReferenceDataSourceUpdate,
    s3ReferenceDataSourceUpdate,
    srdsuReferenceRoleARNUpdate,
    srdsuFileKeyUpdate,
    srdsuBucketARNUpdate,

    -- ** SourceSchema
    SourceSchema,
    sourceSchema,
    ssRecordEncoding,
    ssRecordFormat,
    ssRecordColumns,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,
  )
where

import Network.AWS.KinesisAnalytics.AddApplicationCloudWatchLoggingOption
import Network.AWS.KinesisAnalytics.AddApplicationInput
import Network.AWS.KinesisAnalytics.AddApplicationInputProcessingConfiguration
import Network.AWS.KinesisAnalytics.AddApplicationOutput
import Network.AWS.KinesisAnalytics.AddApplicationReferenceDataSource
import Network.AWS.KinesisAnalytics.CreateApplication
import Network.AWS.KinesisAnalytics.DeleteApplication
import Network.AWS.KinesisAnalytics.DeleteApplicationCloudWatchLoggingOption
import Network.AWS.KinesisAnalytics.DeleteApplicationInputProcessingConfiguration
import Network.AWS.KinesisAnalytics.DeleteApplicationOutput
import Network.AWS.KinesisAnalytics.DeleteApplicationReferenceDataSource
import Network.AWS.KinesisAnalytics.DescribeApplication
import Network.AWS.KinesisAnalytics.DiscoverInputSchema
import Network.AWS.KinesisAnalytics.ListApplications
import Network.AWS.KinesisAnalytics.ListTagsForResource
import Network.AWS.KinesisAnalytics.StartApplication
import Network.AWS.KinesisAnalytics.StopApplication
import Network.AWS.KinesisAnalytics.TagResource
import Network.AWS.KinesisAnalytics.Types
import Network.AWS.KinesisAnalytics.UntagResource
import Network.AWS.KinesisAnalytics.UpdateApplication
import Network.AWS.KinesisAnalytics.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'KinesisAnalytics'.

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
