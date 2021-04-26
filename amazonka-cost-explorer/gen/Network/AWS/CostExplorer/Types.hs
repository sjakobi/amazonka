{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ServiceQuotaExceededException,
    _RequestChangedException,
    _UnknownSubscriptionException,
    _UnknownMonitorException,
    _DataUnavailableException,
    _InvalidNextTokenException,
    _BillExpirationException,
    _UnresolvableUsageUnitException,
    _LimitExceededException,
    _ResourceNotFoundException,

    -- * AccountScope
    AccountScope (..),

    -- * AnomalyFeedbackType
    AnomalyFeedbackType (..),

    -- * AnomalySubscriptionFrequency
    AnomalySubscriptionFrequency (..),

    -- * Context
    Context (..),

    -- * CostCategoryRuleVersion
    CostCategoryRuleVersion (..),

    -- * CostCategoryStatus
    CostCategoryStatus (..),

    -- * CostCategoryStatusComponent
    CostCategoryStatusComponent (..),

    -- * Dimension
    Dimension (..),

    -- * Granularity
    Granularity (..),

    -- * GroupDefinitionType
    GroupDefinitionType (..),

    -- * LookbackPeriodInDays
    LookbackPeriodInDays (..),

    -- * MatchOption
    MatchOption (..),

    -- * Metric
    Metric (..),

    -- * MonitorDimension
    MonitorDimension (..),

    -- * MonitorType
    MonitorType (..),

    -- * NumericOperator
    NumericOperator (..),

    -- * OfferingClass
    OfferingClass (..),

    -- * PaymentOption
    PaymentOption (..),

    -- * RecommendationTarget
    RecommendationTarget (..),

    -- * RightsizingType
    RightsizingType (..),

    -- * SavingsPlansDataType
    SavingsPlansDataType (..),

    -- * SortOrder
    SortOrder (..),

    -- * SubscriberStatus
    SubscriberStatus (..),

    -- * SubscriberType
    SubscriberType (..),

    -- * SupportedSavingsPlansType
    SupportedSavingsPlansType (..),

    -- * TermInYears
    TermInYears (..),

    -- * Anomaly
    Anomaly (..),
    newAnomaly,

    -- * AnomalyDateInterval
    AnomalyDateInterval (..),
    newAnomalyDateInterval,

    -- * AnomalyMonitor
    AnomalyMonitor (..),
    newAnomalyMonitor,

    -- * AnomalyScore
    AnomalyScore (..),
    newAnomalyScore,

    -- * AnomalySubscription
    AnomalySubscription (..),
    newAnomalySubscription,

    -- * CostCategory
    CostCategory (..),
    newCostCategory,

    -- * CostCategoryProcessingStatus
    CostCategoryProcessingStatus (..),
    newCostCategoryProcessingStatus,

    -- * CostCategoryReference
    CostCategoryReference (..),
    newCostCategoryReference,

    -- * CostCategoryRule
    CostCategoryRule (..),
    newCostCategoryRule,

    -- * CostCategoryValues
    CostCategoryValues (..),
    newCostCategoryValues,

    -- * Coverage
    Coverage (..),
    newCoverage,

    -- * CoverageByTime
    CoverageByTime (..),
    newCoverageByTime,

    -- * CoverageCost
    CoverageCost (..),
    newCoverageCost,

    -- * CoverageHours
    CoverageHours (..),
    newCoverageHours,

    -- * CoverageNormalizedUnits
    CoverageNormalizedUnits (..),
    newCoverageNormalizedUnits,

    -- * CurrentInstance
    CurrentInstance (..),
    newCurrentInstance,

    -- * DateInterval
    DateInterval (..),
    newDateInterval,

    -- * DimensionValues
    DimensionValues (..),
    newDimensionValues,

    -- * DimensionValuesWithAttributes
    DimensionValuesWithAttributes (..),
    newDimensionValuesWithAttributes,

    -- * EBSResourceUtilization
    EBSResourceUtilization (..),
    newEBSResourceUtilization,

    -- * EC2InstanceDetails
    EC2InstanceDetails (..),
    newEC2InstanceDetails,

    -- * EC2ResourceDetails
    EC2ResourceDetails (..),
    newEC2ResourceDetails,

    -- * EC2ResourceUtilization
    EC2ResourceUtilization (..),
    newEC2ResourceUtilization,

    -- * EC2Specification
    EC2Specification (..),
    newEC2Specification,

    -- * ESInstanceDetails
    ESInstanceDetails (..),
    newESInstanceDetails,

    -- * ElastiCacheInstanceDetails
    ElastiCacheInstanceDetails (..),
    newElastiCacheInstanceDetails,

    -- * Expression
    Expression (..),
    newExpression,

    -- * ForecastResult
    ForecastResult (..),
    newForecastResult,

    -- * Group
    Group (..),
    newGroup,

    -- * GroupDefinition
    GroupDefinition (..),
    newGroupDefinition,

    -- * Impact
    Impact (..),
    newImpact,

    -- * InstanceDetails
    InstanceDetails (..),
    newInstanceDetails,

    -- * MetricValue
    MetricValue (..),
    newMetricValue,

    -- * ModifyRecommendationDetail
    ModifyRecommendationDetail (..),
    newModifyRecommendationDetail,

    -- * RDSInstanceDetails
    RDSInstanceDetails (..),
    newRDSInstanceDetails,

    -- * RedshiftInstanceDetails
    RedshiftInstanceDetails (..),
    newRedshiftInstanceDetails,

    -- * ReservationAggregates
    ReservationAggregates (..),
    newReservationAggregates,

    -- * ReservationCoverageGroup
    ReservationCoverageGroup (..),
    newReservationCoverageGroup,

    -- * ReservationPurchaseRecommendation
    ReservationPurchaseRecommendation (..),
    newReservationPurchaseRecommendation,

    -- * ReservationPurchaseRecommendationDetail
    ReservationPurchaseRecommendationDetail (..),
    newReservationPurchaseRecommendationDetail,

    -- * ReservationPurchaseRecommendationMetadata
    ReservationPurchaseRecommendationMetadata (..),
    newReservationPurchaseRecommendationMetadata,

    -- * ReservationPurchaseRecommendationSummary
    ReservationPurchaseRecommendationSummary (..),
    newReservationPurchaseRecommendationSummary,

    -- * ReservationUtilizationGroup
    ReservationUtilizationGroup (..),
    newReservationUtilizationGroup,

    -- * ResourceDetails
    ResourceDetails (..),
    newResourceDetails,

    -- * ResourceUtilization
    ResourceUtilization (..),
    newResourceUtilization,

    -- * ResultByTime
    ResultByTime (..),
    newResultByTime,

    -- * RightsizingRecommendation
    RightsizingRecommendation (..),
    newRightsizingRecommendation,

    -- * RightsizingRecommendationConfiguration
    RightsizingRecommendationConfiguration (..),
    newRightsizingRecommendationConfiguration,

    -- * RightsizingRecommendationMetadata
    RightsizingRecommendationMetadata (..),
    newRightsizingRecommendationMetadata,

    -- * RightsizingRecommendationSummary
    RightsizingRecommendationSummary (..),
    newRightsizingRecommendationSummary,

    -- * RootCause
    RootCause (..),
    newRootCause,

    -- * SavingsPlansAmortizedCommitment
    SavingsPlansAmortizedCommitment (..),
    newSavingsPlansAmortizedCommitment,

    -- * SavingsPlansCoverage
    SavingsPlansCoverage (..),
    newSavingsPlansCoverage,

    -- * SavingsPlansCoverageData
    SavingsPlansCoverageData (..),
    newSavingsPlansCoverageData,

    -- * SavingsPlansDetails
    SavingsPlansDetails (..),
    newSavingsPlansDetails,

    -- * SavingsPlansPurchaseRecommendation
    SavingsPlansPurchaseRecommendation (..),
    newSavingsPlansPurchaseRecommendation,

    -- * SavingsPlansPurchaseRecommendationDetail
    SavingsPlansPurchaseRecommendationDetail (..),
    newSavingsPlansPurchaseRecommendationDetail,

    -- * SavingsPlansPurchaseRecommendationMetadata
    SavingsPlansPurchaseRecommendationMetadata (..),
    newSavingsPlansPurchaseRecommendationMetadata,

    -- * SavingsPlansPurchaseRecommendationSummary
    SavingsPlansPurchaseRecommendationSummary (..),
    newSavingsPlansPurchaseRecommendationSummary,

    -- * SavingsPlansSavings
    SavingsPlansSavings (..),
    newSavingsPlansSavings,

    -- * SavingsPlansUtilization
    SavingsPlansUtilization (..),
    newSavingsPlansUtilization,

    -- * SavingsPlansUtilizationAggregates
    SavingsPlansUtilizationAggregates (..),
    newSavingsPlansUtilizationAggregates,

    -- * SavingsPlansUtilizationByTime
    SavingsPlansUtilizationByTime (..),
    newSavingsPlansUtilizationByTime,

    -- * SavingsPlansUtilizationDetail
    SavingsPlansUtilizationDetail (..),
    newSavingsPlansUtilizationDetail,

    -- * ServiceSpecification
    ServiceSpecification (..),
    newServiceSpecification,

    -- * SortDefinition
    SortDefinition (..),
    newSortDefinition,

    -- * Subscriber
    Subscriber (..),
    newSubscriber,

    -- * TagValues
    TagValues (..),
    newTagValues,

    -- * TargetInstance
    TargetInstance (..),
    newTargetInstance,

    -- * TerminateRecommendationDetail
    TerminateRecommendationDetail (..),
    newTerminateRecommendationDetail,

    -- * TotalImpactFilter
    TotalImpactFilter (..),
    newTotalImpactFilter,

    -- * UtilizationByTime
    UtilizationByTime (..),
    newUtilizationByTime,
  )
