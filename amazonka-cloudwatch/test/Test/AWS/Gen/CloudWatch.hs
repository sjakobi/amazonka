{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CloudWatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CloudWatch where

import Data.Proxy
import Network.AWS.CloudWatch
import Test.AWS.CloudWatch.Internal
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
--         [ requestEnableAlarmActions $
--             enableAlarmActions
--
--         , requestGetMetricStatistics $
--             getMetricStatistics
--
--         , requestPutInsightRule $
--             putInsightRule
--
--         , requestDeleteAlarms $
--             deleteAlarms
--
--         , requestGetMetricWidgetImage $
--             getMetricWidgetImage
--
--         , requestDescribeInsightRules $
--             describeInsightRules
--
--         , requestPutMetricAlarm $
--             putMetricAlarm
--
--         , requestUntagResource $
--             untagResource
--
--         , requestGetInsightRuleReport $
--             getInsightRuleReport
--
--         , requestTagResource $
--             tagResource
--
--         , requestDescribeAnomalyDetectors $
--             describeAnomalyDetectors
--
--         , requestListMetrics $
--             listMetrics
--
--         , requestPutMetricData $
--             putMetricData
--
--         , requestPutDashboard $
--             putDashboard
--
--         , requestDescribeAlarmsForMetric $
--             describeAlarmsForMetric
--
--         , requestPutAnomalyDetector $
--             putAnomalyDetector
--
--         , requestDeleteInsightRules $
--             deleteInsightRules
--
--         , requestDisableAlarmActions $
--             disableAlarmActions
--
--         , requestGetDashboard $
--             getDashboard
--
--         , requestPutCompositeAlarm $
--             putCompositeAlarm
--
--         , requestDisableInsightRules $
--             disableInsightRules
--
--         , requestDescribeAlarmHistory $
--             describeAlarmHistory
--
--         , requestDeleteDashboards $
--             deleteDashboards
--
--         , requestSetAlarmState $
--             setAlarmState
--
--         , requestListDashboards $
--             listDashboards
--
--         , requestDescribeAlarms $
--             describeAlarms
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDeleteAnomalyDetector $
--             deleteAnomalyDetector
--
--         , requestEnableInsightRules $
--             enableInsightRules
--
--         , requestGetMetricData $
--             getMetricData
--
--           ]

--     , testGroup "response"
--         [ responseEnableAlarmActions $
--             enableAlarmActionsResponse
--
--         , responseGetMetricStatistics $
--             getMetricStatisticsResponse
--
--         , responsePutInsightRule $
--             putInsightRuleResponse
--
--         , responseDeleteAlarms $
--             deleteAlarmsResponse
--
--         , responseGetMetricWidgetImage $
--             getMetricWidgetImageResponse
--
--         , responseDescribeInsightRules $
--             describeInsightRulesResponse
--
--         , responsePutMetricAlarm $
--             putMetricAlarmResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseGetInsightRuleReport $
--             getInsightRuleReportResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseDescribeAnomalyDetectors $
--             describeAnomalyDetectorsResponse
--
--         , responseListMetrics $
--             listMetricsResponse
--
--         , responsePutMetricData $
--             putMetricDataResponse
--
--         , responsePutDashboard $
--             putDashboardResponse
--
--         , responseDescribeAlarmsForMetric $
--             describeAlarmsForMetricResponse
--
--         , responsePutAnomalyDetector $
--             putAnomalyDetectorResponse
--
--         , responseDeleteInsightRules $
--             deleteInsightRulesResponse
--
--         , responseDisableAlarmActions $
--             disableAlarmActionsResponse
--
--         , responseGetDashboard $
--             getDashboardResponse
--
--         , responsePutCompositeAlarm $
--             putCompositeAlarmResponse
--
--         , responseDisableInsightRules $
--             disableInsightRulesResponse
--
--         , responseDescribeAlarmHistory $
--             describeAlarmHistoryResponse
--
--         , responseDeleteDashboards $
--             deleteDashboardsResponse
--
--         , responseSetAlarmState $
--             setAlarmStateResponse
--
--         , responseListDashboards $
--             listDashboardsResponse
--
--         , responseDescribeAlarms $
--             describeAlarmsResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDeleteAnomalyDetector $
--             deleteAnomalyDetectorResponse
--
--         , responseEnableInsightRules $
--             enableInsightRulesResponse
--
--         , responseGetMetricData $
--             getMetricDataResponse
--
--           ]
--     ]

-- Requests

