{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidApplicationConfigurationException,
    _ResourceProvisionedThroughputExceededException,
    _TooManyTagsException,
    _UnableToDetectSchemaException,
    _ServiceUnavailableException,
    _ConcurrentModificationException,
    _UnsupportedOperationException,
    _ResourceInUseException,
    _LimitExceededException,
    _CodeValidationException,
    _ResourceNotFoundException,
    _InvalidArgumentException,

    -- * ApplicationStatus
    ApplicationStatus (..),

    -- * InputStartingPosition
    InputStartingPosition (..),

    -- * RecordFormatType
    RecordFormatType (..),

    -- * ApplicationDetail
    ApplicationDetail (..),
    newApplicationDetail,

    -- * ApplicationSummary
    ApplicationSummary (..),
    newApplicationSummary,

    -- * ApplicationUpdate
    ApplicationUpdate (..),
    newApplicationUpdate,

    -- * CSVMappingParameters
    CSVMappingParameters (..),
    newCSVMappingParameters,

    -- * CloudWatchLoggingOption
    CloudWatchLoggingOption (..),
    newCloudWatchLoggingOption,

    -- * CloudWatchLoggingOptionDescription
    CloudWatchLoggingOptionDescription (..),
    newCloudWatchLoggingOptionDescription,

    -- * CloudWatchLoggingOptionUpdate
    CloudWatchLoggingOptionUpdate (..),
    newCloudWatchLoggingOptionUpdate,

    -- * DestinationSchema
    DestinationSchema (..),
    newDestinationSchema,

    -- * Input
    Input (..),
    newInput,

    -- * InputConfiguration
    InputConfiguration (..),
    newInputConfiguration,

    -- * InputDescription
    InputDescription (..),
    newInputDescription,

    -- * InputLambdaProcessor
    InputLambdaProcessor (..),
    newInputLambdaProcessor,

    -- * InputLambdaProcessorDescription
    InputLambdaProcessorDescription (..),
    newInputLambdaProcessorDescription,

    -- * InputLambdaProcessorUpdate
    InputLambdaProcessorUpdate (..),
    newInputLambdaProcessorUpdate,

    -- * InputParallelism
    InputParallelism (..),
    newInputParallelism,

    -- * InputParallelismUpdate
    InputParallelismUpdate (..),
    newInputParallelismUpdate,

    -- * InputProcessingConfiguration
    InputProcessingConfiguration (..),
    newInputProcessingConfiguration,

    -- * InputProcessingConfigurationDescription
    InputProcessingConfigurationDescription (..),
    newInputProcessingConfigurationDescription,

    -- * InputProcessingConfigurationUpdate
    InputProcessingConfigurationUpdate (..),
    newInputProcessingConfigurationUpdate,

    -- * InputSchemaUpdate
    InputSchemaUpdate (..),
    newInputSchemaUpdate,

    -- * InputStartingPositionConfiguration
    InputStartingPositionConfiguration (..),
    newInputStartingPositionConfiguration,

    -- * InputUpdate
    InputUpdate (..),
    newInputUpdate,

    -- * JSONMappingParameters
    JSONMappingParameters (..),
    newJSONMappingParameters,

    -- * KinesisFirehoseInput
    KinesisFirehoseInput (..),
    newKinesisFirehoseInput,

    -- * KinesisFirehoseInputDescription
    KinesisFirehoseInputDescription (..),
    newKinesisFirehoseInputDescription,

    -- * KinesisFirehoseInputUpdate
    KinesisFirehoseInputUpdate (..),
    newKinesisFirehoseInputUpdate,

    -- * KinesisFirehoseOutput
    KinesisFirehoseOutput (..),
    newKinesisFirehoseOutput,

    -- * KinesisFirehoseOutputDescription
    KinesisFirehoseOutputDescription (..),
    newKinesisFirehoseOutputDescription,

    -- * KinesisFirehoseOutputUpdate
    KinesisFirehoseOutputUpdate (..),
    newKinesisFirehoseOutputUpdate,

    -- * KinesisStreamsInput
    KinesisStreamsInput (..),
    newKinesisStreamsInput,

    -- * KinesisStreamsInputDescription
    KinesisStreamsInputDescription (..),
    newKinesisStreamsInputDescription,

    -- * KinesisStreamsInputUpdate
    KinesisStreamsInputUpdate (..),
    newKinesisStreamsInputUpdate,

    -- * KinesisStreamsOutput
    KinesisStreamsOutput (..),
    newKinesisStreamsOutput,

    -- * KinesisStreamsOutputDescription
    KinesisStreamsOutputDescription (..),
    newKinesisStreamsOutputDescription,

    -- * KinesisStreamsOutputUpdate
    KinesisStreamsOutputUpdate (..),
    newKinesisStreamsOutputUpdate,

    -- * LambdaOutput
    LambdaOutput (..),
    newLambdaOutput,

    -- * LambdaOutputDescription
    LambdaOutputDescription (..),
    newLambdaOutputDescription,

    -- * LambdaOutputUpdate
    LambdaOutputUpdate (..),
    newLambdaOutputUpdate,

    -- * MappingParameters
    MappingParameters (..),
    newMappingParameters,

    -- * Output
    Output (..),
    newOutput,

    -- * OutputDescription
    OutputDescription (..),
    newOutputDescription,

    -- * OutputUpdate
    OutputUpdate (..),
    newOutputUpdate,

    -- * RecordColumn
    RecordColumn (..),
    newRecordColumn,

    -- * RecordFormat
    RecordFormat (..),
    newRecordFormat,

    -- * ReferenceDataSource
    ReferenceDataSource (..),
    newReferenceDataSource,

    -- * ReferenceDataSourceDescription
    ReferenceDataSourceDescription (..),
    newReferenceDataSourceDescription,

    -- * ReferenceDataSourceUpdate
    ReferenceDataSourceUpdate (..),
    newReferenceDataSourceUpdate,

    -- * S3Configuration
    S3Configuration (..),
    newS3Configuration,

    -- * S3ReferenceDataSource
    S3ReferenceDataSource (..),
    newS3ReferenceDataSource,

    -- * S3ReferenceDataSourceDescription
    S3ReferenceDataSourceDescription (..),
    newS3ReferenceDataSourceDescription,

    -- * S3ReferenceDataSourceUpdate
    S3ReferenceDataSourceUpdate (..),
    newS3ReferenceDataSourceUpdate,

    -- * SourceSchema
    SourceSchema (..),
    newSourceSchema,

    -- * Tag
    Tag (..),
    newTag,
  )
