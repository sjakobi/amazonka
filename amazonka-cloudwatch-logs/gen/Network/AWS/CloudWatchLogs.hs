{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- You can use Amazon CloudWatch Logs to monitor, store, and access your log files from EC2 instances, AWS CloudTrail, or other sources. You can then retrieve the associated log data from CloudWatch Logs using the CloudWatch console, CloudWatch Logs commands in the AWS CLI, CloudWatch Logs API, or CloudWatch Logs SDK.
--
--
-- You can use CloudWatch Logs to:
--
--     * __Monitor logs from EC2 instances in real-time__ : You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs and send you a notification whenever the rate of errors exceeds a threshold that you specify. CloudWatch Logs uses your log data for monitoring so no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException") or count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch metric that you specify.
--
--     * __Monitor AWS CloudTrail logged events__ : You can create alarms in CloudWatch and receive notifications of particular API activity as captured by CloudTrail. You can use the notification to perform troubleshooting.
--
--     * __Archive log data__ : You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events older than this setting are automatically deleted. The CloudWatch Logs agent makes it easy to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.
module Network.AWS.CloudWatchLogs
  ( -- * Service Configuration
    cloudWatchLogs,

    -- * Errors
    -- $errors

    -- ** InvalidOperationException
    _InvalidOperationException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** UnrecognizedClientException
    _UnrecognizedClientException,

    -- ** MalformedQueryException
    _MalformedQueryException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** OperationAbortedException
    _OperationAbortedException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** DataAlreadyAcceptedException
    _DataAlreadyAcceptedException,

    -- ** InvalidSequenceTokenException
    _InvalidSequenceTokenException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetLogRecord
    module Network.AWS.CloudWatchLogs.GetLogRecord,

    -- ** DescribeExportTasks (Paginated)
    module Network.AWS.CloudWatchLogs.DescribeExportTasks,

    -- ** CreateLogStream
    module Network.AWS.CloudWatchLogs.CreateLogStream,

    -- ** DescribeResourcePolicies (Paginated)
    module Network.AWS.CloudWatchLogs.DescribeResourcePolicies,

    -- ** DescribeQueryDefinitions
    module Network.AWS.CloudWatchLogs.DescribeQueryDefinitions,

    -- ** DeleteQueryDefinition
    module Network.AWS.CloudWatchLogs.DeleteQueryDefinition,

    -- ** DescribeLogStreams (Paginated)
    module Network.AWS.CloudWatchLogs.DescribeLogStreams,

    -- ** PutResourcePolicy
    module Network.AWS.CloudWatchLogs.PutResourcePolicy,

    -- ** DisassociateKMSKey
    module Network.AWS.CloudWatchLogs.DisassociateKMSKey,

    -- ** DescribeSubscriptionFilters (Paginated)
    module Network.AWS.CloudWatchLogs.DescribeSubscriptionFilters,

    -- ** DescribeLogGroups (Paginated)
    module Network.AWS.CloudWatchLogs.DescribeLogGroups,

    -- ** PutRetentionPolicy
    module Network.AWS.CloudWatchLogs.PutRetentionPolicy,

    -- ** PutDestinationPolicy
    module Network.AWS.CloudWatchLogs.PutDestinationPolicy,

    -- ** DeleteDestination
    module Network.AWS.CloudWatchLogs.DeleteDestination,

    -- ** DeleteMetricFilter
    module Network.AWS.CloudWatchLogs.DeleteMetricFilter,

    -- ** DescribeDestinations (Paginated)
    module Network.AWS.CloudWatchLogs.DescribeDestinations,

    -- ** PutSubscriptionFilter
    module Network.AWS.CloudWatchLogs.PutSubscriptionFilter,

    -- ** DescribeMetricFilters (Paginated)
    module Network.AWS.CloudWatchLogs.DescribeMetricFilters,

    -- ** CancelExportTask
    module Network.AWS.CloudWatchLogs.CancelExportTask,

    -- ** CreateLogGroup
    module Network.AWS.CloudWatchLogs.CreateLogGroup,

    -- ** GetLogGroupFields
    module Network.AWS.CloudWatchLogs.GetLogGroupFields,

    -- ** DescribeQueries (Paginated)
    module Network.AWS.CloudWatchLogs.DescribeQueries,

    -- ** DeleteLogStream
    module Network.AWS.CloudWatchLogs.DeleteLogStream,

    -- ** TagLogGroup
    module Network.AWS.CloudWatchLogs.TagLogGroup,

    -- ** AssociateKMSKey
    module Network.AWS.CloudWatchLogs.AssociateKMSKey,

    -- ** GetQueryResults
    module Network.AWS.CloudWatchLogs.GetQueryResults,

    -- ** PutQueryDefinition
    module Network.AWS.CloudWatchLogs.PutQueryDefinition,

    -- ** DeleteResourcePolicy
    module Network.AWS.CloudWatchLogs.DeleteResourcePolicy,

    -- ** FilterLogEvents (Paginated)
    module Network.AWS.CloudWatchLogs.FilterLogEvents,

    -- ** ListTagsLogGroup
    module Network.AWS.CloudWatchLogs.ListTagsLogGroup,

    -- ** DeleteRetentionPolicy
    module Network.AWS.CloudWatchLogs.DeleteRetentionPolicy,

    -- ** PutDestination
    module Network.AWS.CloudWatchLogs.PutDestination,

    -- ** PutMetricFilter
    module Network.AWS.CloudWatchLogs.PutMetricFilter,

    -- ** CreateExportTask
    module Network.AWS.CloudWatchLogs.CreateExportTask,

    -- ** GetLogEvents
    module Network.AWS.CloudWatchLogs.GetLogEvents,

    -- ** PutLogEvents
    module Network.AWS.CloudWatchLogs.PutLogEvents,

    -- ** StopQuery
    module Network.AWS.CloudWatchLogs.StopQuery,

    -- ** DeleteLogGroup
    module Network.AWS.CloudWatchLogs.DeleteLogGroup,

    -- ** UntagLogGroup
    module Network.AWS.CloudWatchLogs.UntagLogGroup,

    -- ** TestMetricFilter
    module Network.AWS.CloudWatchLogs.TestMetricFilter,

    -- ** StartQuery
    module Network.AWS.CloudWatchLogs.StartQuery,

    -- ** DeleteSubscriptionFilter
    module Network.AWS.CloudWatchLogs.DeleteSubscriptionFilter,

    -- * Types

    -- ** Distribution
    Distribution (..),

    -- ** ExportTaskStatusCode
    ExportTaskStatusCode (..),

    -- ** OrderBy
    OrderBy (..),

    -- ** QueryStatus
    QueryStatus (..),

    -- ** Destination
    Destination,
    destination,
    dCreationTime,
    dRoleARN,
    dDestinationName,
    dArn,
    dTargetARN,
    dAccessPolicy,

    -- ** ExportTask
    ExportTask,
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

    -- ** ExportTaskExecutionInfo
    ExportTaskExecutionInfo,
    exportTaskExecutionInfo,
    eteiCreationTime,
    eteiCompletionTime,

    -- ** ExportTaskStatus
    ExportTaskStatus,
    exportTaskStatus,
    etsMessage,
    etsCode,

    -- ** FilteredLogEvent
    FilteredLogEvent,
    filteredLogEvent,
    fleLogStreamName,
    fleEventId,
    fleMessage,
    fleIngestionTime,
    fleTimestamp,

    -- ** InputLogEvent
    InputLogEvent,
    inputLogEvent,
    ileTimestamp,
    ileMessage,

    -- ** LogGroup
    LogGroup,
    logGroup,
    lgRetentionInDays,
    lgCreationTime,
    lgArn,
    lgStoredBytes,
    lgMetricFilterCount,
    lgKmsKeyId,
    lgLogGroupName,

    -- ** LogGroupField
    LogGroupField,
    logGroupField,
    lgfName,
    lgfPercent,

    -- ** LogStream
    LogStream,
    logStream,
    lsLogStreamName,
    lsCreationTime,
    lsArn,
    lsStoredBytes,
    lsUploadSequenceToken,
    lsFirstEventTimestamp,
    lsLastEventTimestamp,
    lsLastIngestionTime,

    -- ** MetricFilter
    MetricFilter,
    metricFilter,
    mfFilterName,
    mfCreationTime,
    mfFilterPattern,
    mfLogGroupName,
    mfMetricTransformations,

    -- ** MetricFilterMatchRecord
    MetricFilterMatchRecord,
    metricFilterMatchRecord,
    mfmrEventNumber,
    mfmrEventMessage,
    mfmrExtractedValues,

    -- ** MetricTransformation
    MetricTransformation,
    metricTransformation,
    mtDefaultValue,
    mtMetricName,
    mtMetricNamespace,
    mtMetricValue,

    -- ** OutputLogEvent
    OutputLogEvent,
    outputLogEvent,
    oleMessage,
    oleIngestionTime,
    oleTimestamp,

    -- ** QueryDefinition
    QueryDefinition,
    queryDefinition,
    qdQueryString,
    qdName,
    qdLogGroupNames,
    qdLastModified,
    qdQueryDefinitionId,

    -- ** QueryInfo
    QueryInfo,
    queryInfo,
    qiQueryString,
    qiStatus,
    qiQueryId,
    qiLogGroupName,
    qiCreateTime,

    -- ** QueryStatistics
    QueryStatistics,
    queryStatistics,
    qsBytesScanned,
    qsRecordsMatched,
    qsRecordsScanned,

    -- ** RejectedLogEventsInfo
    RejectedLogEventsInfo,
    rejectedLogEventsInfo,
    rleiTooOldLogEventEndIndex,
    rleiExpiredLogEventEndIndex,
    rleiTooNewLogEventStartIndex,

    -- ** ResourcePolicy
    ResourcePolicy,
    resourcePolicy,
    rpPolicyName,
    rpPolicyDocument,
    rpLastUpdatedTime,

    -- ** ResultField
    ResultField,
    resultField,
    rfValue,
    rfField,

    -- ** SearchedLogStream
    SearchedLogStream,
    searchedLogStream,
    slsLogStreamName,
    slsSearchedCompletely,

    -- ** SubscriptionFilter
    SubscriptionFilter,
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

import Network.AWS.CloudWatchLogs.AssociateKMSKey
import Network.AWS.CloudWatchLogs.CancelExportTask
import Network.AWS.CloudWatchLogs.CreateExportTask
import Network.AWS.CloudWatchLogs.CreateLogGroup
import Network.AWS.CloudWatchLogs.CreateLogStream
import Network.AWS.CloudWatchLogs.DeleteDestination
import Network.AWS.CloudWatchLogs.DeleteLogGroup
import Network.AWS.CloudWatchLogs.DeleteLogStream
import Network.AWS.CloudWatchLogs.DeleteMetricFilter
import Network.AWS.CloudWatchLogs.DeleteQueryDefinition
import Network.AWS.CloudWatchLogs.DeleteResourcePolicy
import Network.AWS.CloudWatchLogs.DeleteRetentionPolicy
import Network.AWS.CloudWatchLogs.DeleteSubscriptionFilter
import Network.AWS.CloudWatchLogs.DescribeDestinations
import Network.AWS.CloudWatchLogs.DescribeExportTasks
import Network.AWS.CloudWatchLogs.DescribeLogGroups
import Network.AWS.CloudWatchLogs.DescribeLogStreams
import Network.AWS.CloudWatchLogs.DescribeMetricFilters
import Network.AWS.CloudWatchLogs.DescribeQueries
import Network.AWS.CloudWatchLogs.DescribeQueryDefinitions
import Network.AWS.CloudWatchLogs.DescribeResourcePolicies
import Network.AWS.CloudWatchLogs.DescribeSubscriptionFilters
import Network.AWS.CloudWatchLogs.DisassociateKMSKey
import Network.AWS.CloudWatchLogs.FilterLogEvents
import Network.AWS.CloudWatchLogs.GetLogEvents
import Network.AWS.CloudWatchLogs.GetLogGroupFields
import Network.AWS.CloudWatchLogs.GetLogRecord
import Network.AWS.CloudWatchLogs.GetQueryResults
import Network.AWS.CloudWatchLogs.ListTagsLogGroup
import Network.AWS.CloudWatchLogs.PutDestination
import Network.AWS.CloudWatchLogs.PutDestinationPolicy
import Network.AWS.CloudWatchLogs.PutLogEvents
import Network.AWS.CloudWatchLogs.PutMetricFilter
import Network.AWS.CloudWatchLogs.PutQueryDefinition
import Network.AWS.CloudWatchLogs.PutResourcePolicy
import Network.AWS.CloudWatchLogs.PutRetentionPolicy
import Network.AWS.CloudWatchLogs.PutSubscriptionFilter
import Network.AWS.CloudWatchLogs.StartQuery
import Network.AWS.CloudWatchLogs.StopQuery
import Network.AWS.CloudWatchLogs.TagLogGroup
import Network.AWS.CloudWatchLogs.TestMetricFilter
import Network.AWS.CloudWatchLogs.Types
import Network.AWS.CloudWatchLogs.UntagLogGroup
import Network.AWS.CloudWatchLogs.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudWatchLogs'.

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
