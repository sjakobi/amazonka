{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.GameLift
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.GameLift where

import Data.Proxy
import Network.AWS.GameLift
import Test.AWS.Fixture
import Test.AWS.GameLift.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDescribeGameSessionQueues $
--             describeGameSessionQueues
--
--         , requestDeleteBuild $
--             deleteBuild
--
--         , requestDescribeVPCPeeringConnections $
--             describeVPCPeeringConnections
--
--         , requestDescribeFleetPortSettings $
--             describeFleetPortSettings
--
--         , requestDescribeInstances $
--             describeInstances
--
--         , requestDeleteAlias $
--             deleteAlias
--
--         , requestDescribeFleetCapacity $
--             describeFleetCapacity
--
--         , requestListBuilds $
--             listBuilds
--
--         , requestUpdateBuild $
--             updateBuild
--
--         , requestUpdateAlias $
--             updateAlias
--
--         , requestDescribeFleetAttributes $
--             describeFleetAttributes
--
--         , requestPutScalingPolicy $
--             putScalingPolicy
--
--         , requestDescribeFleetEvents $
--             describeFleetEvents
--
--         , requestDescribeFleetUtilization $
--             describeFleetUtilization
--
--         , requestClaimGameServer $
--             claimGameServer
--
--         , requestUpdateGameSession $
--             updateGameSession
--
--         , requestDescribeGameServerGroup $
--             describeGameServerGroup
--
--         , requestDescribeMatchmaking $
--             describeMatchmaking
--
--         , requestGetGameSessionLogURL $
--             getGameSessionLogURL
--
--         , requestCreatePlayerSession $
--             createPlayerSession
--
--         , requestDescribeRuntimeConfiguration $
--             describeRuntimeConfiguration
--
--         , requestDescribeScalingPolicies $
--             describeScalingPolicies
--
--         , requestSuspendGameServerGroup $
--             suspendGameServerGroup
--
--         , requestDescribeMatchmakingRuleSets $
--             describeMatchmakingRuleSets
--
--         , requestValidateMatchmakingRuleSet $
--             validateMatchmakingRuleSet
--
--         , requestUpdateFleetPortSettings $
--             updateFleetPortSettings
--
--         , requestDescribeBuild $
--             describeBuild
--
--         , requestAcceptMatch $
--             acceptMatch
--
--         , requestDeregisterGameServer $
--             deregisterGameServer
--
--         , requestUntagResource $
--             untagResource
--
--         , requestUpdateFleetCapacity $
--             updateFleetCapacity
--
--         , requestDescribeAlias $
--             describeAlias
--
--         , requestDeleteVPCPeeringConnection $
--             deleteVPCPeeringConnection
--
--         , requestUpdateFleetAttributes $
--             updateFleetAttributes
--
--         , requestUpdateGameSessionQueue $
--             updateGameSessionQueue
--
--         , requestTagResource $
--             tagResource
--
--         , requestDeleteGameSessionQueue $
--             deleteGameSessionQueue
--
--         , requestUpdateMatchmakingConfiguration $
--             updateMatchmakingConfiguration
--
--         , requestDeleteMatchmakingConfiguration $
--             deleteMatchmakingConfiguration
--
--         , requestDescribeMatchmakingConfigurations $
--             describeMatchmakingConfigurations
--
--         , requestCreateFleet $
--             createFleet
--
--         , requestRegisterGameServer $
--             registerGameServer
--
--         , requestRequestUploadCredentials $
--             requestUploadCredentials
--
--         , requestResolveAlias $
--             resolveAlias
--
--         , requestStartMatchBackfill $
--             startMatchBackfill
--
--         , requestDeleteFleet $
--             deleteFleet
--
--         , requestDescribeGameSessionDetails $
--             describeGameSessionDetails
--
--         , requestListFleets $
--             listFleets
--
--         , requestStopMatchmaking $
--             stopMatchmaking
--
--         , requestDescribeGameServerInstances $
--             describeGameServerInstances
--
--         , requestCreateGameSession $
--             createGameSession
--
--         , requestCreateMatchmakingRuleSet $
--             createMatchmakingRuleSet
--
--         , requestStartMatchmaking $
--             startMatchmaking
--
--         , requestDescribeGameSessionPlacement $
--             describeGameSessionPlacement
--
--         , requestDeleteScalingPolicy $
--             deleteScalingPolicy
--
--         , requestStopGameSessionPlacement $
--             stopGameSessionPlacement
--
--         , requestStartGameSessionPlacement $
--             startGameSessionPlacement
--
--         , requestDeleteMatchmakingRuleSet $
--             deleteMatchmakingRuleSet
--
--         , requestDescribeGameServer $
--             describeGameServer
--
--         , requestDeleteScript $
--             deleteScript
--
--         , requestListScripts $
--             listScripts
--
--         , requestDescribeGameSessions $
--             describeGameSessions
--
--         , requestUpdateScript $
--             updateScript
--
--         , requestDescribeEC2InstanceLimits $
--             describeEC2InstanceLimits
--
--         , requestStopFleetActions $
--             stopFleetActions
--
--         , requestGetInstanceAccess $
--             getInstanceAccess
--
--         , requestStartFleetActions $
--             startFleetActions
--
--         , requestDescribePlayerSessions $
--             describePlayerSessions
--
--         , requestCreateScript $
--             createScript
--
--         , requestCreateMatchmakingConfiguration $
--             createMatchmakingConfiguration
--
--         , requestCreateVPCPeeringAuthorization $
--             createVPCPeeringAuthorization
--
--         , requestCreateGameServerGroup $
--             createGameServerGroup
--
--         , requestUpdateGameServerGroup $
--             updateGameServerGroup
--
--         , requestSearchGameSessions $
--             searchGameSessions
--
--         , requestDeleteGameServerGroup $
--             deleteGameServerGroup
--
--         , requestListGameServerGroups $
--             listGameServerGroups
--
--         , requestUpdateRuntimeConfiguration $
--             updateRuntimeConfiguration
--
--         , requestCreateGameSessionQueue $
--             createGameSessionQueue
--
--         , requestResumeGameServerGroup $
--             resumeGameServerGroup
--
--         , requestDeleteVPCPeeringAuthorization $
--             deleteVPCPeeringAuthorization
--
--         , requestCreateVPCPeeringConnection $
--             createVPCPeeringConnection
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDescribeScript $
--             describeScript
--
--         , requestCreateAlias $
--             createAlias
--
--         , requestCreatePlayerSessions $
--             createPlayerSessions
--
--         , requestUpdateGameServer $
--             updateGameServer
--
--         , requestDescribeVPCPeeringAuthorizations $
--             describeVPCPeeringAuthorizations
--
--         , requestListGameServers $
--             listGameServers
--
--         , requestCreateBuild $
--             createBuild
--
--         , requestListAliases $
--             listAliases
--
--           ]

