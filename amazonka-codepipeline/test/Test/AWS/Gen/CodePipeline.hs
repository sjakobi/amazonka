{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CodePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CodePipeline where

import Data.Proxy
import Network.AWS.CodePipeline
import Test.AWS.CodePipeline.Internal
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
--         [ requestListActionTypes $
--             listActionTypes
--
--         , requestDeregisterWebhookWithThirdParty $
--             deregisterWebhookWithThirdParty
--
--         , requestPutActionRevision $
--             putActionRevision
--
--         , requestPutJobSuccessResult $
--             putJobSuccessResult
--
--         , requestPutThirdPartyJobSuccessResult $
--             putThirdPartyJobSuccessResult
--
--         , requestCreatePipeline $
--             createPipeline
--
--         , requestRetryStageExecution $
--             retryStageExecution
--
--         , requestUpdatePipeline $
--             updatePipeline
--
--         , requestGetPipelineState $
--             getPipelineState
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDeletePipeline $
--             deletePipeline
--
--         , requestStartPipelineExecution $
--             startPipelineExecution
--
--         , requestGetActionType $
--             getActionType
--
--         , requestTagResource $
--             tagResource
--
--         , requestStopPipelineExecution $
--             stopPipelineExecution
--
--         , requestRegisterWebhookWithThirdParty $
--             registerWebhookWithThirdParty
--
--         , requestListActionExecutions $
--             listActionExecutions
--
--         , requestPollForThirdPartyJobs $
--             pollForThirdPartyJobs
--
--         , requestEnableStageTransition $
--             enableStageTransition
--
--         , requestDeleteWebhook $
--             deleteWebhook
--
--         , requestAcknowledgeThirdPartyJob $
--             acknowledgeThirdPartyJob
--
--         , requestAcknowledgeJob $
--             acknowledgeJob
--
--         , requestDisableStageTransition $
--             disableStageTransition
--
--         , requestUpdateActionType $
--             updateActionType
--
--         , requestPutApprovalResult $
--             putApprovalResult
--
--         , requestPutJobFailureResult $
--             putJobFailureResult
--
--         , requestDeleteCustomActionType $
--             deleteCustomActionType
--
--         , requestGetPipeline $
--             getPipeline
--
--         , requestCreateCustomActionType $
--             createCustomActionType
--
--         , requestListPipelineExecutions $
--             listPipelineExecutions
--
--         , requestGetThirdPartyJobDetails $
--             getThirdPartyJobDetails
--
--         , requestGetPipelineExecution $
--             getPipelineExecution
--
--         , requestGetJobDetails $
--             getJobDetails
--
--         , requestListPipelines $
--             listPipelines
--
--         , requestPollForJobs $
--             pollForJobs
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestPutWebhook $
--             putWebhook
--
--         , requestPutThirdPartyJobFailureResult $
--             putThirdPartyJobFailureResult
--
--         , requestListWebhooks $
--             listWebhooks
--
--           ]

--     , testGroup "response"
--         [ responseListActionTypes $
--             listActionTypesResponse
--
--         , responseDeregisterWebhookWithThirdParty $
--             deregisterWebhookWithThirdPartyResponse
--
--         , responsePutActionRevision $
--             putActionRevisionResponse
--
--         , responsePutJobSuccessResult $
--             putJobSuccessResultResponse
--
--         , responsePutThirdPartyJobSuccessResult $
--             putThirdPartyJobSuccessResultResponse
--
--         , responseCreatePipeline $
--             createPipelineResponse
--
--         , responseRetryStageExecution $
--             retryStageExecutionResponse
--
--         , responseUpdatePipeline $
--             updatePipelineResponse
--
--         , responseGetPipelineState $
--             getPipelineStateResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDeletePipeline $
--             deletePipelineResponse
--
--         , responseStartPipelineExecution $
--             startPipelineExecutionResponse
--
--         , responseGetActionType $
--             getActionTypeResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseStopPipelineExecution $
--             stopPipelineExecutionResponse
--
--         , responseRegisterWebhookWithThirdParty $
--             registerWebhookWithThirdPartyResponse
--
--         , responseListActionExecutions $
--             listActionExecutionsResponse
--
--         , responsePollForThirdPartyJobs $
--             pollForThirdPartyJobsResponse
--
--         , responseEnableStageTransition $
--             enableStageTransitionResponse
--
--         , responseDeleteWebhook $
--             deleteWebhookResponse
--
--         , responseAcknowledgeThirdPartyJob $
--             acknowledgeThirdPartyJobResponse
--
--         , responseAcknowledgeJob $
--             acknowledgeJobResponse
--
--         , responseDisableStageTransition $
--             disableStageTransitionResponse
--
--         , responseUpdateActionType $
--             updateActionTypeResponse
--
--         , responsePutApprovalResult $
--             putApprovalResultResponse
--
--         , responsePutJobFailureResult $
--             putJobFailureResultResponse
--
--         , responseDeleteCustomActionType $
--             deleteCustomActionTypeResponse
--
--         , responseGetPipeline $
--             getPipelineResponse
--
--         , responseCreateCustomActionType $
--             createCustomActionTypeResponse
--
--         , responseListPipelineExecutions $
--             listPipelineExecutionsResponse
--
--         , responseGetThirdPartyJobDetails $
--             getThirdPartyJobDetailsResponse
--
--         , responseGetPipelineExecution $
--             getPipelineExecutionResponse
--
--         , responseGetJobDetails $
--             getJobDetailsResponse
--
--         , responseListPipelines $
--             listPipelinesResponse
--
--         , responsePollForJobs $
--             pollForJobsResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responsePutWebhook $
--             putWebhookResponse
--
--         , responsePutThirdPartyJobFailureResult $
--             putThirdPartyJobFailureResultResponse
--
--         , responseListWebhooks $
--             listWebhooksResponse
--
--           ]
--     ]

