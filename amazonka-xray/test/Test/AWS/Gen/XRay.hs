{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.XRay
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.XRay where

import Data.Proxy
import Network.AWS.XRay
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.XRay.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetSamplingTargets $
--             getSamplingTargets
--
--         , requestGetSamplingStatisticSummaries $
--             getSamplingStatisticSummaries
--
--         , requestGetInsightImpactGraph $
--             getInsightImpactGraph
--
--         , requestGetTraceGraph $
--             getTraceGraph
--
--         , requestUntagResource $
--             untagResource
--
--         , requestCreateGroup $
--             createGroup
--
--         , requestGetInsight $
--             getInsight
--
--         , requestPutTraceSegments $
--             putTraceSegments
--
--         , requestGetTimeSeriesServiceStatistics $
--             getTimeSeriesServiceStatistics
--
--         , requestTagResource $
--             tagResource
--
--         , requestPutTelemetryRecords $
--             putTelemetryRecords
--
--         , requestBatchGetTraces $
--             batchGetTraces
--
--         , requestGetTraceSummaries $
--             getTraceSummaries
--
--         , requestGetInsightSummaries $
--             getInsightSummaries
--
--         , requestGetGroups $
--             getGroups
--
--         , requestGetInsightEvents $
--             getInsightEvents
--
--         , requestGetServiceGraph $
--             getServiceGraph
--
--         , requestPutEncryptionConfig $
--             putEncryptionConfig
--
--         , requestDeleteSamplingRule $
--             deleteSamplingRule
--
--         , requestUpdateSamplingRule $
--             updateSamplingRule
--
--         , requestGetGroup $
--             getGroup
--
--         , requestCreateSamplingRule $
--             createSamplingRule
--
--         , requestUpdateGroup $
--             updateGroup
--
--         , requestDeleteGroup $
--             deleteGroup
--
--         , requestGetEncryptionConfig $
--             getEncryptionConfig
--
--         , requestGetSamplingRules $
--             getSamplingRules
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--           ]

--     , testGroup "response"
--         [ responseGetSamplingTargets $
--             getSamplingTargetsResponse
--
--         , responseGetSamplingStatisticSummaries $
--             getSamplingStatisticSummariesResponse
--
--         , responseGetInsightImpactGraph $
--             getInsightImpactGraphResponse
--
--         , responseGetTraceGraph $
--             getTraceGraphResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseCreateGroup $
--             createGroupResponse
--
--         , responseGetInsight $
--             getInsightResponse
--
--         , responsePutTraceSegments $
--             putTraceSegmentsResponse
--
--         , responseGetTimeSeriesServiceStatistics $
--             getTimeSeriesServiceStatisticsResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responsePutTelemetryRecords $
--             putTelemetryRecordsResponse
--
--         , responseBatchGetTraces $
--             batchGetTracesResponse
--
--         , responseGetTraceSummaries $
--             getTraceSummariesResponse
--
--         , responseGetInsightSummaries $
--             getInsightSummariesResponse
--
--         , responseGetGroups $
--             getGroupsResponse
--
--         , responseGetInsightEvents $
--             getInsightEventsResponse
--
--         , responseGetServiceGraph $
--             getServiceGraphResponse
--
--         , responsePutEncryptionConfig $
--             putEncryptionConfigResponse
--
--         , responseDeleteSamplingRule $
--             deleteSamplingRuleResponse
--
--         , responseUpdateSamplingRule $
--             updateSamplingRuleResponse
--
--         , responseGetGroup $
--             getGroupResponse
--
--         , responseCreateSamplingRule $
--             createSamplingRuleResponse
--
--         , responseUpdateGroup $
--             updateGroupResponse
--
--         , responseDeleteGroup $
--             deleteGroupResponse
--
--         , responseGetEncryptionConfig $
--             getEncryptionConfigResponse
--
--         , responseGetSamplingRules $
--             getSamplingRulesResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--           ]
--     ]

-- Requests