where

import Network.AWS.CostExplorer.Types.AccountScope
import Network.AWS.CostExplorer.Types.Anomaly
import Network.AWS.CostExplorer.Types.AnomalyDateInterval
import Network.AWS.CostExplorer.Types.AnomalyFeedbackType
import Network.AWS.CostExplorer.Types.AnomalyMonitor
import Network.AWS.CostExplorer.Types.AnomalyScore
import Network.AWS.CostExplorer.Types.AnomalySubscription
import Network.AWS.CostExplorer.Types.AnomalySubscriptionFrequency
import Network.AWS.CostExplorer.Types.Context
import Network.AWS.CostExplorer.Types.CostCategory
import Network.AWS.CostExplorer.Types.CostCategoryProcessingStatus
import Network.AWS.CostExplorer.Types.CostCategoryReference
import Network.AWS.CostExplorer.Types.CostCategoryRule
import Network.AWS.CostExplorer.Types.CostCategoryRuleVersion
import Network.AWS.CostExplorer.Types.CostCategoryStatus
import Network.AWS.CostExplorer.Types.CostCategoryStatusComponent
import Network.AWS.CostExplorer.Types.CostCategoryValues
import Network.AWS.CostExplorer.Types.Coverage
import Network.AWS.CostExplorer.Types.CoverageByTime
import Network.AWS.CostExplorer.Types.CoverageCost
import Network.AWS.CostExplorer.Types.CoverageHours
import Network.AWS.CostExplorer.Types.CoverageNormalizedUnits
import Network.AWS.CostExplorer.Types.CurrentInstance
import Network.AWS.CostExplorer.Types.DateInterval
import Network.AWS.CostExplorer.Types.Dimension
import Network.AWS.CostExplorer.Types.DimensionValues
import Network.AWS.CostExplorer.Types.DimensionValuesWithAttributes
import Network.AWS.CostExplorer.Types.EBSResourceUtilization
import Network.AWS.CostExplorer.Types.EC2InstanceDetails
import Network.AWS.CostExplorer.Types.EC2ResourceDetails
import Network.AWS.CostExplorer.Types.EC2ResourceUtilization
import Network.AWS.CostExplorer.Types.EC2Specification
import Network.AWS.CostExplorer.Types.ESInstanceDetails
import Network.AWS.CostExplorer.Types.ElastiCacheInstanceDetails
import Network.AWS.CostExplorer.Types.Expression
import Network.AWS.CostExplorer.Types.ForecastResult
import Network.AWS.CostExplorer.Types.Granularity
import Network.AWS.CostExplorer.Types.Group
import Network.AWS.CostExplorer.Types.GroupDefinition
import Network.AWS.CostExplorer.Types.GroupDefinitionType
import Network.AWS.CostExplorer.Types.Impact
import Network.AWS.CostExplorer.Types.InstanceDetails
import Network.AWS.CostExplorer.Types.LookbackPeriodInDays
import Network.AWS.CostExplorer.Types.MatchOption
import Network.AWS.CostExplorer.Types.Metric
import Network.AWS.CostExplorer.Types.MetricValue
import Network.AWS.CostExplorer.Types.ModifyRecommendationDetail
import Network.AWS.CostExplorer.Types.MonitorDimension
import Network.AWS.CostExplorer.Types.MonitorType
import Network.AWS.CostExplorer.Types.NumericOperator
import Network.AWS.CostExplorer.Types.OfferingClass
import Network.AWS.CostExplorer.Types.PaymentOption
import Network.AWS.CostExplorer.Types.RDSInstanceDetails
import Network.AWS.CostExplorer.Types.RecommendationTarget
import Network.AWS.CostExplorer.Types.RedshiftInstanceDetails
import Network.AWS.CostExplorer.Types.ReservationAggregates
import Network.AWS.CostExplorer.Types.ReservationCoverageGroup
import Network.AWS.CostExplorer.Types.ReservationPurchaseRecommendation
import Network.AWS.CostExplorer.Types.ReservationPurchaseRecommendationDetail
import Network.AWS.CostExplorer.Types.ReservationPurchaseRecommendationMetadata
import Network.AWS.CostExplorer.Types.ReservationPurchaseRecommendationSummary
import Network.AWS.CostExplorer.Types.ReservationUtilizationGroup
import Network.AWS.CostExplorer.Types.ResourceDetails
import Network.AWS.CostExplorer.Types.ResourceUtilization
import Network.AWS.CostExplorer.Types.ResultByTime
import Network.AWS.CostExplorer.Types.RightsizingRecommendation
import Network.AWS.CostExplorer.Types.RightsizingRecommendationConfiguration
import Network.AWS.CostExplorer.Types.RightsizingRecommendationMetadata
import Network.AWS.CostExplorer.Types.RightsizingRecommendationSummary
import Network.AWS.CostExplorer.Types.RightsizingType
import Network.AWS.CostExplorer.Types.RootCause
import Network.AWS.CostExplorer.Types.SavingsPlansAmortizedCommitment
import Network.AWS.CostExplorer.Types.SavingsPlansCoverage
import Network.AWS.CostExplorer.Types.SavingsPlansCoverageData
import Network.AWS.CostExplorer.Types.SavingsPlansDataType
import Network.AWS.CostExplorer.Types.SavingsPlansDetails
import Network.AWS.CostExplorer.Types.SavingsPlansPurchaseRecommendation
import Network.AWS.CostExplorer.Types.SavingsPlansPurchaseRecommendationDetail
import Network.AWS.CostExplorer.Types.SavingsPlansPurchaseRecommendationMetadata
import Network.AWS.CostExplorer.Types.SavingsPlansPurchaseRecommendationSummary
import Network.AWS.CostExplorer.Types.SavingsPlansSavings
import Network.AWS.CostExplorer.Types.SavingsPlansUtilization
import Network.AWS.CostExplorer.Types.SavingsPlansUtilizationAggregates
import Network.AWS.CostExplorer.Types.SavingsPlansUtilizationByTime
import Network.AWS.CostExplorer.Types.SavingsPlansUtilizationDetail
import Network.AWS.CostExplorer.Types.ServiceSpecification
import Network.AWS.CostExplorer.Types.SortDefinition
import Network.AWS.CostExplorer.Types.SortOrder
import Network.AWS.CostExplorer.Types.Subscriber
import Network.AWS.CostExplorer.Types.SubscriberStatus
import Network.AWS.CostExplorer.Types.SubscriberType
import Network.AWS.CostExplorer.Types.SupportedSavingsPlansType
import Network.AWS.CostExplorer.Types.TagValues
import Network.AWS.CostExplorer.Types.TargetInstance
import Network.AWS.CostExplorer.Types.TermInYears
import Network.AWS.CostExplorer.Types.TerminateRecommendationDetail
import Network.AWS.CostExplorer.Types.TotalImpactFilter
import Network.AWS.CostExplorer.Types.UtilizationByTime
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-10-25@ of the Amazon Cost Explorer Service SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "CostExplorer",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "ce",
      Prelude._svcVersion = "2017-10-25",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "CostExplorer",
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

