{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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

    -- * AssignPublicIp
    AssignPublicIp (..),

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

    -- * IpcMode
    IpcMode (..),

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

    -- * Attachment
    Attachment (..),
    newAttachment,

    -- * AttachmentStateChange
    AttachmentStateChange (..),
    newAttachmentStateChange,

    -- * Attribute
    Attribute (..),
    newAttribute,

    -- * AutoScalingGroupProvider
    AutoScalingGroupProvider (..),
    newAutoScalingGroupProvider,

    -- * AutoScalingGroupProviderUpdate
    AutoScalingGroupProviderUpdate (..),
    newAutoScalingGroupProviderUpdate,

    -- * AwsVpcConfiguration
    AwsVpcConfiguration (..),
    newAwsVpcConfiguration,

    -- * CapacityProvider
    CapacityProvider (..),
    newCapacityProvider,

    -- * CapacityProviderStrategyItem
    CapacityProviderStrategyItem (..),
    newCapacityProviderStrategyItem,

    -- * Cluster
    Cluster (..),
    newCluster,

    -- * ClusterSetting
    ClusterSetting (..),
    newClusterSetting,

    -- * Container
    Container (..),
    newContainer,

    -- * ContainerDefinition
    ContainerDefinition (..),
    newContainerDefinition,

    -- * ContainerDependency
    ContainerDependency (..),
    newContainerDependency,

    -- * ContainerInstance
    ContainerInstance (..),
    newContainerInstance,

    -- * ContainerOverride
    ContainerOverride (..),
    newContainerOverride,

    -- * ContainerService
    ContainerService (..),
    newContainerService,

    -- * ContainerStateChange
    ContainerStateChange (..),
    newContainerStateChange,

    -- * Deployment
    Deployment (..),
    newDeployment,

    -- * DeploymentCircuitBreaker
    DeploymentCircuitBreaker (..),
    newDeploymentCircuitBreaker,

    -- * DeploymentConfiguration
    DeploymentConfiguration (..),
    newDeploymentConfiguration,

    -- * DeploymentController
    DeploymentController (..),
    newDeploymentController,

    -- * Device
    Device (..),
    newDevice,

    -- * DockerVolumeConfiguration
    DockerVolumeConfiguration (..),
    newDockerVolumeConfiguration,

    -- * EFSAuthorizationConfig
    EFSAuthorizationConfig (..),
    newEFSAuthorizationConfig,

    -- * EFSVolumeConfiguration
    EFSVolumeConfiguration (..),
    newEFSVolumeConfiguration,

    -- * EnvironmentFile
    EnvironmentFile (..),
    newEnvironmentFile,

    -- * FSxWindowsFileServerAuthorizationConfig
    FSxWindowsFileServerAuthorizationConfig (..),
    newFSxWindowsFileServerAuthorizationConfig,

    -- * FSxWindowsFileServerVolumeConfiguration
    FSxWindowsFileServerVolumeConfiguration (..),
    newFSxWindowsFileServerVolumeConfiguration,

    -- * Failure
    Failure (..),
    newFailure,

    -- * FirelensConfiguration
    FirelensConfiguration (..),
    newFirelensConfiguration,

    -- * HealthCheck
    HealthCheck (..),
    newHealthCheck,

    -- * HostEntry
    HostEntry (..),
    newHostEntry,

    -- * HostVolumeProperties
    HostVolumeProperties (..),
    newHostVolumeProperties,

    -- * InferenceAccelerator
    InferenceAccelerator (..),
    newInferenceAccelerator,

    -- * InferenceAcceleratorOverride
    InferenceAcceleratorOverride (..),
    newInferenceAcceleratorOverride,

    -- * KernelCapabilities
    KernelCapabilities (..),
    newKernelCapabilities,

    -- * KeyValuePair
    KeyValuePair (..),
    newKeyValuePair,

    -- * LinuxParameters
    LinuxParameters (..),
    newLinuxParameters,

    -- * LoadBalancer
    LoadBalancer (..),
    newLoadBalancer,

    -- * LogConfiguration
    LogConfiguration (..),
    newLogConfiguration,

    -- * ManagedScaling
    ManagedScaling (..),
    newManagedScaling,

    -- * MountPoint
    MountPoint (..),
    newMountPoint,

    -- * NetworkBinding
    NetworkBinding (..),
    newNetworkBinding,

    -- * NetworkConfiguration
    NetworkConfiguration (..),
    newNetworkConfiguration,

    -- * NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,

    -- * PlacementConstraint
    PlacementConstraint (..),
    newPlacementConstraint,

    -- * PlacementStrategy
    PlacementStrategy (..),
    newPlacementStrategy,

    -- * PlatformDevice
    PlatformDevice (..),
    newPlatformDevice,

    -- * PortMapping
    PortMapping (..),
    newPortMapping,

    -- * ProxyConfiguration
    ProxyConfiguration (..),
    newProxyConfiguration,

    -- * RepositoryCredentials
    RepositoryCredentials (..),
    newRepositoryCredentials,

    -- * Resource
    Resource (..),
    newResource,

    -- * ResourceRequirement
    ResourceRequirement (..),
    newResourceRequirement,

    -- * Scale
    Scale (..),
    newScale,

    -- * Secret
    Secret (..),
    newSecret,

    -- * ServiceEvent
    ServiceEvent (..),
    newServiceEvent,

    -- * ServiceRegistry
    ServiceRegistry (..),
    newServiceRegistry,

    -- * Setting
    Setting (..),
    newSetting,

    -- * SystemControl
    SystemControl (..),
    newSystemControl,

    -- * Tag
    Tag (..),
    newTag,

    -- * Task
    Task (..),
    newTask,

    -- * TaskDefinition
    TaskDefinition (..),
    newTaskDefinition,

    -- * TaskDefinitionPlacementConstraint
    TaskDefinitionPlacementConstraint (..),
    newTaskDefinitionPlacementConstraint,

    -- * TaskOverride
    TaskOverride (..),
    newTaskOverride,

    -- * TaskSet
    TaskSet (..),
    newTaskSet,

    -- * Tmpfs
    Tmpfs (..),
    newTmpfs,

    -- * Ulimit
    Ulimit (..),
    newUlimit,

    -- * VersionInfo
    VersionInfo (..),
    newVersionInfo,

    -- * Volume
    Volume (..),
    newVolume,

    -- * VolumeFrom
    VolumeFrom (..),
    newVolumeFrom,
  )
