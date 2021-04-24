{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.SWF
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.SWF where

import Data.Proxy
import Network.AWS.SWF
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.SWF.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestSignalWorkflowExecution $
--             signalWorkflowExecution
--
--         , requestDescribeWorkflowExecution $
--             describeWorkflowExecution
--
--         , requestPollForActivityTask $
--             pollForActivityTask
--
--         , requestRegisterActivityType $
--             registerActivityType
--
--         , requestListOpenWorkflowExecutions $
--             listOpenWorkflowExecutions
--
--         , requestRegisterDomain $
--             registerDomain
--
--         , requestListDomains $
--             listDomains
--
--         , requestRespondDecisionTaskCompleted $
--             respondDecisionTaskCompleted
--
--         , requestPollForDecisionTask $
--             pollForDecisionTask
--
--         , requestDeprecateWorkflowType $
--             deprecateWorkflowType
--
--         , requestUndeprecateDomain $
--             undeprecateDomain
--
--         , requestUndeprecateActivityType $
--             undeprecateActivityType
--
--         , requestCountClosedWorkflowExecutions $
--             countClosedWorkflowExecutions
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDeprecateActivityType $
--             deprecateActivityType
--
--         , requestTagResource $
--             tagResource
--
--         , requestDescribeDomain $
--             describeDomain
--
--         , requestCountOpenWorkflowExecutions $
--             countOpenWorkflowExecutions
--
--         , requestCountPendingDecisionTasks $
--             countPendingDecisionTasks
--
--         , requestRegisterWorkflowType $
--             registerWorkflowType
--
--         , requestCountPendingActivityTasks $
--             countPendingActivityTasks
--
--         , requestRespondActivityTaskCompleted $
--             respondActivityTaskCompleted
--
--         , requestListActivityTypes $
--             listActivityTypes
--
--         , requestStartWorkflowExecution $
--             startWorkflowExecution
--
--         , requestDescribeWorkflowType $
--             describeWorkflowType
--
--         , requestRespondActivityTaskCanceled $
--             respondActivityTaskCanceled
--
--         , requestRequestCancelWorkflowExecution $
--             requestCancelWorkflowExecution
--
--         , requestDescribeActivityType $
--             describeActivityType
--
--         , requestTerminateWorkflowExecution $
--             terminateWorkflowExecution
--
--         , requestRecordActivityTaskHeartbeat $
--             recordActivityTaskHeartbeat
--
--         , requestGetWorkflowExecutionHistory $
--             getWorkflowExecutionHistory
--
--         , requestDeprecateDomain $
--             deprecateDomain
--
--         , requestUndeprecateWorkflowType $
--             undeprecateWorkflowType
--
--         , requestRespondActivityTaskFailed $
--             respondActivityTaskFailed
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestListWorkflowTypes $
--             listWorkflowTypes
--
--         , requestListClosedWorkflowExecutions $
--             listClosedWorkflowExecutions
--
--           ]

