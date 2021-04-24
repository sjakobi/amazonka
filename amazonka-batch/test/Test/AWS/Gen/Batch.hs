{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Batch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Batch where

import Data.Proxy
import Network.AWS.Batch
import Test.AWS.Batch.Internal
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
--         [ requestCreateComputeEnvironment $
--             createComputeEnvironment
--
--         , requestCancelJob $
--             cancelJob
--
--         , requestDescribeJobs $
--             describeJobs
--
--         , requestDeleteComputeEnvironment $
--             deleteComputeEnvironment
--
--         , requestUpdateComputeEnvironment $
--             updateComputeEnvironment
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDescribeJobQueues $
--             describeJobQueues
--
--         , requestTagResource $
--             tagResource
--
--         , requestDeregisterJobDefinition $
--             deregisterJobDefinition
--
--         , requestDeleteJobQueue $
--             deleteJobQueue
--
--         , requestUpdateJobQueue $
--             updateJobQueue
--
--         , requestDescribeJobDefinitions $
--             describeJobDefinitions
--
--         , requestListJobs $
--             listJobs
--
--         , requestDescribeComputeEnvironments $
--             describeComputeEnvironments
--
--         , requestTerminateJob $
--             terminateJob
--
--         , requestRegisterJobDefinition $
--             registerJobDefinition
--
--         , requestSubmitJob $
--             submitJob
--
--         , requestCreateJobQueue $
--             createJobQueue
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--           ]

--     , testGroup "response"
--         [ responseCreateComputeEnvironment $
--             createComputeEnvironmentResponse
--
--         , responseCancelJob $
--             cancelJobResponse
--
--         , responseDescribeJobs $
--             describeJobsResponse
--
--         , responseDeleteComputeEnvironment $
--             deleteComputeEnvironmentResponse
--
--         , responseUpdateComputeEnvironment $
--             updateComputeEnvironmentResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDescribeJobQueues $
--             describeJobQueuesResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseDeregisterJobDefinition $
--             deregisterJobDefinitionResponse
--
--         , responseDeleteJobQueue $
--             deleteJobQueueResponse
--
--         , responseUpdateJobQueue $
--             updateJobQueueResponse
--
--         , responseDescribeJobDefinitions $
--             describeJobDefinitionsResponse
--
--         , responseListJobs $
--             listJobsResponse
--
--         , responseDescribeComputeEnvironments $
--             describeComputeEnvironmentsResponse
--
--         , responseTerminateJob $
--             terminateJobResponse
--
--         , responseRegisterJobDefinition $
--             registerJobDefinitionResponse
--
--         , responseSubmitJob $
--             submitJobResponse
--
--         , responseCreateJobQueue $
--             createJobQueueResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--           ]
--     ]

-- Requests

requestCreateComputeEnvironment :: CreateComputeEnvironment -> TestTree
requestCreateComputeEnvironment =
  req
    "CreateComputeEnvironment"
    "fixture/CreateComputeEnvironment.yaml"

requestCancelJob :: CancelJob -> TestTree
requestCancelJob =
  req
    "CancelJob"
    "fixture/CancelJob.yaml"

requestDescribeJobs :: DescribeJobs -> TestTree
requestDescribeJobs =
  req
    "DescribeJobs"
    "fixture/DescribeJobs.yaml"

requestDeleteComputeEnvironment :: DeleteComputeEnvironment -> TestTree
requestDeleteComputeEnvironment =
  req
    "DeleteComputeEnvironment"
    "fixture/DeleteComputeEnvironment.yaml"

requestUpdateComputeEnvironment :: UpdateComputeEnvironment -> TestTree
requestUpdateComputeEnvironment =
  req
    "UpdateComputeEnvironment"
    "fixture/UpdateComputeEnvironment.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDescribeJobQueues :: DescribeJobQueues -> TestTree
requestDescribeJobQueues =
  req
    "DescribeJobQueues"
    "fixture/DescribeJobQueues.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestDeregisterJobDefinition :: DeregisterJobDefinition -> TestTree
requestDeregisterJobDefinition =
  req
    "DeregisterJobDefinition"
    "fixture/DeregisterJobDefinition.yaml"

requestDeleteJobQueue :: DeleteJobQueue -> TestTree
requestDeleteJobQueue =
  req
    "DeleteJobQueue"
    "fixture/DeleteJobQueue.yaml"

requestUpdateJobQueue :: UpdateJobQueue -> TestTree
requestUpdateJobQueue =
  req
    "UpdateJobQueue"
    "fixture/UpdateJobQueue.yaml"

requestDescribeJobDefinitions :: DescribeJobDefinitions -> TestTree
requestDescribeJobDefinitions =
  req
    "DescribeJobDefinitions"
    "fixture/DescribeJobDefinitions.yaml"

requestListJobs :: ListJobs -> TestTree
requestListJobs =
  req
    "ListJobs"
    "fixture/ListJobs.yaml"

requestDescribeComputeEnvironments :: DescribeComputeEnvironments -> TestTree
requestDescribeComputeEnvironments =
  req
    "DescribeComputeEnvironments"
    "fixture/DescribeComputeEnvironments.yaml"

requestTerminateJob :: TerminateJob -> TestTree
requestTerminateJob =
  req
    "TerminateJob"
    "fixture/TerminateJob.yaml"