requestGetSamplingTargets :: GetSamplingTargets -> TestTree
requestGetSamplingTargets =
  req
    "GetSamplingTargets"
    "fixture/GetSamplingTargets.yaml"

requestGetSamplingStatisticSummaries :: GetSamplingStatisticSummaries -> TestTree
requestGetSamplingStatisticSummaries =
  req
    "GetSamplingStatisticSummaries"
    "fixture/GetSamplingStatisticSummaries.yaml"

requestGetInsightImpactGraph :: GetInsightImpactGraph -> TestTree
requestGetInsightImpactGraph =
  req
    "GetInsightImpactGraph"
    "fixture/GetInsightImpactGraph.yaml"

requestGetTraceGraph :: GetTraceGraph -> TestTree
requestGetTraceGraph =
  req
    "GetTraceGraph"
    "fixture/GetTraceGraph.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestCreateGroup :: CreateGroup -> TestTree
requestCreateGroup =
  req
    "CreateGroup"
    "fixture/CreateGroup.yaml"

requestGetInsight :: GetInsight -> TestTree
requestGetInsight =
  req
    "GetInsight"
    "fixture/GetInsight.yaml"

requestPutTraceSegments :: PutTraceSegments -> TestTree
requestPutTraceSegments =
  req
    "PutTraceSegments"
    "fixture/PutTraceSegments.yaml"

requestGetTimeSeriesServiceStatistics :: GetTimeSeriesServiceStatistics -> TestTree
requestGetTimeSeriesServiceStatistics =
  req
    "GetTimeSeriesServiceStatistics"
    "fixture/GetTimeSeriesServiceStatistics.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestPutTelemetryRecords :: PutTelemetryRecords -> TestTree
requestPutTelemetryRecords =
  req
    "PutTelemetryRecords"
    "fixture/PutTelemetryRecords.yaml"

requestBatchGetTraces :: BatchGetTraces -> TestTree
requestBatchGetTraces =
  req
    "BatchGetTraces"
    "fixture/BatchGetTraces.yaml"

requestGetTraceSummaries :: GetTraceSummaries -> TestTree
requestGetTraceSummaries =
  req
    "GetTraceSummaries"
    "fixture/GetTraceSummaries.yaml"

requestGetInsightSummaries :: GetInsightSummaries -> TestTree
requestGetInsightSummaries =
  req
    "GetInsightSummaries"
    "fixture/GetInsightSummaries.yaml"

requestGetGroups :: GetGroups -> TestTree
requestGetGroups =
  req
    "GetGroups"
    "fixture/GetGroups.yaml"

requestGetInsightEvents :: GetInsightEvents -> TestTree
requestGetInsightEvents =
  req
    "GetInsightEvents"
    "fixture/GetInsightEvents.yaml"

requestGetServiceGraph :: GetServiceGraph -> TestTree
requestGetServiceGraph =
  req
    "GetServiceGraph"
    "fixture/GetServiceGraph.yaml"

requestPutEncryptionConfig :: PutEncryptionConfig -> TestTree
requestPutEncryptionConfig =
  req
    "PutEncryptionConfig"
    "fixture/PutEncryptionConfig.yaml"

requestDeleteSamplingRule :: DeleteSamplingRule -> TestTree
requestDeleteSamplingRule =
  req
    "DeleteSamplingRule"
    "fixture/DeleteSamplingRule.yaml"

requestUpdateSamplingRule :: UpdateSamplingRule -> TestTree
requestUpdateSamplingRule =
  req
    "UpdateSamplingRule"
    "fixture/UpdateSamplingRule.yaml"

requestGetGroup :: GetGroup -> TestTree
requestGetGroup =
  req
    "GetGroup"
    "fixture/GetGroup.yaml"

requestCreateSamplingRule :: CreateSamplingRule -> TestTree
requestCreateSamplingRule =
  req
    "CreateSamplingRule"
    "fixture/CreateSamplingRule.yaml"