where

import Network.AWS.KinesisAnalytics.Types.ApplicationDetail
import Network.AWS.KinesisAnalytics.Types.ApplicationStatus
import Network.AWS.KinesisAnalytics.Types.ApplicationSummary
import Network.AWS.KinesisAnalytics.Types.ApplicationUpdate
import Network.AWS.KinesisAnalytics.Types.CSVMappingParameters
import Network.AWS.KinesisAnalytics.Types.CloudWatchLoggingOption
import Network.AWS.KinesisAnalytics.Types.CloudWatchLoggingOptionDescription
import Network.AWS.KinesisAnalytics.Types.CloudWatchLoggingOptionUpdate
import Network.AWS.KinesisAnalytics.Types.DestinationSchema
import Network.AWS.KinesisAnalytics.Types.Input
import Network.AWS.KinesisAnalytics.Types.InputConfiguration
import Network.AWS.KinesisAnalytics.Types.InputDescription
import Network.AWS.KinesisAnalytics.Types.InputLambdaProcessor
import Network.AWS.KinesisAnalytics.Types.InputLambdaProcessorDescription
import Network.AWS.KinesisAnalytics.Types.InputLambdaProcessorUpdate
import Network.AWS.KinesisAnalytics.Types.InputParallelism
import Network.AWS.KinesisAnalytics.Types.InputParallelismUpdate
import Network.AWS.KinesisAnalytics.Types.InputProcessingConfiguration
import Network.AWS.KinesisAnalytics.Types.InputProcessingConfigurationDescription
import Network.AWS.KinesisAnalytics.Types.InputProcessingConfigurationUpdate
import Network.AWS.KinesisAnalytics.Types.InputSchemaUpdate
import Network.AWS.KinesisAnalytics.Types.InputStartingPosition
import Network.AWS.KinesisAnalytics.Types.InputStartingPositionConfiguration
import Network.AWS.KinesisAnalytics.Types.InputUpdate
import Network.AWS.KinesisAnalytics.Types.JSONMappingParameters
import Network.AWS.KinesisAnalytics.Types.KinesisFirehoseInput
import Network.AWS.KinesisAnalytics.Types.KinesisFirehoseInputDescription
import Network.AWS.KinesisAnalytics.Types.KinesisFirehoseInputUpdate
import Network.AWS.KinesisAnalytics.Types.KinesisFirehoseOutput
import Network.AWS.KinesisAnalytics.Types.KinesisFirehoseOutputDescription
import Network.AWS.KinesisAnalytics.Types.KinesisFirehoseOutputUpdate
import Network.AWS.KinesisAnalytics.Types.KinesisStreamsInput
import Network.AWS.KinesisAnalytics.Types.KinesisStreamsInputDescription
import Network.AWS.KinesisAnalytics.Types.KinesisStreamsInputUpdate
import Network.AWS.KinesisAnalytics.Types.KinesisStreamsOutput
import Network.AWS.KinesisAnalytics.Types.KinesisStreamsOutputDescription
import Network.AWS.KinesisAnalytics.Types.KinesisStreamsOutputUpdate
import Network.AWS.KinesisAnalytics.Types.LambdaOutput
import Network.AWS.KinesisAnalytics.Types.LambdaOutputDescription
import Network.AWS.KinesisAnalytics.Types.LambdaOutputUpdate
import Network.AWS.KinesisAnalytics.Types.MappingParameters
import Network.AWS.KinesisAnalytics.Types.Output
import Network.AWS.KinesisAnalytics.Types.OutputDescription
import Network.AWS.KinesisAnalytics.Types.OutputUpdate
import Network.AWS.KinesisAnalytics.Types.RecordColumn
import Network.AWS.KinesisAnalytics.Types.RecordFormat
import Network.AWS.KinesisAnalytics.Types.RecordFormatType
import Network.AWS.KinesisAnalytics.Types.ReferenceDataSource
import Network.AWS.KinesisAnalytics.Types.ReferenceDataSourceDescription
import Network.AWS.KinesisAnalytics.Types.ReferenceDataSourceUpdate
import Network.AWS.KinesisAnalytics.Types.S3Configuration
import Network.AWS.KinesisAnalytics.Types.S3ReferenceDataSource
import Network.AWS.KinesisAnalytics.Types.S3ReferenceDataSourceDescription
import Network.AWS.KinesisAnalytics.Types.S3ReferenceDataSourceUpdate
import Network.AWS.KinesisAnalytics.Types.SourceSchema
import Network.AWS.KinesisAnalytics.Types.Tag
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-08-14@ of the Amazon Kinesis Analytics SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "KinesisAnalytics",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "kinesisanalytics",
      Prelude._svcVersion = "2015-08-14",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "KinesisAnalytics",
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

