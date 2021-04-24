{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon GameLift Service__
--
-- GameLift provides solutions for hosting session-based multiplayer game servers in the cloud, including tools for deploying, operating, and scaling game servers. Built on AWS global computing infrastructure, GameLift helps you deliver high-performance, high-reliability, low-cost game servers while dynamically scaling your resource usage to meet player demand.
--
-- __About GameLift solutions__
--
-- Get more information on these GameLift solutions in the <http://docs.aws.amazon.com/gamelift/latest/developerguide/ Amazon GameLift Developer Guide> .
--
--     * Managed GameLift -- GameLift offers a fully managed service to set up and maintain computing machines for hosting, manage game session and player session life cycle, and handle security, storage, and performance tracking. You can use automatic scaling tools to balance hosting costs against meeting player demand., configure your game session management to minimize player latency, or add FlexMatch for matchmaking.
--
--     * Managed GameLift with Realtime Servers – With GameLift Realtime Servers, you can quickly configure and set up game servers for your game. Realtime Servers provides a game server framework with core Amazon GameLift infrastructure already built in.
--
--     * GameLift FleetIQ – Use GameLift FleetIQ as a standalone feature while managing your own EC2 instances and Auto Scaling groups for game hosting. GameLift FleetIQ provides optimizations that make low-cost Spot Instances viable for game hosting.
--
--
--
-- __About this API Reference__
--
-- This reference guide describes the low-level service API for Amazon GameLift. You can find links to language-specific SDK guides and the AWS CLI reference with each operation and data type topic. Useful links:
--
--     * <https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html GameLift API operations listed by tasks>
--
--     * <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-components.html GameLift tools and resources>
module Network.AWS.GameLift
  ( -- * Service Configuration
    gameLift,

    -- * Errors
    -- $errors

    -- ** NotFoundException
    _NotFoundException,

    -- ** OutOfCapacityException
    _OutOfCapacityException,

    -- ** TaggingFailedException
    _TaggingFailedException,

    -- ** FleetCapacityExceededException
    _FleetCapacityExceededException,

    -- ** UnauthorizedException
    _UnauthorizedException,

    -- ** InternalServiceException
    _InternalServiceException,

    -- ** InvalidGameSessionStatusException
    _InvalidGameSessionStatusException,

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** TerminalRoutingStrategyException
    _TerminalRoutingStrategyException,

    -- ** GameSessionFullException
    _GameSessionFullException,

    -- ** InvalidFleetStatusException
    _InvalidFleetStatusException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ConflictException
    _ConflictException,

    -- ** IdempotentParameterMismatchException
    _IdempotentParameterMismatchException,

    -- ** UnsupportedRegionException
    _UnsupportedRegionException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeGameSessionQueues (Paginated)
    module Network.AWS.GameLift.DescribeGameSessionQueues,

    -- ** DeleteBuild
    module Network.AWS.GameLift.DeleteBuild,

    -- ** DescribeVPCPeeringConnections
    module Network.AWS.GameLift.DescribeVPCPeeringConnections,

    -- ** DescribeFleetPortSettings
    module Network.AWS.GameLift.DescribeFleetPortSettings,

    -- ** DescribeInstances (Paginated)
    module Network.AWS.GameLift.DescribeInstances,

    -- ** DeleteAlias
    module Network.AWS.GameLift.DeleteAlias,

    -- ** DescribeFleetCapacity (Paginated)
    module Network.AWS.GameLift.DescribeFleetCapacity,

    -- ** ListBuilds (Paginated)
    module Network.AWS.GameLift.ListBuilds,

    -- ** UpdateBuild
    module Network.AWS.GameLift.UpdateBuild,

    -- ** UpdateAlias
    module Network.AWS.GameLift.UpdateAlias,

    -- ** DescribeFleetAttributes (Paginated)
    module Network.AWS.GameLift.DescribeFleetAttributes,

    -- ** PutScalingPolicy
    module Network.AWS.GameLift.PutScalingPolicy,

    -- ** DescribeFleetEvents (Paginated)
    module Network.AWS.GameLift.DescribeFleetEvents,

    -- ** DescribeFleetUtilization (Paginated)
    module Network.AWS.GameLift.DescribeFleetUtilization,

    -- ** ClaimGameServer
    module Network.AWS.GameLift.ClaimGameServer,

    -- ** UpdateGameSession
    module Network.AWS.GameLift.UpdateGameSession,

    -- ** DescribeGameServerGroup
    module Network.AWS.GameLift.DescribeGameServerGroup,

    -- ** DescribeMatchmaking
    module Network.AWS.GameLift.DescribeMatchmaking,

    -- ** GetGameSessionLogURL
    module Network.AWS.GameLift.GetGameSessionLogURL,

    -- ** CreatePlayerSession
    module Network.AWS.GameLift.CreatePlayerSession,

    -- ** DescribeRuntimeConfiguration
    module Network.AWS.GameLift.DescribeRuntimeConfiguration,

    -- ** DescribeScalingPolicies (Paginated)
    module Network.AWS.GameLift.DescribeScalingPolicies,

    -- ** SuspendGameServerGroup
    module Network.AWS.GameLift.SuspendGameServerGroup,

    -- ** DescribeMatchmakingRuleSets (Paginated)
    module Network.AWS.GameLift.DescribeMatchmakingRuleSets,

    -- ** ValidateMatchmakingRuleSet
    module Network.AWS.GameLift.ValidateMatchmakingRuleSet,

    -- ** UpdateFleetPortSettings
    module Network.AWS.GameLift.UpdateFleetPortSettings,

    -- ** DescribeBuild
    module Network.AWS.GameLift.DescribeBuild,

    -- ** AcceptMatch
    module Network.AWS.GameLift.AcceptMatch,

    -- ** DeregisterGameServer
    module Network.AWS.GameLift.DeregisterGameServer,

    -- ** UntagResource
    module Network.AWS.GameLift.UntagResource,

    -- ** UpdateFleetCapacity
    module Network.AWS.GameLift.UpdateFleetCapacity,

    -- ** DescribeAlias
    module Network.AWS.GameLift.DescribeAlias,

    -- ** DeleteVPCPeeringConnection
    module Network.AWS.GameLift.DeleteVPCPeeringConnection,

    -- ** UpdateFleetAttributes
    module Network.AWS.GameLift.UpdateFleetAttributes,

    -- ** UpdateGameSessionQueue
    module Network.AWS.GameLift.UpdateGameSessionQueue,

    -- ** TagResource
    module Network.AWS.GameLift.TagResource,

    -- ** DeleteGameSessionQueue
    module Network.AWS.GameLift.DeleteGameSessionQueue,

    -- ** UpdateMatchmakingConfiguration
    module Network.AWS.GameLift.UpdateMatchmakingConfiguration,

    -- ** DeleteMatchmakingConfiguration
    module Network.AWS.GameLift.DeleteMatchmakingConfiguration,

    -- ** DescribeMatchmakingConfigurations (Paginated)
    module Network.AWS.GameLift.DescribeMatchmakingConfigurations,

    -- ** CreateFleet
    module Network.AWS.GameLift.CreateFleet,

    -- ** RegisterGameServer
    module Network.AWS.GameLift.RegisterGameServer,

    -- ** RequestUploadCredentials
    module Network.AWS.GameLift.RequestUploadCredentials,

    -- ** ResolveAlias
    module Network.AWS.GameLift.ResolveAlias,

    -- ** StartMatchBackfill
    module Network.AWS.GameLift.StartMatchBackfill,

    -- ** DeleteFleet
    module Network.AWS.GameLift.DeleteFleet,

    -- ** DescribeGameSessionDetails (Paginated)
    module Network.AWS.GameLift.DescribeGameSessionDetails,

    -- ** ListFleets (Paginated)
    module Network.AWS.GameLift.ListFleets,

    -- ** StopMatchmaking
    module Network.AWS.GameLift.StopMatchmaking,

    -- ** DescribeGameServerInstances (Paginated)
    module Network.AWS.GameLift.DescribeGameServerInstances,

    -- ** CreateGameSession
    module Network.AWS.GameLift.CreateGameSession,

    -- ** CreateMatchmakingRuleSet
    module Network.AWS.GameLift.CreateMatchmakingRuleSet,

    -- ** StartMatchmaking
    module Network.AWS.GameLift.StartMatchmaking,

    -- ** DescribeGameSessionPlacement
    module Network.AWS.GameLift.DescribeGameSessionPlacement,

    -- ** DeleteScalingPolicy
    module Network.AWS.GameLift.DeleteScalingPolicy,

    -- ** StopGameSessionPlacement
    module Network.AWS.GameLift.StopGameSessionPlacement,

    -- ** StartGameSessionPlacement
    module Network.AWS.GameLift.StartGameSessionPlacement,

    -- ** DeleteMatchmakingRuleSet
    module Network.AWS.GameLift.DeleteMatchmakingRuleSet,

    -- ** DescribeGameServer
    module Network.AWS.GameLift.DescribeGameServer,

    -- ** DeleteScript
    module Network.AWS.GameLift.DeleteScript,

    -- ** ListScripts (Paginated)
    module Network.AWS.GameLift.ListScripts,

    -- ** DescribeGameSessions (Paginated)
    module Network.AWS.GameLift.DescribeGameSessions,

    -- ** UpdateScript
    module Network.AWS.GameLift.UpdateScript,

    -- ** DescribeEC2InstanceLimits
    module Network.AWS.GameLift.DescribeEC2InstanceLimits,

    -- ** StopFleetActions
    module Network.AWS.GameLift.StopFleetActions,

    -- ** GetInstanceAccess
    module Network.AWS.GameLift.GetInstanceAccess,

    -- ** StartFleetActions
    module Network.AWS.GameLift.StartFleetActions,

    -- ** DescribePlayerSessions (Paginated)
    module Network.AWS.GameLift.DescribePlayerSessions,

    -- ** CreateScript
    module Network.AWS.GameLift.CreateScript,

    -- ** CreateMatchmakingConfiguration
    module Network.AWS.GameLift.CreateMatchmakingConfiguration,

    -- ** CreateVPCPeeringAuthorization
    module Network.AWS.GameLift.CreateVPCPeeringAuthorization,

    -- ** CreateGameServerGroup
    module Network.AWS.GameLift.CreateGameServerGroup,

    -- ** UpdateGameServerGroup
    module Network.AWS.GameLift.UpdateGameServerGroup,

    -- ** SearchGameSessions (Paginated)
    module Network.AWS.GameLift.SearchGameSessions,

    -- ** DeleteGameServerGroup
    module Network.AWS.GameLift.DeleteGameServerGroup,

    -- ** ListGameServerGroups (Paginated)
    module Network.AWS.GameLift.ListGameServerGroups,

    -- ** UpdateRuntimeConfiguration
    module Network.AWS.GameLift.UpdateRuntimeConfiguration,

    -- ** CreateGameSessionQueue
    module Network.AWS.GameLift.CreateGameSessionQueue,

    -- ** ResumeGameServerGroup
    module Network.AWS.GameLift.ResumeGameServerGroup,

    -- ** DeleteVPCPeeringAuthorization
    module Network.AWS.GameLift.DeleteVPCPeeringAuthorization,

    -- ** CreateVPCPeeringConnection
    module Network.AWS.GameLift.CreateVPCPeeringConnection,

    -- ** ListTagsForResource
    module Network.AWS.GameLift.ListTagsForResource,

    -- ** DescribeScript
    module Network.AWS.GameLift.DescribeScript,

    -- ** CreateAlias
    module Network.AWS.GameLift.CreateAlias,

    -- ** CreatePlayerSessions
    module Network.AWS.GameLift.CreatePlayerSessions,

    -- ** UpdateGameServer
    module Network.AWS.GameLift.UpdateGameServer,

    -- ** DescribeVPCPeeringAuthorizations
    module Network.AWS.GameLift.DescribeVPCPeeringAuthorizations,

    -- ** ListGameServers (Paginated)
    module Network.AWS.GameLift.ListGameServers,

    -- ** CreateBuild
    module Network.AWS.GameLift.CreateBuild,

    -- ** ListAliases (Paginated)
    module Network.AWS.GameLift.ListAliases,

    -- * Types

    -- ** AcceptanceType
    AcceptanceType (..),

    -- ** BackfillMode
    BackfillMode (..),

    -- ** BalancingStrategy
    BalancingStrategy (..),

    -- ** BuildStatus
    BuildStatus (..),

    -- ** CertificateType
    CertificateType (..),

    -- ** ComparisonOperatorType
    ComparisonOperatorType (..),

    -- ** EC2InstanceType
    EC2InstanceType (..),

    -- ** EventCode
    EventCode (..),

    -- ** FleetAction
    FleetAction (..),

    -- ** FleetStatus
    FleetStatus (..),

    -- ** FleetType
    FleetType (..),

    -- ** FlexMatchMode
    FlexMatchMode (..),

    -- ** GameServerClaimStatus
    GameServerClaimStatus (..),

    -- ** GameServerGroupAction
    GameServerGroupAction (..),

    -- ** GameServerGroupDeleteOption
    GameServerGroupDeleteOption (..),

    -- ** GameServerGroupInstanceType
    GameServerGroupInstanceType (..),

    -- ** GameServerGroupStatus
    GameServerGroupStatus (..),

    -- ** GameServerHealthCheck
    GameServerHealthCheck (..),

    -- ** GameServerInstanceStatus
    GameServerInstanceStatus (..),

    -- ** GameServerProtectionPolicy
    GameServerProtectionPolicy (..),

    -- ** GameServerUtilizationStatus
    GameServerUtilizationStatus (..),

    -- ** GameSessionPlacementState
    GameSessionPlacementState (..),

    -- ** GameSessionStatus
    GameSessionStatus (..),

    -- ** GameSessionStatusReason
    GameSessionStatusReason (..),

    -- ** IPProtocol
    IPProtocol (..),

    -- ** InstanceStatus
    InstanceStatus (..),

    -- ** MatchmakingConfigurationStatus
    MatchmakingConfigurationStatus (..),

    -- ** MetricName
    MetricName (..),

    -- ** OperatingSystem
    OperatingSystem (..),

    -- ** PlayerSessionCreationPolicy
    PlayerSessionCreationPolicy (..),

    -- ** PlayerSessionStatus
    PlayerSessionStatus (..),

    -- ** PolicyType
    PolicyType (..),

    -- ** ProtectionPolicy
    ProtectionPolicy (..),

    -- ** RoutingStrategyType
    RoutingStrategyType (..),

    -- ** ScalingAdjustmentType
    ScalingAdjustmentType (..),

    -- ** ScalingStatusType
    ScalingStatusType (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** AWSCredentials
    AWSCredentials,
    awsCredentials,
    acSecretAccessKey,
    acAccessKeyId,
    acSessionToken,

    -- ** Alias
    Alias,
    alias,
    aRoutingStrategy,
    aCreationTime,
    aName,
    aDescription,
    aAliasARN,
    aAliasId,
    aLastUpdatedTime,

    -- ** AttributeValue
    AttributeValue,
    attributeValue,
    avSL,
    avN,
    avS,
    avSDM,

    -- ** Build
    Build,
    build,
    bStatus,
    bCreationTime,
    bVersion,
    bName,
    bSizeOnDisk,
    bBuildARN,
    bBuildId,
    bOperatingSystem,

    -- ** CertificateConfiguration
    CertificateConfiguration,
    certificateConfiguration,
    ccCertificateType,

    -- ** DesiredPlayerSession
    DesiredPlayerSession,
    desiredPlayerSession,
    dpsPlayerId,
    dpsPlayerData,

    -- ** EC2InstanceCounts
    EC2InstanceCounts,
    ec2InstanceCounts,
    eicIdLE,
    eicMINIMUM,
    eicPENDING,
    eicACTIVE,
    eicTERMINATING,
    eicMAXIMUM,
    eicDESIRED,

    -- ** EC2InstanceLimit
    EC2InstanceLimit,
    ec2InstanceLimit,
    eilInstanceLimit,
    eilCurrentInstances,
    eilEC2InstanceType,

    -- ** Event
    Event,
    event,
    eResourceId,
    eEventCode,
    eEventId,
    eMessage,
    eEventTime,
    ePreSignedLogURL,

    -- ** FleetAttributes
    FleetAttributes,
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

    -- ** FleetCapacity
    FleetCapacity,
    fleetCapacity,
    fcInstanceType,
    fcFleetId,
    fcInstanceCounts,

    -- ** FleetUtilization
    FleetUtilization,
    fleetUtilization,
    fuActiveGameSessionCount,
    fuCurrentPlayerSessionCount,
    fuMaximumPlayerSessionCount,
    fuFleetId,
    fuActiveServerProcessCount,

    -- ** GameProperty
    GameProperty,
    gameProperty,
    gpKey,
    gpValue,

    -- ** GameServer
    GameServer,
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

    -- ** GameServerGroup
    GameServerGroup,
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

    -- ** GameServerGroupAutoScalingPolicy
    GameServerGroupAutoScalingPolicy,
    gameServerGroupAutoScalingPolicy,
    gsgaspEstimatedInstanceWarmup,
    gsgaspTargetTrackingConfiguration,

    -- ** GameServerInstance
    GameServerInstance,
    gameServerInstance,
    gsiInstanceId,
    gsiInstanceStatus,
    gsiGameServerGroupARN,
    gsiGameServerGroupName,

    -- ** GameSession
    GameSession,
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

    -- ** GameSessionConnectionInfo
    GameSessionConnectionInfo,
    gameSessionConnectionInfo,
    gsciGameSessionARN,
    gsciIPAddress,
    gsciMatchedPlayerSessions,
    gsciPort,
    gsciDNSName,

    -- ** GameSessionDetail
    GameSessionDetail,
    gameSessionDetail,
    gsdGameSession,
    gsdProtectionPolicy,

    -- ** GameSessionPlacement
    GameSessionPlacement,
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

    -- ** GameSessionQueue
    GameSessionQueue,
    gameSessionQueue,
    gsqPlayerLatencyPolicies,
    gsqTimeoutInSeconds,
    gsqDestinations,
    gsqName,
    gsqGameSessionQueueARN,

    -- ** GameSessionQueueDestination
    GameSessionQueueDestination,
    gameSessionQueueDestination,
    gsqdDestinationARN,

    -- ** IPPermission
    IPPermission,
    ipPermission,
    ipFromPort,
    ipToPort,
    ipIPRange,
    ipProtocol,

    -- ** Instance
    Instance,
    instance',
    iStatus,
    iInstanceId,
    iCreationTime,
    iFleetId,
    iIPAddress,
    iDNSName,
    iType,
    iOperatingSystem,

    -- ** InstanceAccess
    InstanceAccess,
    instanceAccess,
    iaInstanceId,
    iaFleetId,
    iaIPAddress,
    iaOperatingSystem,
    iaCredentials,

    -- ** InstanceCredentials
    InstanceCredentials,
    instanceCredentials,
    icSecret,
    icUserName,

    -- ** InstanceDefinition
    InstanceDefinition,
    instanceDefinition,
    idWeightedCapacity,
    idInstanceType,

    -- ** LaunchTemplateSpecification
    LaunchTemplateSpecification,
    launchTemplateSpecification,
    ltsLaunchTemplateId,
    ltsLaunchTemplateName,
    ltsVersion,

    -- ** MatchedPlayerSession
    MatchedPlayerSession,
    matchedPlayerSession,
    mpsPlayerId,
    mpsPlayerSessionId,

    -- ** MatchmakingConfiguration
    MatchmakingConfiguration,
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

    -- ** MatchmakingRuleSet
    MatchmakingRuleSet,
    matchmakingRuleSet,
    mrsCreationTime,
    mrsRuleSetARN,
    mrsRuleSetName,
    mrsRuleSetBody,

    -- ** MatchmakingTicket
    MatchmakingTicket,
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

    -- ** PlacedPlayerSession
    PlacedPlayerSession,
    placedPlayerSession,
    ppsPlayerId,
    ppsPlayerSessionId,

    -- ** Player
    Player,
    player,
    pPlayerAttributes,
    pLatencyInMs,
    pPlayerId,
    pTeam,

    -- ** PlayerLatency
    PlayerLatency,
    playerLatency,
    plPlayerId,
    plLatencyInMilliseconds,
    plRegionIdentifier,

    -- ** PlayerLatencyPolicy
    PlayerLatencyPolicy,
    playerLatencyPolicy,
    plpPolicyDurationSeconds,
    plpMaximumIndividualPlayerLatencyMilliseconds,

    -- ** PlayerSession
    PlayerSession,
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

    -- ** ResourceCreationLimitPolicy
    ResourceCreationLimitPolicy,
    resourceCreationLimitPolicy,
    rclpPolicyPeriodInMinutes,
    rclpNewGameSessionsPerCreator,

    -- ** RoutingStrategy
    RoutingStrategy,
    routingStrategy,
    rsFleetId,
    rsMessage,
    rsType,

    -- ** RuntimeConfiguration
    RuntimeConfiguration,
    runtimeConfiguration,
    rcGameSessionActivationTimeoutSeconds,
    rcServerProcesses,
    rcMaxConcurrentGameSessionActivations,

    -- ** S3Location
    S3Location,
    s3Location,
    slObjectVersion,
    slKey,
    slRoleARN,
    slBucket,

    -- ** ScalingPolicy
    ScalingPolicy,
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

    -- ** Script
    Script,
    script,
    sCreationTime,
    sScriptARN,
    sVersion,
    sName,
    sStorageLocation,
    sSizeOnDisk,
    sScriptId,

    -- ** ServerProcess
    ServerProcess,
    serverProcess,
    spParameters,
    spLaunchPath,
    spConcurrentExecutions,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TargetConfiguration
    TargetConfiguration,
    targetConfiguration,
    tcTargetValue,

    -- ** TargetTrackingConfiguration
    TargetTrackingConfiguration,
    targetTrackingConfiguration,
    ttcTargetValue,

    -- ** VPCPeeringAuthorization
    VPCPeeringAuthorization,
    vpcPeeringAuthorization,
    vpaCreationTime,
    vpaPeerVPCAWSAccountId,
    vpaExpirationTime,
    vpaGameLiftAWSAccountId,
    vpaPeerVPCId,

    -- ** VPCPeeringConnection
    VPCPeeringConnection,
    vpcPeeringConnection,
    vpcStatus,
    vpcVPCPeeringConnectionId,
    vpcIPV4CidrBlock,
    vpcFleetARN,
    vpcFleetId,
    vpcGameLiftVPCId,
    vpcPeerVPCId,

    -- ** VPCPeeringConnectionStatus
    VPCPeeringConnectionStatus,
    vpcPeeringConnectionStatus,
    vpcsMessage,
    vpcsCode,
  )
where

import Network.AWS.GameLift.AcceptMatch
import Network.AWS.GameLift.ClaimGameServer
import Network.AWS.GameLift.CreateAlias
import Network.AWS.GameLift.CreateBuild
import Network.AWS.GameLift.CreateFleet
import Network.AWS.GameLift.CreateGameServerGroup
import Network.AWS.GameLift.CreateGameSession
import Network.AWS.GameLift.CreateGameSessionQueue
import Network.AWS.GameLift.CreateMatchmakingConfiguration
import Network.AWS.GameLift.CreateMatchmakingRuleSet
import Network.AWS.GameLift.CreatePlayerSession
import Network.AWS.GameLift.CreatePlayerSessions
import Network.AWS.GameLift.CreateScript
import Network.AWS.GameLift.CreateVPCPeeringAuthorization
import Network.AWS.GameLift.CreateVPCPeeringConnection
import Network.AWS.GameLift.DeleteAlias
import Network.AWS.GameLift.DeleteBuild
import Network.AWS.GameLift.DeleteFleet
import Network.AWS.GameLift.DeleteGameServerGroup
import Network.AWS.GameLift.DeleteGameSessionQueue
import Network.AWS.GameLift.DeleteMatchmakingConfiguration
import Network.AWS.GameLift.DeleteMatchmakingRuleSet
import Network.AWS.GameLift.DeleteScalingPolicy
import Network.AWS.GameLift.DeleteScript
import Network.AWS.GameLift.DeleteVPCPeeringAuthorization
import Network.AWS.GameLift.DeleteVPCPeeringConnection
import Network.AWS.GameLift.DeregisterGameServer
import Network.AWS.GameLift.DescribeAlias
import Network.AWS.GameLift.DescribeBuild
import Network.AWS.GameLift.DescribeEC2InstanceLimits
import Network.AWS.GameLift.DescribeFleetAttributes
import Network.AWS.GameLift.DescribeFleetCapacity
import Network.AWS.GameLift.DescribeFleetEvents
import Network.AWS.GameLift.DescribeFleetPortSettings
import Network.AWS.GameLift.DescribeFleetUtilization
import Network.AWS.GameLift.DescribeGameServer
import Network.AWS.GameLift.DescribeGameServerGroup
import Network.AWS.GameLift.DescribeGameServerInstances
import Network.AWS.GameLift.DescribeGameSessionDetails
import Network.AWS.GameLift.DescribeGameSessionPlacement
import Network.AWS.GameLift.DescribeGameSessionQueues
import Network.AWS.GameLift.DescribeGameSessions
import Network.AWS.GameLift.DescribeInstances
import Network.AWS.GameLift.DescribeMatchmaking
import Network.AWS.GameLift.DescribeMatchmakingConfigurations
import Network.AWS.GameLift.DescribeMatchmakingRuleSets
import Network.AWS.GameLift.DescribePlayerSessions
import Network.AWS.GameLift.DescribeRuntimeConfiguration
import Network.AWS.GameLift.DescribeScalingPolicies
import Network.AWS.GameLift.DescribeScript
import Network.AWS.GameLift.DescribeVPCPeeringAuthorizations
import Network.AWS.GameLift.DescribeVPCPeeringConnections
import Network.AWS.GameLift.GetGameSessionLogURL
import Network.AWS.GameLift.GetInstanceAccess
import Network.AWS.GameLift.ListAliases
import Network.AWS.GameLift.ListBuilds
import Network.AWS.GameLift.ListFleets
import Network.AWS.GameLift.ListGameServerGroups
import Network.AWS.GameLift.ListGameServers
import Network.AWS.GameLift.ListScripts
import Network.AWS.GameLift.ListTagsForResource
import Network.AWS.GameLift.PutScalingPolicy
import Network.AWS.GameLift.RegisterGameServer
import Network.AWS.GameLift.RequestUploadCredentials
import Network.AWS.GameLift.ResolveAlias
import Network.AWS.GameLift.ResumeGameServerGroup
import Network.AWS.GameLift.SearchGameSessions
import Network.AWS.GameLift.StartFleetActions
import Network.AWS.GameLift.StartGameSessionPlacement
import Network.AWS.GameLift.StartMatchBackfill
import Network.AWS.GameLift.StartMatchmaking
import Network.AWS.GameLift.StopFleetActions
import Network.AWS.GameLift.StopGameSessionPlacement
import Network.AWS.GameLift.StopMatchmaking
import Network.AWS.GameLift.SuspendGameServerGroup
import Network.AWS.GameLift.TagResource
import Network.AWS.GameLift.Types
import Network.AWS.GameLift.UntagResource
import Network.AWS.GameLift.UpdateAlias
import Network.AWS.GameLift.UpdateBuild
import Network.AWS.GameLift.UpdateFleetAttributes
import Network.AWS.GameLift.UpdateFleetCapacity
import Network.AWS.GameLift.UpdateFleetPortSettings
import Network.AWS.GameLift.UpdateGameServer
import Network.AWS.GameLift.UpdateGameServerGroup
import Network.AWS.GameLift.UpdateGameSession
import Network.AWS.GameLift.UpdateGameSessionQueue
import Network.AWS.GameLift.UpdateMatchmakingConfiguration
import Network.AWS.GameLift.UpdateRuntimeConfiguration
import Network.AWS.GameLift.UpdateScript
import Network.AWS.GameLift.ValidateMatchmakingRuleSet
import Network.AWS.GameLift.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'GameLift'.

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
