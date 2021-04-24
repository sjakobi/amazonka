{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.DataPipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.DataPipeline where

import Data.Proxy
import Network.AWS.DataPipeline
import Test.AWS.DataPipeline.Internal
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
--         [ requestRemoveTags $
--             removeTags
--
--         , requestQueryObjects $
--             queryObjects
--
--         , requestEvaluateExpression $
--             evaluateExpression
--
--         , requestCreatePipeline $
--             createPipeline
--
--         , requestReportTaskProgress $
--             reportTaskProgress
--
--         , requestSetTaskStatus $
--             setTaskStatus
--
--         , requestDescribeObjects $
--             describeObjects
--
--         , requestDeletePipeline $
--             deletePipeline
--
--         , requestReportTaskRunnerHeartbeat $
--             reportTaskRunnerHeartbeat
--
--         , requestAddTags $
--             addTags
--
--         , requestDescribePipelines $
--             describePipelines
--
--         , requestGetPipelineDefinition $
--             getPipelineDefinition
--
--         , requestPollForTask $
--             pollForTask
--
--         , requestValidatePipelineDefinition $
--             validatePipelineDefinition
--
--         , requestPutPipelineDefinition $
--             putPipelineDefinition
--
--         , requestSetStatus $
--             setStatus
--
--         , requestListPipelines $
--             listPipelines
--
--         , requestActivatePipeline $
--             activatePipeline
--
--         , requestDeactivatePipeline $
--             deactivatePipeline
--
--           ]

--     , testGroup "response"
--         [ responseRemoveTags $
--             removeTagsResponse
--
--         , responseQueryObjects $
--             queryObjectsResponse
--
--         , responseEvaluateExpression $
--             evaluateExpressionResponse
--
--         , responseCreatePipeline $
--             createPipelineResponse
--
--         , responseReportTaskProgress $
--             reportTaskProgressResponse
--
--         , responseSetTaskStatus $
--             setTaskStatusResponse
--
--         , responseDescribeObjects $
--             describeObjectsResponse
--
--         , responseDeletePipeline $
--             deletePipelineResponse
--
--         , responseReportTaskRunnerHeartbeat $
--             reportTaskRunnerHeartbeatResponse
--
--         , responseAddTags $
--             addTagsResponse
--
--         , responseDescribePipelines $
--             describePipelinesResponse
--
--         , responseGetPipelineDefinition $
--             getPipelineDefinitionResponse
--
--         , responsePollForTask $
--             pollForTaskResponse
--
--         , responseValidatePipelineDefinition $
--             validatePipelineDefinitionResponse
--
--         , responsePutPipelineDefinition $
--             putPipelineDefinitionResponse
--
--         , responseSetStatus $
--             setStatusResponse
--
--         , responseListPipelines $
--             listPipelinesResponse
--
--         , responseActivatePipeline $
--             activatePipelineResponse
--
--         , responseDeactivatePipeline $
--             deactivatePipelineResponse
--
--           ]
--     ]

-- Requests

requestRemoveTags :: RemoveTags -> TestTree
requestRemoveTags =
  req
    "RemoveTags"
    "fixture/RemoveTags.yaml"

requestQueryObjects :: QueryObjects -> TestTree
requestQueryObjects =
  req
    "QueryObjects"
    "fixture/QueryObjects.yaml"

requestEvaluateExpression :: EvaluateExpression -> TestTree
requestEvaluateExpression =
  req
    "EvaluateExpression"
    "fixture/EvaluateExpression.yaml"

requestCreatePipeline :: CreatePipeline -> TestTree
requestCreatePipeline =
  req
    "CreatePipeline"
    "fixture/CreatePipeline.yaml"

requestReportTaskProgress :: ReportTaskProgress -> TestTree
requestReportTaskProgress =
  req
    "ReportTaskProgress"
    "fixture/ReportTaskProgress.yaml"

requestSetTaskStatus :: SetTaskStatus -> TestTree
requestSetTaskStatus =
  req
    "SetTaskStatus"
    "fixture/SetTaskStatus.yaml"

