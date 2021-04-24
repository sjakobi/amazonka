{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApplicationAutoScaling.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types
  ( -- * Service Configuration
    applicationAutoScaling,

    -- * Errors
    _ObjectNotFoundException,
    _InternalServiceException,
    _InvalidNextTokenException,
    _FailedResourceAccessException,
    _ValidationException,
    _LimitExceededException,
    _ConcurrentUpdateException,

    -- * AdjustmentType
    AdjustmentType (..),

    -- * MetricAggregationType
    MetricAggregationType (..),

    -- * MetricStatistic
    MetricStatistic (..),

    -- * MetricType
    MetricType (..),

    -- * PolicyType
    PolicyType (..),

    -- * ScalableDimension
    ScalableDimension (..),

    -- * ScalingActivityStatusCode
    ScalingActivityStatusCode (..),

    -- * ServiceNamespace
    ServiceNamespace (..),

    -- * Alarm
    Alarm (..),
    alarm,
    aAlarmName,
    aAlarmARN,

    -- * CustomizedMetricSpecification
    CustomizedMetricSpecification (..),
    customizedMetricSpecification,
    cmsUnit,
    cmsDimensions,
    cmsMetricName,
    cmsNamespace,
    cmsStatistic,

    -- * MetricDimension
    MetricDimension (..),
    metricDimension,
    mdName,
    mdValue,

    -- * PredefinedMetricSpecification
    PredefinedMetricSpecification (..),
    predefinedMetricSpecification,
    pmsResourceLabel,
    pmsPredefinedMetricType,

    -- * ScalableTarget
    ScalableTarget (..),
    scalableTarget,
    stSuspendedState,
    stServiceNamespace,
    stResourceId,
    stScalableDimension,
    stMinCapacity,
    stMaxCapacity,
    stRoleARN,
    stCreationTime,

    -- * ScalableTargetAction
    ScalableTargetAction (..),
    scalableTargetAction,
    staMaxCapacity,
    staMinCapacity,

    -- * ScalingActivity
    ScalingActivity (..),
    scalingActivity,
    sStatusMessage,
    sDetails,
    sEndTime,
    sActivityId,
    sServiceNamespace,
    sResourceId,
    sScalableDimension,
    sDescription,
    sCause,
    sStartTime,
    sStatusCode,

    -- * ScalingPolicy
    ScalingPolicy (..),
    scalingPolicy,
    spTargetTrackingScalingPolicyConfiguration,
    spStepScalingPolicyConfiguration,
    spAlarms,
    spPolicyARN,
    spPolicyName,
    spServiceNamespace,
    spResourceId,
    spScalableDimension,
    spPolicyType,
    spCreationTime,

    -- * ScheduledAction
    ScheduledAction (..),
    scheduledAction,
    saStartTime,
    saEndTime,
    saScalableDimension,
    saTimezone,
    saScalableTargetAction,
    saScheduledActionName,
    saScheduledActionARN,
    saServiceNamespace,
    saSchedule,
    saResourceId,
    saCreationTime,

    -- * StepAdjustment
    StepAdjustment (..),
    stepAdjustment,
    saMetricIntervalUpperBound,
    saMetricIntervalLowerBound,
    saScalingAdjustment,

    -- * StepScalingPolicyConfiguration
    StepScalingPolicyConfiguration (..),
    stepScalingPolicyConfiguration,
    sspcStepAdjustments,
    sspcMetricAggregationType,
    sspcCooldown,
    sspcAdjustmentType,
    sspcMinAdjustmentMagnitude,

    -- * SuspendedState
    SuspendedState (..),
    suspendedState,
    ssScheduledScalingSuspended,
    ssDynamicScalingInSuspended,
    ssDynamicScalingOutSuspended,

    -- * TargetTrackingScalingPolicyConfiguration
    TargetTrackingScalingPolicyConfiguration (..),
    targetTrackingScalingPolicyConfiguration,
    ttspcDisableScaleIn,
    ttspcPredefinedMetricSpecification,
    ttspcScaleOutCooldown,
    ttspcCustomizedMetricSpecification,
    ttspcScaleInCooldown,
    ttspcTargetValue,
  )
where

import Network.AWS.ApplicationAutoScaling.Types.AdjustmentType
import Network.AWS.ApplicationAutoScaling.Types.Alarm
import Network.AWS.ApplicationAutoScaling.Types.CustomizedMetricSpecification
import Network.AWS.ApplicationAutoScaling.Types.MetricAggregationType
import Network.AWS.ApplicationAutoScaling.Types.MetricDimension
import Network.AWS.ApplicationAutoScaling.Types.MetricStatistic
import Network.AWS.ApplicationAutoScaling.Types.MetricType
import Network.AWS.ApplicationAutoScaling.Types.PolicyType
import Network.AWS.ApplicationAutoScaling.Types.PredefinedMetricSpecification
import Network.AWS.ApplicationAutoScaling.Types.ScalableDimension
import Network.AWS.ApplicationAutoScaling.Types.ScalableTarget
import Network.AWS.ApplicationAutoScaling.Types.ScalableTargetAction
import Network.AWS.ApplicationAutoScaling.Types.ScalingActivity
import Network.AWS.ApplicationAutoScaling.Types.ScalingActivityStatusCode
import Network.AWS.ApplicationAutoScaling.Types.ScalingPolicy
import Network.AWS.ApplicationAutoScaling.Types.ScheduledAction
import Network.AWS.ApplicationAutoScaling.Types.ServiceNamespace
import Network.AWS.ApplicationAutoScaling.Types.StepAdjustment
import Network.AWS.ApplicationAutoScaling.Types.StepScalingPolicyConfiguration
import Network.AWS.ApplicationAutoScaling.Types.SuspendedState
import Network.AWS.ApplicationAutoScaling.Types.TargetTrackingScalingPolicyConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-02-06@ of the Amazon Application Auto Scaling SDK configuration.
applicationAutoScaling :: Service
applicationAutoScaling =
  Service
    { _svcAbbrev = "ApplicationAutoScaling",
      _svcSigner = v4,
      _svcPrefix = "application-autoscaling",
      _svcVersion = "2016-02-06",
      _svcEndpoint =
        defaultEndpoint applicationAutoScaling,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "ApplicationAutoScaling",
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

-- | The specified object could not be found. For any operation that depends on the existence of a scalable target, this exception is thrown if the scalable target with the specified service namespace, resource ID, and scalable dimension does not exist. For any operation that deletes or deregisters a resource, this exception is thrown if the resource cannot be found.
_ObjectNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ObjectNotFoundException =
  _MatchServiceError
    applicationAutoScaling
    "ObjectNotFoundException"

-- | The service encountered an internal error.
_InternalServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceException =
  _MatchServiceError
    applicationAutoScaling
    "InternalServiceException"

-- | The next token supplied was invalid.
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    applicationAutoScaling
    "InvalidNextTokenException"

-- | Failed access to resources caused an exception. This exception is thrown when Application Auto Scaling is unable to retrieve the alarms associated with a scaling policy due to a client error, for example, if the role ARN specified for a scalable target does not have permission to call the CloudWatch <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html DescribeAlarms> on your behalf.
_FailedResourceAccessException :: AsError a => Getting (First ServiceError) a ServiceError
_FailedResourceAccessException =
  _MatchServiceError
    applicationAutoScaling
    "FailedResourceAccessException"

-- | An exception was thrown for a validation issue. Review the available parameters for the API request.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError
    applicationAutoScaling
    "ValidationException"

-- | A per-account resource limit is exceeded. For more information, see <https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-limits.html Application Auto Scaling service quotas> .
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    applicationAutoScaling
    "LimitExceededException"

-- | Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.
_ConcurrentUpdateException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentUpdateException =
  _MatchServiceError
    applicationAutoScaling
    "ConcurrentUpdateException"