-- Requests

requestListActionTypes :: ListActionTypes -> TestTree
requestListActionTypes =
  req
    "ListActionTypes"
    "fixture/ListActionTypes.yaml"

requestDeregisterWebhookWithThirdParty :: DeregisterWebhookWithThirdParty -> TestTree
requestDeregisterWebhookWithThirdParty =
  req
    "DeregisterWebhookWithThirdParty"
    "fixture/DeregisterWebhookWithThirdParty.yaml"

requestPutActionRevision :: PutActionRevision -> TestTree
requestPutActionRevision =
  req
    "PutActionRevision"
    "fixture/PutActionRevision.yaml"

requestPutJobSuccessResult :: PutJobSuccessResult -> TestTree
requestPutJobSuccessResult =
  req
    "PutJobSuccessResult"
    "fixture/PutJobSuccessResult.yaml"

requestPutThirdPartyJobSuccessResult :: PutThirdPartyJobSuccessResult -> TestTree
requestPutThirdPartyJobSuccessResult =
  req
    "PutThirdPartyJobSuccessResult"
    "fixture/PutThirdPartyJobSuccessResult.yaml"

requestCreatePipeline :: CreatePipeline -> TestTree
requestCreatePipeline =
  req
    "CreatePipeline"
    "fixture/CreatePipeline.yaml"

requestRetryStageExecution :: RetryStageExecution -> TestTree
requestRetryStageExecution =
  req
    "RetryStageExecution"
    "fixture/RetryStageExecution.yaml"

requestUpdatePipeline :: UpdatePipeline -> TestTree
requestUpdatePipeline =
  req
    "UpdatePipeline"
    "fixture/UpdatePipeline.yaml"

requestGetPipelineState :: GetPipelineState -> TestTree
requestGetPipelineState =
  req
    "GetPipelineState"
    "fixture/GetPipelineState.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDeletePipeline :: DeletePipeline -> TestTree
requestDeletePipeline =
  req
    "DeletePipeline"
    "fixture/DeletePipeline.yaml"

requestStartPipelineExecution :: StartPipelineExecution -> TestTree
requestStartPipelineExecution =
  req
    "StartPipelineExecution"
    "fixture/StartPipelineExecution.yaml"