--     , testGroup "response"
--         [ responseDescribeGameSessionQueues $
--             describeGameSessionQueuesResponse
--
--         , responseDeleteBuild $
--             deleteBuildResponse
--
--         , responseDescribeVPCPeeringConnections $
--             describeVPCPeeringConnectionsResponse
--
--         , responseDescribeFleetPortSettings $
--             describeFleetPortSettingsResponse
--
--         , responseDescribeInstances $
--             describeInstancesResponse
--
--         , responseDeleteAlias $
--             deleteAliasResponse
--
--         , responseDescribeFleetCapacity $
--             describeFleetCapacityResponse
--
--         , responseListBuilds $
--             listBuildsResponse
--
--         , responseUpdateBuild $
--             updateBuildResponse
--
--         , responseUpdateAlias $
--             updateAliasResponse
--
--         , responseDescribeFleetAttributes $
--             describeFleetAttributesResponse
--
--         , responsePutScalingPolicy $
--             putScalingPolicyResponse
--
--         , responseDescribeFleetEvents $
--             describeFleetEventsResponse
--
--         , responseDescribeFleetUtilization $
--             describeFleetUtilizationResponse
--
--         , responseClaimGameServer $
--             claimGameServerResponse
--
--         , responseUpdateGameSession $
--             updateGameSessionResponse
--
--         , responseDescribeGameServerGroup $
--             describeGameServerGroupResponse
--
--         , responseDescribeMatchmaking $
--             describeMatchmakingResponse
--
--         , responseGetGameSessionLogURL $
--             getGameSessionLogURLResponse
--
--         , responseCreatePlayerSession $
--             createPlayerSessionResponse
--
--         , responseDescribeRuntimeConfiguration $
--             describeRuntimeConfigurationResponse
--
--         , responseDescribeScalingPolicies $
--             describeScalingPoliciesResponse
--
--         , responseSuspendGameServerGroup $
--             suspendGameServerGroupResponse
--
--         , responseDescribeMatchmakingRuleSets $
--             describeMatchmakingRuleSetsResponse
--
--         , responseValidateMatchmakingRuleSet $
--             validateMatchmakingRuleSetResponse
--
--         , responseUpdateFleetPortSettings $
--             updateFleetPortSettingsResponse
--
--         , responseDescribeBuild $
--             describeBuildResponse
--
--         , responseAcceptMatch $
--             acceptMatchResponse
--
--         , responseDeregisterGameServer $
--             deregisterGameServerResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseUpdateFleetCapacity $
--             updateFleetCapacityResponse
--
--         , responseDescribeAlias $
--             describeAliasResponse
--
--         , responseDeleteVPCPeeringConnection $
--             deleteVPCPeeringConnectionResponse
--
--         , responseUpdateFleetAttributes $
--             updateFleetAttributesResponse
--
--         , responseUpdateGameSessionQueue $
--             updateGameSessionQueueResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseDeleteGameSessionQueue $
--             deleteGameSessionQueueResponse
--
--         , responseUpdateMatchmakingConfiguration $
--             updateMatchmakingConfigurationResponse
--
--         , responseDeleteMatchmakingConfiguration $
--             deleteMatchmakingConfigurationResponse
--
--         , responseDescribeMatchmakingConfigurations $
--             describeMatchmakingConfigurationsResponse
--
--         , responseCreateFleet $
--             createFleetResponse
--
--         , responseRegisterGameServer $
--             registerGameServerResponse
--
--         , responseRequestUploadCredentials $
--             requestUploadCredentialsResponse
--
--         , responseResolveAlias $
--             resolveAliasResponse
--
--         , responseStartMatchBackfill $
--             startMatchBackfillResponse
--
--         , responseDeleteFleet $
--             deleteFleetResponse
--
--         , responseDescribeGameSessionDetails $
--             describeGameSessionDetailsResponse
--
--         , responseListFleets $
--             listFleetsResponse
--
--         , responseStopMatchmaking $
--             stopMatchmakingResponse
--
--         , responseDescribeGameServerInstances $
--             describeGameServerInstancesResponse
--
--         , responseCreateGameSession $
--             createGameSessionResponse
--
--         , responseCreateMatchmakingRuleSet $
--             createMatchmakingRuleSetResponse
--
--         , responseStartMatchmaking $
--             startMatchmakingResponse
--
--         , responseDescribeGameSessionPlacement $
--             describeGameSessionPlacementResponse
--
--         , responseDeleteScalingPolicy $
--             deleteScalingPolicyResponse
--
--         , responseStopGameSessionPlacement $
--             stopGameSessionPlacementResponse
--
--         , responseStartGameSessionPlacement $
--             startGameSessionPlacementResponse
--
--         , responseDeleteMatchmakingRuleSet $
--             deleteMatchmakingRuleSetResponse
--
--         , responseDescribeGameServer $
--             describeGameServerResponse
--
--         , responseDeleteScript $
--             deleteScriptResponse
--
--         , responseListScripts $
--             listScriptsResponse
--
--         , responseDescribeGameSessions $
--             describeGameSessionsResponse
--
--         , responseUpdateScript $
--             updateScriptResponse
--
--         , responseDescribeEC2InstanceLimits $
--             describeEC2InstanceLimitsResponse
--
--         , responseStopFleetActions $
--             stopFleetActionsResponse
--
--         , responseGetInstanceAccess $
--             getInstanceAccessResponse
--
--         , responseStartFleetActions $
--             startFleetActionsResponse
--
--         , responseDescribePlayerSessions $
--             describePlayerSessionsResponse
--
--         , responseCreateScript $
--             createScriptResponse
--
--         , responseCreateMatchmakingConfiguration $
--             createMatchmakingConfigurationResponse
--
--         , responseCreateVPCPeeringAuthorization $
--             createVPCPeeringAuthorizationResponse
--
--         , responseCreateGameServerGroup $
--             createGameServerGroupResponse
--
--         , responseUpdateGameServerGroup $
--             updateGameServerGroupResponse
--
--         , responseSearchGameSessions $
--             searchGameSessionsResponse
--
--         , responseDeleteGameServerGroup $
--             deleteGameServerGroupResponse
--
--         , responseListGameServerGroups $
--             listGameServerGroupsResponse
--
--         , responseUpdateRuntimeConfiguration $
--             updateRuntimeConfigurationResponse
--
--         , responseCreateGameSessionQueue $
--             createGameSessionQueueResponse
--
--         , responseResumeGameServerGroup $
--             resumeGameServerGroupResponse
--
--         , responseDeleteVPCPeeringAuthorization $
--             deleteVPCPeeringAuthorizationResponse
--
--         , responseCreateVPCPeeringConnection $
--             createVPCPeeringConnectionResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDescribeScript $
--             describeScriptResponse
--
--         , responseCreateAlias $
--             createAliasResponse
--
--         , responseCreatePlayerSessions $
--             createPlayerSessionsResponse
--
--         , responseUpdateGameServer $
--             updateGameServerResponse
--
--         , responseDescribeVPCPeeringAuthorizations $
--             describeVPCPeeringAuthorizationsResponse
--
--         , responseListGameServers $
--             listGameServersResponse
--
--         , responseCreateBuild $
--             createBuildResponse
--
--         , responseListAliases $
--             listAliasesResponse
--
--           ]
--     ]

-- Requests

