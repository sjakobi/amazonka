{-# LANGUAGE OverloadedStrings #-}

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
    gameLift,

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

    -- * IPProtocol
    IPProtocol (..),

    -- * InstanceStatus
    InstanceStatus (..),

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

    -- * AWSCredentials
    AWSCredentials (..),
    awsCredentials,
    acSecretAccessKey,
    acAccessKeyId,
    acSessionToken,

    -- * Alias
    Alias (..),
    alias,
    aRoutingStrategy,
    aCreationTime,
    aName,
    aDescription,
    aAliasARN,
    aAliasId,
    aLastUpdatedTime,

    -- * AttributeValue
    AttributeValue (..),
    attributeValue,
    avSL,
    avN,
    avS,
    avSDM,

    -- * Build
    Build (..),
    build,
    bStatus,
    bCreationTime,
    bVersion,
    bName,
    bSizeOnDisk,
    bBuildARN,
    bBuildId,
    bOperatingSystem,

    -- * CertificateConfiguration
    CertificateConfiguration (..),
    certificateConfiguration,
    ccCertificateType,

    -- * DesiredPlayerSession
    DesiredPlayerSession (..),
    desiredPlayerSession,
    dpsPlayerId,
    dpsPlayerData,

    -- * EC2InstanceCounts
    EC2InstanceCounts (..),
    ec2InstanceCounts,
    eicIdLE,
    eicMINIMUM,
    eicPENDING,
    eicACTIVE,
    eicTERMINATING,
    eicMAXIMUM,
    eicDESIRED,

    -- * EC2InstanceLimit
    EC2InstanceLimit (..),
    ec2InstanceLimit,
    eilInstanceLimit,
    eilCurrentInstances,
    eilEC2InstanceType,

    -- * Event
    Event (..),
    event,
    eResourceId,
    eEventCode,
    eEventId,
    eMessage,
    eEventTime,
    ePreSignedLogURL,

    -- * FleetAttributes
    FleetAttributes (..),
    fleetAttributes,
    faStatus,
    faCreationTime,
    faInstanceType,
    faFleetType,
    faFleetARN,
    faFleetId,
    faInstanceRoleARN,
    faCertificateConfiguration,
    faServerLaunchPath,
    faScriptARN,
    faServerLaunchParameters,
    faLogPaths,
    faNewGameSessionProtectionPolicy,
    faName,
    faStoppedActions,
    faTerminationTime,
    faDescription,
    faResourceCreationLimitPolicy,
    faBuildARN,
    faBuildId,
    faOperatingSystem,
    faMetricGroups,
    faScriptId,

    -- * FleetCapacity
    FleetCapacity (..),
    fleetCapacity,
    fcInstanceType,
    fcFleetId,
    fcInstanceCounts,

    -- * FleetUtilization
    FleetUtilization (..),
    fleetUtilization,
    fuActiveGameSessionCount,
    fuCurrentPlayerSessionCount,
    fuMaximumPlayerSessionCount,
    fuFleetId,
    fuActiveServerProcessCount,

    -- * GameProperty
    GameProperty (..),
    gameProperty,
    gpKey,
    gpValue,

    -- * GameServer
    GameServer (..),
    gameServer,
    gsInstanceId,
    gsUtilizationStatus,
    gsClaimStatus,
    gsGameServerData,
    gsLastClaimTime,
    gsRegistrationTime,
    gsGameServerGroupARN,
    gsGameServerId,
    gsGameServerGroupName,
    gsConnectionInfo,
    gsLastHealthCheckTime,

    -- * GameServerGroup
    GameServerGroup (..),
    gameServerGroup,
    gsgStatus,
    gsgCreationTime,
    gsgRoleARN,
    gsgAutoScalingGroupARN,
    gsgInstanceDefinitions,
    gsgGameServerGroupARN,
    gsgSuspendedActions,
    gsgGameServerGroupName,
    gsgBalancingStrategy,
    gsgGameServerProtectionPolicy,
    gsgStatusReason,
    gsgLastUpdatedTime,

    -- * GameServerGroupAutoScalingPolicy
    GameServerGroupAutoScalingPolicy (..),
    gameServerGroupAutoScalingPolicy,
    gsgaspEstimatedInstanceWarmup,
    gsgaspTargetTrackingConfiguration,

    -- * GameServerInstance
    GameServerInstance (..),
    gameServerInstance,
    gsiInstanceId,
    gsiInstanceStatus,
    gsiGameServerGroupARN,
    gsiGameServerGroupName,

    -- * GameSession
    GameSession (..),
    gameSession,
    gsGameProperties,
    gsCurrentPlayerSessionCount,
    gsStatus,
    gsPlayerSessionCreationPolicy,
    gsCreationTime,
    gsCreatorId,
    gsMaximumPlayerSessionCount,
    gsFleetARN,
    gsFleetId,
    gsMatchmakerData,
    gsGameSessionData,
    gsGameSessionId,
    gsIPAddress,
    gsName,
    gsTerminationTime,
    gsPort,
    gsDNSName,
    gsStatusReason,

    -- * GameSessionConnectionInfo
    GameSessionConnectionInfo (..),
    gameSessionConnectionInfo,
    gsciGameSessionARN,
    gsciIPAddress,
    gsciMatchedPlayerSessions,
    gsciPort,
    gsciDNSName,

    -- * GameSessionDetail
    GameSessionDetail (..),
    gameSessionDetail,
    gsdGameSession,
    gsdProtectionPolicy,

    -- * GameSessionPlacement
    GameSessionPlacement (..),
    gameSessionPlacement,
    gspGameProperties,
    gspStatus,
    gspGameSessionQueueName,
    gspMaximumPlayerSessionCount,
    gspMatchmakerData,
    gspGameSessionData,
    gspStartTime,
    gspGameSessionId,
    gspGameSessionARN,
    gspEndTime,
    gspIPAddress,
    gspGameSessionName,
    gspPlacementId,
    gspPlacedPlayerSessions,
    gspPort,
    gspDNSName,
    gspGameSessionRegion,
    gspPlayerLatencies,

    -- * GameSessionQueue
    GameSessionQueue (..),
    gameSessionQueue,
    gsqPlayerLatencyPolicies,
    gsqTimeoutInSeconds,
    gsqDestinations,
    gsqName,
    gsqGameSessionQueueARN,

    -- * GameSessionQueueDestination
    GameSessionQueueDestination (..),
    gameSessionQueueDestination,
    gsqdDestinationARN,

    -- * IPPermission
    IPPermission (..),
    ipPermission,
    ipFromPort,
    ipToPort,
    ipIPRange,
    ipProtocol,

    -- * Instance
    Instance (..),
    instance',
    iStatus,
    iInstanceId,
    iCreationTime,
    iFleetId,
    iIPAddress,
    iDNSName,
    iType,
    iOperatingSystem,

    -- * InstanceAccess
    InstanceAccess (..),
    instanceAccess,
    iaInstanceId,
    iaFleetId,
    iaIPAddress,
    iaOperatingSystem,
    iaCredentials,

    -- * InstanceCredentials
    InstanceCredentials (..),
    instanceCredentials,
    icSecret,
    icUserName,

    -- * InstanceDefinition
    InstanceDefinition (..),
    instanceDefinition,
    idWeightedCapacity,
    idInstanceType,

    -- * LaunchTemplateSpecification
    LaunchTemplateSpecification (..),
    launchTemplateSpecification,
    ltsLaunchTemplateId,
    ltsLaunchTemplateName,
    ltsVersion,

    -- * MatchedPlayerSession
    MatchedPlayerSession (..),
    matchedPlayerSession,
    mpsPlayerId,
    mpsPlayerSessionId,

    -- * MatchmakingConfiguration
    MatchmakingConfiguration (..),
    matchmakingConfiguration,
    mcCustomEventData,
    mcGameProperties,
    mcFlexMatchMode,
    mcBackfillMode,
    mcCreationTime,
    mcAdditionalPlayerCount,
    mcAcceptanceTimeoutSeconds,
    mcGameSessionData,
    mcConfigurationARN,
    mcGameSessionQueueARNs,
    mcName,
    mcNotificationTarget,
    mcRequestTimeoutSeconds,
    mcRuleSetARN,
    mcDescription,
    mcRuleSetName,
    mcAcceptanceRequired,

    -- * MatchmakingRuleSet
    MatchmakingRuleSet (..),
    matchmakingRuleSet,
    mrsCreationTime,
    mrsRuleSetARN,
    mrsRuleSetName,
    mrsRuleSetBody,

    -- * MatchmakingTicket
    MatchmakingTicket (..),
    matchmakingTicket,
    mtStatusMessage,
    mtStatus,
    mtEstimatedWaitTime,
    mtTicketId,
    mtPlayers,
    mtStartTime,
    mtConfigurationARN,
    mtEndTime,
    mtConfigurationName,
    mtGameSessionConnectionInfo,
    mtStatusReason,

    -- * PlacedPlayerSession
    PlacedPlayerSession (..),
    placedPlayerSession,
    ppsPlayerId,
    ppsPlayerSessionId,

    -- * Player
    Player (..),
    player,
    pPlayerAttributes,
    pLatencyInMs,
    pPlayerId,
    pTeam,

    -- * PlayerLatency
    PlayerLatency (..),
    playerLatency,
    plPlayerId,
    plLatencyInMilliseconds,
    plRegionIdentifier,

    -- * PlayerLatencyPolicy
    PlayerLatencyPolicy (..),
    playerLatencyPolicy,
    plpPolicyDurationSeconds,
    plpMaximumIndividualPlayerLatencyMilliseconds,

    -- * PlayerSession
    PlayerSession (..),
    playerSession,
    psStatus,
    psCreationTime,
    psPlayerId,
    psFleetARN,
    psFleetId,
    psPlayerSessionId,
    psGameSessionId,
    psIPAddress,
    psTerminationTime,
    psPort,
    psDNSName,
    psPlayerData,

    -- * ResourceCreationLimitPolicy
    ResourceCreationLimitPolicy (..),
    resourceCreationLimitPolicy,
    rclpPolicyPeriodInMinutes,
    rclpNewGameSessionsPerCreator,

    -- * RoutingStrategy
    RoutingStrategy (..),
    routingStrategy,
    rsFleetId,
    rsMessage,
    rsType,

    -- * RuntimeConfiguration
    RuntimeConfiguration (..),
    runtimeConfiguration,
    rcGameSessionActivationTimeoutSeconds,
    rcServerProcesses,
    rcMaxConcurrentGameSessionActivations,

    -- * S3Location
    S3Location (..),
    s3Location,
    slObjectVersion,
    slKey,
    slRoleARN,
    slBucket,

    -- * ScalingPolicy
    ScalingPolicy (..),
    scalingPolicy,
    spThreshold,
    spStatus,
    spTargetConfiguration,
    spComparisonOperator,
    spFleetId,
    spMetricName,
    spPolicyType,
    spScalingAdjustment,
    spName,
    spEvaluationPeriods,
    spScalingAdjustmentType,

    -- * Script
    Script (..),
    script,
    sCreationTime,
    sScriptARN,
    sVersion,
    sName,
    sStorageLocation,
    sSizeOnDisk,
    sScriptId,

    -- * ServerProcess
    ServerProcess (..),
    serverProcess,
    spParameters,
    spLaunchPath,
    spConcurrentExecutions,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TargetConfiguration
    TargetConfiguration (..),
    targetConfiguration,
    tcTargetValue,

    -- * TargetTrackingConfiguration
    TargetTrackingConfiguration (..),
    targetTrackingConfiguration,
    ttcTargetValue,

    -- * VPCPeeringAuthorization
    VPCPeeringAuthorization (..),
    vpcPeeringAuthorization,
    vpaCreationTime,
    vpaPeerVPCAWSAccountId,
    vpaExpirationTime,
    vpaGameLiftAWSAccountId,
    vpaPeerVPCId,

    -- * VPCPeeringConnection
    VPCPeeringConnection (..),
    vpcPeeringConnection,
    vpcStatus,
    vpcVPCPeeringConnectionId,
    vpcIPV4CidrBlock,
    vpcFleetARN,
    vpcFleetId,
    vpcGameLiftVPCId,
    vpcPeerVPCId,

    -- * VPCPeeringConnectionStatus
    VPCPeeringConnectionStatus (..),
    vpcPeeringConnectionStatus,
    vpcsMessage,
    vpcsCode,
  )
