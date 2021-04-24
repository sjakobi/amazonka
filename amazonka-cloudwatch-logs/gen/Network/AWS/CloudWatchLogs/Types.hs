{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types
  ( -- * Service Configuration
    cloudWatchLogs,

    -- * Errors
    _InvalidOperationException,
    _ResourceAlreadyExistsException,
    _ServiceUnavailableException,
    _UnrecognizedClientException,
    _MalformedQueryException,
    _InvalidParameterException,
    _LimitExceededException,
    _OperationAbortedException,
    _ResourceNotFoundException,
    _DataAlreadyAcceptedException,
    _InvalidSequenceTokenException,

    -- * Distribution
    Distribution (..),

    -- * ExportTaskStatusCode
    ExportTaskStatusCode (..),

    -- * OrderBy
    OrderBy (..),

    -- * QueryStatus
    QueryStatus (..),

    -- * Destination
    Destination (..),
    destination,
    dCreationTime,
    dRoleARN,
    dDestinationName,
    dArn,
    dTargetARN,
    dAccessPolicy,

    -- * ExportTask
    ExportTask (..),
    exportTask,
    etStatus,
    etExecutionInfo,
    etTo,
    etTaskId,
    etTaskName,
    etLogGroupName,
    etDestination,
    etDestinationPrefix,
    etFrom,

    -- * ExportTaskExecutionInfo
    ExportTaskExecutionInfo (..),
    exportTaskExecutionInfo,
    eteiCreationTime,
    eteiCompletionTime,

    -- * ExportTaskStatus
    ExportTaskStatus (..),
    exportTaskStatus,
    etsMessage,
    etsCode,

    -- * FilteredLogEvent
    FilteredLogEvent (..),
    filteredLogEvent,
    fleLogStreamName,
    fleEventId,
    fleMessage,
    fleIngestionTime,
    fleTimestamp,

    -- * InputLogEvent
    InputLogEvent (..),
    inputLogEvent,
    ileTimestamp,
    ileMessage,

    -- * LogGroup
    LogGroup (..),
    logGroup,
    lgRetentionInDays,
    lgCreationTime,
    lgArn,
    lgStoredBytes,
    lgMetricFilterCount,
    lgKmsKeyId,
    lgLogGroupName,

    -- * LogGroupField
    LogGroupField (..),
    logGroupField,
    lgfName,
    lgfPercent,

    -- * LogStream
    LogStream (..),
    logStream,
    lsLogStreamName,
    lsCreationTime,
    lsArn,
    lsStoredBytes,
    lsUploadSequenceToken,
    lsFirstEventTimestamp,
    lsLastEventTimestamp,
    lsLastIngestionTime,

    -- * MetricFilter
    MetricFilter (..),
    metricFilter,
    mfFilterName,
    mfCreationTime,
    mfFilterPattern,
    mfLogGroupName,
    mfMetricTransformations,

    -- * MetricFilterMatchRecord
    MetricFilterMatchRecord (..),
    metricFilterMatchRecord,
    mfmrEventNumber,
    mfmrEventMessage,
    mfmrExtractedValues,

    -- * MetricTransformation
    MetricTransformation (..),
    metricTransformation,
    mtDefaultValue,
    mtMetricName,
    mtMetricNamespace,
    mtMetricValue,

    -- * OutputLogEvent
    OutputLogEvent (..),
    outputLogEvent,
    oleMessage,
    oleIngestionTime,
    oleTimestamp,

    -- * QueryDefinition
    QueryDefinition (..),
    queryDefinition,
    qdQueryString,
    qdName,
    qdLogGroupNames,
    qdLastModified,
    qdQueryDefinitionId,

    -- * QueryInfo
    QueryInfo (..),
    queryInfo,
    qiQueryString,
    qiStatus,
    qiQueryId,
    qiLogGroupName,
    qiCreateTime,

    -- * QueryStatistics
    QueryStatistics (..),
    queryStatistics,
    qsBytesScanned,
    qsRecordsMatched,
    qsRecordsScanned,

    -- * RejectedLogEventsInfo
    RejectedLogEventsInfo (..),
    rejectedLogEventsInfo,
    rleiTooOldLogEventEndIndex,
    rleiExpiredLogEventEndIndex,
    rleiTooNewLogEventStartIndex,

    -- * ResourcePolicy
    ResourcePolicy (..),
    resourcePolicy,
    rpPolicyName,
    rpPolicyDocument,
    rpLastUpdatedTime,

    -- * ResultField
    ResultField (..),
    resultField,
    rfValue,
    rfField,

    -- * SearchedLogStream
    SearchedLogStream (..),
    searchedLogStream,
    slsLogStreamName,
    slsSearchedCompletely,

    -- * SubscriptionFilter
    SubscriptionFilter (..),
    subscriptionFilter,
    sfFilterName,
    sfCreationTime,
    sfDestinationARN,
    sfRoleARN,
    sfFilterPattern,
    sfDistribution,
    sfLogGroupName,
  )
where

import Network.AWS.CloudWatchLogs.Types.Destination
import Network.AWS.CloudWatchLogs.Types.Distribution
import Network.AWS.CloudWatchLogs.Types.ExportTask
import Network.AWS.CloudWatchLogs.Types.ExportTaskExecutionInfo
import Network.AWS.CloudWatchLogs.Types.ExportTaskStatus
import Network.AWS.CloudWatchLogs.Types.ExportTaskStatusCode
import Network.AWS.CloudWatchLogs.Types.FilteredLogEvent
import Network.AWS.CloudWatchLogs.Types.InputLogEvent
import Network.AWS.CloudWatchLogs.Types.LogGroup
import Network.AWS.CloudWatchLogs.Types.LogGroupField
import Network.AWS.CloudWatchLogs.Types.LogStream
import Network.AWS.CloudWatchLogs.Types.MetricFilter
import Network.AWS.CloudWatchLogs.Types.MetricFilterMatchRecord
import Network.AWS.CloudWatchLogs.Types.MetricTransformation
import Network.AWS.CloudWatchLogs.Types.OrderBy
import Network.AWS.CloudWatchLogs.Types.OutputLogEvent
import Network.AWS.CloudWatchLogs.Types.QueryDefinition
import Network.AWS.CloudWatchLogs.Types.QueryInfo
import Network.AWS.CloudWatchLogs.Types.QueryStatistics
import Network.AWS.CloudWatchLogs.Types.QueryStatus
import Network.AWS.CloudWatchLogs.Types.RejectedLogEventsInfo
import Network.AWS.CloudWatchLogs.Types.ResourcePolicy
import Network.AWS.CloudWatchLogs.Types.ResultField
import Network.AWS.CloudWatchLogs.Types.SearchedLogStream
import Network.AWS.CloudWatchLogs.Types.SubscriptionFilter
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2014-03-28@ of the Amazon CloudWatch Logs SDK configuration.
cloudWatchLogs :: Service
cloudWatchLogs =
  Service
    { _svcAbbrev = "CloudWatchLogs",
      _svcSigner = v4,
      _svcPrefix = "logs",
      _svcVersion = "2014-03-28",
      _svcEndpoint = defaultEndpoint cloudWatchLogs,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CloudWatchLogs",
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

-- | The operation is not valid on the specified resource.
_InvalidOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOperationException =
  _MatchServiceError
    cloudWatchLogs
    "InvalidOperationException"

-- | The specified resource already exists.
_ResourceAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAlreadyExistsException =
  _MatchServiceError
    cloudWatchLogs
    "ResourceAlreadyExistsException"

-- | The service cannot complete the request.
_ServiceUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceUnavailableException =
  _MatchServiceError
    cloudWatchLogs
    "ServiceUnavailableException"

-- | The most likely cause is an invalid AWS access key ID or secret key.
_UnrecognizedClientException :: AsError a => Getting (First ServiceError) a ServiceError
_UnrecognizedClientException =
  _MatchServiceError
    cloudWatchLogs
    "UnrecognizedClientException"

-- | The query string is not valid. Details about this error are displayed in a @QueryCompileError@ object. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_QueryCompileError.html QueryCompileError> .
--
--
-- For more information about valid query syntax, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html CloudWatch Logs Insights Query Syntax> .
_MalformedQueryException :: AsError a => Getting (First ServiceError) a ServiceError
_MalformedQueryException =
  _MatchServiceError
    cloudWatchLogs
    "MalformedQueryException"

-- | A parameter is specified incorrectly.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    cloudWatchLogs
    "InvalidParameterException"

-- | You have reached the maximum number of resources that can be created.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    cloudWatchLogs
    "LimitExceededException"

-- | Multiple requests to update the same resource were in conflict.
_OperationAbortedException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationAbortedException =
  _MatchServiceError
    cloudWatchLogs
    "OperationAbortedException"

-- | The specified resource does not exist.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    cloudWatchLogs
    "ResourceNotFoundException"

-- | The event was already logged.
_DataAlreadyAcceptedException :: AsError a => Getting (First ServiceError) a ServiceError
_DataAlreadyAcceptedException =
  _MatchServiceError
    cloudWatchLogs
    "DataAlreadyAcceptedException"

-- | The sequence token is not valid. You can get the correct sequence token in the @expectedSequenceToken@ field in the @InvalidSequenceTokenException@ message.
_InvalidSequenceTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSequenceTokenException =
  _MatchServiceError
    cloudWatchLogs
    "InvalidSequenceTokenException"