--     , testGroup "response"
--         [ responseSignalWorkflowExecution $
--             signalWorkflowExecutionResponse
--
--         , responseDescribeWorkflowExecution $
--             describeWorkflowExecutionResponse
--
--         , responsePollForActivityTask $
--             pollForActivityTaskResponse
--
--         , responseRegisterActivityType $
--             registerActivityTypeResponse
--
--         , responseListOpenWorkflowExecutions $
--             workflowExecutionInfos
--
--         , responseRegisterDomain $
--             registerDomainResponse
--
--         , responseListDomains $
--             listDomainsResponse
--
--         , responseRespondDecisionTaskCompleted $
--             respondDecisionTaskCompletedResponse
--
--         , responsePollForDecisionTask $
--             pollForDecisionTaskResponse
--
--         , responseDeprecateWorkflowType $
--             deprecateWorkflowTypeResponse
--
--         , responseUndeprecateDomain $
--             undeprecateDomainResponse
--
--         , responseUndeprecateActivityType $
--             undeprecateActivityTypeResponse
--
--         , responseCountClosedWorkflowExecutions $
--             workflowExecutionCount
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDeprecateActivityType $
--             deprecateActivityTypeResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseDescribeDomain $
--             describeDomainResponse
--
--         , responseCountOpenWorkflowExecutions $
--             workflowExecutionCount
--
--         , responseCountPendingDecisionTasks $
--             pendingTaskCount
--
--         , responseRegisterWorkflowType $
--             registerWorkflowTypeResponse
--
--         , responseCountPendingActivityTasks $
--             pendingTaskCount
--
--         , responseRespondActivityTaskCompleted $
--             respondActivityTaskCompletedResponse
--
--         , responseListActivityTypes $
--             listActivityTypesResponse
--
--         , responseStartWorkflowExecution $
--             startWorkflowExecutionResponse
--
--         , responseDescribeWorkflowType $
--             describeWorkflowTypeResponse
--
--         , responseRespondActivityTaskCanceled $
--             respondActivityTaskCanceledResponse
--
--         , responseRequestCancelWorkflowExecution $
--             requestCancelWorkflowExecutionResponse
--
--         , responseDescribeActivityType $
--             describeActivityTypeResponse
--
--         , responseTerminateWorkflowExecution $
--             terminateWorkflowExecutionResponse
--
--         , responseRecordActivityTaskHeartbeat $
--             recordActivityTaskHeartbeatResponse
--
--         , responseGetWorkflowExecutionHistory $
--             getWorkflowExecutionHistoryResponse
--
--         , responseDeprecateDomain $
--             deprecateDomainResponse
--
--         , responseUndeprecateWorkflowType $
--             undeprecateWorkflowTypeResponse
--
--         , responseRespondActivityTaskFailed $
--             respondActivityTaskFailedResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseListWorkflowTypes $
--             listWorkflowTypesResponse
--
--         , responseListClosedWorkflowExecutions $
--             workflowExecutionInfos
--
--           ]
--     ]

-- Requests

requestSignalWorkflowExecution :: SignalWorkflowExecution -> TestTree
requestSignalWorkflowExecution =
  req
    "SignalWorkflowExecution"
    "fixture/SignalWorkflowExecution.yaml"

requestDescribeWorkflowExecution :: DescribeWorkflowExecution -> TestTree
requestDescribeWorkflowExecution =
  req
    "DescribeWorkflowExecution"
    "fixture/DescribeWorkflowExecution.yaml"

requestPollForActivityTask :: PollForActivityTask -> TestTree
requestPollForActivityTask =
  req
    "PollForActivityTask"
    "fixture/PollForActivityTask.yaml"

requestRegisterActivityType :: RegisterActivityType -> TestTree
requestRegisterActivityType =
  req
    "RegisterActivityType"
    "fixture/RegisterActivityType.yaml"

requestListOpenWorkflowExecutions :: ListOpenWorkflowExecutions -> TestTree
requestListOpenWorkflowExecutions =
  req
    "ListOpenWorkflowExecutions"
    "fixture/ListOpenWorkflowExecutions.yaml"

requestRegisterDomain :: RegisterDomain -> TestTree
requestRegisterDomain =
  req
    "RegisterDomain"
    "fixture/RegisterDomain.yaml"

requestListDomains :: ListDomains -> TestTree
requestListDomains =
  req
    "ListDomains"
    "fixture/ListDomains.yaml"

requestRespondDecisionTaskCompleted :: RespondDecisionTaskCompleted -> TestTree
requestRespondDecisionTaskCompleted =
  req
    "RespondDecisionTaskCompleted"
    "fixture/RespondDecisionTaskCompleted.yaml"

requestPollForDecisionTask :: PollForDecisionTask -> TestTree
requestPollForDecisionTask =
  req
    "PollForDecisionTask"
    "fixture/PollForDecisionTask.yaml"

requestDeprecateWorkflowType :: DeprecateWorkflowType -> TestTree
requestDeprecateWorkflowType =
  req
    "DeprecateWorkflowType"
    "fixture/DeprecateWorkflowType.yaml"

requestUndeprecateDomain :: UndeprecateDomain -> TestTree
requestUndeprecateDomain =
  req
    "UndeprecateDomain"
    "fixture/UndeprecateDomain.yaml"

