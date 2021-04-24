{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Elastic Beanstalk__
--
-- AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable, fault-tolerant applications running on the Amazon Web Services cloud.
--
-- For more information about this product, go to the <http://aws.amazon.com/elasticbeanstalk/ AWS Elastic Beanstalk> details page. The location of the latest AWS Elastic Beanstalk WSDL is <https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl> . To install the Software Development Kits (SDKs), Integrated Development Environment (IDE) Toolkits, and command line tools that enable you to access the API, go to <http://aws.amazon.com/tools/ Tools for Amazon Web Services> .
--
-- __Endpoints__
--
-- For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go to <https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region Regions and Endpoints> in the /Amazon Web Services Glossary/ .
module Network.AWS.ElasticBeanstalk
  ( -- * Service Configuration
    elasticBeanstalk,

    -- * Errors
    -- $errors

    -- ** TooManyPlatformsException
    _TooManyPlatformsException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** TooManyApplicationsException
    _TooManyApplicationsException,

    -- ** ResourceTypeNotSupportedException
    _ResourceTypeNotSupportedException,

    -- ** TooManyEnvironmentsException
    _TooManyEnvironmentsException,

    -- ** InsufficientPrivilegesException
    _InsufficientPrivilegesException,

    -- ** TooManyConfigurationTemplatesException
    _TooManyConfigurationTemplatesException,

    -- ** OperationInProgressException
    _OperationInProgressException,

    -- ** TooManyBucketsException
    _TooManyBucketsException,

    -- ** S3SubscriptionRequiredException
    _S3SubscriptionRequiredException,

    -- ** SourceBundleDeletionException
    _SourceBundleDeletionException,

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** ElasticBeanstalkServiceException
    _ElasticBeanstalkServiceException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** CodeBuildNotInServiceRegionException
    _CodeBuildNotInServiceRegionException,

    -- ** PlatformVersionStillReferencedException
    _PlatformVersionStillReferencedException,

    -- ** TooManyApplicationVersionsException
    _TooManyApplicationVersionsException,

    -- ** S3LocationNotInServiceRegionException
    _S3LocationNotInServiceRegionException,

    -- ** ManagedActionInvalidStateException
    _ManagedActionInvalidStateException,

    -- * Waiters
    -- $waiters

    -- ** EnvironmentTerminated
    environmentTerminated,

    -- ** EnvironmentUpdated
    environmentUpdated,

    -- ** EnvironmentExists
    environmentExists,

    -- * Operations
    -- $operations

    -- ** SwapEnvironmentCNAMEs
    module Network.AWS.ElasticBeanstalk.SwapEnvironmentCNAMEs,

    -- ** ListPlatformBranches
    module Network.AWS.ElasticBeanstalk.ListPlatformBranches,

    -- ** ListAvailableSolutionStacks
    module Network.AWS.ElasticBeanstalk.ListAvailableSolutionStacks,

    -- ** DescribeEnvironmentHealth
    module Network.AWS.ElasticBeanstalk.DescribeEnvironmentHealth,

    -- ** CreateConfigurationTemplate
    module Network.AWS.ElasticBeanstalk.CreateConfigurationTemplate,

    -- ** DescribeApplications
    module Network.AWS.ElasticBeanstalk.DescribeApplications,

    -- ** ListPlatformVersions (Paginated)
    module Network.AWS.ElasticBeanstalk.ListPlatformVersions,

    -- ** CreateApplicationVersion
    module Network.AWS.ElasticBeanstalk.CreateApplicationVersion,

    -- ** TerminateEnvironment
    module Network.AWS.ElasticBeanstalk.TerminateEnvironment,

    -- ** DescribeEnvironmentResources
    module Network.AWS.ElasticBeanstalk.DescribeEnvironmentResources,

    -- ** UpdateApplicationVersion
    module Network.AWS.ElasticBeanstalk.UpdateApplicationVersion,

    -- ** CreatePlatformVersion
    module Network.AWS.ElasticBeanstalk.CreatePlatformVersion,

    -- ** DeleteApplicationVersion
    module Network.AWS.ElasticBeanstalk.DeleteApplicationVersion,

    -- ** CreateEnvironment
    module Network.AWS.ElasticBeanstalk.CreateEnvironment,

    -- ** CreateApplication
    module Network.AWS.ElasticBeanstalk.CreateApplication,

    -- ** ComposeEnvironments
    module Network.AWS.ElasticBeanstalk.ComposeEnvironments,

    -- ** CheckDNSAvailability
    module Network.AWS.ElasticBeanstalk.CheckDNSAvailability,

    -- ** DescribeAccountAttributes
    module Network.AWS.ElasticBeanstalk.DescribeAccountAttributes,

    -- ** ValidateConfigurationSettings
    module Network.AWS.ElasticBeanstalk.ValidateConfigurationSettings,

    -- ** CreateStorageLocation
    module Network.AWS.ElasticBeanstalk.CreateStorageLocation,

    -- ** DescribeEnvironmentManagedActions
    module Network.AWS.ElasticBeanstalk.DescribeEnvironmentManagedActions,

    -- ** DescribeConfigurationSettings
    module Network.AWS.ElasticBeanstalk.DescribeConfigurationSettings,

    -- ** DescribeConfigurationOptions
    module Network.AWS.ElasticBeanstalk.DescribeConfigurationOptions,

    -- ** RetrieveEnvironmentInfo
    module Network.AWS.ElasticBeanstalk.RetrieveEnvironmentInfo,

    -- ** RequestEnvironmentInfo
    module Network.AWS.ElasticBeanstalk.RequestEnvironmentInfo,

    -- ** DescribeEvents (Paginated)
    module Network.AWS.ElasticBeanstalk.DescribeEvents,

    -- ** ApplyEnvironmentManagedAction
    module Network.AWS.ElasticBeanstalk.ApplyEnvironmentManagedAction,

    -- ** UpdateApplicationResourceLifecycle
    module Network.AWS.ElasticBeanstalk.UpdateApplicationResourceLifecycle,

    -- ** RebuildEnvironment
    module Network.AWS.ElasticBeanstalk.RebuildEnvironment,

    -- ** UpdateEnvironment
    module Network.AWS.ElasticBeanstalk.UpdateEnvironment,

    -- ** DeletePlatformVersion
    module Network.AWS.ElasticBeanstalk.DeletePlatformVersion,

    -- ** DeleteEnvironmentConfiguration
    module Network.AWS.ElasticBeanstalk.DeleteEnvironmentConfiguration,

    -- ** DescribeEnvironmentManagedActionHistory (Paginated)
    module Network.AWS.ElasticBeanstalk.DescribeEnvironmentManagedActionHistory,

    -- ** UpdateConfigurationTemplate
    module Network.AWS.ElasticBeanstalk.UpdateConfigurationTemplate,

    -- ** DeleteConfigurationTemplate
    module Network.AWS.ElasticBeanstalk.DeleteConfigurationTemplate,

    -- ** UpdateTagsForResource
    module Network.AWS.ElasticBeanstalk.UpdateTagsForResource,

    -- ** DescribeApplicationVersions (Paginated)
    module Network.AWS.ElasticBeanstalk.DescribeApplicationVersions,

    -- ** AbortEnvironmentUpdate
    module Network.AWS.ElasticBeanstalk.AbortEnvironmentUpdate,

    -- ** DescribeEnvironments (Paginated)
    module Network.AWS.ElasticBeanstalk.DescribeEnvironments,

    -- ** RestartAppServer
    module Network.AWS.ElasticBeanstalk.RestartAppServer,

    -- ** AssociateEnvironmentOperationsRole
    module Network.AWS.ElasticBeanstalk.AssociateEnvironmentOperationsRole,

    -- ** DeleteApplication
    module Network.AWS.ElasticBeanstalk.DeleteApplication,

    -- ** DescribeInstancesHealth
    module Network.AWS.ElasticBeanstalk.DescribeInstancesHealth,

    -- ** UpdateApplication
    module Network.AWS.ElasticBeanstalk.UpdateApplication,

    -- ** DescribePlatformVersion
    module Network.AWS.ElasticBeanstalk.DescribePlatformVersion,

    -- ** DisassociateEnvironmentOperationsRole
    module Network.AWS.ElasticBeanstalk.DisassociateEnvironmentOperationsRole,

    -- ** ListTagsForResource
    module Network.AWS.ElasticBeanstalk.ListTagsForResource,

    -- * Types

    -- ** ActionHistoryStatus
    ActionHistoryStatus (..),

    -- ** ActionStatus
    ActionStatus (..),

    -- ** ActionType
    ActionType (..),

    -- ** ApplicationVersionStatus
    ApplicationVersionStatus (..),

    -- ** ComputeType
    ComputeType (..),

    -- ** ConfigurationDeploymentStatus
    ConfigurationDeploymentStatus (..),

    -- ** ConfigurationOptionValueType
    ConfigurationOptionValueType (..),

    -- ** EnvironmentHealth
    EnvironmentHealth (..),

    -- ** EnvironmentHealthAttribute
    EnvironmentHealthAttribute (..),

    -- ** EnvironmentHealthStatus
    EnvironmentHealthStatus (..),

    -- ** EnvironmentInfoType
    EnvironmentInfoType (..),

    -- ** EnvironmentStatus
    EnvironmentStatus (..),

    -- ** EventSeverity
    EventSeverity (..),

    -- ** FailureType
    FailureType (..),

    -- ** InstancesHealthAttribute
    InstancesHealthAttribute (..),

    -- ** PlatformStatus
    PlatformStatus (..),

    -- ** SourceRepository
    SourceRepository (..),

    -- ** SourceType
    SourceType (..),

    -- ** ValidationSeverity
    ValidationSeverity (..),

    -- ** ApplicationDescription
    ApplicationDescription,
    applicationDescription,
    adApplicationARN,
    adDateCreated,
    adVersions,
    adDateUpdated,
    adResourceLifecycleConfig,
    adDescription,
    adConfigurationTemplates,
    adApplicationName,

    -- ** ApplicationDescriptionMessage
    ApplicationDescriptionMessage,
    applicationDescriptionMessage,
    admApplication,

    -- ** ApplicationMetrics
    ApplicationMetrics,
    applicationMetrics,
    amDuration,
    amStatusCodes,
    amRequestCount,
    amLatency,

    -- ** ApplicationResourceLifecycleConfig
    ApplicationResourceLifecycleConfig,
    applicationResourceLifecycleConfig,
    arlcServiceRole,
    arlcVersionLifecycleConfig,

    -- ** ApplicationVersionDescription
    ApplicationVersionDescription,
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

    -- ** ApplicationVersionDescriptionMessage
    ApplicationVersionDescriptionMessage,
    applicationVersionDescriptionMessage,
    avdmApplicationVersion,

    -- ** ApplicationVersionLifecycleConfig
    ApplicationVersionLifecycleConfig,
    applicationVersionLifecycleConfig,
    avlcMaxAgeRule,
    avlcMaxCountRule,

    -- ** AutoScalingGroup
    AutoScalingGroup,
    autoScalingGroup,
    asgName,

    -- ** BuildConfiguration
    BuildConfiguration,
    buildConfiguration,
    bcArtifactName,
    bcTimeoutInMinutes,
    bcComputeType,
    bcCodeBuildServiceRole,
    bcImage,

    -- ** Builder
    Builder,
    builder,
    bARN,

    -- ** CPUUtilization
    CPUUtilization,
    cpuUtilization,
    cuIdle,
    cuUser,
    cuPrivileged,
    cuIOWait,
    cuSoftIRQ,
    cuNice,
    cuSystem,
    cuIRQ,

    -- ** ConfigurationOptionDescription
    ConfigurationOptionDescription,
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

    -- ** ConfigurationOptionSetting
    ConfigurationOptionSetting,
    configurationOptionSetting,
    cosOptionName,
    cosValue,
    cosNamespace,
    cosResourceName,

    -- ** ConfigurationSettingsDescription
    ConfigurationSettingsDescription,
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

    -- ** CustomAMI
    CustomAMI,
    customAMI,
    caVirtualizationType,
    caImageId,

    -- ** Deployment
    Deployment,
    deployment,
    dStatus,
    dDeploymentId,
    dVersionLabel,
    dDeploymentTime,

    -- ** EnvironmentDescription
    EnvironmentDescription,
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

    -- ** EnvironmentDescriptionsMessage
    EnvironmentDescriptionsMessage,
    environmentDescriptionsMessage,
    edmNextToken,
    edmEnvironments,

    -- ** EnvironmentInfoDescription
    EnvironmentInfoDescription,
    environmentInfoDescription,
    eidMessage,
    eidInfoType,
    eidEC2InstanceId,
    eidSampleTimestamp,

    -- ** EnvironmentLink
    EnvironmentLink,
    environmentLink,
    elEnvironmentName,
    elLinkName,

    -- ** EnvironmentResourceDescription
    EnvironmentResourceDescription,
    environmentResourceDescription,
    erdLaunchConfigurations,
    erdLaunchTemplates,
    erdTriggers,
    erdInstances,
    erdEnvironmentName,
    erdQueues,
    erdLoadBalancers,
    erdAutoScalingGroups,

    -- ** EnvironmentResourcesDescription
    EnvironmentResourcesDescription,
    environmentResourcesDescription,
    erdLoadBalancer,

    -- ** EnvironmentTier
    EnvironmentTier,
    environmentTier,
    etVersion,
    etName,
    etType,

    -- ** EventDescription
    EventDescription,
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

    -- ** Instance
    Instance,
    instance',
    iId,

    -- ** InstanceHealthSummary
    InstanceHealthSummary,
    instanceHealthSummary,
    ihsOK,
    ihsNoData,
    ihsInfo,
    ihsSevere,
    ihsWarning,
    ihsPending,
    ihsDegraded,
    ihsUnknown,

    -- ** Latency
    Latency,
    latency,
    lP95,
    lP10,
    lP999,
    lP99,
    lP85,
    lP50,
    lP90,
    lP75,

    -- ** LaunchConfiguration
    LaunchConfiguration,
    launchConfiguration,
    lcName,

    -- ** LaunchTemplate
    LaunchTemplate,
    launchTemplate,
    ltId,

    -- ** Listener
    Listener,
    listener,
    lPort,
    lProtocol,

    -- ** LoadBalancer
    LoadBalancer,
    loadBalancer,
    lbName,

    -- ** LoadBalancerDescription
    LoadBalancerDescription,
    loadBalancerDescription,
    lbdDomain,
    lbdListeners,
    lbdLoadBalancerName,

    -- ** ManagedAction
    ManagedAction,
    managedAction,
    maStatus,
    maActionType,
    maActionId,
    maActionDescription,
    maWindowStartTime,

    -- ** ManagedActionHistoryItem
    ManagedActionHistoryItem,
    managedActionHistoryItem,
    mahiStatus,
    mahiActionType,
    mahiExecutedTime,
    mahiActionId,
    mahiActionDescription,
    mahiFinishedTime,
    mahiFailureDescription,
    mahiFailureType,

    -- ** MaxAgeRule
    MaxAgeRule,
    maxAgeRule,
    marDeleteSourceFromS3,
    marMaxAgeInDays,
    marEnabled,

    -- ** MaxCountRule
    MaxCountRule,
    maxCountRule,
    mcrMaxCount,
    mcrDeleteSourceFromS3,
    mcrEnabled,

    -- ** OptionRestrictionRegex
    OptionRestrictionRegex,
    optionRestrictionRegex,
    orrLabel,
    orrPattern,

    -- ** OptionSpecification
    OptionSpecification,
    optionSpecification,
    osOptionName,
    osNamespace,
    osResourceName,

    -- ** PlatformBranchSummary
    PlatformBranchSummary,
    platformBranchSummary,
    pbsBranchName,
    pbsBranchOrder,
    pbsLifecycleState,
    pbsSupportedTierList,
    pbsPlatformName,

    -- ** PlatformDescription
    PlatformDescription,
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

    -- ** PlatformFilter
    PlatformFilter,
    platformFilter,
    pfValues,
    pfOperator,
    pfType,

    -- ** PlatformFramework
    PlatformFramework,
    platformFramework,
    pfVersion,
    pfName,

    -- ** PlatformProgrammingLanguage
    PlatformProgrammingLanguage,
    platformProgrammingLanguage,
    pplVersion,
    pplName,

    -- ** PlatformSummary
    PlatformSummary,
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

    -- ** Queue
    Queue,
    queue,
    qName,
    qURL,

    -- ** ResourceQuota
    ResourceQuota,
    resourceQuota,
    rqMaximum,

    -- ** ResourceQuotas
    ResourceQuotas,
    resourceQuotas,
    rqApplicationQuota,
    rqConfigurationTemplateQuota,
    rqApplicationVersionQuota,
    rqEnvironmentQuota,
    rqCustomPlatformQuota,

    -- ** S3Location
    S3Location,
    s3Location,
    slS3Bucket,
    slS3Key,

    -- ** SearchFilter
    SearchFilter,
    searchFilter,
    sfValues,
    sfOperator,
    sfAttribute,

    -- ** SingleInstanceHealth
    SingleInstanceHealth,
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

    -- ** SolutionStackDescription
    SolutionStackDescription,
    solutionStackDescription,
    ssdPermittedFileTypes,
    ssdSolutionStackName,

    -- ** SourceBuildInformation
    SourceBuildInformation,
    sourceBuildInformation,
    sbiSourceType,
    sbiSourceRepository,
    sbiSourceLocation,

    -- ** SourceConfiguration
    SourceConfiguration,
    sourceConfiguration,
    scTemplateName,
    scApplicationName,

    -- ** StatusCodes
    StatusCodes,
    statusCodes,
    scStatus3xx,
    scStatus5xx,
    scStatus2xx,
    scStatus4xx,

    -- ** SystemStatus
    SystemStatus,
    systemStatus,
    ssCPUUtilization,
    ssLoadAverage,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** Trigger
    Trigger,
    trigger,
    tName,

    -- ** ValidationMessage
    ValidationMessage,
    validationMessage,
    vmOptionName,
    vmSeverity,
    vmMessage,
    vmNamespace,
  )
where

import Network.AWS.ElasticBeanstalk.AbortEnvironmentUpdate
import Network.AWS.ElasticBeanstalk.ApplyEnvironmentManagedAction
import Network.AWS.ElasticBeanstalk.AssociateEnvironmentOperationsRole
import Network.AWS.ElasticBeanstalk.CheckDNSAvailability
import Network.AWS.ElasticBeanstalk.ComposeEnvironments
import Network.AWS.ElasticBeanstalk.CreateApplication
import Network.AWS.ElasticBeanstalk.CreateApplicationVersion
import Network.AWS.ElasticBeanstalk.CreateConfigurationTemplate
import Network.AWS.ElasticBeanstalk.CreateEnvironment
import Network.AWS.ElasticBeanstalk.CreatePlatformVersion
import Network.AWS.ElasticBeanstalk.CreateStorageLocation
import Network.AWS.ElasticBeanstalk.DeleteApplication
import Network.AWS.ElasticBeanstalk.DeleteApplicationVersion
import Network.AWS.ElasticBeanstalk.DeleteConfigurationTemplate
import Network.AWS.ElasticBeanstalk.DeleteEnvironmentConfiguration
import Network.AWS.ElasticBeanstalk.DeletePlatformVersion
import Network.AWS.ElasticBeanstalk.DescribeAccountAttributes
import Network.AWS.ElasticBeanstalk.DescribeApplicationVersions
import Network.AWS.ElasticBeanstalk.DescribeApplications
import Network.AWS.ElasticBeanstalk.DescribeConfigurationOptions
import Network.AWS.ElasticBeanstalk.DescribeConfigurationSettings
import Network.AWS.ElasticBeanstalk.DescribeEnvironmentHealth
import Network.AWS.ElasticBeanstalk.DescribeEnvironmentManagedActionHistory
import Network.AWS.ElasticBeanstalk.DescribeEnvironmentManagedActions
import Network.AWS.ElasticBeanstalk.DescribeEnvironmentResources
import Network.AWS.ElasticBeanstalk.DescribeEnvironments
import Network.AWS.ElasticBeanstalk.DescribeEvents
import Network.AWS.ElasticBeanstalk.DescribeInstancesHealth
import Network.AWS.ElasticBeanstalk.DescribePlatformVersion
import Network.AWS.ElasticBeanstalk.DisassociateEnvironmentOperationsRole
import Network.AWS.ElasticBeanstalk.ListAvailableSolutionStacks
import Network.AWS.ElasticBeanstalk.ListPlatformBranches
import Network.AWS.ElasticBeanstalk.ListPlatformVersions
import Network.AWS.ElasticBeanstalk.ListTagsForResource
import Network.AWS.ElasticBeanstalk.RebuildEnvironment
import Network.AWS.ElasticBeanstalk.RequestEnvironmentInfo
import Network.AWS.ElasticBeanstalk.RestartAppServer
import Network.AWS.ElasticBeanstalk.RetrieveEnvironmentInfo
import Network.AWS.ElasticBeanstalk.SwapEnvironmentCNAMEs
import Network.AWS.ElasticBeanstalk.TerminateEnvironment
import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.ElasticBeanstalk.UpdateApplication
import Network.AWS.ElasticBeanstalk.UpdateApplicationResourceLifecycle
import Network.AWS.ElasticBeanstalk.UpdateApplicationVersion
import Network.AWS.ElasticBeanstalk.UpdateConfigurationTemplate
import Network.AWS.ElasticBeanstalk.UpdateEnvironment
import Network.AWS.ElasticBeanstalk.UpdateTagsForResource
import Network.AWS.ElasticBeanstalk.ValidateConfigurationSettings
import Network.AWS.ElasticBeanstalk.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ElasticBeanstalk'.

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
