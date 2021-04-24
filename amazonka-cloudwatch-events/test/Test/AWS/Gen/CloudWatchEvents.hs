{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CloudWatchEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CloudWatchEvents where

import Data.Proxy
import Network.AWS.CloudWatchEvents
import Test.AWS.CloudWatchEvents.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestListPartnerEventSourceAccounts $
--             listPartnerEventSourceAccounts
--
--         , requestDeleteConnection $
--             deleteConnection
--
--         , requestUpdateConnection $
--             updateConnection
--
--         , requestDeleteRule $
--             deleteRule
--
--         , requestDescribeArchive $
--             describeArchive
--
--         , requestDescribeEventSource $
--             describeEventSource
--
--         , requestDescribeAPIdestination $
--             describeAPIdestination
--
--         , requestDeactivateEventSource $
--             deactivateEventSource
--
--         , requestUpdateArchive $
--             updateArchive
--
--         , requestDescribeConnection $
--             describeConnection
--
--         , requestDeleteArchive $
--             deleteArchive
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDescribeRule $
--             describeRule
--
--         , requestListArchives $
--             listArchives
--
--         , requestPutPartnerEvents $
--             putPartnerEvents
--
--         , requestCreateAPIdestination $
--             createAPIdestination
--
--         , requestTagResource $
--             tagResource
--
--         , requestListAPIdestinations $
--             listAPIdestinations
--
--         , requestDescribeEventBus $
--             describeEventBus
--
--         , requestListTargetsByRule $
--             listTargetsByRule
--
--         , requestCreateConnection $
--             createConnection
--
--         , requestListRuleNamesByTarget $
--             listRuleNamesByTarget
--
--         , requestListRules $
--             listRules
--
--         , requestPutRule $
--             putRule
--
--         , requestEnableRule $
--             enableRule
--
--         , requestListConnections $
--             listConnections
--
--         , requestDeauthorizeConnection $
--             deauthorizeConnection
--
--         , requestCreateEventBus $
--             createEventBus
--
--         , requestRemoveTargets $
--             removeTargets
--
--         , requestListEventBuses $
--             listEventBuses
--
--         , requestDeleteEventBus $
--             deleteEventBus
--
--         , requestPutEvents $
--             putEvents
--
--         , requestCreateArchive $
--             createArchive
--
--         , requestListPartnerEventSources $
--             listPartnerEventSources
--
--         , requestDescribeReplay $
--             describeReplay
--
--         , requestDeletePartnerEventSource $
--             deletePartnerEventSource
--
--         , requestCreatePartnerEventSource $
--             createPartnerEventSource
--
--         , requestStartReplay $
--             startReplay
--
--         , requestPutTargets $
--             putTargets
--
--         , requestListEventSources $
--             listEventSources
--
--         , requestActivateEventSource $
--             activateEventSource
--
--         , requestDeleteAPIdestination $
--             deleteAPIdestination
--
--         , requestCancelReplay $
--             cancelReplay
--
--         , requestUpdateAPIdestination $
--             updateAPIdestination
--
--         , requestRemovePermission $
--             removePermission
--
--         , requestTestEventPattern $
--             testEventPattern
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDisableRule $
--             disableRule
--
--         , requestListReplays $
--             listReplays
--
--         , requestDescribePartnerEventSource $
--             describePartnerEventSource
--
--         , requestPutPermission $
--             putPermission
--
--           ]