requestUpdateGroup :: UpdateGroup -> TestTree
requestUpdateGroup =
  req
    "UpdateGroup"
    "fixture/UpdateGroup.yaml"

requestDeleteGroup :: DeleteGroup -> TestTree
requestDeleteGroup =
  req
    "DeleteGroup"
    "fixture/DeleteGroup.yaml"

requestGetEncryptionConfig :: GetEncryptionConfig -> TestTree
requestGetEncryptionConfig =
  req
    "GetEncryptionConfig"
    "fixture/GetEncryptionConfig.yaml"

requestGetSamplingRules :: GetSamplingRules -> TestTree
requestGetSamplingRules =
  req
    "GetSamplingRules"
    "fixture/GetSamplingRules.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

-- Responses

responseGetSamplingTargets :: GetSamplingTargetsResponse -> TestTree
responseGetSamplingTargets =
  res
    "GetSamplingTargetsResponse"
    "fixture/GetSamplingTargetsResponse.proto"
    xRay
    (Proxy :: Proxy GetSamplingTargets)

responseGetSamplingStatisticSummaries :: GetSamplingStatisticSummariesResponse -> TestTree
responseGetSamplingStatisticSummaries =
  res
    "GetSamplingStatisticSummariesResponse"
    "fixture/GetSamplingStatisticSummariesResponse.proto"
    xRay
    (Proxy :: Proxy GetSamplingStatisticSummaries)

responseGetInsightImpactGraph :: GetInsightImpactGraphResponse -> TestTree
responseGetInsightImpactGraph =
  res
    "GetInsightImpactGraphResponse"
    "fixture/GetInsightImpactGraphResponse.proto"
    xRay
    (Proxy :: Proxy GetInsightImpactGraph)

responseGetTraceGraph :: GetTraceGraphResponse -> TestTree
responseGetTraceGraph =
  res
    "GetTraceGraphResponse"
    "fixture/GetTraceGraphResponse.proto"
    xRay
    (Proxy :: Proxy GetTraceGraph)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    xRay
    (Proxy :: Proxy UntagResource)

responseCreateGroup :: CreateGroupResponse -> TestTree
responseCreateGroup =
  res
    "CreateGroupResponse"
    "fixture/CreateGroupResponse.proto"
    xRay
    (Proxy :: Proxy CreateGroup)

responseGetInsight :: GetInsightResponse -> TestTree
responseGetInsight =
  res
    "GetInsightResponse"
    "fixture/GetInsightResponse.proto"
    xRay
    (Proxy :: Proxy GetInsight)

responsePutTraceSegments :: PutTraceSegmentsResponse -> TestTree
responsePutTraceSegments =
  res
    "PutTraceSegmentsResponse"
    "fixture/PutTraceSegmentsResponse.proto"
    xRay
    (Proxy :: Proxy PutTraceSegments)

responseGetTimeSeriesServiceStatistics :: GetTimeSeriesServiceStatisticsResponse -> TestTree
responseGetTimeSeriesServiceStatistics =
  res
    "GetTimeSeriesServiceStatisticsResponse"
    "fixture/GetTimeSeriesServiceStatisticsResponse.proto"
    xRay
    (Proxy :: Proxy GetTimeSeriesServiceStatistics)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    xRay
    (Proxy :: Proxy TagResource)

responsePutTelemetryRecords :: PutTelemetryRecordsResponse -> TestTree
responsePutTelemetryRecords =
  res
    "PutTelemetryRecordsResponse"
    "fixture/PutTelemetryRecordsResponse.proto"
    xRay
    (Proxy :: Proxy PutTelemetryRecords)

responseBatchGetTraces :: BatchGetTracesResponse -> TestTree
responseBatchGetTraces =
  res
    "BatchGetTracesResponse"
    "fixture/BatchGetTracesResponse.proto"
    xRay
    (Proxy :: Proxy BatchGetTraces)

