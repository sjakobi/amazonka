{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

    -- * Errors
    _ClientException,
    _ServerException,

    -- * ArrayJobDependency
    ArrayJobDependency (..),

    -- * AssignPublicIp
    AssignPublicIp (..),

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
    newArrayProperties,

    -- * ArrayPropertiesDetail
    ArrayPropertiesDetail (..),
    newArrayPropertiesDetail,

    -- * ArrayPropertiesSummary
    ArrayPropertiesSummary (..),
    newArrayPropertiesSummary,

    -- * AttemptContainerDetail
    AttemptContainerDetail (..),
    newAttemptContainerDetail,

    -- * AttemptDetail
    AttemptDetail (..),
    newAttemptDetail,

    -- * ComputeEnvironmentDetail
    ComputeEnvironmentDetail (..),
    newComputeEnvironmentDetail,

    -- * ComputeEnvironmentOrder
    ComputeEnvironmentOrder (..),
    newComputeEnvironmentOrder,

    -- * ComputeResource
    ComputeResource (..),
    newComputeResource,

    -- * ComputeResourceUpdate
    ComputeResourceUpdate (..),
    newComputeResourceUpdate,

    -- * ContainerDetail
    ContainerDetail (..),
    newContainerDetail,

    -- * ContainerOverrides
    ContainerOverrides (..),
    newContainerOverrides,

    -- * ContainerProperties
    ContainerProperties (..),
    newContainerProperties,

    -- * ContainerSummary
    ContainerSummary (..),
    newContainerSummary,

    -- * Device
    Device (..),
    newDevice,

    -- * Ec2Configuration
    Ec2Configuration (..),
    newEc2Configuration,

    -- * EvaluateOnExit
    EvaluateOnExit (..),
    newEvaluateOnExit,

    -- * FargatePlatformConfiguration
    FargatePlatformConfiguration (..),
    newFargatePlatformConfiguration,

    -- * Host
    Host (..),
    newHost,

    -- * JobDefinition
    JobDefinition (..),
    newJobDefinition,

    -- * JobDependency
    JobDependency (..),
    newJobDependency,

    -- * JobDetail
    JobDetail (..),
    newJobDetail,

    -- * JobQueueDetail
    JobQueueDetail (..),
    newJobQueueDetail,

    -- * JobSummary
    JobSummary (..),
    newJobSummary,

    -- * JobTimeout
    JobTimeout (..),
    newJobTimeout,

    -- * KeyValuePair
    KeyValuePair (..),
    newKeyValuePair,

    -- * LaunchTemplateSpecification
    LaunchTemplateSpecification (..),
    newLaunchTemplateSpecification,

    -- * LinuxParameters
    LinuxParameters (..),
    newLinuxParameters,

    -- * LogConfiguration
    LogConfiguration (..),
    newLogConfiguration,

    -- * MountPoint
    MountPoint (..),
    newMountPoint,

    -- * NetworkConfiguration
    NetworkConfiguration (..),
    newNetworkConfiguration,

    -- * NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,

    -- * NodeDetails
    NodeDetails (..),
    newNodeDetails,

    -- * NodeOverrides
    NodeOverrides (..),
    newNodeOverrides,

    -- * NodeProperties
    NodeProperties (..),
    newNodeProperties,

    -- * NodePropertiesSummary
    NodePropertiesSummary (..),
    newNodePropertiesSummary,

    -- * NodePropertyOverride
    NodePropertyOverride (..),
    newNodePropertyOverride,

    -- * NodeRangeProperty
    NodeRangeProperty (..),
    newNodeRangeProperty,

    -- * ResourceRequirement
    ResourceRequirement (..),
    newResourceRequirement,

    -- * RetryStrategy
    RetryStrategy (..),
    newRetryStrategy,

    -- * Secret
    Secret (..),
    newSecret,

    -- * Tmpfs
    Tmpfs (..),
    newTmpfs,

    -- * Ulimit
    Ulimit (..),
    newUlimit,

    -- * Volume
    Volume (..),
    newVolume,
  )
where

import Network.AWS.Batch.Types.ArrayJobDependency
import Network.AWS.Batch.Types.ArrayProperties
import Network.AWS.Batch.Types.ArrayPropertiesDetail
import Network.AWS.Batch.Types.ArrayPropertiesSummary
import Network.AWS.Batch.Types.AssignPublicIp
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
import Network.AWS.Batch.Types.Ec2Configuration
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2016-08-10@ of the Amazon Batch SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Batch",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "batch",
      Prelude._svcVersion = "2016-08-10",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseJSONError "Batch",
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

-- | These errors are usually caused by a client action, such as using an
-- action or resource on behalf of a user that doesn\'t have permissions to
-- use the action or resource, or specifying an identifier that\'s not
-- valid.
_ClientException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ClientException =
  Prelude._MatchServiceError
    defaultService
    "ClientException"
    Prelude.. Prelude.hasStatus 400

-- | These errors are usually caused by a server issue.
_ServerException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServerException =
  Prelude._MatchServiceError
    defaultService
    "ServerException"
    Prelude.. Prelude.hasStatus 500