where

import Network.AWS.ECS.Types.AgentUpdateStatus
import Network.AWS.ECS.Types.AssignPublicIp
import Network.AWS.ECS.Types.Attachment
import Network.AWS.ECS.Types.AttachmentStateChange
import Network.AWS.ECS.Types.Attribute
import Network.AWS.ECS.Types.AutoScalingGroupProvider
import Network.AWS.ECS.Types.AutoScalingGroupProviderUpdate
import Network.AWS.ECS.Types.AwsVpcConfiguration
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
import Network.AWS.ECS.Types.InferenceAccelerator
import Network.AWS.ECS.Types.InferenceAcceleratorOverride
import Network.AWS.ECS.Types.IpcMode
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2014-11-13@ of the Amazon EC2 Container Service SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "ECS",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "ecs",
      Prelude._svcVersion = "2014-11-13",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseJSONError "ECS",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | There is already a current Amazon ECS container agent update in progress
-- on the specified container instance. If the container agent becomes
-- disconnected while it is in a transitional stage, such as @PENDING@ or
-- @STAGING@, the update process can get stuck in that state. However, when
-- the agent reconnects, it resumes where it stopped previously.
_UpdateInProgressException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UpdateInProgressException =
  Prelude._MatchServiceError
    defaultService
    "UpdateInProgressException"

-- | The specified service could not be found. You can view your available
-- services with ListServices. Amazon ECS services are cluster-specific and
-- Region-specific.
_ServiceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ServiceNotFoundException"

-- | The specified platform version does not satisfy the task definition\'s
-- required capabilities.
_PlatformTaskDefinitionIncompatibilityException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PlatformTaskDefinitionIncompatibilityException =
  Prelude._MatchServiceError
    defaultService
    "PlatformTaskDefinitionIncompatibilityException"