requestGetActionType :: GetActionType -> TestTree
requestGetActionType =
  req
    "GetActionType"
    "fixture/GetActionType.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestStopPipelineExecution :: StopPipelineExecution -> TestTree
requestStopPipelineExecution =
  req
    "StopPipelineExecution"
    "fixture/StopPipelineExecution.yaml"

requestRegisterWebhookWithThirdParty :: RegisterWebhookWithThirdParty -> TestTree
requestRegisterWebhookWithThirdParty =
  req
    "RegisterWebhookWithThirdParty"
    "fixture/RegisterWebhookWithThirdParty.yaml"

requestListActionExecutions :: ListActionExecutions -> TestTree
requestListActionExecutions =
  req
    "ListActionExecutions"
    "fixture/ListActionExecutions.yaml"

requestPollForThirdPartyJobs :: PollForThirdPartyJobs -> TestTree
requestPollForThirdPartyJobs =
  req
    "PollForThirdPartyJobs"
    "fixture/PollForThirdPartyJobs.yaml"

requestEnableStageTransition :: EnableStageTransition -> TestTree
requestEnableStageTransition =
  req
    "EnableStageTransition"
    "fixture/EnableStageTransition.yaml"

requestDeleteWebhook :: DeleteWebhook -> TestTree
requestDeleteWebhook =
  req
    "DeleteWebhook"
    "fixture/DeleteWebhook.yaml"

requestAcknowledgeThirdPartyJob :: AcknowledgeThirdPartyJob -> TestTree
requestAcknowledgeThirdPartyJob =
  req
    "AcknowledgeThirdPartyJob"
    "fixture/AcknowledgeThirdPartyJob.yaml"

requestAcknowledgeJob :: AcknowledgeJob -> TestTree
requestAcknowledgeJob =
  req
    "AcknowledgeJob"
    "fixture/AcknowledgeJob.yaml"

requestDisableStageTransition :: DisableStageTransition -> TestTree
requestDisableStageTransition =
  req
    "DisableStageTransition"
    "fixture/DisableStageTransition.yaml"

requestUpdateActionType :: UpdateActionType -> TestTree
requestUpdateActionType =
  req
    "UpdateActionType"
    "fixture/UpdateActionType.yaml"

requestPutApprovalResult :: PutApprovalResult -> TestTree
requestPutApprovalResult =
  req
    "PutApprovalResult"
    "fixture/PutApprovalResult.yaml"

requestPutJobFailureResult :: PutJobFailureResult -> TestTree
requestPutJobFailureResult =
  req
    "PutJobFailureResult"
    "fixture/PutJobFailureResult.yaml"

requestDeleteCustomActionType :: DeleteCustomActionType -> TestTree
requestDeleteCustomActionType =
  req
    "DeleteCustomActionType"
    "fixture/DeleteCustomActionType.yaml"

requestGetPipeline :: GetPipeline -> TestTree
requestGetPipeline =
  req
    "GetPipeline"
    "fixture/GetPipeline.yaml"

requestCreateCustomActionType :: CreateCustomActionType -> TestTree
requestCreateCustomActionType =
  req
    "CreateCustomActionType"
    "fixture/CreateCustomActionType.yaml"

requestListPipelineExecutions :: ListPipelineExecutions -> TestTree
requestListPipelineExecutions =
  req
    "ListPipelineExecutions"
    "fixture/ListPipelineExecutions.yaml"

requestGetThirdPartyJobDetails :: GetThirdPartyJobDetails -> TestTree
requestGetThirdPartyJobDetails =
  req
    "GetThirdPartyJobDetails"
    "fixture/GetThirdPartyJobDetails.yaml"

requestGetPipelineExecution :: GetPipelineExecution -> TestTree
requestGetPipelineExecution =
  req
    "GetPipelineExecution"
    "fixture/GetPipelineExecution.yaml"

