{-# LANGUAGE OverloadedStrings #-}

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
    costExplorer,

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

    -- * AnomalyDateInterval
    AnomalyDateInterval (..),
    anomalyDateInterval,
    adiEndDate,
    adiStartDate,

    -- * AnomalyMonitor
    AnomalyMonitor (..),
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

    -- * AnomalyScore
    AnomalyScore (..),
    anomalyScore,
    asMaxScore,
    asCurrentScore,

    -- * AnomalySubscription
    AnomalySubscription (..),
    anomalySubscription,
    asAccountId,
    asSubscriptionARN,
    asMonitorARNList,
    asSubscribers,
    asThreshold,
    asFrequency,
    asSubscriptionName,

    -- * CostCategory
    CostCategory (..),
    costCategory,
    ccProcessingStatus,
    ccEffectiveEnd,
    ccCostCategoryARN,
    ccEffectiveStart,
    ccName,
    ccRuleVersion,
    ccRules,

    -- * CostCategoryProcessingStatus
    CostCategoryProcessingStatus (..),
    costCategoryProcessingStatus,
    ccpsStatus,
    ccpsComponent,

    -- * CostCategoryReference
    CostCategoryReference (..),
    costCategoryReference,
    ccrNumberOfRules,
    ccrCostCategoryARN,
    ccrValues,
    ccrProcessingStatus,
    ccrName,
    ccrEffectiveStart,
    ccrEffectiveEnd,

    -- * CostCategoryRule
    CostCategoryRule (..),
    costCategoryRule,
    ccrValue,
    ccrRule,

    -- * CostCategoryValues
    CostCategoryValues (..),
    costCategoryValues,
    ccvKey,
    ccvValues,
    ccvMatchOptions,

    -- * Coverage
    Coverage (..),
    coverage,
    cCoverageCost,
    cCoverageHours,
    cCoverageNormalizedUnits,

    -- * CoverageByTime
    CoverageByTime (..),
    coverageByTime,
    cbtGroups,
    cbtTimePeriod,
    cbtTotal,

    -- * CoverageCost
    CoverageCost (..),
    coverageCost,
    ccOnDemandCost,

    -- * CoverageHours
    CoverageHours (..),
    coverageHours,
    chReservedHours,
    chTotalRunningHours,
    chOnDemandHours,
    chCoverageHoursPercentage,

    -- * CoverageNormalizedUnits
    CoverageNormalizedUnits (..),
    coverageNormalizedUnits,
    cnuOnDemandNormalizedUnits,
    cnuCoverageNormalizedUnitsPercentage,
    cnuTotalRunningNormalizedUnits,
    cnuReservedNormalizedUnits,

    -- * CurrentInstance
    CurrentInstance (..),
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

    -- * DateInterval
    DateInterval (..),
    dateInterval,
    diStart,
    diEnd,

    -- * DimensionValues
    DimensionValues (..),
    dimensionValues,
    dvKey,
    dvValues,
    dvMatchOptions,

    -- * DimensionValuesWithAttributes
    DimensionValuesWithAttributes (..),
    dimensionValuesWithAttributes,
    dvwaAttributes,
    dvwaValue,

    -- * EBSResourceUtilization
    EBSResourceUtilization (..),
    ebsResourceUtilization,
    eruEBSWriteBytesPerSecond,
    eruEBSReadOpsPerSecond,
    eruEBSWriteOpsPerSecond,
    eruEBSReadBytesPerSecond,

    -- * EC2InstanceDetails
    EC2InstanceDetails (..),
    ec2InstanceDetails,
    eidPlatform,
    eidInstanceType,
    eidTenancy,
    eidCurrentGeneration,
    eidSizeFlexEligible,
    eidAvailabilityZone,
    eidFamily,
    eidRegion,

    -- * EC2ResourceDetails
    EC2ResourceDetails (..),
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

    -- * EC2ResourceUtilization
    EC2ResourceUtilization (..),
    ec2ResourceUtilization,
    eruMaxStorageUtilizationPercentage,
    eruMaxMemoryUtilizationPercentage,
    eruEBSResourceUtilization,
    eruMaxCPUUtilizationPercentage,

    -- * EC2Specification
    EC2Specification (..),
    ec2Specification,
    esOfferingClass,

    -- * ESInstanceDetails
    ESInstanceDetails (..),
    eSInstanceDetails,
    esidInstanceClass,
    esidCurrentGeneration,
    esidSizeFlexEligible,
    esidInstanceSize,
    esidRegion,

    -- * ElastiCacheInstanceDetails
    ElastiCacheInstanceDetails (..),
    elastiCacheInstanceDetails,
    ecidCurrentGeneration,
    ecidSizeFlexEligible,
    ecidFamily,
    ecidNodeType,
    ecidRegion,
    ecidProductDescription,

    -- * Expression
    Expression (..),
    expression,
    eNot,
    eOr,
    eCostCategories,
    eTags,
    eAnd,
    eDimensions,

    -- * ForecastResult
    ForecastResult (..),
    forecastResult,
    frMeanValue,
    frTimePeriod,
    frPredictionIntervalLowerBound,
    frPredictionIntervalUpperBound,

    -- * Group
    Group (..),
    group',
    gMetrics,
    gKeys,

    -- * GroupDefinition
    GroupDefinition (..),
    groupDefinition,
    gdKey,
    gdType,

    -- * Impact
    Impact (..),
    impact,
    iTotalImpact,
    iMaxImpact,

    -- * InstanceDetails
    InstanceDetails (..),
    instanceDetails,
    idElastiCacheInstanceDetails,
    idRedshiftInstanceDetails,
    idESInstanceDetails,
    idEC2InstanceDetails,
    idRDSInstanceDetails,

    -- * MetricValue
    MetricValue (..),
    metricValue,
    mvAmount,
    mvUnit,

    -- * ModifyRecommendationDetail
    ModifyRecommendationDetail (..),
    modifyRecommendationDetail,
    mrdTargetInstances,

    -- * RDSInstanceDetails
    RDSInstanceDetails (..),
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

    -- * RedshiftInstanceDetails
    RedshiftInstanceDetails (..),
    redshiftInstanceDetails,
    ridCurrentGeneration,
    ridSizeFlexEligible,
    ridFamily,
    ridNodeType,
    ridRegion,

    -- * ReservationAggregates
    ReservationAggregates (..),
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

    -- * ReservationCoverageGroup
    ReservationCoverageGroup (..),
    reservationCoverageGroup,
    rcgAttributes,
    rcgCoverage,

    -- * ReservationPurchaseRecommendation
    ReservationPurchaseRecommendation (..),
    reservationPurchaseRecommendation,
    rprPaymentOption,
    rprAccountScope,
    rprRecommendationDetails,
    rprServiceSpecification,
    rprTermInYears,
    rprRecommendationSummary,
    rprLookbackPeriodInDays,

    -- * ReservationPurchaseRecommendationDetail
    ReservationPurchaseRecommendationDetail (..),
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

    -- * ReservationPurchaseRecommendationMetadata
    ReservationPurchaseRecommendationMetadata (..),
    reservationPurchaseRecommendationMetadata,
    rprmRecommendationId,
    rprmGenerationTimestamp,

    -- * ReservationPurchaseRecommendationSummary
    ReservationPurchaseRecommendationSummary (..),
    reservationPurchaseRecommendationSummary,
    rprsTotalEstimatedMonthlySavingsAmount,
    rprsCurrencyCode,
    rprsTotalEstimatedMonthlySavingsPercentage,

    -- * ReservationUtilizationGroup
    ReservationUtilizationGroup (..),
    reservationUtilizationGroup,
    rugKey,
    rugUtilization,
    rugAttributes,
    rugValue,

    -- * ResourceDetails
    ResourceDetails (..),
    resourceDetails,
    rdEC2ResourceDetails,

    -- * ResourceUtilization
    ResourceUtilization (..),
    resourceUtilization,
    ruEC2ResourceUtilization,

    -- * ResultByTime
    ResultByTime (..),
    resultByTime,
    rbtGroups,
    rbtTimePeriod,
    rbtEstimated,
    rbtTotal,

    -- * RightsizingRecommendation
    RightsizingRecommendation (..),
    rightsizingRecommendation,
    rrAccountId,
    rrTerminateRecommendationDetail,
    rrRightsizingType,
    rrCurrentInstance,
    rrModifyRecommendationDetail,

    -- * RightsizingRecommendationConfiguration
    RightsizingRecommendationConfiguration (..),
    rightsizingRecommendationConfiguration,
    rrcRecommendationTarget,
    rrcBenefitsConsidered,

    -- * RightsizingRecommendationMetadata
    RightsizingRecommendationMetadata (..),
    rightsizingRecommendationMetadata,
    rrmRecommendationId,
    rrmAdditionalMetadata,
    rrmLookbackPeriodInDays,
    rrmGenerationTimestamp,

    -- * RightsizingRecommendationSummary
    RightsizingRecommendationSummary (..),
    rightsizingRecommendationSummary,
    rrsEstimatedTotalMonthlySavingsAmount,
    rrsSavingsPercentage,
    rrsTotalRecommendationCount,
    rrsSavingsCurrencyCode,

    -- * RootCause
    RootCause (..),
    rootCause,
    rcService,
    rcUsageType,
    rcLinkedAccount,
    rcRegion,

    -- * SavingsPlansAmortizedCommitment
    SavingsPlansAmortizedCommitment (..),
    savingsPlansAmortizedCommitment,
    spacAmortizedUpfrontCommitment,
    spacAmortizedRecurringCommitment,
    spacTotalAmortizedCommitment,

    -- * SavingsPlansCoverage
    SavingsPlansCoverage (..),
    savingsPlansCoverage,
    spcTimePeriod,
    spcAttributes,
    spcCoverage,

    -- * SavingsPlansCoverageData
    SavingsPlansCoverageData (..),
    savingsPlansCoverageData,
    spcdTotalCost,
    spcdCoveragePercentage,
    spcdSpendCoveredBySavingsPlans,
    spcdOnDemandCost,

    -- * SavingsPlansDetails
    SavingsPlansDetails (..),
    savingsPlansDetails,
    spdInstanceFamily,
    spdOfferingId,
    spdRegion,

    -- * SavingsPlansPurchaseRecommendation
    SavingsPlansPurchaseRecommendation (..),
    savingsPlansPurchaseRecommendation,
    spprPaymentOption,
    spprSavingsPlansPurchaseRecommendationSummary,
    spprAccountScope,
    spprTermInYears,
    spprSavingsPlansPurchaseRecommendationDetails,
    spprSavingsPlansType,
    spprLookbackPeriodInDays,

    -- * SavingsPlansPurchaseRecommendationDetail
    SavingsPlansPurchaseRecommendationDetail (..),
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

    -- * SavingsPlansPurchaseRecommendationMetadata
    SavingsPlansPurchaseRecommendationMetadata (..),
    savingsPlansPurchaseRecommendationMetadata,
    spprmRecommendationId,
    spprmAdditionalMetadata,
    spprmGenerationTimestamp,

    -- * SavingsPlansPurchaseRecommendationSummary
    SavingsPlansPurchaseRecommendationSummary (..),
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

    -- * SavingsPlansSavings
    SavingsPlansSavings (..),
    savingsPlansSavings,
    spsOnDemandCostEquivalent,
    spsNetSavings,

    -- * SavingsPlansUtilization
    SavingsPlansUtilization (..),
    savingsPlansUtilization,
    spuUnusedCommitment,
    spuUsedCommitment,
    spuTotalCommitment,
    spuUtilizationPercentage,

    -- * SavingsPlansUtilizationAggregates
    SavingsPlansUtilizationAggregates (..),
    savingsPlansUtilizationAggregates,
    spuaSavings,
    spuaAmortizedCommitment,
    spuaUtilization,

    -- * SavingsPlansUtilizationByTime
    SavingsPlansUtilizationByTime (..),
    savingsPlansUtilizationByTime,
    spubtSavings,
    spubtAmortizedCommitment,
    spubtTimePeriod,
    spubtUtilization,

    -- * SavingsPlansUtilizationDetail
    SavingsPlansUtilizationDetail (..),
    savingsPlansUtilizationDetail,
    spudSavings,
    spudUtilization,
    spudAttributes,
    spudAmortizedCommitment,
    spudSavingsPlanARN,

    -- * ServiceSpecification
    ServiceSpecification (..),
    serviceSpecification,
    ssEC2Specification,

    -- * SortDefinition
    SortDefinition (..),
    sortDefinition,
    sdSortOrder,
    sdKey,

    -- * Subscriber
    Subscriber (..),
    subscriber,
    sStatus,
    sAddress,
    sType,

    -- * TagValues
    TagValues (..),
    tagValues,
    tvKey,
    tvValues,
    tvMatchOptions,

    -- * TargetInstance
    TargetInstance (..),
    targetInstance,
    tiEstimatedMonthlySavings,
    tiCurrencyCode,
    tiEstimatedMonthlyCost,
    tiExpectedResourceUtilization,
    tiDefaultTargetInstance,
    tiResourceDetails,

    -- * TerminateRecommendationDetail
    TerminateRecommendationDetail (..),
    terminateRecommendationDetail,
    trdEstimatedMonthlySavings,
    trdCurrencyCode,

    -- * TotalImpactFilter
    TotalImpactFilter (..),
    totalImpactFilter,
    tifEndValue,
    tifNumericOperator,
    tifStartValue,

    -- * UtilizationByTime
    UtilizationByTime (..),
    utilizationByTime,
    ubtGroups,
    ubtTimePeriod,
    ubtTotal,
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
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-10-25@ of the Amazon Cost Explorer Service SDK configuration.
costExplorer :: Service
costExplorer =
  Service
    { _svcAbbrev = "CostExplorer",
      _svcSigner = v4,
      _svcPrefix = "ce",
      _svcVersion = "2017-10-25",
      _svcEndpoint = defaultEndpoint costExplorer,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CostExplorer",
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

-- | You've reached the limit on the number of resources you can create, or exceeded the size of an individual resource.
_ServiceQuotaExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceQuotaExceededException =
  _MatchServiceError
    costExplorer
    "ServiceQuotaExceededException"

-- | Your request parameters changed between pages. Try again with the old parameters or without a pagination token.
_RequestChangedException :: AsError a => Getting (First ServiceError) a ServiceError
_RequestChangedException =
  _MatchServiceError
    costExplorer
    "RequestChangedException"

-- | The cost anomaly subscription does not exist for the account.
_UnknownSubscriptionException :: AsError a => Getting (First ServiceError) a ServiceError
_UnknownSubscriptionException =
  _MatchServiceError
    costExplorer
    "UnknownSubscriptionException"

-- | The cost anomaly monitor does not exist for the account.
_UnknownMonitorException :: AsError a => Getting (First ServiceError) a ServiceError
_UnknownMonitorException =
  _MatchServiceError
    costExplorer
    "UnknownMonitorException"

-- | The requested data is unavailable.
_DataUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_DataUnavailableException =
  _MatchServiceError
    costExplorer
    "DataUnavailableException"

-- | The pagination token is invalid. Try again without a pagination token.
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    costExplorer
    "InvalidNextTokenException"

-- | The requested report expired. Update the date interval and try again.
_BillExpirationException :: AsError a => Getting (First ServiceError) a ServiceError
_BillExpirationException =
  _MatchServiceError
    costExplorer
    "BillExpirationException"

-- | Cost Explorer was unable to identify the usage unit. Provide @UsageType/UsageTypeGroup@ filter selections that contain matching units, for example: @hours@ .
_UnresolvableUsageUnitException :: AsError a => Getting (First ServiceError) a ServiceError
_UnresolvableUsageUnitException =
  _MatchServiceError
    costExplorer
    "UnresolvableUsageUnitException"

-- | You made too many calls in a short period of time. Try again later.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    costExplorer
    "LimitExceededException"

-- | The specified ARN in the request doesn't exist.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    costExplorer
    "ResourceNotFoundException"
