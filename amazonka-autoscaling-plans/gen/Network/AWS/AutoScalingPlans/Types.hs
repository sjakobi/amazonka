{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types
  ( -- * Service Configuration
    autoScalingPlans,

    -- * Errors
    _ObjectNotFoundException,
    _InternalServiceException,
    _InvalidNextTokenException,
    _ValidationException,
    _LimitExceededException,
    _ConcurrentUpdateException,

    -- * ForecastDataType
    ForecastDataType (..),

    -- * LoadMetricType
    LoadMetricType (..),

    -- * MetricStatistic
    MetricStatistic (..),

    -- * PolicyType
    PolicyType (..),

    -- * PredictiveScalingMaxCapacityBehavior
    PredictiveScalingMaxCapacityBehavior (..),

    -- * PredictiveScalingMode
    PredictiveScalingMode (..),

    -- * ScalableDimension
    ScalableDimension (..),

    -- * ScalingMetricType
    ScalingMetricType (..),

    -- * ScalingPlanStatusCode
    ScalingPlanStatusCode (..),

    -- * ScalingPolicyUpdateBehavior
    ScalingPolicyUpdateBehavior (..),

    -- * ScalingStatusCode
    ScalingStatusCode (..),

    -- * ServiceNamespace
    ServiceNamespace (..),

    -- * ApplicationSource
    ApplicationSource (..),
    applicationSource,
    asTagFilters,
    asCloudFormationStackARN,

    -- * CustomizedLoadMetricSpecification
    CustomizedLoadMetricSpecification (..),
    customizedLoadMetricSpecification,
    clmsUnit,
    clmsDimensions,
    clmsMetricName,
    clmsNamespace,
    clmsStatistic,

    -- * CustomizedScalingMetricSpecification
    CustomizedScalingMetricSpecification (..),
    customizedScalingMetricSpecification,
    csmsUnit,
    csmsDimensions,
    csmsMetricName,
    csmsNamespace,
    csmsStatistic,

    -- * Datapoint
    Datapoint (..),
    datapoint,
    dTimestamp,
    dValue,

    -- * MetricDimension
    MetricDimension (..),
    metricDimension,
    mdName,
    mdValue,

    -- * PredefinedLoadMetricSpecification
    PredefinedLoadMetricSpecification (..),
    predefinedLoadMetricSpecification,
    plmsResourceLabel,
    plmsPredefinedLoadMetricType,

    -- * PredefinedScalingMetricSpecification
    PredefinedScalingMetricSpecification (..),
    predefinedScalingMetricSpecification,
    psmsResourceLabel,
    psmsPredefinedScalingMetricType,

    -- * ScalingInstruction
    ScalingInstruction (..),
    scalingInstruction,
    siDisableDynamicScaling,
    siPredefinedLoadMetricSpecification,
    siCustomizedLoadMetricSpecification,
    siPredictiveScalingMaxCapacityBehavior,
    siPredictiveScalingMaxCapacityBuffer,
    siPredictiveScalingMode,
    siScalingPolicyUpdateBehavior,
    siScheduledActionBufferTime,
    siServiceNamespace,
    siResourceId,
    siScalableDimension,
    siMinCapacity,
    siMaxCapacity,
    siTargetTrackingConfigurations,

    -- * ScalingPlan
    ScalingPlan (..),
    scalingPlan,
    spStatusMessage,
    spCreationTime,
    spStatusStartTime,
    spScalingPlanName,
    spScalingPlanVersion,
    spApplicationSource,
    spScalingInstructions,
    spStatusCode,

    -- * ScalingPlanResource
    ScalingPlanResource (..),
    scalingPlanResource,
    sprScalingPolicies,
    sprScalingStatusMessage,
    sprScalingPlanName,
    sprScalingPlanVersion,
    sprServiceNamespace,
    sprResourceId,
    sprScalableDimension,
    sprScalingStatusCode,

    -- * ScalingPolicy
    ScalingPolicy (..),
    scalingPolicy,
    spTargetTrackingConfiguration,
    spPolicyName,
    spPolicyType,

    -- * TagFilter
    TagFilter (..),
    tagFilter,
    tfKey,
    tfValues,

    -- * TargetTrackingConfiguration
    TargetTrackingConfiguration (..),
    targetTrackingConfiguration,
    ttcDisableScaleIn,
    ttcCustomizedScalingMetricSpecification,
    ttcPredefinedScalingMetricSpecification,
    ttcEstimatedInstanceWarmup,
    ttcScaleOutCooldown,
    ttcScaleInCooldown,
    ttcTargetValue,
  )
where

import Network.AWS.AutoScalingPlans.Types.ApplicationSource
import Network.AWS.AutoScalingPlans.Types.CustomizedLoadMetricSpecification
import Network.AWS.AutoScalingPlans.Types.CustomizedScalingMetricSpecification
import Network.AWS.AutoScalingPlans.Types.Datapoint
import Network.AWS.AutoScalingPlans.Types.ForecastDataType
import Network.AWS.AutoScalingPlans.Types.LoadMetricType
import Network.AWS.AutoScalingPlans.Types.MetricDimension
import Network.AWS.AutoScalingPlans.Types.MetricStatistic
import Network.AWS.AutoScalingPlans.Types.PolicyType
import Network.AWS.AutoScalingPlans.Types.PredefinedLoadMetricSpecification
import Network.AWS.AutoScalingPlans.Types.PredefinedScalingMetricSpecification
import Network.AWS.AutoScalingPlans.Types.PredictiveScalingMaxCapacityBehavior
import Network.AWS.AutoScalingPlans.Types.PredictiveScalingMode
import Network.AWS.AutoScalingPlans.Types.ScalableDimension
import Network.AWS.AutoScalingPlans.Types.ScalingInstruction
import Network.AWS.AutoScalingPlans.Types.ScalingMetricType
import Network.AWS.AutoScalingPlans.Types.ScalingPlan
import Network.AWS.AutoScalingPlans.Types.ScalingPlanResource
import Network.AWS.AutoScalingPlans.Types.ScalingPlanStatusCode
import Network.AWS.AutoScalingPlans.Types.ScalingPolicy
import Network.AWS.AutoScalingPlans.Types.ScalingPolicyUpdateBehavior
import Network.AWS.AutoScalingPlans.Types.ScalingStatusCode
import Network.AWS.AutoScalingPlans.Types.ServiceNamespace
import Network.AWS.AutoScalingPlans.Types.TagFilter
import Network.AWS.AutoScalingPlans.Types.TargetTrackingConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2018-01-06@ of the Amazon Auto Scaling Plans SDK configuration.
autoScalingPlans :: Service
autoScalingPlans =
  Service
    { _svcAbbrev = "AutoScalingPlans",
      _svcSigner = v4,
      _svcPrefix = "autoscaling-plans",
      _svcVersion = "2018-01-06",
      _svcEndpoint = defaultEndpoint autoScalingPlans,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "AutoScalingPlans",
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

-- | The specified object could not be found.
_ObjectNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ObjectNotFoundException =
  _MatchServiceError
    autoScalingPlans
    "ObjectNotFoundException"

-- | The service encountered an internal error.
_InternalServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceException =
  _MatchServiceError
    autoScalingPlans
    "InternalServiceException"

-- | The token provided is not valid.
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    autoScalingPlans
    "InvalidNextTokenException"

-- | An exception was thrown for a validation issue. Review the parameters provided.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError
    autoScalingPlans
    "ValidationException"

-- | Your account exceeded a limit. This exception is thrown when a per-account resource limit is exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    autoScalingPlans
    "LimitExceededException"

-- | Concurrent updates caused an exception, for example, if you request an update to a scaling plan that already has a pending update.
_ConcurrentUpdateException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentUpdateException =
  _MatchServiceError
    autoScalingPlans
    "ConcurrentUpdateException"