requestDescribeGameSessionQueues :: DescribeGameSessionQueues -> TestTree
requestDescribeGameSessionQueues =
  req
    "DescribeGameSessionQueues"
    "fixture/DescribeGameSessionQueues.yaml"

requestDeleteBuild :: DeleteBuild -> TestTree
requestDeleteBuild =
  req
    "DeleteBuild"
    "fixture/DeleteBuild.yaml"

requestDescribeVPCPeeringConnections :: DescribeVPCPeeringConnections -> TestTree
requestDescribeVPCPeeringConnections =
  req
    "DescribeVPCPeeringConnections"
    "fixture/DescribeVPCPeeringConnections.yaml"

requestDescribeFleetPortSettings :: DescribeFleetPortSettings -> TestTree
requestDescribeFleetPortSettings =
  req
    "DescribeFleetPortSettings"
    "fixture/DescribeFleetPortSettings.yaml"

requestDescribeInstances :: DescribeInstances -> TestTree
requestDescribeInstances =
  req
    "DescribeInstances"
    "fixture/DescribeInstances.yaml"

requestDeleteAlias :: DeleteAlias -> TestTree
requestDeleteAlias =
  req
    "DeleteAlias"
    "fixture/DeleteAlias.yaml"

requestDescribeFleetCapacity :: DescribeFleetCapacity -> TestTree
requestDescribeFleetCapacity =
  req
    "DescribeFleetCapacity"
    "fixture/DescribeFleetCapacity.yaml"

requestListBuilds :: ListBuilds -> TestTree
requestListBuilds =
  req
    "ListBuilds"
    "fixture/ListBuilds.yaml"

requestUpdateBuild :: UpdateBuild -> TestTree
requestUpdateBuild =
  req
    "UpdateBuild"
    "fixture/UpdateBuild.yaml"

requestUpdateAlias :: UpdateAlias -> TestTree
requestUpdateAlias =
  req
    "UpdateAlias"
    "fixture/UpdateAlias.yaml"

requestDescribeFleetAttributes :: DescribeFleetAttributes -> TestTree
requestDescribeFleetAttributes =
  req
    "DescribeFleetAttributes"
    "fixture/DescribeFleetAttributes.yaml"

requestPutScalingPolicy :: PutScalingPolicy -> TestTree
requestPutScalingPolicy =
  req
    "PutScalingPolicy"
    "fixture/PutScalingPolicy.yaml"

requestDescribeFleetEvents :: DescribeFleetEvents -> TestTree
requestDescribeFleetEvents =
  req
    "DescribeFleetEvents"
    "fixture/DescribeFleetEvents.yaml"

requestDescribeFleetUtilization :: DescribeFleetUtilization -> TestTree
requestDescribeFleetUtilization =
  req
    "DescribeFleetUtilization"
    "fixture/DescribeFleetUtilization.yaml"

requestClaimGameServer :: ClaimGameServer -> TestTree
requestClaimGameServer =
  req
    "ClaimGameServer"
    "fixture/ClaimGameServer.yaml"

requestUpdateGameSession :: UpdateGameSession -> TestTree
requestUpdateGameSession =
  req
    "UpdateGameSession"
    "fixture/UpdateGameSession.yaml"

requestDescribeGameServerGroup :: DescribeGameServerGroup -> TestTree
requestDescribeGameServerGroup =
  req
    "DescribeGameServerGroup"
    "fixture/DescribeGameServerGroup.yaml"

requestDescribeMatchmaking :: DescribeMatchmaking -> TestTree
requestDescribeMatchmaking =
  req
    "DescribeMatchmaking"
    "fixture/DescribeMatchmaking.yaml"

requestGetGameSessionLogURL :: GetGameSessionLogURL -> TestTree
requestGetGameSessionLogURL =
  req
    "GetGameSessionLogURL"
    "fixture/GetGameSessionLogURL.yaml"

requestCreatePlayerSession :: CreatePlayerSession -> TestTree
requestCreatePlayerSession =
  req
    "CreatePlayerSession"
    "fixture/CreatePlayerSession.yaml"

requestDescribeRuntimeConfiguration :: DescribeRuntimeConfiguration -> TestTree
requestDescribeRuntimeConfiguration =
  req
    "DescribeRuntimeConfiguration"
    "fixture/DescribeRuntimeConfiguration.yaml"

requestDescribeScalingPolicies :: DescribeScalingPolicies -> TestTree
requestDescribeScalingPolicies =
  req
    "DescribeScalingPolicies"
    "fixture/DescribeScalingPolicies.yaml"

requestSuspendGameServerGroup :: SuspendGameServerGroup -> TestTree
requestSuspendGameServerGroup =
  req
    "SuspendGameServerGroup"
    "fixture/SuspendGameServerGroup.yaml"

requestDescribeMatchmakingRuleSets :: DescribeMatchmakingRuleSets -> TestTree
requestDescribeMatchmakingRuleSets =
  req
    "DescribeMatchmakingRuleSets"
    "fixture/DescribeMatchmakingRuleSets.yaml"

requestValidateMatchmakingRuleSet :: ValidateMatchmakingRuleSet -> TestTree
requestValidateMatchmakingRuleSet =
  req
    "ValidateMatchmakingRuleSet"
    "fixture/ValidateMatchmakingRuleSet.yaml"

requestUpdateFleetPortSettings :: UpdateFleetPortSettings -> TestTree
requestUpdateFleetPortSettings =
  req
    "UpdateFleetPortSettings"
    "fixture/UpdateFleetPortSettings.yaml"

requestDescribeBuild :: DescribeBuild -> TestTree
requestDescribeBuild =
  req
    "DescribeBuild"
    "fixture/DescribeBuild.yaml"

requestAcceptMatch :: AcceptMatch -> TestTree
requestAcceptMatch =
  req
    "AcceptMatch"
    "fixture/AcceptMatch.yaml"

requestDeregisterGameServer :: DeregisterGameServer -> TestTree
requestDeregisterGameServer =
  req
    "DeregisterGameServer"
    "fixture/DeregisterGameServer.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestUpdateFleetCapacity :: UpdateFleetCapacity -> TestTree
requestUpdateFleetCapacity =
  req
    "UpdateFleetCapacity"
    "fixture/UpdateFleetCapacity.yaml"

requestDescribeAlias :: DescribeAlias -> TestTree
requestDescribeAlias =
  req
    "DescribeAlias"
    "fixture/DescribeAlias.yaml"

requestDeleteVPCPeeringConnection :: DeleteVPCPeeringConnection -> TestTree
requestDeleteVPCPeeringConnection =
  req
    "DeleteVPCPeeringConnection"
    "fixture/DeleteVPCPeeringConnection.yaml"

requestUpdateFleetAttributes :: UpdateFleetAttributes -> TestTree
requestUpdateFleetAttributes =
  req
    "UpdateFleetAttributes"
    "fixture/UpdateFleetAttributes.yaml"

requestUpdateGameSessionQueue :: UpdateGameSessionQueue -> TestTree
requestUpdateGameSessionQueue =
  req
    "UpdateGameSessionQueue"
    "fixture/UpdateGameSessionQueue.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestDeleteGameSessionQueue :: DeleteGameSessionQueue -> TestTree