requestGetJobDetails :: GetJobDetails -> TestTree
requestGetJobDetails =
  req
    "GetJobDetails"
    "fixture/GetJobDetails.yaml"

requestListPipelines :: ListPipelines -> TestTree
requestListPipelines =
  req
    "ListPipelines"
    "fixture/ListPipelines.yaml"

requestPollForJobs :: PollForJobs -> TestTree
requestPollForJobs =
  req
    "PollForJobs"
    "fixture/PollForJobs.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestPutWebhook :: PutWebhook -> TestTree
requestPutWebhook =
  req
    "PutWebhook"
    "fixture/PutWebhook.yaml"

requestPutThirdPartyJobFailureResult :: PutThirdPartyJobFailureResult -> TestTree
requestPutThirdPartyJobFailureResult =
  req
    "PutThirdPartyJobFailureResult"
    "fixture/PutThirdPartyJobFailureResult.yaml"

requestListWebhooks :: ListWebhooks -> TestTree
requestListWebhooks =
  req
    "ListWebhooks"
    "fixture/ListWebhooks.yaml"

-- Responses

responseListActionTypes :: ListActionTypesResponse -> TestTree
responseListActionTypes =
  res
    "ListActionTypesResponse"
    "fixture/ListActionTypesResponse.proto"
    codePipeline
    (Proxy :: Proxy ListActionTypes)

responseDeregisterWebhookWithThirdParty :: DeregisterWebhookWithThirdPartyResponse -> TestTree
responseDeregisterWebhookWithThirdParty =
  res
    "DeregisterWebhookWithThirdPartyResponse"
    "fixture/DeregisterWebhookWithThirdPartyResponse.proto"
    codePipeline
    (Proxy :: Proxy DeregisterWebhookWithThirdParty)

responsePutActionRevision :: PutActionRevisionResponse -> TestTree
responsePutActionRevision =
  res
    "PutActionRevisionResponse"
    "fixture/PutActionRevisionResponse.proto"
    codePipeline
    (Proxy :: Proxy PutActionRevision)

responsePutJobSuccessResult :: PutJobSuccessResultResponse -> TestTree
responsePutJobSuccessResult =
  res
    "PutJobSuccessResultResponse"
    "fixture/PutJobSuccessResultResponse.proto"
    codePipeline
    (Proxy :: Proxy PutJobSuccessResult)

responsePutThirdPartyJobSuccessResult :: PutThirdPartyJobSuccessResultResponse -> TestTree
responsePutThirdPartyJobSuccessResult =
  res
    "PutThirdPartyJobSuccessResultResponse"
    "fixture/PutThirdPartyJobSuccessResultResponse.proto"
    codePipeline
    (Proxy :: Proxy PutThirdPartyJobSuccessResult)

responseCreatePipeline :: CreatePipelineResponse -> TestTree
responseCreatePipeline =
  res
    "CreatePipelineResponse"
    "fixture/CreatePipelineResponse.proto"
    codePipeline
    (Proxy :: Proxy CreatePipeline)

responseRetryStageExecution :: RetryStageExecutionResponse -> TestTree
responseRetryStageExecution =
  res
    "RetryStageExecutionResponse"
    "fixture/RetryStageExecutionResponse.proto"
    codePipeline
    (Proxy :: Proxy RetryStageExecution)

responseUpdatePipeline :: UpdatePipelineResponse -> TestTree
responseUpdatePipeline =
  res
    "UpdatePipelineResponse"
    "fixture/UpdatePipelineResponse.proto"
    codePipeline
    (Proxy :: Proxy UpdatePipeline)

responseGetPipelineState :: GetPipelineStateResponse -> TestTree
responseGetPipelineState =
  res
    "GetPipelineStateResponse"
    "fixture/GetPipelineStateResponse.proto"
    codePipeline
    (Proxy :: Proxy GetPipelineState)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    codePipeline
    (Proxy :: Proxy UntagResource)

responseDeletePipeline :: DeletePipelineResponse -> TestTree
responseDeletePipeline =
  res
    "DeletePipelineResponse"
    "fixture/DeletePipelineResponse.proto"
    codePipeline
    (Proxy :: Proxy DeletePipeline)