-- | The specified task is not supported in this Region.
_UnsupportedFeatureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedFeatureException =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedFeatureException"

-- | You cannot delete a cluster that has registered container instances.
-- First, deregister the container instances before you can delete the
-- cluster. For more information, see DeregisterContainerInstance.
_ClusterContainsContainerInstancesException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ClusterContainsContainerInstancesException =
  Prelude._MatchServiceError
    defaultService
    "ClusterContainsContainerInstancesException"

-- | The specified task set could not be found. You can view your available
-- task sets with DescribeTaskSets. Task sets are specific to each cluster,
-- service and Region.
_TaskSetNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TaskSetNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "TaskSetNotFoundException"

-- | You cannot delete a cluster that contains services. First, update the
-- service to reduce its desired task count to 0 and then delete the
-- service. For more information, see UpdateService and DeleteService.
_ClusterContainsServicesException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ClusterContainsServicesException =
  Prelude._MatchServiceError
    defaultService
    "ClusterContainsServicesException"

-- | The specified platform version does not exist.
_PlatformUnknownException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PlatformUnknownException =
  Prelude._MatchServiceError
    defaultService
    "PlatformUnknownException"

-- | Your AWS account has been blocked. For more information, contact
-- <http://aws.amazon.com/contact-us/ AWS Support>.
_BlockedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BlockedException =
  Prelude._MatchServiceError
    defaultService
    "BlockedException"

-- | The specified parameter is invalid. Review the available parameters for
-- the API request.
_InvalidParameterException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameterException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterException"

-- | You do not have authorization to perform the requested action.
_AccessDeniedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AccessDeniedException =
  Prelude._MatchServiceError
    defaultService
    "AccessDeniedException"

-- | The specified resource is in-use and cannot be removed.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | The limit for the resource has been exceeded.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | Amazon ECS is unable to determine the current version of the Amazon ECS
-- container agent on the container instance and does not have enough
-- information to proceed with an update. This could be because the agent
-- running on the container instance is an older or custom version that
-- does not use our version information.
_MissingVersionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MissingVersionException =
  Prelude._MatchServiceError
    defaultService
    "MissingVersionException"

-- | These errors are usually caused by a client action, such as using an
-- action or resource on behalf of a user that doesn\'t have permissions to
-- use the action or resource, or specifying an identifier that is not
-- valid.
_ClientException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ClientException =
  Prelude._MatchServiceError
    defaultService
    "ClientException"

-- | The specified cluster could not be found. You can view your available
-- clusters with ListClusters. Amazon ECS clusters are Region-specific.
_ClusterNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ClusterNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ClusterNotFoundException"

-- | There is no update available for this Amazon ECS container agent. This
-- could be because the agent is already running the latest version, or it
-- is so old that there is no update path to the current version.
_NoUpdateAvailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoUpdateAvailableException =
  Prelude._MatchServiceError
    defaultService
    "NoUpdateAvailableException"

-- | The specified resource could not be found.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The specified service is not active. You can\'t update a service that is
-- inactive. If you have previously deleted a service, you can re-create it
-- with CreateService.
_ServiceNotActiveException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceNotActiveException =
  Prelude._MatchServiceError
    defaultService
    "ServiceNotActiveException"

-- | You cannot delete a cluster that has active tasks.
_ClusterContainsTasksException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ClusterContainsTasksException =
  Prelude._MatchServiceError
    defaultService
    "ClusterContainsTasksException"

-- | The specified target could not be found. You can view your available
-- container instances with ListContainerInstances. Amazon ECS container
-- instances are cluster-specific and Region-specific.
_TargetNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TargetNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "TargetNotFoundException"

-- | You can apply up to 10 custom attributes per resource. You can view the
-- attributes of a resource with ListAttributes. You can remove existing
-- attributes on a resource with DeleteAttributes.
_AttributeLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AttributeLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "AttributeLimitExceededException"

-- | These errors are usually caused by a server issue.
_ServerException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServerException =
  Prelude._MatchServiceError
    defaultService
    "ServerException"
