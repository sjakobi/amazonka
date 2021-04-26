{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _NotFoundException,
    _OutOfCapacityException,
    _TaggingFailedException,
    _FleetCapacityExceededException,
    _UnauthorizedException,
    _InternalServiceException,
    _InvalidGameSessionStatusException,
    _InvalidRequestException,
    _TerminalRoutingStrategyException,
    _GameSessionFullException,
    _InvalidFleetStatusException,
    _LimitExceededException,
    _ConflictException,
    _IdempotentParameterMismatchException,
    _UnsupportedRegionException,

    -- * AcceptanceType
    AcceptanceType (..),

    -- * BackfillMode
    BackfillMode (..),

    -- * BalancingStrategy
    BalancingStrategy (..),

    -- * BuildStatus
    BuildStatus (..),

    -- * CertificateType
    CertificateType (..),

    -- * ComparisonOperatorType
    ComparisonOperatorType (..),

    -- * EC2InstanceType
    EC2InstanceType (..),

    -- * EventCode
    EventCode (..),

    -- * FleetAction
    FleetAction (..),

    -- * FleetStatus
    FleetStatus (..),

    -- * FleetType
    FleetType (..),

    -- * FlexMatchMode
    FlexMatchMode (..),

    -- * GameServerClaimStatus
    GameServerClaimStatus (..),

    -- * GameServerGroupAction
    GameServerGroupAction (..),

    -- * GameServerGroupDeleteOption
    GameServerGroupDeleteOption (..),

    -- * GameServerGroupInstanceType
    GameServerGroupInstanceType (..),

    -- * GameServerGroupStatus
    GameServerGroupStatus (..),

    -- * GameServerHealthCheck
    GameServerHealthCheck (..),

    -- * GameServerInstanceStatus
    GameServerInstanceStatus (..),

    -- * GameServerProtectionPolicy
    GameServerProtectionPolicy (..),

    -- * GameServerUtilizationStatus
    GameServerUtilizationStatus (..),

    -- * GameSessionPlacementState
    GameSessionPlacementState (..),

    -- * GameSessionStatus
    GameSessionStatus (..),

    -- * GameSessionStatusReason
    GameSessionStatusReason (..),

    -- * InstanceStatus
    InstanceStatus (..),

    -- * IpProtocol
    IpProtocol (..),

    -- * MatchmakingConfigurationStatus
    MatchmakingConfigurationStatus (..),

    -- * MetricName
    MetricName (..),

    -- * OperatingSystem
    OperatingSystem (..),

    -- * PlayerSessionCreationPolicy
    PlayerSessionCreationPolicy (..),

    -- * PlayerSessionStatus
    PlayerSessionStatus (..),

    -- * PolicyType
    PolicyType (..),

    -- * ProtectionPolicy
    ProtectionPolicy (..),

    -- * RoutingStrategyType
    RoutingStrategyType (..),

    -- * ScalingAdjustmentType
    ScalingAdjustmentType (..),

    -- * ScalingStatusType
    ScalingStatusType (..),

    -- * SortOrder
    SortOrder (..),

    -- * Alias
    Alias (..),
    newAlias,

    -- * AttributeValue
    AttributeValue (..),
    newAttributeValue,

    -- * AwsCredentials
    AwsCredentials (..),
    newAwsCredentials,

    -- * Build
    Build (..),
    newBuild,

    -- * CertificateConfiguration
    CertificateConfiguration (..),
    newCertificateConfiguration,

    -- * DesiredPlayerSession
    DesiredPlayerSession (..),
    newDesiredPlayerSession,

    -- * EC2InstanceCounts
    EC2InstanceCounts (..),
    newEC2InstanceCounts,

    -- * EC2InstanceLimit
    EC2InstanceLimit (..),
    newEC2InstanceLimit,

    -- * Event
    Event (..),
    newEvent,

    -- * FleetAttributes
    FleetAttributes (..),
    newFleetAttributes,

    -- * FleetCapacity
    FleetCapacity (..),
    newFleetCapacity,

    -- * FleetUtilization
    FleetUtilization (..),
    newFleetUtilization,

    -- * GameProperty
    GameProperty (..),
    newGameProperty,

    -- * GameServer
    GameServer (..),
    newGameServer,

    -- * GameServerGroup
    GameServerGroup (..),
    newGameServerGroup,

    -- * GameServerGroupAutoScalingPolicy
    GameServerGroupAutoScalingPolicy (..),
    newGameServerGroupAutoScalingPolicy,

    -- * GameServerInstance
    GameServerInstance (..),
    newGameServerInstance,

    -- * GameSession
    GameSession (..),
    newGameSession,

    -- * GameSessionConnectionInfo
    GameSessionConnectionInfo (..),
    newGameSessionConnectionInfo,

    -- * GameSessionDetail
    GameSessionDetail (..),
    newGameSessionDetail,

    -- * GameSessionPlacement
    GameSessionPlacement (..),
    newGameSessionPlacement,

    -- * GameSessionQueue
    GameSessionQueue (..),
    newGameSessionQueue,

    -- * GameSessionQueueDestination
    GameSessionQueueDestination (..),
    newGameSessionQueueDestination,

    -- * Instance
    Instance (..),
    newInstance,

    -- * InstanceAccess
    InstanceAccess (..),
    newInstanceAccess,

    -- * InstanceCredentials
    InstanceCredentials (..),
    newInstanceCredentials,

    -- * InstanceDefinition
    InstanceDefinition (..),
    newInstanceDefinition,

    -- * IpPermission
    IpPermission (..),
    newIpPermission,

    -- * LaunchTemplateSpecification
    LaunchTemplateSpecification (..),
    newLaunchTemplateSpecification,

    -- * MatchedPlayerSession
    MatchedPlayerSession (..),
    newMatchedPlayerSession,

    -- * MatchmakingConfiguration
    MatchmakingConfiguration (..),
    newMatchmakingConfiguration,

    -- * MatchmakingRuleSet
    MatchmakingRuleSet (..),
    newMatchmakingRuleSet,

    -- * MatchmakingTicket
    MatchmakingTicket (..),
    newMatchmakingTicket,

    -- * PlacedPlayerSession
    PlacedPlayerSession (..),
    newPlacedPlayerSession,

    -- * Player
    Player (..),
    newPlayer,

    -- * PlayerLatency
    PlayerLatency (..),
    newPlayerLatency,

    -- * PlayerLatencyPolicy
    PlayerLatencyPolicy (..),
    newPlayerLatencyPolicy,

    -- * PlayerSession
    PlayerSession (..),
    newPlayerSession,

    -- * ResourceCreationLimitPolicy
    ResourceCreationLimitPolicy (..),
    newResourceCreationLimitPolicy,

    -- * RoutingStrategy
    RoutingStrategy (..),
    newRoutingStrategy,

    -- * RuntimeConfiguration
    RuntimeConfiguration (..),
    newRuntimeConfiguration,

    -- * S3Location
    S3Location (..),
    newS3Location,

    -- * ScalingPolicy
    ScalingPolicy (..),
    newScalingPolicy,

    -- * Script
    Script (..),
    newScript,

    -- * ServerProcess
    ServerProcess (..),
    newServerProcess,

    -- * Tag
    Tag (..),
    newTag,

    -- * TargetConfiguration
    TargetConfiguration (..),
    newTargetConfiguration,

    -- * TargetTrackingConfiguration
    TargetTrackingConfiguration (..),
    newTargetTrackingConfiguration,

    -- * VpcPeeringAuthorization
    VpcPeeringAuthorization (..),
    newVpcPeeringAuthorization,

    -- * VpcPeeringConnection
    VpcPeeringConnection (..),
    newVpcPeeringConnection,

    -- * VpcPeeringConnectionStatus
    VpcPeeringConnectionStatus (..),
    newVpcPeeringConnectionStatus,
  )