responseStartPipelineExecution :: StartPipelineExecutionResponse -> TestTree
responseStartPipelineExecution =
  res
    "StartPipelineExecutionResponse"
    "fixture/StartPipelineExecutionResponse.proto"
    codePipeline
    (Proxy :: Proxy StartPipelineExecution)

responseGetActionType :: GetActionTypeResponse -> TestTree
responseGetActionType =
  res
    "GetActionTypeResponse"
    "fixture/GetActionTypeResponse.proto"
    codePipeline
    (Proxy :: Proxy GetActionType)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    codePipeline
    (Proxy :: Proxy TagResource)

responseStopPipelineExecution :: StopPipelineExecutionResponse -> TestTree
responseStopPipelineExecution =
  res
    "StopPipelineExecutionResponse"
    "fixture/StopPipelineExecutionResponse.proto"
    codePipeline
    (Proxy :: Proxy StopPipelineExecution)

responseRegisterWebhookWithThirdParty :: RegisterWebhookWithThirdPartyResponse -> TestTree
responseRegisterWebhookWithThirdParty =
  res
    "RegisterWebhookWithThirdPartyResponse"
    "fixture/RegisterWebhookWithThirdPartyResponse.proto"
    codePipeline
    (Proxy :: Proxy RegisterWebhookWithThirdParty)

responseListActionExecutions :: ListActionExecutionsResponse -> TestTree
responseListActionExecutions =
  res
    "ListActionExecutionsResponse"
    "fixture/ListActionExecutionsResponse.proto"
    codePipeline
    (Proxy :: Proxy ListActionExecutions)

responsePollForThirdPartyJobs :: PollForThirdPartyJobsResponse -> TestTree
responsePollForThirdPartyJobs =
  res
    "PollForThirdPartyJobsResponse"
    "fixture/PollForThirdPartyJobsResponse.proto"
    codePipeline
    (Proxy :: Proxy PollForThirdPartyJobs)

responseEnableStageTransition :: EnableStageTransitionResponse -> TestTree
responseEnableStageTransition =
  res
    "EnableStageTransitionResponse"
    "fixture/EnableStageTransitionResponse.proto"
    codePipeline
    (Proxy :: Proxy EnableStageTransition)

responseDeleteWebhook :: DeleteWebhookResponse -> TestTree
responseDeleteWebhook =
  res
    "DeleteWebhookResponse"
    "fixture/DeleteWebhookResponse.proto"
    codePipeline
    (Proxy :: Proxy DeleteWebhook)

responseAcknowledgeThirdPartyJob :: AcknowledgeThirdPartyJobResponse -> TestTree
responseAcknowledgeThirdPartyJob =
  res
    "AcknowledgeThirdPartyJobResponse"
    "fixture/AcknowledgeThirdPartyJobResponse.proto"
    codePipeline
    (Proxy :: Proxy AcknowledgeThirdPartyJob)

responseAcknowledgeJob :: AcknowledgeJobResponse -> TestTree
responseAcknowledgeJob =
  res
    "AcknowledgeJobResponse"
    "fixture/AcknowledgeJobResponse.proto"
    codePipeline
    (Proxy :: Proxy AcknowledgeJob)

responseDisableStageTransition :: DisableStageTransitionResponse -> TestTree
responseDisableStageTransition =
  res
    "DisableStageTransitionResponse"
    "fixture/DisableStageTransitionResponse.proto"
    codePipeline
    (Proxy :: Proxy DisableStageTransition)

responseUpdateActionType :: UpdateActionTypeResponse -> TestTree
responseUpdateActionType =
  res
    "UpdateActionTypeResponse"
    "fixture/UpdateActionTypeResponse.proto"
    codePipeline
    (Proxy :: Proxy UpdateActionType)

responsePutApprovalResult :: PutApprovalResultResponse -> TestTree
responsePutApprovalResult =
  res
    "PutApprovalResultResponse"
    "fixture/PutApprovalResultResponse.proto"
    codePipeline
    (Proxy :: Proxy PutApprovalResult)