responseGetTraceSummaries :: GetTraceSummariesResponse -> TestTree
responseGetTraceSummaries =
  res
    "GetTraceSummariesResponse"
    "fixture/GetTraceSummariesResponse.proto"
    xRay
    (Proxy :: Proxy GetTraceSummaries)

responseGetInsightSummaries :: GetInsightSummariesResponse -> TestTree
responseGetInsightSummaries =
  res
    "GetInsightSummariesResponse"
    "fixture/GetInsightSummariesResponse.proto"
    xRay
    (Proxy :: Proxy GetInsightSummaries)

responseGetGroups :: GetGroupsResponse -> TestTree
responseGetGroups =
  res
    "GetGroupsResponse"
    "fixture/GetGroupsResponse.proto"
    xRay
    (Proxy :: Proxy GetGroups)

responseGetInsightEvents :: GetInsightEventsResponse -> TestTree
responseGetInsightEvents =
  res
    "GetInsightEventsResponse"
    "fixture/GetInsightEventsResponse.proto"
    xRay
    (Proxy :: Proxy GetInsightEvents)

responseGetServiceGraph :: GetServiceGraphResponse -> TestTree
responseGetServiceGraph =
  res
    "GetServiceGraphResponse"
    "fixture/GetServiceGraphResponse.proto"
    xRay
    (Proxy :: Proxy GetServiceGraph)

responsePutEncryptionConfig :: PutEncryptionConfigResponse -> TestTree
responsePutEncryptionConfig =
  res
    "PutEncryptionConfigResponse"
    "fixture/PutEncryptionConfigResponse.proto"
    xRay
    (Proxy :: Proxy PutEncryptionConfig)

responseDeleteSamplingRule :: DeleteSamplingRuleResponse -> TestTree
responseDeleteSamplingRule =
  res
    "DeleteSamplingRuleResponse"
    "fixture/DeleteSamplingRuleResponse.proto"
    xRay
    (Proxy :: Proxy DeleteSamplingRule)

responseUpdateSamplingRule :: UpdateSamplingRuleResponse -> TestTree
responseUpdateSamplingRule =
  res
    "UpdateSamplingRuleResponse"
    "fixture/UpdateSamplingRuleResponse.proto"
    xRay
    (Proxy :: Proxy UpdateSamplingRule)

responseGetGroup :: GetGroupResponse -> TestTree
responseGetGroup =
  res
    "GetGroupResponse"
    "fixture/GetGroupResponse.proto"
    xRay
    (Proxy :: Proxy GetGroup)

responseCreateSamplingRule :: CreateSamplingRuleResponse -> TestTree
responseCreateSamplingRule =
  res
    "CreateSamplingRuleResponse"
    "fixture/CreateSamplingRuleResponse.proto"
    xRay
    (Proxy :: Proxy CreateSamplingRule)

responseUpdateGroup :: UpdateGroupResponse -> TestTree
responseUpdateGroup =
  res
    "UpdateGroupResponse"
    "fixture/UpdateGroupResponse.proto"
    xRay
    (Proxy :: Proxy UpdateGroup)

responseDeleteGroup :: DeleteGroupResponse -> TestTree
responseDeleteGroup =
  res
    "DeleteGroupResponse"
    "fixture/DeleteGroupResponse.proto"
    xRay
    (Proxy :: Proxy DeleteGroup)

responseGetEncryptionConfig :: GetEncryptionConfigResponse -> TestTree
responseGetEncryptionConfig =
  res
    "GetEncryptionConfigResponse"
    "fixture/GetEncryptionConfigResponse.proto"
    xRay
    (Proxy :: Proxy GetEncryptionConfig)

responseGetSamplingRules :: GetSamplingRulesResponse -> TestTree
responseGetSamplingRules =
  res
    "GetSamplingRulesResponse"
    "fixture/GetSamplingRulesResponse.proto"
    xRay
    (Proxy :: Proxy GetSamplingRules)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    xRay
    (Proxy :: Proxy ListTagsForResource)