requestDescribeObjects :: DescribeObjects -> TestTree
requestDescribeObjects =
  req
    "DescribeObjects"
    "fixture/DescribeObjects.yaml"

requestDeletePipeline :: DeletePipeline -> TestTree
requestDeletePipeline =
  req
    "DeletePipeline"
    "fixture/DeletePipeline.yaml"

requestReportTaskRunnerHeartbeat :: ReportTaskRunnerHeartbeat -> TestTree
requestReportTaskRunnerHeartbeat =
  req
    "ReportTaskRunnerHeartbeat"
    "fixture/ReportTaskRunnerHeartbeat.yaml"

requestAddTags :: AddTags -> TestTree
requestAddTags =
  req
    "AddTags"
    "fixture/AddTags.yaml"

requestDescribePipelines :: DescribePipelines -> TestTree
requestDescribePipelines =
  req
    "DescribePipelines"
    "fixture/DescribePipelines.yaml"

requestGetPipelineDefinition :: GetPipelineDefinition -> TestTree
requestGetPipelineDefinition =
  req
    "GetPipelineDefinition"
    "fixture/GetPipelineDefinition.yaml"

requestPollForTask :: PollForTask -> TestTree
requestPollForTask =
  req
    "PollForTask"
    "fixture/PollForTask.yaml"

requestValidatePipelineDefinition :: ValidatePipelineDefinition -> TestTree
requestValidatePipelineDefinition =
  req
    "ValidatePipelineDefinition"
    "fixture/ValidatePipelineDefinition.yaml"

requestPutPipelineDefinition :: PutPipelineDefinition -> TestTree
requestPutPipelineDefinition =
  req
    "PutPipelineDefinition"
    "fixture/PutPipelineDefinition.yaml"

requestSetStatus :: SetStatus -> TestTree
requestSetStatus =
  req
    "SetStatus"
    "fixture/SetStatus.yaml"

requestListPipelines :: ListPipelines -> TestTree
requestListPipelines =
  req
    "ListPipelines"
    "fixture/ListPipelines.yaml"

requestActivatePipeline :: ActivatePipeline -> TestTree
requestActivatePipeline =
  req
    "ActivatePipeline"
    "fixture/ActivatePipeline.yaml"

requestDeactivatePipeline :: DeactivatePipeline -> TestTree
requestDeactivatePipeline =
  req
    "DeactivatePipeline"
    "fixture/DeactivatePipeline.yaml"

-- Responses

responseRemoveTags :: RemoveTagsResponse -> TestTree
responseRemoveTags =
  res
    "RemoveTagsResponse"
    "fixture/RemoveTagsResponse.proto"
    dataPipeline
    (Proxy :: Proxy RemoveTags)

responseQueryObjects :: QueryObjectsResponse -> TestTree
responseQueryObjects =
  res
    "QueryObjectsResponse"
    "fixture/QueryObjectsResponse.proto"
    dataPipeline
    (Proxy :: Proxy QueryObjects)

responseEvaluateExpression :: EvaluateExpressionResponse -> TestTree
responseEvaluateExpression =
  res
    "EvaluateExpressionResponse"
    "fixture/EvaluateExpressionResponse.proto"
    dataPipeline
    (Proxy :: Proxy EvaluateExpression)

responseCreatePipeline :: CreatePipelineResponse -> TestTree
responseCreatePipeline =
  res
    "CreatePipelineResponse"
    "fixture/CreatePipelineResponse.proto"
    dataPipeline
    (Proxy :: Proxy CreatePipeline)

responseReportTaskProgress :: ReportTaskProgressResponse -> TestTree
responseReportTaskProgress =
  res
    "ReportTaskProgressResponse"
    "fixture/ReportTaskProgressResponse.proto"
    dataPipeline
    (Proxy :: Proxy ReportTaskProgress)

