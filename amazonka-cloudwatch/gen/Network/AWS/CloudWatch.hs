{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon CloudWatch monitors your Amazon Web Services (AWS) resources and the applications you run on AWS in real time. You can use CloudWatch to collect and track metrics, which are the variables you want to measure for your resources and applications.
--
--
-- CloudWatch alarms send notifications or automatically change the resources you are monitoring based on rules that you define. For example, you can monitor the CPU usage and disk reads and writes of your Amazon EC2 instances. Then, use this data to determine whether you should launch additional instances to handle increased load. You can also use this data to stop under-used instances to save money.
--
-- In addition to monitoring the built-in metrics that come with AWS, you can monitor your own custom metrics. With CloudWatch, you gain system-wide visibility into resource utilization, application performance, and operational health.
module Network.AWS.CloudWatch
  ( -- * Service Configuration
    cloudWatch,

    -- * Errors
    -- $errors

    -- ** DashboardNotFoundError
    _DashboardNotFoundError,

    -- ** LimitExceededFault
    _LimitExceededFault,

    -- ** InvalidParameterCombinationException
    _InvalidParameterCombinationException,

    -- ** MissingRequiredParameterException
    _MissingRequiredParameterException,

    -- ** DashboardInvalidInputError
    _DashboardInvalidInputError,

    -- ** InternalServiceFault
    _InternalServiceFault,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** InvalidParameterValueException
    _InvalidParameterValueException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ResourceNotFound
    _ResourceNotFound,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InvalidFormatFault
    _InvalidFormatFault,

    -- ** InvalidNextToken
    _InvalidNextToken,

    -- * Waiters
    -- $waiters

    -- ** AlarmExists
    alarmExists,

    -- ** CompositeAlarmExists
    compositeAlarmExists,

    -- * Operations
    -- $operations

    -- ** EnableAlarmActions
    module Network.AWS.CloudWatch.EnableAlarmActions,

    -- ** GetMetricStatistics
    module Network.AWS.CloudWatch.GetMetricStatistics,

    -- ** PutInsightRule
    module Network.AWS.CloudWatch.PutInsightRule,

    -- ** DeleteAlarms
    module Network.AWS.CloudWatch.DeleteAlarms,

    -- ** GetMetricWidgetImage
    module Network.AWS.CloudWatch.GetMetricWidgetImage,

    -- ** DescribeInsightRules
    module Network.AWS.CloudWatch.DescribeInsightRules,

    -- ** PutMetricAlarm
    module Network.AWS.CloudWatch.PutMetricAlarm,

    -- ** UntagResource
    module Network.AWS.CloudWatch.UntagResource,

    -- ** GetInsightRuleReport
    module Network.AWS.CloudWatch.GetInsightRuleReport,

    -- ** TagResource
    module Network.AWS.CloudWatch.TagResource,

    -- ** DescribeAnomalyDetectors
    module Network.AWS.CloudWatch.DescribeAnomalyDetectors,

    -- ** ListMetrics (Paginated)
    module Network.AWS.CloudWatch.ListMetrics,

    -- ** PutMetricData
    module Network.AWS.CloudWatch.PutMetricData,

    -- ** PutDashboard
    module Network.AWS.CloudWatch.PutDashboard,

    -- ** DescribeAlarmsForMetric
    module Network.AWS.CloudWatch.DescribeAlarmsForMetric,

    -- ** PutAnomalyDetector
    module Network.AWS.CloudWatch.PutAnomalyDetector,

    -- ** DeleteInsightRules
    module Network.AWS.CloudWatch.DeleteInsightRules,

    -- ** DisableAlarmActions
    module Network.AWS.CloudWatch.DisableAlarmActions,

    -- ** GetDashboard
    module Network.AWS.CloudWatch.GetDashboard,

    -- ** PutCompositeAlarm
    module Network.AWS.CloudWatch.PutCompositeAlarm,

    -- ** DisableInsightRules
    module Network.AWS.CloudWatch.DisableInsightRules,

    -- ** DescribeAlarmHistory (Paginated)
    module Network.AWS.CloudWatch.DescribeAlarmHistory,

    -- ** DeleteDashboards
    module Network.AWS.CloudWatch.DeleteDashboards,

    -- ** SetAlarmState
    module Network.AWS.CloudWatch.SetAlarmState,

    -- ** ListDashboards (Paginated)
    module Network.AWS.CloudWatch.ListDashboards,

    -- ** DescribeAlarms (Paginated)
    module Network.AWS.CloudWatch.DescribeAlarms,

    -- ** ListTagsForResource
    module Network.AWS.CloudWatch.ListTagsForResource,

    -- ** DeleteAnomalyDetector
    module Network.AWS.CloudWatch.DeleteAnomalyDetector,

    -- ** EnableInsightRules
    module Network.AWS.CloudWatch.EnableInsightRules,

    -- ** GetMetricData (Paginated)
    module Network.AWS.CloudWatch.GetMetricData,

    -- * Types

    -- ** AlarmType
    AlarmType (..),

    -- ** AnomalyDetectorStateValue
    AnomalyDetectorStateValue (..),

    -- ** ComparisonOperator
    ComparisonOperator (..),

    -- ** HistoryItemType
    HistoryItemType (..),

    -- ** RecentlyActive
    RecentlyActive (..),

    -- ** ScanBy
    ScanBy (..),

    -- ** StandardUnit
    StandardUnit (..),

    -- ** StateValue
    StateValue (..),

    -- ** Statistic
    Statistic (..),

    -- ** StatusCode
    StatusCode (..),

    -- ** AlarmHistoryItem
    AlarmHistoryItem,
    alarmHistoryItem,
    ahiHistorySummary,
    ahiHistoryItemType,
    ahiAlarmName,
    ahiTimestamp,
    ahiAlarmType,
    ahiHistoryData,

    -- ** AnomalyDetector
    AnomalyDetector,
    anomalyDetector,
    adMetricName,
    adConfiguration,
    adStateValue,
    adDimensions,
    adNamespace,
    adStat,

    -- ** AnomalyDetectorConfiguration
    AnomalyDetectorConfiguration,
    anomalyDetectorConfiguration,
    adcMetricTimezone,
    adcExcludedTimeRanges,

    -- ** CompositeAlarm
    CompositeAlarm,
    compositeAlarm,
    caAlarmARN,
    caAlarmActions,
    caStateReason,
    caStateReasonData,
    caInsufficientDataActions,
    caAlarmRule,
    caStateUpdatedTimestamp,
    caStateValue,
    caAlarmName,
    caOKActions,
    caActionsEnabled,
    caAlarmConfigurationUpdatedTimestamp,
    caAlarmDescription,

    -- ** DashboardEntry
    DashboardEntry,
    dashboardEntry,
    deDashboardARN,
    deLastModified,
    deDashboardName,
    deSize,

    -- ** DashboardValidationMessage
    DashboardValidationMessage,
    dashboardValidationMessage,
    dvmMessage,
    dvmDataPath,

    -- ** Datapoint
    Datapoint,
    datapoint,
    dUnit,
    dMinimum,
    dSum,
    dSampleCount,
    dTimestamp,
    dAverage,
    dMaximum,
    dExtendedStatistics,

    -- ** Dimension
    Dimension,
    dimension,
    dName,
    dValue,

    -- ** DimensionFilter
    DimensionFilter,
    dimensionFilter,
    dfValue,
    dfName,

    -- ** InsightRule
    InsightRule,
    insightRule,
    irName,
    irState,
    irSchema,
    irDefinition,

    -- ** InsightRuleContributor
    InsightRuleContributor,
    insightRuleContributor,
    ircKeys,
    ircApproximateAggregateValue,
    ircDatapoints,

    -- ** InsightRuleContributorDatapoint
    InsightRuleContributorDatapoint,
    insightRuleContributorDatapoint,
    ircdTimestamp,
    ircdApproximateValue,

    -- ** InsightRuleMetricDatapoint
    InsightRuleMetricDatapoint,
    insightRuleMetricDatapoint,
    irmdMinimum,
    irmdSum,
    irmdSampleCount,
    irmdMaxContributorValue,
    irmdAverage,
    irmdUniqueContributors,
    irmdMaximum,
    irmdTimestamp,

    -- ** LabelOptions
    LabelOptions,
    labelOptions,
    loTimezone,

    -- ** MessageData
    MessageData,
    messageData,
    mdCode,
    mdValue,

    -- ** Metric
    Metric,
    metric,
    mMetricName,
    mDimensions,
    mNamespace,

    -- ** MetricAlarm
    MetricAlarm,
    metricAlarm,
    maThreshold,
    maDatapointsToAlarm,
    maEvaluateLowSampleCountPercentile,
    maComparisonOperator,
    maExtendedStatistic,
    maAlarmARN,
    maAlarmActions,
    maUnit,
    maThresholdMetricId,
    maStateReason,
    maStateReasonData,
    maMetricName,
    maInsufficientDataActions,
    maTreatMissingData,
    maMetrics,
    maStateUpdatedTimestamp,
    maStateValue,
    maAlarmName,
    maOKActions,
    maStatistic,
    maDimensions,
    maNamespace,
    maEvaluationPeriods,
    maActionsEnabled,
    maAlarmConfigurationUpdatedTimestamp,
    maAlarmDescription,
    maPeriod,

    -- ** MetricDataQuery
    MetricDataQuery,
    metricDataQuery,
    mdqMetricStat,
    mdqReturnData,
    mdqLabel,
    mdqPeriod,
    mdqExpression,
    mdqId,

    -- ** MetricDataResult
    MetricDataResult,
    metricDataResult,
    mdrValues,
    mdrId,
    mdrTimestamps,
    mdrStatusCode,
    mdrLabel,
    mdrMessages,

    -- ** MetricDatum
    MetricDatum,
    metricDatum,
    metStorageResolution,
    metUnit,
    metValues,
    metCounts,
    metTimestamp,
    metStatisticValues,
    metValue,
    metDimensions,
    metMetricName,

    -- ** MetricStat
    MetricStat,
    metricStat,
    msUnit,
    msMetric,
    msPeriod,
    msStat,

    -- ** PartialFailure
    PartialFailure,
    partialFailure,
    pfExceptionType,
    pfFailureCode,
    pfFailureDescription,
    pfFailureResource,

    -- ** Range
    Range,
    range,
    rStartTime,
    rEndTime,

    -- ** StatisticSet
    StatisticSet,
    statisticSet,
    ssSampleCount,
    ssSum,
    ssMinimum,
    ssMaximum,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.CloudWatch.DeleteAlarms
import Network.AWS.CloudWatch.DeleteAnomalyDetector
import Network.AWS.CloudWatch.DeleteDashboards
import Network.AWS.CloudWatch.DeleteInsightRules
import Network.AWS.CloudWatch.DescribeAlarmHistory
import Network.AWS.CloudWatch.DescribeAlarms
import Network.AWS.CloudWatch.DescribeAlarmsForMetric
import Network.AWS.CloudWatch.DescribeAnomalyDetectors
import Network.AWS.CloudWatch.DescribeInsightRules
import Network.AWS.CloudWatch.DisableAlarmActions
import Network.AWS.CloudWatch.DisableInsightRules
import Network.AWS.CloudWatch.EnableAlarmActions
import Network.AWS.CloudWatch.EnableInsightRules
import Network.AWS.CloudWatch.GetDashboard
import Network.AWS.CloudWatch.GetInsightRuleReport
import Network.AWS.CloudWatch.GetMetricData
import Network.AWS.CloudWatch.GetMetricStatistics
import Network.AWS.CloudWatch.GetMetricWidgetImage
import Network.AWS.CloudWatch.ListDashboards
import Network.AWS.CloudWatch.ListMetrics
import Network.AWS.CloudWatch.ListTagsForResource
import Network.AWS.CloudWatch.PutAnomalyDetector
import Network.AWS.CloudWatch.PutCompositeAlarm
import Network.AWS.CloudWatch.PutDashboard
import Network.AWS.CloudWatch.PutInsightRule
import Network.AWS.CloudWatch.PutMetricAlarm
import Network.AWS.CloudWatch.PutMetricData
import Network.AWS.CloudWatch.SetAlarmState
import Network.AWS.CloudWatch.TagResource
import Network.AWS.CloudWatch.Types
import Network.AWS.CloudWatch.UntagResource
import Network.AWS.CloudWatch.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudWatch'.

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
