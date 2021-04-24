{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types
  ( -- * Service Configuration
    emr,

    -- * Errors
    _InternalServerError,
    _InvalidRequestException,
    _InternalServerException,

    -- * ActionOnFailure
    ActionOnFailure (..),

    -- * AdjustmentType
    AdjustmentType (..),

    -- * AuthMode
    AuthMode (..),

    -- * AutoScalingPolicyState
    AutoScalingPolicyState (..),

    -- * AutoScalingPolicyStateChangeReasonCode
    AutoScalingPolicyStateChangeReasonCode (..),

    -- * CancelStepsRequestStatus
    CancelStepsRequestStatus (..),

    -- * ClusterState
    ClusterState (..),

    -- * ClusterStateChangeReasonCode
    ClusterStateChangeReasonCode (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * ComputeLimitsUnitType
    ComputeLimitsUnitType (..),

    -- * ExecutionEngineType
    ExecutionEngineType (..),

    -- * IdentityType
    IdentityType (..),

    -- * InstanceCollectionType
    InstanceCollectionType (..),

    -- * InstanceFleetState
    InstanceFleetState (..),

    -- * InstanceFleetStateChangeReasonCode
    InstanceFleetStateChangeReasonCode (..),

    -- * InstanceFleetType
    InstanceFleetType (..),

    -- * InstanceGroupState
    InstanceGroupState (..),

    -- * InstanceGroupStateChangeReasonCode
    InstanceGroupStateChangeReasonCode (..),

    -- * InstanceGroupType
    InstanceGroupType (..),

    -- * InstanceRoleType
    InstanceRoleType (..),

    -- * InstanceState
    InstanceState (..),

    -- * InstanceStateChangeReasonCode
    InstanceStateChangeReasonCode (..),

    -- * MarketType
    MarketType (..),

    -- * NotebookExecutionStatus
    NotebookExecutionStatus (..),

    -- * OnDemandProvisioningAllocationStrategy
    OnDemandProvisioningAllocationStrategy (..),

    -- * PlacementGroupStrategy
    PlacementGroupStrategy (..),

    -- * RepoUpgradeOnBoot
    RepoUpgradeOnBoot (..),

    -- * ScaleDownBehavior
    ScaleDownBehavior (..),

    -- * SpotProvisioningAllocationStrategy
    SpotProvisioningAllocationStrategy (..),

    -- * SpotProvisioningTimeoutAction
    SpotProvisioningTimeoutAction (..),

    -- * Statistic
    Statistic (..),

    -- * StepCancellationOption
    StepCancellationOption (..),

    -- * StepState
    StepState (..),

    -- * StepStateChangeReasonCode
    StepStateChangeReasonCode (..),

    -- * Unit
    Unit (..),

    -- * Application
    Application (..),
    application,
    aArgs,
    aAdditionalInfo,
    aVersion,
    aName,

    -- * AutoScalingPolicy
    AutoScalingPolicy (..),
    autoScalingPolicy,
    aspConstraints,
    aspRules,

    -- * AutoScalingPolicyDescription
    AutoScalingPolicyDescription (..),
    autoScalingPolicyDescription,
    aspdStatus,
    aspdConstraints,
    aspdRules,

    -- * AutoScalingPolicyStateChangeReason
    AutoScalingPolicyStateChangeReason (..),
    autoScalingPolicyStateChangeReason,
    aspscrMessage,
    aspscrCode,

    -- * AutoScalingPolicyStatus
    AutoScalingPolicyStatus (..),
    autoScalingPolicyStatus,
    aspsStateChangeReason,
    aspsState,

    -- * BlockPublicAccessConfiguration
    BlockPublicAccessConfiguration (..),
    blockPublicAccessConfiguration,
    bpacPermittedPublicSecurityGroupRuleRanges,
    bpacBlockPublicSecurityGroupRules,

    -- * BlockPublicAccessConfigurationMetadata
    BlockPublicAccessConfigurationMetadata (..),
    blockPublicAccessConfigurationMetadata,
    bpacmCreationDateTime,
    bpacmCreatedByARN,

    -- * BootstrapActionConfig
    BootstrapActionConfig (..),
    bootstrapActionConfig,
    bacName,
    bacScriptBootstrapAction,

    -- * CancelStepsInfo
    CancelStepsInfo (..),
    cancelStepsInfo,
    csiStepId,
    csiStatus,
    csiReason,

    -- * CloudWatchAlarmDefinition
    CloudWatchAlarmDefinition (..),
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

    -- * Cluster
    Cluster (..),
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

    -- * ClusterStateChangeReason
    ClusterStateChangeReason (..),
    clusterStateChangeReason,
    cscrMessage,
    cscrCode,

    -- * ClusterStatus
    ClusterStatus (..),
    clusterStatus,
    csStateChangeReason,
    csState,
    csTimeline,

    -- * ClusterSummary
    ClusterSummary (..),
    clusterSummary,
    csClusterARN,
    csStatus,
    csOutpostARN,
    csId,
    csName,
    csNormalizedInstanceHours,

    -- * ClusterTimeline
    ClusterTimeline (..),
    clusterTimeline,
    ctEndDateTime,
    ctCreationDateTime,
    ctReadyDateTime,

    -- * Command
    Command (..),
    command,
    comArgs,
    comScriptPath,
    comName,

    -- * ComputeLimits
    ComputeLimits (..),
    computeLimits,
    clMaximumOnDemandCapacityUnits,
    clMaximumCoreCapacityUnits,
    clUnitType,
    clMinimumCapacityUnits,
    clMaximumCapacityUnits,

    -- * Configuration
    Configuration (..),
    configuration,
    cConfigurations,
    cProperties,
    cClassification,

    -- * EBSBlockDevice
    EBSBlockDevice (..),
    ebsBlockDevice,
    ebdDevice,
    ebdVolumeSpecification,

    -- * EBSBlockDeviceConfig
    EBSBlockDeviceConfig (..),
    ebsBlockDeviceConfig,
    ebdcVolumesPerInstance,
    ebdcVolumeSpecification,

    -- * EBSConfiguration
    EBSConfiguration (..),
    ebsConfiguration,
    ecEBSBlockDeviceConfigs,
    ecEBSOptimized,

    -- * EBSVolume
    EBSVolume (..),
    ebsVolume,
    evDevice,
    evVolumeId,

    -- * EC2InstanceAttributes
    EC2InstanceAttributes (..),
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

    -- * ExecutionEngineConfig
    ExecutionEngineConfig (..),
    executionEngineConfig,
    eecMasterInstanceSecurityGroupId,
    eecType,
    eecId,

    -- * FailureDetails
    FailureDetails (..),
    failureDetails,
    fdMessage,
    fdReason,
    fdLogFile,

    -- * HadoopJARStepConfig
    HadoopJARStepConfig (..),
    hadoopJARStepConfig,
    hjscArgs,
    hjscProperties,
    hjscMainClass,
    hjscJAR,

    -- * HadoopStepConfig
    HadoopStepConfig (..),
    hadoopStepConfig,
    hscArgs,
    hscJAR,
    hscProperties,
    hscMainClass,

    -- * Instance
    Instance (..),
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

    -- * InstanceFleet
    InstanceFleet (..),
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

    -- * InstanceFleetConfig
    InstanceFleetConfig (..),
    instanceFleetConfig,
    ifcTargetOnDemandCapacity,
    ifcTargetSpotCapacity,
    ifcName,
    ifcLaunchSpecifications,
    ifcInstanceTypeConfigs,
    ifcInstanceFleetType,

    -- * InstanceFleetModifyConfig
    InstanceFleetModifyConfig (..),
    instanceFleetModifyConfig,
    ifmcTargetOnDemandCapacity,
    ifmcTargetSpotCapacity,
    ifmcInstanceFleetId,

    -- * InstanceFleetProvisioningSpecifications
    InstanceFleetProvisioningSpecifications (..),
    instanceFleetProvisioningSpecifications,
    ifpsOnDemandSpecification,
    ifpsSpotSpecification,

    -- * InstanceFleetStateChangeReason
    InstanceFleetStateChangeReason (..),
    instanceFleetStateChangeReason,
    ifscrMessage,
    ifscrCode,

    -- * InstanceFleetStatus
    InstanceFleetStatus (..),
    instanceFleetStatus,
    ifsStateChangeReason,
    ifsState,
    ifsTimeline,

    -- * InstanceFleetTimeline
    InstanceFleetTimeline (..),
    instanceFleetTimeline,
    iftEndDateTime,
    iftCreationDateTime,
    iftReadyDateTime,

    -- * InstanceGroup
    InstanceGroup (..),
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

    -- * InstanceGroupConfig
    InstanceGroupConfig (..),
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

    -- * InstanceGroupModifyConfig
    InstanceGroupModifyConfig (..),
    instanceGroupModifyConfig,
    igmcConfigurations,
    igmcShrinkPolicy,
    igmcEC2InstanceIdsToTerminate,
    igmcInstanceCount,
    igmcInstanceGroupId,

    -- * InstanceGroupStateChangeReason
    InstanceGroupStateChangeReason (..),
    instanceGroupStateChangeReason,
    igscrMessage,
    igscrCode,

    -- * InstanceGroupStatus
    InstanceGroupStatus (..),
    instanceGroupStatus,
    igsStateChangeReason,
    igsState,
    igsTimeline,

    -- * InstanceGroupTimeline
    InstanceGroupTimeline (..),
    instanceGroupTimeline,
    igtEndDateTime,
    igtCreationDateTime,
    igtReadyDateTime,

    -- * InstanceResizePolicy
    InstanceResizePolicy (..),
    instanceResizePolicy,
    irpInstanceTerminationTimeout,
    irpInstancesToTerminate,
    irpInstancesToProtect,

    -- * InstanceStateChangeReason
    InstanceStateChangeReason (..),
    instanceStateChangeReason,
    iscrMessage,
    iscrCode,

    -- * InstanceStatus
    InstanceStatus (..),
    instanceStatus,
    isStateChangeReason,
    isState,
    isTimeline,

    -- * InstanceTimeline
    InstanceTimeline (..),
    instanceTimeline,
    itEndDateTime,
    itCreationDateTime,
    itReadyDateTime,

    -- * InstanceTypeConfig
    InstanceTypeConfig (..),
    instanceTypeConfig,
    itcEBSConfiguration,
    itcConfigurations,
    itcBidPriceAsPercentageOfOnDemandPrice,
    itcBidPrice,
    itcWeightedCapacity,
    itcInstanceType,

    -- * InstanceTypeSpecification
    InstanceTypeSpecification (..),
    instanceTypeSpecification,
    itsInstanceType,
    itsEBSOptimized,
    itsEBSBlockDevices,
    itsConfigurations,
    itsBidPriceAsPercentageOfOnDemandPrice,
    itsBidPrice,
    itsWeightedCapacity,

    -- * JobFlowInstancesConfig
    JobFlowInstancesConfig (..),
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

    -- * KerberosAttributes
    KerberosAttributes (..),
    kerberosAttributes,
    kaRealm,
    kaADDomainJoinUser,
    kaKdcAdminPassword,
    kaADDomainJoinPassword,
    kaCrossRealmTrustPrincipalPassword,

    -- * KeyValue
    KeyValue (..),
    keyValue,
    kvKey,
    kvValue,

    -- * ManagedScalingPolicy
    ManagedScalingPolicy (..),
    managedScalingPolicy,
    mspComputeLimits,

    -- * MetricDimension
    MetricDimension (..),
    metricDimension,
    mdKey,
    mdValue,

    -- * NotebookExecution
    NotebookExecution (..),
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

    -- * NotebookExecutionSummary
    NotebookExecutionSummary (..),
    notebookExecutionSummary,
    nesStatus,
    nesNotebookExecutionName,
    nesEditorId,
    nesNotebookExecutionId,
    nesStartTime,
    nesEndTime,

    -- * OnDemandProvisioningSpecification
    OnDemandProvisioningSpecification (..),
    onDemandProvisioningSpecification,
    odpsAllocationStrategy,

    -- * PlacementGroupConfig
    PlacementGroupConfig (..),
    placementGroupConfig,
    pgcPlacementStrategy,
    pgcInstanceRole,

    -- * PlacementType
    PlacementType (..),
    placementType,
    ptAvailabilityZones,
    ptAvailabilityZone,

    -- * PortRange
    PortRange (..),
    portRange,
    prMaxRange,
    prMinRange,

    -- * ScalingAction
    ScalingAction (..),
    scalingAction,
    saMarket,
    saSimpleScalingPolicyConfiguration,

    -- * ScalingConstraints
    ScalingConstraints (..),
    scalingConstraints,
    scMinCapacity,
    scMaxCapacity,

    -- * ScalingRule
    ScalingRule (..),
    scalingRule,
    srDescription,
    srName,
    srAction,
    srTrigger,

    -- * ScalingTrigger
    ScalingTrigger (..),
    scalingTrigger,
    stCloudWatchAlarmDefinition,

    -- * ScriptBootstrapActionConfig
    ScriptBootstrapActionConfig (..),
    scriptBootstrapActionConfig,
    sbacArgs,
    sbacPath,

    -- * SecurityConfigurationSummary
    SecurityConfigurationSummary (..),
    securityConfigurationSummary,
    scsName,
    scsCreationDateTime,

    -- * SessionMappingDetail
    SessionMappingDetail (..),
    sessionMappingDetail,
    smdCreationTime,
    smdIdentityName,
    smdLastModifiedTime,
    smdIdentityType,
    smdIdentityId,
    smdSessionPolicyARN,
    smdStudioId,

    -- * SessionMappingSummary
    SessionMappingSummary (..),
    sessionMappingSummary,
    smsCreationTime,
    smsIdentityName,
    smsIdentityType,
    smsIdentityId,
    smsSessionPolicyARN,
    smsStudioId,

    -- * ShrinkPolicy
    ShrinkPolicy (..),
    shrinkPolicy,
    spInstanceResizePolicy,
    spDecommissionTimeout,

    -- * SimpleScalingPolicyConfiguration
    SimpleScalingPolicyConfiguration (..),
    simpleScalingPolicyConfiguration,
    sspcCoolDown,
    sspcAdjustmentType,
    sspcScalingAdjustment,

    -- * SpotProvisioningSpecification
    SpotProvisioningSpecification (..),
    spotProvisioningSpecification,
    spsBlockDurationMinutes,
    spsAllocationStrategy,
    spsTimeoutDurationMinutes,
    spsTimeoutAction,

    -- * Step
    Step (..),
    step,
    sStatus,
    sId,
    sConfig,
    sActionOnFailure,
    sName,

    -- * StepConfig
    StepConfig (..),
    stepConfig,
    scActionOnFailure,
    scName,
    scHadoopJARStep,

    -- * StepStateChangeReason
    StepStateChangeReason (..),
    stepStateChangeReason,
    sscrMessage,
    sscrCode,

    -- * StepStatus
    StepStatus (..),
    stepStatus,
    ssStateChangeReason,
    ssFailureDetails,
    ssState,
    ssTimeline,

    -- * StepSummary
    StepSummary (..),
    stepSummary,
    ssStatus,
    ssId,
    ssConfig,
    ssActionOnFailure,
    ssName,

    -- * StepTimeline
    StepTimeline (..),
    stepTimeline,
    stStartDateTime,
    stEndDateTime,
    stCreationDateTime,

    -- * Studio
    Studio (..),
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

    -- * StudioSummary
    StudioSummary (..),
    studioSummary,
    stuCreationTime,
    stuName,
    stuDescription,
    stuURL,
    stuVPCId,
    stuStudioId,

    -- * SupportedProductConfig
    SupportedProductConfig (..),
    supportedProductConfig,
    spcArgs,
    spcName,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * VolumeSpecification
    VolumeSpecification (..),
    volumeSpecification,
    vsIOPS,
    vsVolumeType,
    vsSizeInGB,
  )
where

import Network.AWS.EMR.Types.ActionOnFailure
import Network.AWS.EMR.Types.AdjustmentType
import Network.AWS.EMR.Types.Application
import Network.AWS.EMR.Types.AuthMode
import Network.AWS.EMR.Types.AutoScalingPolicy
import Network.AWS.EMR.Types.AutoScalingPolicyDescription
import Network.AWS.EMR.Types.AutoScalingPolicyState
import Network.AWS.EMR.Types.AutoScalingPolicyStateChangeReason
import Network.AWS.EMR.Types.AutoScalingPolicyStateChangeReasonCode
import Network.AWS.EMR.Types.AutoScalingPolicyStatus
import Network.AWS.EMR.Types.BlockPublicAccessConfiguration
import Network.AWS.EMR.Types.BlockPublicAccessConfigurationMetadata
import Network.AWS.EMR.Types.BootstrapActionConfig
import Network.AWS.EMR.Types.CancelStepsInfo
import Network.AWS.EMR.Types.CancelStepsRequestStatus
import Network.AWS.EMR.Types.CloudWatchAlarmDefinition
import Network.AWS.EMR.Types.Cluster
import Network.AWS.EMR.Types.ClusterState
import Network.AWS.EMR.Types.ClusterStateChangeReason
import Network.AWS.EMR.Types.ClusterStateChangeReasonCode
import Network.AWS.EMR.Types.ClusterStatus
import Network.AWS.EMR.Types.ClusterSummary
import Network.AWS.EMR.Types.ClusterTimeline
import Network.AWS.EMR.Types.Command
import Network.AWS.EMR.Types.ComparisonOperator
import Network.AWS.EMR.Types.ComputeLimits
import Network.AWS.EMR.Types.ComputeLimitsUnitType
import Network.AWS.EMR.Types.Configuration
import Network.AWS.EMR.Types.EBSBlockDevice
import Network.AWS.EMR.Types.EBSBlockDeviceConfig
import Network.AWS.EMR.Types.EBSConfiguration
import Network.AWS.EMR.Types.EBSVolume
import Network.AWS.EMR.Types.EC2InstanceAttributes
import Network.AWS.EMR.Types.ExecutionEngineConfig
import Network.AWS.EMR.Types.ExecutionEngineType
import Network.AWS.EMR.Types.FailureDetails
import Network.AWS.EMR.Types.HadoopJARStepConfig
import Network.AWS.EMR.Types.HadoopStepConfig
import Network.AWS.EMR.Types.IdentityType
import Network.AWS.EMR.Types.Instance
import Network.AWS.EMR.Types.InstanceCollectionType
import Network.AWS.EMR.Types.InstanceFleet
import Network.AWS.EMR.Types.InstanceFleetConfig
import Network.AWS.EMR.Types.InstanceFleetModifyConfig
import Network.AWS.EMR.Types.InstanceFleetProvisioningSpecifications
import Network.AWS.EMR.Types.InstanceFleetState
import Network.AWS.EMR.Types.InstanceFleetStateChangeReason
import Network.AWS.EMR.Types.InstanceFleetStateChangeReasonCode
import Network.AWS.EMR.Types.InstanceFleetStatus
import Network.AWS.EMR.Types.InstanceFleetTimeline
import Network.AWS.EMR.Types.InstanceFleetType
import Network.AWS.EMR.Types.InstanceGroup
import Network.AWS.EMR.Types.InstanceGroupConfig
import Network.AWS.EMR.Types.InstanceGroupModifyConfig
import Network.AWS.EMR.Types.InstanceGroupState
import Network.AWS.EMR.Types.InstanceGroupStateChangeReason
import Network.AWS.EMR.Types.InstanceGroupStateChangeReasonCode
import Network.AWS.EMR.Types.InstanceGroupStatus
import Network.AWS.EMR.Types.InstanceGroupTimeline
import Network.AWS.EMR.Types.InstanceGroupType
import Network.AWS.EMR.Types.InstanceResizePolicy
import Network.AWS.EMR.Types.InstanceRoleType
import Network.AWS.EMR.Types.InstanceState
import Network.AWS.EMR.Types.InstanceStateChangeReason
import Network.AWS.EMR.Types.InstanceStateChangeReasonCode
import Network.AWS.EMR.Types.InstanceStatus
import Network.AWS.EMR.Types.InstanceTimeline
import Network.AWS.EMR.Types.InstanceTypeConfig
import Network.AWS.EMR.Types.InstanceTypeSpecification
import Network.AWS.EMR.Types.JobFlowInstancesConfig
import Network.AWS.EMR.Types.KerberosAttributes
import Network.AWS.EMR.Types.KeyValue
import Network.AWS.EMR.Types.ManagedScalingPolicy
import Network.AWS.EMR.Types.MarketType
import Network.AWS.EMR.Types.MetricDimension
import Network.AWS.EMR.Types.NotebookExecution
import Network.AWS.EMR.Types.NotebookExecutionStatus
import Network.AWS.EMR.Types.NotebookExecutionSummary
import Network.AWS.EMR.Types.OnDemandProvisioningAllocationStrategy
import Network.AWS.EMR.Types.OnDemandProvisioningSpecification
import Network.AWS.EMR.Types.PlacementGroupConfig
import Network.AWS.EMR.Types.PlacementGroupStrategy
import Network.AWS.EMR.Types.PlacementType
import Network.AWS.EMR.Types.PortRange
import Network.AWS.EMR.Types.RepoUpgradeOnBoot
import Network.AWS.EMR.Types.ScaleDownBehavior
import Network.AWS.EMR.Types.ScalingAction
import Network.AWS.EMR.Types.ScalingConstraints
import Network.AWS.EMR.Types.ScalingRule
import Network.AWS.EMR.Types.ScalingTrigger
import Network.AWS.EMR.Types.ScriptBootstrapActionConfig
import Network.AWS.EMR.Types.SecurityConfigurationSummary
import Network.AWS.EMR.Types.SessionMappingDetail
import Network.AWS.EMR.Types.SessionMappingSummary
import Network.AWS.EMR.Types.ShrinkPolicy
import Network.AWS.EMR.Types.SimpleScalingPolicyConfiguration
import Network.AWS.EMR.Types.SpotProvisioningAllocationStrategy
import Network.AWS.EMR.Types.SpotProvisioningSpecification
import Network.AWS.EMR.Types.SpotProvisioningTimeoutAction
import Network.AWS.EMR.Types.Statistic
import Network.AWS.EMR.Types.Step
import Network.AWS.EMR.Types.StepCancellationOption
import Network.AWS.EMR.Types.StepConfig
import Network.AWS.EMR.Types.StepState
import Network.AWS.EMR.Types.StepStateChangeReason
import Network.AWS.EMR.Types.StepStateChangeReasonCode
import Network.AWS.EMR.Types.StepStatus
import Network.AWS.EMR.Types.StepSummary
import Network.AWS.EMR.Types.StepTimeline
import Network.AWS.EMR.Types.Studio
import Network.AWS.EMR.Types.StudioSummary
import Network.AWS.EMR.Types.SupportedProductConfig
import Network.AWS.EMR.Types.Tag
import Network.AWS.EMR.Types.Unit
import Network.AWS.EMR.Types.VolumeSpecification
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2009-03-31@ of the Amazon Elastic MapReduce SDK configuration.
emr :: Service
emr =
  Service
    { _svcAbbrev = "EMR",
      _svcSigner = v4,
      _svcPrefix = "elasticmapreduce",
      _svcVersion = "2009-03-31",
      _svcEndpoint = defaultEndpoint emr,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "EMR",
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

-- | Indicates that an error occurred while processing the request and that the request was not completed.
_InternalServerError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerError =
  _MatchServiceError emr "InternalServerError"

-- | This exception occurs when there is something wrong with user input.
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException =
  _MatchServiceError emr "InvalidRequestException"

-- | This exception occurs when there is an internal failure in the Amazon EMR service.
_InternalServerException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerException =
  _MatchServiceError emr "InternalServerException"