where

import Network.AWS.GameLift.Types.AcceptanceType
import Network.AWS.GameLift.Types.Alias
import Network.AWS.GameLift.Types.AttributeValue
import Network.AWS.GameLift.Types.AwsCredentials
import Network.AWS.GameLift.Types.BackfillMode
import Network.AWS.GameLift.Types.BalancingStrategy
import Network.AWS.GameLift.Types.Build
import Network.AWS.GameLift.Types.BuildStatus
import Network.AWS.GameLift.Types.CertificateConfiguration
import Network.AWS.GameLift.Types.CertificateType
import Network.AWS.GameLift.Types.ComparisonOperatorType
import Network.AWS.GameLift.Types.DesiredPlayerSession
import Network.AWS.GameLift.Types.EC2InstanceCounts
import Network.AWS.GameLift.Types.EC2InstanceLimit
import Network.AWS.GameLift.Types.EC2InstanceType
import Network.AWS.GameLift.Types.Event
import Network.AWS.GameLift.Types.EventCode
import Network.AWS.GameLift.Types.FleetAction
import Network.AWS.GameLift.Types.FleetAttributes
import Network.AWS.GameLift.Types.FleetCapacity
import Network.AWS.GameLift.Types.FleetStatus
import Network.AWS.GameLift.Types.FleetType
import Network.AWS.GameLift.Types.FleetUtilization
import Network.AWS.GameLift.Types.FlexMatchMode
import Network.AWS.GameLift.Types.GameProperty
import Network.AWS.GameLift.Types.GameServer
import Network.AWS.GameLift.Types.GameServerClaimStatus
import Network.AWS.GameLift.Types.GameServerGroup
import Network.AWS.GameLift.Types.GameServerGroupAction
import Network.AWS.GameLift.Types.GameServerGroupAutoScalingPolicy
import Network.AWS.GameLift.Types.GameServerGroupDeleteOption
import Network.AWS.GameLift.Types.GameServerGroupInstanceType
import Network.AWS.GameLift.Types.GameServerGroupStatus
import Network.AWS.GameLift.Types.GameServerHealthCheck
import Network.AWS.GameLift.Types.GameServerInstance
import Network.AWS.GameLift.Types.GameServerInstanceStatus
import Network.AWS.GameLift.Types.GameServerProtectionPolicy
import Network.AWS.GameLift.Types.GameServerUtilizationStatus
import Network.AWS.GameLift.Types.GameSession
import Network.AWS.GameLift.Types.GameSessionConnectionInfo
import Network.AWS.GameLift.Types.GameSessionDetail
import Network.AWS.GameLift.Types.GameSessionPlacement
import Network.AWS.GameLift.Types.GameSessionPlacementState
import Network.AWS.GameLift.Types.GameSessionQueue
import Network.AWS.GameLift.Types.GameSessionQueueDestination
import Network.AWS.GameLift.Types.GameSessionStatus
import Network.AWS.GameLift.Types.GameSessionStatusReason
import Network.AWS.GameLift.Types.Instance
import Network.AWS.GameLift.Types.InstanceAccess
import Network.AWS.GameLift.Types.InstanceCredentials
import Network.AWS.GameLift.Types.InstanceDefinition
import Network.AWS.GameLift.Types.InstanceStatus
import Network.AWS.GameLift.Types.IpPermission
import Network.AWS.GameLift.Types.IpProtocol
import Network.AWS.GameLift.Types.LaunchTemplateSpecification
import Network.AWS.GameLift.Types.MatchedPlayerSession
import Network.AWS.GameLift.Types.MatchmakingConfiguration
import Network.AWS.GameLift.Types.MatchmakingConfigurationStatus
import Network.AWS.GameLift.Types.MatchmakingRuleSet
import Network.AWS.GameLift.Types.MatchmakingTicket
import Network.AWS.GameLift.Types.MetricName
import Network.AWS.GameLift.Types.OperatingSystem
import Network.AWS.GameLift.Types.PlacedPlayerSession
import Network.AWS.GameLift.Types.Player
import Network.AWS.GameLift.Types.PlayerLatency
import Network.AWS.GameLift.Types.PlayerLatencyPolicy
import Network.AWS.GameLift.Types.PlayerSession
import Network.AWS.GameLift.Types.PlayerSessionCreationPolicy
import Network.AWS.GameLift.Types.PlayerSessionStatus
import Network.AWS.GameLift.Types.PolicyType
import Network.AWS.GameLift.Types.ProtectionPolicy
import Network.AWS.GameLift.Types.ResourceCreationLimitPolicy
import Network.AWS.GameLift.Types.RoutingStrategy
import Network.AWS.GameLift.Types.RoutingStrategyType
import Network.AWS.GameLift.Types.RuntimeConfiguration
import Network.AWS.GameLift.Types.S3Location
import Network.AWS.GameLift.Types.ScalingAdjustmentType
import Network.AWS.GameLift.Types.ScalingPolicy
import Network.AWS.GameLift.Types.ScalingStatusType
import Network.AWS.GameLift.Types.Script
import Network.AWS.GameLift.Types.ServerProcess
import Network.AWS.GameLift.Types.SortOrder
import Network.AWS.GameLift.Types.Tag
import Network.AWS.GameLift.Types.TargetConfiguration
import Network.AWS.GameLift.Types.TargetTrackingConfiguration
import Network.AWS.GameLift.Types.VpcPeeringAuthorization
import Network.AWS.GameLift.Types.VpcPeeringConnection
import Network.AWS.GameLift.Types.VpcPeeringConnectionStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-10-01@ of the Amazon GameLift SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "GameLift",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "gamelift",
      Prelude._svcVersion = "2015-10-01",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "GameLift",
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

