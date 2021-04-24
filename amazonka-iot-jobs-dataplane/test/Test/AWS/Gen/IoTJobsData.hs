{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.IoTJobsData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.IoTJobsData where

import Data.Proxy
import Network.AWS.IoTJobsData
import Test.AWS.Fixture
import Test.AWS.IoTJobsData.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetPendingJobExecutions $
--             getPendingJobExecutions
--
--         , requestUpdateJobExecution $
--             updateJobExecution
--
--         , requestDescribeJobExecution $
--             describeJobExecution
--
--         , requestStartNextPendingJobExecution $
--             startNextPendingJobExecution
--
--           ]

--     , testGroup "response"
--         [ responseGetPendingJobExecutions $
--             getPendingJobExecutionsResponse
--
--         , responseUpdateJobExecution $
--             updateJobExecutionResponse
--
--         , responseDescribeJobExecution $
--             describeJobExecutionResponse
--
--         , responseStartNextPendingJobExecution $
--             startNextPendingJobExecutionResponse
--
--           ]
--     ]

-- Requests

requestGetPendingJobExecutions :: GetPendingJobExecutions -> TestTree
requestGetPendingJobExecutions =
  req
    "GetPendingJobExecutions"
    "fixture/GetPendingJobExecutions.yaml"

requestUpdateJobExecution :: UpdateJobExecution -> TestTree
requestUpdateJobExecution =
  req
    "UpdateJobExecution"
    "fixture/UpdateJobExecution.yaml"

requestDescribeJobExecution :: DescribeJobExecution -> TestTree
requestDescribeJobExecution =
  req
    "DescribeJobExecution"
    "fixture/DescribeJobExecution.yaml"

requestStartNextPendingJobExecution :: StartNextPendingJobExecution -> TestTree
requestStartNextPendingJobExecution =
  req
    "StartNextPendingJobExecution"
    "fixture/StartNextPendingJobExecution.yaml"

-- Responses

responseGetPendingJobExecutions :: GetPendingJobExecutionsResponse -> TestTree
responseGetPendingJobExecutions =
  res
    "GetPendingJobExecutionsResponse"
    "fixture/GetPendingJobExecutionsResponse.proto"
    ioTJobsData
    (Proxy :: Proxy GetPendingJobExecutions)

responseUpdateJobExecution :: UpdateJobExecutionResponse -> TestTree
responseUpdateJobExecution =
  res
    "UpdateJobExecutionResponse"
    "fixture/UpdateJobExecutionResponse.proto"
    ioTJobsData
    (Proxy :: Proxy UpdateJobExecution)

responseDescribeJobExecution :: DescribeJobExecutionResponse -> TestTree
responseDescribeJobExecution =
  res
    "DescribeJobExecutionResponse"
    "fixture/DescribeJobExecutionResponse.proto"
    ioTJobsData
    (Proxy :: Proxy DescribeJobExecution)

responseStartNextPendingJobExecution :: StartNextPendingJobExecutionResponse -> TestTree
responseStartNextPendingJobExecution =
  res
    "StartNextPendingJobExecutionResponse"
    "fixture/StartNextPendingJobExecutionResponse.proto"
    ioTJobsData
    (Proxy :: Proxy StartNextPendingJobExecution)
