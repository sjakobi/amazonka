{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types
  ( -- * Service Configuration
    elasticBeanstalk,

    -- * Errors
    _TooManyPlatformsException,
    _TooManyTagsException,
    _TooManyApplicationsException,
    _ResourceTypeNotSupportedException,
    _TooManyEnvironmentsException,
    _InsufficientPrivilegesException,
    _TooManyConfigurationTemplatesException,
    _OperationInProgressException,
    _TooManyBucketsException,
    _S3SubscriptionRequiredException,
    _SourceBundleDeletionException,
    _InvalidRequestException,
    _ElasticBeanstalkServiceException,
    _ResourceNotFoundException,
    _CodeBuildNotInServiceRegionException,
    _PlatformVersionStillReferencedException,
    _TooManyApplicationVersionsException,
    _S3LocationNotInServiceRegionException,
    _ManagedActionInvalidStateException,

    -- * ActionHistoryStatus
    ActionHistoryStatus (..),

    -- * ActionStatus
    ActionStatus (..),

    -- * ActionType
    ActionType (..),

    -- * ApplicationVersionStatus
    ApplicationVersionStatus (..),

    -- * ComputeType
    ComputeType (..),

    -- * ConfigurationDeploymentStatus
    ConfigurationDeploymentStatus (..),

    -- * ConfigurationOptionValueType
    ConfigurationOptionValueType (..),

    -- * EnvironmentHealth
    EnvironmentHealth (..),

    -- * EnvironmentHealthAttribute
    EnvironmentHealthAttribute (..),

    -- * EnvironmentHealthStatus
    EnvironmentHealthStatus (..),

    -- * EnvironmentInfoType
    EnvironmentInfoType (..),

    -- * EnvironmentStatus
    EnvironmentStatus (..),

    -- * EventSeverity
    EventSeverity (..),

    -- * FailureType
    FailureType (..),

    -- * InstancesHealthAttribute
    InstancesHealthAttribute (..),

    -- * PlatformStatus
    PlatformStatus (..),

    -- * SourceRepository
    SourceRepository (..),

    -- * SourceType
    SourceType (..),

    -- * ValidationSeverity
    ValidationSeverity (..),

    -- * ApplicationDescription
    ApplicationDescription (..),
    applicationDescription,
    adApplicationARN,
    adDateCreated,
    adVersions,
    adDateUpdated,
    adResourceLifecycleConfig,
    adDescription,
    adConfigurationTemplates,
    adApplicationName,

    -- * ApplicationDescriptionMessage
    ApplicationDescriptionMessage (..),
    applicationDescriptionMessage,
    admApplication,

    -- * ApplicationMetrics
    ApplicationMetrics (..),
    applicationMetrics,
    amDuration,
    amStatusCodes,
    amRequestCount,
    amLatency,

    -- * ApplicationResourceLifecycleConfig
    ApplicationResourceLifecycleConfig (..),
    applicationResourceLifecycleConfig,
    arlcServiceRole,
    arlcVersionLifecycleConfig,

    -- * ApplicationVersionDescription
    ApplicationVersionDescription (..),
    applicationVersionDescription,
    avdStatus,
    avdDateCreated,
    avdSourceBundle,
    avdSourceBuildInformation,
    avdVersionLabel,
    avdDateUpdated,
    avdDescription,
    avdBuildARN,
    avdApplicationVersionARN,
    avdApplicationName,

    -- * ApplicationVersionDescriptionMessage
    ApplicationVersionDescriptionMessage (..),
    applicationVersionDescriptionMessage,
    avdmApplicationVersion,

    -- * ApplicationVersionLifecycleConfig
    ApplicationVersionLifecycleConfig (..),
    applicationVersionLifecycleConfig,
    avlcMaxAgeRule,
    avlcMaxCountRule,

    -- * AutoScalingGroup
    AutoScalingGroup (..),
    autoScalingGroup,
    asgName,

    -- * BuildConfiguration
    BuildConfiguration (..),
    buildConfiguration,
    bcArtifactName,
    bcTimeoutInMinutes,
    bcComputeType,
    bcCodeBuildServiceRole,
    bcImage,

    -- * Builder
    Builder (..),
    builder,
    bARN,

    -- * CPUUtilization
    CPUUtilization (..),
    cpuUtilization,
    cuIdle,
    cuUser,
    cuPrivileged,
    cuIOWait,
    cuSoftIRQ,
    cuNice,
    cuSystem,
    cuIRQ,

    -- * ConfigurationOptionDescription
    ConfigurationOptionDescription (..),
    configurationOptionDescription,
    codMaxValue,
    codValueOptions,
    codValueType,
    codChangeSeverity,
    codRegex,
    codName,
    codMinValue,
    codNamespace,
    codUserDefined,
    codMaxLength,
    codDefaultValue,

    -- * ConfigurationOptionSetting
    ConfigurationOptionSetting (..),
    configurationOptionSetting,
    cosOptionName,
    cosValue,
    cosNamespace,
    cosResourceName,

    -- * ConfigurationSettingsDescription
    ConfigurationSettingsDescription (..),
    configurationSettingsDescription,
    csdTemplateName,
    csdDateCreated,
    csdSolutionStackName,
    csdDeploymentStatus,
    csdEnvironmentName,
    csdPlatformARN,
    csdDateUpdated,
    csdOptionSettings,
    csdDescription,
    csdApplicationName,

    -- * CustomAMI
    CustomAMI (..),
    customAMI,
    caVirtualizationType,
    caImageId,

    -- * Deployment
    Deployment (..),
    deployment,
    dStatus,
    dDeploymentId,
    dVersionLabel,
    dDeploymentTime,

    -- * EnvironmentDescription
    EnvironmentDescription (..),
    environmentDescription,
    eAbortableOperationInProgress,
    eTemplateName,
    eStatus,
    eDateCreated,
    eEnvironmentLinks,
    eSolutionStackName,
    eEnvironmentId,
    eEnvironmentName,
    ePlatformARN,
    eVersionLabel,
    eHealth,
    eCNAME,
    eResources,
    eDateUpdated,
    eDescription,
    eHealthStatus,
    eEnvironmentARN,
    eEndpointURL,
    eApplicationName,
    eTier,
    eOperationsRole,

    -- * EnvironmentDescriptionsMessage
    EnvironmentDescriptionsMessage (..),
    environmentDescriptionsMessage,
    edmNextToken,
    edmEnvironments,

    -- * EnvironmentInfoDescription
    EnvironmentInfoDescription (..),
    environmentInfoDescription,
    eidMessage,
    eidInfoType,
    eidEC2InstanceId,
    eidSampleTimestamp,

    -- * EnvironmentLink
    EnvironmentLink (..),
    environmentLink,
    elEnvironmentName,
    elLinkName,

    -- * EnvironmentResourceDescription
    EnvironmentResourceDescription (..),
    environmentResourceDescription,
    erdLaunchConfigurations,
    erdLaunchTemplates,
    erdTriggers,
    erdInstances,
    erdEnvironmentName,
    erdQueues,
    erdLoadBalancers,
    erdAutoScalingGroups,

    -- * EnvironmentResourcesDescription
    EnvironmentResourcesDescription (..),
    environmentResourcesDescription,
    erdLoadBalancer,

    -- * EnvironmentTier
    EnvironmentTier (..),
    environmentTier,
    etVersion,
    etName,
    etType,

    -- * EventDescription
    EventDescription (..),
    eventDescription,
    edTemplateName,
    edSeverity,
    edMessage,
    edEventDate,
    edEnvironmentName,
    edPlatformARN,
    edVersionLabel,
    edRequestId,
    edApplicationName,

    -- * Instance
    Instance (..),
    instance',
    iId,

    -- * InstanceHealthSummary
    InstanceHealthSummary (..),
    instanceHealthSummary,
    ihsOK,
    ihsNoData,
    ihsInfo,
    ihsSevere,
    ihsWarning,
    ihsPending,
    ihsDegraded,
    ihsUnknown,

    -- * Latency
    Latency (..),
    latency,
    lP95,
    lP10,
    lP999,
    lP99,
    lP85,
    lP50,
    lP90,
    lP75,

    -- * LaunchConfiguration
    LaunchConfiguration (..),
    launchConfiguration,
    lcName,

    -- * LaunchTemplate
    LaunchTemplate (..),
    launchTemplate,
    ltId,

    -- * Listener
    Listener (..),
    listener,
    lPort,
    lProtocol,

    -- * LoadBalancer
    LoadBalancer (..),
    loadBalancer,
    lbName,

    -- * LoadBalancerDescription
    LoadBalancerDescription (..),
    loadBalancerDescription,
    lbdDomain,
    lbdListeners,
    lbdLoadBalancerName,

    -- * ManagedAction
    ManagedAction (..),
    managedAction,
    maStatus,
    maActionType,
    maActionId,
    maActionDescription,
    maWindowStartTime,

    -- * ManagedActionHistoryItem
    ManagedActionHistoryItem (..),
    managedActionHistoryItem,
    mahiStatus,
    mahiActionType,
    mahiExecutedTime,
    mahiActionId,
    mahiActionDescription,
    mahiFinishedTime,
    mahiFailureDescription,
    mahiFailureType,

    -- * MaxAgeRule
    MaxAgeRule (..),
    maxAgeRule,
    marDeleteSourceFromS3,
    marMaxAgeInDays,
    marEnabled,

    -- * MaxCountRule
    MaxCountRule (..),
    maxCountRule,
    mcrMaxCount,
    mcrDeleteSourceFromS3,
    mcrEnabled,

    -- * OptionRestrictionRegex
    OptionRestrictionRegex (..),
    optionRestrictionRegex,
    orrLabel,
    orrPattern,

    -- * OptionSpecification
    OptionSpecification (..),
    optionSpecification,
    osOptionName,
    osNamespace,
    osResourceName,

    -- * PlatformBranchSummary
    PlatformBranchSummary (..),
    platformBranchSummary,
    pbsBranchName,
    pbsBranchOrder,
    pbsLifecycleState,
    pbsSupportedTierList,
    pbsPlatformName,

    -- * PlatformDescription
    PlatformDescription (..),
    platformDescription,
    pdPlatformCategory,
    pdOperatingSystemName,
    pdPlatformBranchName,
    pdSupportedAddonList,
    pdDateCreated,
    pdCustomAMIList,
    pdPlatformOwner,
    pdPlatformStatus,
    pdSolutionStackName,
    pdPlatformVersion,
    pdPlatformBranchLifecycleState,
    pdPlatformARN,
    pdFrameworks,
    pdDateUpdated,
    pdSupportedTierList,
    pdPlatformLifecycleState,
    pdMaintainer,
    pdDescription,
    pdPlatformName,
    pdProgrammingLanguages,
    pdOperatingSystemVersion,

    -- * PlatformFilter
    PlatformFilter (..),
    platformFilter,
    pfValues,
    pfOperator,
    pfType,

    -- * PlatformFramework
    PlatformFramework (..),
    platformFramework,
    pfVersion,
    pfName,

    -- * PlatformProgrammingLanguage
    PlatformProgrammingLanguage (..),
    platformProgrammingLanguage,
    pplVersion,
    pplName,

    -- * PlatformSummary
    PlatformSummary (..),
    platformSummary,
    psPlatformCategory,
    psOperatingSystemName,
    psPlatformBranchName,
    psSupportedAddonList,
    psPlatformOwner,
    psPlatformStatus,
    psPlatformVersion,
    psPlatformBranchLifecycleState,
    psPlatformARN,
    psSupportedTierList,
    psPlatformLifecycleState,
    psOperatingSystemVersion,

    -- * Queue
    Queue (..),
    queue,
    qName,
    qURL,

    -- * ResourceQuota
    ResourceQuota (..),
    resourceQuota,
    rqMaximum,

    -- * ResourceQuotas
    ResourceQuotas (..),
    resourceQuotas,
    rqApplicationQuota,
    rqConfigurationTemplateQuota,
    rqApplicationVersionQuota,
    rqEnvironmentQuota,
    rqCustomPlatformQuota,

    -- * S3Location
    S3Location (..),
    s3Location,
    slS3Bucket,
    slS3Key,

    -- * SearchFilter
    SearchFilter (..),
    searchFilter,
    sfValues,
    sfOperator,
    sfAttribute,

    -- * SingleInstanceHealth
    SingleInstanceHealth (..),
    singleInstanceHealth,
    sihInstanceId,
    sihInstanceType,
    sihColor,
    sihCauses,
    sihAvailabilityZone,
    sihDeployment,
    sihLaunchedAt,
    sihHealthStatus,
    sihSystem,
    sihApplicationMetrics,

    -- * SolutionStackDescription
    SolutionStackDescription (..),
    solutionStackDescription,
    ssdPermittedFileTypes,
    ssdSolutionStackName,

    -- * SourceBuildInformation
    SourceBuildInformation (..),
    sourceBuildInformation,
    sbiSourceType,
    sbiSourceRepository,
    sbiSourceLocation,

    -- * SourceConfiguration
    SourceConfiguration (..),
    sourceConfiguration,
    scTemplateName,
    scApplicationName,

    -- * StatusCodes
    StatusCodes (..),
    statusCodes,
    scStatus3xx,
    scStatus5xx,
    scStatus2xx,
    scStatus4xx,

    -- * SystemStatus
    SystemStatus (..),
    systemStatus,
    ssCPUUtilization,
    ssLoadAverage,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * Trigger
    Trigger (..),
    trigger,
    tName,

    -- * ValidationMessage
    ValidationMessage (..),
    validationMessage,
    vmOptionName,
    vmSeverity,
    vmMessage,
    vmNamespace,
  )
where

import Network.AWS.ElasticBeanstalk.Types.ActionHistoryStatus
import Network.AWS.ElasticBeanstalk.Types.ActionStatus
import Network.AWS.ElasticBeanstalk.Types.ActionType
import Network.AWS.ElasticBeanstalk.Types.ApplicationDescription
import Network.AWS.ElasticBeanstalk.Types.ApplicationDescriptionMessage
import Network.AWS.ElasticBeanstalk.Types.ApplicationMetrics
import Network.AWS.ElasticBeanstalk.Types.ApplicationResourceLifecycleConfig
import Network.AWS.ElasticBeanstalk.Types.ApplicationVersionDescription
import Network.AWS.ElasticBeanstalk.Types.ApplicationVersionDescriptionMessage
import Network.AWS.ElasticBeanstalk.Types.ApplicationVersionLifecycleConfig
import Network.AWS.ElasticBeanstalk.Types.ApplicationVersionStatus
import Network.AWS.ElasticBeanstalk.Types.AutoScalingGroup
import Network.AWS.ElasticBeanstalk.Types.BuildConfiguration
import Network.AWS.ElasticBeanstalk.Types.Builder
import Network.AWS.ElasticBeanstalk.Types.CPUUtilization
import Network.AWS.ElasticBeanstalk.Types.ComputeType
import Network.AWS.ElasticBeanstalk.Types.ConfigurationDeploymentStatus
import Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionDescription
import Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionSetting
import Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionValueType
import Network.AWS.ElasticBeanstalk.Types.ConfigurationSettingsDescription
import Network.AWS.ElasticBeanstalk.Types.CustomAMI
import Network.AWS.ElasticBeanstalk.Types.Deployment
import Network.AWS.ElasticBeanstalk.Types.EnvironmentDescription
import Network.AWS.ElasticBeanstalk.Types.EnvironmentDescriptionsMessage
import Network.AWS.ElasticBeanstalk.Types.EnvironmentHealth
import Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthAttribute
import Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthStatus
import Network.AWS.ElasticBeanstalk.Types.EnvironmentInfoDescription
import Network.AWS.ElasticBeanstalk.Types.EnvironmentInfoType
import Network.AWS.ElasticBeanstalk.Types.EnvironmentLink
import Network.AWS.ElasticBeanstalk.Types.EnvironmentResourceDescription
import Network.AWS.ElasticBeanstalk.Types.EnvironmentResourcesDescription
import Network.AWS.ElasticBeanstalk.Types.EnvironmentStatus
import Network.AWS.ElasticBeanstalk.Types.EnvironmentTier
import Network.AWS.ElasticBeanstalk.Types.EventDescription
import Network.AWS.ElasticBeanstalk.Types.EventSeverity
import Network.AWS.ElasticBeanstalk.Types.FailureType
import Network.AWS.ElasticBeanstalk.Types.Instance
import Network.AWS.ElasticBeanstalk.Types.InstanceHealthSummary
import Network.AWS.ElasticBeanstalk.Types.InstancesHealthAttribute
import Network.AWS.ElasticBeanstalk.Types.Latency
import Network.AWS.ElasticBeanstalk.Types.LaunchConfiguration
import Network.AWS.ElasticBeanstalk.Types.LaunchTemplate
import Network.AWS.ElasticBeanstalk.Types.Listener
import Network.AWS.ElasticBeanstalk.Types.LoadBalancer
import Network.AWS.ElasticBeanstalk.Types.LoadBalancerDescription
import Network.AWS.ElasticBeanstalk.Types.ManagedAction
import Network.AWS.ElasticBeanstalk.Types.ManagedActionHistoryItem
import Network.AWS.ElasticBeanstalk.Types.MaxAgeRule
import Network.AWS.ElasticBeanstalk.Types.MaxCountRule
import Network.AWS.ElasticBeanstalk.Types.OptionRestrictionRegex
import Network.AWS.ElasticBeanstalk.Types.OptionSpecification
import Network.AWS.ElasticBeanstalk.Types.PlatformBranchSummary
import Network.AWS.ElasticBeanstalk.Types.PlatformDescription
import Network.AWS.ElasticBeanstalk.Types.PlatformFilter
import Network.AWS.ElasticBeanstalk.Types.PlatformFramework
import Network.AWS.ElasticBeanstalk.Types.PlatformProgrammingLanguage
import Network.AWS.ElasticBeanstalk.Types.PlatformStatus
import Network.AWS.ElasticBeanstalk.Types.PlatformSummary
import Network.AWS.ElasticBeanstalk.Types.Queue
import Network.AWS.ElasticBeanstalk.Types.ResourceQuota
import Network.AWS.ElasticBeanstalk.Types.ResourceQuotas
import Network.AWS.ElasticBeanstalk.Types.S3Location
import Network.AWS.ElasticBeanstalk.Types.SearchFilter
import Network.AWS.ElasticBeanstalk.Types.SingleInstanceHealth
import Network.AWS.ElasticBeanstalk.Types.SolutionStackDescription
import Network.AWS.ElasticBeanstalk.Types.SourceBuildInformation
import Network.AWS.ElasticBeanstalk.Types.SourceConfiguration
import Network.AWS.ElasticBeanstalk.Types.SourceRepository
import Network.AWS.ElasticBeanstalk.Types.SourceType
import Network.AWS.ElasticBeanstalk.Types.StatusCodes
import Network.AWS.ElasticBeanstalk.Types.SystemStatus
import Network.AWS.ElasticBeanstalk.Types.Tag
import Network.AWS.ElasticBeanstalk.Types.Trigger
import Network.AWS.ElasticBeanstalk.Types.ValidationMessage
import Network.AWS.ElasticBeanstalk.Types.ValidationSeverity
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2010-12-01@ of the Amazon Elastic Beanstalk SDK configuration.
elasticBeanstalk :: Service
elasticBeanstalk =
  Service
    { _svcAbbrev = "ElasticBeanstalk",
      _svcSigner = v4,
      _svcPrefix = "elasticbeanstalk",
      _svcVersion = "2010-12-01",
      _svcEndpoint = defaultEndpoint elasticBeanstalk,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "ElasticBeanstalk",
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

-- | You have exceeded the maximum number of allowed platforms associated with the account.
_TooManyPlatformsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyPlatformsException =
  _MatchServiceError
    elasticBeanstalk
    "TooManyPlatformsException"
    . hasStatus 400

-- | The number of tags in the resource would exceed the number of tags that each resource can have.
--
--
-- To calculate this, the operation considers both the number of tags the resource already has and the tags this operation would add if it succeeded.
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException =
  _MatchServiceError
    elasticBeanstalk
    "TooManyTagsException"
    . hasStatus 400

-- | The specified account has reached its limit of applications.
_TooManyApplicationsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyApplicationsException =
  _MatchServiceError
    elasticBeanstalk
    "TooManyApplicationsException"
    . hasStatus 400

-- | The type of the specified Amazon Resource Name (ARN) isn't supported for this operation.
_ResourceTypeNotSupportedException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceTypeNotSupportedException =
  _MatchServiceError
    elasticBeanstalk
    "ResourceTypeNotSupportedException"
    . hasStatus 400

-- | The specified account has reached its limit of environments.
_TooManyEnvironmentsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyEnvironmentsException =
  _MatchServiceError
    elasticBeanstalk
    "TooManyEnvironmentsException"
    . hasStatus 400

-- | The specified account does not have sufficient privileges for one or more AWS services.
_InsufficientPrivilegesException :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientPrivilegesException =
  _MatchServiceError
    elasticBeanstalk
    "InsufficientPrivilegesException"
    . hasStatus 403

-- | The specified account has reached its limit of configuration templates.
_TooManyConfigurationTemplatesException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyConfigurationTemplatesException =
  _MatchServiceError
    elasticBeanstalk
    "TooManyConfigurationTemplatesException"
    . hasStatus 400

-- | Unable to perform the specified operation because another operation that effects an element in this activity is already in progress.
_OperationInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationInProgressException =
  _MatchServiceError
    elasticBeanstalk
    "OperationInProgressFailure"
    . hasStatus 400

-- | The specified account has reached its limit of Amazon S3 buckets.
_TooManyBucketsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyBucketsException =
  _MatchServiceError
    elasticBeanstalk
    "TooManyBucketsException"
    . hasStatus 400

-- | The specified account does not have a subscription to Amazon S3.
_S3SubscriptionRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_S3SubscriptionRequiredException =
  _MatchServiceError
    elasticBeanstalk
    "S3SubscriptionRequiredException"
    . hasStatus 400

-- | Unable to delete the Amazon S3 source bundle associated with the application version. The application version was deleted successfully.
_SourceBundleDeletionException :: AsError a => Getting (First ServiceError) a ServiceError
_SourceBundleDeletionException =
  _MatchServiceError
    elasticBeanstalk
    "SourceBundleDeletionFailure"
    . hasStatus 400

-- | One or more input parameters is not valid. Please correct the input parameters and try the operation again.
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException =
  _MatchServiceError
    elasticBeanstalk
    "InvalidRequestException"
    . hasStatus 400

-- | A generic service exception has occurred.
_ElasticBeanstalkServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_ElasticBeanstalkServiceException =
  _MatchServiceError
    elasticBeanstalk
    "ElasticBeanstalkServiceException"

-- | A resource doesn't exist for the specified Amazon Resource Name (ARN).
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    elasticBeanstalk
    "ResourceNotFoundException"
    . hasStatus 400

-- | AWS CodeBuild is not available in the specified region.
_CodeBuildNotInServiceRegionException :: AsError a => Getting (First ServiceError) a ServiceError
_CodeBuildNotInServiceRegionException =
  _MatchServiceError
    elasticBeanstalk
    "CodeBuildNotInServiceRegionException"
    . hasStatus 400

-- | You cannot delete the platform version because there are still environments running on it.
_PlatformVersionStillReferencedException :: AsError a => Getting (First ServiceError) a ServiceError
_PlatformVersionStillReferencedException =
  _MatchServiceError
    elasticBeanstalk
    "PlatformVersionStillReferencedException"
    . hasStatus 400

-- | The specified account has reached its limit of application versions.
_TooManyApplicationVersionsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyApplicationVersionsException =
  _MatchServiceError
    elasticBeanstalk
    "TooManyApplicationVersionsException"

-- | The specified S3 bucket does not belong to the S3 region in which the service is running. The following regions are supported:
--
--
--     * IAD/us-east-1
--
--     * PDX/us-west-2
--
--     * DUB/eu-west-1
_S3LocationNotInServiceRegionException :: AsError a => Getting (First ServiceError) a ServiceError
_S3LocationNotInServiceRegionException =
  _MatchServiceError
    elasticBeanstalk
    "S3LocationNotInServiceRegionException"
    . hasStatus 400

-- | Cannot modify the managed action in its current state.
_ManagedActionInvalidStateException :: AsError a => Getting (First ServiceError) a ServiceError
_ManagedActionInvalidStateException =
  _MatchServiceError
    elasticBeanstalk
    "ManagedActionInvalidStateException"
    . hasStatus 400