-- | A service resource associated with the request could not be found.
-- Clients should not retry such requests.
_NotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotFoundException =
  Prelude._MatchServiceError
    defaultService
    "NotFoundException"

-- | The specified game server group has no available game servers to fulfill
-- a @ClaimGameServer@ request. Clients can retry such requests immediately
-- or after a waiting period.
_OutOfCapacityException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OutOfCapacityException =
  Prelude._MatchServiceError
    defaultService
    "OutOfCapacityException"

-- | The requested tagging operation did not succeed. This may be due to
-- invalid tag format or the maximum tag limit may have been exceeded.
-- Resolve the issue before retrying.
_TaggingFailedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TaggingFailedException =
  Prelude._MatchServiceError
    defaultService
    "TaggingFailedException"

-- | The specified fleet has no available instances to fulfill a
-- @CreateGameSession@ request. Clients can retry such requests immediately
-- or after a waiting period.
_FleetCapacityExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_FleetCapacityExceededException =
  Prelude._MatchServiceError
    defaultService
    "FleetCapacityExceededException"

-- | The client failed authentication. Clients should not retry such
-- requests.
_UnauthorizedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnauthorizedException =
  Prelude._MatchServiceError
    defaultService
    "UnauthorizedException"

-- | The service encountered an unrecoverable internal failure while
-- processing the request. Clients can retry such requests immediately or
-- after a waiting period.
_InternalServiceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServiceException =
  Prelude._MatchServiceError
    defaultService
    "InternalServiceException"

