{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types
  ( -- * Service Configuration
    codeDeploy,

    -- * Errors
    _DeploymentGroupLimitExceededException,
    _InstanceNameAlreadyRegisteredException,
    _DeploymentGroupAlreadyExistsException,
    _BucketNameFilterRequiredException,
    _RevisionDoesNotExistException,
    _DeploymentConfigDoesNotExistException,
    _InvalidInstanceTypeException,
    _InvalidIAMUserARNException,
    _InvalidFileExistsBehaviorException,
    _InvalidTagFilterException,
    _DeploymentTargetDoesNotExistException,
    _InvalidTriggerConfigException,
    _AlarmsLimitExceededException,
    _DeploymentAlreadyStartedException,
    _InvalidKeyPrefixFilterException,
    _ARNNotSupportedException,
    _OperationNotSupportedException,
    _InvalidGitHubAccountTokenException,
    _InvalidExternalIdException,
    _InvalidMinimumHealthyHostValueException,
    _UnsupportedActionForDeploymentTypeException,
    _InvalidECSServiceException,
    _ResourceValidationException,
    _InvalidDeploymentInstanceTypeException,
    _InvalidGitHubAccountTokenNameException,
    _InvalidOperationException,
    _ApplicationAlreadyExistsException,
    _DeploymentTargetIdRequiredException,
    _InvalidARNException,
    _TagLimitExceededException,
    _InvalidAutoScalingGroupException,
    _ApplicationLimitExceededException,
    _InvalidInputException,
    _InstanceLimitExceededException,
    _IAMUserARNAlreadyRegisteredException,
    _InstanceNameRequiredException,
    _DeploymentLimitExceededException,
    _InvalidTargetFilterNameException,
    _InvalidTargetInstancesException,
    _InvalidRevisionException,
    _InvalidTagsToAddException,
    _InvalidAutoRollbackConfigException,
    _DeploymentIdRequiredException,
    _InvalidRoleException,
    _DeploymentConfigAlreadyExistsException,
    _InvalidNextTokenException,
    _InstanceIdRequiredException,
    _InvalidBlueGreenDeploymentConfigurationException,
    _DeploymentConfigLimitExceededException,
    _InvalidLoadBalancerInfoException,
    _InvalidSortOrderException,
    _ThrottlingException,
    _InvalidTargetGroupPairException,
    _DeploymentConfigNameRequiredException,
    _InvalidOnPremisesTagCombinationException,
    _InvalidAlarmConfigException,
    _InvalidSortByException,
    _InvalidTrafficRoutingConfigurationException,
    _DescriptionTooLongException,
    _IAMUserARNRequiredException,
    _IAMSessionARNAlreadyRegisteredException,
    _InvalidDeploymentGroupNameException,
    _InvalidBucketNameFilterException,
    _InvalidTargetException,
    _DeploymentGroupNameRequiredException,
    _InvalidTimeRangeException,
    _TagRequiredException,
    _InvalidIgnoreApplicationStopFailuresValueException,
    _InvalidUpdateOutdatedInstancesOnlyValueException,
    _InvalidTagException,
    _InvalidDeploymentWaitTypeException,
    _InvalidComputePlatformException,
    _LifecycleHookLimitExceededException,
    _InvalidLifecycleEventHookExecutionStatusException,
    _ResourceARNRequiredException,
    _InvalidEC2TagCombinationException,
    _IAMARNRequiredException,
    _GitHubAccountTokenNameRequiredException,
    _LifecycleEventAlreadyCompletedException,
    _ApplicationDoesNotExistException,
    _MultipleIAMARNsProvidedException,
    _InvalidDeploymentTargetIdException,
    _InvalidRegistrationStatusException,
    _InstanceNotRegisteredException,
    _InvalidDeployedStateFilterException,
    _InvalidInstanceStatusException,
    _ApplicationNameRequiredException,
    _InvalidDeploymentStatusException,
    _TriggerTargetsLimitExceededException,
    _TagSetListLimitExceededException,
    _GitHubAccountTokenDoesNotExistException,
    _InvalidApplicationNameException,
    _DeploymentTargetListSizeExceededException,
    _DeploymentConfigInUseException,
    _InvalidInstanceNameException,
    _InvalidIAMSessionARNException,
    _InvalidLifecycleEventHookExecutionIdException,
    _InvalidEC2TagException,
    _InvalidDeploymentConfigIdException,
    _InvalidDeploymentStyleException,
    _RevisionRequiredException,
    _InstanceDoesNotExistException,
    _DeploymentAlreadyCompletedException,
    _ECSServiceMappingLimitExceededException,
    _DeploymentDoesNotExistException,
    _BatchLimitExceededException,
    _InvalidDeploymentIdException,
    _InvalidDeploymentConfigNameException,
    _DeploymentNotStartedException,
    _DeploymentIsNotInReadyStateException,
    _InvalidInstanceIdException,
    _DeploymentGroupDoesNotExistException,
    _RoleRequiredException,

    -- * ApplicationRevisionSortBy
    ApplicationRevisionSortBy (..),

    -- * AutoRollbackEvent
    AutoRollbackEvent (..),

    -- * BundleType
    BundleType (..),

    -- * ComputePlatform
    ComputePlatform (..),

    -- * DeployErrorCode
    DeployErrorCode (..),

    -- * DeploymentCreator
    DeploymentCreator (..),

    -- * DeploymentOption
    DeploymentOption (..),

    -- * DeploymentReadyAction
    DeploymentReadyAction (..),

    -- * DeploymentStatus
    DeploymentStatus (..),

    -- * DeploymentTargetType
    DeploymentTargetType (..),

    -- * DeploymentType
    DeploymentType (..),

    -- * DeploymentWaitType
    DeploymentWaitType (..),

    -- * EC2TagFilterType
    EC2TagFilterType (..),

    -- * FileExistsBehavior
    FileExistsBehavior (..),

    -- * GreenFleetProvisioningAction
    GreenFleetProvisioningAction (..),

    -- * InstanceAction
    InstanceAction (..),

    -- * LifecycleErrorCode
    LifecycleErrorCode (..),

    -- * LifecycleEventStatus
    LifecycleEventStatus (..),

    -- * ListStateFilterAction
    ListStateFilterAction (..),

    -- * MinimumHealthyHostsType
    MinimumHealthyHostsType (..),

    -- * RegistrationStatus
    RegistrationStatus (..),

    -- * RevisionLocationType
    RevisionLocationType (..),

    -- * SortOrder
    SortOrder (..),

    -- * StopStatus
    StopStatus (..),

    -- * TagFilterType
    TagFilterType (..),

    -- * TargetFilterName
    TargetFilterName (..),

    -- * TargetLabel
    TargetLabel (..),

    -- * TargetStatus
    TargetStatus (..),

    -- * TrafficRoutingType
    TrafficRoutingType (..),

    -- * TriggerEventType
    TriggerEventType (..),

    -- * Alarm
    Alarm (..),
    alarm,
    aName,

    -- * AlarmConfiguration
    AlarmConfiguration (..),
    alarmConfiguration,
    acIgnorePollAlarmFailure,
    acEnabled,
    acAlarms,

    -- * AppSpecContent
    AppSpecContent (..),
    appSpecContent,
    ascContent,
    ascSha256,

    -- * ApplicationInfo
    ApplicationInfo (..),
    applicationInfo,
    aiApplicationId,
    aiLinkedToGitHub,
    aiGitHubAccountName,
    aiCreateTime,
    aiApplicationName,
    aiComputePlatform,

    -- * AutoRollbackConfiguration
    AutoRollbackConfiguration (..),
    autoRollbackConfiguration,
    arcEnabled,
    arcEvents,

    -- * AutoScalingGroup
    AutoScalingGroup (..),
    autoScalingGroup,
    asgHook,
    asgName,

    -- * BlueGreenDeploymentConfiguration
    BlueGreenDeploymentConfiguration (..),
    blueGreenDeploymentConfiguration,
    bgdcGreenFleetProvisioningOption,
    bgdcDeploymentReadyOption,
    bgdcTerminateBlueInstancesOnDeploymentSuccess,

    -- * BlueInstanceTerminationOption
    BlueInstanceTerminationOption (..),
    blueInstanceTerminationOption,
    bitoAction,
    bitoTerminationWaitTimeInMinutes,

    -- * CloudFormationTarget
    CloudFormationTarget (..),
    cloudFormationTarget,
    cftDeploymentId,
    cftStatus,
    cftTargetId,
    cftTargetVersionWeight,
    cftResourceType,
    cftLifecycleEvents,
    cftLastUpdatedAt,

    -- * DeploymentConfigInfo
    DeploymentConfigInfo (..),
    deploymentConfigInfo,
    dciDeploymentConfigName,
    dciDeploymentConfigId,
    dciCreateTime,
    dciTrafficRoutingConfig,
    dciMinimumHealthyHosts,
    dciComputePlatform,

    -- * DeploymentGroupInfo
    DeploymentGroupInfo (..),
    deploymentGroupInfo,
    dgiOnPremisesTagSet,
    dgiServiceRoleARN,
    dgiDeploymentConfigName,
    dgiAutoRollbackConfiguration,
    dgiDeploymentGroupName,
    dgiTriggerConfigurations,
    dgiDeploymentGroupId,
    dgiEc2TagFilters,
    dgiTargetRevision,
    dgiLastSuccessfulDeployment,
    dgiLastAttemptedDeployment,
    dgiOnPremisesInstanceTagFilters,
    dgiLoadBalancerInfo,
    dgiEc2TagSet,
    dgiBlueGreenDeploymentConfiguration,
    dgiAutoScalingGroups,
    dgiDeploymentStyle,
    dgiAlarmConfiguration,
    dgiEcsServices,
    dgiApplicationName,
    dgiComputePlatform,

    -- * DeploymentInfo
    DeploymentInfo (..),
    deploymentInfo,
    diDeploymentId,
    diStatus,
    diDeploymentConfigName,
    diIgnoreApplicationStopFailures,
    diUpdateOutdatedInstancesOnly,
    diAutoRollbackConfiguration,
    diDeploymentGroupName,
    diTargetInstances,
    diStartTime,
    diInstanceTerminationWaitTimeStarted,
    diPreviousRevision,
    diLoadBalancerInfo,
    diCompleteTime,
    diErrorInformation,
    diBlueGreenDeploymentConfiguration,
    diCreator,
    diCreateTime,
    diDescription,
    diDeploymentStyle,
    diRevision,
    diRollbackInfo,
    diExternalId,
    diApplicationName,
    diDeploymentStatusMessages,
    diFileExistsBehavior,
    diAdditionalDeploymentStatusInfo,
    diDeploymentOverview,
    diComputePlatform,

    -- * DeploymentOverview
    DeploymentOverview (..),
    deploymentOverview,
    doSucceeded,
    doReady,
    doPending,
    doFailed,
    doSkipped,
    doInProgress,

    -- * DeploymentReadyOption
    DeploymentReadyOption (..),
    deploymentReadyOption,
    droWaitTimeInMinutes,
    droActionOnTimeout,

    -- * DeploymentStyle
    DeploymentStyle (..),
    deploymentStyle,
    dsDeploymentType,
    dsDeploymentOption,

    -- * DeploymentTarget
    DeploymentTarget (..),
    deploymentTarget,
    dtEcsTarget,
    dtLambdaTarget,
    dtCloudFormationTarget,
    dtInstanceTarget,
    dtDeploymentTargetType,

    -- * Diagnostics
    Diagnostics (..),
    diagnostics,
    dLogTail,
    dMessage,
    dScriptName,
    dErrorCode,

    -- * EC2TagFilter
    EC2TagFilter (..),
    ec2TagFilter,
    etfKey,
    etfValue,
    etfType,

    -- * EC2TagSet
    EC2TagSet (..),
    ec2TagSet,
    etsEc2TagSetList,

    -- * ECSService
    ECSService (..),
    eCSService,
    ecssServiceName,
    ecssClusterName,

    -- * ECSTarget
    ECSTarget (..),
    eCSTarget,
    ecstDeploymentId,
    ecstStatus,
    ecstTargetId,
    ecstTaskSetsInfo,
    ecstTargetARN,
    ecstLifecycleEvents,
    ecstLastUpdatedAt,

    -- * ECSTaskSet
    ECSTaskSet (..),
    eCSTaskSet,
    ecstsStatus,
    ecstsRunningCount,
    ecstsDesiredCount,
    ecstsPendingCount,
    ecstsTaskSetLabel,
    ecstsTargetGroup,
    ecstsTrafficWeight,
    ecstsIdentifer,

    -- * ELBInfo
    ELBInfo (..),
    eLBInfo,
    elbiName,

    -- * ErrorInformation
    ErrorInformation (..),
    errorInformation,
    eiMessage,
    eiCode,

    -- * GenericRevisionInfo
    GenericRevisionInfo (..),
    genericRevisionInfo,
    griRegisterTime,
    griDeploymentGroups,
    griDescription,
    griFirstUsedTime,
    griLastUsedTime,

    -- * GitHubLocation
    GitHubLocation (..),
    gitHubLocation,
    ghlCommitId,
    ghlRepository,

    -- * GreenFleetProvisioningOption
    GreenFleetProvisioningOption (..),
    greenFleetProvisioningOption,
    gfpoAction,

    -- * InstanceInfo
    InstanceInfo (..),
    instanceInfo,
    iiRegisterTime,
    iiIamUserARN,
    iiInstanceName,
    iiInstanceARN,
    iiTags,
    iiIamSessionARN,
    iiDeregisterTime,

    -- * InstanceTarget
    InstanceTarget (..),
    instanceTarget,
    itDeploymentId,
    itStatus,
    itTargetId,
    itInstanceLabel,
    itTargetARN,
    itLifecycleEvents,
    itLastUpdatedAt,

    -- * LambdaFunctionInfo
    LambdaFunctionInfo (..),
    lambdaFunctionInfo,
    lfiFunctionAlias,
    lfiTargetVersion,
    lfiTargetVersionWeight,
    lfiCurrentVersion,
    lfiFunctionName,

    -- * LambdaTarget
    LambdaTarget (..),
    lambdaTarget,
    ltDeploymentId,
    ltStatus,
    ltTargetId,
    ltTargetARN,
    ltLifecycleEvents,
    ltLambdaFunctionInfo,
    ltLastUpdatedAt,

    -- * LastDeploymentInfo
    LastDeploymentInfo (..),
    lastDeploymentInfo,
    ldiDeploymentId,
    ldiStatus,
    ldiEndTime,
    ldiCreateTime,

    -- * LifecycleEvent
    LifecycleEvent (..),
    lifecycleEvent,
    leStatus,
    leDiagnostics,
    leStartTime,
    leEndTime,
    leLifecycleEventName,

    -- * LoadBalancerInfo
    LoadBalancerInfo (..),
    loadBalancerInfo,
    lbiTargetGroupPairInfoList,
    lbiElbInfoList,
    lbiTargetGroupInfoList,

    -- * MinimumHealthyHosts
    MinimumHealthyHosts (..),
    minimumHealthyHosts,
    mhhValue,
    mhhType,

    -- * OnPremisesTagSet
    OnPremisesTagSet (..),
    onPremisesTagSet,
    optsOnPremisesTagSetList,

    -- * RawString
    RawString (..),
    rawString,
    rsContent,
    rsSha256,

    -- * RevisionInfo
    RevisionInfo (..),
    revisionInfo,
    riGenericRevisionInfo,
    riRevisionLocation,

    -- * RevisionLocation
    RevisionLocation (..),
    revisionLocation,
    rlRevisionType,
    rlS3Location,
    rlAppSpecContent,
    rlGitHubLocation,
    rlString,

    -- * RollbackInfo
    RollbackInfo (..),
    rollbackInfo,
    riRollbackMessage,
    riRollbackTriggeringDeploymentId,
    riRollbackDeploymentId,

    -- * S3Location
    S3Location (..),
    s3Location,
    slETag,
    slKey,
    slBundleType,
    slVersion,
    slBucket,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TagFilter
    TagFilter (..),
    tagFilter,
    tfKey,
    tfValue,
    tfType,

    -- * TargetGroupInfo
    TargetGroupInfo (..),
    targetGroupInfo,
    tgiName,

    -- * TargetGroupPairInfo
    TargetGroupPairInfo (..),
    targetGroupPairInfo,
    tgpiTargetGroups,
    tgpiProdTrafficRoute,
    tgpiTestTrafficRoute,

    -- * TargetInstances
    TargetInstances (..),
    targetInstances,
    tiTagFilters,
    tiEc2TagSet,
    tiAutoScalingGroups,

    -- * TimeBasedCanary
    TimeBasedCanary (..),
    timeBasedCanary,
    tbcCanaryInterval,
    tbcCanaryPercentage,

    -- * TimeBasedLinear
    TimeBasedLinear (..),
    timeBasedLinear,
    tblLinearInterval,
    tblLinearPercentage,

    -- * TimeRange
    TimeRange (..),
    timeRange,
    trEnd,
    trStart,

    -- * TrafficRoute
    TrafficRoute (..),
    trafficRoute,
    trListenerARNs,

    -- * TrafficRoutingConfig
    TrafficRoutingConfig (..),
    trafficRoutingConfig,
    trcTimeBasedLinear,
    trcType,
    trcTimeBasedCanary,

    -- * TriggerConfig
    TriggerConfig (..),
    triggerConfig,
    tcTriggerEvents,
    tcTriggerName,
    tcTriggerTargetARN,
  )
where

import Network.AWS.CodeDeploy.Types.Alarm
import Network.AWS.CodeDeploy.Types.AlarmConfiguration
import Network.AWS.CodeDeploy.Types.AppSpecContent
import Network.AWS.CodeDeploy.Types.ApplicationInfo
import Network.AWS.CodeDeploy.Types.ApplicationRevisionSortBy
import Network.AWS.CodeDeploy.Types.AutoRollbackConfiguration
import Network.AWS.CodeDeploy.Types.AutoRollbackEvent
import Network.AWS.CodeDeploy.Types.AutoScalingGroup
import Network.AWS.CodeDeploy.Types.BlueGreenDeploymentConfiguration
import Network.AWS.CodeDeploy.Types.BlueInstanceTerminationOption
import Network.AWS.CodeDeploy.Types.BundleType
import Network.AWS.CodeDeploy.Types.CloudFormationTarget
import Network.AWS.CodeDeploy.Types.ComputePlatform
import Network.AWS.CodeDeploy.Types.DeployErrorCode
import Network.AWS.CodeDeploy.Types.DeploymentConfigInfo
import Network.AWS.CodeDeploy.Types.DeploymentCreator
import Network.AWS.CodeDeploy.Types.DeploymentGroupInfo
import Network.AWS.CodeDeploy.Types.DeploymentInfo
import Network.AWS.CodeDeploy.Types.DeploymentOption
import Network.AWS.CodeDeploy.Types.DeploymentOverview
import Network.AWS.CodeDeploy.Types.DeploymentReadyAction
import Network.AWS.CodeDeploy.Types.DeploymentReadyOption
import Network.AWS.CodeDeploy.Types.DeploymentStatus
import Network.AWS.CodeDeploy.Types.DeploymentStyle
import Network.AWS.CodeDeploy.Types.DeploymentTarget
import Network.AWS.CodeDeploy.Types.DeploymentTargetType
import Network.AWS.CodeDeploy.Types.DeploymentType
import Network.AWS.CodeDeploy.Types.DeploymentWaitType
import Network.AWS.CodeDeploy.Types.Diagnostics
import Network.AWS.CodeDeploy.Types.EC2TagFilter
import Network.AWS.CodeDeploy.Types.EC2TagFilterType
import Network.AWS.CodeDeploy.Types.EC2TagSet
import Network.AWS.CodeDeploy.Types.ECSService
import Network.AWS.CodeDeploy.Types.ECSTarget
import Network.AWS.CodeDeploy.Types.ECSTaskSet
import Network.AWS.CodeDeploy.Types.ELBInfo
import Network.AWS.CodeDeploy.Types.ErrorInformation
import Network.AWS.CodeDeploy.Types.FileExistsBehavior
import Network.AWS.CodeDeploy.Types.GenericRevisionInfo
import Network.AWS.CodeDeploy.Types.GitHubLocation
import Network.AWS.CodeDeploy.Types.GreenFleetProvisioningAction
import Network.AWS.CodeDeploy.Types.GreenFleetProvisioningOption
import Network.AWS.CodeDeploy.Types.InstanceAction
import Network.AWS.CodeDeploy.Types.InstanceInfo
import Network.AWS.CodeDeploy.Types.InstanceTarget
import Network.AWS.CodeDeploy.Types.LambdaFunctionInfo
import Network.AWS.CodeDeploy.Types.LambdaTarget
import Network.AWS.CodeDeploy.Types.LastDeploymentInfo
import Network.AWS.CodeDeploy.Types.LifecycleErrorCode
import Network.AWS.CodeDeploy.Types.LifecycleEvent
import Network.AWS.CodeDeploy.Types.LifecycleEventStatus
import Network.AWS.CodeDeploy.Types.ListStateFilterAction
import Network.AWS.CodeDeploy.Types.LoadBalancerInfo
import Network.AWS.CodeDeploy.Types.MinimumHealthyHosts
import Network.AWS.CodeDeploy.Types.MinimumHealthyHostsType
import Network.AWS.CodeDeploy.Types.OnPremisesTagSet
import Network.AWS.CodeDeploy.Types.RawString
import Network.AWS.CodeDeploy.Types.RegistrationStatus
import Network.AWS.CodeDeploy.Types.RevisionInfo
import Network.AWS.CodeDeploy.Types.RevisionLocation
import Network.AWS.CodeDeploy.Types.RevisionLocationType
import Network.AWS.CodeDeploy.Types.RollbackInfo
import Network.AWS.CodeDeploy.Types.S3Location
import Network.AWS.CodeDeploy.Types.SortOrder
import Network.AWS.CodeDeploy.Types.StopStatus
import Network.AWS.CodeDeploy.Types.Tag
import Network.AWS.CodeDeploy.Types.TagFilter
import Network.AWS.CodeDeploy.Types.TagFilterType
import Network.AWS.CodeDeploy.Types.TargetFilterName
import Network.AWS.CodeDeploy.Types.TargetGroupInfo
import Network.AWS.CodeDeploy.Types.TargetGroupPairInfo
import Network.AWS.CodeDeploy.Types.TargetInstances
import Network.AWS.CodeDeploy.Types.TargetLabel
import Network.AWS.CodeDeploy.Types.TargetStatus
import Network.AWS.CodeDeploy.Types.TimeBasedCanary
import Network.AWS.CodeDeploy.Types.TimeBasedLinear
import Network.AWS.CodeDeploy.Types.TimeRange
import Network.AWS.CodeDeploy.Types.TrafficRoute
import Network.AWS.CodeDeploy.Types.TrafficRoutingConfig
import Network.AWS.CodeDeploy.Types.TrafficRoutingType
import Network.AWS.CodeDeploy.Types.TriggerConfig
import Network.AWS.CodeDeploy.Types.TriggerEventType
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2014-10-06@ of the Amazon CodeDeploy SDK configuration.
codeDeploy :: Service
codeDeploy =
  Service
    { _svcAbbrev = "CodeDeploy",
      _svcSigner = v4,
      _svcPrefix = "codedeploy",
      _svcVersion = "2014-10-06",
      _svcEndpoint = defaultEndpoint codeDeploy,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CodeDeploy",
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

-- | The deployment groups limit was exceeded.
_DeploymentGroupLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentGroupLimitExceededException =
  _MatchServiceError
    codeDeploy
    "DeploymentGroupLimitExceededException"

-- | The specified on-premises instance name is already registered.
_InstanceNameAlreadyRegisteredException :: AsError a => Getting (First ServiceError) a ServiceError
_InstanceNameAlreadyRegisteredException =
  _MatchServiceError
    codeDeploy
    "InstanceNameAlreadyRegisteredException"

-- | A deployment group with the specified name with the IAM user or AWS account already exists.
_DeploymentGroupAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentGroupAlreadyExistsException =
  _MatchServiceError
    codeDeploy
    "DeploymentGroupAlreadyExistsException"

-- | A bucket name is required, but was not provided.
_BucketNameFilterRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_BucketNameFilterRequiredException =
  _MatchServiceError
    codeDeploy
    "BucketNameFilterRequiredException"

-- | The named revision does not exist with the IAM user or AWS account.
_RevisionDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_RevisionDoesNotExistException =
  _MatchServiceError
    codeDeploy
    "RevisionDoesNotExistException"

-- | The deployment configuration does not exist with the IAM user or AWS account.
_DeploymentConfigDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentConfigDoesNotExistException =
  _MatchServiceError
    codeDeploy
    "DeploymentConfigDoesNotExistException"

-- | An invalid instance type was specified for instances in a blue/green deployment. Valid values include "Blue" for an original environment and "Green" for a replacement environment.
_InvalidInstanceTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInstanceTypeException =
  _MatchServiceError
    codeDeploy
    "InvalidInstanceTypeException"

-- | The IAM user ARN was specified in an invalid format.
_InvalidIAMUserARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidIAMUserARNException =
  _MatchServiceError
    codeDeploy
    "InvalidIamUserArnException"

-- | An invalid fileExistsBehavior option was specified to determine how AWS CodeDeploy handles files or directories that already exist in a deployment target location, but weren't part of the previous successful deployment. Valid values include "DISALLOW," "OVERWRITE," and "RETAIN."
_InvalidFileExistsBehaviorException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFileExistsBehaviorException =
  _MatchServiceError
    codeDeploy
    "InvalidFileExistsBehaviorException"

-- | The tag filter was specified in an invalid format.
_InvalidTagFilterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagFilterException =
  _MatchServiceError
    codeDeploy
    "InvalidTagFilterException"

-- | The provided target ID does not belong to the attempted deployment.
_DeploymentTargetDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentTargetDoesNotExistException =
  _MatchServiceError
    codeDeploy
    "DeploymentTargetDoesNotExistException"

-- | The trigger was specified in an invalid format.
_InvalidTriggerConfigException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTriggerConfigException =
  _MatchServiceError
    codeDeploy
    "InvalidTriggerConfigException"

-- | The maximum number of alarms for a deployment group (10) was exceeded.
_AlarmsLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_AlarmsLimitExceededException =
  _MatchServiceError
    codeDeploy
    "AlarmsLimitExceededException"

-- | A deployment to a target was attempted while another deployment was in progress.
_DeploymentAlreadyStartedException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentAlreadyStartedException =
  _MatchServiceError
    codeDeploy
    "DeploymentAlreadyStartedException"

-- | The specified key prefix filter was specified in an invalid format.
_InvalidKeyPrefixFilterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidKeyPrefixFilterException =
  _MatchServiceError
    codeDeploy
    "InvalidKeyPrefixFilterException"

-- | The specified ARN is not supported. For example, it might be an ARN for a resource that is not expected.
_ARNNotSupportedException :: AsError a => Getting (First ServiceError) a ServiceError
_ARNNotSupportedException =
  _MatchServiceError
    codeDeploy
    "ArnNotSupportedException"

-- | The API used does not support the deployment.
_OperationNotSupportedException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationNotSupportedException =
  _MatchServiceError
    codeDeploy
    "OperationNotSupportedException"

-- | The GitHub token is not valid.
_InvalidGitHubAccountTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidGitHubAccountTokenException =
  _MatchServiceError
    codeDeploy
    "InvalidGitHubAccountTokenException"

-- | The external ID was specified in an invalid format.
_InvalidExternalIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidExternalIdException =
  _MatchServiceError
    codeDeploy
    "InvalidExternalIdException"

-- | The minimum healthy instance value was specified in an invalid format.
_InvalidMinimumHealthyHostValueException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidMinimumHealthyHostValueException =
  _MatchServiceError
    codeDeploy
    "InvalidMinimumHealthyHostValueException"

-- | A call was submitted that is not supported for the specified deployment type.
_UnsupportedActionForDeploymentTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedActionForDeploymentTypeException =
  _MatchServiceError
    codeDeploy
    "UnsupportedActionForDeploymentTypeException"

-- | The Amazon ECS service identifier is not valid.
_InvalidECSServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidECSServiceException =
  _MatchServiceError
    codeDeploy
    "InvalidECSServiceException"

-- | The specified resource could not be validated.
_ResourceValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceValidationException =
  _MatchServiceError
    codeDeploy
    "ResourceValidationException"

-- | An instance type was specified for an in-place deployment. Instance types are supported for blue/green deployments only.
_InvalidDeploymentInstanceTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeploymentInstanceTypeException =
  _MatchServiceError
    codeDeploy
    "InvalidDeploymentInstanceTypeException"

-- | The format of the specified GitHub account connection name is invalid.
_InvalidGitHubAccountTokenNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidGitHubAccountTokenNameException =
  _MatchServiceError
    codeDeploy
    "InvalidGitHubAccountTokenNameException"

-- | An invalid operation was detected.
_InvalidOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOperationException =
  _MatchServiceError
    codeDeploy
    "InvalidOperationException"

-- | An application with the specified name with the IAM user or AWS account already exists.
_ApplicationAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ApplicationAlreadyExistsException =
  _MatchServiceError
    codeDeploy
    "ApplicationAlreadyExistsException"

-- | A deployment target ID was not provided.
_DeploymentTargetIdRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentTargetIdRequiredException =
  _MatchServiceError
    codeDeploy
    "DeploymentTargetIdRequiredException"

-- | The specified ARN is not in a valid format.
_InvalidARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidARNException =
  _MatchServiceError codeDeploy "InvalidArnException"

-- | The maximum allowed number of tags was exceeded.
_TagLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_TagLimitExceededException =
  _MatchServiceError
    codeDeploy
    "TagLimitExceededException"

-- | The Auto Scaling group was specified in an invalid format or does not exist.
_InvalidAutoScalingGroupException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAutoScalingGroupException =
  _MatchServiceError
    codeDeploy
    "InvalidAutoScalingGroupException"

-- | More applications were attempted to be created than are allowed.
_ApplicationLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ApplicationLimitExceededException =
  _MatchServiceError
    codeDeploy
    "ApplicationLimitExceededException"

-- | The input was specified in an invalid format.
_InvalidInputException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInputException =
  _MatchServiceError
    codeDeploy
    "InvalidInputException"

-- | The maximum number of allowed on-premises instances in a single call was exceeded.
_InstanceLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_InstanceLimitExceededException =
  _MatchServiceError
    codeDeploy
    "InstanceLimitExceededException"

-- | The specified IAM user ARN is already registered with an on-premises instance.
_IAMUserARNAlreadyRegisteredException :: AsError a => Getting (First ServiceError) a ServiceError
_IAMUserARNAlreadyRegisteredException =
  _MatchServiceError
    codeDeploy
    "IamUserArnAlreadyRegisteredException"

-- | An on-premises instance name was not specified.
_InstanceNameRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_InstanceNameRequiredException =
  _MatchServiceError
    codeDeploy
    "InstanceNameRequiredException"

-- | The number of allowed deployments was exceeded.
_DeploymentLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentLimitExceededException =
  _MatchServiceError
    codeDeploy
    "DeploymentLimitExceededException"

-- | The target filter name is invalid.
_InvalidTargetFilterNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTargetFilterNameException =
  _MatchServiceError
    codeDeploy
    "InvalidTargetFilterNameException"

-- | The target instance configuration is invalid. Possible causes include:
--
--
--     * Configuration data for target instances was entered for an in-place deployment.
--
--     * The limit of 10 tags for a tag type was exceeded.
--
--     * The combined length of the tag names exceeded the limit.
--
--     * A specified tag is not currently applied to any instances.
_InvalidTargetInstancesException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTargetInstancesException =
  _MatchServiceError
    codeDeploy
    "InvalidTargetInstancesException"

-- | The revision was specified in an invalid format.
_InvalidRevisionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRevisionException =
  _MatchServiceError
    codeDeploy
    "InvalidRevisionException"

-- | The specified tags are not valid.
_InvalidTagsToAddException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagsToAddException =
  _MatchServiceError
    codeDeploy
    "InvalidTagsToAddException"

-- | The automatic rollback configuration was specified in an invalid format. For example, automatic rollback is enabled, but an invalid triggering event type or no event types were listed.
_InvalidAutoRollbackConfigException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAutoRollbackConfigException =
  _MatchServiceError
    codeDeploy
    "InvalidAutoRollbackConfigException"

-- | At least one deployment ID must be specified.
_DeploymentIdRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentIdRequiredException =
  _MatchServiceError
    codeDeploy
    "DeploymentIdRequiredException"

-- | The service role ARN was specified in an invalid format. Or, if an Auto Scaling group was specified, the specified service role does not grant the appropriate permissions to Amazon EC2 Auto Scaling.
_InvalidRoleException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRoleException =
  _MatchServiceError
    codeDeploy
    "InvalidRoleException"

-- | A deployment configuration with the specified name with the IAM user or AWS account already exists.
_DeploymentConfigAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentConfigAlreadyExistsException =
  _MatchServiceError
    codeDeploy
    "DeploymentConfigAlreadyExistsException"

-- | The next token was specified in an invalid format.
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    codeDeploy
    "InvalidNextTokenException"

-- | The instance ID was not specified.
_InstanceIdRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_InstanceIdRequiredException =
  _MatchServiceError
    codeDeploy
    "InstanceIdRequiredException"

-- | The configuration for the blue/green deployment group was provided in an invalid format. For information about deployment configuration format, see 'CreateDeploymentConfig' .
_InvalidBlueGreenDeploymentConfigurationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidBlueGreenDeploymentConfigurationException =
  _MatchServiceError
    codeDeploy
    "InvalidBlueGreenDeploymentConfigurationException"

-- | The deployment configurations limit was exceeded.
_DeploymentConfigLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentConfigLimitExceededException =
  _MatchServiceError
    codeDeploy
    "DeploymentConfigLimitExceededException"

-- | An invalid load balancer name, or no load balancer name, was specified.
_InvalidLoadBalancerInfoException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLoadBalancerInfoException =
  _MatchServiceError
    codeDeploy
    "InvalidLoadBalancerInfoException"

-- | The sort order was specified in an invalid format.
_InvalidSortOrderException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSortOrderException =
  _MatchServiceError
    codeDeploy
    "InvalidSortOrderException"

-- | An API function was called too frequently.
_ThrottlingException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottlingException =
  _MatchServiceError codeDeploy "ThrottlingException"

-- | A target group pair associated with this deployment is not valid.
_InvalidTargetGroupPairException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTargetGroupPairException =
  _MatchServiceError
    codeDeploy
    "InvalidTargetGroupPairException"

-- | The deployment configuration name was not specified.
_DeploymentConfigNameRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentConfigNameRequiredException =
  _MatchServiceError
    codeDeploy
    "DeploymentConfigNameRequiredException"

-- | A call was submitted that specified both OnPremisesTagFilters and OnPremisesTagSet, but only one of these data types can be used in a single call.
_InvalidOnPremisesTagCombinationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOnPremisesTagCombinationException =
  _MatchServiceError
    codeDeploy
    "InvalidOnPremisesTagCombinationException"

-- | The format of the alarm configuration is invalid. Possible causes include:
--
--
--     * The alarm list is null.
--
--     * The alarm object is null.
--
--     * The alarm name is empty or null or exceeds the limit of 255 characters.
--
--     * Two alarms with the same name have been specified.
--
--     * The alarm configuration is enabled, but the alarm list is empty.
_InvalidAlarmConfigException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAlarmConfigException =
  _MatchServiceError
    codeDeploy
    "InvalidAlarmConfigException"

-- | The column name to sort by is either not present or was specified in an invalid format.
_InvalidSortByException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSortByException =
  _MatchServiceError
    codeDeploy
    "InvalidSortByException"

-- | The configuration that specifies how traffic is routed during a deployment is invalid.
_InvalidTrafficRoutingConfigurationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTrafficRoutingConfigurationException =
  _MatchServiceError
    codeDeploy
    "InvalidTrafficRoutingConfigurationException"

-- | The description is too long.
_DescriptionTooLongException :: AsError a => Getting (First ServiceError) a ServiceError
_DescriptionTooLongException =
  _MatchServiceError
    codeDeploy
    "DescriptionTooLongException"

-- | An IAM user ARN was not specified.
_IAMUserARNRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_IAMUserARNRequiredException =
  _MatchServiceError
    codeDeploy
    "IamUserArnRequiredException"

-- | The request included an IAM session ARN that has already been used to register a different instance.
_IAMSessionARNAlreadyRegisteredException :: AsError a => Getting (First ServiceError) a ServiceError
_IAMSessionARNAlreadyRegisteredException =
  _MatchServiceError
    codeDeploy
    "IamSessionArnAlreadyRegisteredException"

-- | The deployment group name was specified in an invalid format.
_InvalidDeploymentGroupNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeploymentGroupNameException =
  _MatchServiceError
    codeDeploy
    "InvalidDeploymentGroupNameException"

-- | The bucket name either doesn't exist or was specified in an invalid format.
_InvalidBucketNameFilterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidBucketNameFilterException =
  _MatchServiceError
    codeDeploy
    "InvalidBucketNameFilterException"

-- | A target is not valid.
_InvalidTargetException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTargetException =
  _MatchServiceError
    codeDeploy
    "InvalidTargetException"

-- | The deployment group name was not specified.
_DeploymentGroupNameRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentGroupNameRequiredException =
  _MatchServiceError
    codeDeploy
    "DeploymentGroupNameRequiredException"

-- | The specified time range was specified in an invalid format.
_InvalidTimeRangeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTimeRangeException =
  _MatchServiceError
    codeDeploy
    "InvalidTimeRangeException"

-- | A tag was not specified.
_TagRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_TagRequiredException =
  _MatchServiceError
    codeDeploy
    "TagRequiredException"

-- | The IgnoreApplicationStopFailures value is invalid. For AWS Lambda deployments, @false@ is expected. For EC2/On-premises deployments, @true@ or @false@ is expected.
_InvalidIgnoreApplicationStopFailuresValueException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidIgnoreApplicationStopFailuresValueException =
  _MatchServiceError
    codeDeploy
    "InvalidIgnoreApplicationStopFailuresValueException"

-- | The UpdateOutdatedInstancesOnly value is invalid. For AWS Lambda deployments, @false@ is expected. For EC2/On-premises deployments, @true@ or @false@ is expected.
_InvalidUpdateOutdatedInstancesOnlyValueException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUpdateOutdatedInstancesOnlyValueException =
  _MatchServiceError
    codeDeploy
    "InvalidUpdateOutdatedInstancesOnlyValueException"

-- | The tag was specified in an invalid format.
_InvalidTagException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagException =
  _MatchServiceError codeDeploy "InvalidTagException"

-- | The wait type is invalid.
_InvalidDeploymentWaitTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeploymentWaitTypeException =
  _MatchServiceError
    codeDeploy
    "InvalidDeploymentWaitTypeException"

-- | The computePlatform is invalid. The computePlatform should be @Lambda@ , @Server@ , or @ECS@ .
_InvalidComputePlatformException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidComputePlatformException =
  _MatchServiceError
    codeDeploy
    "InvalidComputePlatformException"

-- | The limit for lifecycle hooks was exceeded.
_LifecycleHookLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LifecycleHookLimitExceededException =
  _MatchServiceError
    codeDeploy
    "LifecycleHookLimitExceededException"

-- | The result of a Lambda validation function that verifies a lifecycle event is invalid. It should return @Succeeded@ or @Failed@ .
_InvalidLifecycleEventHookExecutionStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLifecycleEventHookExecutionStatusException =
  _MatchServiceError
    codeDeploy
    "InvalidLifecycleEventHookExecutionStatusException"

-- | The ARN of a resource is required, but was not found.
_ResourceARNRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceARNRequiredException =
  _MatchServiceError
    codeDeploy
    "ResourceArnRequiredException"

-- | A call was submitted that specified both Ec2TagFilters and Ec2TagSet, but only one of these data types can be used in a single call.
_InvalidEC2TagCombinationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidEC2TagCombinationException =
  _MatchServiceError
    codeDeploy
    "InvalidEC2TagCombinationException"

-- | No IAM ARN was included in the request. You must use an IAM session ARN or IAM user ARN in the request.
_IAMARNRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_IAMARNRequiredException =
  _MatchServiceError
    codeDeploy
    "IamArnRequiredException"

-- | The call is missing a required GitHub account connection name.
_GitHubAccountTokenNameRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_GitHubAccountTokenNameRequiredException =
  _MatchServiceError
    codeDeploy
    "GitHubAccountTokenNameRequiredException"

-- | An attempt to return the status of an already completed lifecycle event occurred.
_LifecycleEventAlreadyCompletedException :: AsError a => Getting (First ServiceError) a ServiceError
_LifecycleEventAlreadyCompletedException =
  _MatchServiceError
    codeDeploy
    "LifecycleEventAlreadyCompletedException"

-- | The application does not exist with the IAM user or AWS account.
_ApplicationDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_ApplicationDoesNotExistException =
  _MatchServiceError
    codeDeploy
    "ApplicationDoesNotExistException"

-- | Both an IAM user ARN and an IAM session ARN were included in the request. Use only one ARN type.
_MultipleIAMARNsProvidedException :: AsError a => Getting (First ServiceError) a ServiceError
_MultipleIAMARNsProvidedException =
  _MatchServiceError
    codeDeploy
    "MultipleIamArnsProvidedException"

-- | The target ID provided was not valid.
_InvalidDeploymentTargetIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeploymentTargetIdException =
  _MatchServiceError
    codeDeploy
    "InvalidDeploymentTargetIdException"

-- | The registration status was specified in an invalid format.
_InvalidRegistrationStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRegistrationStatusException =
  _MatchServiceError
    codeDeploy
    "InvalidRegistrationStatusException"

-- | The specified on-premises instance is not registered.
_InstanceNotRegisteredException :: AsError a => Getting (First ServiceError) a ServiceError
_InstanceNotRegisteredException =
  _MatchServiceError
    codeDeploy
    "InstanceNotRegisteredException"

-- | The deployed state filter was specified in an invalid format.
_InvalidDeployedStateFilterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeployedStateFilterException =
  _MatchServiceError
    codeDeploy
    "InvalidDeployedStateFilterException"

-- | The specified instance status does not exist.
_InvalidInstanceStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInstanceStatusException =
  _MatchServiceError
    codeDeploy
    "InvalidInstanceStatusException"

-- | The minimum number of required application names was not specified.
_ApplicationNameRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ApplicationNameRequiredException =
  _MatchServiceError
    codeDeploy
    "ApplicationNameRequiredException"

-- | The specified deployment status doesn't exist or cannot be determined.
_InvalidDeploymentStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeploymentStatusException =
  _MatchServiceError
    codeDeploy
    "InvalidDeploymentStatusException"

-- | The maximum allowed number of triggers was exceeded.
_TriggerTargetsLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_TriggerTargetsLimitExceededException =
  _MatchServiceError
    codeDeploy
    "TriggerTargetsLimitExceededException"

-- | The number of tag groups included in the tag set list exceeded the maximum allowed limit of 3.
_TagSetListLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_TagSetListLimitExceededException =
  _MatchServiceError
    codeDeploy
    "TagSetListLimitExceededException"

-- | No GitHub account connection exists with the named specified in the call.
_GitHubAccountTokenDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_GitHubAccountTokenDoesNotExistException =
  _MatchServiceError
    codeDeploy
    "GitHubAccountTokenDoesNotExistException"

-- | The application name was specified in an invalid format.
_InvalidApplicationNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidApplicationNameException =
  _MatchServiceError
    codeDeploy
    "InvalidApplicationNameException"

-- | The maximum number of targets that can be associated with an Amazon ECS or AWS Lambda deployment was exceeded. The target list of both types of deployments must have exactly one item. This exception does not apply to EC2/On-premises deployments.
_DeploymentTargetListSizeExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentTargetListSizeExceededException =
  _MatchServiceError
    codeDeploy
    "DeploymentTargetListSizeExceededException"

-- | The deployment configuration is still in use.
_DeploymentConfigInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentConfigInUseException =
  _MatchServiceError
    codeDeploy
    "DeploymentConfigInUseException"

-- | The on-premises instance name was specified in an invalid format.
_InvalidInstanceNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInstanceNameException =
  _MatchServiceError
    codeDeploy
    "InvalidInstanceNameException"

-- | The IAM session ARN was specified in an invalid format.
_InvalidIAMSessionARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidIAMSessionARNException =
  _MatchServiceError
    codeDeploy
    "InvalidIamSessionArnException"

-- | A lifecycle event hook is invalid. Review the @hooks@ section in your AppSpec file to ensure the lifecycle events and @hooks@ functions are valid.
_InvalidLifecycleEventHookExecutionIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLifecycleEventHookExecutionIdException =
  _MatchServiceError
    codeDeploy
    "InvalidLifecycleEventHookExecutionIdException"

-- | The tag was specified in an invalid format.
_InvalidEC2TagException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidEC2TagException =
  _MatchServiceError
    codeDeploy
    "InvalidEC2TagException"

-- | The ID of the deployment configuration is invalid.
_InvalidDeploymentConfigIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeploymentConfigIdException =
  _MatchServiceError
    codeDeploy
    "InvalidDeploymentConfigIdException"

-- | An invalid deployment style was specified. Valid deployment types include "IN_PLACE" and "BLUE_GREEN." Valid deployment options include "WITH_TRAFFIC_CONTROL" and "WITHOUT_TRAFFIC_CONTROL."
_InvalidDeploymentStyleException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeploymentStyleException =
  _MatchServiceError
    codeDeploy
    "InvalidDeploymentStyleException"

-- | The revision ID was not specified.
_RevisionRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_RevisionRequiredException =
  _MatchServiceError
    codeDeploy
    "RevisionRequiredException"

-- | The specified instance does not exist in the deployment group.
_InstanceDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_InstanceDoesNotExistException =
  _MatchServiceError
    codeDeploy
    "InstanceDoesNotExistException"

-- | The deployment is already complete.
_DeploymentAlreadyCompletedException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentAlreadyCompletedException =
  _MatchServiceError
    codeDeploy
    "DeploymentAlreadyCompletedException"

-- | The Amazon ECS service is associated with more than one deployment groups. An Amazon ECS service can be associated with only one deployment group.
_ECSServiceMappingLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ECSServiceMappingLimitExceededException =
  _MatchServiceError
    codeDeploy
    "ECSServiceMappingLimitExceededException"

-- | The deployment with the IAM user or AWS account does not exist.
_DeploymentDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentDoesNotExistException =
  _MatchServiceError
    codeDeploy
    "DeploymentDoesNotExistException"

-- | The maximum number of names or IDs allowed for this request (100) was exceeded.
_BatchLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_BatchLimitExceededException =
  _MatchServiceError
    codeDeploy
    "BatchLimitExceededException"

-- | At least one of the deployment IDs was specified in an invalid format.
_InvalidDeploymentIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeploymentIdException =
  _MatchServiceError
    codeDeploy
    "InvalidDeploymentIdException"

-- | The deployment configuration name was specified in an invalid format.
_InvalidDeploymentConfigNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeploymentConfigNameException =
  _MatchServiceError
    codeDeploy
    "InvalidDeploymentConfigNameException"

-- | The specified deployment has not started.
_DeploymentNotStartedException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentNotStartedException =
  _MatchServiceError
    codeDeploy
    "DeploymentNotStartedException"

-- | The deployment does not have a status of Ready and can't continue yet.
_DeploymentIsNotInReadyStateException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentIsNotInReadyStateException =
  _MatchServiceError
    codeDeploy
    "DeploymentIsNotInReadyStateException"

-- |
_InvalidInstanceIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInstanceIdException =
  _MatchServiceError
    codeDeploy
    "InvalidInstanceIdException"

-- | The named deployment group with the IAM user or AWS account does not exist.
_DeploymentGroupDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_DeploymentGroupDoesNotExistException =
  _MatchServiceError
    codeDeploy
    "DeploymentGroupDoesNotExistException"

-- | The role ID was not specified.
_RoleRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_RoleRequiredException =
  _MatchServiceError
    codeDeploy
    "RoleRequiredException"