requestDeleteGameSessionQueue =
  req
    "DeleteGameSessionQueue"
    "fixture/DeleteGameSessionQueue.yaml"

requestUpdateMatchmakingConfiguration :: UpdateMatchmakingConfiguration -> TestTree
requestUpdateMatchmakingConfiguration =
  req
    "UpdateMatchmakingConfiguration"
    "fixture/UpdateMatchmakingConfiguration.yaml"

requestDeleteMatchmakingConfiguration :: DeleteMatchmakingConfiguration -> TestTree
requestDeleteMatchmakingConfiguration =
  req
    "DeleteMatchmakingConfiguration"
    "fixture/DeleteMatchmakingConfiguration.yaml"

requestDescribeMatchmakingConfigurations :: DescribeMatchmakingConfigurations -> TestTree
requestDescribeMatchmakingConfigurations =
  req
    "DescribeMatchmakingConfigurations"
    "fixture/DescribeMatchmakingConfigurations.yaml"

requestCreateFleet :: CreateFleet -> TestTree
requestCreateFleet =
  req
    "CreateFleet"
    "fixture/CreateFleet.yaml"

requestRegisterGameServer :: RegisterGameServer -> TestTree
requestRegisterGameServer =
  req
    "RegisterGameServer"
    "fixture/RegisterGameServer.yaml"

requestRequestUploadCredentials :: RequestUploadCredentials -> TestTree
requestRequestUploadCredentials =
  req
    "RequestUploadCredentials"
    "fixture/RequestUploadCredentials.yaml"

requestResolveAlias :: ResolveAlias -> TestTree
requestResolveAlias =
  req
    "ResolveAlias"
    "fixture/ResolveAlias.yaml"

requestStartMatchBackfill :: StartMatchBackfill -> TestTree
requestStartMatchBackfill =
  req
    "StartMatchBackfill"
    "fixture/StartMatchBackfill.yaml"

requestDeleteFleet :: DeleteFleet -> TestTree
requestDeleteFleet =
  req
    "DeleteFleet"
    "fixture/DeleteFleet.yaml"

requestDescribeGameSessionDetails :: DescribeGameSessionDetails -> TestTree
requestDescribeGameSessionDetails =
  req
    "DescribeGameSessionDetails"
    "fixture/DescribeGameSessionDetails.yaml"

requestListFleets :: ListFleets -> TestTree
requestListFleets =
  req
    "ListFleets"
    "fixture/ListFleets.yaml"

requestStopMatchmaking :: StopMatchmaking -> TestTree
requestStopMatchmaking =
  req
    "StopMatchmaking"
    "fixture/StopMatchmaking.yaml"

requestDescribeGameServerInstances :: DescribeGameServerInstances -> TestTree
requestDescribeGameServerInstances =
  req
    "DescribeGameServerInstances"
    "fixture/DescribeGameServerInstances.yaml"

requestCreateGameSession :: CreateGameSession -> TestTree
requestCreateGameSession =
  req
    "CreateGameSession"
    "fixture/CreateGameSession.yaml"

requestCreateMatchmakingRuleSet :: CreateMatchmakingRuleSet -> TestTree
requestCreateMatchmakingRuleSet =
  req
    "CreateMatchmakingRuleSet"
    "fixture/CreateMatchmakingRuleSet.yaml"

requestStartMatchmaking :: StartMatchmaking -> TestTree
requestStartMatchmaking =
  req
    "StartMatchmaking"
    "fixture/StartMatchmaking.yaml"

requestDescribeGameSessionPlacement :: DescribeGameSessionPlacement -> TestTree
requestDescribeGameSessionPlacement =
  req
    "DescribeGameSessionPlacement"
    "fixture/DescribeGameSessionPlacement.yaml"

requestDeleteScalingPolicy :: DeleteScalingPolicy -> TestTree
requestDeleteScalingPolicy =
  req
    "DeleteScalingPolicy"
    "fixture/DeleteScalingPolicy.yaml"

requestStopGameSessionPlacement :: StopGameSessionPlacement -> TestTree
requestStopGameSessionPlacement =
  req
    "StopGameSessionPlacement"
    "fixture/StopGameSessionPlacement.yaml"

requestStartGameSessionPlacement :: StartGameSessionPlacement -> TestTree
requestStartGameSessionPlacement =
  req
    "StartGameSessionPlacement"
    "fixture/StartGameSessionPlacement.yaml"

requestDeleteMatchmakingRuleSet :: DeleteMatchmakingRuleSet -> TestTree
requestDeleteMatchmakingRuleSet =
  req
    "DeleteMatchmakingRuleSet"
    "fixture/DeleteMatchmakingRuleSet.yaml"

requestDescribeGameServer :: DescribeGameServer -> TestTree
requestDescribeGameServer =
  req
    "DescribeGameServer"
    "fixture/DescribeGameServer.yaml"

requestDeleteScript :: DeleteScript -> TestTree
requestDeleteScript =
  req
    "DeleteScript"
    "fixture/DeleteScript.yaml"

requestListScripts :: ListScripts -> TestTree
requestListScripts =
  req
    "ListScripts"
    "fixture/ListScripts.yaml"

requestDescribeGameSessions :: DescribeGameSessions -> TestTree
requestDescribeGameSessions =
  req
    "DescribeGameSessions"
    "fixture/DescribeGameSessions.yaml"

requestUpdateScript :: UpdateScript -> TestTree
requestUpdateScript =
  req
    "UpdateScript"
    "fixture/UpdateScript.yaml"

requestDescribeEC2InstanceLimits :: DescribeEC2InstanceLimits -> TestTree
requestDescribeEC2InstanceLimits =
  req
    "DescribeEC2InstanceLimits"
    "fixture/DescribeEC2InstanceLimits.yaml"

requestStopFleetActions :: StopFleetActions -> TestTree
requestStopFleetActions =
  req
    "StopFleetActions"
    "fixture/StopFleetActions.yaml"

requestGetInstanceAccess :: GetInstanceAccess -> TestTree
requestGetInstanceAccess =
  req
    "GetInstanceAccess"
    "fixture/GetInstanceAccess.yaml"

requestStartFleetActions :: StartFleetActions -> TestTree
requestStartFleetActions =
  req
    "StartFleetActions"
    "fixture/StartFleetActions.yaml"

requestDescribePlayerSessions :: DescribePlayerSessions -> TestTree
requestDescribePlayerSessions =
  req
    "DescribePlayerSessions"
    "fixture/DescribePlayerSessions.yaml"

requestCreateScript :: CreateScript -> TestTree
requestCreateScript =
  req
    "CreateScript"
    "fixture/CreateScript.yaml"

requestCreateMatchmakingConfiguration :: CreateMatchmakingConfiguration -> TestTree
requestCreateMatchmakingConfiguration =
  req
    "CreateMatchmakingConfiguration"
    "fixture/CreateMatchmakingConfiguration.yaml"

requestCreateVPCPeeringAuthorization :: CreateVPCPeeringAuthorization -> TestTree
requestCreateVPCPeeringAuthorization =
  req
    "CreateVPCPeeringAuthorization"
    "fixture/CreateVPCPeeringAuthorization.yaml"

