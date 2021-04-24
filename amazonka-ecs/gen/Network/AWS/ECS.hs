{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Elastic Container Service__
--
-- Amazon Elastic Container Service (Amazon ECS) is a highly scalable, fast, container management service that makes it easy to run, stop, and manage Docker containers on a cluster. You can host your cluster on a serverless infrastructure that is managed by Amazon ECS by launching your services or tasks using the Fargate launch type. For more control, you can host your tasks on a cluster of Amazon Elastic Compute Cloud (Amazon EC2) instances that you manage by using the EC2 launch type. For more information about launch types, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> .
--
-- Amazon ECS lets you launch and stop container-based applications with simple API calls, allows you to get the state of your cluster from a centralized service, and gives you access to many familiar Amazon EC2 features.
--
-- You can use Amazon ECS to schedule the placement of containers across your cluster based on your resource needs, isolation policies, and availability requirements. Amazon ECS eliminates the need for you to operate your own cluster management and configuration management systems or worry about scaling your management infrastructure.
module Network.AWS.ECS
  ( -- * Service Configuration
    ecs,

    -- * Errors
    -- $errors

    -- ** UpdateInProgressException
    _UpdateInProgressException,

    -- ** ServiceNotFoundException
    _ServiceNotFoundException,

    -- ** PlatformTaskDefinitionIncompatibilityException
    _PlatformTaskDefinitionIncompatibilityException,

    -- ** UnsupportedFeatureException
    _UnsupportedFeatureException,

    -- ** ClusterContainsContainerInstancesException
    _ClusterContainsContainerInstancesException,

    -- ** TaskSetNotFoundException
    _TaskSetNotFoundException,

    -- ** ClusterContainsServicesException
    _ClusterContainsServicesException,

    -- ** PlatformUnknownException
    _PlatformUnknownException,

    -- ** BlockedException
    _BlockedException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** MissingVersionException
    _MissingVersionException,

    -- ** ClientException
    _ClientException,

    -- ** ClusterNotFoundException
    _ClusterNotFoundException,

    -- ** NoUpdateAvailableException
    _NoUpdateAvailableException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** ServiceNotActiveException
    _ServiceNotActiveException,

    -- ** ClusterContainsTasksException
    _ClusterContainsTasksException,

    -- ** TargetNotFoundException
    _TargetNotFoundException,

    -- ** AttributeLimitExceededException
    _AttributeLimitExceededException,

    -- ** ServerException
    _ServerException,

    -- * Waiters
    -- $waiters

    -- ** TasksRunning
    tasksRunning,

    -- ** TasksStopped
    tasksStopped,

    -- ** ServicesInactive
    servicesInactive,

    -- * Operations
    -- $operations

    -- ** SubmitAttachmentStateChanges
    module Network.AWS.ECS.SubmitAttachmentStateChanges,

    -- ** RegisterContainerInstance
    module Network.AWS.ECS.RegisterContainerInstance,

    -- ** DiscoverPollEndpoint
    module Network.AWS.ECS.DiscoverPollEndpoint,

    -- ** UpdateServicePrimaryTaskSet
    module Network.AWS.ECS.UpdateServicePrimaryTaskSet,

    -- ** DescribeClusters
    module Network.AWS.ECS.DescribeClusters,

    -- ** ListServices (Paginated)
    module Network.AWS.ECS.ListServices,

    -- ** RunTask
    module Network.AWS.ECS.RunTask,

    -- ** ListTasks (Paginated)
    module Network.AWS.ECS.ListTasks,

    -- ** CreateService
    module Network.AWS.ECS.CreateService,

    -- ** PutAccountSetting
    module Network.AWS.ECS.PutAccountSetting,

    -- ** DeleteAttributes
    module Network.AWS.ECS.DeleteAttributes,

    -- ** CreateCluster
    module Network.AWS.ECS.CreateCluster,

    -- ** CreateTaskSet
    module Network.AWS.ECS.CreateTaskSet,

    -- ** DescribeTasks
    module Network.AWS.ECS.DescribeTasks,

    -- ** UntagResource
    module Network.AWS.ECS.UntagResource,

    -- ** DescribeContainerInstances
    module Network.AWS.ECS.DescribeContainerInstances,

    -- ** TagResource
    module Network.AWS.ECS.TagResource,

    -- ** PutAccountSettingDefault
    module Network.AWS.ECS.PutAccountSettingDefault,

    -- ** ListAttributes (Paginated)
    module Network.AWS.ECS.ListAttributes,

    -- ** SubmitContainerStateChange
    module Network.AWS.ECS.SubmitContainerStateChange,

    -- ** ListContainerInstances (Paginated)
    module Network.AWS.ECS.ListContainerInstances,

    -- ** UpdateContainerAgent
    module Network.AWS.ECS.UpdateContainerAgent,

    -- ** UpdateCapacityProvider
    module Network.AWS.ECS.UpdateCapacityProvider,

    -- ** DeleteService
    module Network.AWS.ECS.DeleteService,

    -- ** UpdateService
    module Network.AWS.ECS.UpdateService,

    -- ** DeleteCapacityProvider
    module Network.AWS.ECS.DeleteCapacityProvider,

    -- ** DescribeTaskSets
    module Network.AWS.ECS.DescribeTaskSets,

    -- ** ListTaskDefinitions (Paginated)
    module Network.AWS.ECS.ListTaskDefinitions,

    -- ** CreateCapacityProvider
    module Network.AWS.ECS.CreateCapacityProvider,

    -- ** RegisterTaskDefinition
    module Network.AWS.ECS.RegisterTaskDefinition,

    -- ** DeleteTaskSet
    module Network.AWS.ECS.DeleteTaskSet,

    -- ** UpdateClusterSettings
    module Network.AWS.ECS.UpdateClusterSettings,

    -- ** UpdateTaskSet
    module Network.AWS.ECS.UpdateTaskSet,

    -- ** DeregisterContainerInstance
    module Network.AWS.ECS.DeregisterContainerInstance,

    -- ** PutAttributes
    module Network.AWS.ECS.PutAttributes,

    -- ** DeleteAccountSetting
    module Network.AWS.ECS.DeleteAccountSetting,

    -- ** ListAccountSettings (Paginated)
    module Network.AWS.ECS.ListAccountSettings,

    -- ** DescribeServices
    module Network.AWS.ECS.DescribeServices,

    -- ** DescribeCapacityProviders
    module Network.AWS.ECS.DescribeCapacityProviders,

    -- ** DeleteCluster
    module Network.AWS.ECS.DeleteCluster,

    -- ** ListClusters (Paginated)
    module Network.AWS.ECS.ListClusters,

    -- ** UpdateContainerInstancesState
    module Network.AWS.ECS.UpdateContainerInstancesState,

    -- ** SubmitTaskStateChange
    module Network.AWS.ECS.SubmitTaskStateChange,

    -- ** DeregisterTaskDefinition
    module Network.AWS.ECS.DeregisterTaskDefinition,

    -- ** StopTask
    module Network.AWS.ECS.StopTask,

    -- ** PutClusterCapacityProviders
    module Network.AWS.ECS.PutClusterCapacityProviders,

    -- ** DescribeTaskDefinition
    module Network.AWS.ECS.DescribeTaskDefinition,

    -- ** StartTask
    module Network.AWS.ECS.StartTask,

    -- ** ListTagsForResource
    module Network.AWS.ECS.ListTagsForResource,

    -- ** ListTaskDefinitionFamilies (Paginated)
    module Network.AWS.ECS.ListTaskDefinitionFamilies,

    -- * Types

    -- ** AgentUpdateStatus
    AgentUpdateStatus (..),

    -- ** AssignPublicIP
    AssignPublicIP (..),

    -- ** CapacityProviderField
    CapacityProviderField (..),

    -- ** CapacityProviderStatus
    CapacityProviderStatus (..),

    -- ** CapacityProviderUpdateStatus
    CapacityProviderUpdateStatus (..),

    -- ** ClusterField
    ClusterField (..),

    -- ** ClusterSettingName
    ClusterSettingName (..),

    -- ** Compatibility
    Compatibility (..),

    -- ** Connectivity
    Connectivity (..),

    -- ** ContainerCondition
    ContainerCondition (..),

    -- ** ContainerInstanceField
    ContainerInstanceField (..),

    -- ** ContainerInstanceStatus
    ContainerInstanceStatus (..),

    -- ** DeploymentControllerType
    DeploymentControllerType (..),

    -- ** DeploymentRolloutState
    DeploymentRolloutState (..),

    -- ** DesiredStatus
    DesiredStatus (..),

    -- ** DeviceCgroupPermission
    DeviceCgroupPermission (..),

    -- ** EFSAuthorizationConfigIAM
    EFSAuthorizationConfigIAM (..),

    -- ** EFSTransitEncryption
    EFSTransitEncryption (..),

    -- ** EnvironmentFileType
    EnvironmentFileType (..),

    -- ** FirelensConfigurationType
    FirelensConfigurationType (..),

    -- ** HealthStatus
    HealthStatus (..),

    -- ** IPcMode
    IPcMode (..),

    -- ** LaunchType
    LaunchType (..),

    -- ** LogDriver
    LogDriver (..),

    -- ** ManagedScalingStatus
    ManagedScalingStatus (..),

    -- ** ManagedTerminationProtection
    ManagedTerminationProtection (..),

    -- ** NetworkMode
    NetworkMode (..),

    -- ** PidMode
    PidMode (..),

    -- ** PlacementConstraintType
    PlacementConstraintType (..),

    -- ** PlacementStrategyType
    PlacementStrategyType (..),

    -- ** PlatformDeviceType
    PlatformDeviceType (..),

    -- ** PropagateTags
    PropagateTags (..),

    -- ** ProxyConfigurationType
    ProxyConfigurationType (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** ScaleUnit
    ScaleUnit (..),

    -- ** SchedulingStrategy
    SchedulingStrategy (..),

    -- ** Scope
    Scope (..),

    -- ** ServiceField
    ServiceField (..),

    -- ** SettingName
    SettingName (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** StabilityStatus
    StabilityStatus (..),

    -- ** TargetType
    TargetType (..),

    -- ** TaskDefinitionFamilyStatus
    TaskDefinitionFamilyStatus (..),

    -- ** TaskDefinitionField
    TaskDefinitionField (..),

    -- ** TaskDefinitionPlacementConstraintType
    TaskDefinitionPlacementConstraintType (..),

    -- ** TaskDefinitionStatus
    TaskDefinitionStatus (..),

    -- ** TaskField
    TaskField (..),

    -- ** TaskSetField
    TaskSetField (..),

    -- ** TaskStopCode
    TaskStopCode (..),

    -- ** TransportProtocol
    TransportProtocol (..),

    -- ** UlimitName
    UlimitName (..),

    -- ** AWSVPCConfiguration
    AWSVPCConfiguration,
    awsVPCConfiguration,
    avcAssignPublicIP,
    avcSecurityGroups,
    avcSubnets,

    -- ** Attachment
    Attachment,
    attachment,
    aStatus,
    aId,
    aDetails,
    aType,

    -- ** AttachmentStateChange
    AttachmentStateChange,
    attachmentStateChange,
    ascAttachmentARN,
    ascStatus,

    -- ** Attribute
    Attribute,
    attribute,
    aTargetId,
    aTargetType,
    aValue,
    aName,

    -- ** AutoScalingGroupProvider
    AutoScalingGroupProvider,
    autoScalingGroupProvider,
    asgpManagedScaling,
    asgpManagedTerminationProtection,
    asgpAutoScalingGroupARN,

    -- ** AutoScalingGroupProviderUpdate
    AutoScalingGroupProviderUpdate,
    autoScalingGroupProviderUpdate,
    asgpuManagedScaling,
    asgpuManagedTerminationProtection,

    -- ** CapacityProvider
    CapacityProvider,
    capacityProvider,
    cpStatus,
    cpUpdateStatusReason,
    cpCapacityProviderARN,
    cpUpdateStatus,
    cpName,
    cpAutoScalingGroupProvider,
    cpTags,

    -- ** CapacityProviderStrategyItem
    CapacityProviderStrategyItem,
    capacityProviderStrategyItem,
    cpsiWeight,
    cpsiBase,
    cpsiCapacityProvider,

    -- ** Cluster
    Cluster,
    cluster,
    cClusterARN,
    cStatus,
    cActiveServicesCount,
    cRegisteredContainerInstancesCount,
    cStatistics,
    cDefaultCapacityProviderStrategy,
    cPendingTasksCount,
    cTags,
    cAttachmentsStatus,
    cCapacityProviders,
    cClusterName,
    cSettings,
    cAttachments,
    cRunningTasksCount,

    -- ** ClusterSetting
    ClusterSetting,
    clusterSetting,
    csName,
    csValue,

    -- ** Container
    Container,
    container,
    cImageDigest,
    cGpuIds,
    cMemory,
    cMemoryReservation,
    cRuntimeId,
    cExitCode,
    cContainerARN,
    cName,
    cImage,
    cNetworkBindings,
    cReason,
    cCpu,
    cLastStatus,
    cTaskARN,
    cHealthStatus,
    cNetworkInterfaces,

    -- ** ContainerDefinition
    ContainerDefinition,
    containerDefinition,
    cdHostname,
    cdDependsOn,
    cdLinuxParameters,
    cdFirelensConfiguration,
    cdMemory,
    cdUser,
    cdMemoryReservation,
    cdDockerLabels,
    cdExtraHosts,
    cdSystemControls,
    cdPrivileged,
    cdLinks,
    cdEnvironmentFiles,
    cdInteractive,
    cdWorkingDirectory,
    cdEntryPoint,
    cdEnvironment,
    cdVolumesFrom,
    cdSecrets,
    cdMountPoints,
    cdDnsServers,
    cdName,
    cdImage,
    cdCommand,
    cdLogConfiguration,
    cdPseudoTerminal,
    cdDnsSearchDomains,
    cdEssential,
    cdPortMappings,
    cdCpu,
    cdResourceRequirements,
    cdStartTimeout,
    cdReadonlyRootFilesystem,
    cdUlimits,
    cdStopTimeout,
    cdDockerSecurityOptions,
    cdDisableNetworking,
    cdHealthCheck,
    cdRepositoryCredentials,

    -- ** ContainerDependency
    ContainerDependency,
    containerDependency,
    cdContainerName,
    cdCondition,

    -- ** ContainerInstance
    ContainerInstance,
    containerInstance,
    ciVersionInfo,
    ciStatus,
    ciAgentUpdateStatus,
    ciRegisteredResources,
    ciContainerInstanceARN,
    ciRegisteredAt,
    ciVersion,
    ciPendingTasksCount,
    ciAttributes,
    ciTags,
    ciAgentConnected,
    ciStatusReason,
    ciEc2InstanceId,
    ciRemainingResources,
    ciCapacityProviderName,
    ciAttachments,
    ciRunningTasksCount,

    -- ** ContainerOverride
    ContainerOverride,
    containerOverride,
    coMemory,
    coMemoryReservation,
    coEnvironmentFiles,
    coEnvironment,
    coName,
    coCommand,
    coCpu,
    coResourceRequirements,

    -- ** ContainerService
    ContainerService,
    containerService,
    conClusterARN,
    conTaskSets,
    conStatus,
    conRunningCount,
    conRoleARN,
    conDeploymentConfiguration,
    conNetworkConfiguration,
    conCapacityProviderStrategy,
    conDesiredCount,
    conEnableECSManagedTags,
    conLaunchType,
    conCreatedAt,
    conPlatformVersion,
    conDeploymentController,
    conServiceName,
    conPlacementStrategy,
    conDeployments,
    conPlacementConstraints,
    conEvents,
    conPendingCount,
    conLoadBalancers,
    conTags,
    conServiceRegistries,
    conHealthCheckGracePeriodSeconds,
    conSchedulingStrategy,
    conCreatedBy,
    conTaskDefinition,
    conServiceARN,
    conPropagateTags,

    -- ** ContainerStateChange
    ContainerStateChange,
    containerStateChange,
    cscImageDigest,
    cscStatus,
    cscRuntimeId,
    cscExitCode,
    cscNetworkBindings,
    cscReason,
    cscContainerName,

    -- ** Deployment
    Deployment,
    deployment,
    dRolloutState,
    dStatus,
    dRunningCount,
    dNetworkConfiguration,
    dCapacityProviderStrategy,
    dDesiredCount,
    dUpdatedAt,
    dLaunchType,
    dCreatedAt,
    dPlatformVersion,
    dId,
    dPendingCount,
    dRolloutStateReason,
    dTaskDefinition,
    dFailedTasks,

    -- ** DeploymentCircuitBreaker
    DeploymentCircuitBreaker,
    deploymentCircuitBreaker,
    dcbEnable,
    dcbRollback,

    -- ** DeploymentConfiguration
    DeploymentConfiguration,
    deploymentConfiguration,
    dcMaximumPercent,
    dcMinimumHealthyPercent,
    dcDeploymentCircuitBreaker,

    -- ** DeploymentController
    DeploymentController,
    deploymentController,
    dcType,

    -- ** Device
    Device,
    device,
    dPermissions,
    dContainerPath,
    dHostPath,

    -- ** DockerVolumeConfiguration
    DockerVolumeConfiguration,
    dockerVolumeConfiguration,
    dvcLabels,
    dvcScope,
    dvcDriver,
    dvcDriverOpts,
    dvcAutoprovision,

    -- ** EFSAuthorizationConfig
    EFSAuthorizationConfig,
    eFSAuthorizationConfig,
    efsacAccessPointId,
    efsacIam,

    -- ** EFSVolumeConfiguration
    EFSVolumeConfiguration,
    eFSVolumeConfiguration,
    efsvcTransitEncryptionPort,
    efsvcRootDirectory,
    efsvcAuthorizationConfig,
    efsvcTransitEncryption,
    efsvcFileSystemId,

    -- ** EnvironmentFile
    EnvironmentFile,
    environmentFile,
    efValue,
    efType,

    -- ** FSxWindowsFileServerAuthorizationConfig
    FSxWindowsFileServerAuthorizationConfig,
    fSxWindowsFileServerAuthorizationConfig,
    fswfsacCredentialsParameter,
    fswfsacDomain,

    -- ** FSxWindowsFileServerVolumeConfiguration
    FSxWindowsFileServerVolumeConfiguration,
    fSxWindowsFileServerVolumeConfiguration,
    fswfsvcFileSystemId,
    fswfsvcRootDirectory,
    fswfsvcAuthorizationConfig,

    -- ** Failure
    Failure,
    failure,
    fArn,
    fReason,
    fDetail,

    -- ** FirelensConfiguration
    FirelensConfiguration,
    firelensConfiguration,
    fcOptions,
    fcType,

    -- ** HealthCheck
    HealthCheck,
    healthCheck,
    hcRetries,
    hcTimeout,
    hcStartPeriod,
    hcInterval,
    hcCommand,

    -- ** HostEntry
    HostEntry,
    hostEntry,
    heHostname,
    heIpAddress,

    -- ** HostVolumeProperties
    HostVolumeProperties,
    hostVolumeProperties,
    hvpSourcePath,

    -- ** InferenceAccelerator
    InferenceAccelerator,
    inferenceAccelerator,
    iaDeviceName,
    iaDeviceType,

    -- ** InferenceAcceleratorOverride
    InferenceAcceleratorOverride,
    inferenceAcceleratorOverride,
    iaoDeviceName,
    iaoDeviceType,

    -- ** KernelCapabilities
    KernelCapabilities,
    kernelCapabilities,
    kcDrop,
    kcAdd,

    -- ** KeyValuePair
    KeyValuePair,
    keyValuePair,
    kvpName,
    kvpValue,

    -- ** LinuxParameters
    LinuxParameters,
    linuxParameters,
    lpTmpfs,
    lpMaxSwap,
    lpCapabilities,
    lpDevices,
    lpSwappiness,
    lpInitProcessEnabled,
    lpSharedMemorySize,

    -- ** LoadBalancer
    LoadBalancer,
    loadBalancer,
    lbTargetGroupARN,
    lbContainerPort,
    lbContainerName,
    lbLoadBalancerName,

    -- ** LogConfiguration
    LogConfiguration,
    logConfiguration,
    lcOptions,
    lcSecretOptions,
    lcLogDriver,

    -- ** ManagedScaling
    ManagedScaling,
    managedScaling,
    msStatus,
    msMaximumScalingStepSize,
    msMinimumScalingStepSize,
    msInstanceWarmupPeriod,
    msTargetCapacity,

    -- ** MountPoint
    MountPoint,
    mountPoint,
    mpReadOnly,
    mpSourceVolume,
    mpContainerPath,

    -- ** NetworkBinding
    NetworkBinding,
    networkBinding,
    nbHostPort,
    nbBindIP,
    nbProtocol,
    nbContainerPort,

    -- ** NetworkConfiguration
    NetworkConfiguration,
    networkConfiguration,
    ncAwsvpcConfiguration,

    -- ** NetworkInterface
    NetworkInterface,
    networkInterface,
    niPrivateIPv4Address,
    niIpv6Address,
    niAttachmentId,

    -- ** PlacementConstraint
    PlacementConstraint,
    placementConstraint,
    pcType,
    pcExpression,

    -- ** PlacementStrategy
    PlacementStrategy,
    placementStrategy,
    psType,
    psField,

    -- ** PlatformDevice
    PlatformDevice,
    platformDevice,
    pdId,
    pdType,

    -- ** PortMapping
    PortMapping,
    portMapping,
    pmHostPort,
    pmProtocol,
    pmContainerPort,

    -- ** ProxyConfiguration
    ProxyConfiguration,
    proxyConfiguration,
    pProperties,
    pType,
    pContainerName,

    -- ** RepositoryCredentials
    RepositoryCredentials,
    repositoryCredentials,
    rcCredentialsParameter,

    -- ** Resource
    Resource,
    resource,
    rStringSetValue,
    rDoubleValue,
    rName,
    rLongValue,
    rType,
    rIntegerValue,

    -- ** ResourceRequirement
    ResourceRequirement,
    resourceRequirement,
    rrValue,
    rrType,

    -- ** Scale
    Scale,
    scale,
    sUnit,
    sValue,

    -- ** Secret
    Secret,
    secret,
    sName,
    sValueFrom,

    -- ** ServiceEvent
    ServiceEvent,
    serviceEvent,
    seMessage,
    seCreatedAt,
    seId,

    -- ** ServiceRegistry
    ServiceRegistry,
    serviceRegistry,
    srPort,
    srContainerPort,
    srContainerName,
    srRegistryARN,

    -- ** Setting
    Setting,
    setting,
    setName,
    setPrincipalARN,
    setValue,

    -- ** SystemControl
    SystemControl,
    systemControl,
    scNamespace,
    scValue,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** Task
    Task,
    task,
    tClusterARN,
    tStartedAt,
    tMemory,
    tPullStartedAt,
    tContainerInstanceARN,
    tLaunchType,
    tConnectivity,
    tCreatedAt,
    tPlatformVersion,
    tStoppingAt,
    tVersion,
    tStartedBy,
    tInferenceAccelerators,
    tGroup,
    tAttributes,
    tAvailabilityZone,
    tOverrides,
    tDesiredStatus,
    tStoppedAt,
    tContainers,
    tTags,
    tPullStoppedAt,
    tExecutionStoppedAt,
    tCpu,
    tLastStatus,
    tTaskARN,
    tConnectivityAt,
    tHealthStatus,
    tStopCode,
    tTaskDefinitionARN,
    tStoppedReason,
    tCapacityProviderName,
    tAttachments,

    -- ** TaskDefinition
    TaskDefinition,
    taskDefinition,
    tdStatus,
    tdTaskRoleARN,
    tdMemory,
    tdContainerDefinitions,
    tdPidMode,
    tdRequiresCompatibilities,
    tdExecutionRoleARN,
    tdVolumes,
    tdCompatibilities,
    tdRegisteredAt,
    tdInferenceAccelerators,
    tdPlacementConstraints,
    tdProxyConfiguration,
    tdDeregisteredAt,
    tdRequiresAttributes,
    tdIpcMode,
    tdCpu,
    tdFamily,
    tdRevision,
    tdRegisteredBy,
    tdNetworkMode,
    tdTaskDefinitionARN,

    -- ** TaskDefinitionPlacementConstraint
    TaskDefinitionPlacementConstraint,
    taskDefinitionPlacementConstraint,
    tdpcType,
    tdpcExpression,

    -- ** TaskOverride
    TaskOverride,
    taskOverride,
    toTaskRoleARN,
    toMemory,
    toExecutionRoleARN,
    toInferenceAcceleratorOverrides,
    toContainerOverrides,
    toCpu,

    -- ** TaskSet
    TaskSet,
    taskSet,
    tsClusterARN,
    tsStatus,
    tsStabilityStatusAt,
    tsRunningCount,
    tsStabilityStatus,
    tsNetworkConfiguration,
    tsCapacityProviderStrategy,
    tsUpdatedAt,
    tsLaunchType,
    tsCreatedAt,
    tsPlatformVersion,
    tsId,
    tsStartedBy,
    tsComputedDesiredCount,
    tsPendingCount,
    tsLoadBalancers,
    tsTags,
    tsServiceRegistries,
    tsTaskDefinition,
    tsServiceARN,
    tsExternalId,
    tsScale,
    tsTaskSetARN,

    -- ** Tmpfs
    Tmpfs,
    tmpfs,
    tMountOptions,
    tContainerPath,
    tSize,

    -- ** Ulimit
    Ulimit,
    ulimit,
    uName,
    uSoftLimit,
    uHardLimit,

    -- ** VersionInfo
    VersionInfo,
    versionInfo,
    viAgentVersion,
    viDockerVersion,
    viAgentHash,

    -- ** Volume
    Volume,
    volume,
    vName,
    vDockerVolumeConfiguration,
    vFsxWindowsFileServerVolumeConfiguration,
    vEfsVolumeConfiguration,
    vHost,

    -- ** VolumeFrom
    VolumeFrom,
    volumeFrom,
    vfReadOnly,
    vfSourceContainer,
  )
where

import Network.AWS.ECS.CreateCapacityProvider
import Network.AWS.ECS.CreateCluster
import Network.AWS.ECS.CreateService
import Network.AWS.ECS.CreateTaskSet
import Network.AWS.ECS.DeleteAccountSetting
import Network.AWS.ECS.DeleteAttributes
import Network.AWS.ECS.DeleteCapacityProvider
import Network.AWS.ECS.DeleteCluster
import Network.AWS.ECS.DeleteService
import Network.AWS.ECS.DeleteTaskSet
import Network.AWS.ECS.DeregisterContainerInstance
import Network.AWS.ECS.DeregisterTaskDefinition
import Network.AWS.ECS.DescribeCapacityProviders
import Network.AWS.ECS.DescribeClusters
import Network.AWS.ECS.DescribeContainerInstances
import Network.AWS.ECS.DescribeServices
import Network.AWS.ECS.DescribeTaskDefinition
import Network.AWS.ECS.DescribeTaskSets
import Network.AWS.ECS.DescribeTasks
import Network.AWS.ECS.DiscoverPollEndpoint
import Network.AWS.ECS.ListAccountSettings
import Network.AWS.ECS.ListAttributes
import Network.AWS.ECS.ListClusters
import Network.AWS.ECS.ListContainerInstances
import Network.AWS.ECS.ListServices
import Network.AWS.ECS.ListTagsForResource
import Network.AWS.ECS.ListTaskDefinitionFamilies
import Network.AWS.ECS.ListTaskDefinitions
import Network.AWS.ECS.ListTasks
import Network.AWS.ECS.PutAccountSetting
import Network.AWS.ECS.PutAccountSettingDefault
import Network.AWS.ECS.PutAttributes
import Network.AWS.ECS.PutClusterCapacityProviders
import Network.AWS.ECS.RegisterContainerInstance
import Network.AWS.ECS.RegisterTaskDefinition
import Network.AWS.ECS.RunTask
import Network.AWS.ECS.StartTask
import Network.AWS.ECS.StopTask
import Network.AWS.ECS.SubmitAttachmentStateChanges
import Network.AWS.ECS.SubmitContainerStateChange
import Network.AWS.ECS.SubmitTaskStateChange
import Network.AWS.ECS.TagResource
import Network.AWS.ECS.Types
import Network.AWS.ECS.UntagResource
import Network.AWS.ECS.UpdateCapacityProvider
import Network.AWS.ECS.UpdateClusterSettings
import Network.AWS.ECS.UpdateContainerAgent
import Network.AWS.ECS.UpdateContainerInstancesState
import Network.AWS.ECS.UpdateService
import Network.AWS.ECS.UpdateServicePrimaryTaskSet
import Network.AWS.ECS.UpdateTaskSet
import Network.AWS.ECS.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ECS'.

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