-- | The requested operation would cause a conflict with the current state of
-- a resource associated with the request and\/or the game instance.
-- Resolve the conflict before retrying.
_InvalidGameSessionStatusException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidGameSessionStatusException =
  Prelude._MatchServiceError
    defaultService
    "InvalidGameSessionStatusException"

-- | One or more parameter values in the request are invalid. Correct the
-- invalid parameter values before retrying.
_InvalidRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRequestException =
  Prelude._MatchServiceError
    defaultService
    "InvalidRequestException"

-- | The service is unable to resolve the routing for a particular alias
-- because it has a terminal RoutingStrategy associated with it. The
-- message returned in this exception is the message defined in the routing
-- strategy itself. Such requests should only be retried if the routing
-- strategy for the specified alias is modified.
_TerminalRoutingStrategyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TerminalRoutingStrategyException =
  Prelude._MatchServiceError
    defaultService
    "TerminalRoutingStrategyException"

-- | The game instance is currently full and cannot allow the requested
-- player(s) to join. Clients can retry such requests immediately or after
-- a waiting period.
_GameSessionFullException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_GameSessionFullException =
  Prelude._MatchServiceError
    defaultService
    "GameSessionFullException"

-- | The requested operation would cause a conflict with the current state of
-- a resource associated with the request and\/or the fleet. Resolve the
-- conflict before retrying.
_InvalidFleetStatusException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidFleetStatusException =
  Prelude._MatchServiceError
    defaultService
    "InvalidFleetStatusException"

-- | The requested operation would cause the resource to exceed the allowed
-- service limit. Resolve the issue before retrying.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | The requested operation would cause a conflict with the current state of
-- a service resource associated with the request. Resolve the conflict
-- before retrying this request.
_ConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictException =
  Prelude._MatchServiceError
    defaultService
    "ConflictException"

-- | A game session with this custom ID string already exists in this fleet.
-- Resolve this conflict before retrying this request.
_IdempotentParameterMismatchException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IdempotentParameterMismatchException =
  Prelude._MatchServiceError
    defaultService
    "IdempotentParameterMismatchException"

-- | The requested operation is not supported in the Region specified.
_UnsupportedRegionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedRegionException =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedRegionException"