requestUndeprecateActivityType :: UndeprecateActivityType -> TestTree
requestUndeprecateActivityType =
  req
    "UndeprecateActivityType"
    "fixture/UndeprecateActivityType.yaml"

requestCountClosedWorkflowExecutions :: CountClosedWorkflowExecutions -> TestTree
requestCountClosedWorkflowExecutions =
  req
    "CountClosedWorkflowExecutions"
    "fixture/CountClosedWorkflowExecutions.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDeprecateActivityType :: DeprecateActivityType -> TestTree
requestDeprecateActivityType =
  req
    "DeprecateActivityType"
    "fixture/DeprecateActivityType.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestDescribeDomain :: DescribeDomain -> TestTree
requestDescribeDomain =
  req
    "DescribeDomain"
    "fixture/DescribeDomain.yaml"

requestCountOpenWorkflowExecutions :: CountOpenWorkflowExecutions -> TestTree
requestCountOpenWorkflowExecutions =
  req
    "CountOpenWorkflowExecutions"
    "fixture/CountOpenWorkflowExecutions.yaml"

requestCountPendingDecisionTasks :: CountPendingDecisionTasks -> TestTree
requestCountPendingDecisionTasks =
  req
    "CountPendingDecisionTasks"
    "fixture/CountPendingDecisionTasks.yaml"

requestRegisterWorkflowType :: RegisterWorkflowType -> TestTree
requestRegisterWorkflowType =
  req
    "RegisterWorkflowType"
    "fixture/RegisterWorkflowType.yaml"

requestCountPendingActivityTasks :: CountPendingActivityTasks -> TestTree
requestCountPendingActivityTasks =
  req
    "CountPendingActivityTasks"
    "fixture/CountPendingActivityTasks.yaml"

requestRespondActivityTaskCompleted :: RespondActivityTaskCompleted -> TestTree
requestRespondActivityTaskCompleted =
  req
    "RespondActivityTaskCompleted"
    "fixture/RespondActivityTaskCompleted.yaml"

requestListActivityTypes :: ListActivityTypes -> TestTree
requestListActivityTypes =
  req
    "ListActivityTypes"
    "fixture/ListActivityTypes.yaml"

requestStartWorkflowExecution :: StartWorkflowExecution -> TestTree
requestStartWorkflowExecution =
  req
    "StartWorkflowExecution"
    "fixture/StartWorkflowExecution.yaml"

requestDescribeWorkflowType :: DescribeWorkflowType -> TestTree
requestDescribeWorkflowType =
  req
    "DescribeWorkflowType"
    "fixture/DescribeWorkflowType.yaml"

requestRespondActivityTaskCanceled :: RespondActivityTaskCanceled -> TestTree
requestRespondActivityTaskCanceled =
  req
    "RespondActivityTaskCanceled"
    "fixture/RespondActivityTaskCanceled.yaml"

requestRequestCancelWorkflowExecution :: RequestCancelWorkflowExecution -> TestTree
requestRequestCancelWorkflowExecution =
  req
    "RequestCancelWorkflowExecution"
    "fixture/RequestCancelWorkflowExecution.yaml"

requestDescribeActivityType :: DescribeActivityType -> TestTree
requestDescribeActivityType =
  req
    "DescribeActivityType"
    "fixture/DescribeActivityType.yaml"

requestTerminateWorkflowExecution :: TerminateWorkflowExecution -> TestTree
requestTerminateWorkflowExecution =
  req
    "TerminateWorkflowExecution"
    "fixture/TerminateWorkflowExecution.yaml"

requestRecordActivityTaskHeartbeat :: RecordActivityTaskHeartbeat -> TestTree
requestRecordActivityTaskHeartbeat =
  req
    "RecordActivityTaskHeartbeat"
    "fixture/RecordActivityTaskHeartbeat.yaml"

requestGetWorkflowExecutionHistory :: GetWorkflowExecutionHistory -> TestTree
requestGetWorkflowExecutionHistory =
  req
    "GetWorkflowExecutionHistory"
    "fixture/GetWorkflowExecutionHistory.yaml"