responseSetTaskStatus :: SetTaskStatusResponse -> TestTree
responseSetTaskStatus =
  res
    "SetTaskStatusResponse"
    "fixture/SetTaskStatusResponse.proto"
    dataPipeline
    (Proxy :: Proxy SetTaskStatus)

responseDescribeObjects :: DescribeObjectsResponse -> TestTree
responseDescribeObjects =
  res
    "DescribeObjectsResponse"
    "fixture/DescribeObjectsResponse.proto"
    dataPipeline
    (Proxy :: Proxy DescribeObjects)

responseDeletePipeline :: DeletePipelineResponse -> TestTree
responseDeletePipeline =
  res
    "DeletePipelineResponse"
    "fixture/DeletePipelineResponse.proto"
    dataPipeline
    (Proxy :: Proxy DeletePipeline)

responseReportTaskRunnerHeartbeat :: ReportTaskRunnerHeartbeatResponse -> TestTree
responseReportTaskRunnerHeartbeat =
  res
    "ReportTaskRunnerHeartbeatResponse"
    "fixture/ReportTaskRunnerHeartbeatResponse.proto"
    dataPipeline
    (Proxy :: Proxy ReportTaskRunnerHeartbeat)

responseAddTags :: AddTagsResponse -> TestTree
responseAddTags =
  res
    "AddTagsResponse"
    "fixture/AddTagsResponse.proto"
    dataPipeline
    (Proxy :: Proxy AddTags)

responseDescribePipelines :: DescribePipelinesResponse -> TestTree
responseDescribePipelines =
  res
    "DescribePipelinesResponse"
    "fixture/DescribePipelinesResponse.proto"
    dataPipeline
    (Proxy :: Proxy DescribePipelines)

responseGetPipelineDefinition :: GetPipelineDefinitionResponse -> TestTree
responseGetPipelineDefinition =
  res
    "GetPipelineDefinitionResponse"
    "fixture/GetPipelineDefinitionResponse.proto"
    dataPipeline
    (Proxy :: Proxy GetPipelineDefinition)

responsePollForTask :: PollForTaskResponse -> TestTree
responsePollForTask =
  res
    "PollForTaskResponse"
    "fixture/PollForTaskResponse.proto"
    dataPipeline
    (Proxy :: Proxy PollForTask)

responseValidatePipelineDefinition :: ValidatePipelineDefinitionResponse -> TestTree
responseValidatePipelineDefinition =
  res
    "ValidatePipelineDefinitionResponse"
    "fixture/ValidatePipelineDefinitionResponse.proto"
    dataPipeline
    (Proxy :: Proxy ValidatePipelineDefinition)

responsePutPipelineDefinition :: PutPipelineDefinitionResponse -> TestTree
responsePutPipelineDefinition =
  res
    "PutPipelineDefinitionResponse"
    "fixture/PutPipelineDefinitionResponse.proto"
    dataPipeline
    (Proxy :: Proxy PutPipelineDefinition)

responseSetStatus :: SetStatusResponse -> TestTree
responseSetStatus =
  res
    "SetStatusResponse"
    "fixture/SetStatusResponse.proto"
    dataPipeline
    (Proxy :: Proxy SetStatus)

responseListPipelines :: ListPipelinesResponse -> TestTree
responseListPipelines =
  res
    "ListPipelinesResponse"
    "fixture/ListPipelinesResponse.proto"
    dataPipeline
    (Proxy :: Proxy ListPipelines)

responseActivatePipeline :: ActivatePipelineResponse -> TestTree
responseActivatePipeline =
  res
    "ActivatePipelineResponse"
    "fixture/ActivatePipelineResponse.proto"
    dataPipeline
    (Proxy :: Proxy ActivatePipeline)

responseDeactivatePipeline :: DeactivatePipelineResponse -> TestTree
responseDeactivatePipeline =
  res
    "DeactivatePipelineResponse"
    "fixture/DeactivatePipelineResponse.proto"
    dataPipeline
    (Proxy :: Proxy DeactivatePipeline)
