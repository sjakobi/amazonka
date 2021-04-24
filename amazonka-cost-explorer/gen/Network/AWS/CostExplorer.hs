{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Cost Explorer API enables you to programmatically query your cost and usage data. You can query for aggregated data such as total monthly costs or total daily usage. You can also query for granular data, such as the number of daily write operations for Amazon DynamoDB database tables in your production environment.
--
--
-- Service Endpoint
--
-- The Cost Explorer API provides the following endpoint:
--
--     * @https://ce.us-east-1.amazonaws.com@
--
--
--
-- For information about costs associated with the Cost Explorer API, see <http://aws.amazon.com/aws-cost-management/pricing/ AWS Cost Management Pricing> .
module Network.AWS.CostExplorer
  ( -- * Service Configuration
    costExplorer,

    -- * Errors
    -- $errors

    -- ** ServiceQuotaExceededException
    _ServiceQuotaExceededException,

    -- ** RequestChangedException
    _RequestChangedException,

    -- ** UnknownSubscriptionException
    _UnknownSubscriptionException,

    -- ** UnknownMonitorException
    _UnknownMonitorException,

    -- ** DataUnavailableException
    _DataUnavailableException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** BillExpirationException
    _BillExpirationException,

    -- ** UnresolvableUsageUnitException
    _UnresolvableUsageUnitException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListCostCategoryDefinitions
    module Network.AWS.CostExplorer.ListCostCategoryDefinitions,

    -- ** GetRightsizingRecommendation
    module Network.AWS.CostExplorer.GetRightsizingRecommendation,

    -- ** GetAnomalySubscriptions
    module Network.AWS.CostExplorer.GetAnomalySubscriptions,

    -- ** GetAnomalies
    module Network.AWS.CostExplorer.GetAnomalies,

    -- ** GetSavingsPlansUtilizationDetails
    module Network.AWS.CostExplorer.GetSavingsPlansUtilizationDetails,

    -- ** GetCostForecast
    module Network.AWS.CostExplorer.GetCostForecast,

    -- ** GetCostAndUsage
    module Network.AWS.CostExplorer.GetCostAndUsage,

    -- ** GetSavingsPlansPurchaseRecommendation
    module Network.AWS.CostExplorer.GetSavingsPlansPurchaseRecommendation,

    -- ** UpdateAnomalySubscription
    module Network.AWS.CostExplorer.UpdateAnomalySubscription,

    -- ** DeleteAnomalySubscription
    module Network.AWS.CostExplorer.DeleteAnomalySubscription,

    -- ** GetReservationCoverage
    module Network.AWS.CostExplorer.GetReservationCoverage,

    -- ** GetUsageForecast
    module Network.AWS.CostExplorer.GetUsageForecast,

    -- ** GetCostAndUsageWithResources
    module Network.AWS.CostExplorer.GetCostAndUsageWithResources,

    -- ** GetTags
    module Network.AWS.CostExplorer.GetTags,

    -- ** DeleteCostCategoryDefinition
    module Network.AWS.CostExplorer.DeleteCostCategoryDefinition,

    -- ** UpdateCostCategoryDefinition
    module Network.AWS.CostExplorer.UpdateCostCategoryDefinition,

    -- ** GetSavingsPlansCoverage
    module Network.AWS.CostExplorer.GetSavingsPlansCoverage,

    -- ** DeleteAnomalyMonitor
    module Network.AWS.CostExplorer.DeleteAnomalyMonitor,

    -- ** GetReservationUtilization
    module Network.AWS.CostExplorer.GetReservationUtilization,

    -- ** GetReservationPurchaseRecommendation
    module Network.AWS.CostExplorer.GetReservationPurchaseRecommendation,

    -- ** UpdateAnomalyMonitor
    module Network.AWS.CostExplorer.UpdateAnomalyMonitor,

    -- ** CreateAnomalyMonitor
    module Network.AWS.CostExplorer.CreateAnomalyMonitor,

    -- ** GetDimensionValues
    module Network.AWS.CostExplorer.GetDimensionValues,

    -- ** CreateAnomalySubscription
    module Network.AWS.CostExplorer.CreateAnomalySubscription,

    -- ** DescribeCostCategoryDefinition
    module Network.AWS.CostExplorer.DescribeCostCategoryDefinition,

    -- ** GetCostCategories
    module Network.AWS.CostExplorer.GetCostCategories,

    -- ** GetSavingsPlansUtilization
    module Network.AWS.CostExplorer.GetSavingsPlansUtilization,

    -- ** ProvideAnomalyFeedback
    module Network.AWS.CostExplorer.ProvideAnomalyFeedback,

    -- ** GetAnomalyMonitors
    module Network.AWS.CostExplorer.GetAnomalyMonitors,

    -- ** CreateCostCategoryDefinition
    module Network.AWS.CostExplorer.CreateCostCategoryDefinition,

    -- * Types

    -- ** AccountScope
    AccountScope (..),

    -- ** AnomalyFeedbackType
    AnomalyFeedbackType (..),

    -- ** AnomalySubscriptionFrequency
    AnomalySubscriptionFrequency (..),

    -- ** Context
    Context (..),

    -- ** CostCategoryRuleVersion
    CostCategoryRuleVersion (..),

    -- ** CostCategoryStatus
    CostCategoryStatus (..),

    -- ** CostCategoryStatusComponent
    CostCategoryStatusComponent (..),

    -- ** Dimension
    Dimension (..),

    -- ** Granularity
    Granularity (..),

    -- ** GroupDefinitionType
    GroupDefinitionType (..),

    -- ** LookbackPeriodInDays
    LookbackPeriodInDays (..),

    -- ** MatchOption
    MatchOption (..),

    -- ** Metric
    Metric (..),

    -- ** MonitorDimension
    MonitorDimension (..),

    -- ** MonitorType
    MonitorType (..),

    -- ** NumericOperator
    NumericOperator (..),

    -- ** OfferingClass
    OfferingClass (..),

    -- ** PaymentOption
    PaymentOption (..),

    -- ** RecommendationTarget
    RecommendationTarget (..),

    -- ** RightsizingType
    RightsizingType (..),

    -- ** SavingsPlansDataType
    SavingsPlansDataType (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** SubscriberStatus
    SubscriberStatus (..),

    -- ** SubscriberType
    SubscriberType (..),

    -- ** SupportedSavingsPlansType
    SupportedSavingsPlansType (..),

    -- ** TermInYears
    TermInYears (..),

    -- ** Anomaly
    Anomaly,
    anomaly,
    aDimensionValue,
    aRootCauses,
    aFeedback,
    aAnomalyStartDate,
    aAnomalyEndDate,
    aAnomalyId,
    aAnomalyScore,
    aImpact,
    aMonitorARN,

    -- ** AnomalyDateInterval
    AnomalyDateInterval,
    anomalyDateInterval,
    adiEndDate,
    adiStartDate,

    -- ** AnomalyMonitor
    AnomalyMonitor,
    anomalyMonitor,
    amLastEvaluatedDate,
    amMonitorSpecification,
    amLastUpdatedDate,
    amCreationDate,
    amDimensionalValueCount,
    amMonitorDimension,
    amMonitorARN,
    amMonitorName,
    amMonitorType,

    -- ** AnomalyScore
    AnomalyScore,
    anomalyScore,
    asMaxScore,
    asCurrentScore,

    -- ** AnomalySubscription
    AnomalySubscription,
    anomalySubscription,
    asAccountId,
    asSubscriptionARN,
    asMonitorARNList,
    asSubscribers,
    asThreshold,
    asFrequency,
    asSubscriptionName,

    -- ** CostCategory
    CostCategory,
    costCategory,
    ccProcessingStatus,
    ccEffectiveEnd,
    ccCostCategoryARN,
    ccEffectiveStart,
    ccName,
    ccRuleVersion,
    ccRules,

    -- ** CostCategoryProcessingStatus
    CostCategoryProcessingStatus,
    costCategoryProcessingStatus,
    ccpsStatus,
    ccpsComponent,

    -- ** CostCategoryReference
    CostCategoryReference,
    costCategoryReference,
    ccrNumberOfRules,
    ccrCostCategoryARN,
    ccrValues,
    ccrProcessingStatus,
    ccrName,
    ccrEffectiveStart,
    ccrEffectiveEnd,

    -- ** CostCategoryRule
    CostCategoryRule,
    costCategoryRule,
    ccrValue,
    ccrRule,

    -- ** CostCategoryValues
    CostCategoryValues,
    costCategoryValues,
    ccvKey,
    ccvValues,
    ccvMatchOptions,

    -- ** Coverage
    Coverage,
    coverage,
    cCoverageCost,
    cCoverageHours,
    cCoverageNormalizedUnits,

    -- ** CoverageByTime
    CoverageByTime,
    coverageByTime,
    cbtGroups,
    cbtTimePeriod,
    cbtTotal,

    -- ** CoverageCost
    CoverageCost,
    coverageCost,
    ccOnDemandCost,

    -- ** CoverageHours
    CoverageHours,
    coverageHours,
    chReservedHours,
    chTotalRunningHours,
    chOnDemandHours,
    chCoverageHoursPercentage,

    -- ** CoverageNormalizedUnits
    CoverageNormalizedUnits,
    coverageNormalizedUnits,
    cnuOnDemandNormalizedUnits,
    cnuCoverageNormalizedUnitsPercentage,
    cnuTotalRunningNormalizedUnits,
    cnuReservedNormalizedUnits,

    -- ** CurrentInstance
    CurrentInstance,
    currentInstance,
    ciResourceId,
    ciInstanceName,
    ciSavingsPlansCoveredHoursInLookbackPeriod,
    ciOnDemandHoursInLookbackPeriod,
    ciCurrencyCode,
    ciTags,
    ciReservationCoveredHoursInLookbackPeriod,
    ciMonthlyCost,
    ciResourceUtilization,
    ciResourceDetails,
    ciTotalRunningHoursInLookbackPeriod,

    -- ** DateInterval
    DateInterval,
    dateInterval,
    diStart,
    diEnd,

    -- ** DimensionValues
    DimensionValues,
    dimensionValues,
    dvKey,
    dvValues,
    dvMatchOptions,

    -- ** DimensionValuesWithAttributes
    DimensionValuesWithAttributes,
    dimensionValuesWithAttributes,
    dvwaAttributes,
    dvwaValue,

    -- ** EBSResourceUtilization
    EBSResourceUtilization,
    ebsResourceUtilization,
    eruEBSWriteBytesPerSecond,
    eruEBSReadOpsPerSecond,
    eruEBSWriteOpsPerSecond,
    eruEBSReadBytesPerSecond,

    -- ** EC2InstanceDetails
    EC2InstanceDetails,
    ec2InstanceDetails,
    eidPlatform,
    eidInstanceType,
    eidTenancy,
    eidCurrentGeneration,
    eidSizeFlexEligible,
    eidAvailabilityZone,
    eidFamily,
    eidRegion,

    -- ** EC2ResourceDetails
    EC2ResourceDetails,
    ec2ResourceDetails,
    erdPlatform,
    erdInstanceType,
    erdMemory,
    erdVcpu,
    erdHourlyOnDemandRate,
    erdStorage,
    erdNetworkPerformance,
    erdRegion,
    erdSku,

    -- ** EC2ResourceUtilization
    EC2ResourceUtilization,
    ec2ResourceUtilization,
    eruMaxStorageUtilizationPercentage,
    eruMaxMemoryUtilizationPercentage,
    eruEBSResourceUtilization,
    eruMaxCPUUtilizationPercentage,

    -- ** EC2Specification
    EC2Specification,
    ec2Specification,
    esOfferingClass,

    -- ** ESInstanceDetails
    ESInstanceDetails,
    eSInstanceDetails,
    esidInstanceClass,
    esidCurrentGeneration,
    esidSizeFlexEligible,
    esidInstanceSize,
    esidRegion,

    -- ** ElastiCacheInstanceDetails
    ElastiCacheInstanceDetails,
    elastiCacheInstanceDetails,
    ecidCurrentGeneration,
    ecidSizeFlexEligible,
    ecidFamily,
    ecidNodeType,
    ecidRegion,
    ecidProductDescription,

    -- ** Expression
    Expression,
    expression,
    eNot,
    eOr,
    eCostCategories,
    eTags,
    eAnd,
    eDimensions,

    -- ** ForecastResult
    ForecastResult,
    forecastResult,
    frMeanValue,
    frTimePeriod,
    frPredictionIntervalLowerBound,
    frPredictionIntervalUpperBound,

    -- ** Group
    Group,
    group',
    gMetrics,
    gKeys,

    -- ** GroupDefinition
    GroupDefinition,
    groupDefinition,
    gdKey,
    gdType,

    -- ** Impact
    Impact,
    impact,
    iTotalImpact,
    iMaxImpact,

    -- ** InstanceDetails
    InstanceDetails,
    instanceDetails,
    idElastiCacheInstanceDetails,
    idRedshiftInstanceDetails,
    idESInstanceDetails,
    idEC2InstanceDetails,
    idRDSInstanceDetails,

    -- ** MetricValue
    MetricValue,
    metricValue,
    mvAmount,
    mvUnit,

    -- ** ModifyRecommendationDetail
    ModifyRecommendationDetail,
    modifyRecommendationDetail,
    mrdTargetInstances,

    -- ** RDSInstanceDetails
    RDSInstanceDetails,
    rdsInstanceDetails,
    rdsidInstanceType,
    rdsidDatabaseEdition,
    rdsidDeploymentOption,
    rdsidCurrentGeneration,
    rdsidSizeFlexEligible,
    rdsidLicenseModel,
    rdsidFamily,
    rdsidDatabaseEngine,
    rdsidRegion,

    -- ** RedshiftInstanceDetails
    RedshiftInstanceDetails,
    redshiftInstanceDetails,
    ridCurrentGeneration,
    ridSizeFlexEligible,
    ridFamily,
    ridNodeType,
    ridRegion,

    -- ** ReservationAggregates
    ReservationAggregates,
    reservationAggregates,
    raUnusedHours,
    raRealizedSavings,
    raTotalActualHours,
    raPurchasedHours,
    raUnrealizedSavings,
    raOnDemandCostOfRIHoursUsed,
    raAmortizedRecurringFee,
    raRICostForUnusedHours,
    raUnusedUnits,
    raTotalActualUnits,
    raTotalPotentialRISavings,
    raNetRISavings,
    raTotalAmortizedFee,
    raUtilizationPercentageInUnits,
    raAmortizedUpfrontFee,
    raUtilizationPercentage,
    raPurchasedUnits,

    -- ** ReservationCoverageGroup
    ReservationCoverageGroup,
    reservationCoverageGroup,
    rcgAttributes,
    rcgCoverage,

    -- ** ReservationPurchaseRecommendation
    ReservationPurchaseRecommendation,
    reservationPurchaseRecommendation,
    rprPaymentOption,
    rprAccountScope,
    rprRecommendationDetails,
    rprServiceSpecification,
    rprTermInYears,
    rprRecommendationSummary,
    rprLookbackPeriodInDays,

    -- ** ReservationPurchaseRecommendationDetail
    ReservationPurchaseRecommendationDetail,
    reservationPurchaseRecommendationDetail,
    rprdUpfrontCost,
    rprdAccountId,
    rprdEstimatedMonthlySavingsAmount,
    rprdRecurringStandardMonthlyCost,
    rprdRecommendedNormalizedUnitsToPurchase,
    rprdAverageUtilization,
    rprdAverageNumberOfInstancesUsedPerHour,
    rprdEstimatedReservationCostForLookbackPeriod,
    rprdInstanceDetails,
    rprdMaximumNumberOfInstancesUsedPerHour,
    rprdRecommendedNumberOfInstancesToPurchase,
    rprdCurrencyCode,
    rprdMinimumNormalizedUnitsUsedPerHour,
    rprdAverageNormalizedUnitsUsedPerHour,
    rprdMaximumNormalizedUnitsUsedPerHour,
    rprdEstimatedBreakEvenInMonths,
    rprdMinimumNumberOfInstancesUsedPerHour,
    rprdEstimatedMonthlySavingsPercentage,
    rprdEstimatedMonthlyOnDemandCost,

    -- ** ReservationPurchaseRecommendationMetadata
    ReservationPurchaseRecommendationMetadata,
    reservationPurchaseRecommendationMetadata,
    rprmRecommendationId,
    rprmGenerationTimestamp,

    -- ** ReservationPurchaseRecommendationSummary
    ReservationPurchaseRecommendationSummary,
    reservationPurchaseRecommendationSummary,
    rprsTotalEstimatedMonthlySavingsAmount,
    rprsCurrencyCode,
    rprsTotalEstimatedMonthlySavingsPercentage,

    -- ** ReservationUtilizationGroup
    ReservationUtilizationGroup,
    reservationUtilizationGroup,
    rugKey,
    rugUtilization,
    rugAttributes,
    rugValue,

    -- ** ResourceDetails
    ResourceDetails,
    resourceDetails,
    rdEC2ResourceDetails,

    -- ** ResourceUtilization
    ResourceUtilization,
    resourceUtilization,
    ruEC2ResourceUtilization,

    -- ** ResultByTime
    ResultByTime,
    resultByTime,
    rbtGroups,
    rbtTimePeriod,
    rbtEstimated,
    rbtTotal,

    -- ** RightsizingRecommendation
    RightsizingRecommendation,
    rightsizingRecommendation,
    rrAccountId,
    rrTerminateRecommendationDetail,
    rrRightsizingType,
    rrCurrentInstance,
    rrModifyRecommendationDetail,

    -- ** RightsizingRecommendationConfiguration
    RightsizingRecommendationConfiguration,
    rightsizingRecommendationConfiguration,
    rrcRecommendationTarget,
    rrcBenefitsConsidered,

    -- ** RightsizingRecommendationMetadata
    RightsizingRecommendationMetadata,
    rightsizingRecommendationMetadata,
    rrmRecommendationId,
    rrmAdditionalMetadata,
    rrmLookbackPeriodInDays,
    rrmGenerationTimestamp,

    -- ** RightsizingRecommendationSummary
    RightsizingRecommendationSummary,
    rightsizingRecommendationSummary,
    rrsEstimatedTotalMonthlySavingsAmount,
    rrsSavingsPercentage,
    rrsTotalRecommendationCount,
    rrsSavingsCurrencyCode,

    -- ** RootCause
    RootCause,
    rootCause,
    rcService,
    rcUsageType,
    rcLinkedAccount,
    rcRegion,

    -- ** SavingsPlansAmortizedCommitment
    SavingsPlansAmortizedCommitment,
    savingsPlansAmortizedCommitment,
    spacAmortizedUpfrontCommitment,
    spacAmortizedRecurringCommitment,
    spacTotalAmortizedCommitment,

    -- ** SavingsPlansCoverage
    SavingsPlansCoverage,
    savingsPlansCoverage,
    spcTimePeriod,
    spcAttributes,
    spcCoverage,

    -- ** SavingsPlansCoverageData
    SavingsPlansCoverageData,
    savingsPlansCoverageData,
    spcdTotalCost,
    spcdCoveragePercentage,
    spcdSpendCoveredBySavingsPlans,
    spcdOnDemandCost,

    -- ** SavingsPlansDetails
    SavingsPlansDetails,
    savingsPlansDetails,
    spdInstanceFamily,
    spdOfferingId,
    spdRegion,

    -- ** SavingsPlansPurchaseRecommendation
    SavingsPlansPurchaseRecommendation,
    savingsPlansPurchaseRecommendation,
    spprPaymentOption,
    spprSavingsPlansPurchaseRecommendationSummary,
    spprAccountScope,
    spprTermInYears,
    spprSavingsPlansPurchaseRecommendationDetails,
    spprSavingsPlansType,
    spprLookbackPeriodInDays,

    -- ** SavingsPlansPurchaseRecommendationDetail
    SavingsPlansPurchaseRecommendationDetail,
    savingsPlansPurchaseRecommendationDetail,
    spprdUpfrontCost,
    spprdEstimatedOnDemandCost,
    spprdAccountId,
    spprdEstimatedMonthlySavingsAmount,
    spprdEstimatedSavingsAmount,
    spprdCurrentMaximumHourlyOnDemandSpend,
    spprdHourlyCommitmentToPurchase,
    spprdEstimatedAverageUtilization,
    spprdCurrentAverageHourlyOnDemandSpend,
    spprdEstimatedSavingsPercentage,
    spprdSavingsPlansDetails,
    spprdCurrencyCode,
    spprdEstimatedSPCost,
    spprdEstimatedOnDemandCostWithCurrentCommitment,
    spprdEstimatedROI,
    spprdCurrentMinimumHourlyOnDemandSpend,

    -- ** SavingsPlansPurchaseRecommendationMetadata
    SavingsPlansPurchaseRecommendationMetadata,
    savingsPlansPurchaseRecommendationMetadata,
    spprmRecommendationId,
    spprmAdditionalMetadata,
    spprmGenerationTimestamp,

    -- ** SavingsPlansPurchaseRecommendationSummary
    SavingsPlansPurchaseRecommendationSummary,
    savingsPlansPurchaseRecommendationSummary,
    spprsEstimatedMonthlySavingsAmount,
    spprsEstimatedSavingsAmount,
    spprsHourlyCommitmentToPurchase,
    spprsEstimatedTotalCost,
    spprsEstimatedSavingsPercentage,
    spprsCurrencyCode,
    spprsEstimatedOnDemandCostWithCurrentCommitment,
    spprsEstimatedROI,
    spprsCurrentOnDemandSpend,
    spprsTotalRecommendationCount,
    spprsDailyCommitmentToPurchase,

    -- ** SavingsPlansSavings
    SavingsPlansSavings,
    savingsPlansSavings,
    spsOnDemandCostEquivalent,
    spsNetSavings,

    -- ** SavingsPlansUtilization
    SavingsPlansUtilization,
    savingsPlansUtilization,
    spuUnusedCommitment,
    spuUsedCommitment,
    spuTotalCommitment,
    spuUtilizationPercentage,

    -- ** SavingsPlansUtilizationAggregates
    SavingsPlansUtilizationAggregates,
    savingsPlansUtilizationAggregates,
    spuaSavings,
    spuaAmortizedCommitment,
    spuaUtilization,

    -- ** SavingsPlansUtilizationByTime
    SavingsPlansUtilizationByTime,
    savingsPlansUtilizationByTime,
    spubtSavings,
    spubtAmortizedCommitment,
    spubtTimePeriod,
    spubtUtilization,

    -- ** SavingsPlansUtilizationDetail
    SavingsPlansUtilizationDetail,
    savingsPlansUtilizationDetail,
    spudSavings,
    spudUtilization,
    spudAttributes,
    spudAmortizedCommitment,
    spudSavingsPlanARN,

    -- ** ServiceSpecification
    ServiceSpecification,
    serviceSpecification,
    ssEC2Specification,

    -- ** SortDefinition
    SortDefinition,
    sortDefinition,
    sdSortOrder,
    sdKey,

    -- ** Subscriber
    Subscriber,
    subscriber,
    sStatus,
    sAddress,
    sType,

    -- ** TagValues
    TagValues,
    tagValues,
    tvKey,
    tvValues,
    tvMatchOptions,

    -- ** TargetInstance
    TargetInstance,
    targetInstance,
    tiEstimatedMonthlySavings,
    tiCurrencyCode,
    tiEstimatedMonthlyCost,
    tiExpectedResourceUtilization,
    tiDefaultTargetInstance,
    tiResourceDetails,

    -- ** TerminateRecommendationDetail
    TerminateRecommendationDetail,
    terminateRecommendationDetail,
    trdEstimatedMonthlySavings,
    trdCurrencyCode,

    -- ** TotalImpactFilter
    TotalImpactFilter,
    totalImpactFilter,
    tifEndValue,
    tifNumericOperator,
    tifStartValue,

    -- ** UtilizationByTime
    UtilizationByTime,
    utilizationByTime,
    ubtGroups,
    ubtTimePeriod,
    ubtTotal,
  )
where

import Network.AWS.CostExplorer.CreateAnomalyMonitor
import Network.AWS.CostExplorer.CreateAnomalySubscription
import Network.AWS.CostExplorer.CreateCostCategoryDefinition
import Network.AWS.CostExplorer.DeleteAnomalyMonitor
import Network.AWS.CostExplorer.DeleteAnomalySubscription
import Network.AWS.CostExplorer.DeleteCostCategoryDefinition
import Network.AWS.CostExplorer.DescribeCostCategoryDefinition
import Network.AWS.CostExplorer.GetAnomalies
import Network.AWS.CostExplorer.GetAnomalyMonitors
import Network.AWS.CostExplorer.GetAnomalySubscriptions
import Network.AWS.CostExplorer.GetCostAndUsage
import Network.AWS.CostExplorer.GetCostAndUsageWithResources
import Network.AWS.CostExplorer.GetCostCategories
import Network.AWS.CostExplorer.GetCostForecast
import Network.AWS.CostExplorer.GetDimensionValues
import Network.AWS.CostExplorer.GetReservationCoverage
import Network.AWS.CostExplorer.GetReservationPurchaseRecommendation
import Network.AWS.CostExplorer.GetReservationUtilization
import Network.AWS.CostExplorer.GetRightsizingRecommendation
import Network.AWS.CostExplorer.GetSavingsPlansCoverage
import Network.AWS.CostExplorer.GetSavingsPlansPurchaseRecommendation
import Network.AWS.CostExplorer.GetSavingsPlansUtilization
import Network.AWS.CostExplorer.GetSavingsPlansUtilizationDetails
import Network.AWS.CostExplorer.GetTags
import Network.AWS.CostExplorer.GetUsageForecast
import Network.AWS.CostExplorer.ListCostCategoryDefinitions
import Network.AWS.CostExplorer.ProvideAnomalyFeedback
import Network.AWS.CostExplorer.Types
import Network.AWS.CostExplorer.UpdateAnomalyMonitor
import Network.AWS.CostExplorer.UpdateAnomalySubscription
import Network.AWS.CostExplorer.UpdateCostCategoryDefinition
import Network.AWS.CostExplorer.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CostExplorer'.

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
