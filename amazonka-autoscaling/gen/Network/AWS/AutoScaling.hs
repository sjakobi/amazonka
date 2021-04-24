{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon EC2 Auto Scaling__
--
-- Amazon EC2 Auto Scaling is designed to automatically launch or terminate EC2 instances based on user-defined scaling policies, scheduled actions, and health checks. Use this service with AWS Auto Scaling, Amazon CloudWatch, and Elastic Load Balancing.
--
-- For more information, including information about granting IAM users required permissions for Amazon EC2 Auto Scaling actions, see the <https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html Amazon EC2 Auto Scaling User Guide> .
module Network.AWS.AutoScaling
  ( -- * Service Configuration
    autoScaling,

    -- * Errors
    -- $errors

    -- ** AlreadyExistsFault
    _AlreadyExistsFault,

    -- ** ResourceInUseFault
    _ResourceInUseFault,

    -- ** LimitExceededFault
    _LimitExceededFault,

    -- ** InstanceRefreshInProgressFault
    _InstanceRefreshInProgressFault,

    -- ** ScalingActivityInProgressFault
    _ScalingActivityInProgressFault,

    -- ** ActiveInstanceRefreshNotFoundFault
    _ActiveInstanceRefreshNotFoundFault,

    -- ** ResourceContentionFault
    _ResourceContentionFault,

    -- ** ServiceLinkedRoleFailure
    _ServiceLinkedRoleFailure,

    -- ** InvalidNextToken
    _InvalidNextToken,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** SuspendProcesses
    module Network.AWS.AutoScaling.SuspendProcesses,

    -- ** DescribeInstanceRefreshes
    module Network.AWS.AutoScaling.DescribeInstanceRefreshes,

    -- ** EnterStandby
    module Network.AWS.AutoScaling.EnterStandby,

    -- ** ExecutePolicy
    module Network.AWS.AutoScaling.ExecutePolicy,

    -- ** DeleteLifecycleHook
    module Network.AWS.AutoScaling.DeleteLifecycleHook,

    -- ** ResumeProcesses
    module Network.AWS.AutoScaling.ResumeProcesses,

    -- ** PutNotificationConfiguration
    module Network.AWS.AutoScaling.PutNotificationConfiguration,

    -- ** AttachLoadBalancerTargetGroups
    module Network.AWS.AutoScaling.AttachLoadBalancerTargetGroups,

    -- ** PutScalingPolicy
    module Network.AWS.AutoScaling.PutScalingPolicy,

    -- ** StartInstanceRefresh
    module Network.AWS.AutoScaling.StartInstanceRefresh,

    -- ** DescribeTags (Paginated)
    module Network.AWS.AutoScaling.DescribeTags,

    -- ** DeletePolicy
    module Network.AWS.AutoScaling.DeletePolicy,

    -- ** CreateLaunchConfiguration
    module Network.AWS.AutoScaling.CreateLaunchConfiguration,

    -- ** CreateOrUpdateTags
    module Network.AWS.AutoScaling.CreateOrUpdateTags,

    -- ** DescribeScheduledActions (Paginated)
    module Network.AWS.AutoScaling.DescribeScheduledActions,

    -- ** DescribeAutoScalingNotificationTypes
    module Network.AWS.AutoScaling.DescribeAutoScalingNotificationTypes,

    -- ** DescribeAdjustmentTypes
    module Network.AWS.AutoScaling.DescribeAdjustmentTypes,

    -- ** DetachLoadBalancers
    module Network.AWS.AutoScaling.DetachLoadBalancers,

    -- ** DeleteScheduledAction
    module Network.AWS.AutoScaling.DeleteScheduledAction,

    -- ** DescribeScalingActivities (Paginated)
    module Network.AWS.AutoScaling.DescribeScalingActivities,

    -- ** DescribeLifecycleHooks
    module Network.AWS.AutoScaling.DescribeLifecycleHooks,

    -- ** DetachLoadBalancerTargetGroups
    module Network.AWS.AutoScaling.DetachLoadBalancerTargetGroups,

    -- ** PutScheduledUpdateGroupAction
    module Network.AWS.AutoScaling.PutScheduledUpdateGroupAction,

    -- ** SetInstanceProtection
    module Network.AWS.AutoScaling.SetInstanceProtection,

    -- ** DeleteTags
    module Network.AWS.AutoScaling.DeleteTags,

    -- ** DetachInstances
    module Network.AWS.AutoScaling.DetachInstances,

    -- ** AttachLoadBalancers
    module Network.AWS.AutoScaling.AttachLoadBalancers,

    -- ** DescribeAccountLimits
    module Network.AWS.AutoScaling.DescribeAccountLimits,

    -- ** TerminateInstanceInAutoScalingGroup
    module Network.AWS.AutoScaling.TerminateInstanceInAutoScalingGroup,

    -- ** DescribeTerminationPolicyTypes
    module Network.AWS.AutoScaling.DescribeTerminationPolicyTypes,

    -- ** SetInstanceHealth
    module Network.AWS.AutoScaling.SetInstanceHealth,

    -- ** ExitStandby
    module Network.AWS.AutoScaling.ExitStandby,

    -- ** PutLifecycleHook
    module Network.AWS.AutoScaling.PutLifecycleHook,

    -- ** BatchPutScheduledUpdateGroupAction
    module Network.AWS.AutoScaling.BatchPutScheduledUpdateGroupAction,

    -- ** DeleteLaunchConfiguration
    module Network.AWS.AutoScaling.DeleteLaunchConfiguration,

    -- ** DeleteNotificationConfiguration
    module Network.AWS.AutoScaling.DeleteNotificationConfiguration,

    -- ** UpdateAutoScalingGroup
    module Network.AWS.AutoScaling.UpdateAutoScalingGroup,

    -- ** DescribeLoadBalancers (Paginated)
    module Network.AWS.AutoScaling.DescribeLoadBalancers,

    -- ** DeleteAutoScalingGroup
    module Network.AWS.AutoScaling.DeleteAutoScalingGroup,

    -- ** DescribeMetricCollectionTypes
    module Network.AWS.AutoScaling.DescribeMetricCollectionTypes,

    -- ** CreateAutoScalingGroup
    module Network.AWS.AutoScaling.CreateAutoScalingGroup,

    -- ** CompleteLifecycleAction
    module Network.AWS.AutoScaling.CompleteLifecycleAction,

    -- ** AttachInstances
    module Network.AWS.AutoScaling.AttachInstances,

    -- ** SetDesiredCapacity
    module Network.AWS.AutoScaling.SetDesiredCapacity,

    -- ** DescribePolicies (Paginated)
    module Network.AWS.AutoScaling.DescribePolicies,

    -- ** DescribeAutoScalingGroups (Paginated)
    module Network.AWS.AutoScaling.DescribeAutoScalingGroups,

    -- ** DescribeLaunchConfigurations (Paginated)
    module Network.AWS.AutoScaling.DescribeLaunchConfigurations,

    -- ** DescribeNotificationConfigurations (Paginated)
    module Network.AWS.AutoScaling.DescribeNotificationConfigurations,

    -- ** DescribeLifecycleHookTypes
    module Network.AWS.AutoScaling.DescribeLifecycleHookTypes,

    -- ** EnableMetricsCollection
    module Network.AWS.AutoScaling.EnableMetricsCollection,

    -- ** DescribeScalingProcessTypes
    module Network.AWS.AutoScaling.DescribeScalingProcessTypes,

    -- ** DescribeAutoScalingInstances (Paginated)
    module Network.AWS.AutoScaling.DescribeAutoScalingInstances,

    -- ** DisableMetricsCollection
    module Network.AWS.AutoScaling.DisableMetricsCollection,

    -- ** RecordLifecycleActionHeartbeat
    module Network.AWS.AutoScaling.RecordLifecycleActionHeartbeat,

    -- ** BatchDeleteScheduledAction
    module Network.AWS.AutoScaling.BatchDeleteScheduledAction,

    -- ** DescribeLoadBalancerTargetGroups (Paginated)
    module Network.AWS.AutoScaling.DescribeLoadBalancerTargetGroups,

    -- ** CancelInstanceRefresh
    module Network.AWS.AutoScaling.CancelInstanceRefresh,

    -- * Types

    -- ** InstanceMetadataEndpointState
    InstanceMetadataEndpointState (..),

    -- ** InstanceMetadataHTTPTokensState
    InstanceMetadataHTTPTokensState (..),

    -- ** InstanceRefreshStatus
    InstanceRefreshStatus (..),

    -- ** LifecycleState
    LifecycleState (..),

    -- ** MetricStatistic
    MetricStatistic (..),

    -- ** MetricType
    MetricType (..),

    -- ** RefreshStrategy
    RefreshStrategy (..),

    -- ** ScalingActivityStatusCode
    ScalingActivityStatusCode (..),

    -- ** Activity
    Activity,
    activity,
    aStatusMessage,
    aAutoScalingGroupARN,
    aDetails,
    aEndTime,
    aAutoScalingGroupState,
    aDescription,
    aProgress,
    aActivityId,
    aAutoScalingGroupName,
    aCause,
    aStartTime,
    aStatusCode,

    -- ** AdjustmentType
    AdjustmentType,
    adjustmentType,
    atAdjustmentType,

    -- ** Alarm
    Alarm,
    alarm,
    aAlarmARN,
    aAlarmName,

    -- ** AutoScalingGroup
    AutoScalingGroup,
    autoScalingGroup,
    asgStatus,
    asgPlacementGroup,
    asgSuspendedProcesses,
    asgMaxInstanceLifetime,
    asgAutoScalingGroupARN,
    asgLaunchTemplate,
    asgInstances,
    asgLaunchConfigurationName,
    asgMixedInstancesPolicy,
    asgTags,
    asgLoadBalancerNames,
    asgVPCZoneIdentifier,
    asgTargetGroupARNs,
    asgCapacityRebalance,
    asgNewInstancesProtectedFromScaleIn,
    asgServiceLinkedRoleARN,
    asgHealthCheckGracePeriod,
    asgEnabledMetrics,
    asgTerminationPolicies,
    asgAutoScalingGroupName,
    asgMinSize,
    asgMaxSize,
    asgDesiredCapacity,
    asgDefaultCooldown,
    asgAvailabilityZones,
    asgHealthCheckType,
    asgCreatedTime,

    -- ** AutoScalingInstanceDetails
    AutoScalingInstanceDetails,
    autoScalingInstanceDetails,
    asidInstanceType,
    asidLaunchTemplate,
    asidLaunchConfigurationName,
    asidWeightedCapacity,
    asidInstanceId,
    asidAutoScalingGroupName,
    asidAvailabilityZone,
    asidLifecycleState,
    asidHealthStatus,
    asidProtectedFromScaleIn,

    -- ** BlockDeviceMapping
    BlockDeviceMapping,
    blockDeviceMapping,
    bdmEBS,
    bdmNoDevice,
    bdmVirtualName,
    bdmDeviceName,

    -- ** CustomizedMetricSpecification
    CustomizedMetricSpecification,
    customizedMetricSpecification,
    cmsUnit,
    cmsDimensions,
    cmsMetricName,
    cmsNamespace,
    cmsStatistic,

    -- ** EBS
    EBS,
    ebs,
    ebsEncrypted,
    ebsDeleteOnTermination,
    ebsSnapshotId,
    ebsVolumeType,
    ebsVolumeSize,
    ebsIOPS,

    -- ** EnabledMetric
    EnabledMetric,
    enabledMetric,
    emGranularity,
    emMetric,

    -- ** FailedScheduledUpdateGroupActionRequest
    FailedScheduledUpdateGroupActionRequest,
    failedScheduledUpdateGroupActionRequest,
    fsugarErrorMessage,
    fsugarErrorCode,
    fsugarScheduledActionName,

    -- ** Filter
    Filter,
    filter',
    fValues,
    fName,

    -- ** Instance
    Instance,
    instance',
    iInstanceType,
    iLaunchTemplate,
    iLaunchConfigurationName,
    iWeightedCapacity,
    iInstanceId,
    iAvailabilityZone,
    iLifecycleState,
    iHealthStatus,
    iProtectedFromScaleIn,

    -- ** InstanceMetadataOptions
    InstanceMetadataOptions,
    instanceMetadataOptions,
    imoHTTPEndpoint,
    imoHTTPPutResponseHopLimit,
    imoHTTPTokens,

    -- ** InstanceMonitoring
    InstanceMonitoring,
    instanceMonitoring,
    imEnabled,

    -- ** InstanceRefresh
    InstanceRefresh,
    instanceRefresh,
    irStatus,
    irInstanceRefreshId,
    irPercentageComplete,
    irStartTime,
    irEndTime,
    irInstancesToUpdate,
    irStatusReason,
    irAutoScalingGroupName,

    -- ** InstancesDistribution
    InstancesDistribution,
    instancesDistribution,
    idSpotMaxPrice,
    idSpotInstancePools,
    idSpotAllocationStrategy,
    idOnDemandPercentageAboveBaseCapacity,
    idOnDemandAllocationStrategy,
    idOnDemandBaseCapacity,

    -- ** LaunchConfiguration
    LaunchConfiguration,
    launchConfiguration,
    lcEBSOptimized,
    lcUserData,
    lcRAMDiskId,
    lcClassicLinkVPCSecurityGroups,
    lcSpotPrice,
    lcAssociatePublicIPAddress,
    lcSecurityGroups,
    lcIAMInstanceProfile,
    lcClassicLinkVPCId,
    lcBlockDeviceMappings,
    lcKernelId,
    lcPlacementTenancy,
    lcKeyName,
    lcLaunchConfigurationARN,
    lcInstanceMonitoring,
    lcMetadataOptions,
    lcLaunchConfigurationName,
    lcImageId,
    lcInstanceType,
    lcCreatedTime,

    -- ** LaunchTemplate
    LaunchTemplate,
    launchTemplate,
    ltLaunchTemplateSpecification,
    ltOverrides,

    -- ** LaunchTemplateOverrides
    LaunchTemplateOverrides,
    launchTemplateOverrides,
    ltoInstanceType,
    ltoLaunchTemplateSpecification,
    ltoWeightedCapacity,

    -- ** LaunchTemplateSpecification
    LaunchTemplateSpecification,
    launchTemplateSpecification,
    ltsLaunchTemplateId,
    ltsLaunchTemplateName,
    ltsVersion,

    -- ** LifecycleHook
    LifecycleHook,
    lifecycleHook,
    lhRoleARN,
    lhNotificationTargetARN,
    lhLifecycleTransition,
    lhHeartbeatTimeout,
    lhGlobalTimeout,
    lhNotificationMetadata,
    lhDefaultResult,
    lhLifecycleHookName,
    lhAutoScalingGroupName,

    -- ** LifecycleHookSpecification
    LifecycleHookSpecification,
    lifecycleHookSpecification,
    lhsRoleARN,
    lhsNotificationTargetARN,
    lhsHeartbeatTimeout,
    lhsNotificationMetadata,
    lhsDefaultResult,
    lhsLifecycleHookName,
    lhsLifecycleTransition,

    -- ** LoadBalancerState
    LoadBalancerState,
    loadBalancerState,
    lbsState,
    lbsLoadBalancerName,

    -- ** LoadBalancerTargetGroupState
    LoadBalancerTargetGroupState,
    loadBalancerTargetGroupState,
    lbtgsState,
    lbtgsLoadBalancerTargetGroupARN,

    -- ** MetricCollectionType
    MetricCollectionType,
    metricCollectionType,
    mctMetric,

    -- ** MetricDimension
    MetricDimension,
    metricDimension,
    mdName,
    mdValue,

    -- ** MetricGranularityType
    MetricGranularityType,
    metricGranularityType,
    mgtGranularity,

    -- ** MixedInstancesPolicy
    MixedInstancesPolicy,
    mixedInstancesPolicy,
    mipInstancesDistribution,
    mipLaunchTemplate,

    -- ** NotificationConfiguration
    NotificationConfiguration,
    notificationConfiguration,
    ncNotificationType,
    ncTopicARN,
    ncAutoScalingGroupName,

    -- ** PredefinedMetricSpecification
    PredefinedMetricSpecification,
    predefinedMetricSpecification,
    pmsResourceLabel,
    pmsPredefinedMetricType,

    -- ** ProcessType
    ProcessType,
    processType,
    ptProcessName,

    -- ** RefreshPreferences
    RefreshPreferences,
    refreshPreferences,
    rpMinHealthyPercentage,
    rpInstanceWarmup,

    -- ** ScalingPolicy
    ScalingPolicy,
    scalingPolicy,
    sPolicyName,
    sStepAdjustments,
    sTargetTrackingConfiguration,
    sMetricAggregationType,
    sPolicyType,
    sCooldown,
    sEnabled,
    sScalingAdjustment,
    sAdjustmentType,
    sMinAdjustmentStep,
    sEstimatedInstanceWarmup,
    sMinAdjustmentMagnitude,
    sAlarms,
    sPolicyARN,
    sAutoScalingGroupName,

    -- ** ScalingProcessQuery
    ScalingProcessQuery,
    scalingProcessQuery,
    spqScalingProcesses,
    spqAutoScalingGroupName,

    -- ** ScheduledUpdateGroupAction
    ScheduledUpdateGroupAction,
    scheduledUpdateGroupAction,
    sugaMinSize,
    sugaDesiredCapacity,
    sugaStartTime,
    sugaScheduledActionARN,
    sugaEndTime,
    sugaRecurrence,
    sugaMaxSize,
    sugaScheduledActionName,
    sugaTime,
    sugaAutoScalingGroupName,

    -- ** ScheduledUpdateGroupActionRequest
    ScheduledUpdateGroupActionRequest,
    scheduledUpdateGroupActionRequest,
    sugarMinSize,
    sugarDesiredCapacity,
    sugarStartTime,
    sugarEndTime,
    sugarRecurrence,
    sugarMaxSize,
    sugarScheduledActionName,

    -- ** StepAdjustment
    StepAdjustment,
    stepAdjustment,
    saMetricIntervalUpperBound,
    saMetricIntervalLowerBound,
    saScalingAdjustment,

    -- ** SuspendedProcess
    SuspendedProcess,
    suspendedProcess,
    spProcessName,
    spSuspensionReason,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagResourceId,
    tagResourceType,
    tagPropagateAtLaunch,
    tagValue,

    -- ** TagDescription
    TagDescription,
    tagDescription,
    tdResourceId,
    tdResourceType,
    tdKey,
    tdPropagateAtLaunch,
    tdValue,

    -- ** TargetTrackingConfiguration
    TargetTrackingConfiguration,
    targetTrackingConfiguration,
    ttcDisableScaleIn,
    ttcPredefinedMetricSpecification,
    ttcCustomizedMetricSpecification,
    ttcTargetValue,
  )
where

import Network.AWS.AutoScaling.AttachInstances
import Network.AWS.AutoScaling.AttachLoadBalancerTargetGroups
import Network.AWS.AutoScaling.AttachLoadBalancers
import Network.AWS.AutoScaling.BatchDeleteScheduledAction
import Network.AWS.AutoScaling.BatchPutScheduledUpdateGroupAction
import Network.AWS.AutoScaling.CancelInstanceRefresh
import Network.AWS.AutoScaling.CompleteLifecycleAction
import Network.AWS.AutoScaling.CreateAutoScalingGroup
import Network.AWS.AutoScaling.CreateLaunchConfiguration
import Network.AWS.AutoScaling.CreateOrUpdateTags
import Network.AWS.AutoScaling.DeleteAutoScalingGroup
import Network.AWS.AutoScaling.DeleteLaunchConfiguration
import Network.AWS.AutoScaling.DeleteLifecycleHook
import Network.AWS.AutoScaling.DeleteNotificationConfiguration
import Network.AWS.AutoScaling.DeletePolicy
import Network.AWS.AutoScaling.DeleteScheduledAction
import Network.AWS.AutoScaling.DeleteTags
import Network.AWS.AutoScaling.DescribeAccountLimits
import Network.AWS.AutoScaling.DescribeAdjustmentTypes
import Network.AWS.AutoScaling.DescribeAutoScalingGroups
import Network.AWS.AutoScaling.DescribeAutoScalingInstances
import Network.AWS.AutoScaling.DescribeAutoScalingNotificationTypes
import Network.AWS.AutoScaling.DescribeInstanceRefreshes
import Network.AWS.AutoScaling.DescribeLaunchConfigurations
import Network.AWS.AutoScaling.DescribeLifecycleHookTypes
import Network.AWS.AutoScaling.DescribeLifecycleHooks
import Network.AWS.AutoScaling.DescribeLoadBalancerTargetGroups
import Network.AWS.AutoScaling.DescribeLoadBalancers
import Network.AWS.AutoScaling.DescribeMetricCollectionTypes
import Network.AWS.AutoScaling.DescribeNotificationConfigurations
import Network.AWS.AutoScaling.DescribePolicies
import Network.AWS.AutoScaling.DescribeScalingActivities
import Network.AWS.AutoScaling.DescribeScalingProcessTypes
import Network.AWS.AutoScaling.DescribeScheduledActions
import Network.AWS.AutoScaling.DescribeTags
import Network.AWS.AutoScaling.DescribeTerminationPolicyTypes
import Network.AWS.AutoScaling.DetachInstances
import Network.AWS.AutoScaling.DetachLoadBalancerTargetGroups
import Network.AWS.AutoScaling.DetachLoadBalancers
import Network.AWS.AutoScaling.DisableMetricsCollection
import Network.AWS.AutoScaling.EnableMetricsCollection
import Network.AWS.AutoScaling.EnterStandby
import Network.AWS.AutoScaling.ExecutePolicy
import Network.AWS.AutoScaling.ExitStandby
import Network.AWS.AutoScaling.PutLifecycleHook
import Network.AWS.AutoScaling.PutNotificationConfiguration
import Network.AWS.AutoScaling.PutScalingPolicy
import Network.AWS.AutoScaling.PutScheduledUpdateGroupAction
import Network.AWS.AutoScaling.RecordLifecycleActionHeartbeat
import Network.AWS.AutoScaling.ResumeProcesses
import Network.AWS.AutoScaling.SetDesiredCapacity
import Network.AWS.AutoScaling.SetInstanceHealth
import Network.AWS.AutoScaling.SetInstanceProtection
import Network.AWS.AutoScaling.StartInstanceRefresh
import Network.AWS.AutoScaling.SuspendProcesses
import Network.AWS.AutoScaling.TerminateInstanceInAutoScalingGroup
import Network.AWS.AutoScaling.Types
import Network.AWS.AutoScaling.UpdateAutoScalingGroup
import Network.AWS.AutoScaling.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'AutoScaling'.

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
