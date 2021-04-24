{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.StepFunctions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.StepFunctions where

import Data.Proxy
import Network.AWS.StepFunctions
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.StepFunctions.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDescribeExecution $
--             describeExecution
--
--         , requestDescribeStateMachine $
--             describeStateMachine
--
--         , requestDeleteActivity $
--             deleteActivity
--
--         , requestCreateActivity $
--             createActivity
--
--         , requestListActivities $
--             listActivities
--
--         , requestCreateStateMachine $
--             createStateMachine
--
--         , requestGetActivityTask $
--             getActivityTask
--
--         , requestUpdateStateMachine $
--             updateStateMachine
--
--         , requestListExecutions $
--             listExecutions
--
--         , requestDeleteStateMachine $
--             deleteStateMachine
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDescribeActivity $
--             describeActivity
--
--         , requestTagResource $
--             tagResource
--
--         , requestStartSyncExecution $
--             startSyncExecution
--
--         , requestSendTaskSuccess $
--             sendTaskSuccess
--
--         , requestSendTaskHeartbeat $
--             sendTaskHeartbeat
--
--         , requestSendTaskFailure $
--             sendTaskFailure
--
--         , requestDescribeStateMachineForExecution $
--             describeStateMachineForExecution
--
--         , requestGetExecutionHistory $
--             getExecutionHistory
--
--         , requestListStateMachines $
--             listStateMachines
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestStopExecution $
--             stopExecution
--
--         , requestStartExecution $
--             startExecution
--
--           ]

--     , testGroup "response"
--         [ responseDescribeExecution $
--             describeExecutionResponse
--
--         , responseDescribeStateMachine $
--             describeStateMachineResponse
--
--         , responseDeleteActivity $
--             deleteActivityResponse
--
--         , responseCreateActivity $
--             createActivityResponse
--
--         , responseListActivities $
--             listActivitiesResponse
--
--         , responseCreateStateMachine $
--             createStateMachineResponse
--
--         , responseGetActivityTask $
--             getActivityTaskResponse
--
--         , responseUpdateStateMachine $
--             updateStateMachineResponse
--
--         , responseListExecutions $
--             listExecutionsResponse
--
--         , responseDeleteStateMachine $
--             deleteStateMachineResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDescribeActivity $
--             describeActivityResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseStartSyncExecution $
--             startSyncExecutionResponse
--
--         , responseSendTaskSuccess $
--             sendTaskSuccessResponse
--
--         , responseSendTaskHeartbeat $
--             sendTaskHeartbeatResponse
--
--         , responseSendTaskFailure $
--             sendTaskFailureResponse
--
--         , responseDescribeStateMachineForExecution $
--             describeStateMachineForExecutionResponse
--
--         , responseGetExecutionHistory $
--             getExecutionHistoryResponse
--
--         , responseListStateMachines $
--             listStateMachinesResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseStopExecution $
--             stopExecutionResponse
--
--         , responseStartExecution $
--             startExecutionResponse
--
--           ]
--     ]

-- Requests

requestDescribeExecution :: DescribeExecution -> TestTree
requestDescribeExecution =
  req
    "DescribeExecution"
    "fixture/DescribeExecution.yaml"

requestDescribeStateMachine :: DescribeStateMachine -> TestTree
requestDescribeStateMachine =
  req
    "DescribeStateMachine"
    "fixture/DescribeStateMachine.yaml"

requestDeleteActivity :: DeleteActivity -> TestTree
requestDeleteActivity =
  req
    "DeleteActivity"
    "fixture/DeleteActivity.yaml"

requestCreateActivity :: CreateActivity -> TestTree
requestCreateActivity =
  req
    "CreateActivity"
    "fixture/CreateActivity.yaml"

requestListActivities :: ListActivities -> TestTree
requestListActivities =
  req
    "ListActivities"
    "fixture/ListActivities.yaml"

requestCreateStateMachine :: CreateStateMachine -> TestTree
requestCreateStateMachine =
  req
    "CreateStateMachine"
    "fixture/CreateStateMachine.yaml"

requestGetActivityTask :: GetActivityTask -> TestTree
requestGetActivityTask =
  req
    "GetActivityTask"
    "fixture/GetActivityTask.yaml"