requestEnableAlarmActions :: EnableAlarmActions -> TestTree
requestEnableAlarmActions =
  req
    "EnableAlarmActions"
    "fixture/EnableAlarmActions.yaml"

requestGetMetricStatistics :: GetMetricStatistics -> TestTree
requestGetMetricStatistics =
  req
    "GetMetricStatistics"
    "fixture/GetMetricStatistics.yaml"

requestPutInsightRule :: PutInsightRule -> TestTree
requestPutInsightRule =
  req
    "PutInsightRule"
    "fixture/PutInsightRule.yaml"

requestDeleteAlarms :: DeleteAlarms -> TestTree
requestDeleteAlarms =
  req
    "DeleteAlarms"
    "fixture/DeleteAlarms.yaml"

requestGetMetricWidgetImage :: GetMetricWidgetImage -> TestTree
requestGetMetricWidgetImage =
  req
    "GetMetricWidgetImage"
    "fixture/GetMetricWidgetImage.yaml"

requestDescribeInsightRules :: DescribeInsightRules -> TestTree
requestDescribeInsightRules =
  req
    "DescribeInsightRules"
    "fixture/DescribeInsightRules.yaml"

requestPutMetricAlarm :: PutMetricAlarm -> TestTree
requestPutMetricAlarm =
  req
    "PutMetricAlarm"
    "fixture/PutMetricAlarm.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestGetInsightRuleReport :: GetInsightRuleReport -> TestTree
requestGetInsightRuleReport =
  req
    "GetInsightRuleReport"
    "fixture/GetInsightRuleReport.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestDescribeAnomalyDetectors :: DescribeAnomalyDetectors -> TestTree
requestDescribeAnomalyDetectors =
  req
    "DescribeAnomalyDetectors"
    "fixture/DescribeAnomalyDetectors.yaml"

requestListMetrics :: ListMetrics -> TestTree
requestListMetrics =
  req
    "ListMetrics"
    "fixture/ListMetrics.yaml"

requestPutMetricData :: PutMetricData -> TestTree
requestPutMetricData =
  req
    "PutMetricData"
    "fixture/PutMetricData.yaml"

requestPutDashboard :: PutDashboard -> TestTree
requestPutDashboard =
  req
    "PutDashboard"
    "fixture/PutDashboard.yaml"

requestDescribeAlarmsForMetric :: DescribeAlarmsForMetric -> TestTree
requestDescribeAlarmsForMetric =
  req
    "DescribeAlarmsForMetric"
    "fixture/DescribeAlarmsForMetric.yaml"

requestPutAnomalyDetector :: PutAnomalyDetector -> TestTree
requestPutAnomalyDetector =
  req
    "PutAnomalyDetector"
    "fixture/PutAnomalyDetector.yaml"

requestDeleteInsightRules :: DeleteInsightRules -> TestTree
requestDeleteInsightRules =
  req
    "DeleteInsightRules"
    "fixture/DeleteInsightRules.yaml"

requestDisableAlarmActions :: DisableAlarmActions -> TestTree
requestDisableAlarmActions =
  req
    "DisableAlarmActions"
    "fixture/DisableAlarmActions.yaml"

requestGetDashboard :: GetDashboard -> TestTree
requestGetDashboard =
  req
    "GetDashboard"
    "fixture/GetDashboard.yaml"

requestPutCompositeAlarm :: PutCompositeAlarm -> TestTree
requestPutCompositeAlarm =
  req
    "PutCompositeAlarm"
    "fixture/PutCompositeAlarm.yaml"

requestDisableInsightRules :: DisableInsightRules -> TestTree
requestDisableInsightRules =
  req
    "DisableInsightRules"
    "fixture/DisableInsightRules.yaml"

requestDescribeAlarmHistory :: DescribeAlarmHistory -> TestTree
requestDescribeAlarmHistory =
  req
    "DescribeAlarmHistory"
    "fixture/DescribeAlarmHistory.yaml"

requestDeleteDashboards :: DeleteDashboards -> TestTree
requestDeleteDashboards =
  req
    "DeleteDashboards"
    "fixture/DeleteDashboards.yaml"

requestSetAlarmState :: SetAlarmState -> TestTree
requestSetAlarmState =
  req
    "SetAlarmState"
    "fixture/SetAlarmState.yaml"

requestListDashboards :: ListDashboards -> TestTree
requestListDashboards =
  req
    "ListDashboards"
    "fixture/ListDashboards.yaml"

