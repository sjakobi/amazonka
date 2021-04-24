{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types
  ( -- * Service Configuration
    ecs,

    -- * Errors
    _UpdateInProgressException,
    _ServiceNotFoundException,
    _PlatformTaskDefinitionIncompatibilityException,
    _UnsupportedFeatureException,
    _ClusterContainsContainerInstancesException,
    _TaskSetNotFoundException,
    _ClusterContainsServicesException,
    _PlatformUnknownException,
    _BlockedException,
    _InvalidParameterException,
    _AccessDeniedException,
    _ResourceInUseException,
    _LimitExceededException,
    _MissingVersionException,
    _ClientException,
    _ClusterNotFoundException,
    _NoUpdateAvailableException,
    _ResourceNotFoundException,
    _ServiceNotActiveException,
    _ClusterContainsTasksException,
    _TargetNotFoundException,
    _AttributeLimitExceededException,
    _ServerException,

    -- * AgentUpdateStatus
    AgentUpdateStatus (..),

    -- * AssignPublicIP
    AssignPublicIP (..),

    -- * CapacityProviderField
    CapacityProviderField (..),

    -- * CapacityProviderStatus
    CapacityProviderStatus (..),

    -- * CapacityProviderUpdateStatus
    CapacityProviderUpdateStatus (..),

    -- * ClusterField
    ClusterField (..),

    -- * ClusterSettingName
    ClusterSettingName (..),

    -- * Compatibility
    Compatibility (..),

    -- * Connectivity
    Connectivity (..),

    -- * ContainerCondition
    ContainerCondition (..),

    -- * ContainerInstanceField
    ContainerInstanceField (..),

    -- * ContainerInstanceStatus
    ContainerInstanceStatus (..),

    -- * DeploymentControllerType
    DeploymentControllerType (..),

    -- * DeploymentRolloutState
    DeploymentRolloutState (..),

    -- * DesiredStatus
    DesiredStatus (..),

    -- * DeviceCgroupPermission
    DeviceCgroupPermission (..),

    -- * EFSAuthorizationConfigIAM
    EFSAuthorizationConfigIAM (..),

    -- * EFSTransitEncryption
    EFSTransitEncryption (..),

    -- * EnvironmentFileType
    EnvironmentFileType (..),

    -- * FirelensConfigurationType
    FirelensConfigurationType (..),

    -- * HealthStatus
    HealthStatus (..),

    -- * IPcMode
    IPcMode (..),

    -- * LaunchType
    LaunchType (..),

    -- * LogDriver
    LogDriver (..),

    -- * ManagedScalingStatus
    ManagedScalingStatus (..),

    -- * ManagedTerminationProtection
    ManagedTerminationProtection (..),

    -- * NetworkMode
    NetworkMode (..),

    -- * PidMode
    PidMode (..),

    -- * PlacementConstraintType
    PlacementConstraintType (..),

    -- * PlacementStrategyType
    PlacementStrategyType (..),

    -- * PlatformDeviceType
    PlatformDeviceType (..),

    -- * PropagateTags
    PropagateTags (..),

    -- * ProxyConfigurationType
    ProxyConfigurationType (..),

    -- * ResourceType
    ResourceType (..),

    -- * ScaleUnit
    ScaleUnit (..),

    -- * SchedulingStrategy
    SchedulingStrategy (..),

    -- * Scope
    Scope (..),

    -- * ServiceField
    ServiceField (..),

    -- * SettingName
    SettingName (..),

    -- * SortOrder
    SortOrder (..),

    -- * StabilityStatus
    StabilityStatus (..),

    -- * TargetType
    TargetType (..),

    -- * TaskDefinitionFamilyStatus
    TaskDefinitionFamilyStatus (..),

    -- * TaskDefinitionField
    TaskDefinitionField (..),

    -- * TaskDefinitionPlacementConstraintType
    TaskDefinitionPlacementConstraintType (..),

    -- * TaskDefinitionStatus
    TaskDefinitionStatus (..),

    -- * TaskField
    TaskField (..),

    -- * TaskSetField
    TaskSetField (..),

    -- * TaskStopCode
    TaskStopCode (..),

    -- * TransportProtocol
    TransportProtocol (..),

    -- * UlimitName
    UlimitName (..),

    -- * AWSVPCConfiguration
    AWSVPCConfiguration (..),
    awsVPCConfiguration,
    avcAssignPublicIP,
    avcSecurityGroups,
    avcSubnets,

    -- * Attachment
    Attachment (..),
    attachment,
    aStatus,
    aId,
    aDetails,
    aType,

    -- * AttachmentStateChange
    AttachmentStateChange (..),
    attachmentStateChange,
    ascAttachmentARN,
    ascStatus,

    -- * Attribute
    Attribute (..),
    attribute,
    aTargetId,
    aTargetType,
    aValue,
    aName,

    -- * AutoScalingGroupProvider
    AutoScalingGroupProvider (..),
    autoScalingGroupProvider,
    asgpManagedScaling,
    asgpManagedTerminationProtection,
    asgpAutoScalingGroupARN,

    -- * AutoScalingGroupProviderUpdate
    AutoScalingGroupProviderUpdate (..),
    autoScalingGroupProviderUpdate,
    asgpuManagedScaling,
    asgpuManagedTerminationProtection,

    -- * CapacityProvider
    CapacityProvider (..),
    capacityProvider,
    cpStatus,
    cpUpdateStatusReason,
    cpCapacityProviderARN,
    cpUpdateStatus,
    cpName,
    cpAutoScalingGroupProvider,
    cpTags,

    -- * CapacityProviderStrategyItem
    CapacityProviderStrategyItem (..),
    capacityProviderStrategyItem,
    cpsiWeight,
    cpsiBase,
    cpsiCapacityProvider,

    -- * Cluster
    Cluster (..),
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

    -- * ClusterSetting
    ClusterSetting (..),
    clusterSetting,
    csName,
    csValue,

    -- * Container
    Container (..),
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

    -- * ContainerDefinition
    ContainerDefinition (..),
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

    -- * ContainerDependency
    ContainerDependency (..),
    containerDependency,
    cdContainerName,
    cdCondition,

    -- * ContainerInstance
    ContainerInstance (..),
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

    -- * ContainerOverride
    ContainerOverride (..),
    containerOverride,
    coMemory,
    coMemoryReservation,
    coEnvironmentFiles,
    coEnvironment,
    coName,
    coCommand,
    coCpu,
    coResourceRequirements,

    -- * ContainerService
    ContainerService (..),
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

    -- * ContainerStateChange
    ContainerStateChange (..),
    containerStateChange,
    cscImageDigest,
    cscStatus,
    cscRuntimeId,
    cscExitCode,
    cscNetworkBindings,
    cscReason,
    cscContainerName,

    -- * Deployment
    Deployment (..),
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

    -- * DeploymentCircuitBreaker
    DeploymentCircuitBreaker (..),
    deploymentCircuitBreaker,
    dcbEnable,
    dcbRollback,

    -- * DeploymentConfiguration
    DeploymentConfiguration (..),
    deploymentConfiguration,
    dcMaximumPercent,
    dcMinimumHealthyPercent,
    dcDeploymentCircuitBreaker,

    -- * DeploymentController
    DeploymentController (..),
    deploymentController,
    dcType,

    -- * Device
    Device (..),
    device,
    dPermissions,
    dContainerPath,
    dHostPath,

    -- * DockerVolumeConfiguration
    DockerVolumeConfiguration (..),
    dockerVolumeConfiguration,
    dvcLabels,
    dvcScope,
    dvcDriver,
    dvcDriverOpts,
    dvcAutoprovision,

    -- * EFSAuthorizationConfig
    EFSAuthorizationConfig (..),
    eFSAuthorizationConfig,
    efsacAccessPointId,
    efsacIam,

    -- * EFSVolumeConfiguration
    EFSVolumeConfiguration (..),
    eFSVolumeConfiguration,
    efsvcTransitEncryptionPort,
    efsvcRootDirectory,
    efsvcAuthorizationConfig,
    efsvcTransitEncryption,
    efsvcFileSystemId,

    -- * EnvironmentFile
    EnvironmentFile (..),
    environmentFile,
    efValue,
    efType,

    -- * FSxWindowsFileServerAuthorizationConfig
    FSxWindowsFileServerAuthorizationConfig (..),
    fSxWindowsFileServerAuthorizationConfig,
    fswfsacCredentialsParameter,
    fswfsacDomain,

    -- * FSxWindowsFileServerVolumeConfiguration
    FSxWindowsFileServerVolumeConfiguration (..),
    fSxWindowsFileServerVolumeConfiguration,
    fswfsvcFileSystemId,
    fswfsvcRootDirectory,
    fswfsvcAuthorizationConfig,

    -- * Failure
    Failure (..),
    failure,
    fArn,
    fReason,
    fDetail,

    -- * FirelensConfiguration
    FirelensConfiguration (..),
    firelensConfiguration,
    fcOptions,
    fcType,

    -- * HealthCheck
    HealthCheck (..),
    healthCheck,
    hcRetries,
    hcTimeout,
    hcStartPeriod,
    hcInterval,
    hcCommand,

    -- * HostEntry
    HostEntry (..),
    hostEntry,
    heHostname,
    heIpAddress,

    -- * HostVolumeProperties
    HostVolumeProperties (..),
    hostVolumeProperties,
    hvpSourcePath,

    -- * InferenceAccelerator
    InferenceAccelerator (..),
    inferenceAccelerator,
    iaDeviceName,
    iaDeviceType,

    -- * InferenceAcceleratorOverride
    InferenceAcceleratorOverride (..),
    inferenceAcceleratorOverride,
    iaoDeviceName,
    iaoDeviceType,

    -- * KernelCapabilities
    KernelCapabilities (..),
    kernelCapabilities,
    kcDrop,
    kcAdd,

    -- * KeyValuePair
    KeyValuePair (..),
    keyValuePair,
    kvpName,
    kvpValue,

    -- * LinuxParameters
    LinuxParameters (..),
    linuxParameters,
    lpTmpfs,
    lpMaxSwap,
    lpCapabilities,
    lpDevices,
    lpSwappiness,
    lpInitProcessEnabled,
    lpSharedMemorySize,

    -- * LoadBalancer
    LoadBalancer (..),
    loadBalancer,
    lbTargetGroupARN,
    lbContainerPort,
    lbContainerName,
    lbLoadBalancerName,

    -- * LogConfiguration
    LogConfiguration (..),
    logConfiguration,
    lcOptions,
    lcSecretOptions,
    lcLogDriver,

    -- * ManagedScaling
    ManagedScaling (..),
    managedScaling,
    msStatus,
    msMaximumScalingStepSize,
    msMinimumScalingStepSize,
    msInstanceWarmupPeriod,
    msTargetCapacity,

    -- * MountPoint
    MountPoint (..),
    mountPoint,
    mpReadOnly,
    mpSourceVolume,
    mpContainerPath,

    -- * NetworkBinding
    NetworkBinding (..),
    networkBinding,
    nbHostPort,
    nbBindIP,
    nbProtocol,
    nbContainerPort,

    -- * NetworkConfiguration
    NetworkConfiguration (..),
    networkConfiguration,
    ncAwsvpcConfiguration,

    -- * NetworkInterface
    NetworkInterface (..),
    networkInterface,
    niPrivateIPv4Address,
    niIpv6Address,
    niAttachmentId,

    -- * PlacementConstraint
    PlacementConstraint (..),
    placementConstraint,
    pcType,
    pcExpression,

    -- * PlacementStrategy
    PlacementStrategy (..),
    placementStrategy,
    psType,
    psField,

    -- * PlatformDevice
    PlatformDevice (..),
    platformDevice,
    pdId,
    pdType,

    -- * PortMapping
    PortMapping (..),
    portMapping,
    pmHostPort,
    pmProtocol,
    pmContainerPort,

    -- * ProxyConfiguration
    ProxyConfiguration (..),
    proxyConfiguration,
    pProperties,
    pType,
    pContainerName,

    -- * RepositoryCredentials
    RepositoryCredentials (..),
    repositoryCredentials,
    rcCredentialsParameter,

    -- * Resource
    Resource (..),
    resource,
    rStringSetValue,
    rDoubleValue,
    rName,
    rLongValue,
    rType,
    rIntegerValue,

    -- * ResourceRequirement
    ResourceRequirement (..),
    resourceRequirement,
    rrValue,
    rrType,

    -- * Scale
    Scale (..),
    scale,
    sUnit,
    sValue,

    -- * Secret
    Secret (..),
    secret,
    sName,
    sValueFrom,

    -- * ServiceEvent
    ServiceEvent (..),
    serviceEvent,
    seMessage,
    seCreatedAt,
    seId,

    -- * ServiceRegistry
    ServiceRegistry (..),
    serviceRegistry,
    srPort,
    srContainerPort,
    srContainerName,
    srRegistryARN,

    -- * Setting
    Setting (..),
    setting,
    setName,
    setPrincipalARN,
    setValue,

    -- * SystemControl
    SystemControl (..),
    systemControl,
    scNamespace,
    scValue,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * Task
    Task (..),
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

    -- * TaskDefinition
    TaskDefinition (..),
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

    -- * TaskDefinitionPlacementConstraint
    TaskDefinitionPlacementConstraint (..),
    taskDefinitionPlacementConstraint,
    tdpcType,
    tdpcExpression,

    -- * TaskOverride
    TaskOverride (..),
    taskOverride,
    toTaskRoleARN,
    toMemory,
    toExecutionRoleARN,
    toInferenceAcceleratorOverrides,
    toContainerOverrides,
    toCpu,

    -- * TaskSet
    TaskSet (..),
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

    -- * Tmpfs
    Tmpfs (..),
    tmpfs,
    tMountOptions,
    tContainerPath,
    tSize,

    -- * Ulimit
    Ulimit (..),
    ulimit,
    uName,
    uSoftLimit,
    uHardLimit,

    -- * VersionInfo
    VersionInfo (..),
    versionInfo,
    viAgentVersion,
    viDockerVersion,
    viAgentHash,

    -- * Volume
    Volume (..),
    volume,
    vName,
    vDockerVolumeConfiguration,
    vFsxWindowsFileServerVolumeConfiguration,
    vEfsVolumeConfiguration,
    vHost,

    -- * VolumeFrom
    VolumeFrom (..),
    volumeFrom,
    vfReadOnly,
    vfSourceContainer,
  )
where

import Network.AWS.ECS.Types.AWSVPCConfiguration
import Network.AWS.ECS.Types.AgentUpdateStatus
import Network.AWS.ECS.Types.AssignPublicIP
import Network.AWS.ECS.Types.Attachment
import Network.AWS.ECS.Types.AttachmentStateChange
import Network.AWS.ECS.Types.Attribute
import Network.AWS.ECS.Types.AutoScalingGroupProvider
import Network.AWS.ECS.Types.AutoScalingGroupProviderUpdate
import Network.AWS.ECS.Types.CapacityProvider
import Network.AWS.ECS.Types.CapacityProviderField
import Network.AWS.ECS.Types.CapacityProviderStatus
import Network.AWS.ECS.Types.CapacityProviderStrategyItem
import Network.AWS.ECS.Types.CapacityProviderUpdateStatus
import Network.AWS.ECS.Types.Cluster
import Network.AWS.ECS.Types.ClusterField
import Network.AWS.ECS.Types.ClusterSetting
import Network.AWS.ECS.Types.ClusterSettingName
import Network.AWS.ECS.Types.Compatibility
import Network.AWS.ECS.Types.Connectivity
import Network.AWS.ECS.Types.Container
import Network.AWS.ECS.Types.ContainerCondition
import Network.AWS.ECS.Types.ContainerDefinition
import Network.AWS.ECS.Types.ContainerDependency
import Network.AWS.ECS.Types.ContainerInstance
import Network.AWS.ECS.Types.ContainerInstanceField
import Network.AWS.ECS.Types.ContainerInstanceStatus
import Network.AWS.ECS.Types.ContainerOverride
import Network.AWS.ECS.Types.ContainerService
import Network.AWS.ECS.Types.ContainerStateChange
import Network.AWS.ECS.Types.Deployment
import Network.AWS.ECS.Types.DeploymentCircuitBreaker
import Network.AWS.ECS.Types.DeploymentConfiguration
import Network.AWS.ECS.Types.DeploymentController
import Network.AWS.ECS.Types.DeploymentControllerType
import Network.AWS.ECS.Types.DeploymentRolloutState
import Network.AWS.ECS.Types.DesiredStatus
import Network.AWS.ECS.Types.Device
import Network.AWS.ECS.Types.DeviceCgroupPermission
import Network.AWS.ECS.Types.DockerVolumeConfiguration
import Network.AWS.ECS.Types.EFSAuthorizationConfig
import Network.AWS.ECS.Types.EFSAuthorizationConfigIAM
import Network.AWS.ECS.Types.EFSTransitEncryption
import Network.AWS.ECS.Types.EFSVolumeConfiguration
import Network.AWS.ECS.Types.EnvironmentFile
import Network.AWS.ECS.Types.EnvironmentFileType
import Network.AWS.ECS.Types.FSxWindowsFileServerAuthorizationConfig
import Network.AWS.ECS.Types.FSxWindowsFileServerVolumeConfiguration
import Network.AWS.ECS.Types.Failure
import Network.AWS.ECS.Types.FirelensConfiguration
import Network.AWS.ECS.Types.FirelensConfigurationType
import Network.AWS.ECS.Types.HealthCheck
import Network.AWS.ECS.Types.HealthStatus
import Network.AWS.ECS.Types.HostEntry
import Network.AWS.ECS.Types.HostVolumeProperties
import Network.AWS.ECS.Types.IPcMode
import Network.AWS.ECS.Types.InferenceAccelerator
import Network.AWS.ECS.Types.InferenceAcceleratorOverride
import Network.AWS.ECS.Types.KernelCapabilities
import Network.AWS.ECS.Types.KeyValuePair
import Network.AWS.ECS.Types.LaunchType
import Network.AWS.ECS.Types.LinuxParameters
import Network.AWS.ECS.Types.LoadBalancer
import Network.AWS.ECS.Types.LogConfiguration
import Network.AWS.ECS.Types.LogDriver
import Network.AWS.ECS.Types.ManagedScaling
import Network.AWS.ECS.Types.ManagedScalingStatus
import Network.AWS.ECS.Types.ManagedTerminationProtection
import Network.AWS.ECS.Types.MountPoint
import Network.AWS.ECS.Types.NetworkBinding
import Network.AWS.ECS.Types.NetworkConfiguration
import Network.AWS.ECS.Types.NetworkInterface
import Network.AWS.ECS.Types.NetworkMode
import Network.AWS.ECS.Types.PidMode
import Network.AWS.ECS.Types.PlacementConstraint
import Network.AWS.ECS.Types.PlacementConstraintType
import Network.AWS.ECS.Types.PlacementStrategy
import Network.AWS.ECS.Types.PlacementStrategyType
import Network.AWS.ECS.Types.PlatformDevice
import Network.AWS.ECS.Types.PlatformDeviceType
import Network.AWS.ECS.Types.PortMapping
import Network.AWS.ECS.Types.PropagateTags
import Network.AWS.ECS.Types.ProxyConfiguration
import Network.AWS.ECS.Types.ProxyConfigurationType
import Network.AWS.ECS.Types.RepositoryCredentials
import Network.AWS.ECS.Types.Resource
import Network.AWS.ECS.Types.ResourceRequirement
import Network.AWS.ECS.Types.ResourceType
import Network.AWS.ECS.Types.Scale
import Network.AWS.ECS.Types.ScaleUnit
import Network.AWS.ECS.Types.SchedulingStrategy
import Network.AWS.ECS.Types.Scope
import Network.AWS.ECS.Types.Secret
import Network.AWS.ECS.Types.ServiceEvent
import Network.AWS.ECS.Types.ServiceField
import Network.AWS.ECS.Types.ServiceRegistry
import Network.AWS.ECS.Types.Setting
import Network.AWS.ECS.Types.SettingName
import Network.AWS.ECS.Types.SortOrder
import Network.AWS.ECS.Types.StabilityStatus
import Network.AWS.ECS.Types.SystemControl
import Network.AWS.ECS.Types.Tag
import Network.AWS.ECS.Types.TargetType
import Network.AWS.ECS.Types.Task
import Network.AWS.ECS.Types.TaskDefinition
import Network.AWS.ECS.Types.TaskDefinitionFamilyStatus
import Network.AWS.ECS.Types.TaskDefinitionField
import Network.AWS.ECS.Types.TaskDefinitionPlacementConstraint
import Network.AWS.ECS.Types.TaskDefinitionPlacementConstraintType
import Network.AWS.ECS.Types.TaskDefinitionStatus
import Network.AWS.ECS.Types.TaskField
import Network.AWS.ECS.Types.TaskOverride
import Network.AWS.ECS.Types.TaskSet
import Network.AWS.ECS.Types.TaskSetField
import Network.AWS.ECS.Types.TaskStopCode
import Network.AWS.ECS.Types.Tmpfs
import Network.AWS.ECS.Types.TransportProtocol
import Network.AWS.ECS.Types.Ulimit
import Network.AWS.ECS.Types.UlimitName
import Network.AWS.ECS.Types.VersionInfo
import Network.AWS.ECS.Types.Volume
import Network.AWS.ECS.Types.VolumeFrom
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2014-11-13@ of the Amazon EC2 Container Service SDK configuration.
ecs :: Service
ecs =
  Service
    { _svcAbbrev = "ECS",
      _svcSigner = v4,
      _svcPrefix = "ecs",
      _svcVersion = "2014-11-13",
      _svcEndpoint = defaultEndpoint ecs,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "ECS",
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

-- | There is already a current Amazon ECS container agent update in progress on the specified container instance. If the container agent becomes disconnected while it is in a transitional stage, such as @PENDING@ or @STAGING@ , the update process can get stuck in that state. However, when the agent reconnects, it resumes where it stopped previously.
_UpdateInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_UpdateInProgressException =
  _MatchServiceError ecs "UpdateInProgressException"

-- | The specified service could not be found. You can view your available services with 'ListServices' . Amazon ECS services are cluster-specific and Region-specific.
_ServiceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceNotFoundException =
  _MatchServiceError ecs "ServiceNotFoundException"

-- | The specified platform version does not satisfy the task definition's required capabilities.
_PlatformTaskDefinitionIncompatibilityException :: AsError a => Getting (First ServiceError) a ServiceError
_PlatformTaskDefinitionIncompatibilityException =
  _MatchServiceError
    ecs
    "PlatformTaskDefinitionIncompatibilityException"

-- | The specified task is not supported in this Region.
_UnsupportedFeatureException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedFeatureException =
  _MatchServiceError
    ecs
    "UnsupportedFeatureException"

-- | You cannot delete a cluster that has registered container instances. First, deregister the container instances before you can delete the cluster. For more information, see 'DeregisterContainerInstance' .
_ClusterContainsContainerInstancesException :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterContainsContainerInstancesException =
  _MatchServiceError
    ecs
    "ClusterContainsContainerInstancesException"

-- | The specified task set could not be found. You can view your available task sets with 'DescribeTaskSets' . Task sets are specific to each cluster, service and Region.
_TaskSetNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_TaskSetNotFoundException =
  _MatchServiceError ecs "TaskSetNotFoundException"

-- | You cannot delete a cluster that contains services. First, update the service to reduce its desired task count to 0 and then delete the service. For more information, see 'UpdateService' and 'DeleteService' .
_ClusterContainsServicesException :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterContainsServicesException =
  _MatchServiceError
    ecs
    "ClusterContainsServicesException"

-- | The specified platform version does not exist.
_PlatformUnknownException :: AsError a => Getting (First ServiceError) a ServiceError
_PlatformUnknownException =
  _MatchServiceError ecs "PlatformUnknownException"

-- | Your AWS account has been blocked. For more information, contact <http://aws.amazon.com/contact-us/ AWS Support> .
_BlockedException :: AsError a => Getting (First ServiceError) a ServiceError
_BlockedException =
  _MatchServiceError ecs "BlockedException"

-- | The specified parameter is invalid. Review the available parameters for the API request.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError ecs "InvalidParameterException"

-- | You do not have authorization to perform the requested action.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError ecs "AccessDeniedException"

-- | The specified resource is in-use and cannot be removed.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError ecs "ResourceInUseException"

-- | The limit for the resource has been exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError ecs "LimitExceededException"

-- | Amazon ECS is unable to determine the current version of the Amazon ECS container agent on the container instance and does not have enough information to proceed with an update. This could be because the agent running on the container instance is an older or custom version that does not use our version information.
_MissingVersionException :: AsError a => Getting (First ServiceError) a ServiceError
_MissingVersionException =
  _MatchServiceError ecs "MissingVersionException"

-- | These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permissions to use the action or resource, or specifying an identifier that is not valid.
_ClientException :: AsError a => Getting (First ServiceError) a ServiceError
_ClientException =
  _MatchServiceError ecs "ClientException"

-- | The specified cluster could not be found. You can view your available clusters with 'ListClusters' . Amazon ECS clusters are Region-specific.
_ClusterNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterNotFoundException =
  _MatchServiceError ecs "ClusterNotFoundException"

-- | There is no update available for this Amazon ECS container agent. This could be because the agent is already running the latest version, or it is so old that there is no update path to the current version.
_NoUpdateAvailableException :: AsError a => Getting (First ServiceError) a ServiceError
_NoUpdateAvailableException =
  _MatchServiceError ecs "NoUpdateAvailableException"

-- | The specified resource could not be found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError ecs "ResourceNotFoundException"

-- | The specified service is not active. You can't update a service that is inactive. If you have previously deleted a service, you can re-create it with 'CreateService' .
_ServiceNotActiveException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceNotActiveException =
  _MatchServiceError ecs "ServiceNotActiveException"

-- | You cannot delete a cluster that has active tasks.
_ClusterContainsTasksException :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterContainsTasksException =
  _MatchServiceError
    ecs
    "ClusterContainsTasksException"

-- | The specified target could not be found. You can view your available container instances with 'ListContainerInstances' . Amazon ECS container instances are cluster-specific and Region-specific.
_TargetNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_TargetNotFoundException =
  _MatchServiceError ecs "TargetNotFoundException"

-- | You can apply up to 10 custom attributes per resource. You can view the attributes of a resource with 'ListAttributes' . You can remove existing attributes on a resource with 'DeleteAttributes' .
_AttributeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_AttributeLimitExceededException =
  _MatchServiceError
    ecs
    "AttributeLimitExceededException"

-- | These errors are usually caused by a server issue.
_ServerException :: AsError a => Getting (First ServiceError) a ServiceError
_ServerException =
  _MatchServiceError ecs "ServerException"