requestUpdateStateMachine :: UpdateStateMachine -> TestTree
requestUpdateStateMachine =
  req
    "UpdateStateMachine"
    "fixture/UpdateStateMachine.yaml"

requestListExecutions :: ListExecutions -> TestTree
requestListExecutions =
  req
    "ListExecutions"
    "fixture/ListExecutions.yaml"

requestDeleteStateMachine :: DeleteStateMachine -> TestTree
requestDeleteStateMachine =
  req
    "DeleteStateMachine"
    "fixture/DeleteStateMachine.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDescribeActivity :: DescribeActivity -> TestTree
requestDescribeActivity =
  req
    "DescribeActivity"
    "fixture/DescribeActivity.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestStartSyncExecution :: StartSyncExecution -> TestTree
requestStartSyncExecution =
  req
    "StartSyncExecution"
    "fixture/StartSyncExecution.yaml"

requestSendTaskSuccess :: SendTaskSuccess -> TestTree
requestSendTaskSuccess =
  req
    "SendTaskSuccess"
    "fixture/SendTaskSuccess.yaml"

requestSendTaskHeartbeat :: SendTaskHeartbeat -> TestTree
requestSendTaskHeartbeat =
  req
    "SendTaskHeartbeat"
    "fixture/SendTaskHeartbeat.yaml"

requestSendTaskFailure :: SendTaskFailure -> TestTree
requestSendTaskFailure =
  req
    "SendTaskFailure"
    "fixture/SendTaskFailure.yaml"

requestDescribeStateMachineForExecution :: DescribeStateMachineForExecution -> TestTree
requestDescribeStateMachineForExecution =
  req
    "DescribeStateMachineForExecution"
    "fixture/DescribeStateMachineForExecution.yaml"

requestGetExecutionHistory :: GetExecutionHistory -> TestTree
requestGetExecutionHistory =
  req
    "GetExecutionHistory"
    "fixture/GetExecutionHistory.yaml"

requestListStateMachines :: ListStateMachines -> TestTree
requestListStateMachines =
  req
    "ListStateMachines"
    "fixture/ListStateMachines.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestStopExecution :: StopExecution -> TestTree
requestStopExecution =
  req
    "StopExecution"
    "fixture/StopExecution.yaml"

requestStartExecution :: StartExecution -> TestTree
requestStartExecution =
  req
    "StartExecution"
    "fixture/StartExecution.yaml"

-- Responses

responseDescribeExecution :: DescribeExecutionResponse -> TestTree
responseDescribeExecution =
  res
    "DescribeExecutionResponse"
    "fixture/DescribeExecutionResponse.proto"
    stepFunctions
    (Proxy :: Proxy DescribeExecution)

responseDescribeStateMachine :: DescribeStateMachineResponse -> TestTree
responseDescribeStateMachine =
  res
    "DescribeStateMachineResponse"
    "fixture/DescribeStateMachineResponse.proto"
    stepFunctions
    (Proxy :: Proxy DescribeStateMachine)

responseDeleteActivity :: DeleteActivityResponse -> TestTree
responseDeleteActivity =
  res
    "DeleteActivityResponse"
    "fixture/DeleteActivityResponse.proto"
    stepFunctions
    (Proxy :: Proxy DeleteActivity)

responseCreateActivity :: CreateActivityResponse -> TestTree
responseCreateActivity =
  res
    "CreateActivityResponse"
    "fixture/CreateActivityResponse.proto"
    stepFunctions
    (Proxy :: Proxy CreateActivity)

responseListActivities :: ListActivitiesResponse -> TestTree
responseListActivities =
  res
    "ListActivitiesResponse"
    "fixture/ListActivitiesResponse.proto"
    stepFunctions
    (Proxy :: Proxy ListActivities)

responseCreateStateMachine :: CreateStateMachineResponse -> TestTree
responseCreateStateMachine =
  res
    "CreateStateMachineResponse"
    "fixture/CreateStateMachineResponse.proto"
    stepFunctions
    (Proxy :: Proxy CreateStateMachine)

