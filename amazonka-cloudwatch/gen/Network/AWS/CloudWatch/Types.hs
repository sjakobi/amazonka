{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _DashboardNotFoundError,
    _LimitExceededFault,
    _InvalidParameterCombinationException,
    _MissingRequiredParameterException,
    _DashboardInvalidInputError,
    _InternalServiceFault,
    _ConcurrentModificationException,
    _InvalidParameterValueException,
    _LimitExceededException,
    _ResourceNotFound,
    _ResourceNotFoundException,
    _InvalidFormatFault,
    _InvalidNextToken,

    -- * AlarmType
    AlarmType (..),

    -- * AnomalyDetectorStateValue
    AnomalyDetectorStateValue (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * HistoryItemType
    HistoryItemType (..),

    -- * RecentlyActive
    RecentlyActive (..),

    -- * ScanBy
    ScanBy (..),

    -- * StandardUnit
    StandardUnit (..),

    -- * StateValue
    StateValue (..),

    -- * Statistic
    Statistic (..),

    -- * StatusCode
    StatusCode (..),

    -- * AlarmHistoryItem
    AlarmHistoryItem (..),
    newAlarmHistoryItem,

    -- * AnomalyDetector
    AnomalyDetector (..),
    newAnomalyDetector,

    -- * AnomalyDetectorConfiguration
    AnomalyDetectorConfiguration (..),
    newAnomalyDetectorConfiguration,

    -- * CompositeAlarm
    CompositeAlarm (..),
    newCompositeAlarm,

    -- * DashboardEntry
    DashboardEntry (..),
    newDashboardEntry,

    -- * DashboardValidationMessage
    DashboardValidationMessage (..),
    newDashboardValidationMessage,

    -- * Datapoint
    Datapoint (..),
    newDatapoint,

    -- * Dimension
    Dimension (..),
    newDimension,

    -- * DimensionFilter
    DimensionFilter (..),
    newDimensionFilter,

    -- * InsightRule
    InsightRule (..),
    newInsightRule,

    -- * InsightRuleContributor
    InsightRuleContributor (..),
    newInsightRuleContributor,

    -- * InsightRuleContributorDatapoint
    InsightRuleContributorDatapoint (..),
    newInsightRuleContributorDatapoint,

    -- * InsightRuleMetricDatapoint
    InsightRuleMetricDatapoint (..),
    newInsightRuleMetricDatapoint,

    -- * LabelOptions
    LabelOptions (..),
    newLabelOptions,

    -- * MessageData
    MessageData (..),
    newMessageData,

    -- * Metric
    Metric (..),
    newMetric,

    -- * MetricAlarm
    MetricAlarm (..),
    newMetricAlarm,

    -- * MetricDataQuery
    MetricDataQuery (..),
    newMetricDataQuery,

    -- * MetricDataResult
    MetricDataResult (..),
    newMetricDataResult,

    -- * MetricDatum
    MetricDatum (..),
    newMetricDatum,

    -- * MetricStat
    MetricStat (..),
    newMetricStat,

    -- * PartialFailure
    PartialFailure (..),
    newPartialFailure,

    -- * Range
    Range (..),
    newRange,

    -- * StatisticSet
    StatisticSet (..),
    newStatisticSet,

    -- * Tag
    Tag (..),
    newTag,
  )
where

import Network.AWS.CloudWatch.Types.AlarmHistoryItem
import Network.AWS.CloudWatch.Types.AlarmType
import Network.AWS.CloudWatch.Types.AnomalyDetector
import Network.AWS.CloudWatch.Types.AnomalyDetectorConfiguration
import Network.AWS.CloudWatch.Types.AnomalyDetectorStateValue
import Network.AWS.CloudWatch.Types.ComparisonOperator
import Network.AWS.CloudWatch.Types.CompositeAlarm
import Network.AWS.CloudWatch.Types.DashboardEntry
import Network.AWS.CloudWatch.Types.DashboardValidationMessage
import Network.AWS.CloudWatch.Types.Datapoint
import Network.AWS.CloudWatch.Types.Dimension
import Network.AWS.CloudWatch.Types.DimensionFilter
import Network.AWS.CloudWatch.Types.HistoryItemType
import Network.AWS.CloudWatch.Types.InsightRule
import Network.AWS.CloudWatch.Types.InsightRuleContributor
import Network.AWS.CloudWatch.Types.InsightRuleContributorDatapoint
import Network.AWS.CloudWatch.Types.InsightRuleMetricDatapoint
import Network.AWS.CloudWatch.Types.LabelOptions
import Network.AWS.CloudWatch.Types.MessageData
import Network.AWS.CloudWatch.Types.Metric
import Network.AWS.CloudWatch.Types.MetricAlarm
import Network.AWS.CloudWatch.Types.MetricDataQuery
import Network.AWS.CloudWatch.Types.MetricDataResult
import Network.AWS.CloudWatch.Types.MetricDatum
import Network.AWS.CloudWatch.Types.MetricStat
import Network.AWS.CloudWatch.Types.PartialFailure
import Network.AWS.CloudWatch.Types.Range
import Network.AWS.CloudWatch.Types.RecentlyActive
import Network.AWS.CloudWatch.Types.ScanBy
import Network.AWS.CloudWatch.Types.StandardUnit
import Network.AWS.CloudWatch.Types.StateValue
import Network.AWS.CloudWatch.Types.Statistic
import Network.AWS.CloudWatch.Types.StatisticSet
import Network.AWS.CloudWatch.Types.StatusCode
import Network.AWS.CloudWatch.Types.Tag
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2010-08-01@ of the Amazon CloudWatch SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "CloudWatch",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "monitoring",
      Prelude._svcVersion = "2010-08-01",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseXMLError "CloudWatch",
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

-- | The specified dashboard does not exist.
_DashboardNotFoundError :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DashboardNotFoundError =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The quota for alarms for this customer has already been reached.
_LimitExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededFault =
  Prelude._MatchServiceError
    defaultService
    "LimitExceeded"
    Prelude.. Prelude.hasStatus 400

-- | Parameters were used together that cannot be used together.
_InvalidParameterCombinationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameterCombinationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterCombination"
    Prelude.. Prelude.hasStatus 400

-- | An input parameter that is required is missing.
_MissingRequiredParameterException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MissingRequiredParameterException =
  Prelude._MatchServiceError
    defaultService
    "MissingParameter"
    Prelude.. Prelude.hasStatus 400

-- | Some part of the dashboard data is invalid.
_DashboardInvalidInputError :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DashboardInvalidInputError =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterInput"
    Prelude.. Prelude.hasStatus 400

-- | Request processing has failed due to some unknown error, exception, or
-- failure.
_InternalServiceFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServiceFault =
  Prelude._MatchServiceError
    defaultService
    "InternalServiceError"
    Prelude.. Prelude.hasStatus 500

-- | More than one process tried to modify a resource at the same time.
_ConcurrentModificationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentModificationException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentModificationException"
    Prelude.. Prelude.hasStatus 429

-- | The value of an input parameter is bad or out-of-range.
_InvalidParameterValueException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameterValueException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterValue"
    Prelude.. Prelude.hasStatus 400

-- | The operation exceeded one or more limits.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Prelude.hasStatus 400

-- | The named resource does not exist.
_ResourceNotFound :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFound =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The named resource does not exist.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | Data was not syntactically valid JSON.
_InvalidFormatFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidFormatFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidFormat"
    Prelude.. Prelude.hasStatus 400

-- | The next token specified is invalid.
_InvalidNextToken :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNextToken =
  Prelude._MatchServiceError
    defaultService
    "InvalidNextToken"
    Prelude.. Prelude.hasStatus 400