requestCreateGameServerGroup :: CreateGameServerGroup -> TestTree
requestCreateGameServerGroup =
  req
    "CreateGameServerGroup"
    "fixture/CreateGameServerGroup.yaml"

requestUpdateGameServerGroup :: UpdateGameServerGroup -> TestTree
requestUpdateGameServerGroup =
  req
    "UpdateGameServerGroup"
    "fixture/UpdateGameServerGroup.yaml"

requestSearchGameSessions :: SearchGameSessions -> TestTree
requestSearchGameSessions =
  req
    "SearchGameSessions"
    "fixture/SearchGameSessions.yaml"

requestDeleteGameServerGroup :: DeleteGameServerGroup -> TestTree
requestDeleteGameServerGroup =
  req
    "DeleteGameServerGroup"
    "fixture/DeleteGameServerGroup.yaml"

requestListGameServerGroups :: ListGameServerGroups -> TestTree
requestListGameServerGroups =
  req
    "ListGameServerGroups"
    "fixture/ListGameServerGroups.yaml"

requestUpdateRuntimeConfiguration :: UpdateRuntimeConfiguration -> TestTree
requestUpdateRuntimeConfiguration =
  req
    "UpdateRuntimeConfiguration"
    "fixture/UpdateRuntimeConfiguration.yaml"

requestCreateGameSessionQueue :: CreateGameSessionQueue -> TestTree
requestCreateGameSessionQueue =
  req
    "CreateGameSessionQueue"
    "fixture/CreateGameSessionQueue.yaml"

requestResumeGameServerGroup :: ResumeGameServerGroup -> TestTree
requestResumeGameServerGroup =
  req
    "ResumeGameServerGroup"
    "fixture/ResumeGameServerGroup.yaml"

requestDeleteVPCPeeringAuthorization :: DeleteVPCPeeringAuthorization -> TestTree
requestDeleteVPCPeeringAuthorization =
  req
    "DeleteVPCPeeringAuthorization"
    "fixture/DeleteVPCPeeringAuthorization.yaml"

requestCreateVPCPeeringConnection :: CreateVPCPeeringConnection -> TestTree
requestCreateVPCPeeringConnection =
  req
    "CreateVPCPeeringConnection"
    "fixture/CreateVPCPeeringConnection.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDescribeScript :: DescribeScript -> TestTree
requestDescribeScript =
  req
    "DescribeScript"
    "fixture/DescribeScript.yaml"

requestCreateAlias :: CreateAlias -> TestTree
requestCreateAlias =
  req
    "CreateAlias"
    "fixture/CreateAlias.yaml"

requestCreatePlayerSessions :: CreatePlayerSessions -> TestTree
requestCreatePlayerSessions =
  req
    "CreatePlayerSessions"
    "fixture/CreatePlayerSessions.yaml"

requestUpdateGameServer :: UpdateGameServer -> TestTree
requestUpdateGameServer =
  req
    "UpdateGameServer"
    "fixture/UpdateGameServer.yaml"

requestDescribeVPCPeeringAuthorizations :: DescribeVPCPeeringAuthorizations -> TestTree
requestDescribeVPCPeeringAuthorizations =
  req
    "DescribeVPCPeeringAuthorizations"
    "fixture/DescribeVPCPeeringAuthorizations.yaml"

requestListGameServers :: ListGameServers -> TestTree
requestListGameServers =
  req
    "ListGameServers"
    "fixture/ListGameServers.yaml"

requestCreateBuild :: CreateBuild -> TestTree
requestCreateBuild =
  req
    "CreateBuild"
    "fixture/CreateBuild.yaml"

requestListAliases :: ListAliases -> TestTree
requestListAliases =
  req
    "ListAliases"
    "fixture/ListAliases.yaml"

-- Responses

responseDescribeGameSessionQueues :: DescribeGameSessionQueuesResponse -> TestTree
responseDescribeGameSessionQueues =
  res
    "DescribeGameSessionQueuesResponse"
    "fixture/DescribeGameSessionQueuesResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeGameSessionQueues)

responseDeleteBuild :: DeleteBuildResponse -> TestTree
responseDeleteBuild =
  res
    "DeleteBuildResponse"
    "fixture/DeleteBuildResponse.proto"
    gameLift
    (Proxy :: Proxy DeleteBuild)

responseDescribeVPCPeeringConnections :: DescribeVPCPeeringConnectionsResponse -> TestTree
responseDescribeVPCPeeringConnections =
  res
    "DescribeVPCPeeringConnectionsResponse"
    "fixture/DescribeVPCPeeringConnectionsResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeVPCPeeringConnections)

responseDescribeFleetPortSettings :: DescribeFleetPortSettingsResponse -> TestTree
responseDescribeFleetPortSettings =
  res
    "DescribeFleetPortSettingsResponse"
    "fixture/DescribeFleetPortSettingsResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeFleetPortSettings)

responseDescribeInstances :: DescribeInstancesResponse -> TestTree
responseDescribeInstances =
  res
    "DescribeInstancesResponse"
    "fixture/DescribeInstancesResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeInstances)

responseDeleteAlias :: DeleteAliasResponse -> TestTree
responseDeleteAlias =
  res
    "DeleteAliasResponse"
    "fixture/DeleteAliasResponse.proto"
    gameLift
    (Proxy :: Proxy DeleteAlias)

responseDescribeFleetCapacity :: DescribeFleetCapacityResponse -> TestTree
responseDescribeFleetCapacity =
  res
    "DescribeFleetCapacityResponse"
    "fixture/DescribeFleetCapacityResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeFleetCapacity)

responseListBuilds :: ListBuildsResponse -> TestTree
responseListBuilds =
  res
    "ListBuildsResponse"
    "fixture/ListBuildsResponse.proto"
    gameLift
    (Proxy :: Proxy ListBuilds)

responseUpdateBuild :: UpdateBuildResponse -> TestTree
responseUpdateBuild =
  res
    "UpdateBuildResponse"
    "fixture/UpdateBuildResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateBuild)

responseUpdateAlias :: UpdateAliasResponse -> TestTree
responseUpdateAlias =
  res
    "UpdateAliasResponse"
    "fixture/UpdateAliasResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateAlias)

responseDescribeFleetAttributes :: DescribeFleetAttributesResponse -> TestTree
responseDescribeFleetAttributes =
  res
    "DescribeFleetAttributesResponse"
    "fixture/DescribeFleetAttributesResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeFleetAttributes)

responsePutScalingPolicy :: PutScalingPolicyResponse -> TestTree
responsePutScalingPolicy =
  res
    "PutScalingPolicyResponse"
    "fixture/PutScalingPolicyResponse.proto"
    gameLift
    (Proxy :: Proxy PutScalingPolicy)

responseDescribeFleetEvents :: DescribeFleetEventsResponse -> TestTree
responseDescribeFleetEvents =
  res
    "DescribeFleetEventsResponse"
    "fixture/DescribeFleetEventsResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeFleetEvents)