requestRegisterJobDefinition :: RegisterJobDefinition -> TestTree
requestRegisterJobDefinition =
  req
    "RegisterJobDefinition"
    "fixture/RegisterJobDefinition.yaml"

requestSubmitJob :: SubmitJob -> TestTree
requestSubmitJob =
  req
    "SubmitJob"
    "fixture/SubmitJob.yaml"

requestCreateJobQueue :: CreateJobQueue -> TestTree
requestCreateJobQueue =
  req
    "CreateJobQueue"
    "fixture/CreateJobQueue.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

-- Responses

responseCreateComputeEnvironment :: CreateComputeEnvironmentResponse -> TestTree
responseCreateComputeEnvironment =
  res
    "CreateComputeEnvironmentResponse"
    "fixture/CreateComputeEnvironmentResponse.proto"
    batch
    (Proxy :: Proxy CreateComputeEnvironment)

responseCancelJob :: CancelJobResponse -> TestTree
responseCancelJob =
  res
    "CancelJobResponse"
    "fixture/CancelJobResponse.proto"
    batch
    (Proxy :: Proxy CancelJob)

responseDescribeJobs :: DescribeJobsResponse -> TestTree
responseDescribeJobs =
  res
    "DescribeJobsResponse"
    "fixture/DescribeJobsResponse.proto"
    batch
    (Proxy :: Proxy DescribeJobs)

responseDeleteComputeEnvironment :: DeleteComputeEnvironmentResponse -> TestTree
responseDeleteComputeEnvironment =
  res
    "DeleteComputeEnvironmentResponse"
    "fixture/DeleteComputeEnvironmentResponse.proto"
    batch
    (Proxy :: Proxy DeleteComputeEnvironment)

responseUpdateComputeEnvironment :: UpdateComputeEnvironmentResponse -> TestTree
responseUpdateComputeEnvironment =
  res
    "UpdateComputeEnvironmentResponse"
    "fixture/UpdateComputeEnvironmentResponse.proto"
    batch
    (Proxy :: Proxy UpdateComputeEnvironment)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    batch
    (Proxy :: Proxy UntagResource)

responseDescribeJobQueues :: DescribeJobQueuesResponse -> TestTree
responseDescribeJobQueues =
  res
    "DescribeJobQueuesResponse"
    "fixture/DescribeJobQueuesResponse.proto"
    batch
    (Proxy :: Proxy DescribeJobQueues)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    batch
    (Proxy :: Proxy TagResource)

responseDeregisterJobDefinition :: DeregisterJobDefinitionResponse -> TestTree
responseDeregisterJobDefinition =
  res
    "DeregisterJobDefinitionResponse"
    "fixture/DeregisterJobDefinitionResponse.proto"
    batch
    (Proxy :: Proxy DeregisterJobDefinition)

responseDeleteJobQueue :: DeleteJobQueueResponse -> TestTree
responseDeleteJobQueue =
  res
    "DeleteJobQueueResponse"
    "fixture/DeleteJobQueueResponse.proto"
    batch
    (Proxy :: Proxy DeleteJobQueue)

responseUpdateJobQueue :: UpdateJobQueueResponse -> TestTree
responseUpdateJobQueue =
  res
    "UpdateJobQueueResponse"
    "fixture/UpdateJobQueueResponse.proto"
    batch
    (Proxy :: Proxy UpdateJobQueue)

responseDescribeJobDefinitions :: DescribeJobDefinitionsResponse -> TestTree
responseDescribeJobDefinitions =
  res
    "DescribeJobDefinitionsResponse"
    "fixture/DescribeJobDefinitionsResponse.proto"
    batch
    (Proxy :: Proxy DescribeJobDefinitions)

responseListJobs :: ListJobsResponse -> TestTree
responseListJobs =
  res
    "ListJobsResponse"
    "fixture/ListJobsResponse.proto"
    batch
    (Proxy :: Proxy ListJobs)

responseDescribeComputeEnvironments :: DescribeComputeEnvironmentsResponse -> TestTree
responseDescribeComputeEnvironments =
  res
    "DescribeComputeEnvironmentsResponse"
    "fixture/DescribeComputeEnvironmentsResponse.proto"
    batch
    (Proxy :: Proxy DescribeComputeEnvironments)

responseTerminateJob :: TerminateJobResponse -> TestTree
responseTerminateJob =
  res
    "TerminateJobResponse"
    "fixture/TerminateJobResponse.proto"
    batch
    (Proxy :: Proxy TerminateJob)

responseRegisterJobDefinition :: RegisterJobDefinitionResponse -> TestTree
responseRegisterJobDefinition =
  res
    "RegisterJobDefinitionResponse"
    "fixture/RegisterJobDefinitionResponse.proto"
    batch
    (Proxy :: Proxy RegisterJobDefinition)

responseSubmitJob :: SubmitJobResponse -> TestTree
responseSubmitJob =
  res
    "SubmitJobResponse"
    "fixture/SubmitJobResponse.proto"
    batch
    (Proxy :: Proxy SubmitJob)

responseCreateJobQueue :: CreateJobQueueResponse -> TestTree
responseCreateJobQueue =
  res
    "CreateJobQueueResponse"
    "fixture/CreateJobQueueResponse.proto"
    batch
    (Proxy :: Proxy CreateJobQueue)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    batch
    (Proxy :: Proxy ListTagsForResource)