--     , testGroup "response"
--         [ responseListPartnerEventSourceAccounts $
--             listPartnerEventSourceAccountsResponse
--
--         , responseDeleteConnection $
--             deleteConnectionResponse
--
--         , responseUpdateConnection $
--             updateConnectionResponse
--
--         , responseDeleteRule $
--             deleteRuleResponse
--
--         , responseDescribeArchive $
--             describeArchiveResponse
--
--         , responseDescribeEventSource $
--             describeEventSourceResponse
--
--         , responseDescribeAPIdestination $
--             describeAPIdestinationResponse
--
--         , responseDeactivateEventSource $
--             deactivateEventSourceResponse
--
--         , responseUpdateArchive $
--             updateArchiveResponse
--
--         , responseDescribeConnection $
--             describeConnectionResponse
--
--         , responseDeleteArchive $
--             deleteArchiveResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDescribeRule $
--             describeRuleResponse
--
--         , responseListArchives $
--             listArchivesResponse
--
--         , responsePutPartnerEvents $
--             putPartnerEventsResponse
--
--         , responseCreateAPIdestination $
--             createAPIdestinationResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseListAPIdestinations $
--             listAPIdestinationsResponse
--
--         , responseDescribeEventBus $
--             describeEventBusResponse
--
--         , responseListTargetsByRule $
--             listTargetsByRuleResponse
--
--         , responseCreateConnection $
--             createConnectionResponse
--
--         , responseListRuleNamesByTarget $
--             listRuleNamesByTargetResponse
--
--         , responseListRules $
--             listRulesResponse
--
--         , responsePutRule $
--             putRuleResponse
--
--         , responseEnableRule $
--             enableRuleResponse
--
--         , responseListConnections $
--             listConnectionsResponse
--
--         , responseDeauthorizeConnection $
--             deauthorizeConnectionResponse
--
--         , responseCreateEventBus $
--             createEventBusResponse
--
--         , responseRemoveTargets $
--             removeTargetsResponse
--
--         , responseListEventBuses $
--             listEventBusesResponse
--
--         , responseDeleteEventBus $
--             deleteEventBusResponse
--
--         , responsePutEvents $
--             putEventsResponse
--
--         , responseCreateArchive $
--             createArchiveResponse
--
--         , responseListPartnerEventSources $
--             listPartnerEventSourcesResponse
--
--         , responseDescribeReplay $
--             describeReplayResponse
--
--         , responseDeletePartnerEventSource $
--             deletePartnerEventSourceResponse
--
--         , responseCreatePartnerEventSource $
--             createPartnerEventSourceResponse
--
--         , responseStartReplay $
--             startReplayResponse
--
--         , responsePutTargets $
--             putTargetsResponse
--
--         , responseListEventSources $
--             listEventSourcesResponse
--
--         , responseActivateEventSource $
--             activateEventSourceResponse
--
--         , responseDeleteAPIdestination $
--             deleteAPIdestinationResponse
--
--         , responseCancelReplay $
--             cancelReplayResponse
--
--         , responseUpdateAPIdestination $
--             updateAPIdestinationResponse
--
--         , responseRemovePermission $
--             removePermissionResponse
--
--         , responseTestEventPattern $
--             testEventPatternResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDisableRule $
--             disableRuleResponse
--
--         , responseListReplays $
--             listReplaysResponse
--
--         , responseDescribePartnerEventSource $
--             describePartnerEventSourceResponse
--
--         , responsePutPermission $
--             putPermissionResponse
--
--           ]
--     ]

-- Requests

requestListPartnerEventSourceAccounts :: ListPartnerEventSourceAccounts -> TestTree
requestListPartnerEventSourceAccounts =
  req
    "ListPartnerEventSourceAccounts"
    "fixture/ListPartnerEventSourceAccounts.yaml"

requestDeleteConnection :: DeleteConnection -> TestTree
requestDeleteConnection =
  req
    "DeleteConnection"
    "fixture/DeleteConnection.yaml"

requestUpdateConnection :: UpdateConnection -> TestTree
requestUpdateConnection =
  req
    "UpdateConnection"
    "fixture/UpdateConnection.yaml"

requestDeleteRule :: DeleteRule -> TestTree
requestDeleteRule =
  req
    "DeleteRule"
    "fixture/DeleteRule.yaml"

requestDescribeArchive :: DescribeArchive -> TestTree
requestDescribeArchive =
  req
    "DescribeArchive"
    "fixture/DescribeArchive.yaml"

requestDescribeEventSource :: DescribeEventSource -> TestTree
requestDescribeEventSource =
  req
    "DescribeEventSource"
    "fixture/DescribeEventSource.yaml"

requestDescribeAPIdestination :: DescribeAPIdestination -> TestTree
requestDescribeAPIdestination =
  req
    "DescribeAPIdestination"
    "fixture/DescribeAPIdestination.yaml"

requestDeactivateEventSource :: DeactivateEventSource -> TestTree
requestDeactivateEventSource =
  req
    "DeactivateEventSource"
    "fixture/DeactivateEventSource.yaml"

requestUpdateArchive :: UpdateArchive -> TestTree
requestUpdateArchive =
  req
    "UpdateArchive"
    "fixture/UpdateArchive.yaml"