where

import Network.AWS.GameLift.Types.AWSCredentials
import Network.AWS.GameLift.Types.AcceptanceType
import Network.AWS.GameLift.Types.Alias
import Network.AWS.GameLift.Types.AttributeValue
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
import Network.AWS.GameLift.Types.IPPermission
import Network.AWS.GameLift.Types.IPProtocol
import Network.AWS.GameLift.Types.Instance
import Network.AWS.GameLift.Types.InstanceAccess
import Network.AWS.GameLift.Types.InstanceCredentials
import Network.AWS.GameLift.Types.InstanceDefinition
import Network.AWS.GameLift.Types.InstanceStatus
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
import Network.AWS.GameLift.Types.VPCPeeringAuthorization
import Network.AWS.GameLift.Types.VPCPeeringConnection
import Network.AWS.GameLift.Types.VPCPeeringConnectionStatus
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-10-01@ of the Amazon GameLift SDK configuration.
gameLift :: Service
gameLift =
  Service
    { _svcAbbrev = "GameLift",
      _svcSigner = v4,
      _svcPrefix = "gamelift",
      _svcVersion = "2015-10-01",
      _svcEndpoint = defaultEndpoint gameLift,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "GameLift",
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

-- | A service resource associated with the request could not be found. Clients should not retry such requests.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError gameLift "NotFoundException"

-- | The specified game server group has no available game servers to fulfill a @ClaimGameServer@ request. Clients can retry such requests immediately or after a waiting period.
_OutOfCapacityException :: AsError a => Getting (First ServiceError) a ServiceError
_OutOfCapacityException =
  _MatchServiceError
    gameLift
    "OutOfCapacityException"

-- | The requested tagging operation did not succeed. This may be due to invalid tag format or the maximum tag limit may have been exceeded. Resolve the issue before retrying.
_TaggingFailedException :: AsError a => Getting (First ServiceError) a ServiceError
_TaggingFailedException =
  _MatchServiceError
    gameLift
    "TaggingFailedException"

-- | The specified fleet has no available instances to fulfill a @CreateGameSession@ request. Clients can retry such requests immediately or after a waiting period.
_FleetCapacityExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_FleetCapacityExceededException =
  _MatchServiceError
    gameLift
    "FleetCapacityExceededException"

-- | The client failed authentication. Clients should not retry such requests.
_UnauthorizedException :: AsError a => Getting (First ServiceError) a ServiceError
_UnauthorizedException =
  _MatchServiceError gameLift "UnauthorizedException"

-- | The service encountered an unrecoverable internal failure while processing the request. Clients can retry such requests immediately or after a waiting period.
_InternalServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceException =
  _MatchServiceError
    gameLift
    "InternalServiceException"

-- | The requested operation would cause a conflict with the current state of a resource associated with the request and/or the game instance. Resolve the conflict before retrying.
_InvalidGameSessionStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidGameSessionStatusException =
  _MatchServiceError
    gameLift
    "InvalidGameSessionStatusException"

-- | One or more parameter values in the request are invalid. Correct the invalid parameter values before retrying.
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException =
  _MatchServiceError
    gameLift
    "InvalidRequestException"

-- | The service is unable to resolve the routing for a particular alias because it has a terminal 'RoutingStrategy' associated with it. The message returned in this exception is the message defined in the routing strategy itself. Such requests should only be retried if the routing strategy for the specified alias is modified.
_TerminalRoutingStrategyException :: AsError a => Getting (First ServiceError) a ServiceError
_TerminalRoutingStrategyException =
  _MatchServiceError
    gameLift
    "TerminalRoutingStrategyException"

-- | The game instance is currently full and cannot allow the requested player(s) to join. Clients can retry such requests immediately or after a waiting period.
_GameSessionFullException :: AsError a => Getting (First ServiceError) a ServiceError
_GameSessionFullException =
  _MatchServiceError
    gameLift
    "GameSessionFullException"

-- | The requested operation would cause a conflict with the current state of a resource associated with the request and/or the fleet. Resolve the conflict before retrying.
_InvalidFleetStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFleetStatusException =
  _MatchServiceError
    gameLift
    "InvalidFleetStatusException"

-- | The requested operation would cause the resource to exceed the allowed service limit. Resolve the issue before retrying.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    gameLift
    "LimitExceededException"

-- | The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError gameLift "ConflictException"

-- | A game session with this custom ID string already exists in this fleet. Resolve this conflict before retrying this request.
_IdempotentParameterMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_IdempotentParameterMismatchException =
  _MatchServiceError
    gameLift
    "IdempotentParameterMismatchException"

-- | The requested operation is not supported in the Region specified.
_UnsupportedRegionException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedRegionException =
  _MatchServiceError
    gameLift
    "UnsupportedRegionException"
