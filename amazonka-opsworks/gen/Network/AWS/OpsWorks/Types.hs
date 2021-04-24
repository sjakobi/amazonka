{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types
  ( -- * Service Configuration
    opsWorks,

    -- * Errors
    _ValidationException,
    _ResourceNotFoundException,

    -- * AppAttributesKeys
    AppAttributesKeys (..),

    -- * AppType
    AppType (..),

    -- * Architecture
    Architecture (..),

    -- * AutoScalingType
    AutoScalingType (..),

    -- * CloudWatchLogsEncoding
    CloudWatchLogsEncoding (..),

    -- * CloudWatchLogsInitialPosition
    CloudWatchLogsInitialPosition (..),

    -- * CloudWatchLogsTimeZone
    CloudWatchLogsTimeZone (..),

    -- * DeploymentCommandName
    DeploymentCommandName (..),

    -- * LayerAttributesKeys
    LayerAttributesKeys (..),

    -- * LayerType
    LayerType (..),

    -- * RootDeviceType
    RootDeviceType (..),

    -- * SourceType
    SourceType (..),

    -- * StackAttributesKeys
    StackAttributesKeys (..),

    -- * VirtualizationType
    VirtualizationType (..),

    -- * VolumeType
    VolumeType (..),

    -- * AgentVersion
    AgentVersion (..),
    agentVersion,
    avVersion,
    avConfigurationManager,

    -- * App
    App (..),
    app,
    appSSLConfiguration,
    appAppSource,
    appAppId,
    appDataSources,
    appStackId,
    appDomains,
    appEnableSSL,
    appShortname,
    appCreatedAt,
    appEnvironment,
    appAttributes,
    appName,
    appDescription,
    appType,

    -- * AutoScalingThresholds
    AutoScalingThresholds (..),
    autoScalingThresholds,
    astLoadThreshold,
    astCPUThreshold,
    astMemoryThreshold,
    astAlarms,
    astIgnoreMetricsTime,
    astThresholdsWaitTime,
    astInstanceCount,

    -- * BlockDeviceMapping
    BlockDeviceMapping (..),
    blockDeviceMapping,
    bdmEBS,
    bdmNoDevice,
    bdmVirtualName,
    bdmDeviceName,

    -- * ChefConfiguration
    ChefConfiguration (..),
    chefConfiguration,
    ccManageBerkshelf,
    ccBerkshelfVersion,

    -- * CloudWatchLogsConfiguration
    CloudWatchLogsConfiguration (..),
    cloudWatchLogsConfiguration,
    cwlcEnabled,
    cwlcLogStreams,

    -- * CloudWatchLogsLogStream
    CloudWatchLogsLogStream (..),
    cloudWatchLogsLogStream,
    cwllsMultiLineStartPattern,
    cwllsInitialPosition,
    cwllsBatchCount,
    cwllsFile,
    cwllsFileFingerprintLines,
    cwllsLogGroupName,
    cwllsBatchSize,
    cwllsBufferDuration,
    cwllsEncoding,
    cwllsTimeZone,
    cwllsDatetimeFormat,

    -- * Command
    Command (..),
    command,
    cLogURL,
    cStatus,
    cDeploymentId,
    cInstanceId,
    cCompletedAt,
    cCreatedAt,
    cExitCode,
    cCommandId,
    cAcknowledgedAt,
    cType,

    -- * DataSource
    DataSource (..),
    dataSource,
    dsARN,
    dsType,
    dsDatabaseName,

    -- * Deployment
    Deployment (..),
    deployment,
    dInstanceIds,
    dStatus,
    dDeploymentId,
    dAppId,
    dIAMUserARN,
    dDuration,
    dStackId,
    dComment,
    dCustomJSON,
    dCompletedAt,
    dCreatedAt,
    dCommand,

    -- * DeploymentCommand
    DeploymentCommand (..),
    deploymentCommand,
    dcArgs,
    dcName,

    -- * EBSBlockDevice
    EBSBlockDevice (..),
    ebsBlockDevice,
    ebdDeleteOnTermination,
    ebdSnapshotId,
    ebdVolumeType,
    ebdVolumeSize,
    ebdIOPS,

    -- * EcsCluster
    EcsCluster (..),
    ecsCluster,
    ecStackId,
    ecEcsClusterName,
    ecRegisteredAt,
    ecEcsClusterARN,

    -- * ElasticIP
    ElasticIP (..),
    elasticIP,
    eiInstanceId,
    eiIP,
    eiDomain,
    eiName,
    eiRegion,

    -- * ElasticLoadBalancer
    ElasticLoadBalancer (..),
    elasticLoadBalancer,
    elbAvailabilityZones,
    elbStackId,
    elbElasticLoadBalancerName,
    elbSubnetIds,
    elbDNSName,
    elbLayerId,
    elbEC2InstanceIds,
    elbRegion,
    elbVPCId,

    -- * EnvironmentVariable
    EnvironmentVariable (..),
    environmentVariable,
    evSecure,
    evKey,
    evValue,

    -- * Instance
    Instance (..),
    instance',
    iHostname,
    iPlatform,
    iSecurityGroupIds,
    iSSHHostRsaKeyFingerprint,
    iInstanceProfileARN,
    iVirtualizationType,
    iPrivateDNS,
    iElasticIP,
    iStatus,
    iInstallUpdatesOnBoot,
    iInstanceId,
    iReportedAgentVersion,
    iInstanceType,
    iSSHHostDsaKeyFingerprint,
    iEBSOptimized,
    iRootDeviceType,
    iStackId,
    iAgentVersion,
    iRootDeviceVolumeId,
    iSSHKeyName,
    iPublicDNS,
    iAMIId,
    iARN,
    iCreatedAt,
    iLayerIds,
    iArchitecture,
    iTenancy,
    iAutoScalingType,
    iAvailabilityZone,
    iOS,
    iPrivateIP,
    iInfrastructureClass,
    iBlockDeviceMappings,
    iSubnetId,
    iEcsContainerInstanceARN,
    iRegisteredBy,
    iReportedOS,
    iPublicIP,
    iEC2InstanceId,
    iEcsClusterARN,
    iLastServiceErrorId,

    -- * InstanceIdentity
    InstanceIdentity (..),
    instanceIdentity,
    iiDocument,
    iiSignature,

    -- * InstancesCount
    InstancesCount (..),
    instancesCount,
    icOnline,
    icSetupFailed,
    icRegistering,
    icBooting,
    icStopFailed,
    icStartFailed,
    icRunningSetup,
    icTerminated,
    icPending,
    icTerminating,
    icShuttingDown,
    icAssigning,
    icStopped,
    icRebooting,
    icRegistered,
    icRequested,
    icDeregistering,
    icStopping,
    icUnassigning,
    icConnectionLost,

    -- * Layer
    Layer (..),
    layer,
    lInstallUpdatesOnBoot,
    lCustomInstanceProfileARN,
    lCustomSecurityGroupIds,
    lPackages,
    lEnableAutoHealing,
    lVolumeConfigurations,
    lStackId,
    lCustomJSON,
    lDefaultRecipes,
    lARN,
    lShortname,
    lCreatedAt,
    lAttributes,
    lName,
    lCloudWatchLogsConfiguration,
    lAutoAssignElasticIPs,
    lLayerId,
    lDefaultSecurityGroupNames,
    lType,
    lUseEBSOptimizedInstances,
    lCustomRecipes,
    lAutoAssignPublicIPs,
    lLifecycleEventConfiguration,

    -- * LifecycleEventConfiguration
    LifecycleEventConfiguration (..),
    lifecycleEventConfiguration,
    lecShutdown,

    -- * LoadBasedAutoScalingConfiguration
    LoadBasedAutoScalingConfiguration (..),
    loadBasedAutoScalingConfiguration,
    lbascDownScaling,
    lbascEnable,
    lbascLayerId,
    lbascUpScaling,

    -- * OperatingSystem
    OperatingSystem (..),
    operatingSystem,
    osSupported,
    osConfigurationManagers,
    osId,
    osReportedVersion,
    osName,
    osType,
    osReportedName,

    -- * OperatingSystemConfigurationManager
    OperatingSystemConfigurationManager (..),
    operatingSystemConfigurationManager,
    oscmVersion,
    oscmName,

    -- * Permission
    Permission (..),
    permission,
    pAllowSudo,
    pIAMUserARN,
    pStackId,
    pAllowSSH,
    pLevel,

    -- * RAIdArray
    RAIdArray (..),
    rAIdArray,
    raiaNumberOfDisks,
    raiaInstanceId,
    raiaStackId,
    raiaDevice,
    raiaCreatedAt,
    raiaRAIdArrayId,
    raiaAvailabilityZone,
    raiaName,
    raiaMountPoint,
    raiaVolumeType,
    raiaRAIdLevel,
    raiaIOPS,
    raiaSize,

    -- * RDSDBInstance
    RDSDBInstance (..),
    rdsDBInstance,
    rdiRDSDBInstanceARN,
    rdiDBUser,
    rdiAddress,
    rdiStackId,
    rdiMissingOnRDS,
    rdiDBInstanceIdentifier,
    rdiDBPassword,
    rdiEngine,
    rdiRegion,

    -- * Recipes
    Recipes (..),
    recipes,
    rShutdown,
    rConfigure,
    rUndeploy,
    rSetup,
    rDeploy,

    -- * ReportedOS
    ReportedOS (..),
    reportedOS,
    roVersion,
    roName,
    roFamily,

    -- * SSLConfiguration
    SSLConfiguration (..),
    sslConfiguration,
    scPrivateKey,
    scCertificate,
    scChain,

    -- * SelfUserProfile
    SelfUserProfile (..),
    selfUserProfile,
    supIAMUserARN,
    supSSHUsername,
    supName,
    supSSHPublicKey,

    -- * ServiceError'
    ServiceError' (..),
    serviceError',
    seInstanceId,
    seStackId,
    seMessage,
    seServiceErrorId,
    seCreatedAt,
    seType,

    -- * ShutdownEventConfiguration
    ShutdownEventConfiguration (..),
    shutdownEventConfiguration,
    secExecutionTimeout,
    secDelayUntilElbConnectionsDrained,

    -- * Source
    Source (..),
    source,
    sSSHKey,
    sPassword,
    sUsername,
    sURL,
    sRevision,
    sType,

    -- * Stack
    Stack (..),
    stack,
    staDefaultOS,
    staUseOpsworksSecurityGroups,
    staCustomCookbooksSource,
    staServiceRoleARN,
    staDefaultAvailabilityZone,
    staStackId,
    staAgentVersion,
    staCustomJSON,
    staARN,
    staCreatedAt,
    staDefaultRootDeviceType,
    staAttributes,
    staName,
    staDefaultInstanceProfileARN,
    staHostnameTheme,
    staDefaultSSHKeyName,
    staConfigurationManager,
    staRegion,
    staVPCId,
    staChefConfiguration,
    staDefaultSubnetId,
    staUseCustomCookbooks,

    -- * StackConfigurationManager
    StackConfigurationManager (..),
    stackConfigurationManager,
    scmVersion,
    scmName,

    -- * StackSummary
    StackSummary (..),
    stackSummary,
    sssStackId,
    sssLayersCount,
    sssARN,
    sssName,
    sssInstancesCount,
    sssAppsCount,

    -- * TemporaryCredential
    TemporaryCredential (..),
    temporaryCredential,
    tcValidForInMinutes,
    tcInstanceId,
    tcPassword,
    tcUsername,

    -- * TimeBasedAutoScalingConfiguration
    TimeBasedAutoScalingConfiguration (..),
    timeBasedAutoScalingConfiguration,
    tbascInstanceId,
    tbascAutoScalingSchedule,

    -- * UserProfile
    UserProfile (..),
    userProfile,
    upIAMUserARN,
    upAllowSelfManagement,
    upSSHUsername,
    upName,
    upSSHPublicKey,

    -- * Volume
    Volume (..),
    volume,
    vStatus,
    vInstanceId,
    vEC2VolumeId,
    vEncrypted,
    vDevice,
    vVolumeId,
    vRAIdArrayId,
    vAvailabilityZone,
    vName,
    vMountPoint,
    vVolumeType,
    vRegion,
    vIOPS,
    vSize,

    -- * VolumeConfiguration
    VolumeConfiguration (..),
    volumeConfiguration,
    vcEncrypted,
    vcVolumeType,
    vcRAIdLevel,
    vcIOPS,
    vcMountPoint,
    vcNumberOfDisks,
    vcSize,

    -- * WeeklyAutoScalingSchedule
    WeeklyAutoScalingSchedule (..),
    weeklyAutoScalingSchedule,
    wassThursday,
    wassFriday,
    wassTuesday,
    wassMonday,
    wassSunday,
    wassSaturday,
    wassWednesday,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types.AgentVersion
import Network.AWS.OpsWorks.Types.App
import Network.AWS.OpsWorks.Types.AppAttributesKeys
import Network.AWS.OpsWorks.Types.AppType
import Network.AWS.OpsWorks.Types.Architecture
import Network.AWS.OpsWorks.Types.AutoScalingThresholds
import Network.AWS.OpsWorks.Types.AutoScalingType
import Network.AWS.OpsWorks.Types.BlockDeviceMapping
import Network.AWS.OpsWorks.Types.ChefConfiguration
import Network.AWS.OpsWorks.Types.CloudWatchLogsConfiguration
import Network.AWS.OpsWorks.Types.CloudWatchLogsEncoding
import Network.AWS.OpsWorks.Types.CloudWatchLogsInitialPosition
import Network.AWS.OpsWorks.Types.CloudWatchLogsLogStream
import Network.AWS.OpsWorks.Types.CloudWatchLogsTimeZone
import Network.AWS.OpsWorks.Types.Command
import Network.AWS.OpsWorks.Types.DataSource
import Network.AWS.OpsWorks.Types.Deployment
import Network.AWS.OpsWorks.Types.DeploymentCommand
import Network.AWS.OpsWorks.Types.DeploymentCommandName
import Network.AWS.OpsWorks.Types.EBSBlockDevice
import Network.AWS.OpsWorks.Types.EcsCluster
import Network.AWS.OpsWorks.Types.ElasticIP
import Network.AWS.OpsWorks.Types.ElasticLoadBalancer
import Network.AWS.OpsWorks.Types.EnvironmentVariable
import Network.AWS.OpsWorks.Types.Instance
import Network.AWS.OpsWorks.Types.InstanceIdentity
import Network.AWS.OpsWorks.Types.InstancesCount
import Network.AWS.OpsWorks.Types.Layer
import Network.AWS.OpsWorks.Types.LayerAttributesKeys
import Network.AWS.OpsWorks.Types.LayerType
import Network.AWS.OpsWorks.Types.LifecycleEventConfiguration
import Network.AWS.OpsWorks.Types.LoadBasedAutoScalingConfiguration
import Network.AWS.OpsWorks.Types.OperatingSystem
import Network.AWS.OpsWorks.Types.OperatingSystemConfigurationManager
import Network.AWS.OpsWorks.Types.Permission
import Network.AWS.OpsWorks.Types.RAIdArray
import Network.AWS.OpsWorks.Types.RDSDBInstance
import Network.AWS.OpsWorks.Types.Recipes
import Network.AWS.OpsWorks.Types.ReportedOS
import Network.AWS.OpsWorks.Types.RootDeviceType
import Network.AWS.OpsWorks.Types.SSLConfiguration
import Network.AWS.OpsWorks.Types.SelfUserProfile
import Network.AWS.OpsWorks.Types.ServiceError'
import Network.AWS.OpsWorks.Types.ShutdownEventConfiguration
import Network.AWS.OpsWorks.Types.Source
import Network.AWS.OpsWorks.Types.SourceType
import Network.AWS.OpsWorks.Types.Stack
import Network.AWS.OpsWorks.Types.StackAttributesKeys
import Network.AWS.OpsWorks.Types.StackConfigurationManager
import Network.AWS.OpsWorks.Types.StackSummary
import Network.AWS.OpsWorks.Types.TemporaryCredential
import Network.AWS.OpsWorks.Types.TimeBasedAutoScalingConfiguration
import Network.AWS.OpsWorks.Types.UserProfile
import Network.AWS.OpsWorks.Types.VirtualizationType
import Network.AWS.OpsWorks.Types.Volume
import Network.AWS.OpsWorks.Types.VolumeConfiguration
import Network.AWS.OpsWorks.Types.VolumeType
import Network.AWS.OpsWorks.Types.WeeklyAutoScalingSchedule
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2013-02-18@ of the Amazon OpsWorks SDK configuration.
opsWorks :: Service
opsWorks =
  Service
    { _svcAbbrev = "OpsWorks",
      _svcSigner = v4,
      _svcPrefix = "opsworks",
      _svcVersion = "2013-02-18",
      _svcEndpoint = defaultEndpoint opsWorks,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "OpsWorks",
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

-- | Indicates that a request was not valid.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError opsWorks "ValidationException"

-- | Indicates that a resource was not found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    opsWorks
    "ResourceNotFoundException"