-- | You\'ve reached the limit on the number of resources you can create, or
-- exceeded the size of an individual resource.
_ServiceQuotaExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceQuotaExceededException =
  Prelude._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"

-- | Your request parameters changed between pages. Try again with the old
-- parameters or without a pagination token.
_RequestChangedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RequestChangedException =
  Prelude._MatchServiceError
    defaultService
    "RequestChangedException"

-- | The cost anomaly subscription does not exist for the account.
_UnknownSubscriptionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnknownSubscriptionException =
  Prelude._MatchServiceError
    defaultService
    "UnknownSubscriptionException"

-- | The cost anomaly monitor does not exist for the account.
_UnknownMonitorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnknownMonitorException =
  Prelude._MatchServiceError
    defaultService
    "UnknownMonitorException"

-- | The requested data is unavailable.
_DataUnavailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DataUnavailableException =
  Prelude._MatchServiceError
    defaultService
    "DataUnavailableException"

-- | The pagination token is invalid. Try again without a pagination token.
_InvalidNextTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNextTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidNextTokenException"

-- | The requested report expired. Update the date interval and try again.
_BillExpirationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BillExpirationException =
  Prelude._MatchServiceError
    defaultService
    "BillExpirationException"

-- | Cost Explorer was unable to identify the usage unit. Provide
-- @UsageType\/UsageTypeGroup@ filter selections that contain matching
-- units, for example: @hours@.
_UnresolvableUsageUnitException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnresolvableUsageUnitException =
  Prelude._MatchServiceError
    defaultService
    "UnresolvableUsageUnitException"

-- | You made too many calls in a short period of time. Try again later.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | The specified ARN in the request doesn\'t exist.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"