requestDeprecateDomain :: DeprecateDomain -> TestTree
requestDeprecateDomain =
  req
    "DeprecateDomain"
    "fixture/DeprecateDomain.yaml"

requestUndeprecateWorkflowType :: UndeprecateWorkflowType -> TestTree
requestUndeprecateWorkflowType =
  req
    "UndeprecateWorkflowType"
    "fixture/UndeprecateWorkflowType.yaml"

requestRespondActivityTaskFailed :: RespondActivityTaskFailed -> TestTree
requestRespondActivityTaskFailed =
  req
    "RespondActivityTaskFailed"
    "fixture/RespondActivityTaskFailed.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestListWorkflowTypes :: ListWorkflowTypes -> TestTree
requestListWorkflowTypes =
  req
    "ListWorkflowTypes"
    "fixture/ListWorkflowTypes.yaml"

requestListClosedWorkflowExecutions :: ListClosedWorkflowExecutions -> TestTree
requestListClosedWorkflowExecutions =
  req
    "ListClosedWorkflowExecutions"
    "fixture/ListClosedWorkflowExecutions.yaml"

-- Responses

responseSignalWorkflowExecution :: SignalWorkflowExecutionResponse -> TestTree
responseSignalWorkflowExecution =
  res
    "SignalWorkflowExecutionResponse"
    "fixture/SignalWorkflowExecutionResponse.proto"
    swf
    (Proxy :: Proxy SignalWorkflowExecution)

responseDescribeWorkflowExecution :: DescribeWorkflowExecutionResponse -> TestTree
responseDescribeWorkflowExecution =
  res
    "DescribeWorkflowExecutionResponse"
    "fixture/DescribeWorkflowExecutionResponse.proto"
    swf
    (Proxy :: Proxy DescribeWorkflowExecution)

responsePollForActivityTask :: PollForActivityTaskResponse -> TestTree
responsePollForActivityTask =
  res
    "PollForActivityTaskResponse"
    "fixture/PollForActivityTaskResponse.proto"
    swf
    (Proxy :: Proxy PollForActivityTask)

responseRegisterActivityType :: RegisterActivityTypeResponse -> TestTree
responseRegisterActivityType =
  res
    "RegisterActivityTypeResponse"
    "fixture/RegisterActivityTypeResponse.proto"
    swf
    (Proxy :: Proxy RegisterActivityType)

responseListOpenWorkflowExecutions :: WorkflowExecutionInfos -> TestTree
responseListOpenWorkflowExecutions =
  res
    "ListOpenWorkflowExecutionsResponse"
    "fixture/ListOpenWorkflowExecutionsResponse.proto"
    swf
    (Proxy :: Proxy ListOpenWorkflowExecutions)

responseRegisterDomain :: RegisterDomainResponse -> TestTree
responseRegisterDomain =
  res
    "RegisterDomainResponse"
    "fixture/RegisterDomainResponse.proto"
    swf
    (Proxy :: Proxy RegisterDomain)

responseListDomains :: ListDomainsResponse -> TestTree
responseListDomains =
  res
    "ListDomainsResponse"
    "fixture/ListDomainsResponse.proto"
    swf
    (Proxy :: Proxy ListDomains)

responseRespondDecisionTaskCompleted :: RespondDecisionTaskCompletedResponse -> TestTree
responseRespondDecisionTaskCompleted =
  res
    "RespondDecisionTaskCompletedResponse"
    "fixture/RespondDecisionTaskCompletedResponse.proto"
    swf
    (Proxy :: Proxy RespondDecisionTaskCompleted)

responsePollForDecisionTask :: PollForDecisionTaskResponse -> TestTree
responsePollForDecisionTask =
  res
    "PollForDecisionTaskResponse"
    "fixture/PollForDecisionTaskResponse.proto"
    swf
    (Proxy :: Proxy PollForDecisionTask)

