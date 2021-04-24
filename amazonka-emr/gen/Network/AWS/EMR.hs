{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon EMR is a web service that makes it easier to process large amounts of data efficiently. Amazon EMR uses Hadoop processing combined with several AWS services to do tasks such as web indexing, data mining, log file analysis, machine learning, scientific simulation, and data warehouse management.
module Network.AWS.EMR
  ( -- * Service Configuration
    emr,

    -- * Errors
    -- $errors

    -- ** InternalServerError
    _InternalServerError,

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** InternalServerException
    _InternalServerException,

    -- * Waiters
    -- $waiters

    -- ** ClusterTerminated
    clusterTerminated,

    -- ** StepComplete
    stepComplete,

    -- ** ClusterRunning
    clusterRunning,

    -- * Operations
    -- $operations

    -- ** DescribeStep
    module Network.AWS.EMR.DescribeStep,

    -- ** RemoveTags
    module Network.AWS.EMR.RemoveTags,

    -- ** DeleteSecurityConfiguration
    module Network.AWS.EMR.DeleteSecurityConfiguration,

    -- ** ListSecurityConfigurations (Paginated)
    module Network.AWS.EMR.ListSecurityConfigurations,

    -- ** ModifyInstanceFleet
    module Network.AWS.EMR.ModifyInstanceFleet,

    -- ** RunJobFlow
    module Network.AWS.EMR.RunJobFlow,

    -- ** GetStudioSessionMapping
    module Network.AWS.EMR.GetStudioSessionMapping,

    -- ** SetVisibleToAllUsers
    module Network.AWS.EMR.SetVisibleToAllUsers,

    -- ** AddInstanceGroups
    module Network.AWS.EMR.AddInstanceGroups,

    -- ** CreateStudio
    module Network.AWS.EMR.CreateStudio,

    -- ** DeleteStudio
    module Network.AWS.EMR.DeleteStudio,

    -- ** UpdateStudio
    module Network.AWS.EMR.UpdateStudio,

    -- ** ListInstanceFleets (Paginated)
    module Network.AWS.EMR.ListInstanceFleets,

    -- ** RemoveManagedScalingPolicy
    module Network.AWS.EMR.RemoveManagedScalingPolicy,

    -- ** DescribeSecurityConfiguration
    module Network.AWS.EMR.DescribeSecurityConfiguration,

    -- ** StartNotebookExecution
    module Network.AWS.EMR.StartNotebookExecution,

    -- ** ListStudioSessionMappings (Paginated)
    module Network.AWS.EMR.ListStudioSessionMappings,

    -- ** StopNotebookExecution
    module Network.AWS.EMR.StopNotebookExecution,

    -- ** ListInstances (Paginated)
    module Network.AWS.EMR.ListInstances,

    -- ** AddTags
    module Network.AWS.EMR.AddTags,

    -- ** AddJobFlowSteps
    module Network.AWS.EMR.AddJobFlowSteps,

    -- ** ListBootstrapActions (Paginated)
    module Network.AWS.EMR.ListBootstrapActions,

    -- ** ListNotebookExecutions (Paginated)
    module Network.AWS.EMR.ListNotebookExecutions,

    -- ** GetBlockPublicAccessConfiguration
    module Network.AWS.EMR.GetBlockPublicAccessConfiguration,

    -- ** ModifyCluster
    module Network.AWS.EMR.ModifyCluster,

    -- ** TerminateJobFlows
    module Network.AWS.EMR.TerminateJobFlows,

    -- ** DescribeCluster
    module Network.AWS.EMR.DescribeCluster,

    -- ** CancelSteps
    module Network.AWS.EMR.CancelSteps,

    -- ** ListInstanceGroups (Paginated)
    module Network.AWS.EMR.ListInstanceGroups,

    -- ** RemoveAutoScalingPolicy
    module Network.AWS.EMR.RemoveAutoScalingPolicy,

    -- ** PutManagedScalingPolicy
    module Network.AWS.EMR.PutManagedScalingPolicy,

    -- ** ListStudios (Paginated)
    module Network.AWS.EMR.ListStudios,

    -- ** AddInstanceFleet
    module Network.AWS.EMR.AddInstanceFleet,

    -- ** CreateStudioSessionMapping
    module Network.AWS.EMR.CreateStudioSessionMapping,

    -- ** GetManagedScalingPolicy
    module Network.AWS.EMR.GetManagedScalingPolicy,

    -- ** DescribeNotebookExecution
    module Network.AWS.EMR.DescribeNotebookExecution,

    -- ** UpdateStudioSessionMapping
    module Network.AWS.EMR.UpdateStudioSessionMapping,

    -- ** DeleteStudioSessionMapping
    module Network.AWS.EMR.DeleteStudioSessionMapping,

    -- ** ListSteps (Paginated)
    module Network.AWS.EMR.ListSteps,

    -- ** ListClusters (Paginated)
    module Network.AWS.EMR.ListClusters,

    -- ** PutAutoScalingPolicy
    module Network.AWS.EMR.PutAutoScalingPolicy,

    -- ** SetTerminationProtection
    module Network.AWS.EMR.SetTerminationProtection,

    -- ** PutBlockPublicAccessConfiguration
    module Network.AWS.EMR.PutBlockPublicAccessConfiguration,

    -- ** DescribeStudio
    module Network.AWS.EMR.DescribeStudio,

    -- ** ModifyInstanceGroups
    module Network.AWS.EMR.ModifyInstanceGroups,

    -- ** CreateSecurityConfiguration
    module Network.AWS.EMR.CreateSecurityConfiguration,

    -- * Types

    -- ** ActionOnFailure
    ActionOnFailure (..),

    -- ** AdjustmentType
    AdjustmentType (..),

    -- ** AuthMode
    AuthMode (..),

    -- ** AutoScalingPolicyState
    AutoScalingPolicyState (..),

    -- ** AutoScalingPolicyStateChangeReasonCode
    AutoScalingPolicyStateChangeReasonCode (..),

    -- ** CancelStepsRequestStatus
    CancelStepsRequestStatus (..),

    -- ** ClusterState
    ClusterState (..),

    -- ** ClusterStateChangeReasonCode
    ClusterStateChangeReasonCode (..),

    -- ** ComparisonOperator
    ComparisonOperator (..),

    -- ** ComputeLimitsUnitType
    ComputeLimitsUnitType (..),

    -- ** ExecutionEngineType
    ExecutionEngineType (..),

    -- ** IdentityType
    IdentityType (..),

    -- ** InstanceCollectionType
    InstanceCollectionType (..),

    -- ** InstanceFleetState
    InstanceFleetState (..),

    -- ** InstanceFleetStateChangeReasonCode
    InstanceFleetStateChangeReasonCode (..),

    -- ** InstanceFleetType
    InstanceFleetType (..),

    -- ** InstanceGroupState
    InstanceGroupState (..),

    -- ** InstanceGroupStateChangeReasonCode
    InstanceGroupStateChangeReasonCode (..),

    -- ** InstanceGroupType
    InstanceGroupType (..),

    -- ** InstanceRoleType
    InstanceRoleType (..),

    -- ** InstanceState
    InstanceState (..),

    -- ** InstanceStateChangeReasonCode
    InstanceStateChangeReasonCode (..),

    -- ** MarketType
    MarketType (..),

    -- ** NotebookExecutionStatus
    NotebookExecutionStatus (..),

    -- ** OnDemandProvisioningAllocationStrategy
    OnDemandProvisioningAllocationStrategy (..),

    -- ** PlacementGroupStrategy
    PlacementGroupStrategy (..),

    -- ** RepoUpgradeOnBoot
    RepoUpgradeOnBoot (..),

    -- ** ScaleDownBehavior
    ScaleDownBehavior (..),

    -- ** SpotProvisioningAllocationStrategy
    SpotProvisioningAllocationStrategy (..),

    -- ** SpotProvisioningTimeoutAction
    SpotProvisioningTimeoutAction (..),

    -- ** Statistic
    Statistic (..),

    -- ** StepCancellationOption
    StepCancellationOption (..),

    -- ** StepState
    StepState (..),

    -- ** StepStateChangeReasonCode
    StepStateChangeReasonCode (..),

    -- ** Unit
    Unit (..),

    -- ** Application
    Application,
    application,
    aArgs,
    aAdditionalInfo,
    aVersion,
    aName,

    -- ** AutoScalingPolicy
    AutoScalingPolicy,
    autoScalingPolicy,
    aspConstraints,
    aspRules,

    -- ** AutoScalingPolicyDescription
    AutoScalingPolicyDescription,
    autoScalingPolicyDescription,
    aspdStatus,
    aspdConstraints,
    aspdRules,

    -- ** AutoScalingPolicyStateChangeReason
    AutoScalingPolicyStateChangeReason,
    autoScalingPolicyStateChangeReason,
    aspscrMessage,
    aspscrCode,

    -- ** AutoScalingPolicyStatus
    AutoScalingPolicyStatus,
    autoScalingPolicyStatus,
    aspsStateChangeReason,
    aspsState,

    -- ** BlockPublicAccessConfiguration
    BlockPublicAccessConfiguration,
    blockPublicAccessConfiguration,
    bpacPermittedPublicSecurityGroupRuleRanges,
    bpacBlockPublicSecurityGroupRules,

    -- ** BlockPublicAccessConfigurationMetadata
    BlockPublicAccessConfigurationMetadata,
    blockPublicAccessConfigurationMetadata,
    bpacmCreationDateTime,
    bpacmCreatedByARN,

    -- ** BootstrapActionConfig
    BootstrapActionConfig,
    bootstrapActionConfig,
    bacName,
    bacScriptBootstrapAction,

    -- ** CancelStepsInfo
    CancelStepsInfo,
    cancelStepsInfo,
    csiStepId,
    csiStatus,
    csiReason,

    -- ** CloudWatchAlarmDefinition
    CloudWatchAlarmDefinition,
    cloudWatchAlarmDefinition,
    cwadUnit,
    cwadStatistic,
    cwadDimensions,
    cwadNamespace,
    cwadEvaluationPeriods,
    cwadComparisonOperator,
    cwadMetricName,
    cwadPeriod,
    cwadThreshold,

    -- ** Cluster
    Cluster,
    cluster,
    cluClusterARN,
    cluRepoUpgradeOnBoot,
    cluServiceRole,
    cluSecurityConfiguration,
    cluScaleDownBehavior,
    cluAutoScalingRole,
    cluTerminationProtected,
    cluConfigurations,
    cluOutpostARN,
    cluMasterPublicDNSName,
    cluRunningAMIVersion,
    cluRequestedAMIVersion,
    cluReleaseLabel,
    cluEBSRootVolumeSize,
    cluInstanceCollectionType,
    cluLogEncryptionKMSKeyId,
    cluTags,
    cluApplications,
    cluStepConcurrencyLevel,
    cluVisibleToAllUsers,
    cluAutoTerminate,
    cluNormalizedInstanceHours,
    cluCustomAMIId,
    cluPlacementGroups,
    cluEC2InstanceAttributes,
    cluKerberosAttributes,
    cluLogURI,
    cluId,
    cluName,
    cluStatus,

    -- ** ClusterStateChangeReason
    ClusterStateChangeReason,
    clusterStateChangeReason,
    cscrMessage,
    cscrCode,

    -- ** ClusterStatus
    ClusterStatus,
    clusterStatus,
    csStateChangeReason,
    csState,
    csTimeline,

    -- ** ClusterSummary
    ClusterSummary,
    clusterSummary,
    csClusterARN,
    csStatus,
    csOutpostARN,
    csId,
    csName,
    csNormalizedInstanceHours,

    -- ** ClusterTimeline
    ClusterTimeline,
    clusterTimeline,
    ctEndDateTime,
    ctCreationDateTime,
    ctReadyDateTime,

    -- ** Command
    Command,
    command,
    comArgs,
    comScriptPath,
    comName,

    -- ** ComputeLimits
    ComputeLimits,
    computeLimits,
    clMaximumOnDemandCapacityUnits,
    clMaximumCoreCapacityUnits,
    clUnitType,
    clMinimumCapacityUnits,
    clMaximumCapacityUnits,

    -- ** Configuration
    Configuration,
    configuration,
    cConfigurations,
    cProperties,
    cClassification,

    -- ** EBSBlockDevice
    EBSBlockDevice,
    ebsBlockDevice,
    ebdDevice,
    ebdVolumeSpecification,

    -- ** EBSBlockDeviceConfig
    EBSBlockDeviceConfig,
    ebsBlockDeviceConfig,
    ebdcVolumesPerInstance,
    ebdcVolumeSpecification,

    -- ** EBSConfiguration
    EBSConfiguration,
    ebsConfiguration,
    ecEBSBlockDeviceConfigs,
    ecEBSOptimized,

    -- ** EBSVolume
    EBSVolume,
    ebsVolume,
    evDevice,
    evVolumeId,

    -- ** EC2InstanceAttributes
    EC2InstanceAttributes,
    ec2InstanceAttributes,
    eiaEC2KeyName,
    eiaAdditionalSlaveSecurityGroups,
    eiaEC2AvailabilityZone,
    eiaEmrManagedSlaveSecurityGroup,
    eiaRequestedEC2AvailabilityZones,
    eiaEC2SubnetId,
    eiaEmrManagedMasterSecurityGroup,
    eiaIAMInstanceProfile,
    eiaAdditionalMasterSecurityGroups,
    eiaRequestedEC2SubnetIds,
    eiaServiceAccessSecurityGroup,

    -- ** ExecutionEngineConfig
    ExecutionEngineConfig,
    executionEngineConfig,
    eecMasterInstanceSecurityGroupId,
    eecType,
    eecId,

    -- ** FailureDetails
    FailureDetails,
    failureDetails,
    fdMessage,
    fdReason,
    fdLogFile,

    -- ** HadoopJARStepConfig
    HadoopJARStepConfig,
    hadoopJARStepConfig,
    hjscArgs,
    hjscProperties,
    hjscMainClass,
    hjscJAR,

    -- ** HadoopStepConfig
    HadoopStepConfig,
    hadoopStepConfig,
    hscArgs,
    hscJAR,
    hscProperties,
    hscMainClass,

    -- ** Instance
    Instance,
    instance',
    iEBSVolumes,
    iStatus,
    iInstanceType,
    iInstanceGroupId,
    iId,
    iInstanceFleetId,
    iPublicDNSName,
    iMarket,
    iPublicIPAddress,
    iPrivateDNSName,
    iEC2InstanceId,
    iPrivateIPAddress,

    -- ** InstanceFleet
    InstanceFleet,
    instanceFleet,
    ifInstanceFleetType,
    ifStatus,
    ifTargetOnDemandCapacity,
    ifId,
    ifTargetSpotCapacity,
    ifProvisionedOnDemandCapacity,
    ifInstanceTypeSpecifications,
    ifName,
    ifProvisionedSpotCapacity,
    ifLaunchSpecifications,

    -- ** InstanceFleetConfig
    InstanceFleetConfig,
    instanceFleetConfig,
    ifcTargetOnDemandCapacity,
    ifcTargetSpotCapacity,
    ifcName,
    ifcLaunchSpecifications,
    ifcInstanceTypeConfigs,
    ifcInstanceFleetType,

    -- ** InstanceFleetModifyConfig
    InstanceFleetModifyConfig,
    instanceFleetModifyConfig,
    ifmcTargetOnDemandCapacity,
    ifmcTargetSpotCapacity,
    ifmcInstanceFleetId,

    -- ** InstanceFleetProvisioningSpecifications
    InstanceFleetProvisioningSpecifications,
    instanceFleetProvisioningSpecifications,
    ifpsOnDemandSpecification,
    ifpsSpotSpecification,

    -- ** InstanceFleetStateChangeReason
    InstanceFleetStateChangeReason,
    instanceFleetStateChangeReason,
    ifscrMessage,
    ifscrCode,

    -- ** InstanceFleetStatus
    InstanceFleetStatus,
    instanceFleetStatus,
    ifsStateChangeReason,
    ifsState,
    ifsTimeline,

    -- ** InstanceFleetTimeline
    InstanceFleetTimeline,
    instanceFleetTimeline,
    iftEndDateTime,
    iftCreationDateTime,
    iftReadyDateTime,

    -- ** InstanceGroup
    InstanceGroup,
    instanceGroup,
    igLastSuccessfullyAppliedConfigurationsVersion,
    igStatus,
    igInstanceType,
    igEBSOptimized,
    igEBSBlockDevices,
    igInstanceGroupType,
    igConfigurations,
    igShrinkPolicy,
    igId,
    igLastSuccessfullyAppliedConfigurations,
    igRequestedInstanceCount,
    igAutoScalingPolicy,
    igBidPrice,
    igName,
    igMarket,
    igConfigurationsVersion,
    igRunningInstanceCount,

    -- ** InstanceGroupConfig
    InstanceGroupConfig,
    instanceGroupConfig,
    igcEBSConfiguration,
    igcConfigurations,
    igcAutoScalingPolicy,
    igcBidPrice,
    igcName,
    igcMarket,
    igcInstanceRole,
    igcInstanceType,
    igcInstanceCount,

    -- ** InstanceGroupModifyConfig
    InstanceGroupModifyConfig,
    instanceGroupModifyConfig,
    igmcConfigurations,
    igmcShrinkPolicy,
    igmcEC2InstanceIdsToTerminate,
    igmcInstanceCount,
    igmcInstanceGroupId,

    -- ** InstanceGroupStateChangeReason
    InstanceGroupStateChangeReason,
    instanceGroupStateChangeReason,
    igscrMessage,
    igscrCode,

    -- ** InstanceGroupStatus
    InstanceGroupStatus,
    instanceGroupStatus,
    igsStateChangeReason,
    igsState,
    igsTimeline,

    -- ** InstanceGroupTimeline
    InstanceGroupTimeline,
    instanceGroupTimeline,
    igtEndDateTime,
    igtCreationDateTime,
    igtReadyDateTime,

    -- ** InstanceResizePolicy
    InstanceResizePolicy,
    instanceResizePolicy,
    irpInstanceTerminationTimeout,
    irpInstancesToTerminate,
    irpInstancesToProtect,

    -- ** InstanceStateChangeReason
    InstanceStateChangeReason,
    instanceStateChangeReason,
    iscrMessage,
    iscrCode,

    -- ** InstanceStatus
    InstanceStatus,
    instanceStatus,
    isStateChangeReason,
    isState,
    isTimeline,

    -- ** InstanceTimeline
    InstanceTimeline,
    instanceTimeline,
    itEndDateTime,
    itCreationDateTime,
    itReadyDateTime,

    -- ** InstanceTypeConfig
    InstanceTypeConfig,
    instanceTypeConfig,
    itcEBSConfiguration,
    itcConfigurations,
    itcBidPriceAsPercentageOfOnDemandPrice,
    itcBidPrice,
    itcWeightedCapacity,
    itcInstanceType,

    -- ** InstanceTypeSpecification
    InstanceTypeSpecification,
    instanceTypeSpecification,
    itsInstanceType,
    itsEBSOptimized,
    itsEBSBlockDevices,
    itsConfigurations,
    itsBidPriceAsPercentageOfOnDemandPrice,
    itsBidPrice,
    itsWeightedCapacity,

    -- ** JobFlowInstancesConfig
    JobFlowInstancesConfig,
    jobFlowInstancesConfig,
    jficHadoopVersion,
    jficEC2KeyName,
    jficInstanceFleets,
    jficEC2SubnetIds,
    jficPlacement,
    jficAdditionalSlaveSecurityGroups,
    jficTerminationProtected,
    jficEmrManagedSlaveSecurityGroup,
    jficInstanceGroups,
    jficMasterInstanceType,
    jficEC2SubnetId,
    jficEmrManagedMasterSecurityGroup,
    jficAdditionalMasterSecurityGroups,
    jficSlaveInstanceType,
    jficServiceAccessSecurityGroup,
    jficKeepJobFlowAliveWhenNoSteps,
    jficInstanceCount,

    -- ** KerberosAttributes
    KerberosAttributes,
    kerberosAttributes,
    kaRealm,
    kaADDomainJoinUser,
    kaKdcAdminPassword,
    kaADDomainJoinPassword,
    kaCrossRealmTrustPrincipalPassword,

    -- ** KeyValue
    KeyValue,
    keyValue,
    kvKey,
    kvValue,

    -- ** ManagedScalingPolicy
    ManagedScalingPolicy,
    managedScalingPolicy,
    mspComputeLimits,

    -- ** MetricDimension
    MetricDimension,
    metricDimension,
    mdKey,
    mdValue,

    -- ** NotebookExecution
    NotebookExecution,
    notebookExecution,
    neLastStateChangeReason,
    neStatus,
    neNotebookExecutionName,
    neEditorId,
    neNotebookExecutionId,
    neStartTime,
    neARN,
    neNotebookParams,
    neEndTime,
    neNotebookInstanceSecurityGroupId,
    neExecutionEngine,
    neTags,
    neOutputNotebookURI,

    -- ** NotebookExecutionSummary
    NotebookExecutionSummary,
    notebookExecutionSummary,
    nesStatus,
    nesNotebookExecutionName,
    nesEditorId,
    nesNotebookExecutionId,
    nesStartTime,
    nesEndTime,

    -- ** OnDemandProvisioningSpecification
    OnDemandProvisioningSpecification,
    onDemandProvisioningSpecification,
    odpsAllocationStrategy,

    -- ** PlacementGroupConfig
    PlacementGroupConfig,
    placementGroupConfig,
    pgcPlacementStrategy,
    pgcInstanceRole,

    -- ** PlacementType
    PlacementType,
    placementType,
    ptAvailabilityZones,
    ptAvailabilityZone,

    -- ** PortRange
    PortRange,
    portRange,
    prMaxRange,
    prMinRange,

    -- ** ScalingAction
    ScalingAction,
    scalingAction,
    saMarket,
    saSimpleScalingPolicyConfiguration,

    -- ** ScalingConstraints
    ScalingConstraints,
    scalingConstraints,
    scMinCapacity,
    scMaxCapacity,

    -- ** ScalingRule
    ScalingRule,
    scalingRule,
    srDescription,
    srName,
    srAction,
    srTrigger,

    -- ** ScalingTrigger
    ScalingTrigger,
    scalingTrigger,
    stCloudWatchAlarmDefinition,

    -- ** ScriptBootstrapActionConfig
    ScriptBootstrapActionConfig,
    scriptBootstrapActionConfig,
    sbacArgs,
    sbacPath,

    -- ** SecurityConfigurationSummary
    SecurityConfigurationSummary,
    securityConfigurationSummary,
    scsName,
    scsCreationDateTime,

    -- ** SessionMappingDetail
    SessionMappingDetail,
    sessionMappingDetail,
    smdCreationTime,
    smdIdentityName,
    smdLastModifiedTime,
    smdIdentityType,
    smdIdentityId,
    smdSessionPolicyARN,
    smdStudioId,

    -- ** SessionMappingSummary
    SessionMappingSummary,
    sessionMappingSummary,
    smsCreationTime,
    smsIdentityName,
    smsIdentityType,
    smsIdentityId,
    smsSessionPolicyARN,
    smsStudioId,

    -- ** ShrinkPolicy
    ShrinkPolicy,
    shrinkPolicy,
    spInstanceResizePolicy,
    spDecommissionTimeout,

    -- ** SimpleScalingPolicyConfiguration
    SimpleScalingPolicyConfiguration,
    simpleScalingPolicyConfiguration,
    sspcCoolDown,
    sspcAdjustmentType,
    sspcScalingAdjustment,

    -- ** SpotProvisioningSpecification
    SpotProvisioningSpecification,
    spotProvisioningSpecification,
    spsBlockDurationMinutes,
    spsAllocationStrategy,
    spsTimeoutDurationMinutes,
    spsTimeoutAction,

    -- ** Step
    Step,
    step,
    sStatus,
    sId,
    sConfig,
    sActionOnFailure,
    sName,

    -- ** StepConfig
    StepConfig,
    stepConfig,
    scActionOnFailure,
    scName,
    scHadoopJARStep,

    -- ** StepStateChangeReason
    StepStateChangeReason,
    stepStateChangeReason,
    sscrMessage,
    sscrCode,

    -- ** StepStatus
    StepStatus,
    stepStatus,
    ssStateChangeReason,
    ssFailureDetails,
    ssState,
    ssTimeline,

    -- ** StepSummary
    StepSummary,
    stepSummary,
    ssStatus,
    ssId,
    ssConfig,
    ssActionOnFailure,
    ssName,

    -- ** StepTimeline
    StepTimeline,
    stepTimeline,
    stStartDateTime,
    stEndDateTime,
    stCreationDateTime,

    -- ** Studio
    Studio,
    studio,
    stutCreationTime,
    stutServiceRole,
    stutWorkspaceSecurityGroupId,
    stutDefaultS3Location,
    stutAuthMode,
    stutSubnetIds,
    stutUserRole,
    stutName,
    stutTags,
    stutDescription,
    stutURL,
    stutVPCId,
    stutStudioARN,
    stutStudioId,
    stutEngineSecurityGroupId,

    -- ** StudioSummary
    StudioSummary,
    studioSummary,
    stuCreationTime,
    stuName,
    stuDescription,
    stuURL,
    stuVPCId,
    stuStudioId,

    -- ** SupportedProductConfig
    SupportedProductConfig,
    supportedProductConfig,
    spcArgs,
    spcName,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** VolumeSpecification
    VolumeSpecification,
    volumeSpecification,
    vsIOPS,
    vsVolumeType,
    vsSizeInGB,
  )
where

import Network.AWS.EMR.AddInstanceFleet
import Network.AWS.EMR.AddInstanceGroups
import Network.AWS.EMR.AddJobFlowSteps
import Network.AWS.EMR.AddTags
import Network.AWS.EMR.CancelSteps
import Network.AWS.EMR.CreateSecurityConfiguration
import Network.AWS.EMR.CreateStudio
import Network.AWS.EMR.CreateStudioSessionMapping
import Network.AWS.EMR.DeleteSecurityConfiguration
import Network.AWS.EMR.DeleteStudio
import Network.AWS.EMR.DeleteStudioSessionMapping
import Network.AWS.EMR.DescribeCluster
import Network.AWS.EMR.DescribeNotebookExecution
import Network.AWS.EMR.DescribeSecurityConfiguration
import Network.AWS.EMR.DescribeStep
import Network.AWS.EMR.DescribeStudio
import Network.AWS.EMR.GetBlockPublicAccessConfiguration
import Network.AWS.EMR.GetManagedScalingPolicy
import Network.AWS.EMR.GetStudioSessionMapping
import Network.AWS.EMR.ListBootstrapActions
import Network.AWS.EMR.ListClusters
import Network.AWS.EMR.ListInstanceFleets
import Network.AWS.EMR.ListInstanceGroups
import Network.AWS.EMR.ListInstances
import Network.AWS.EMR.ListNotebookExecutions
import Network.AWS.EMR.ListSecurityConfigurations
import Network.AWS.EMR.ListSteps
import Network.AWS.EMR.ListStudioSessionMappings
import Network.AWS.EMR.ListStudios
import Network.AWS.EMR.ModifyCluster
import Network.AWS.EMR.ModifyInstanceFleet
import Network.AWS.EMR.ModifyInstanceGroups
import Network.AWS.EMR.PutAutoScalingPolicy
import Network.AWS.EMR.PutBlockPublicAccessConfiguration
import Network.AWS.EMR.PutManagedScalingPolicy
import Network.AWS.EMR.RemoveAutoScalingPolicy
import Network.AWS.EMR.RemoveManagedScalingPolicy
import Network.AWS.EMR.RemoveTags
import Network.AWS.EMR.RunJobFlow
import Network.AWS.EMR.SetTerminationProtection
import Network.AWS.EMR.SetVisibleToAllUsers
import Network.AWS.EMR.StartNotebookExecution
import Network.AWS.EMR.StopNotebookExecution
import Network.AWS.EMR.TerminateJobFlows
import Network.AWS.EMR.Types
import Network.AWS.EMR.UpdateStudio
import Network.AWS.EMR.UpdateStudioSessionMapping
import Network.AWS.EMR.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'EMR'.

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