-- | User-provided application configuration is not valid.
_InvalidApplicationConfigurationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidApplicationConfigurationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidApplicationConfigurationException"

-- | Discovery failed to get a record from the streaming source because of
-- the Amazon Kinesis Streams ProvisionedThroughputExceededException. For
-- more information, see
-- <https://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetRecords.html GetRecords>
-- in the Amazon Kinesis Streams API Reference.
_ResourceProvisionedThroughputExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceProvisionedThroughputExceededException =
  Prelude._MatchServiceError
    defaultService
    "ResourceProvisionedThroughputExceededException"

-- | Application created with too many tags, or too many tags added to an
-- application. Note that the maximum number of application tags includes
-- system tags. The maximum number of user-defined application tags is 50.
_TooManyTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTagsException"

-- | Data format is not valid. Amazon Kinesis Analytics is not able to detect
-- schema for the given streaming source.
_UnableToDetectSchemaException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnableToDetectSchemaException =
  Prelude._MatchServiceError
    defaultService
    "UnableToDetectSchemaException"

-- | The service is unavailable. Back off and retry the operation.
_ServiceUnavailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceUnavailableException =
  Prelude._MatchServiceError
    defaultService
    "ServiceUnavailableException"

-- | Exception thrown as a result of concurrent modification to an
-- application. For example, two individuals attempting to edit the same
-- application at the same time.
_ConcurrentModificationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentModificationException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentModificationException"

-- | The request was rejected because a specified parameter is not supported
-- or a specified resource is not valid for this operation.
_UnsupportedOperationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedOperationException =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedOperationException"

-- | Application is not available for this operation.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | Exceeded the number of applications allowed.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | User-provided application code (query) is invalid. This can be a simple
-- syntax error.
_CodeValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CodeValidationException =
  Prelude._MatchServiceError
    defaultService
    "CodeValidationException"

-- | Specified application can\'t be found.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | Specified input parameter value is invalid.
_InvalidArgumentException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidArgumentException =
  Prelude._MatchServiceError
    defaultService
    "InvalidArgumentException"
