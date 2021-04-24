{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS OpsWorks__
--
-- Welcome to the /AWS OpsWorks Stacks API Reference/ . This guide provides descriptions, syntax, and usage examples for AWS OpsWorks Stacks actions and data types, including common parameters and error codes.
--
-- AWS OpsWorks Stacks is an application management service that provides an integrated experience for overseeing the complete application lifecycle. For information about this product, go to the <http://aws.amazon.com/opsworks/ AWS OpsWorks> details page.
--
-- __SDKs and CLI__
--
-- The most common way to use the AWS OpsWorks Stacks API is by using the AWS Command Line Interface (CLI) or by using one of the AWS SDKs to implement applications in your preferred language. For more information, see:
--
--     * <https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html AWS CLI>
--
--     * <https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html AWS SDK for Java>
--
--     * <https://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm AWS SDK for .NET>
--
--     * <https://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html AWS SDK for PHP 2>
--
--     * <http://docs.aws.amazon.com/sdkforruby/api/ AWS SDK for Ruby>
--
--     * <http://aws.amazon.com/documentation/sdkforjavascript/ AWS SDK for Node.js>
--
--     * <http://docs.pythonboto.org/en/latest/ref/opsworks.html AWS SDK for Python(Boto)>
--
--
--
-- __Endpoints__
--
-- AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Stacks can only be accessed or managed within the endpoint in which they are created.
--
--     * opsworks.us-east-1.amazonaws.com
--
--     * opsworks.us-east-2.amazonaws.com
--
--     * opsworks.us-west-1.amazonaws.com
--
--     * opsworks.us-west-2.amazonaws.com
--
--     * opsworks.ca-central-1.amazonaws.com (API only; not available in the AWS console)
--
--     * opsworks.eu-west-1.amazonaws.com
--
--     * opsworks.eu-west-2.amazonaws.com
--
--     * opsworks.eu-west-3.amazonaws.com
--
--     * opsworks.eu-central-1.amazonaws.com
--
--     * opsworks.ap-northeast-1.amazonaws.com
--
--     * opsworks.ap-northeast-2.amazonaws.com
--
--     * opsworks.ap-south-1.amazonaws.com
--
--     * opsworks.ap-southeast-1.amazonaws.com
--
--     * opsworks.ap-southeast-2.amazonaws.com
--
--     * opsworks.sa-east-1.amazonaws.com
--
--
--
-- __Chef Versions__
--
-- When you call 'CreateStack' , 'CloneStack' , or 'UpdateStack' we recommend you use the @ConfigurationManager@ parameter to specify the Chef version. The recommended and default value for Linux stacks is currently 12. Windows stacks use Chef 12.2. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html Chef Versions> .
module Network.AWS.OpsWorks
  ( -- * Service Configuration
    opsWorks,

    -- * Errors
    -- $errors

    -- ** ValidationException
    _ValidationException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- ** InstanceTerminated
    instanceTerminated,

    -- ** InstanceRegistered
    instanceRegistered,

    -- ** AppExists
    appExists,

    -- ** InstanceOnline
    instanceOnline,

    -- ** InstanceStopped
    instanceStopped,

    -- ** DeploymentSuccessful
    deploymentSuccessful,

    -- * Operations
    -- $operations

    -- ** DescribeInstances
    module Network.AWS.OpsWorks.DescribeInstances,

    -- ** DescribeDeployments
    module Network.AWS.OpsWorks.DescribeDeployments,

    -- ** UpdateMyUserProfile
    module Network.AWS.OpsWorks.UpdateMyUserProfile,

    -- ** DeregisterElasticIP
    module Network.AWS.OpsWorks.DeregisterElasticIP,

    -- ** SetTimeBasedAutoScaling
    module Network.AWS.OpsWorks.SetTimeBasedAutoScaling,

    -- ** DescribeRDSDBInstances
    module Network.AWS.OpsWorks.DescribeRDSDBInstances,

    -- ** AttachElasticLoadBalancer
    module Network.AWS.OpsWorks.AttachElasticLoadBalancer,

    -- ** StartInstance
    module Network.AWS.OpsWorks.StartInstance,

    -- ** SetPermission
    module Network.AWS.OpsWorks.SetPermission,

    -- ** RegisterVolume
    module Network.AWS.OpsWorks.RegisterVolume,

    -- ** StopInstance
    module Network.AWS.OpsWorks.StopInstance,

    -- ** DescribeEcsClusters (Paginated)
    module Network.AWS.OpsWorks.DescribeEcsClusters,

    -- ** DescribeVolumes
    module Network.AWS.OpsWorks.DescribeVolumes,

    -- ** DescribeOperatingSystems
    module Network.AWS.OpsWorks.DescribeOperatingSystems,

    -- ** DisassociateElasticIP
    module Network.AWS.OpsWorks.DisassociateElasticIP,

    -- ** StartStack
    module Network.AWS.OpsWorks.StartStack,

    -- ** StopStack
    module Network.AWS.OpsWorks.StopStack,

    -- ** RegisterRDSDBInstance
    module Network.AWS.OpsWorks.RegisterRDSDBInstance,

    -- ** DescribeServiceErrors
    module Network.AWS.OpsWorks.DescribeServiceErrors,

    -- ** DescribeTimeBasedAutoScaling
    module Network.AWS.OpsWorks.DescribeTimeBasedAutoScaling,

    -- ** UpdateUserProfile
    module Network.AWS.OpsWorks.UpdateUserProfile,

    -- ** DescribeMyUserProfile
    module Network.AWS.OpsWorks.DescribeMyUserProfile,

    -- ** UntagResource
    module Network.AWS.OpsWorks.UntagResource,

    -- ** DeleteUserProfile
    module Network.AWS.OpsWorks.DeleteUserProfile,

    -- ** AssignInstance
    module Network.AWS.OpsWorks.AssignInstance,

    -- ** DetachElasticLoadBalancer
    module Network.AWS.OpsWorks.DetachElasticLoadBalancer,

    -- ** DescribeStackProvisioningParameters
    module Network.AWS.OpsWorks.DescribeStackProvisioningParameters,

    -- ** DeregisterVolume
    module Network.AWS.OpsWorks.DeregisterVolume,

    -- ** DescribeStacks
    module Network.AWS.OpsWorks.DescribeStacks,

    -- ** DeleteInstance
    module Network.AWS.OpsWorks.DeleteInstance,

    -- ** RebootInstance
    module Network.AWS.OpsWorks.RebootInstance,

    -- ** TagResource
    module Network.AWS.OpsWorks.TagResource,

    -- ** UpdateInstance
    module Network.AWS.OpsWorks.UpdateInstance,

    -- ** CloneStack
    module Network.AWS.OpsWorks.CloneStack,

    -- ** RegisterElasticIP
    module Network.AWS.OpsWorks.RegisterElasticIP,

    -- ** DescribeAgentVersions
    module Network.AWS.OpsWorks.DescribeAgentVersions,

    -- ** UpdateLayer
    module Network.AWS.OpsWorks.UpdateLayer,

    -- ** CreateStack
    module Network.AWS.OpsWorks.CreateStack,

    -- ** UnassignVolume
    module Network.AWS.OpsWorks.UnassignVolume,

    -- ** GrantAccess
    module Network.AWS.OpsWorks.GrantAccess,

    -- ** DeleteLayer
    module Network.AWS.OpsWorks.DeleteLayer,

    -- ** DescribeApps
    module Network.AWS.OpsWorks.DescribeApps,

    -- ** DeregisterEcsCluster
    module Network.AWS.OpsWorks.DeregisterEcsCluster,

    -- ** DescribeStackSummary
    module Network.AWS.OpsWorks.DescribeStackSummary,

    -- ** DeleteStack
    module Network.AWS.OpsWorks.DeleteStack,

    -- ** SetLoadBasedAutoScaling
    module Network.AWS.OpsWorks.SetLoadBasedAutoScaling,

    -- ** CreateLayer
    module Network.AWS.OpsWorks.CreateLayer,

    -- ** UpdateStack
    module Network.AWS.OpsWorks.UpdateStack,

    -- ** DescribeUserProfiles
    module Network.AWS.OpsWorks.DescribeUserProfiles,

    -- ** DescribeElasticLoadBalancers
    module Network.AWS.OpsWorks.DescribeElasticLoadBalancers,

    -- ** DescribeCommands
    module Network.AWS.OpsWorks.DescribeCommands,

    -- ** UpdateVolume
    module Network.AWS.OpsWorks.UpdateVolume,

    -- ** AssignVolume
    module Network.AWS.OpsWorks.AssignVolume,

    -- ** DescribeRAIdArrays
    module Network.AWS.OpsWorks.DescribeRAIdArrays,

    -- ** DeregisterInstance
    module Network.AWS.OpsWorks.DeregisterInstance,

    -- ** RegisterEcsCluster
    module Network.AWS.OpsWorks.RegisterEcsCluster,

    -- ** CreateUserProfile
    module Network.AWS.OpsWorks.CreateUserProfile,

    -- ** UpdateRDSDBInstance
    module Network.AWS.OpsWorks.UpdateRDSDBInstance,

    -- ** UnassignInstance
    module Network.AWS.OpsWorks.UnassignInstance,

    -- ** ListTags
    module Network.AWS.OpsWorks.ListTags,

    -- ** DescribeLoadBasedAutoScaling
    module Network.AWS.OpsWorks.DescribeLoadBasedAutoScaling,

    -- ** RegisterInstance
    module Network.AWS.OpsWorks.RegisterInstance,

    -- ** DeleteApp
    module Network.AWS.OpsWorks.DeleteApp,

    -- ** UpdateApp
    module Network.AWS.OpsWorks.UpdateApp,

    -- ** AssociateElasticIP
    module Network.AWS.OpsWorks.AssociateElasticIP,

    -- ** UpdateElasticIP
    module Network.AWS.OpsWorks.UpdateElasticIP,

    -- ** DescribePermissions
    module Network.AWS.OpsWorks.DescribePermissions,

    -- ** GetHostnameSuggestion
    module Network.AWS.OpsWorks.GetHostnameSuggestion,

    -- ** CreateInstance
    module Network.AWS.OpsWorks.CreateInstance,

    -- ** DescribeLayers
    module Network.AWS.OpsWorks.DescribeLayers,

    -- ** CreateApp
    module Network.AWS.OpsWorks.CreateApp,

    -- ** CreateDeployment
    module Network.AWS.OpsWorks.CreateDeployment,

    -- ** DeregisterRDSDBInstance
    module Network.AWS.OpsWorks.DeregisterRDSDBInstance,

    -- ** DescribeElasticIPs
    module Network.AWS.OpsWorks.DescribeElasticIPs,

    -- * Types

    -- ** AppAttributesKeys
    AppAttributesKeys (..),

    -- ** AppType
    AppType (..),

    -- ** Architecture
    Architecture (..),

    -- ** AutoScalingType
    AutoScalingType (..),

    -- ** CloudWatchLogsEncoding
    CloudWatchLogsEncoding (..),

    -- ** CloudWatchLogsInitialPosition
    CloudWatchLogsInitialPosition (..),

    -- ** CloudWatchLogsTimeZone
    CloudWatchLogsTimeZone (..),

    -- ** DeploymentCommandName
    DeploymentCommandName (..),

    -- ** LayerAttributesKeys
    LayerAttributesKeys (..),

    -- ** LayerType
    LayerType (..),

    -- ** RootDeviceType
    RootDeviceType (..),

    -- ** SourceType
    SourceType (..),

    -- ** StackAttributesKeys
    StackAttributesKeys (..),

    -- ** VirtualizationType
    VirtualizationType (..),

    -- ** VolumeType
    VolumeType (..),

    -- ** AgentVersion
    AgentVersion,
    agentVersion,
    avVersion,
    avConfigurationManager,

    -- ** App
    App,
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

    -- ** AutoScalingThresholds
    AutoScalingThresholds,
    autoScalingThresholds,
    astLoadThreshold,
    astCPUThreshold,
    astMemoryThreshold,
    astAlarms,
    astIgnoreMetricsTime,
    astThresholdsWaitTime,
    astInstanceCount,

    -- ** BlockDeviceMapping
    BlockDeviceMapping,
    blockDeviceMapping,
    bdmEBS,
    bdmNoDevice,
    bdmVirtualName,
    bdmDeviceName,

    -- ** ChefConfiguration
    ChefConfiguration,
    chefConfiguration,
    ccManageBerkshelf,
    ccBerkshelfVersion,

    -- ** CloudWatchLogsConfiguration
    CloudWatchLogsConfiguration,
    cloudWatchLogsConfiguration,
    cwlcEnabled,
    cwlcLogStreams,

    -- ** CloudWatchLogsLogStream
    CloudWatchLogsLogStream,
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

    -- ** Command
    Command,
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

    -- ** DataSource
    DataSource,
    dataSource,
    dsARN,
    dsType,
    dsDatabaseName,

    -- ** Deployment
    Deployment,
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

    -- ** DeploymentCommand
    DeploymentCommand,
    deploymentCommand,
    dcArgs,
    dcName,

    -- ** EBSBlockDevice
    EBSBlockDevice,
    ebsBlockDevice,
    ebdDeleteOnTermination,
    ebdSnapshotId,
    ebdVolumeType,
    ebdVolumeSize,
    ebdIOPS,

    -- ** EcsCluster
    EcsCluster,
    ecsCluster,
    ecStackId,
    ecEcsClusterName,
    ecRegisteredAt,
    ecEcsClusterARN,

    -- ** ElasticIP
    ElasticIP,
    elasticIP,
    eiInstanceId,
    eiIP,
    eiDomain,
    eiName,
    eiRegion,

    -- ** ElasticLoadBalancer
    ElasticLoadBalancer,
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

    -- ** EnvironmentVariable
    EnvironmentVariable,
    environmentVariable,
    evSecure,
    evKey,
    evValue,

    -- ** Instance
    Instance,
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

    -- ** InstanceIdentity
    InstanceIdentity,
    instanceIdentity,
    iiDocument,
    iiSignature,

    -- ** InstancesCount
    InstancesCount,
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

    -- ** Layer
    Layer,
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

    -- ** LifecycleEventConfiguration
    LifecycleEventConfiguration,
    lifecycleEventConfiguration,
    lecShutdown,

    -- ** LoadBasedAutoScalingConfiguration
    LoadBasedAutoScalingConfiguration,
    loadBasedAutoScalingConfiguration,
    lbascDownScaling,
    lbascEnable,
    lbascLayerId,
    lbascUpScaling,

    -- ** OperatingSystem
    OperatingSystem,
    operatingSystem,
    osSupported,
    osConfigurationManagers,
    osId,
    osReportedVersion,
    osName,
    osType,
    osReportedName,

    -- ** OperatingSystemConfigurationManager
    OperatingSystemConfigurationManager,
    operatingSystemConfigurationManager,
    oscmVersion,
    oscmName,

    -- ** Permission
    Permission,
    permission,
    pAllowSudo,
    pIAMUserARN,
    pStackId,
    pAllowSSH,
    pLevel,

    -- ** RAIdArray
    RAIdArray,
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

    -- ** RDSDBInstance
    RDSDBInstance,
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

    -- ** Recipes
    Recipes,
    recipes,
    rShutdown,
    rConfigure,
    rUndeploy,
    rSetup,
    rDeploy,

    -- ** ReportedOS
    ReportedOS,
    reportedOS,
    roVersion,
    roName,
    roFamily,

    -- ** SSLConfiguration
    SSLConfiguration,
    sslConfiguration,
    scPrivateKey,
    scCertificate,
    scChain,

    -- ** SelfUserProfile
    SelfUserProfile,
    selfUserProfile,
    supIAMUserARN,
    supSSHUsername,
    supName,
    supSSHPublicKey,

    -- ** ServiceError'
    ServiceError',
    serviceError',
    seInstanceId,
    seStackId,
    seMessage,
    seServiceErrorId,
    seCreatedAt,
    seType,

    -- ** ShutdownEventConfiguration
    ShutdownEventConfiguration,
    shutdownEventConfiguration,
    secExecutionTimeout,
    secDelayUntilElbConnectionsDrained,

    -- ** Source
    Source,
    source,
    sSSHKey,
    sPassword,
    sUsername,
    sURL,
    sRevision,
    sType,

    -- ** Stack
    Stack,
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

    -- ** StackConfigurationManager
    StackConfigurationManager,
    stackConfigurationManager,
    scmVersion,
    scmName,

    -- ** StackSummary
    StackSummary,
    stackSummary,
    sssStackId,
    sssLayersCount,
    sssARN,
    sssName,
    sssInstancesCount,
    sssAppsCount,

    -- ** TemporaryCredential
    TemporaryCredential,
    temporaryCredential,
    tcValidForInMinutes,
    tcInstanceId,
    tcPassword,
    tcUsername,

    -- ** TimeBasedAutoScalingConfiguration
    TimeBasedAutoScalingConfiguration,
    timeBasedAutoScalingConfiguration,
    tbascInstanceId,
    tbascAutoScalingSchedule,

    -- ** UserProfile
    UserProfile,
    userProfile,
    upIAMUserARN,
    upAllowSelfManagement,
    upSSHUsername,
    upName,
    upSSHPublicKey,

    -- ** Volume
    Volume,
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

    -- ** VolumeConfiguration
    VolumeConfiguration,
    volumeConfiguration,
    vcEncrypted,
    vcVolumeType,
    vcRAIdLevel,
    vcIOPS,
    vcMountPoint,
    vcNumberOfDisks,
    vcSize,

    -- ** WeeklyAutoScalingSchedule
    WeeklyAutoScalingSchedule,
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

import Network.AWS.OpsWorks.AssignInstance
import Network.AWS.OpsWorks.AssignVolume
import Network.AWS.OpsWorks.AssociateElasticIP
import Network.AWS.OpsWorks.AttachElasticLoadBalancer
import Network.AWS.OpsWorks.CloneStack
import Network.AWS.OpsWorks.CreateApp
import Network.AWS.OpsWorks.CreateDeployment
import Network.AWS.OpsWorks.CreateInstance
import Network.AWS.OpsWorks.CreateLayer
import Network.AWS.OpsWorks.CreateStack
import Network.AWS.OpsWorks.CreateUserProfile
import Network.AWS.OpsWorks.DeleteApp
import Network.AWS.OpsWorks.DeleteInstance
import Network.AWS.OpsWorks.DeleteLayer
import Network.AWS.OpsWorks.DeleteStack
import Network.AWS.OpsWorks.DeleteUserProfile
import Network.AWS.OpsWorks.DeregisterEcsCluster
import Network.AWS.OpsWorks.DeregisterElasticIP
import Network.AWS.OpsWorks.DeregisterInstance
import Network.AWS.OpsWorks.DeregisterRDSDBInstance
import Network.AWS.OpsWorks.DeregisterVolume
import Network.AWS.OpsWorks.DescribeAgentVersions
import Network.AWS.OpsWorks.DescribeApps
import Network.AWS.OpsWorks.DescribeCommands
import Network.AWS.OpsWorks.DescribeDeployments
import Network.AWS.OpsWorks.DescribeEcsClusters
import Network.AWS.OpsWorks.DescribeElasticIPs
import Network.AWS.OpsWorks.DescribeElasticLoadBalancers
import Network.AWS.OpsWorks.DescribeInstances
import Network.AWS.OpsWorks.DescribeLayers
import Network.AWS.OpsWorks.DescribeLoadBasedAutoScaling
import Network.AWS.OpsWorks.DescribeMyUserProfile
import Network.AWS.OpsWorks.DescribeOperatingSystems
import Network.AWS.OpsWorks.DescribePermissions
import Network.AWS.OpsWorks.DescribeRAIdArrays
import Network.AWS.OpsWorks.DescribeRDSDBInstances
import Network.AWS.OpsWorks.DescribeServiceErrors
import Network.AWS.OpsWorks.DescribeStackProvisioningParameters
import Network.AWS.OpsWorks.DescribeStackSummary
import Network.AWS.OpsWorks.DescribeStacks
import Network.AWS.OpsWorks.DescribeTimeBasedAutoScaling
import Network.AWS.OpsWorks.DescribeUserProfiles
import Network.AWS.OpsWorks.DescribeVolumes
import Network.AWS.OpsWorks.DetachElasticLoadBalancer
import Network.AWS.OpsWorks.DisassociateElasticIP
import Network.AWS.OpsWorks.GetHostnameSuggestion
import Network.AWS.OpsWorks.GrantAccess
import Network.AWS.OpsWorks.ListTags
import Network.AWS.OpsWorks.RebootInstance
import Network.AWS.OpsWorks.RegisterEcsCluster
import Network.AWS.OpsWorks.RegisterElasticIP
import Network.AWS.OpsWorks.RegisterInstance
import Network.AWS.OpsWorks.RegisterRDSDBInstance
import Network.AWS.OpsWorks.RegisterVolume
import Network.AWS.OpsWorks.SetLoadBasedAutoScaling
import Network.AWS.OpsWorks.SetPermission
import Network.AWS.OpsWorks.SetTimeBasedAutoScaling
import Network.AWS.OpsWorks.StartInstance
import Network.AWS.OpsWorks.StartStack
import Network.AWS.OpsWorks.StopInstance
import Network.AWS.OpsWorks.StopStack
import Network.AWS.OpsWorks.TagResource
import Network.AWS.OpsWorks.Types
import Network.AWS.OpsWorks.UnassignInstance
import Network.AWS.OpsWorks.UnassignVolume
import Network.AWS.OpsWorks.UntagResource
import Network.AWS.OpsWorks.UpdateApp
import Network.AWS.OpsWorks.UpdateElasticIP
import Network.AWS.OpsWorks.UpdateInstance
import Network.AWS.OpsWorks.UpdateLayer
import Network.AWS.OpsWorks.UpdateMyUserProfile
import Network.AWS.OpsWorks.UpdateRDSDBInstance
import Network.AWS.OpsWorks.UpdateStack
import Network.AWS.OpsWorks.UpdateUserProfile
import Network.AWS.OpsWorks.UpdateVolume
import Network.AWS.OpsWorks.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'OpsWorks'.

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