requestDescribeConnection :: DescribeConnection -> TestTree
requestDescribeConnection =
  req
    "DescribeConnection"
    "fixture/DescribeConnection.yaml"

requestDeleteArchive :: DeleteArchive -> TestTree
requestDeleteArchive =
  req
    "DeleteArchive"
    "fixture/DeleteArchive.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDescribeRule :: DescribeRule -> TestTree
requestDescribeRule =
  req
    "DescribeRule"
    "fixture/DescribeRule.yaml"

requestListArchives :: ListArchives -> TestTree
requestListArchives =
  req
    "ListArchives"
    "fixture/ListArchives.yaml"

requestPutPartnerEvents :: PutPartnerEvents -> TestTree
requestPutPartnerEvents =
  req
    "PutPartnerEvents"
    "fixture/PutPartnerEvents.yaml"

requestCreateAPIdestination :: CreateAPIdestination -> TestTree
requestCreateAPIdestination =
  req
    "CreateAPIdestination"
    "fixture/CreateAPIdestination.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestListAPIdestinations :: ListAPIdestinations -> TestTree
requestListAPIdestinations =
  req
    "ListAPIdestinations"
    "fixture/ListAPIdestinations.yaml"

requestDescribeEventBus :: DescribeEventBus -> TestTree
requestDescribeEventBus =
  req
    "DescribeEventBus"
    "fixture/DescribeEventBus.yaml"

requestListTargetsByRule :: ListTargetsByRule -> TestTree
requestListTargetsByRule =
  req
    "ListTargetsByRule"
    "fixture/ListTargetsByRule.yaml"

requestCreateConnection :: CreateConnection -> TestTree
requestCreateConnection =
  req
    "CreateConnection"
    "fixture/CreateConnection.yaml"

requestListRuleNamesByTarget :: ListRuleNamesByTarget -> TestTree
requestListRuleNamesByTarget =
  req
    "ListRuleNamesByTarget"
    "fixture/ListRuleNamesByTarget.yaml"

requestListRules :: ListRules -> TestTree
requestListRules =
  req
    "ListRules"
    "fixture/ListRules.yaml"

requestPutRule :: PutRule -> TestTree
requestPutRule =
  req
    "PutRule"
    "fixture/PutRule.yaml"

requestEnableRule :: EnableRule -> TestTree
requestEnableRule =
  req
    "EnableRule"
    "fixture/EnableRule.yaml"

requestListConnections :: ListConnections -> TestTree
requestListConnections =
  req
    "ListConnections"
    "fixture/ListConnections.yaml"

requestDeauthorizeConnection :: DeauthorizeConnection -> TestTree
requestDeauthorizeConnection =
  req
    "DeauthorizeConnection"
    "fixture/DeauthorizeConnection.yaml"

requestCreateEventBus :: CreateEventBus -> TestTree
requestCreateEventBus =
  req
    "CreateEventBus"
    "fixture/CreateEventBus.yaml"

requestRemoveTargets :: RemoveTargets -> TestTree
requestRemoveTargets =
  req
    "RemoveTargets"
    "fixture/RemoveTargets.yaml"

requestListEventBuses :: ListEventBuses -> TestTree
requestListEventBuses =
  req
    "ListEventBuses"
    "fixture/ListEventBuses.yaml"

requestDeleteEventBus :: DeleteEventBus -> TestTree
requestDeleteEventBus =
  req
    "DeleteEventBus"
    "fixture/DeleteEventBus.yaml"

requestPutEvents :: PutEvents -> TestTree
requestPutEvents =
  req
    "PutEvents"
    "fixture/PutEvents.yaml"

requestCreateArchive :: CreateArchive -> TestTree
requestCreateArchive =
  req
    "CreateArchive"
    "fixture/CreateArchive.yaml"

requestListPartnerEventSources :: ListPartnerEventSources -> TestTree
requestListPartnerEventSources =
  req
    "ListPartnerEventSources"
    "fixture/ListPartnerEventSources.yaml"

requestDescribeReplay :: DescribeReplay -> TestTree
requestDescribeReplay =
  req
    "DescribeReplay"
    "fixture/DescribeReplay.yaml"

requestDeletePartnerEventSource :: DeletePartnerEventSource -> TestTree
requestDeletePartnerEventSource =
  req
    "DeletePartnerEventSource"
    "fixture/DeletePartnerEventSource.yaml"