responseGetActivityTask :: GetActivityTaskResponse -> TestTree
responseGetActivityTask =
  res
    "GetActivityTaskResponse"
    "fixture/GetActivityTaskResponse.proto"
    stepFunctions
    (Proxy :: Proxy GetActivityTask)

responseUpdateStateMachine :: UpdateStateMachineResponse -> TestTree
responseUpdateStateMachine =
  res
    "UpdateStateMachineResponse"
    "fixture/UpdateStateMachineResponse.proto"
    stepFunctions
    (Proxy :: Proxy UpdateStateMachine)

responseListExecutions :: ListExecutionsResponse -> TestTree
responseListExecutions =
  res
    "ListExecutionsResponse"
    "fixture/ListExecutionsResponse.proto"
    stepFunctions
    (Proxy :: Proxy ListExecutions)

responseDeleteStateMachine :: DeleteStateMachineResponse -> TestTree
responseDeleteStateMachine =
  res
    "DeleteStateMachineResponse"
    "fixture/DeleteStateMachineResponse.proto"
    stepFunctions
    (Proxy :: Proxy DeleteStateMachine)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    stepFunctions
    (Proxy :: Proxy UntagResource)

responseDescribeActivity :: DescribeActivityResponse -> TestTree
responseDescribeActivity =
  res
    "DescribeActivityResponse"
    "fixture/DescribeActivityResponse.proto"
    stepFunctions
    (Proxy :: Proxy DescribeActivity)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    stepFunctions
    (Proxy :: Proxy TagResource)

responseStartSyncExecution :: StartSyncExecutionResponse -> TestTree
responseStartSyncExecution =
  res
    "StartSyncExecutionResponse"
    "fixture/StartSyncExecutionResponse.proto"
    stepFunctions
    (Proxy :: Proxy StartSyncExecution)

responseSendTaskSuccess :: SendTaskSuccessResponse -> TestTree
responseSendTaskSuccess =
  res
    "SendTaskSuccessResponse"
    "fixture/SendTaskSuccessResponse.proto"
    stepFunctions
    (Proxy :: Proxy SendTaskSuccess)

responseSendTaskHeartbeat :: SendTaskHeartbeatResponse -> TestTree
responseSendTaskHeartbeat =
  res
    "SendTaskHeartbeatResponse"
    "fixture/SendTaskHeartbeatResponse.proto"
    stepFunctions
    (Proxy :: Proxy SendTaskHeartbeat)

responseSendTaskFailure :: SendTaskFailureResponse -> TestTree
responseSendTaskFailure =
  res
    "SendTaskFailureResponse"
    "fixture/SendTaskFailureResponse.proto"
    stepFunctions
    (Proxy :: Proxy SendTaskFailure)

responseDescribeStateMachineForExecution :: DescribeStateMachineForExecutionResponse -> TestTree
responseDescribeStateMachineForExecution =
  res
    "DescribeStateMachineForExecutionResponse"
    "fixture/DescribeStateMachineForExecutionResponse.proto"
    stepFunctions
    (Proxy :: Proxy DescribeStateMachineForExecution)

responseGetExecutionHistory :: GetExecutionHistoryResponse -> TestTree
responseGetExecutionHistory =
  res
    "GetExecutionHistoryResponse"
    "fixture/GetExecutionHistoryResponse.proto"
    stepFunctions
    (Proxy :: Proxy GetExecutionHistory)

responseListStateMachines :: ListStateMachinesResponse -> TestTree
responseListStateMachines =
  res
    "ListStateMachinesResponse"
    "fixture/ListStateMachinesResponse.proto"
    stepFunctions
    (Proxy :: Proxy ListStateMachines)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    stepFunctions
    (Proxy :: Proxy ListTagsForResource)

responseStopExecution :: StopExecutionResponse -> TestTree
responseStopExecution =
  res
    "StopExecutionResponse"
    "fixture/StopExecutionResponse.proto"
    stepFunctions
    (Proxy :: Proxy StopExecution)

responseStartExecution :: StartExecutionResponse -> TestTree
responseStartExecution =
  res
    "StartExecutionResponse"
    "fixture/StartExecutionResponse.proto"
    stepFunctions
    (Proxy :: Proxy StartExecution)
