{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types
  ( -- * Service Configuration
    xRay,

    -- * Errors
    _RuleLimitExceededException,
    _TooManyTagsException,
    _ThrottledException,
    _InvalidRequestException,
    _ResourceNotFoundException,

    -- * EncryptionStatus
    EncryptionStatus (..),

    -- * EncryptionType
    EncryptionType (..),

    -- * InsightCategory
    InsightCategory (..),

    -- * InsightState
    InsightState (..),

    -- * SamplingStrategyName
    SamplingStrategyName (..),

    -- * TimeRangeType
    TimeRangeType (..),

    -- * Alias
    Alias (..),
    alias,
    aNames,
    aName,
    aType,

    -- * AnnotationValue
    AnnotationValue (..),
    annotationValue,
    avStringValue,
    avBooleanValue,
    avNumberValue,

    -- * AnomalousService
    AnomalousService (..),
    anomalousService,
    asServiceId,

    -- * AvailabilityZoneDetail
    AvailabilityZoneDetail (..),
    availabilityZoneDetail,
    azdName,

    -- * BackendConnectionErrors
    BackendConnectionErrors (..),
    backendConnectionErrors,
    bceOtherCount,
    bceConnectionRefusedCount,
    bceHTTPCode5XXCount,
    bceTimeoutCount,
    bceUnknownHostCount,
    bceHTTPCode4XXCount,

    -- * Edge
    Edge (..),
    edge,
    eSummaryStatistics,
    eResponseTimeHistogram,
    eReferenceId,
    eStartTime,
    eEndTime,
    eAliases,

    -- * EdgeStatistics
    EdgeStatistics (..),
    edgeStatistics,
    eTotalResponseTime,
    eOKCount,
    eFaultStatistics,
    eTotalCount,
    eErrorStatistics,

    -- * EncryptionConfig
    EncryptionConfig (..),
    encryptionConfig,
    ecStatus,
    ecType,
    ecKeyId,

    -- * ErrorRootCause
    ErrorRootCause (..),
    errorRootCause,
    ercServices,
    ercClientImpacting,

    -- * ErrorRootCauseEntity
    ErrorRootCauseEntity (..),
    errorRootCauseEntity,
    erceExceptions,
    erceRemote,
    erceName,

    -- * ErrorRootCauseService
    ErrorRootCauseService (..),
    errorRootCauseService,
    ercsNames,
    ercsAccountId,
    ercsInferred,
    ercsName,
    ercsEntityPath,
    ercsType,

    -- * ErrorStatistics
    ErrorStatistics (..),
    errorStatistics,
    esOtherCount,
    esThrottleCount,
    esTotalCount,

    -- * FaultRootCause
    FaultRootCause (..),
    faultRootCause,
    frcServices,
    frcClientImpacting,

    -- * FaultRootCauseEntity
    FaultRootCauseEntity (..),
    faultRootCauseEntity,
    frceExceptions,
    frceRemote,
    frceName,

    -- * FaultRootCauseService
    FaultRootCauseService (..),
    faultRootCauseService,
    frcsNames,
    frcsAccountId,
    frcsInferred,
    frcsName,
    frcsEntityPath,
    frcsType,

    -- * FaultStatistics
    FaultStatistics (..),
    faultStatistics,
    fsOtherCount,
    fsTotalCount,

    -- * ForecastStatistics
    ForecastStatistics (..),
    forecastStatistics,
    fsFaultCountLow,
    fsFaultCountHigh,

    -- * Group
    Group (..),
    group',
    gGroupName,
    gInsightsConfiguration,
    gFilterExpression,
    gGroupARN,

    -- * GroupSummary
    GroupSummary (..),
    groupSummary,
    gsGroupName,
    gsInsightsConfiguration,
    gsFilterExpression,
    gsGroupARN,

    -- * HTTP
    HTTP (..),
    hTTP,
    httpHTTPMethod,
    httpHTTPURL,
    httpUserAgent,
    httpHTTPStatus,
    httpClientIP,

    -- * HistogramEntry
    HistogramEntry (..),
    histogramEntry,
    heValue,
    heCount,

    -- * Insight
    Insight (..),
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

    -- * InsightEvent
    InsightEvent (..),
    insightEvent,
    ieClientRequestImpactStatistics,
    ieRootCauseServiceRequestImpactStatistics,
    ieSummary,
    ieTopAnomalousServices,
    ieEventTime,

    -- * InsightImpactGraphEdge
    InsightImpactGraphEdge (..),
    insightImpactGraphEdge,
    iigeReferenceId,

    -- * InsightImpactGraphService
    InsightImpactGraphService (..),
    insightImpactGraphService,
    iigsNames,
    iigsAccountId,
    iigsReferenceId,
    iigsEdges,
    iigsName,
    iigsType,

    -- * InsightSummary
    InsightSummary (..),
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

    -- * InsightsConfiguration
    InsightsConfiguration (..),
    insightsConfiguration,
    icNotificationsEnabled,
    icInsightsEnabled,

    -- * InstanceIdDetail
    InstanceIdDetail (..),
    instanceIdDetail,
    iidId,

    -- * RequestImpactStatistics
    RequestImpactStatistics (..),
    requestImpactStatistics,
    risOKCount,
    risFaultCount,
    risTotalCount,

    -- * ResourceARNDetail
    ResourceARNDetail (..),
    resourceARNDetail,
    radARN,

    -- * ResponseTimeRootCause
    ResponseTimeRootCause (..),
    responseTimeRootCause,
    rtrcServices,
    rtrcClientImpacting,

    -- * ResponseTimeRootCauseEntity
    ResponseTimeRootCauseEntity (..),
    responseTimeRootCauseEntity,
    rtrceRemote,
    rtrceName,
    rtrceCoverage,

    -- * ResponseTimeRootCauseService
    ResponseTimeRootCauseService (..),
    responseTimeRootCauseService,
    rtrcsNames,
    rtrcsAccountId,
    rtrcsInferred,
    rtrcsName,
    rtrcsEntityPath,
    rtrcsType,

    -- * RootCauseException
    RootCauseException (..),
    rootCauseException,
    rceMessage,
    rceName,

    -- * SamplingRule
    SamplingRule (..),
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

    -- * SamplingRuleRecord
    SamplingRuleRecord (..),
    samplingRuleRecord,
    srrModifiedAt,
    srrCreatedAt,
    srrSamplingRule,

    -- * SamplingRuleUpdate
    SamplingRuleUpdate (..),
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

    -- * SamplingStatisticSummary
    SamplingStatisticSummary (..),
    samplingStatisticSummary,
    sssRuleName,
    sssBorrowCount,
    sssRequestCount,
    sssSampledCount,
    sssTimestamp,

    -- * SamplingStatisticsDocument
    SamplingStatisticsDocument (..),
    samplingStatisticsDocument,
    ssdBorrowCount,
    ssdRuleName,
    ssdClientId,
    ssdTimestamp,
    ssdRequestCount,
    ssdSampledCount,

    -- * SamplingStrategy
    SamplingStrategy (..),
    samplingStrategy,
    ssName,
    ssValue,

    -- * SamplingTargetDocument
    SamplingTargetDocument (..),
    samplingTargetDocument,
    stdReservoirQuota,
    stdFixedRate,
    stdRuleName,
    stdReservoirQuotaTTL,
    stdInterval,

    -- * Segment
    Segment (..),
    segment,
    sId,
    sDocument,

    -- * ServiceId
    ServiceId (..),
    serviceId,
    siNames,
    siAccountId,
    siName,
    siType,

    -- * ServiceInfo
    ServiceInfo (..),
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

    -- * ServiceStatistics
    ServiceStatistics (..),
    serviceStatistics,
    ssTotalResponseTime,
    ssOKCount,
    ssFaultStatistics,
    ssTotalCount,
    ssErrorStatistics,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TelemetryRecord
    TelemetryRecord (..),
    telemetryRecord,
    trSegmentsSpilloverCount,
    trBackendConnectionErrors,
    trSegmentsRejectedCount,
    trSegmentsSentCount,
    trSegmentsReceivedCount,
    trTimestamp,

    -- * TimeSeriesServiceStatistics
    TimeSeriesServiceStatistics (..),
    timeSeriesServiceStatistics,
    tsssServiceSummaryStatistics,
    tsssResponseTimeHistogram,
    tsssServiceForecastStatistics,
    tsssEdgeSummaryStatistics,
    tsssTimestamp,

    -- * Trace
    Trace (..),
    trace,
    tLimitExceeded,
    tDuration,
    tId,
    tSegments,

    -- * TraceSummary
    TraceSummary (..),
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

    -- * TraceUser
    TraceUser (..),
    traceUser,
    tuServiceIds,
    tuUserName,

    -- * UnprocessedStatistics
    UnprocessedStatistics (..),
    unprocessedStatistics,
    usRuleName,
    usMessage,
    usErrorCode,

    -- * UnprocessedTraceSegment
    UnprocessedTraceSegment (..),
    unprocessedTraceSegment,
    utsMessage,
    utsId,
    utsErrorCode,

    -- * ValueWithServiceIds
    ValueWithServiceIds (..),
    valueWithServiceIds,
    vwsiAnnotationValue,
    vwsiServiceIds,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.XRay.Types.Alias
import Network.AWS.XRay.Types.AnnotationValue
import Network.AWS.XRay.Types.AnomalousService
import Network.AWS.XRay.Types.AvailabilityZoneDetail
import Network.AWS.XRay.Types.BackendConnectionErrors
import Network.AWS.XRay.Types.Edge
import Network.AWS.XRay.Types.EdgeStatistics
import Network.AWS.XRay.Types.EncryptionConfig
import Network.AWS.XRay.Types.EncryptionStatus
import Network.AWS.XRay.Types.EncryptionType
import Network.AWS.XRay.Types.ErrorRootCause
import Network.AWS.XRay.Types.ErrorRootCauseEntity
import Network.AWS.XRay.Types.ErrorRootCauseService
import Network.AWS.XRay.Types.ErrorStatistics
import Network.AWS.XRay.Types.FaultRootCause
import Network.AWS.XRay.Types.FaultRootCauseEntity
import Network.AWS.XRay.Types.FaultRootCauseService
import Network.AWS.XRay.Types.FaultStatistics
import Network.AWS.XRay.Types.ForecastStatistics
import Network.AWS.XRay.Types.Group
import Network.AWS.XRay.Types.GroupSummary
import Network.AWS.XRay.Types.HTTP
import Network.AWS.XRay.Types.HistogramEntry
import Network.AWS.XRay.Types.Insight
import Network.AWS.XRay.Types.InsightCategory
import Network.AWS.XRay.Types.InsightEvent
import Network.AWS.XRay.Types.InsightImpactGraphEdge
import Network.AWS.XRay.Types.InsightImpactGraphService
import Network.AWS.XRay.Types.InsightState
import Network.AWS.XRay.Types.InsightSummary
import Network.AWS.XRay.Types.InsightsConfiguration
import Network.AWS.XRay.Types.InstanceIdDetail
import Network.AWS.XRay.Types.RequestImpactStatistics
import Network.AWS.XRay.Types.ResourceARNDetail
import Network.AWS.XRay.Types.ResponseTimeRootCause
import Network.AWS.XRay.Types.ResponseTimeRootCauseEntity
import Network.AWS.XRay.Types.ResponseTimeRootCauseService
import Network.AWS.XRay.Types.RootCauseException
import Network.AWS.XRay.Types.SamplingRule
import Network.AWS.XRay.Types.SamplingRuleRecord
import Network.AWS.XRay.Types.SamplingRuleUpdate
import Network.AWS.XRay.Types.SamplingStatisticSummary
import Network.AWS.XRay.Types.SamplingStatisticsDocument
import Network.AWS.XRay.Types.SamplingStrategy
import Network.AWS.XRay.Types.SamplingStrategyName
import Network.AWS.XRay.Types.SamplingTargetDocument
import Network.AWS.XRay.Types.Segment
import Network.AWS.XRay.Types.ServiceId
import Network.AWS.XRay.Types.ServiceInfo
import Network.AWS.XRay.Types.ServiceStatistics
import Network.AWS.XRay.Types.Tag
import Network.AWS.XRay.Types.TelemetryRecord
import Network.AWS.XRay.Types.TimeRangeType
import Network.AWS.XRay.Types.TimeSeriesServiceStatistics
import Network.AWS.XRay.Types.Trace
import Network.AWS.XRay.Types.TraceSummary
import Network.AWS.XRay.Types.TraceUser
import Network.AWS.XRay.Types.UnprocessedStatistics
import Network.AWS.XRay.Types.UnprocessedTraceSegment
import Network.AWS.XRay.Types.ValueWithServiceIds

-- | API version @2016-04-12@ of the Amazon X-Ray SDK configuration.
xRay :: Service
xRay =
  Service
    { _svcAbbrev = "XRay",
      _svcSigner = v4,
      _svcPrefix = "xray",
      _svcVersion = "2016-04-12",
      _svcEndpoint = defaultEndpoint xRay,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "XRay",
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

-- | You have reached the maximum number of sampling rules.
_RuleLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_RuleLimitExceededException =
  _MatchServiceError
    xRay
    "RuleLimitExceededException"

-- | You have exceeded the maximum number of tags you can apply to this resource.
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException =
  _MatchServiceError xRay "TooManyTagsException"
    . hasStatus 400

-- | The request exceeds the maximum number of requests per second.
_ThrottledException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottledException =
  _MatchServiceError xRay "ThrottledException"
    . hasStatus 429

-- | The request is missing required parameters or has invalid parameters.
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException =
  _MatchServiceError xRay "InvalidRequestException"

-- | The resource was not found. Verify that the name or Amazon Resource Name (ARN) of the resource is correct.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError xRay "ResourceNotFoundException"
    . hasStatus 404