requestCreatePartnerEventSource :: CreatePartnerEventSource -> TestTree
requestCreatePartnerEventSource =
  req
    "CreatePartnerEventSource"
    "fixture/CreatePartnerEventSource.yaml"

requestStartReplay :: StartReplay -> TestTree
requestStartReplay =
  req
    "StartReplay"
    "fixture/StartReplay.yaml"

requestPutTargets :: PutTargets -> TestTree
requestPutTargets =
  req
    "PutTargets"
    "fixture/PutTargets.yaml"

requestListEventSources :: ListEventSources -> TestTree
requestListEventSources =
  req
    "ListEventSources"
    "fixture/ListEventSources.yaml"

requestActivateEventSource :: ActivateEventSource -> TestTree
requestActivateEventSource =
  req
    "ActivateEventSource"
    "fixture/ActivateEventSource.yaml"

requestDeleteAPIdestination :: DeleteAPIdestination -> TestTree
requestDeleteAPIdestination =
  req
    "DeleteAPIdestination"
    "fixture/DeleteAPIdestination.yaml"

requestCancelReplay :: CancelReplay -> TestTree
requestCancelReplay =
  req
    "CancelReplay"
    "fixture/CancelReplay.yaml"

requestUpdateAPIdestination :: UpdateAPIdestination -> TestTree
requestUpdateAPIdestination =
  req
    "UpdateAPIdestination"
    "fixture/UpdateAPIdestination.yaml"

requestRemovePermission :: RemovePermission -> TestTree
requestRemovePermission =
  req
    "RemovePermission"
    "fixture/RemovePermission.yaml"

requestTestEventPattern :: TestEventPattern -> TestTree
requestTestEventPattern =
  req
    "TestEventPattern"
    "fixture/TestEventPattern.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDisableRule :: DisableRule -> TestTree
requestDisableRule =
  req
    "DisableRule"
    "fixture/DisableRule.yaml"

requestListReplays :: ListReplays -> TestTree
requestListReplays =
  req
    "ListReplays"
    "fixture/ListReplays.yaml"

requestDescribePartnerEventSource :: DescribePartnerEventSource -> TestTree
requestDescribePartnerEventSource =
  req
    "DescribePartnerEventSource"
    "fixture/DescribePartnerEventSource.yaml"

requestPutPermission :: PutPermission -> TestTree
requestPutPermission =
  req
    "PutPermission"
    "fixture/PutPermission.yaml"

-- Responses

responseListPartnerEventSourceAccounts :: ListPartnerEventSourceAccountsResponse -> TestTree
responseListPartnerEventSourceAccounts =
  res
    "ListPartnerEventSourceAccountsResponse"
    "fixture/ListPartnerEventSourceAccountsResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListPartnerEventSourceAccounts)

responseDeleteConnection :: DeleteConnectionResponse -> TestTree
responseDeleteConnection =
  res
    "DeleteConnectionResponse"
    "fixture/DeleteConnectionResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DeleteConnection)

responseUpdateConnection :: UpdateConnectionResponse -> TestTree
responseUpdateConnection =
  res
    "UpdateConnectionResponse"
    "fixture/UpdateConnectionResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy UpdateConnection)

responseDeleteRule :: DeleteRuleResponse -> TestTree
responseDeleteRule =
  res
    "DeleteRuleResponse"
    "fixture/DeleteRuleResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DeleteRule)

responseDescribeArchive :: DescribeArchiveResponse -> TestTree
responseDescribeArchive =
  res
    "DescribeArchiveResponse"
    "fixture/DescribeArchiveResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DescribeArchive)

responseDescribeEventSource :: DescribeEventSourceResponse -> TestTree
responseDescribeEventSource =
  res
    "DescribeEventSourceResponse"
    "fixture/DescribeEventSourceResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DescribeEventSource)

responseDescribeAPIdestination :: DescribeAPIdestinationResponse -> TestTree
responseDescribeAPIdestination =
  res
    "DescribeAPIdestinationResponse"
    "fixture/DescribeAPIdestinationResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DescribeAPIdestination)

responseDeactivateEventSource :: DeactivateEventSourceResponse -> TestTree
responseDeactivateEventSource =
  res
    "DeactivateEventSourceResponse"
    "fixture/DeactivateEventSourceResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DeactivateEventSource)

