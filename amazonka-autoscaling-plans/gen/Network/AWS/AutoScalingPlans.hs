{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Auto Scaling__
--
-- Use AWS Auto Scaling to create scaling plans for your applications to automatically scale your scalable AWS resources.
--
-- __API Summary__
--
-- You can use the AWS Auto Scaling service API to accomplish the following tasks:
--
--     * Create and manage scaling plans
--
--     * Define target tracking scaling policies to dynamically scale your resources based on utilization
--
--     * Scale Amazon EC2 Auto Scaling groups using predictive scaling and dynamic scaling to scale your Amazon EC2 capacity faster
--
--     * Set minimum and maximum capacity limits
--
--     * Retrieve information on existing scaling plans
--
--     * Access current forecast data and historical forecast data for up to 56 days previous
--
--
--
-- To learn more about AWS Auto Scaling, including information about granting IAM users required permissions for AWS Auto Scaling actions, see the <https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html AWS Auto Scaling User Guide> .
module Network.AWS.AutoScalingPlans
  ( -- * Service Configuration
    autoScalingPlans,

    -- * Errors
    -- $errors

    -- ** ObjectNotFoundException
    _ObjectNotFoundException,

    -- ** InternalServiceException
    _InternalServiceException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** ValidationException
    _ValidationException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ConcurrentUpdateException
    _ConcurrentUpdateException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** UpdateScalingPlan
    module Network.AWS.AutoScalingPlans.UpdateScalingPlan,

    -- ** DeleteScalingPlan
    module Network.AWS.AutoScalingPlans.DeleteScalingPlan,

    -- ** DescribeScalingPlanResources (Paginated)
    module Network.AWS.AutoScalingPlans.DescribeScalingPlanResources,

    -- ** GetScalingPlanResourceForecastData
    module Network.AWS.AutoScalingPlans.GetScalingPlanResourceForecastData,

    -- ** DescribeScalingPlans (Paginated)
    module Network.AWS.AutoScalingPlans.DescribeScalingPlans,

    -- ** CreateScalingPlan
    module Network.AWS.AutoScalingPlans.CreateScalingPlan,

    -- * Types

    -- ** ForecastDataType
    ForecastDataType (..),

    -- ** LoadMetricType
    LoadMetricType (..),

    -- ** MetricStatistic
    MetricStatistic (..),

    -- ** PolicyType
    PolicyType (..),

    -- ** PredictiveScalingMaxCapacityBehavior
    PredictiveScalingMaxCapacityBehavior (..),

    -- ** PredictiveScalingMode
    PredictiveScalingMode (..),

    -- ** ScalableDimension
    ScalableDimension (..),

    -- ** ScalingMetricType
    ScalingMetricType (..),

    -- ** ScalingPlanStatusCode
    ScalingPlanStatusCode (..),

    -- ** ScalingPolicyUpdateBehavior
    ScalingPolicyUpdateBehavior (..),

    -- ** ScalingStatusCode
    ScalingStatusCode (..),

    -- ** ServiceNamespace
    ServiceNamespace (..),

    -- ** ApplicationSource
    ApplicationSource,
    applicationSource,
    asTagFilters,
    asCloudFormationStackARN,

    -- ** CustomizedLoadMetricSpecification
    CustomizedLoadMetricSpecification,
    customizedLoadMetricSpecification,
    clmsUnit,
    clmsDimensions,
    clmsMetricName,
    clmsNamespace,
    clmsStatistic,

    -- ** CustomizedScalingMetricSpecification
    CustomizedScalingMetricSpecification,
    customizedScalingMetricSpecification,
    csmsUnit,
    csmsDimensions,
    csmsMetricName,
    csmsNamespace,
    csmsStatistic,

    -- ** Datapoint
    Datapoint,
    datapoint,
    dTimestamp,
    dValue,

    -- ** MetricDimension
    MetricDimension,
    metricDimension,
    mdName,
    mdValue,

    -- ** PredefinedLoadMetricSpecification
    PredefinedLoadMetricSpecification,
    predefinedLoadMetricSpecification,
    plmsResourceLabel,
    plmsPredefinedLoadMetricType,

    -- ** PredefinedScalingMetricSpecification
    PredefinedScalingMetricSpecification,
    predefinedScalingMetricSpecification,
    psmsResourceLabel,
    psmsPredefinedScalingMetricType,

    -- ** ScalingInstruction
    ScalingInstruction,
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

    -- ** ScalingPlan
    ScalingPlan,
    scalingPlan,
    spStatusMessage,
    spCreationTime,
    spStatusStartTime,
    spScalingPlanName,
    spScalingPlanVersion,
    spApplicationSource,
    spScalingInstructions,
    spStatusCode,

    -- ** ScalingPlanResource
    ScalingPlanResource,
    scalingPlanResource,
    sprScalingPolicies,
    sprScalingStatusMessage,
    sprScalingPlanName,
    sprScalingPlanVersion,
    sprServiceNamespace,
    sprResourceId,
    sprScalableDimension,
    sprScalingStatusCode,

    -- ** ScalingPolicy
    ScalingPolicy,
    scalingPolicy,
    spTargetTrackingConfiguration,
    spPolicyName,
    spPolicyType,

    -- ** TagFilter
    TagFilter,
    tagFilter,
    tfKey,
    tfValues,

    -- ** TargetTrackingConfiguration
    TargetTrackingConfiguration,
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

import Network.AWS.AutoScalingPlans.CreateScalingPlan
import Network.AWS.AutoScalingPlans.DeleteScalingPlan
import Network.AWS.AutoScalingPlans.DescribeScalingPlanResources
import Network.AWS.AutoScalingPlans.DescribeScalingPlans
import Network.AWS.AutoScalingPlans.GetScalingPlanResourceForecastData
import Network.AWS.AutoScalingPlans.Types
import Network.AWS.AutoScalingPlans.UpdateScalingPlan
import Network.AWS.AutoScalingPlans.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'AutoScalingPlans'.

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