requestDescribeAlarms :: DescribeAlarms -> TestTree
requestDescribeAlarms =
  req
    "DescribeAlarms"
    "fixture/DescribeAlarms.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteAnomalyDetector :: DeleteAnomalyDetector -> TestTree
requestDeleteAnomalyDetector =
  req
    "DeleteAnomalyDetector"
    "fixture/DeleteAnomalyDetector.yaml"

requestEnableInsightRules :: EnableInsightRules -> TestTree
requestEnableInsightRules =
  req
    "EnableInsightRules"
    "fixture/EnableInsightRules.yaml"

requestGetMetricData :: GetMetricData -> TestTree
requestGetMetricData =
  req
    "GetMetricData"
    "fixture/GetMetricData.yaml"

-- Responses

responseEnableAlarmActions :: EnableAlarmActionsResponse -> TestTree
responseEnableAlarmActions =
  res
    "EnableAlarmActionsResponse"
    "fixture/EnableAlarmActionsResponse.proto"
    cloudWatch
    (Proxy :: Proxy EnableAlarmActions)

responseGetMetricStatistics :: GetMetricStatisticsResponse -> TestTree
responseGetMetricStatistics =
  res
    "GetMetricStatisticsResponse"
    "fixture/GetMetricStatisticsResponse.proto"
    cloudWatch
    (Proxy :: Proxy GetMetricStatistics)

responsePutInsightRule :: PutInsightRuleResponse -> TestTree
responsePutInsightRule =
  res
    "PutInsightRuleResponse"
    "fixture/PutInsightRuleResponse.proto"
    cloudWatch
    (Proxy :: Proxy PutInsightRule)

responseDeleteAlarms :: DeleteAlarmsResponse -> TestTree
responseDeleteAlarms =
  res
    "DeleteAlarmsResponse"
    "fixture/DeleteAlarmsResponse.proto"
    cloudWatch
    (Proxy :: Proxy DeleteAlarms)

responseGetMetricWidgetImage :: GetMetricWidgetImageResponse -> TestTree
responseGetMetricWidgetImage =
  res
    "GetMetricWidgetImageResponse"
    "fixture/GetMetricWidgetImageResponse.proto"
    cloudWatch
    (Proxy :: Proxy GetMetricWidgetImage)

responseDescribeInsightRules :: DescribeInsightRulesResponse -> TestTree
responseDescribeInsightRules =
  res
    "DescribeInsightRulesResponse"
    "fixture/DescribeInsightRulesResponse.proto"
    cloudWatch
    (Proxy :: Proxy DescribeInsightRules)

responsePutMetricAlarm :: PutMetricAlarmResponse -> TestTree
responsePutMetricAlarm =
  res
    "PutMetricAlarmResponse"
    "fixture/PutMetricAlarmResponse.proto"
    cloudWatch
    (Proxy :: Proxy PutMetricAlarm)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    cloudWatch
    (Proxy :: Proxy UntagResource)

responseGetInsightRuleReport :: GetInsightRuleReportResponse -> TestTree
responseGetInsightRuleReport =
  res
    "GetInsightRuleReportResponse"
    "fixture/GetInsightRuleReportResponse.proto"
    cloudWatch
    (Proxy :: Proxy GetInsightRuleReport)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    cloudWatch
    (Proxy :: Proxy TagResource)

responseDescribeAnomalyDetectors :: DescribeAnomalyDetectorsResponse -> TestTree
responseDescribeAnomalyDetectors =
  res
    "DescribeAnomalyDetectorsResponse"
    "fixture/DescribeAnomalyDetectorsResponse.proto"
    cloudWatch
    (Proxy :: Proxy DescribeAnomalyDetectors)

responseListMetrics :: ListMetricsResponse -> TestTree
responseListMetrics =
  res
    "ListMetricsResponse"
    "fixture/ListMetricsResponse.proto"
    cloudWatch
    (Proxy :: Proxy ListMetrics)

responsePutMetricData :: PutMetricDataResponse -> TestTree
responsePutMetricData =
  res
    "PutMetricDataResponse"
    "fixture/PutMetricDataResponse.proto"
    cloudWatch
    (Proxy :: Proxy PutMetricData)

responsePutDashboard :: PutDashboardResponse -> TestTree
responsePutDashboard =
  res
    "PutDashboardResponse"
    "fixture/PutDashboardResponse.proto"
    cloudWatch
    (Proxy :: Proxy PutDashboard)

