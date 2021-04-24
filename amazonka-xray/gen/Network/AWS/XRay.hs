{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- AWS X-Ray provides APIs for managing debug traces and retrieving service maps and other data created by processing those traces.
module Network.AWS.XRay
  ( -- * Service Configuration
    xRay,

    -- * Errors
    -- $errors

    -- ** RuleLimitExceededException
    _RuleLimitExceededException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** ThrottledException
    _ThrottledException,

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetSamplingTargets
    module Network.AWS.XRay.GetSamplingTargets,

    -- ** GetSamplingStatisticSummaries (Paginated)
    module Network.AWS.XRay.GetSamplingStatisticSummaries,

    -- ** GetInsightImpactGraph
    module Network.AWS.XRay.GetInsightImpactGraph,

    -- ** GetTraceGraph (Paginated)
    module Network.AWS.XRay.GetTraceGraph,

    -- ** UntagResource
    module Network.AWS.XRay.UntagResource,

    -- ** CreateGroup
    module Network.AWS.XRay.CreateGroup,

    -- ** GetInsight
    module Network.AWS.XRay.GetInsight,

    -- ** PutTraceSegments
    module Network.AWS.XRay.PutTraceSegments,

    -- ** GetTimeSeriesServiceStatistics (Paginated)
    module Network.AWS.XRay.GetTimeSeriesServiceStatistics,

    -- ** TagResource
    module Network.AWS.XRay.TagResource,

    -- ** PutTelemetryRecords
    module Network.AWS.XRay.PutTelemetryRecords,

    -- ** BatchGetTraces (Paginated)
    module Network.AWS.XRay.BatchGetTraces,

    -- ** GetTraceSummaries (Paginated)
    module Network.AWS.XRay.GetTraceSummaries,

    -- ** GetInsightSummaries
    module Network.AWS.XRay.GetInsightSummaries,

    -- ** GetGroups (Paginated)
    module Network.AWS.XRay.GetGroups,

    -- ** GetInsightEvents
    module Network.AWS.XRay.GetInsightEvents,

    -- ** GetServiceGraph (Paginated)
    module Network.AWS.XRay.GetServiceGraph,

    -- ** PutEncryptionConfig
    module Network.AWS.XRay.PutEncryptionConfig,

    -- ** DeleteSamplingRule
    module Network.AWS.XRay.DeleteSamplingRule,

    -- ** UpdateSamplingRule
    module Network.AWS.XRay.UpdateSamplingRule,

    -- ** GetGroup
    module Network.AWS.XRay.GetGroup,

    -- ** CreateSamplingRule
    module Network.AWS.XRay.CreateSamplingRule,

    -- ** UpdateGroup
    module Network.AWS.XRay.UpdateGroup,

    -- ** DeleteGroup
    module Network.AWS.XRay.DeleteGroup,

    -- ** GetEncryptionConfig
    module Network.AWS.XRay.GetEncryptionConfig,

    -- ** GetSamplingRules (Paginated)
    module Network.AWS.XRay.GetSamplingRules,

    -- ** ListTagsForResource
    module Network.AWS.XRay.ListTagsForResource,

    -- * Types

    -- ** EncryptionStatus
    EncryptionStatus (..),

    -- ** EncryptionType
    EncryptionType (..),

    -- ** InsightCategory
    InsightCategory (..),

    -- ** InsightState
    InsightState (..),

    -- ** SamplingStrategyName
    SamplingStrategyName (..),

    -- ** TimeRangeType
    TimeRangeType (..),

    -- ** Alias
    Alias,
    alias,
    aNames,
    aName,
    aType,

    -- ** AnnotationValue
    AnnotationValue,
    annotationValue,
    avStringValue,
    avBooleanValue,
    avNumberValue,

    -- ** AnomalousService
    AnomalousService,
    anomalousService,
    asServiceId,

    -- ** AvailabilityZoneDetail
    AvailabilityZoneDetail,
    availabilityZoneDetail,
    azdName,

    -- ** BackendConnectionErrors
    BackendConnectionErrors,
    backendConnectionErrors,
    bceOtherCount,
    bceConnectionRefusedCount,
    bceHTTPCode5XXCount,
    bceTimeoutCount,
    bceUnknownHostCount,
    bceHTTPCode4XXCount,

    -- ** Edge
    Edge,
    edge,
    eSummaryStatistics,
    eResponseTimeHistogram,
    eReferenceId,
    eStartTime,
    eEndTime,
    eAliases,

    -- ** EdgeStatistics
    EdgeStatistics,
    edgeStatistics,
    eTotalResponseTime,
    eOKCount,
    eFaultStatistics,
    eTotalCount,
    eErrorStatistics,

    -- ** EncryptionConfig
    EncryptionConfig,
    encryptionConfig,
    ecStatus,
    ecType,
    ecKeyId,

    -- ** ErrorRootCause
    ErrorRootCause,
    errorRootCause,
    ercServices,
    ercClientImpacting,

    -- ** ErrorRootCauseEntity
    ErrorRootCauseEntity,
    errorRootCauseEntity,
    erceExceptions,
    erceRemote,
    erceName,

    -- ** ErrorRootCauseService
    ErrorRootCauseService,
    errorRootCauseService,
    ercsNames,
    ercsAccountId,
    ercsInferred,
    ercsName,
    ercsEntityPath,
    ercsType,

    -- ** ErrorStatistics
    ErrorStatistics,
    errorStatistics,
    esOtherCount,
    esThrottleCount,
    esTotalCount,

    -- ** FaultRootCause
    FaultRootCause,
    faultRootCause,
    frcServices,
    frcClientImpacting,

    -- ** FaultRootCauseEntity
    FaultRootCauseEntity,
    faultRootCauseEntity,
    frceExceptions,
    frceRemote,
    frceName,

    -- ** FaultRootCauseService
    FaultRootCauseService,
    faultRootCauseService,
    frcsNames,
    frcsAccountId,
    frcsInferred,
    frcsName,
    frcsEntityPath,
    frcsType,

    -- ** FaultStatistics
    FaultStatistics,
    faultStatistics,
    fsOtherCount,
    fsTotalCount,

    -- ** ForecastStatistics
    ForecastStatistics,
    forecastStatistics,
    fsFaultCountLow,
    fsFaultCountHigh,

    -- ** Group
    Group,
    group',
    gGroupName,
    gInsightsConfiguration,
    gFilterExpression,
    gGroupARN,

    -- ** GroupSummary
    GroupSummary,
    groupSummary,
    gsGroupName,
    gsInsightsConfiguration,
    gsFilterExpression,
    gsGroupARN,

    -- ** HTTP
    HTTP,
    hTTP,
    httpHTTPMethod,
    httpHTTPURL,
    httpUserAgent,
    httpHTTPStatus,
    httpClientIP,

    -- ** HistogramEntry
    HistogramEntry,
    histogramEntry,
    heValue,
    heCount,

    -- ** Insight
    Insight,
    insight,
    iClientRequestImpactStatistics,
    iRootCauseServiceRequestImpactStatistics,
    iGroupName,
    iStartTime,
    iEndTime,
    iRootCauseServiceId,
    iState,
    iSummary,
    iTopAnomalousServices,
    iCategories,
    iInsightId,
    iGroupARN,

    -- ** InsightEvent
    InsightEvent,
    insightEvent,
    ieClientRequestImpactStatistics,
    ieRootCauseServiceRequestImpactStatistics,
    ieSummary,
    ieTopAnomalousServices,
    ieEventTime,

    -- ** InsightImpactGraphEdge
    InsightImpactGraphEdge,
    insightImpactGraphEdge,
    iigeReferenceId,

    -- ** InsightImpactGraphService
    InsightImpactGraphService,
    insightImpactGraphService,
    iigsNames,
    iigsAccountId,
    iigsReferenceId,
    iigsEdges,
    iigsName,
    iigsType,

    -- ** InsightSummary
    InsightSummary,
    insightSummary,
    isClientRequestImpactStatistics,
    isRootCauseServiceRequestImpactStatistics,
    isLastUpdateTime,
    isGroupName,
    isStartTime,
    isEndTime,
    isRootCauseServiceId,
    isState,
    isSummary,
    isTopAnomalousServices,
    isCategories,
    isInsightId,
    isGroupARN,

    -- ** InsightsConfiguration
    InsightsConfiguration,
    insightsConfiguration,
    icNotificationsEnabled,
    icInsightsEnabled,

    -- ** InstanceIdDetail
    InstanceIdDetail,
    instanceIdDetail,
    iidId,

    -- ** RequestImpactStatistics
    RequestImpactStatistics,
    requestImpactStatistics,
    risOKCount,
    risFaultCount,
    risTotalCount,

    -- ** ResourceARNDetail
    ResourceARNDetail,
    resourceARNDetail,
    radARN,

    -- ** ResponseTimeRootCause
    ResponseTimeRootCause,
    responseTimeRootCause,
    rtrcServices,
    rtrcClientImpacting,

    -- ** ResponseTimeRootCauseEntity
    ResponseTimeRootCauseEntity,
    responseTimeRootCauseEntity,
    rtrceRemote,
    rtrceName,
    rtrceCoverage,

    -- ** ResponseTimeRootCauseService
    ResponseTimeRootCauseService,
    responseTimeRootCauseService,
    rtrcsNames,
    rtrcsAccountId,
    rtrcsInferred,
    rtrcsName,
    rtrcsEntityPath,
    rtrcsType,

    -- ** RootCauseException
    RootCauseException,
    rootCauseException,
    rceMessage,
    rceName,

    -- ** SamplingRule
    SamplingRule,
    samplingRule,
    srRuleName,
    srRuleARN,
    srAttributes,
    srResourceARN,
    srPriority,
    srFixedRate,
    srReservoirSize,
    srServiceName,
    srServiceType,
    srHost,
    srHTTPMethod,
    srURLPath,
    srVersion,

    -- ** SamplingRuleRecord
    SamplingRuleRecord,
    samplingRuleRecord,
    srrModifiedAt,
    srrCreatedAt,
    srrSamplingRule,

    -- ** SamplingRuleUpdate
    SamplingRuleUpdate,
    samplingRuleUpdate,
    sruResourceARN,
    sruHTTPMethod,
    sruReservoirSize,
    sruFixedRate,
    sruRuleName,
    sruRuleARN,
    sruServiceName,
    sruPriority,
    sruAttributes,
    sruURLPath,
    sruHost,
    sruServiceType,

    -- ** SamplingStatisticSummary
    SamplingStatisticSummary,
    samplingStatisticSummary,
    sssRuleName,
    sssBorrowCount,
    sssRequestCount,
    sssSampledCount,
    sssTimestamp,

    -- ** SamplingStatisticsDocument
    SamplingStatisticsDocument,
    samplingStatisticsDocument,
    ssdBorrowCount,
    ssdRuleName,
    ssdClientId,
    ssdTimestamp,
    ssdRequestCount,
    ssdSampledCount,

    -- ** SamplingStrategy
    SamplingStrategy,
    samplingStrategy,
    ssName,
    ssValue,

    -- ** SamplingTargetDocument
    SamplingTargetDocument,
    samplingTargetDocument,
    stdReservoirQuota,
    stdFixedRate,
    stdRuleName,
    stdReservoirQuotaTTL,
    stdInterval,

    -- ** Segment
    Segment,
    segment,
    sId,
    sDocument,

    -- ** ServiceId
    ServiceId,
    serviceId,
    siNames,
    siAccountId,
    siName,
    siType,

    -- ** ServiceInfo
    ServiceInfo,
    serviceInfo,
    sNames,
    sAccountId,
    sSummaryStatistics,
    sResponseTimeHistogram,
    sReferenceId,
    sDurationHistogram,
    sEdges,
    sStartTime,
    sEndTime,
    sState,
    sName,
    sRoot,
    sType,

    -- ** ServiceStatistics
    ServiceStatistics,
    serviceStatistics,
    ssTotalResponseTime,
    ssOKCount,
    ssFaultStatistics,
    ssTotalCount,
    ssErrorStatistics,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TelemetryRecord
    TelemetryRecord,
    telemetryRecord,
    trSegmentsSpilloverCount,
    trBackendConnectionErrors,
    trSegmentsRejectedCount,
    trSegmentsSentCount,
    trSegmentsReceivedCount,
    trTimestamp,

    -- ** TimeSeriesServiceStatistics
    TimeSeriesServiceStatistics,
    timeSeriesServiceStatistics,
    tsssServiceSummaryStatistics,
    tsssResponseTimeHistogram,
    tsssServiceForecastStatistics,
    tsssEdgeSummaryStatistics,
    tsssTimestamp,

    -- ** Trace
    Trace,
    trace,
    tLimitExceeded,
    tDuration,
    tId,
    tSegments,

    -- ** TraceSummary
    TraceSummary,
    traceSummary,
    tsInstanceIds,
    tsErrorRootCauses,
    tsAvailabilityZones,
    tsResponseTime,
    tsDuration,
    tsMatchedEventTime,
    tsServiceIds,
    tsHasFault,
    tsEntryPoint,
    tsId,
    tsAnnotations,
    tsResourceARNs,
    tsIsPartial,
    tsFaultRootCauses,
    tsRevision,
    tsHTTP,
    tsHasError,
    tsUsers,
    tsHasThrottle,
    tsResponseTimeRootCauses,

    -- ** TraceUser
    TraceUser,
    traceUser,
    tuServiceIds,
    tuUserName,

    -- ** UnprocessedStatistics
    UnprocessedStatistics,
    unprocessedStatistics,
    usRuleName,
    usMessage,
    usErrorCode,

    -- ** UnprocessedTraceSegment
    UnprocessedTraceSegment,
    unprocessedTraceSegment,
    utsMessage,
    utsId,
    utsErrorCode,

    -- ** ValueWithServiceIds
    ValueWithServiceIds,
    valueWithServiceIds,
    vwsiAnnotationValue,
    vwsiServiceIds,
  )
where

import Network.AWS.XRay.BatchGetTraces
import Network.AWS.XRay.CreateGroup
import Network.AWS.XRay.CreateSamplingRule
import Network.AWS.XRay.DeleteGroup
import Network.AWS.XRay.DeleteSamplingRule
import Network.AWS.XRay.GetEncryptionConfig
import Network.AWS.XRay.GetGroup
import Network.AWS.XRay.GetGroups
import Network.AWS.XRay.GetInsight
import Network.AWS.XRay.GetInsightEvents
import Network.AWS.XRay.GetInsightImpactGraph
import Network.AWS.XRay.GetInsightSummaries
import Network.AWS.XRay.GetSamplingRules
import Network.AWS.XRay.GetSamplingStatisticSummaries
import Network.AWS.XRay.GetSamplingTargets
import Network.AWS.XRay.GetServiceGraph
import Network.AWS.XRay.GetTimeSeriesServiceStatistics
import Network.AWS.XRay.GetTraceGraph
import Network.AWS.XRay.GetTraceSummaries
import Network.AWS.XRay.ListTagsForResource
import Network.AWS.XRay.PutEncryptionConfig
import Network.AWS.XRay.PutTelemetryRecords
import Network.AWS.XRay.PutTraceSegments
import Network.AWS.XRay.TagResource
import Network.AWS.XRay.Types
import Network.AWS.XRay.UntagResource
import Network.AWS.XRay.UpdateGroup
import Network.AWS.XRay.UpdateSamplingRule
import Network.AWS.XRay.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'XRay'.

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
