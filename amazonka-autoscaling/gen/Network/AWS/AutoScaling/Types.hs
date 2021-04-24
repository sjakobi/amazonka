{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types
  ( -- * Service Configuration
    autoScaling,

    -- * Errors
    _AlreadyExistsFault,
    _ResourceInUseFault,
    _LimitExceededFault,
    _InstanceRefreshInProgressFault,
    _ScalingActivityInProgressFault,
    _ActiveInstanceRefreshNotFoundFault,
    _ResourceContentionFault,
    _ServiceLinkedRoleFailure,
    _InvalidNextToken,

    -- * InstanceMetadataEndpointState
    InstanceMetadataEndpointState (..),

    -- * InstanceMetadataHTTPTokensState
    InstanceMetadataHTTPTokensState (..),

    -- * InstanceRefreshStatus
    InstanceRefreshStatus (..),

    -- * LifecycleState
    LifecycleState (..),

    -- * MetricStatistic
    MetricStatistic (..),

    -- * MetricType
    MetricType (..),

    -- * RefreshStrategy
    RefreshStrategy (..),

    -- * ScalingActivityStatusCode
    ScalingActivityStatusCode (..),

    -- * Activity
    Activity (..),
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

    -- * AdjustmentType
    AdjustmentType (..),
    adjustmentType,
    atAdjustmentType,

    -- * Alarm
    Alarm (..),
    alarm,
    aAlarmARN,
    aAlarmName,

    -- * AutoScalingGroup
    AutoScalingGroup (..),
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

    -- * AutoScalingInstanceDetails
    AutoScalingInstanceDetails (..),
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

    -- * BlockDeviceMapping
    BlockDeviceMapping (..),
    blockDeviceMapping,
    bdmEBS,
    bdmNoDevice,
    bdmVirtualName,
    bdmDeviceName,

    -- * CustomizedMetricSpecification
    CustomizedMetricSpecification (..),
    customizedMetricSpecification,
    cmsUnit,
    cmsDimensions,
    cmsMetricName,
    cmsNamespace,
    cmsStatistic,

    -- * EBS
    EBS (..),
    ebs,
    ebsEncrypted,
    ebsDeleteOnTermination,
    ebsSnapshotId,
    ebsVolumeType,
    ebsVolumeSize,
    ebsIOPS,

    -- * EnabledMetric
    EnabledMetric (..),
    enabledMetric,
    emGranularity,
    emMetric,

    -- * FailedScheduledUpdateGroupActionRequest
    FailedScheduledUpdateGroupActionRequest (..),
    failedScheduledUpdateGroupActionRequest,
    fsugarErrorMessage,
    fsugarErrorCode,
    fsugarScheduledActionName,

    -- * Filter
    Filter (..),
    filter',
    fValues,
    fName,

    -- * Instance
    Instance (..),
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

    -- * InstanceMetadataOptions
    InstanceMetadataOptions (..),
    instanceMetadataOptions,
    imoHTTPEndpoint,
    imoHTTPPutResponseHopLimit,
    imoHTTPTokens,

    -- * InstanceMonitoring
    InstanceMonitoring (..),
    instanceMonitoring,
    imEnabled,

    -- * InstanceRefresh
    InstanceRefresh (..),
    instanceRefresh,
    irStatus,
    irInstanceRefreshId,
    irPercentageComplete,
    irStartTime,
    irEndTime,
    irInstancesToUpdate,
    irStatusReason,
    irAutoScalingGroupName,

    -- * InstancesDistribution
    InstancesDistribution (..),
    instancesDistribution,
    idSpotMaxPrice,
    idSpotInstancePools,
    idSpotAllocationStrategy,
    idOnDemandPercentageAboveBaseCapacity,
    idOnDemandAllocationStrategy,
    idOnDemandBaseCapacity,

    -- * LaunchConfiguration
    LaunchConfiguration (..),
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

    -- * LaunchTemplate
    LaunchTemplate (..),
    launchTemplate,
    ltLaunchTemplateSpecification,
    ltOverrides,

    -- * LaunchTemplateOverrides
    LaunchTemplateOverrides (..),
    launchTemplateOverrides,
    ltoInstanceType,
    ltoLaunchTemplateSpecification,
    ltoWeightedCapacity,

    -- * LaunchTemplateSpecification
    LaunchTemplateSpecification (..),
    launchTemplateSpecification,
    ltsLaunchTemplateId,
    ltsLaunchTemplateName,
    ltsVersion,

    -- * LifecycleHook
    LifecycleHook (..),
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

    -- * LifecycleHookSpecification
    LifecycleHookSpecification (..),
    lifecycleHookSpecification,
    lhsRoleARN,
    lhsNotificationTargetARN,
    lhsHeartbeatTimeout,
    lhsNotificationMetadata,
    lhsDefaultResult,
    lhsLifecycleHookName,
    lhsLifecycleTransition,

    -- * LoadBalancerState
    LoadBalancerState (..),
    loadBalancerState,
    lbsState,
    lbsLoadBalancerName,

    -- * LoadBalancerTargetGroupState
    LoadBalancerTargetGroupState (..),
    loadBalancerTargetGroupState,
    lbtgsState,
    lbtgsLoadBalancerTargetGroupARN,

    -- * MetricCollectionType
    MetricCollectionType (..),
    metricCollectionType,
    mctMetric,

    -- * MetricDimension
    MetricDimension (..),
    metricDimension,
    mdName,
    mdValue,

    -- * MetricGranularityType
    MetricGranularityType (..),
    metricGranularityType,
    mgtGranularity,

    -- * MixedInstancesPolicy
    MixedInstancesPolicy (..),
    mixedInstancesPolicy,
    mipInstancesDistribution,
    mipLaunchTemplate,

    -- * NotificationConfiguration
    NotificationConfiguration (..),
    notificationConfiguration,
    ncNotificationType,
    ncTopicARN,
    ncAutoScalingGroupName,

    -- * PredefinedMetricSpecification
    PredefinedMetricSpecification (..),
    predefinedMetricSpecification,
    pmsResourceLabel,
    pmsPredefinedMetricType,

    -- * ProcessType
    ProcessType (..),
    processType,
    ptProcessName,

    -- * RefreshPreferences
    RefreshPreferences (..),
    refreshPreferences,
    rpMinHealthyPercentage,
    rpInstanceWarmup,

    -- * ScalingPolicy
    ScalingPolicy (..),
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

    -- * ScalingProcessQuery
    ScalingProcessQuery (..),
    scalingProcessQuery,
    spqScalingProcesses,
    spqAutoScalingGroupName,

    -- * ScheduledUpdateGroupAction
    ScheduledUpdateGroupAction (..),
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

    -- * ScheduledUpdateGroupActionRequest
    ScheduledUpdateGroupActionRequest (..),
    scheduledUpdateGroupActionRequest,
    sugarMinSize,
    sugarDesiredCapacity,
    sugarStartTime,
    sugarEndTime,
    sugarRecurrence,
    sugarMaxSize,
    sugarScheduledActionName,

    -- * StepAdjustment
    StepAdjustment (..),
    stepAdjustment,
    saMetricIntervalUpperBound,
    saMetricIntervalLowerBound,
    saScalingAdjustment,

    -- * SuspendedProcess
    SuspendedProcess (..),
    suspendedProcess,
    spProcessName,
    spSuspensionReason,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagResourceId,
    tagResourceType,
    tagPropagateAtLaunch,
    tagValue,

    -- * TagDescription
    TagDescription (..),
    tagDescription,
    tdResourceId,
    tdResourceType,
    tdKey,
    tdPropagateAtLaunch,
    tdValue,

    -- * TargetTrackingConfiguration
    TargetTrackingConfiguration (..),
    targetTrackingConfiguration,
    ttcDisableScaleIn,
    ttcPredefinedMetricSpecification,
    ttcCustomizedMetricSpecification,
    ttcTargetValue,
  )
where

import Network.AWS.AutoScaling.Types.Activity
import Network.AWS.AutoScaling.Types.AdjustmentType
import Network.AWS.AutoScaling.Types.Alarm
import Network.AWS.AutoScaling.Types.AutoScalingGroup
import Network.AWS.AutoScaling.Types.AutoScalingInstanceDetails
import Network.AWS.AutoScaling.Types.BlockDeviceMapping
import Network.AWS.AutoScaling.Types.CustomizedMetricSpecification
import Network.AWS.AutoScaling.Types.EBS
import Network.AWS.AutoScaling.Types.EnabledMetric
import Network.AWS.AutoScaling.Types.FailedScheduledUpdateGroupActionRequest
import Network.AWS.AutoScaling.Types.Filter
import Network.AWS.AutoScaling.Types.Instance
import Network.AWS.AutoScaling.Types.InstanceMetadataEndpointState
import Network.AWS.AutoScaling.Types.InstanceMetadataHTTPTokensState
import Network.AWS.AutoScaling.Types.InstanceMetadataOptions
import Network.AWS.AutoScaling.Types.InstanceMonitoring
import Network.AWS.AutoScaling.Types.InstanceRefresh
import Network.AWS.AutoScaling.Types.InstanceRefreshStatus
import Network.AWS.AutoScaling.Types.InstancesDistribution
import Network.AWS.AutoScaling.Types.LaunchConfiguration
import Network.AWS.AutoScaling.Types.LaunchTemplate
import Network.AWS.AutoScaling.Types.LaunchTemplateOverrides
import Network.AWS.AutoScaling.Types.LaunchTemplateSpecification
import Network.AWS.AutoScaling.Types.LifecycleHook
import Network.AWS.AutoScaling.Types.LifecycleHookSpecification
import Network.AWS.AutoScaling.Types.LifecycleState
import Network.AWS.AutoScaling.Types.LoadBalancerState
import Network.AWS.AutoScaling.Types.LoadBalancerTargetGroupState
import Network.AWS.AutoScaling.Types.MetricCollectionType
import Network.AWS.AutoScaling.Types.MetricDimension
import Network.AWS.AutoScaling.Types.MetricGranularityType
import Network.AWS.AutoScaling.Types.MetricStatistic
import Network.AWS.AutoScaling.Types.MetricType
import Network.AWS.AutoScaling.Types.MixedInstancesPolicy
import Network.AWS.AutoScaling.Types.NotificationConfiguration
import Network.AWS.AutoScaling.Types.PredefinedMetricSpecification
import Network.AWS.AutoScaling.Types.ProcessType
import Network.AWS.AutoScaling.Types.RefreshPreferences
import Network.AWS.AutoScaling.Types.RefreshStrategy
import Network.AWS.AutoScaling.Types.ScalingActivityStatusCode
import Network.AWS.AutoScaling.Types.ScalingPolicy
import Network.AWS.AutoScaling.Types.ScalingProcessQuery
import Network.AWS.AutoScaling.Types.ScheduledUpdateGroupAction
import Network.AWS.AutoScaling.Types.ScheduledUpdateGroupActionRequest
import Network.AWS.AutoScaling.Types.StepAdjustment
import Network.AWS.AutoScaling.Types.SuspendedProcess
import Network.AWS.AutoScaling.Types.Tag
import Network.AWS.AutoScaling.Types.TagDescription
import Network.AWS.AutoScaling.Types.TargetTrackingConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2011-01-01@ of the Amazon Auto Scaling SDK configuration.
autoScaling :: Service
autoScaling =
  Service
    { _svcAbbrev = "AutoScaling",
      _svcSigner = v4,
      _svcPrefix = "autoscaling",
      _svcVersion = "2011-01-01",
      _svcEndpoint = defaultEndpoint autoScaling,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "AutoScaling",
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

-- | You already have an Auto Scaling group or launch configuration with this name.
_AlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_AlreadyExistsFault =
  _MatchServiceError autoScaling "AlreadyExists"
    . hasStatus 400

-- | The operation can't be performed because the resource is in use.
_ResourceInUseFault :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseFault =
  _MatchServiceError autoScaling "ResourceInUse"
    . hasStatus 400

-- | You have already reached a limit for your Amazon EC2 Auto Scaling resources (for example, Auto Scaling groups, launch configurations, or lifecycle hooks). For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html DescribeAccountLimits> in the /Amazon EC2 Auto Scaling API Reference/ .
_LimitExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededFault =
  _MatchServiceError autoScaling "LimitExceeded"
    . hasStatus 400

-- | The request failed because an active instance refresh operation already exists for the specified Auto Scaling group.
_InstanceRefreshInProgressFault :: AsError a => Getting (First ServiceError) a ServiceError
_InstanceRefreshInProgressFault =
  _MatchServiceError
    autoScaling
    "InstanceRefreshInProgress"
    . hasStatus 400

-- | The operation can't be performed because there are scaling activities in progress.
_ScalingActivityInProgressFault :: AsError a => Getting (First ServiceError) a ServiceError
_ScalingActivityInProgressFault =
  _MatchServiceError
    autoScaling
    "ScalingActivityInProgress"
    . hasStatus 400

-- | The request failed because an active instance refresh for the specified Auto Scaling group was not found.
_ActiveInstanceRefreshNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ActiveInstanceRefreshNotFoundFault =
  _MatchServiceError
    autoScaling
    "ActiveInstanceRefreshNotFound"
    . hasStatus 400

-- | You already have a pending update to an Amazon EC2 Auto Scaling resource (for example, an Auto Scaling group, instance, or load balancer).
_ResourceContentionFault :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceContentionFault =
  _MatchServiceError autoScaling "ResourceContention"
    . hasStatus 500

-- | The service-linked role is not yet ready for use.
_ServiceLinkedRoleFailure :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceLinkedRoleFailure =
  _MatchServiceError
    autoScaling
    "ServiceLinkedRoleFailure"
    . hasStatus 500

-- | The @NextToken@ value is not valid.
_InvalidNextToken :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextToken =
  _MatchServiceError autoScaling "InvalidNextToken"
    . hasStatus 400