responseDescribeFleetUtilization :: DescribeFleetUtilizationResponse -> TestTree
responseDescribeFleetUtilization =
  res
    "DescribeFleetUtilizationResponse"
    "fixture/DescribeFleetUtilizationResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeFleetUtilization)

responseClaimGameServer :: ClaimGameServerResponse -> TestTree
responseClaimGameServer =
  res
    "ClaimGameServerResponse"
    "fixture/ClaimGameServerResponse.proto"
    gameLift
    (Proxy :: Proxy ClaimGameServer)

responseUpdateGameSession :: UpdateGameSessionResponse -> TestTree
responseUpdateGameSession =
  res
    "UpdateGameSessionResponse"
    "fixture/UpdateGameSessionResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateGameSession)

responseDescribeGameServerGroup :: DescribeGameServerGroupResponse -> TestTree
responseDescribeGameServerGroup =
  res
    "DescribeGameServerGroupResponse"
    "fixture/DescribeGameServerGroupResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeGameServerGroup)

responseDescribeMatchmaking :: DescribeMatchmakingResponse -> TestTree
responseDescribeMatchmaking =
  res
    "DescribeMatchmakingResponse"
    "fixture/DescribeMatchmakingResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeMatchmaking)

responseGetGameSessionLogURL :: GetGameSessionLogURLResponse -> TestTree
responseGetGameSessionLogURL =
  res
    "GetGameSessionLogURLResponse"
    "fixture/GetGameSessionLogURLResponse.proto"
    gameLift
    (Proxy :: Proxy GetGameSessionLogURL)

responseCreatePlayerSession :: CreatePlayerSessionResponse -> TestTree
responseCreatePlayerSession =
  res
    "CreatePlayerSessionResponse"
    "fixture/CreatePlayerSessionResponse.proto"
    gameLift
    (Proxy :: Proxy CreatePlayerSession)

responseDescribeRuntimeConfiguration :: DescribeRuntimeConfigurationResponse -> TestTree
responseDescribeRuntimeConfiguration =
  res
    "DescribeRuntimeConfigurationResponse"
    "fixture/DescribeRuntimeConfigurationResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeRuntimeConfiguration)

responseDescribeScalingPolicies :: DescribeScalingPoliciesResponse -> TestTree
responseDescribeScalingPolicies =
  res
    "DescribeScalingPoliciesResponse"
    "fixture/DescribeScalingPoliciesResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeScalingPolicies)

responseSuspendGameServerGroup :: SuspendGameServerGroupResponse -> TestTree
responseSuspendGameServerGroup =
  res
    "SuspendGameServerGroupResponse"
    "fixture/SuspendGameServerGroupResponse.proto"
    gameLift
    (Proxy :: Proxy SuspendGameServerGroup)

responseDescribeMatchmakingRuleSets :: DescribeMatchmakingRuleSetsResponse -> TestTree
responseDescribeMatchmakingRuleSets =
  res
    "DescribeMatchmakingRuleSetsResponse"
    "fixture/DescribeMatchmakingRuleSetsResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeMatchmakingRuleSets)

responseValidateMatchmakingRuleSet :: ValidateMatchmakingRuleSetResponse -> TestTree
responseValidateMatchmakingRuleSet =
  res
    "ValidateMatchmakingRuleSetResponse"
    "fixture/ValidateMatchmakingRuleSetResponse.proto"
    gameLift
    (Proxy :: Proxy ValidateMatchmakingRuleSet)

responseUpdateFleetPortSettings :: UpdateFleetPortSettingsResponse -> TestTree
responseUpdateFleetPortSettings =
  res
    "UpdateFleetPortSettingsResponse"
    "fixture/UpdateFleetPortSettingsResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateFleetPortSettings)

responseDescribeBuild :: DescribeBuildResponse -> TestTree
responseDescribeBuild =
  res
    "DescribeBuildResponse"
    "fixture/DescribeBuildResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeBuild)

responseAcceptMatch :: AcceptMatchResponse -> TestTree
responseAcceptMatch =
  res
    "AcceptMatchResponse"
    "fixture/AcceptMatchResponse.proto"
    gameLift
    (Proxy :: Proxy AcceptMatch)

responseDeregisterGameServer :: DeregisterGameServerResponse -> TestTree
responseDeregisterGameServer =
  res
    "DeregisterGameServerResponse"
    "fixture/DeregisterGameServerResponse.proto"
    gameLift
    (Proxy :: Proxy DeregisterGameServer)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    gameLift
    (Proxy :: Proxy UntagResource)

responseUpdateFleetCapacity :: UpdateFleetCapacityResponse -> TestTree
responseUpdateFleetCapacity =
  res
    "UpdateFleetCapacityResponse"
    "fixture/UpdateFleetCapacityResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateFleetCapacity)

responseDescribeAlias :: DescribeAliasResponse -> TestTree
responseDescribeAlias =
  res
    "DescribeAliasResponse"
    "fixture/DescribeAliasResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeAlias)

responseDeleteVPCPeeringConnection :: DeleteVPCPeeringConnectionResponse -> TestTree
responseDeleteVPCPeeringConnection =
  res
    "DeleteVPCPeeringConnectionResponse"
    "fixture/DeleteVPCPeeringConnectionResponse.proto"
    gameLift
    (Proxy :: Proxy DeleteVPCPeeringConnection)

responseUpdateFleetAttributes :: UpdateFleetAttributesResponse -> TestTree
responseUpdateFleetAttributes =
  res
    "UpdateFleetAttributesResponse"
    "fixture/UpdateFleetAttributesResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateFleetAttributes)

responseUpdateGameSessionQueue :: UpdateGameSessionQueueResponse -> TestTree
responseUpdateGameSessionQueue =
  res
    "UpdateGameSessionQueueResponse"
    "fixture/UpdateGameSessionQueueResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateGameSessionQueue)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    gameLift
    (Proxy :: Proxy TagResource)

responseDeleteGameSessionQueue :: DeleteGameSessionQueueResponse -> TestTree
responseDeleteGameSessionQueue =
  res
    "DeleteGameSessionQueueResponse"
    "fixture/DeleteGameSessionQueueResponse.proto"
    gameLift
    (Proxy :: Proxy DeleteGameSessionQueue)

responseUpdateMatchmakingConfiguration :: UpdateMatchmakingConfigurationResponse -> TestTree
responseUpdateMatchmakingConfiguration =
  res
    "UpdateMatchmakingConfigurationResponse"
    "fixture/UpdateMatchmakingConfigurationResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateMatchmakingConfiguration)

responseDeleteMatchmakingConfiguration :: DeleteMatchmakingConfigurationResponse -> TestTree
responseDeleteMatchmakingConfiguration =
  res
    "DeleteMatchmakingConfigurationResponse"
    "fixture/DeleteMatchmakingConfigurationResponse.proto"
    gameLift
    (Proxy :: Proxy DeleteMatchmakingConfiguration)

responseDescribeMatchmakingConfigurations :: DescribeMatchmakingConfigurationsResponse -> TestTree
responseDescribeMatchmakingConfigurations =
  res
    "DescribeMatchmakingConfigurationsResponse"
    "fixture/DescribeMatchmakingConfigurationsResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeMatchmakingConfigurations)

