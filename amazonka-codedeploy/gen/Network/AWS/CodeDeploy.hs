{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS CodeDeploy__
--
-- AWS CodeDeploy is a deployment service that automates application deployments to Amazon EC2 instances, on-premises instances running in your own facility, serverless AWS Lambda functions, or applications in an Amazon ECS service.
--
-- You can deploy a nearly unlimited variety of application content, such as an updated Lambda function, updated applications in an Amazon ECS service, code, web and configuration files, executables, packages, scripts, multimedia files, and so on. AWS CodeDeploy can deploy application content stored in Amazon S3 buckets, GitHub repositories, or Bitbucket repositories. You do not need to make changes to your existing code before you can use AWS CodeDeploy.
--
-- AWS CodeDeploy makes it easier for you to rapidly release new features, helps you avoid downtime during application deployment, and handles the complexity of updating your applications, without many of the risks associated with error-prone manual deployments.
--
-- __AWS CodeDeploy Components__
--
-- Use the information in this guide to help you work with the following AWS CodeDeploy components:
--
--     * __Application__ : A name that uniquely identifies the application you want to deploy. AWS CodeDeploy uses this name, which functions as a container, to ensure the correct combination of revision, deployment configuration, and deployment group are referenced during a deployment.
--
--     * __Deployment group__ : A set of individual instances, CodeDeploy Lambda deployment configuration settings, or an Amazon ECS service and network details. A Lambda deployment group specifies how to route traffic to a new version of a Lambda function. An Amazon ECS deployment group specifies the service created in Amazon ECS to deploy, a load balancer, and a listener to reroute production traffic to an updated containerized application. An EC2/On-premises deployment group contains individually tagged instances, Amazon EC2 instances in Amazon EC2 Auto Scaling groups, or both. All deployment groups can specify optional trigger, alarm, and rollback settings.
--
--     * __Deployment configuration__ : A set of deployment rules and deployment success and failure conditions used by AWS CodeDeploy during a deployment.
--
--     * __Deployment__ : The process and the components used when updating a Lambda function, a containerized application in an Amazon ECS service, or of installing content on one or more instances.
--
--     * __Application revisions__ : For an AWS Lambda deployment, this is an AppSpec file that specifies the Lambda function to be updated and one or more functions to validate deployment lifecycle events. For an Amazon ECS deployment, this is an AppSpec file that specifies the Amazon ECS task definition, container, and port where production traffic is rerouted. For an EC2/On-premises deployment, this is an archive file that contains source content—source code, webpages, executable files, and deployment scripts—along with an AppSpec file. Revisions are stored in Amazon S3 buckets or GitHub repositories. For Amazon S3, a revision is uniquely identified by its Amazon S3 object key and its ETag, version, or both. For GitHub, a revision is uniquely identified by its commit ID.
--
--
--
-- This guide also contains information to help you get details about the instances in your deployments, to make on-premises instances available for AWS CodeDeploy deployments, to get details about a Lambda function deployment, and to get details about Amazon ECS service deployments.
--
-- __AWS CodeDeploy Information Resources__
--
--     * <https://docs.aws.amazon.com/codedeploy/latest/userguide AWS CodeDeploy User Guide>
--
--     * <https://docs.aws.amazon.com/codedeploy/latest/APIReference/ AWS CodeDeploy API Reference Guide>
--
--     * <https://docs.aws.amazon.com/cli/latest/reference/deploy/index.html AWS CLI Reference for AWS CodeDeploy>
--
--     * <https://forums.aws.amazon.com/forum.jspa?forumID=179 AWS CodeDeploy Developer Forum>
module Network.AWS.CodeDeploy
  ( -- * Service Configuration
    codeDeploy,

    -- * Errors
    -- $errors

    -- ** DeploymentGroupLimitExceededException
    _DeploymentGroupLimitExceededException,

    -- ** InstanceNameAlreadyRegisteredException
    _InstanceNameAlreadyRegisteredException,

    -- ** DeploymentGroupAlreadyExistsException
    _DeploymentGroupAlreadyExistsException,

    -- ** BucketNameFilterRequiredException
    _BucketNameFilterRequiredException,

    -- ** RevisionDoesNotExistException
    _RevisionDoesNotExistException,

    -- ** DeploymentConfigDoesNotExistException
    _DeploymentConfigDoesNotExistException,

    -- ** InvalidInstanceTypeException
    _InvalidInstanceTypeException,

    -- ** InvalidIAMUserARNException
    _InvalidIAMUserARNException,

    -- ** InvalidFileExistsBehaviorException
    _InvalidFileExistsBehaviorException,

    -- ** InvalidTagFilterException
    _InvalidTagFilterException,

    -- ** DeploymentTargetDoesNotExistException
    _DeploymentTargetDoesNotExistException,

    -- ** InvalidTriggerConfigException
    _InvalidTriggerConfigException,

    -- ** AlarmsLimitExceededException
    _AlarmsLimitExceededException,

    -- ** DeploymentAlreadyStartedException
    _DeploymentAlreadyStartedException,

    -- ** InvalidKeyPrefixFilterException
    _InvalidKeyPrefixFilterException,

    -- ** ARNNotSupportedException
    _ARNNotSupportedException,

    -- ** OperationNotSupportedException
    _OperationNotSupportedException,

    -- ** InvalidGitHubAccountTokenException
    _InvalidGitHubAccountTokenException,

    -- ** InvalidExternalIdException
    _InvalidExternalIdException,

    -- ** InvalidMinimumHealthyHostValueException
    _InvalidMinimumHealthyHostValueException,

    -- ** UnsupportedActionForDeploymentTypeException
    _UnsupportedActionForDeploymentTypeException,

    -- ** InvalidECSServiceException
    _InvalidECSServiceException,

    -- ** ResourceValidationException
    _ResourceValidationException,

    -- ** InvalidDeploymentInstanceTypeException
    _InvalidDeploymentInstanceTypeException,

    -- ** InvalidGitHubAccountTokenNameException
    _InvalidGitHubAccountTokenNameException,

    -- ** InvalidOperationException
    _InvalidOperationException,

    -- ** ApplicationAlreadyExistsException
    _ApplicationAlreadyExistsException,

    -- ** DeploymentTargetIdRequiredException
    _DeploymentTargetIdRequiredException,

    -- ** InvalidARNException
    _InvalidARNException,

    -- ** TagLimitExceededException
    _TagLimitExceededException,

    -- ** InvalidAutoScalingGroupException
    _InvalidAutoScalingGroupException,

    -- ** ApplicationLimitExceededException
    _ApplicationLimitExceededException,

    -- ** InvalidInputException
    _InvalidInputException,

    -- ** InstanceLimitExceededException
    _InstanceLimitExceededException,

    -- ** IAMUserARNAlreadyRegisteredException
    _IAMUserARNAlreadyRegisteredException,

    -- ** InstanceNameRequiredException
    _InstanceNameRequiredException,

    -- ** DeploymentLimitExceededException
    _DeploymentLimitExceededException,

    -- ** InvalidTargetFilterNameException
    _InvalidTargetFilterNameException,

    -- ** InvalidTargetInstancesException
    _InvalidTargetInstancesException,

    -- ** InvalidRevisionException
    _InvalidRevisionException,

    -- ** InvalidTagsToAddException
    _InvalidTagsToAddException,

    -- ** InvalidAutoRollbackConfigException
    _InvalidAutoRollbackConfigException,

    -- ** DeploymentIdRequiredException
    _DeploymentIdRequiredException,

    -- ** InvalidRoleException
    _InvalidRoleException,

    -- ** DeploymentConfigAlreadyExistsException
    _DeploymentConfigAlreadyExistsException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** InstanceIdRequiredException
    _InstanceIdRequiredException,

    -- ** InvalidBlueGreenDeploymentConfigurationException
    _InvalidBlueGreenDeploymentConfigurationException,

    -- ** DeploymentConfigLimitExceededException
    _DeploymentConfigLimitExceededException,

    -- ** InvalidLoadBalancerInfoException
    _InvalidLoadBalancerInfoException,

    -- ** InvalidSortOrderException
    _InvalidSortOrderException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** InvalidTargetGroupPairException
    _InvalidTargetGroupPairException,

    -- ** DeploymentConfigNameRequiredException
    _DeploymentConfigNameRequiredException,

    -- ** InvalidOnPremisesTagCombinationException
    _InvalidOnPremisesTagCombinationException,

    -- ** InvalidAlarmConfigException
    _InvalidAlarmConfigException,

    -- ** InvalidSortByException
    _InvalidSortByException,

    -- ** InvalidTrafficRoutingConfigurationException
    _InvalidTrafficRoutingConfigurationException,

    -- ** DescriptionTooLongException
    _DescriptionTooLongException,

    -- ** IAMUserARNRequiredException
    _IAMUserARNRequiredException,

    -- ** IAMSessionARNAlreadyRegisteredException
    _IAMSessionARNAlreadyRegisteredException,

    -- ** InvalidDeploymentGroupNameException
    _InvalidDeploymentGroupNameException,

    -- ** InvalidBucketNameFilterException
    _InvalidBucketNameFilterException,

    -- ** InvalidTargetException
    _InvalidTargetException,

    -- ** DeploymentGroupNameRequiredException
    _DeploymentGroupNameRequiredException,

    -- ** InvalidTimeRangeException
    _InvalidTimeRangeException,

    -- ** TagRequiredException
    _TagRequiredException,

    -- ** InvalidIgnoreApplicationStopFailuresValueException
    _InvalidIgnoreApplicationStopFailuresValueException,

    -- ** InvalidUpdateOutdatedInstancesOnlyValueException
    _InvalidUpdateOutdatedInstancesOnlyValueException,

    -- ** InvalidTagException
    _InvalidTagException,

    -- ** InvalidDeploymentWaitTypeException
    _InvalidDeploymentWaitTypeException,

    -- ** InvalidComputePlatformException
    _InvalidComputePlatformException,

    -- ** LifecycleHookLimitExceededException
    _LifecycleHookLimitExceededException,

    -- ** InvalidLifecycleEventHookExecutionStatusException
    _InvalidLifecycleEventHookExecutionStatusException,

    -- ** ResourceARNRequiredException
    _ResourceARNRequiredException,

    -- ** InvalidEC2TagCombinationException
    _InvalidEC2TagCombinationException,

    -- ** IAMARNRequiredException
    _IAMARNRequiredException,

    -- ** GitHubAccountTokenNameRequiredException
    _GitHubAccountTokenNameRequiredException,

    -- ** LifecycleEventAlreadyCompletedException
    _LifecycleEventAlreadyCompletedException,

    -- ** ApplicationDoesNotExistException
    _ApplicationDoesNotExistException,

    -- ** MultipleIAMARNsProvidedException
    _MultipleIAMARNsProvidedException,

    -- ** InvalidDeploymentTargetIdException
    _InvalidDeploymentTargetIdException,

    -- ** InvalidRegistrationStatusException
    _InvalidRegistrationStatusException,

    -- ** InstanceNotRegisteredException
    _InstanceNotRegisteredException,

    -- ** InvalidDeployedStateFilterException
    _InvalidDeployedStateFilterException,

    -- ** InvalidInstanceStatusException
    _InvalidInstanceStatusException,

    -- ** ApplicationNameRequiredException
    _ApplicationNameRequiredException,

    -- ** InvalidDeploymentStatusException
    _InvalidDeploymentStatusException,

    -- ** TriggerTargetsLimitExceededException
    _TriggerTargetsLimitExceededException,

    -- ** TagSetListLimitExceededException
    _TagSetListLimitExceededException,

    -- ** GitHubAccountTokenDoesNotExistException
    _GitHubAccountTokenDoesNotExistException,

    -- ** InvalidApplicationNameException
    _InvalidApplicationNameException,

    -- ** DeploymentTargetListSizeExceededException
    _DeploymentTargetListSizeExceededException,

    -- ** DeploymentConfigInUseException
    _DeploymentConfigInUseException,

    -- ** InvalidInstanceNameException
    _InvalidInstanceNameException,

    -- ** InvalidIAMSessionARNException
    _InvalidIAMSessionARNException,

    -- ** InvalidLifecycleEventHookExecutionIdException
    _InvalidLifecycleEventHookExecutionIdException,

    -- ** InvalidEC2TagException
    _InvalidEC2TagException,

    -- ** InvalidDeploymentConfigIdException
    _InvalidDeploymentConfigIdException,

    -- ** InvalidDeploymentStyleException
    _InvalidDeploymentStyleException,

    -- ** RevisionRequiredException
    _RevisionRequiredException,

    -- ** InstanceDoesNotExistException
    _InstanceDoesNotExistException,

    -- ** DeploymentAlreadyCompletedException
    _DeploymentAlreadyCompletedException,

    -- ** ECSServiceMappingLimitExceededException
    _ECSServiceMappingLimitExceededException,

    -- ** DeploymentDoesNotExistException
    _DeploymentDoesNotExistException,

    -- ** BatchLimitExceededException
    _BatchLimitExceededException,

    -- ** InvalidDeploymentIdException
    _InvalidDeploymentIdException,

    -- ** InvalidDeploymentConfigNameException
    _InvalidDeploymentConfigNameException,

    -- ** DeploymentNotStartedException
    _DeploymentNotStartedException,

    -- ** DeploymentIsNotInReadyStateException
    _DeploymentIsNotInReadyStateException,

    -- ** InvalidInstanceIdException
    _InvalidInstanceIdException,

    -- ** DeploymentGroupDoesNotExistException
    _DeploymentGroupDoesNotExistException,

    -- ** RoleRequiredException
    _RoleRequiredException,

    -- * Waiters
    -- $waiters

    -- ** DeploymentSuccessful
    deploymentSuccessful,

    -- * Operations
    -- $operations

    -- ** BatchGetOnPremisesInstances
    module Network.AWS.CodeDeploy.BatchGetOnPremisesInstances,

    -- ** GetApplicationRevision
    module Network.AWS.CodeDeploy.GetApplicationRevision,

    -- ** BatchGetDeploymentGroups
    module Network.AWS.CodeDeploy.BatchGetDeploymentGroups,

    -- ** CreateDeploymentConfig
    module Network.AWS.CodeDeploy.CreateDeploymentConfig,

    -- ** StopDeployment
    module Network.AWS.CodeDeploy.StopDeployment,

    -- ** ListDeploymentTargets (Paginated)
    module Network.AWS.CodeDeploy.ListDeploymentTargets,

    -- ** CreateApplication
    module Network.AWS.CodeDeploy.CreateApplication,

    -- ** AddTagsToOnPremisesInstances
    module Network.AWS.CodeDeploy.AddTagsToOnPremisesInstances,

    -- ** GetDeploymentTarget
    module Network.AWS.CodeDeploy.GetDeploymentTarget,

    -- ** DeleteResourcesByExternalId
    module Network.AWS.CodeDeploy.DeleteResourcesByExternalId,

    -- ** UntagResource
    module Network.AWS.CodeDeploy.UntagResource,

    -- ** BatchGetApplications
    module Network.AWS.CodeDeploy.BatchGetApplications,

    -- ** BatchGetApplicationRevisions
    module Network.AWS.CodeDeploy.BatchGetApplicationRevisions,

    -- ** ListDeployments (Paginated)
    module Network.AWS.CodeDeploy.ListDeployments,

    -- ** TagResource
    module Network.AWS.CodeDeploy.TagResource,

    -- ** ContinueDeployment
    module Network.AWS.CodeDeploy.ContinueDeployment,

    -- ** GetDeploymentConfig
    module Network.AWS.CodeDeploy.GetDeploymentConfig,

    -- ** DeleteDeploymentConfig
    module Network.AWS.CodeDeploy.DeleteDeploymentConfig,

    -- ** CreateDeploymentGroup
    module Network.AWS.CodeDeploy.CreateDeploymentGroup,

    -- ** ListDeploymentConfigs (Paginated)
    module Network.AWS.CodeDeploy.ListDeploymentConfigs,

    -- ** DeleteDeploymentGroup
    module Network.AWS.CodeDeploy.DeleteDeploymentGroup,

    -- ** ListDeploymentGroups (Paginated)
    module Network.AWS.CodeDeploy.ListDeploymentGroups,

    -- ** ListOnPremisesInstances (Paginated)
    module Network.AWS.CodeDeploy.ListOnPremisesInstances,

    -- ** UpdateDeploymentGroup
    module Network.AWS.CodeDeploy.UpdateDeploymentGroup,

    -- ** GetDeployment
    module Network.AWS.CodeDeploy.GetDeployment,

    -- ** RegisterOnPremisesInstance
    module Network.AWS.CodeDeploy.RegisterOnPremisesInstance,

    -- ** RemoveTagsFromOnPremisesInstances
    module Network.AWS.CodeDeploy.RemoveTagsFromOnPremisesInstances,

    -- ** GetApplication
    module Network.AWS.CodeDeploy.GetApplication,

    -- ** BatchGetDeploymentTargets
    module Network.AWS.CodeDeploy.BatchGetDeploymentTargets,

    -- ** ListGitHubAccountTokenNames (Paginated)
    module Network.AWS.CodeDeploy.ListGitHubAccountTokenNames,

    -- ** DeleteGitHubAccountToken
    module Network.AWS.CodeDeploy.DeleteGitHubAccountToken,

    -- ** PutLifecycleEventHookExecutionStatus
    module Network.AWS.CodeDeploy.PutLifecycleEventHookExecutionStatus,

    -- ** DeregisterOnPremisesInstance
    module Network.AWS.CodeDeploy.DeregisterOnPremisesInstance,

    -- ** DeleteApplication
    module Network.AWS.CodeDeploy.DeleteApplication,

    -- ** ListApplications (Paginated)
    module Network.AWS.CodeDeploy.ListApplications,

    -- ** UpdateApplication
    module Network.AWS.CodeDeploy.UpdateApplication,

    -- ** RegisterApplicationRevision
    module Network.AWS.CodeDeploy.RegisterApplicationRevision,

    -- ** GetOnPremisesInstance
    module Network.AWS.CodeDeploy.GetOnPremisesInstance,

    -- ** ListApplicationRevisions (Paginated)
    module Network.AWS.CodeDeploy.ListApplicationRevisions,

    -- ** BatchGetDeployments
    module Network.AWS.CodeDeploy.BatchGetDeployments,

    -- ** GetDeploymentGroup
    module Network.AWS.CodeDeploy.GetDeploymentGroup,

    -- ** CreateDeployment
    module Network.AWS.CodeDeploy.CreateDeployment,

    -- ** ListTagsForResource
    module Network.AWS.CodeDeploy.ListTagsForResource,

    -- * Types

    -- ** ApplicationRevisionSortBy
    ApplicationRevisionSortBy (..),

    -- ** AutoRollbackEvent
    AutoRollbackEvent (..),

    -- ** BundleType
    BundleType (..),

    -- ** ComputePlatform
    ComputePlatform (..),

    -- ** DeployErrorCode
    DeployErrorCode (..),

    -- ** DeploymentCreator
    DeploymentCreator (..),

    -- ** DeploymentOption
    DeploymentOption (..),

    -- ** DeploymentReadyAction
    DeploymentReadyAction (..),

    -- ** DeploymentStatus
    DeploymentStatus (..),

    -- ** DeploymentTargetType
    DeploymentTargetType (..),

    -- ** DeploymentType
    DeploymentType (..),

    -- ** DeploymentWaitType
    DeploymentWaitType (..),

    -- ** EC2TagFilterType
    EC2TagFilterType (..),

    -- ** FileExistsBehavior
    FileExistsBehavior (..),

    -- ** GreenFleetProvisioningAction
    GreenFleetProvisioningAction (..),

    -- ** InstanceAction
    InstanceAction (..),

    -- ** LifecycleErrorCode
    LifecycleErrorCode (..),

    -- ** LifecycleEventStatus
    LifecycleEventStatus (..),

    -- ** ListStateFilterAction
    ListStateFilterAction (..),

    -- ** MinimumHealthyHostsType
    MinimumHealthyHostsType (..),

    -- ** RegistrationStatus
    RegistrationStatus (..),

    -- ** RevisionLocationType
    RevisionLocationType (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** StopStatus
    StopStatus (..),

    -- ** TagFilterType
    TagFilterType (..),

    -- ** TargetFilterName
    TargetFilterName (..),

    -- ** TargetLabel
    TargetLabel (..),

    -- ** TargetStatus
    TargetStatus (..),

    -- ** TrafficRoutingType
    TrafficRoutingType (..),

    -- ** TriggerEventType
    TriggerEventType (..),

    -- ** Alarm
    Alarm,
    alarm,
    aName,

    -- ** AlarmConfiguration
    AlarmConfiguration,
    alarmConfiguration,
    acIgnorePollAlarmFailure,
    acEnabled,
    acAlarms,

    -- ** AppSpecContent
    AppSpecContent,
    appSpecContent,
    ascContent,
    ascSha256,

    -- ** ApplicationInfo
    ApplicationInfo,
    applicationInfo,
    aiApplicationId,
    aiLinkedToGitHub,
    aiGitHubAccountName,
    aiCreateTime,
    aiApplicationName,
    aiComputePlatform,

    -- ** AutoRollbackConfiguration
    AutoRollbackConfiguration,
    autoRollbackConfiguration,
    arcEnabled,
    arcEvents,

    -- ** AutoScalingGroup
    AutoScalingGroup,
    autoScalingGroup,
    asgHook,
    asgName,

    -- ** BlueGreenDeploymentConfiguration
    BlueGreenDeploymentConfiguration,
    blueGreenDeploymentConfiguration,
    bgdcGreenFleetProvisioningOption,
    bgdcDeploymentReadyOption,
    bgdcTerminateBlueInstancesOnDeploymentSuccess,

    -- ** BlueInstanceTerminationOption
    BlueInstanceTerminationOption,
    blueInstanceTerminationOption,
    bitoAction,
    bitoTerminationWaitTimeInMinutes,

    -- ** CloudFormationTarget
    CloudFormationTarget,
    cloudFormationTarget,
    cftDeploymentId,
    cftStatus,
    cftTargetId,
    cftTargetVersionWeight,
    cftResourceType,
    cftLifecycleEvents,
    cftLastUpdatedAt,

    -- ** DeploymentConfigInfo
    DeploymentConfigInfo,
    deploymentConfigInfo,
    dciDeploymentConfigName,
    dciDeploymentConfigId,
    dciCreateTime,
    dciTrafficRoutingConfig,
    dciMinimumHealthyHosts,
    dciComputePlatform,

    -- ** DeploymentGroupInfo
    DeploymentGroupInfo,
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

    -- ** DeploymentInfo
    DeploymentInfo,
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

    -- ** DeploymentOverview
    DeploymentOverview,
    deploymentOverview,
    doSucceeded,
    doReady,
    doPending,
    doFailed,
    doSkipped,
    doInProgress,

    -- ** DeploymentReadyOption
    DeploymentReadyOption,
    deploymentReadyOption,
    droWaitTimeInMinutes,
    droActionOnTimeout,

    -- ** DeploymentStyle
    DeploymentStyle,
    deploymentStyle,
    dsDeploymentType,
    dsDeploymentOption,

    -- ** DeploymentTarget
    DeploymentTarget,
    deploymentTarget,
    dtEcsTarget,
    dtLambdaTarget,
    dtCloudFormationTarget,
    dtInstanceTarget,
    dtDeploymentTargetType,

    -- ** Diagnostics
    Diagnostics,
    diagnostics,
    dLogTail,
    dMessage,
    dScriptName,
    dErrorCode,

    -- ** EC2TagFilter
    EC2TagFilter,
    ec2TagFilter,
    etfKey,
    etfValue,
    etfType,

    -- ** EC2TagSet
    EC2TagSet,
    ec2TagSet,
    etsEc2TagSetList,

    -- ** ECSService
    ECSService,
    eCSService,
    ecssServiceName,
    ecssClusterName,

    -- ** ECSTarget
    ECSTarget,
    eCSTarget,
    ecstDeploymentId,
    ecstStatus,
    ecstTargetId,
    ecstTaskSetsInfo,
    ecstTargetARN,
    ecstLifecycleEvents,
    ecstLastUpdatedAt,

    -- ** ECSTaskSet
    ECSTaskSet,
    eCSTaskSet,
    ecstsStatus,
    ecstsRunningCount,
    ecstsDesiredCount,
    ecstsPendingCount,
    ecstsTaskSetLabel,
    ecstsTargetGroup,
    ecstsTrafficWeight,
    ecstsIdentifer,

    -- ** ELBInfo
    ELBInfo,
    eLBInfo,
    elbiName,

    -- ** ErrorInformation
    ErrorInformation,
    errorInformation,
    eiMessage,
    eiCode,

    -- ** GenericRevisionInfo
    GenericRevisionInfo,
    genericRevisionInfo,
    griRegisterTime,
    griDeploymentGroups,
    griDescription,
    griFirstUsedTime,
    griLastUsedTime,

    -- ** GitHubLocation
    GitHubLocation,
    gitHubLocation,
    ghlCommitId,
    ghlRepository,

    -- ** GreenFleetProvisioningOption
    GreenFleetProvisioningOption,
    greenFleetProvisioningOption,
    gfpoAction,

    -- ** InstanceInfo
    InstanceInfo,
    instanceInfo,
    iiRegisterTime,
    iiIamUserARN,
    iiInstanceName,
    iiInstanceARN,
    iiTags,
    iiIamSessionARN,
    iiDeregisterTime,

    -- ** InstanceTarget
    InstanceTarget,
    instanceTarget,
    itDeploymentId,
    itStatus,
    itTargetId,
    itInstanceLabel,
    itTargetARN,
    itLifecycleEvents,
    itLastUpdatedAt,

    -- ** LambdaFunctionInfo
    LambdaFunctionInfo,
    lambdaFunctionInfo,
    lfiFunctionAlias,
    lfiTargetVersion,
    lfiTargetVersionWeight,
    lfiCurrentVersion,
    lfiFunctionName,

    -- ** LambdaTarget
    LambdaTarget,
    lambdaTarget,
    ltDeploymentId,
    ltStatus,
    ltTargetId,
    ltTargetARN,
    ltLifecycleEvents,
    ltLambdaFunctionInfo,
    ltLastUpdatedAt,

    -- ** LastDeploymentInfo
    LastDeploymentInfo,
    lastDeploymentInfo,
    ldiDeploymentId,
    ldiStatus,
    ldiEndTime,
    ldiCreateTime,

    -- ** LifecycleEvent
    LifecycleEvent,
    lifecycleEvent,
    leStatus,
    leDiagnostics,
    leStartTime,
    leEndTime,
    leLifecycleEventName,

    -- ** LoadBalancerInfo
    LoadBalancerInfo,
    loadBalancerInfo,
    lbiTargetGroupPairInfoList,
    lbiElbInfoList,
    lbiTargetGroupInfoList,

    -- ** MinimumHealthyHosts
    MinimumHealthyHosts,
    minimumHealthyHosts,
    mhhValue,
    mhhType,

    -- ** OnPremisesTagSet
    OnPremisesTagSet,
    onPremisesTagSet,
    optsOnPremisesTagSetList,

    -- ** RawString
    RawString,
    rawString,
    rsContent,
    rsSha256,

    -- ** RevisionInfo
    RevisionInfo,
    revisionInfo,
    riGenericRevisionInfo,
    riRevisionLocation,

    -- ** RevisionLocation
    RevisionLocation,
    revisionLocation,
    rlRevisionType,
    rlS3Location,
    rlAppSpecContent,
    rlGitHubLocation,
    rlString,

    -- ** RollbackInfo
    RollbackInfo,
    rollbackInfo,
    riRollbackMessage,
    riRollbackTriggeringDeploymentId,
    riRollbackDeploymentId,

    -- ** S3Location
    S3Location,
    s3Location,
    slETag,
    slKey,
    slBundleType,
    slVersion,
    slBucket,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TagFilter
    TagFilter,
    tagFilter,
    tfKey,
    tfValue,
    tfType,

    -- ** TargetGroupInfo
    TargetGroupInfo,
    targetGroupInfo,
    tgiName,

    -- ** TargetGroupPairInfo
    TargetGroupPairInfo,
    targetGroupPairInfo,
    tgpiTargetGroups,
    tgpiProdTrafficRoute,
    tgpiTestTrafficRoute,

    -- ** TargetInstances
    TargetInstances,
    targetInstances,
    tiTagFilters,
    tiEc2TagSet,
    tiAutoScalingGroups,

    -- ** TimeBasedCanary
    TimeBasedCanary,
    timeBasedCanary,
    tbcCanaryInterval,
    tbcCanaryPercentage,

    -- ** TimeBasedLinear
    TimeBasedLinear,
    timeBasedLinear,
    tblLinearInterval,
    tblLinearPercentage,

    -- ** TimeRange
    TimeRange,
    timeRange,
    trEnd,
    trStart,

    -- ** TrafficRoute
    TrafficRoute,
    trafficRoute,
    trListenerARNs,

    -- ** TrafficRoutingConfig
    TrafficRoutingConfig,
    trafficRoutingConfig,
    trcTimeBasedLinear,
    trcType,
    trcTimeBasedCanary,

    -- ** TriggerConfig
    TriggerConfig,
    triggerConfig,
    tcTriggerEvents,
    tcTriggerName,
    tcTriggerTargetARN,
  )
where

import Network.AWS.CodeDeploy.AddTagsToOnPremisesInstances
import Network.AWS.CodeDeploy.BatchGetApplicationRevisions
import Network.AWS.CodeDeploy.BatchGetApplications
import Network.AWS.CodeDeploy.BatchGetDeploymentGroups
import Network.AWS.CodeDeploy.BatchGetDeploymentTargets
import Network.AWS.CodeDeploy.BatchGetDeployments
import Network.AWS.CodeDeploy.BatchGetOnPremisesInstances
import Network.AWS.CodeDeploy.ContinueDeployment
import Network.AWS.CodeDeploy.CreateApplication
import Network.AWS.CodeDeploy.CreateDeployment
import Network.AWS.CodeDeploy.CreateDeploymentConfig
import Network.AWS.CodeDeploy.CreateDeploymentGroup
import Network.AWS.CodeDeploy.DeleteApplication
import Network.AWS.CodeDeploy.DeleteDeploymentConfig
import Network.AWS.CodeDeploy.DeleteDeploymentGroup
import Network.AWS.CodeDeploy.DeleteGitHubAccountToken
import Network.AWS.CodeDeploy.DeleteResourcesByExternalId
import Network.AWS.CodeDeploy.DeregisterOnPremisesInstance
import Network.AWS.CodeDeploy.GetApplication
import Network.AWS.CodeDeploy.GetApplicationRevision
import Network.AWS.CodeDeploy.GetDeployment
import Network.AWS.CodeDeploy.GetDeploymentConfig
import Network.AWS.CodeDeploy.GetDeploymentGroup
import Network.AWS.CodeDeploy.GetDeploymentTarget
import Network.AWS.CodeDeploy.GetOnPremisesInstance
import Network.AWS.CodeDeploy.ListApplicationRevisions
import Network.AWS.CodeDeploy.ListApplications
import Network.AWS.CodeDeploy.ListDeploymentConfigs
import Network.AWS.CodeDeploy.ListDeploymentGroups
import Network.AWS.CodeDeploy.ListDeploymentTargets
import Network.AWS.CodeDeploy.ListDeployments
import Network.AWS.CodeDeploy.ListGitHubAccountTokenNames
import Network.AWS.CodeDeploy.ListOnPremisesInstances
import Network.AWS.CodeDeploy.ListTagsForResource
import Network.AWS.CodeDeploy.PutLifecycleEventHookExecutionStatus
import Network.AWS.CodeDeploy.RegisterApplicationRevision
import Network.AWS.CodeDeploy.RegisterOnPremisesInstance
import Network.AWS.CodeDeploy.RemoveTagsFromOnPremisesInstances
import Network.AWS.CodeDeploy.StopDeployment
import Network.AWS.CodeDeploy.TagResource
import Network.AWS.CodeDeploy.Types
import Network.AWS.CodeDeploy.UntagResource
import Network.AWS.CodeDeploy.UpdateApplication
import Network.AWS.CodeDeploy.UpdateDeploymentGroup
import Network.AWS.CodeDeploy.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CodeDeploy'.

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