responseUpdateArchive :: UpdateArchiveResponse -> TestTree
responseUpdateArchive =
  res
    "UpdateArchiveResponse"
    "fixture/UpdateArchiveResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy UpdateArchive)

responseDescribeConnection :: DescribeConnectionResponse -> TestTree
responseDescribeConnection =
  res
    "DescribeConnectionResponse"
    "fixture/DescribeConnectionResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DescribeConnection)

responseDeleteArchive :: DeleteArchiveResponse -> TestTree
responseDeleteArchive =
  res
    "DeleteArchiveResponse"
    "fixture/DeleteArchiveResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DeleteArchive)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy UntagResource)

responseDescribeRule :: DescribeRuleResponse -> TestTree
responseDescribeRule =
  res
    "DescribeRuleResponse"
    "fixture/DescribeRuleResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DescribeRule)

responseListArchives :: ListArchivesResponse -> TestTree
responseListArchives =
  res
    "ListArchivesResponse"
    "fixture/ListArchivesResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListArchives)

responsePutPartnerEvents :: PutPartnerEventsResponse -> TestTree
responsePutPartnerEvents =
  res
    "PutPartnerEventsResponse"
    "fixture/PutPartnerEventsResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy PutPartnerEvents)

responseCreateAPIdestination :: CreateAPIdestinationResponse -> TestTree
responseCreateAPIdestination =
  res
    "CreateAPIdestinationResponse"
    "fixture/CreateAPIdestinationResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy CreateAPIdestination)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy TagResource)

responseListAPIdestinations :: ListAPIdestinationsResponse -> TestTree
responseListAPIdestinations =
  res
    "ListAPIdestinationsResponse"
    "fixture/ListAPIdestinationsResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListAPIdestinations)

responseDescribeEventBus :: DescribeEventBusResponse -> TestTree
responseDescribeEventBus =
  res
    "DescribeEventBusResponse"
    "fixture/DescribeEventBusResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DescribeEventBus)

responseListTargetsByRule :: ListTargetsByRuleResponse -> TestTree
responseListTargetsByRule =
  res
    "ListTargetsByRuleResponse"
    "fixture/ListTargetsByRuleResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListTargetsByRule)

responseCreateConnection :: CreateConnectionResponse -> TestTree
responseCreateConnection =
  res
    "CreateConnectionResponse"
    "fixture/CreateConnectionResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy CreateConnection)

responseListRuleNamesByTarget :: ListRuleNamesByTargetResponse -> TestTree
responseListRuleNamesByTarget =
  res
    "ListRuleNamesByTargetResponse"
    "fixture/ListRuleNamesByTargetResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListRuleNamesByTarget)

responseListRules :: ListRulesResponse -> TestTree
responseListRules =
  res
    "ListRulesResponse"
    "fixture/ListRulesResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListRules)

responsePutRule :: PutRuleResponse -> TestTree
responsePutRule =
  res
    "PutRuleResponse"
    "fixture/PutRuleResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy PutRule)

responseEnableRule :: EnableRuleResponse -> TestTree
responseEnableRule =
  res
    "EnableRuleResponse"
    "fixture/EnableRuleResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy EnableRule)

responseListConnections :: ListConnectionsResponse -> TestTree
responseListConnections =
  res
    "ListConnectionsResponse"
    "fixture/ListConnectionsResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListConnections)

responseDeauthorizeConnection :: DeauthorizeConnectionResponse -> TestTree
responseDeauthorizeConnection =
  res
    "DeauthorizeConnectionResponse"
    "fixture/DeauthorizeConnectionResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DeauthorizeConnection)

responseCreateEventBus :: CreateEventBusResponse -> TestTree
responseCreateEventBus =
  res
    "CreateEventBusResponse"
    "fixture/CreateEventBusResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy CreateEventBus)

responseRemoveTargets :: RemoveTargetsResponse -> TestTree
responseRemoveTargets =
  res
    "RemoveTargetsResponse"
    "fixture/RemoveTargetsResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy RemoveTargets)

responseListEventBuses :: ListEventBusesResponse -> TestTree
responseListEventBuses =
  res
    "ListEventBusesResponse"
    "fixture/ListEventBusesResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListEventBuses)