responsePutJobFailureResult :: PutJobFailureResultResponse -> TestTree
responsePutJobFailureResult =
  res
    "PutJobFailureResultResponse"
    "fixture/PutJobFailureResultResponse.proto"
    codePipeline
    (Proxy :: Proxy PutJobFailureResult)

responseDeleteCustomActionType :: DeleteCustomActionTypeResponse -> TestTree
responseDeleteCustomActionType =
  res
    "DeleteCustomActionTypeResponse"
    "fixture/DeleteCustomActionTypeResponse.proto"
    codePipeline
    (Proxy :: Proxy DeleteCustomActionType)

responseGetPipeline :: GetPipelineResponse -> TestTree
responseGetPipeline =
  res
    "GetPipelineResponse"
    "fixture/GetPipelineResponse.proto"
    codePipeline
    (Proxy :: Proxy GetPipeline)

responseCreateCustomActionType :: CreateCustomActionTypeResponse -> TestTree
responseCreateCustomActionType =
  res
    "CreateCustomActionTypeResponse"
    "fixture/CreateCustomActionTypeResponse.proto"
    codePipeline
    (Proxy :: Proxy CreateCustomActionType)

responseListPipelineExecutions :: ListPipelineExecutionsResponse -> TestTree
responseListPipelineExecutions =
  res
    "ListPipelineExecutionsResponse"
    "fixture/ListPipelineExecutionsResponse.proto"
    codePipeline
    (Proxy :: Proxy ListPipelineExecutions)

responseGetThirdPartyJobDetails :: GetThirdPartyJobDetailsResponse -> TestTree
responseGetThirdPartyJobDetails =
  res
    "GetThirdPartyJobDetailsResponse"
    "fixture/GetThirdPartyJobDetailsResponse.proto"
    codePipeline
    (Proxy :: Proxy GetThirdPartyJobDetails)

responseGetPipelineExecution :: GetPipelineExecutionResponse -> TestTree
responseGetPipelineExecution =
  res
    "GetPipelineExecutionResponse"
    "fixture/GetPipelineExecutionResponse.proto"
    codePipeline
    (Proxy :: Proxy GetPipelineExecution)

responseGetJobDetails :: GetJobDetailsResponse -> TestTree
responseGetJobDetails =
  res
    "GetJobDetailsResponse"
    "fixture/GetJobDetailsResponse.proto"
    codePipeline
    (Proxy :: Proxy GetJobDetails)

responseListPipelines :: ListPipelinesResponse -> TestTree
responseListPipelines =
  res
    "ListPipelinesResponse"
    "fixture/ListPipelinesResponse.proto"
    codePipeline
    (Proxy :: Proxy ListPipelines)

responsePollForJobs :: PollForJobsResponse -> TestTree
responsePollForJobs =
  res
    "PollForJobsResponse"
    "fixture/PollForJobsResponse.proto"
    codePipeline
    (Proxy :: Proxy PollForJobs)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    codePipeline
    (Proxy :: Proxy ListTagsForResource)

responsePutWebhook :: PutWebhookResponse -> TestTree
responsePutWebhook =
  res
    "PutWebhookResponse"
    "fixture/PutWebhookResponse.proto"
    codePipeline
    (Proxy :: Proxy PutWebhook)

responsePutThirdPartyJobFailureResult :: PutThirdPartyJobFailureResultResponse -> TestTree
responsePutThirdPartyJobFailureResult =
  res
    "PutThirdPartyJobFailureResultResponse"
    "fixture/PutThirdPartyJobFailureResultResponse.proto"
    codePipeline
    (Proxy :: Proxy PutThirdPartyJobFailureResult)

responseListWebhooks :: ListWebhooksResponse -> TestTree
responseListWebhooks =
  res
    "ListWebhooksResponse"
    "fixture/ListWebhooksResponse.proto"
    codePipeline
    (Proxy :: Proxy ListWebhooks)