responseCreateFleet :: CreateFleetResponse -> TestTree
responseCreateFleet =
  res
    "CreateFleetResponse"
    "fixture/CreateFleetResponse.proto"
    gameLift
    (Proxy :: Proxy CreateFleet)

responseRegisterGameServer :: RegisterGameServerResponse -> TestTree
responseRegisterGameServer =
  res
    "RegisterGameServerResponse"
    "fixture/RegisterGameServerResponse.proto"
    gameLift
    (Proxy :: Proxy RegisterGameServer)

responseRequestUploadCredentials :: RequestUploadCredentialsResponse -> TestTree
responseRequestUploadCredentials =
  res
    "RequestUploadCredentialsResponse"
    "fixture/RequestUploadCredentialsResponse.proto"
    gameLift
    (Proxy :: Proxy RequestUploadCredentials)

responseResolveAlias :: ResolveAliasResponse -> TestTree
responseResolveAlias =
  res
    "ResolveAliasResponse"
    "fixture/ResolveAliasResponse.proto"
    gameLift
    (Proxy :: Proxy ResolveAlias)

responseStartMatchBackfill :: StartMatchBackfillResponse -> TestTree
responseStartMatchBackfill =
  res
    "StartMatchBackfillResponse"
    "fixture/StartMatchBackfillResponse.proto"
    gameLift
    (Proxy :: Proxy StartMatchBackfill)

responseDeleteFleet :: DeleteFleetResponse -> TestTree
responseDeleteFleet =
  res
    "DeleteFleetResponse"
    "fixture/DeleteFleetResponse.proto"
    gameLift
    (Proxy :: Proxy DeleteFleet)

responseDescribeGameSessionDetails :: DescribeGameSessionDetailsResponse -> TestTree
responseDescribeGameSessionDetails =
  res
    "DescribeGameSessionDetailsResponse"
    "fixture/DescribeGameSessionDetailsResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeGameSessionDetails)

responseListFleets :: ListFleetsResponse -> TestTree
responseListFleets =
  res
    "ListFleetsResponse"
    "fixture/ListFleetsResponse.proto"
    gameLift
    (Proxy :: Proxy ListFleets)

responseStopMatchmaking :: StopMatchmakingResponse -> TestTree
responseStopMatchmaking =
  res
    "StopMatchmakingResponse"
    "fixture/StopMatchmakingResponse.proto"
    gameLift
    (Proxy :: Proxy StopMatchmaking)

responseDescribeGameServerInstances :: DescribeGameServerInstancesResponse -> TestTree
responseDescribeGameServerInstances =
  res
    "DescribeGameServerInstancesResponse"
    "fixture/DescribeGameServerInstancesResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeGameServerInstances)

responseCreateGameSession :: CreateGameSessionResponse -> TestTree
responseCreateGameSession =
  res
    "CreateGameSessionResponse"
    "fixture/CreateGameSessionResponse.proto"
    gameLift
    (Proxy :: Proxy CreateGameSession)

responseCreateMatchmakingRuleSet :: CreateMatchmakingRuleSetResponse -> TestTree
responseCreateMatchmakingRuleSet =
  res
    "CreateMatchmakingRuleSetResponse"
    "fixture/CreateMatchmakingRuleSetResponse.proto"
    gameLift
    (Proxy :: Proxy CreateMatchmakingRuleSet)

responseStartMatchmaking :: StartMatchmakingResponse -> TestTree
responseStartMatchmaking =
  res
    "StartMatchmakingResponse"
    "fixture/StartMatchmakingResponse.proto"
    gameLift
    (Proxy :: Proxy StartMatchmaking)

responseDescribeGameSessionPlacement :: DescribeGameSessionPlacementResponse -> TestTree
responseDescribeGameSessionPlacement =
  res
    "DescribeGameSessionPlacementResponse"
    "fixture/DescribeGameSessionPlacementResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeGameSessionPlacement)

responseDeleteScalingPolicy :: DeleteScalingPolicyResponse -> TestTree
responseDeleteScalingPolicy =
  res
    "DeleteScalingPolicyResponse"
    "fixture/DeleteScalingPolicyResponse.proto"
    gameLift
    (Proxy :: Proxy DeleteScalingPolicy)

responseStopGameSessionPlacement :: StopGameSessionPlacementResponse -> TestTree
responseStopGameSessionPlacement =
  res
    "StopGameSessionPlacementResponse"
    "fixture/StopGameSessionPlacementResponse.proto"
    gameLift
    (Proxy :: Proxy StopGameSessionPlacement)

responseStartGameSessionPlacement :: StartGameSessionPlacementResponse -> TestTree
responseStartGameSessionPlacement =
  res
    "StartGameSessionPlacementResponse"
    "fixture/StartGameSessionPlacementResponse.proto"
    gameLift
    (Proxy :: Proxy StartGameSessionPlacement)

responseDeleteMatchmakingRuleSet :: DeleteMatchmakingRuleSetResponse -> TestTree
responseDeleteMatchmakingRuleSet =
  res
    "DeleteMatchmakingRuleSetResponse"
    "fixture/DeleteMatchmakingRuleSetResponse.proto"
    gameLift
    (Proxy :: Proxy DeleteMatchmakingRuleSet)

responseDescribeGameServer :: DescribeGameServerResponse -> TestTree
responseDescribeGameServer =
  res
    "DescribeGameServerResponse"
    "fixture/DescribeGameServerResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeGameServer)

responseDeleteScript :: DeleteScriptResponse -> TestTree
responseDeleteScript =
  res
    "DeleteScriptResponse"
    "fixture/DeleteScriptResponse.proto"
    gameLift
    (Proxy :: Proxy DeleteScript)

responseListScripts :: ListScriptsResponse -> TestTree
responseListScripts =
  res
    "ListScriptsResponse"
    "fixture/ListScriptsResponse.proto"
    gameLift
    (Proxy :: Proxy ListScripts)

responseDescribeGameSessions :: DescribeGameSessionsResponse -> TestTree
responseDescribeGameSessions =
  res
    "DescribeGameSessionsResponse"
    "fixture/DescribeGameSessionsResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeGameSessions)

responseUpdateScript :: UpdateScriptResponse -> TestTree
responseUpdateScript =
  res
    "UpdateScriptResponse"
    "fixture/UpdateScriptResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateScript)

responseDescribeEC2InstanceLimits :: DescribeEC2InstanceLimitsResponse -> TestTree
responseDescribeEC2InstanceLimits =
  res
    "DescribeEC2InstanceLimitsResponse"
    "fixture/DescribeEC2InstanceLimitsResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeEC2InstanceLimits)

responseStopFleetActions :: StopFleetActionsResponse -> TestTree
responseStopFleetActions =
  res
    "StopFleetActionsResponse"
    "fixture/StopFleetActionsResponse.proto"
    gameLift
    (Proxy :: Proxy StopFleetActions)