responseDeleteEventBus :: DeleteEventBusResponse -> TestTree
responseDeleteEventBus =
  res
    "DeleteEventBusResponse"
    "fixture/DeleteEventBusResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DeleteEventBus)

responsePutEvents :: PutEventsResponse -> TestTree
responsePutEvents =
  res
    "PutEventsResponse"
    "fixture/PutEventsResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy PutEvents)

responseCreateArchive :: CreateArchiveResponse -> TestTree
responseCreateArchive =
  res
    "CreateArchiveResponse"
    "fixture/CreateArchiveResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy CreateArchive)

responseListPartnerEventSources :: ListPartnerEventSourcesResponse -> TestTree
responseListPartnerEventSources =
  res
    "ListPartnerEventSourcesResponse"
    "fixture/ListPartnerEventSourcesResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListPartnerEventSources)

responseDescribeReplay :: DescribeReplayResponse -> TestTree
responseDescribeReplay =
  res
    "DescribeReplayResponse"
    "fixture/DescribeReplayResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DescribeReplay)

responseDeletePartnerEventSource :: DeletePartnerEventSourceResponse -> TestTree
responseDeletePartnerEventSource =
  res
    "DeletePartnerEventSourceResponse"
    "fixture/DeletePartnerEventSourceResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DeletePartnerEventSource)

responseCreatePartnerEventSource :: CreatePartnerEventSourceResponse -> TestTree
responseCreatePartnerEventSource =
  res
    "CreatePartnerEventSourceResponse"
    "fixture/CreatePartnerEventSourceResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy CreatePartnerEventSource)

responseStartReplay :: StartReplayResponse -> TestTree
responseStartReplay =
  res
    "StartReplayResponse"
    "fixture/StartReplayResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy StartReplay)

responsePutTargets :: PutTargetsResponse -> TestTree
responsePutTargets =
  res
    "PutTargetsResponse"
    "fixture/PutTargetsResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy PutTargets)

responseListEventSources :: ListEventSourcesResponse -> TestTree
responseListEventSources =
  res
    "ListEventSourcesResponse"
    "fixture/ListEventSourcesResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListEventSources)

responseActivateEventSource :: ActivateEventSourceResponse -> TestTree
responseActivateEventSource =
  res
    "ActivateEventSourceResponse"
    "fixture/ActivateEventSourceResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ActivateEventSource)

responseDeleteAPIdestination :: DeleteAPIdestinationResponse -> TestTree
responseDeleteAPIdestination =
  res
    "DeleteAPIdestinationResponse"
    "fixture/DeleteAPIdestinationResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DeleteAPIdestination)

responseCancelReplay :: CancelReplayResponse -> TestTree
responseCancelReplay =
  res
    "CancelReplayResponse"
    "fixture/CancelReplayResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy CancelReplay)

responseUpdateAPIdestination :: UpdateAPIdestinationResponse -> TestTree
responseUpdateAPIdestination =
  res
    "UpdateAPIdestinationResponse"
    "fixture/UpdateAPIdestinationResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy UpdateAPIdestination)

responseRemovePermission :: RemovePermissionResponse -> TestTree
responseRemovePermission =
  res
    "RemovePermissionResponse"
    "fixture/RemovePermissionResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy RemovePermission)

responseTestEventPattern :: TestEventPatternResponse -> TestTree
responseTestEventPattern =
  res
    "TestEventPatternResponse"
    "fixture/TestEventPatternResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy TestEventPattern)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListTagsForResource)

responseDisableRule :: DisableRuleResponse -> TestTree
responseDisableRule =
  res
    "DisableRuleResponse"
    "fixture/DisableRuleResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DisableRule)

responseListReplays :: ListReplaysResponse -> TestTree
responseListReplays =
  res
    "ListReplaysResponse"
    "fixture/ListReplaysResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy ListReplays)

responseDescribePartnerEventSource :: DescribePartnerEventSourceResponse -> TestTree
responseDescribePartnerEventSource =
  res
    "DescribePartnerEventSourceResponse"
    "fixture/DescribePartnerEventSourceResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy DescribePartnerEventSource)

responsePutPermission :: PutPermissionResponse -> TestTree
responsePutPermission =
  res
    "PutPermissionResponse"
    "fixture/PutPermissionResponse.proto"
    cloudWatchEvents
    (Proxy :: Proxy PutPermission)