responseDeprecateWorkflowType :: DeprecateWorkflowTypeResponse -> TestTree
responseDeprecateWorkflowType =
  res
    "DeprecateWorkflowTypeResponse"
    "fixture/DeprecateWorkflowTypeResponse.proto"
    swf
    (Proxy :: Proxy DeprecateWorkflowType)

responseUndeprecateDomain :: UndeprecateDomainResponse -> TestTree
responseUndeprecateDomain =
  res
    "UndeprecateDomainResponse"
    "fixture/UndeprecateDomainResponse.proto"
    swf
    (Proxy :: Proxy UndeprecateDomain)

responseUndeprecateActivityType :: UndeprecateActivityTypeResponse -> TestTree
responseUndeprecateActivityType =
  res
    "UndeprecateActivityTypeResponse"
    "fixture/UndeprecateActivityTypeResponse.proto"
    swf
    (Proxy :: Proxy UndeprecateActivityType)

responseCountClosedWorkflowExecutions :: WorkflowExecutionCount -> TestTree
responseCountClosedWorkflowExecutions =
  res
    "CountClosedWorkflowExecutionsResponse"
    "fixture/CountClosedWorkflowExecutionsResponse.proto"
    swf
    (Proxy :: Proxy CountClosedWorkflowExecutions)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    swf
    (Proxy :: Proxy UntagResource)

responseDeprecateActivityType :: DeprecateActivityTypeResponse -> TestTree
responseDeprecateActivityType =
  res
    "DeprecateActivityTypeResponse"
    "fixture/DeprecateActivityTypeResponse.proto"
    swf
    (Proxy :: Proxy DeprecateActivityType)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    swf
    (Proxy :: Proxy TagResource)

responseDescribeDomain :: DescribeDomainResponse -> TestTree
responseDescribeDomain =
  res
    "DescribeDomainResponse"
    "fixture/DescribeDomainResponse.proto"
    swf
    (Proxy :: Proxy DescribeDomain)

responseCountOpenWorkflowExecutions :: WorkflowExecutionCount -> TestTree
responseCountOpenWorkflowExecutions =
  res
    "CountOpenWorkflowExecutionsResponse"
    "fixture/CountOpenWorkflowExecutionsResponse.proto"
    swf
    (Proxy :: Proxy CountOpenWorkflowExecutions)

responseCountPendingDecisionTasks :: PendingTaskCount -> TestTree
responseCountPendingDecisionTasks =
  res
    "CountPendingDecisionTasksResponse"
    "fixture/CountPendingDecisionTasksResponse.proto"
    swf
    (Proxy :: Proxy CountPendingDecisionTasks)

responseRegisterWorkflowType :: RegisterWorkflowTypeResponse -> TestTree
responseRegisterWorkflowType =
  res
    "RegisterWorkflowTypeResponse"
    "fixture/RegisterWorkflowTypeResponse.proto"
    swf
    (Proxy :: Proxy RegisterWorkflowType)

responseCountPendingActivityTasks :: PendingTaskCount -> TestTree
responseCountPendingActivityTasks =
  res
    "CountPendingActivityTasksResponse"
    "fixture/CountPendingActivityTasksResponse.proto"
    swf
    (Proxy :: Proxy CountPendingActivityTasks)

responseRespondActivityTaskCompleted :: RespondActivityTaskCompletedResponse -> TestTree
responseRespondActivityTaskCompleted =
  res
    "RespondActivityTaskCompletedResponse"
    "fixture/RespondActivityTaskCompletedResponse.proto"
    swf
    (Proxy :: Proxy RespondActivityTaskCompleted)

responseListActivityTypes :: ListActivityTypesResponse -> TestTree
responseListActivityTypes =
  res
    "ListActivityTypesResponse"
    "fixture/ListActivityTypesResponse.proto"
    swf
    (Proxy :: Proxy ListActivityTypes)

responseStartWorkflowExecution :: StartWorkflowExecutionResponse -> TestTree
responseStartWorkflowExecution =
  res
    "StartWorkflowExecutionResponse"
    "fixture/StartWorkflowExecutionResponse.proto"
    swf
    (Proxy :: Proxy StartWorkflowExecution)

