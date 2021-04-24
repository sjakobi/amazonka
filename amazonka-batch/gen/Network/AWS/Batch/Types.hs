{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types
  ( -- * Service Configuration
    batch,

    -- * Errors
    _ClientException,
    _ServerException,

    -- * ArrayJobDependency
    ArrayJobDependency (..),

    -- * AssignPublicIP
    AssignPublicIP (..),

    -- * CEState
    CEState (..),

    -- * CEStatus
    CEStatus (..),

    -- * CEType
    CEType (..),

    -- * CRAllocationStrategy
    CRAllocationStrategy (..),

    -- * CRType
    CRType (..),

    -- * DeviceCgroupPermission
    DeviceCgroupPermission (..),

    -- * JQState
    JQState (..),

    -- * JQStatus
    JQStatus (..),

    -- * JobDefinitionType
    JobDefinitionType (..),

    -- * JobStatus
    JobStatus (..),

    -- * LogDriver
    LogDriver (..),

    -- * PlatformCapability
    PlatformCapability (..),

    -- * ResourceType
    ResourceType (..),

    -- * RetryAction
    RetryAction (..),

    -- * ArrayProperties
    ArrayProperties (..),
    arrayProperties,
    apSize,

    -- * ArrayPropertiesDetail
    ArrayPropertiesDetail (..),
    arrayPropertiesDetail,
    apdIndex,
    apdStatusSummary,
    apdSize,

    -- * ArrayPropertiesSummary
    ArrayPropertiesSummary (..),
    arrayPropertiesSummary,
    apsIndex,
    apsSize,

    -- * AttemptContainerDetail
    AttemptContainerDetail (..),
    attemptContainerDetail,
    acdLogStreamName,
    acdContainerInstanceARN,
    acdExitCode,
    acdReason,
    acdTaskARN,
    acdNetworkInterfaces,

    -- * AttemptDetail
    AttemptDetail (..),
    attemptDetail,
    adContainer,
    adStartedAt,
    adStoppedAt,
    adStatusReason,

    -- * ComputeEnvironmentDetail
    ComputeEnvironmentDetail (..),
    computeEnvironmentDetail,
    cedStatus,
    cedServiceRole,
    cedState,
    cedComputeResources,
    cedTags,
    cedStatusReason,
    cedType,
    cedComputeEnvironmentName,
    cedComputeEnvironmentARN,
    cedEcsClusterARN,

    -- * ComputeEnvironmentOrder
    ComputeEnvironmentOrder (..),
    computeEnvironmentOrder,
    ceoOrder,
    ceoComputeEnvironment,

    -- * ComputeResource
    ComputeResource (..),
    computeResource,
    crSecurityGroupIds,
    crBidPercentage,
    crMinvCPUs,
    crEc2KeyPair,
    crPlacementGroup,
    crLaunchTemplate,
    crImageId,
    crSpotIAMFleetRole,
    crEc2Configuration,
    crTags,
    crDesiredvCPUs,
    crAllocationStrategy,
    crInstanceRole,
    crInstanceTypes,
    crType,
    crMaxvCPUs,
    crSubnets,

    -- * ComputeResourceUpdate
    ComputeResourceUpdate (..),
    computeResourceUpdate,
    cruSecurityGroupIds,
    cruMinvCPUs,
    cruMaxvCPUs,
    cruDesiredvCPUs,
    cruSubnets,

    -- * ContainerDetail
    ContainerDetail (..),
    containerDetail,
    cdLogStreamName,
    cdLinuxParameters,
    cdMemory,
    cdUser,
    cdInstanceType,
    cdNetworkConfiguration,
    cdExecutionRoleARN,
    cdPrivileged,
    cdVcpus,
    cdContainerInstanceARN,
    cdVolumes,
    cdEnvironment,
    cdFargatePlatformConfiguration,
    cdExitCode,
    cdSecrets,
    cdMountPoints,
    cdImage,
    cdCommand,
    cdLogConfiguration,
    cdReason,
    cdResourceRequirements,
    cdJobRoleARN,
    cdReadonlyRootFilesystem,
    cdUlimits,
    cdTaskARN,
    cdNetworkInterfaces,

    -- * ContainerOverrides
    ContainerOverrides (..),
    containerOverrides,
    coMemory,
    coInstanceType,
    coVcpus,
    coEnvironment,
    coCommand,
    coResourceRequirements,

    -- * ContainerProperties
    ContainerProperties (..),
    containerProperties,
    cpLinuxParameters,
    cpMemory,
    cpUser,
    cpInstanceType,
    cpNetworkConfiguration,
    cpExecutionRoleARN,
    cpPrivileged,
    cpVcpus,
    cpVolumes,
    cpEnvironment,
    cpFargatePlatformConfiguration,
    cpSecrets,
    cpMountPoints,
    cpImage,
    cpCommand,
    cpLogConfiguration,
    cpResourceRequirements,
    cpJobRoleARN,
    cpReadonlyRootFilesystem,
    cpUlimits,

    -- * ContainerSummary
    ContainerSummary (..),
    containerSummary,
    csExitCode,
    csReason,

    -- * Device
    Device (..),
    device,
    dPermissions,
    dContainerPath,
    dHostPath,

    -- * EC2Configuration
    EC2Configuration (..),
    ec2Configuration,
    ecImageIdOverride,
    ecImageType,

    -- * EvaluateOnExit
    EvaluateOnExit (..),
    evaluateOnExit,
    eoeOnExitCode,
    eoeOnStatusReason,
    eoeOnReason,
    eoeAction,

    -- * FargatePlatformConfiguration
    FargatePlatformConfiguration (..),
    fargatePlatformConfiguration,
    fpcPlatformVersion,

    -- * Host
    Host (..),
    host,
    hSourcePath,

    -- * JobDefinition
    JobDefinition (..),
    jobDefinition,
    jdStatus,
    jdPlatformCapabilities,
    jdTimeout,
    jdNodeProperties,
    jdTags,
    jdContainerProperties,
    jdRetryStrategy,
    jdParameters,
    jdPropagateTags,
    jdJobDefinitionName,
    jdJobDefinitionARN,
    jdRevision,
    jdType,

    -- * JobDependency
    JobDependency (..),
    jobDependency,
    jobType,
    jobJobId,

    -- * JobDetail
    JobDetail (..),
    jobDetail,
    jContainer,
    jStartedAt,
    jDependsOn,
    jPlatformCapabilities,
    jTimeout,
    jArrayProperties,
    jCreatedAt,
    jJobARN,
    jNodeDetails,
    jStoppedAt,
    jNodeProperties,
    jTags,
    jAttempts,
    jRetryStrategy,
    jStatusReason,
    jParameters,
    jPropagateTags,
    jJobName,
    jJobId,
    jJobQueue,
    jStatus,
    jJobDefinition,

    -- * JobQueueDetail
    JobQueueDetail (..),
    jobQueueDetail,
    jqdStatus,
    jqdTags,
    jqdStatusReason,
    jqdJobQueueName,
    jqdJobQueueARN,
    jqdState,
    jqdPriority,
    jqdComputeEnvironmentOrder,

    -- * JobSummary
    JobSummary (..),
    jobSummary,
    jsContainer,
    jsStartedAt,
    jsStatus,
    jsArrayProperties,
    jsCreatedAt,
    jsJobARN,
    jsStoppedAt,
    jsNodeProperties,
    jsStatusReason,
    jsJobId,
    jsJobName,

    -- * JobTimeout
    JobTimeout (..),
    jobTimeout,
    jtAttemptDurationSeconds,

    -- * KeyValuePair
    KeyValuePair (..),
    keyValuePair,
    kvpName,
    kvpValue,

    -- * LaunchTemplateSpecification
    LaunchTemplateSpecification (..),
    launchTemplateSpecification,
    ltsLaunchTemplateId,
    ltsLaunchTemplateName,
    ltsVersion,

    -- * LinuxParameters
    LinuxParameters (..),
    linuxParameters,
    lpTmpfs,
    lpMaxSwap,
    lpDevices,
    lpSwappiness,
    lpInitProcessEnabled,
    lpSharedMemorySize,

    -- * LogConfiguration
    LogConfiguration (..),
    logConfiguration,
    lcOptions,
    lcSecretOptions,
    lcLogDriver,

    -- * MountPoint
    MountPoint (..),
    mountPoint,
    mpReadOnly,
    mpSourceVolume,
    mpContainerPath,

    -- * NetworkConfiguration
    NetworkConfiguration (..),
    networkConfiguration,
    ncAssignPublicIP,

    -- * NetworkInterface
    NetworkInterface (..),
    networkInterface,
    niPrivateIPv4Address,
    niIpv6Address,
    niAttachmentId,

    -- * NodeDetails
    NodeDetails (..),
    nodeDetails,
    ndIsMainNode,
    ndNodeIndex,

    -- * NodeOverrides
    NodeOverrides (..),
    nodeOverrides,
    noNodePropertyOverrides,
    noNumNodes,

    -- * NodeProperties
    NodeProperties (..),
    nodeProperties,
    npNumNodes,
    npMainNode,
    npNodeRangeProperties,

    -- * NodePropertiesSummary
    NodePropertiesSummary (..),
    nodePropertiesSummary,
    npsIsMainNode,
    npsNodeIndex,
    npsNumNodes,

    -- * NodePropertyOverride
    NodePropertyOverride (..),
    nodePropertyOverride,
    npoContainerOverrides,
    npoTargetNodes,

    -- * NodeRangeProperty
    NodeRangeProperty (..),
    nodeRangeProperty,
    nrpContainer,
    nrpTargetNodes,

    -- * ResourceRequirement
    ResourceRequirement (..),
    resourceRequirement,
    rrValue,
    rrType,

    -- * RetryStrategy
    RetryStrategy (..),
    retryStrategy,
    rsEvaluateOnExit,
    rsAttempts,

    -- * Secret
    Secret (..),
    secret,
    sName,
    sValueFrom,

    -- * Tmpfs
    Tmpfs (..),
    tmpfs,
    tMountOptions,
    tContainerPath,
    tSize,

    -- * Ulimit
    Ulimit (..),
    ulimit,
    uHardLimit,
    uName,
    uSoftLimit,

    -- * Volume
    Volume (..),
    volume,
    vName,
    vHost,
  )
where

import Network.AWS.Batch.Types.ArrayJobDependency
import Network.AWS.Batch.Types.ArrayProperties
import Network.AWS.Batch.Types.ArrayPropertiesDetail
import Network.AWS.Batch.Types.ArrayPropertiesSummary
import Network.AWS.Batch.Types.AssignPublicIP
import Network.AWS.Batch.Types.AttemptContainerDetail
import Network.AWS.Batch.Types.AttemptDetail
import Network.AWS.Batch.Types.CEState
import Network.AWS.Batch.Types.CEStatus
import Network.AWS.Batch.Types.CEType
import Network.AWS.Batch.Types.CRAllocationStrategy
import Network.AWS.Batch.Types.CRType
import Network.AWS.Batch.Types.ComputeEnvironmentDetail
import Network.AWS.Batch.Types.ComputeEnvironmentOrder
import Network.AWS.Batch.Types.ComputeResource
import Network.AWS.Batch.Types.ComputeResourceUpdate
import Network.AWS.Batch.Types.ContainerDetail
import Network.AWS.Batch.Types.ContainerOverrides
import Network.AWS.Batch.Types.ContainerProperties
import Network.AWS.Batch.Types.ContainerSummary
import Network.AWS.Batch.Types.Device
import Network.AWS.Batch.Types.DeviceCgroupPermission
import Network.AWS.Batch.Types.EC2Configuration
import Network.AWS.Batch.Types.EvaluateOnExit
import Network.AWS.Batch.Types.FargatePlatformConfiguration
import Network.AWS.Batch.Types.Host
import Network.AWS.Batch.Types.JQState
import Network.AWS.Batch.Types.JQStatus
import Network.AWS.Batch.Types.JobDefinition
import Network.AWS.Batch.Types.JobDefinitionType
import Network.AWS.Batch.Types.JobDependency
import Network.AWS.Batch.Types.JobDetail
import Network.AWS.Batch.Types.JobQueueDetail
import Network.AWS.Batch.Types.JobStatus
import Network.AWS.Batch.Types.JobSummary
import Network.AWS.Batch.Types.JobTimeout
import Network.AWS.Batch.Types.KeyValuePair
import Network.AWS.Batch.Types.LaunchTemplateSpecification
import Network.AWS.Batch.Types.LinuxParameters
import Network.AWS.Batch.Types.LogConfiguration
import Network.AWS.Batch.Types.LogDriver
import Network.AWS.Batch.Types.MountPoint
import Network.AWS.Batch.Types.NetworkConfiguration
import Network.AWS.Batch.Types.NetworkInterface
import Network.AWS.Batch.Types.NodeDetails
import Network.AWS.Batch.Types.NodeOverrides
import Network.AWS.Batch.Types.NodeProperties
import Network.AWS.Batch.Types.NodePropertiesSummary
import Network.AWS.Batch.Types.NodePropertyOverride
import Network.AWS.Batch.Types.NodeRangeProperty
import Network.AWS.Batch.Types.PlatformCapability
import Network.AWS.Batch.Types.ResourceRequirement
import Network.AWS.Batch.Types.ResourceType
import Network.AWS.Batch.Types.RetryAction
import Network.AWS.Batch.Types.RetryStrategy
import Network.AWS.Batch.Types.Secret
import Network.AWS.Batch.Types.Tmpfs
import Network.AWS.Batch.Types.Ulimit
import Network.AWS.Batch.Types.Volume
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-08-10@ of the Amazon Batch SDK configuration.
batch :: Service
batch =
  Service
    { _svcAbbrev = "Batch",
      _svcSigner = v4,
      _svcPrefix = "batch",
      _svcVersion = "2016-08-10",
      _svcEndpoint = defaultEndpoint batch,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Batch",
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

-- | These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permissions to use the action or resource, or specifying an identifier that's not valid.
_ClientException :: AsError a => Getting (First ServiceError) a ServiceError
_ClientException =
  _MatchServiceError batch "ClientException"
    . hasStatus 400

-- | These errors are usually caused by a server issue.
_ServerException :: AsError a => Getting (First ServiceError) a ServiceError
_ServerException =
  _MatchServiceError batch "ServerException"
    . hasStatus 500