responseGetInstanceAccess :: GetInstanceAccessResponse -> TestTree
responseGetInstanceAccess =
  res
    "GetInstanceAccessResponse"
    "fixture/GetInstanceAccessResponse.proto"
    gameLift
    (Proxy :: Proxy GetInstanceAccess)

responseStartFleetActions :: StartFleetActionsResponse -> TestTree
responseStartFleetActions =
  res
    "StartFleetActionsResponse"
    "fixture/StartFleetActionsResponse.proto"
    gameLift
    (Proxy :: Proxy StartFleetActions)

responseDescribePlayerSessions :: DescribePlayerSessionsResponse -> TestTree
responseDescribePlayerSessions =
  res
    "DescribePlayerSessionsResponse"
    "fixture/DescribePlayerSessionsResponse.proto"
    gameLift
    (Proxy :: Proxy DescribePlayerSessions)

responseCreateScript :: CreateScriptResponse -> TestTree
responseCreateScript =
  res
    "CreateScriptResponse"
    "fixture/CreateScriptResponse.proto"
    gameLift
    (Proxy :: Proxy CreateScript)

responseCreateMatchmakingConfiguration :: CreateMatchmakingConfigurationResponse -> TestTree
responseCreateMatchmakingConfiguration =
  res
    "CreateMatchmakingConfigurationResponse"
    "fixture/CreateMatchmakingConfigurationResponse.proto"
    gameLift
    (Proxy :: Proxy CreateMatchmakingConfiguration)

responseCreateVPCPeeringAuthorization :: CreateVPCPeeringAuthorizationResponse -> TestTree
responseCreateVPCPeeringAuthorization =
  res
    "CreateVPCPeeringAuthorizationResponse"
    "fixture/CreateVPCPeeringAuthorizationResponse.proto"
    gameLift
    (Proxy :: Proxy CreateVPCPeeringAuthorization)

responseCreateGameServerGroup :: CreateGameServerGroupResponse -> TestTree
responseCreateGameServerGroup =
  res
    "CreateGameServerGroupResponse"
    "fixture/CreateGameServerGroupResponse.proto"
    gameLift
    (Proxy :: Proxy CreateGameServerGroup)

responseUpdateGameServerGroup :: UpdateGameServerGroupResponse -> TestTree
responseUpdateGameServerGroup =
  res
    "UpdateGameServerGroupResponse"
    "fixture/UpdateGameServerGroupResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateGameServerGroup)

responseSearchGameSessions :: SearchGameSessionsResponse -> TestTree
responseSearchGameSessions =
  res
    "SearchGameSessionsResponse"
    "fixture/SearchGameSessionsResponse.proto"
    gameLift
    (Proxy :: Proxy SearchGameSessions)

responseDeleteGameServerGroup :: DeleteGameServerGroupResponse -> TestTree
responseDeleteGameServerGroup =
  res
    "DeleteGameServerGroupResponse"
    "fixture/DeleteGameServerGroupResponse.proto"
    gameLift
    (Proxy :: Proxy DeleteGameServerGroup)

responseListGameServerGroups :: ListGameServerGroupsResponse -> TestTree
responseListGameServerGroups =
  res
    "ListGameServerGroupsResponse"
    "fixture/ListGameServerGroupsResponse.proto"
    gameLift
    (Proxy :: Proxy ListGameServerGroups)

responseUpdateRuntimeConfiguration :: UpdateRuntimeConfigurationResponse -> TestTree
responseUpdateRuntimeConfiguration =
  res
    "UpdateRuntimeConfigurationResponse"
    "fixture/UpdateRuntimeConfigurationResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateRuntimeConfiguration)

responseCreateGameSessionQueue :: CreateGameSessionQueueResponse -> TestTree
responseCreateGameSessionQueue =
  res
    "CreateGameSessionQueueResponse"
    "fixture/CreateGameSessionQueueResponse.proto"
    gameLift
    (Proxy :: Proxy CreateGameSessionQueue)

responseResumeGameServerGroup :: ResumeGameServerGroupResponse -> TestTree
responseResumeGameServerGroup =
  res
    "ResumeGameServerGroupResponse"
    "fixture/ResumeGameServerGroupResponse.proto"
    gameLift
    (Proxy :: Proxy ResumeGameServerGroup)

responseDeleteVPCPeeringAuthorization :: DeleteVPCPeeringAuthorizationResponse -> TestTree
responseDeleteVPCPeeringAuthorization =
  res
    "DeleteVPCPeeringAuthorizationResponse"
    "fixture/DeleteVPCPeeringAuthorizationResponse.proto"
    gameLift
    (Proxy :: Proxy DeleteVPCPeeringAuthorization)

responseCreateVPCPeeringConnection :: CreateVPCPeeringConnectionResponse -> TestTree
responseCreateVPCPeeringConnection =
  res
    "CreateVPCPeeringConnectionResponse"
    "fixture/CreateVPCPeeringConnectionResponse.proto"
    gameLift
    (Proxy :: Proxy CreateVPCPeeringConnection)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    gameLift
    (Proxy :: Proxy ListTagsForResource)

responseDescribeScript :: DescribeScriptResponse -> TestTree
responseDescribeScript =
  res
    "DescribeScriptResponse"
    "fixture/DescribeScriptResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeScript)

responseCreateAlias :: CreateAliasResponse -> TestTree
responseCreateAlias =
  res
    "CreateAliasResponse"
    "fixture/CreateAliasResponse.proto"
    gameLift
    (Proxy :: Proxy CreateAlias)

responseCreatePlayerSessions :: CreatePlayerSessionsResponse -> TestTree
responseCreatePlayerSessions =
  res
    "CreatePlayerSessionsResponse"
    "fixture/CreatePlayerSessionsResponse.proto"
    gameLift
    (Proxy :: Proxy CreatePlayerSessions)

responseUpdateGameServer :: UpdateGameServerResponse -> TestTree
responseUpdateGameServer =
  res
    "UpdateGameServerResponse"
    "fixture/UpdateGameServerResponse.proto"
    gameLift
    (Proxy :: Proxy UpdateGameServer)

responseDescribeVPCPeeringAuthorizations :: DescribeVPCPeeringAuthorizationsResponse -> TestTree
responseDescribeVPCPeeringAuthorizations =
  res
    "DescribeVPCPeeringAuthorizationsResponse"
    "fixture/DescribeVPCPeeringAuthorizationsResponse.proto"
    gameLift
    (Proxy :: Proxy DescribeVPCPeeringAuthorizations)

responseListGameServers :: ListGameServersResponse -> TestTree
responseListGameServers =
  res
    "ListGameServersResponse"
    "fixture/ListGameServersResponse.proto"
    gameLift
    (Proxy :: Proxy ListGameServers)

responseCreateBuild :: CreateBuildResponse -> TestTree
responseCreateBuild =
  res
    "CreateBuildResponse"
    "fixture/CreateBuildResponse.proto"
    gameLift
    (Proxy :: Proxy CreateBuild)

responseListAliases :: ListAliasesResponse -> TestTree
responseListAliases =
  res
    "ListAliasesResponse"
    "fixture/ListAliasesResponse.proto"
    gameLift
    (Proxy :: Proxy ListAliases)