responseDescribeWorkflowType :: DescribeWorkflowTypeResponse -> TestTree
responseDescribeWorkflowType =
  res
    "DescribeWorkflowTypeResponse"
    "fixture/DescribeWorkflowTypeResponse.proto"
    swf
    (Proxy :: Proxy DescribeWorkflowType)

responseRespondActivityTaskCanceled :: RespondActivityTaskCanceledResponse -> TestTree
responseRespondActivityTaskCanceled =
  res
    "RespondActivityTaskCanceledResponse"
    "fixture/RespondActivityTaskCanceledResponse.proto"
    swf
    (Proxy :: Proxy RespondActivityTaskCanceled)

responseRequestCancelWorkflowExecution :: RequestCancelWorkflowExecutionResponse -> TestTree
responseRequestCancelWorkflowExecution =
  res
    "RequestCancelWorkflowExecutionResponse"
    "fixture/RequestCancelWorkflowExecutionResponse.proto"
    swf
    (Proxy :: Proxy RequestCancelWorkflowExecution)

responseDescribeActivityType :: DescribeActivityTypeResponse -> TestTree
responseDescribeActivityType =
  res
    "DescribeActivityTypeResponse"
    "fixture/DescribeActivityTypeResponse.proto"
    swf
    (Proxy :: Proxy DescribeActivityType)

responseTerminateWorkflowExecution :: TerminateWorkflowExecutionResponse -> TestTree
responseTerminateWorkflowExecution =
  res
    "TerminateWorkflowExecutionResponse"
    "fixture/TerminateWorkflowExecutionResponse.proto"
    swf
    (Proxy :: Proxy TerminateWorkflowExecution)

responseRecordActivityTaskHeartbeat :: RecordActivityTaskHeartbeatResponse -> TestTree
responseRecordActivityTaskHeartbeat =
  res
    "RecordActivityTaskHeartbeatResponse"
    "fixture/RecordActivityTaskHeartbeatResponse.proto"
    swf
    (Proxy :: Proxy RecordActivityTaskHeartbeat)

responseGetWorkflowExecutionHistory :: GetWorkflowExecutionHistoryResponse -> TestTree
responseGetWorkflowExecutionHistory =
  res
    "GetWorkflowExecutionHistoryResponse"
    "fixture/GetWorkflowExecutionHistoryResponse.proto"
    swf
    (Proxy :: Proxy GetWorkflowExecutionHistory)

responseDeprecateDomain :: DeprecateDomainResponse -> TestTree
responseDeprecateDomain =
  res
    "DeprecateDomainResponse"
    "fixture/DeprecateDomainResponse.proto"
    swf
    (Proxy :: Proxy DeprecateDomain)

responseUndeprecateWorkflowType :: UndeprecateWorkflowTypeResponse -> TestTree
responseUndeprecateWorkflowType =
  res
    "UndeprecateWorkflowTypeResponse"
    "fixture/UndeprecateWorkflowTypeResponse.proto"
    swf
    (Proxy :: Proxy UndeprecateWorkflowType)

responseRespondActivityTaskFailed :: RespondActivityTaskFailedResponse -> TestTree
responseRespondActivityTaskFailed =
  res
    "RespondActivityTaskFailedResponse"
    "fixture/RespondActivityTaskFailedResponse.proto"
    swf
    (Proxy :: Proxy RespondActivityTaskFailed)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    swf
    (Proxy :: Proxy ListTagsForResource)

responseListWorkflowTypes :: ListWorkflowTypesResponse -> TestTree
responseListWorkflowTypes =
  res
    "ListWorkflowTypesResponse"
    "fixture/ListWorkflowTypesResponse.proto"
    swf
    (Proxy :: Proxy ListWorkflowTypes)

responseListClosedWorkflowExecutions :: WorkflowExecutionInfos -> TestTree
responseListClosedWorkflowExecutions =
  res
    "ListClosedWorkflowExecutionsResponse"
    "fixture/ListClosedWorkflowExecutionsResponse.proto"
    swf
    (Proxy :: Proxy ListClosedWorkflowExecutions)