responseDescribeAlarmsForMetric :: DescribeAlarmsForMetricResponse -> TestTree
responseDescribeAlarmsForMetric =
  res
    "DescribeAlarmsForMetricResponse"
    "fixture/DescribeAlarmsForMetricResponse.proto"
    cloudWatch
    (Proxy :: Proxy DescribeAlarmsForMetric)

responsePutAnomalyDetector :: PutAnomalyDetectorResponse -> TestTree
responsePutAnomalyDetector =
  res
    "PutAnomalyDetectorResponse"
    "fixture/PutAnomalyDetectorResponse.proto"
    cloudWatch
    (Proxy :: Proxy PutAnomalyDetector)

responseDeleteInsightRules :: DeleteInsightRulesResponse -> TestTree
responseDeleteInsightRules =
  res
    "DeleteInsightRulesResponse"
    "fixture/DeleteInsightRulesResponse.proto"
    cloudWatch
    (Proxy :: Proxy DeleteInsightRules)

responseDisableAlarmActions :: DisableAlarmActionsResponse -> TestTree
responseDisableAlarmActions =
  res
    "DisableAlarmActionsResponse"
    "fixture/DisableAlarmActionsResponse.proto"
    cloudWatch
    (Proxy :: Proxy DisableAlarmActions)

responseGetDashboard :: GetDashboardResponse -> TestTree
responseGetDashboard =
  res
    "GetDashboardResponse"
    "fixture/GetDashboardResponse.proto"
    cloudWatch
    (Proxy :: Proxy GetDashboard)

responsePutCompositeAlarm :: PutCompositeAlarmResponse -> TestTree
responsePutCompositeAlarm =
  res
    "PutCompositeAlarmResponse"
    "fixture/PutCompositeAlarmResponse.proto"
    cloudWatch
    (Proxy :: Proxy PutCompositeAlarm)

responseDisableInsightRules :: DisableInsightRulesResponse -> TestTree
responseDisableInsightRules =
  res
    "DisableInsightRulesResponse"
    "fixture/DisableInsightRulesResponse.proto"
    cloudWatch
    (Proxy :: Proxy DisableInsightRules)

responseDescribeAlarmHistory :: DescribeAlarmHistoryResponse -> TestTree
responseDescribeAlarmHistory =
  res
    "DescribeAlarmHistoryResponse"
    "fixture/DescribeAlarmHistoryResponse.proto"
    cloudWatch
    (Proxy :: Proxy DescribeAlarmHistory)

responseDeleteDashboards :: DeleteDashboardsResponse -> TestTree
responseDeleteDashboards =
  res
    "DeleteDashboardsResponse"
    "fixture/DeleteDashboardsResponse.proto"
    cloudWatch
    (Proxy :: Proxy DeleteDashboards)

responseSetAlarmState :: SetAlarmStateResponse -> TestTree
responseSetAlarmState =
  res
    "SetAlarmStateResponse"
    "fixture/SetAlarmStateResponse.proto"
    cloudWatch
    (Proxy :: Proxy SetAlarmState)

responseListDashboards :: ListDashboardsResponse -> TestTree
responseListDashboards =
  res
    "ListDashboardsResponse"
    "fixture/ListDashboardsResponse.proto"
    cloudWatch
    (Proxy :: Proxy ListDashboards)

responseDescribeAlarms :: DescribeAlarmsResponse -> TestTree
responseDescribeAlarms =
  res
    "DescribeAlarmsResponse"
    "fixture/DescribeAlarmsResponse.proto"
    cloudWatch
    (Proxy :: Proxy DescribeAlarms)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    cloudWatch
    (Proxy :: Proxy ListTagsForResource)

responseDeleteAnomalyDetector :: DeleteAnomalyDetectorResponse -> TestTree
responseDeleteAnomalyDetector =
  res
    "DeleteAnomalyDetectorResponse"
    "fixture/DeleteAnomalyDetectorResponse.proto"
    cloudWatch
    (Proxy :: Proxy DeleteAnomalyDetector)

responseEnableInsightRules :: EnableInsightRulesResponse -> TestTree
responseEnableInsightRules =
  res
    "EnableInsightRulesResponse"
    "fixture/EnableInsightRulesResponse.proto"
    cloudWatch
    (Proxy :: Proxy EnableInsightRules)

responseGetMetricData :: GetMetricDataResponse -> TestTree
responseGetMetricData =
  res
    "GetMetricDataResponse"
    "fixture/GetMetricDataResponse.proto"
    cloudWatch
    (Proxy :: Proxy GetMetricData)
