{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.ResourceGroupsTagging
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.ResourceGroupsTagging where

import Data.Proxy
import Network.AWS.ResourceGroupsTagging
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.ResourceGroupsTagging.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetComplianceSummary $
--             getComplianceSummary
--
--         , requestStartReportCreation $
--             startReportCreation
--
--         , requestTagResources $
--             tagResources
--
--         , requestGetTagKeys $
--             getTagKeys
--
--         , requestDescribeReportCreation $
--             describeReportCreation
--
--         , requestGetResources $
--             getResources
--
--         , requestGetTagValues $
--             getTagValues
--
--         , requestUntagResources $
--             untagResources
--
--           ]

--     , testGroup "response"
--         [ responseGetComplianceSummary $
--             getComplianceSummaryResponse
--
--         , responseStartReportCreation $
--             startReportCreationResponse
--
--         , responseTagResources $
--             tagResourcesResponse
--
--         , responseGetTagKeys $
--             getTagKeysResponse
--
--         , responseDescribeReportCreation $
--             describeReportCreationResponse
--
--         , responseGetResources $
--             getResourcesResponse
--
--         , responseGetTagValues $
--             getTagValuesResponse
--
--         , responseUntagResources $
--             untagResourcesResponse
--
--           ]
--     ]

-- Requests

requestGetComplianceSummary :: GetComplianceSummary -> TestTree
requestGetComplianceSummary =
  req
    "GetComplianceSummary"
    "fixture/GetComplianceSummary.yaml"

requestStartReportCreation :: StartReportCreation -> TestTree
requestStartReportCreation =
  req
    "StartReportCreation"
    "fixture/StartReportCreation.yaml"

requestTagResources :: TagResources -> TestTree
requestTagResources =
  req
    "TagResources"
    "fixture/TagResources.yaml"

requestGetTagKeys :: GetTagKeys -> TestTree
requestGetTagKeys =
  req
    "GetTagKeys"
    "fixture/GetTagKeys.yaml"

requestDescribeReportCreation :: DescribeReportCreation -> TestTree
requestDescribeReportCreation =
  req
    "DescribeReportCreation"
    "fixture/DescribeReportCreation.yaml"

requestGetResources :: GetResources -> TestTree
requestGetResources =
  req
    "GetResources"
    "fixture/GetResources.yaml"

requestGetTagValues :: GetTagValues -> TestTree
requestGetTagValues =
  req
    "GetTagValues"
    "fixture/GetTagValues.yaml"

requestUntagResources :: UntagResources -> TestTree
requestUntagResources =
  req
    "UntagResources"
    "fixture/UntagResources.yaml"

-- Responses

responseGetComplianceSummary :: GetComplianceSummaryResponse -> TestTree
responseGetComplianceSummary =
  res
    "GetComplianceSummaryResponse"
    "fixture/GetComplianceSummaryResponse.proto"
    resourceGroupsTagging
    (Proxy :: Proxy GetComplianceSummary)

responseStartReportCreation :: StartReportCreationResponse -> TestTree
responseStartReportCreation =
  res
    "StartReportCreationResponse"
    "fixture/StartReportCreationResponse.proto"
    resourceGroupsTagging
    (Proxy :: Proxy StartReportCreation)

responseTagResources :: TagResourcesResponse -> TestTree
responseTagResources =
  res
    "TagResourcesResponse"
    "fixture/TagResourcesResponse.proto"
    resourceGroupsTagging
    (Proxy :: Proxy TagResources)

responseGetTagKeys :: GetTagKeysResponse -> TestTree
responseGetTagKeys =
  res
    "GetTagKeysResponse"
    "fixture/GetTagKeysResponse.proto"
    resourceGroupsTagging
    (Proxy :: Proxy GetTagKeys)

responseDescribeReportCreation :: DescribeReportCreationResponse -> TestTree
responseDescribeReportCreation =
  res
    "DescribeReportCreationResponse"
    "fixture/DescribeReportCreationResponse.proto"
    resourceGroupsTagging
    (Proxy :: Proxy DescribeReportCreation)

responseGetResources :: GetResourcesResponse -> TestTree
responseGetResources =
  res
    "GetResourcesResponse"
    "fixture/GetResourcesResponse.proto"
    resourceGroupsTagging
    (Proxy :: Proxy GetResources)

responseGetTagValues :: GetTagValuesResponse -> TestTree
responseGetTagValues =
  res
    "GetTagValuesResponse"
    "fixture/GetTagValuesResponse.proto"
    resourceGroupsTagging
    (Proxy :: Proxy GetTagValues)

responseUntagResources :: UntagResourcesResponse -> TestTree
responseUntagResources =
  res
    "UntagResourcesResponse"
    "fixture/UntagResourcesResponse.proto"
    resourceGroupsTagging
    (Proxy :: Proxy UntagResources)
