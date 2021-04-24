{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Inspector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Inspector where

import Data.Proxy
import Network.AWS.Inspector
import Test.AWS.Fixture
import Test.AWS.Inspector.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestStartAssessmentRun $
--             startAssessmentRun
--
--         , requestDeleteAssessmentTemplate $
--             deleteAssessmentTemplate
--
--         , requestSubscribeToEvent $
--             subscribeToEvent
--
--         , requestStopAssessmentRun $
--             stopAssessmentRun
--
--         , requestGetTelemetryMetadata $
--             getTelemetryMetadata
--
--         , requestListFindings $
--             listFindings
--
--         , requestDescribeAssessmentTargets $
--             describeAssessmentTargets
--
--         , requestUpdateAssessmentTarget $
--             updateAssessmentTarget
--
--         , requestListAssessmentTargets $
--             listAssessmentTargets
--
--         , requestListAssessmentRuns $
--             listAssessmentRuns
--
--         , requestDeleteAssessmentTarget $
--             deleteAssessmentTarget
--
--         , requestAddAttributesToFindings $
--             addAttributesToFindings
--
--         , requestCreateAssessmentTarget $
--             createAssessmentTarget
--
--         , requestGetExclusionsPreview $
--             getExclusionsPreview
--
--         , requestDescribeResourceGroups $
--             describeResourceGroups
--
--         , requestPreviewAgents $
--             previewAgents
--
--         , requestListExclusions $
--             listExclusions
--
--         , requestCreateAssessmentTemplate $
--             createAssessmentTemplate
--
--         , requestDescribeCrossAccountAccessRole $
--             describeCrossAccountAccessRole
--
--         , requestSetTagsForResource $
--             setTagsForResource
--
--         , requestDescribeExclusions $
--             describeExclusions
--
--         , requestListAssessmentTemplates $
--             listAssessmentTemplates
--
--         , requestListAssessmentRunAgents $
--             listAssessmentRunAgents
--
--         , requestDescribeAssessmentRuns $
--             describeAssessmentRuns
--
--         , requestDescribeRulesPackages $
--             describeRulesPackages
--
--         , requestCreateExclusionsPreview $
--             createExclusionsPreview
--
--         , requestCreateResourceGroup $
--             createResourceGroup
--
--         , requestUnsubscribeFromEvent $
--             unsubscribeFromEvent
--
--         , requestRemoveAttributesFromFindings $
--             removeAttributesFromFindings
--
--         , requestDeleteAssessmentRun $
--             deleteAssessmentRun
--
--         , requestRegisterCrossAccountAccessRole $
--             registerCrossAccountAccessRole
--
--         , requestListEventSubscriptions $
--             listEventSubscriptions
--
--         , requestGetAssessmentReport $
--             getAssessmentReport
--
--         , requestListRulesPackages $
--             listRulesPackages
--
--         , requestDescribeFindings $
--             describeFindings
--
--         , requestDescribeAssessmentTemplates $
--             describeAssessmentTemplates
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--           ]

--     , testGroup "response"
--         [ responseStartAssessmentRun $
--             startAssessmentRunResponse
--
--         , responseDeleteAssessmentTemplate $
--             deleteAssessmentTemplateResponse
--
--         , responseSubscribeToEvent $
--             subscribeToEventResponse
--
--         , responseStopAssessmentRun $
--             stopAssessmentRunResponse
--
--         , responseGetTelemetryMetadata $
--             getTelemetryMetadataResponse
--
--         , responseListFindings $
--             listFindingsResponse
--
--         , responseDescribeAssessmentTargets $
--             describeAssessmentTargetsResponse
--
--         , responseUpdateAssessmentTarget $
--             updateAssessmentTargetResponse
--
--         , responseListAssessmentTargets $
--             listAssessmentTargetsResponse
--
--         , responseListAssessmentRuns $
--             listAssessmentRunsResponse
--
--         , responseDeleteAssessmentTarget $
--             deleteAssessmentTargetResponse
--
--         , responseAddAttributesToFindings $
--             addAttributesToFindingsResponse
--
--         , responseCreateAssessmentTarget $
--             createAssessmentTargetResponse
--
--         , responseGetExclusionsPreview $
--             getExclusionsPreviewResponse
--
--         , responseDescribeResourceGroups $
--             describeResourceGroupsResponse
--
--         , responsePreviewAgents $
--             previewAgentsResponse
--
--         , responseListExclusions $
--             listExclusionsResponse
--
--         , responseCreateAssessmentTemplate $
--             createAssessmentTemplateResponse
--
--         , responseDescribeCrossAccountAccessRole $
--             describeCrossAccountAccessRoleResponse
--
--         , responseSetTagsForResource $
--             setTagsForResourceResponse
--
--         , responseDescribeExclusions $
--             describeExclusionsResponse
--
--         , responseListAssessmentTemplates $
--             listAssessmentTemplatesResponse
--
--         , responseListAssessmentRunAgents $
--             listAssessmentRunAgentsResponse
--
--         , responseDescribeAssessmentRuns $
--             describeAssessmentRunsResponse
--
--         , responseDescribeRulesPackages $
--             describeRulesPackagesResponse
--
--         , responseCreateExclusionsPreview $
--             createExclusionsPreviewResponse
--
--         , responseCreateResourceGroup $
--             createResourceGroupResponse
--
--         , responseUnsubscribeFromEvent $
--             unsubscribeFromEventResponse
--
--         , responseRemoveAttributesFromFindings $
--             removeAttributesFromFindingsResponse
--
--         , responseDeleteAssessmentRun $
--             deleteAssessmentRunResponse
--
--         , responseRegisterCrossAccountAccessRole $
--             registerCrossAccountAccessRoleResponse
--
--         , responseListEventSubscriptions $
--             listEventSubscriptionsResponse
--
--         , responseGetAssessmentReport $
--             getAssessmentReportResponse
--
--         , responseListRulesPackages $
--             listRulesPackagesResponse
--
--         , responseDescribeFindings $
--             describeFindingsResponse
--
--         , responseDescribeAssessmentTemplates $
--             describeAssessmentTemplatesResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--           ]
--     ]

-- Requests

requestStartAssessmentRun :: StartAssessmentRun -> TestTree
requestStartAssessmentRun =
  req
    "StartAssessmentRun"
    "fixture/StartAssessmentRun.yaml"

requestDeleteAssessmentTemplate :: DeleteAssessmentTemplate -> TestTree
requestDeleteAssessmentTemplate =
  req
    "DeleteAssessmentTemplate"
    "fixture/DeleteAssessmentTemplate.yaml"

requestSubscribeToEvent :: SubscribeToEvent -> TestTree
requestSubscribeToEvent =
  req
    "SubscribeToEvent"
    "fixture/SubscribeToEvent.yaml"

requestStopAssessmentRun :: StopAssessmentRun -> TestTree
requestStopAssessmentRun =
  req
    "StopAssessmentRun"
    "fixture/StopAssessmentRun.yaml"

requestGetTelemetryMetadata :: GetTelemetryMetadata -> TestTree
requestGetTelemetryMetadata =
  req
    "GetTelemetryMetadata"
    "fixture/GetTelemetryMetadata.yaml"

requestListFindings :: ListFindings -> TestTree
requestListFindings =
  req
    "ListFindings"
    "fixture/ListFindings.yaml"

requestDescribeAssessmentTargets :: DescribeAssessmentTargets -> TestTree
requestDescribeAssessmentTargets =
  req
    "DescribeAssessmentTargets"
    "fixture/DescribeAssessmentTargets.yaml"

requestUpdateAssessmentTarget :: UpdateAssessmentTarget -> TestTree
requestUpdateAssessmentTarget =
  req
    "UpdateAssessmentTarget"
    "fixture/UpdateAssessmentTarget.yaml"

requestListAssessmentTargets :: ListAssessmentTargets -> TestTree
requestListAssessmentTargets =
  req
    "ListAssessmentTargets"
    "fixture/ListAssessmentTargets.yaml"

requestListAssessmentRuns :: ListAssessmentRuns -> TestTree
requestListAssessmentRuns =
  req
    "ListAssessmentRuns"
    "fixture/ListAssessmentRuns.yaml"

requestDeleteAssessmentTarget :: DeleteAssessmentTarget -> TestTree
requestDeleteAssessmentTarget =
  req
    "DeleteAssessmentTarget"
    "fixture/DeleteAssessmentTarget.yaml"

requestAddAttributesToFindings :: AddAttributesToFindings -> TestTree
requestAddAttributesToFindings =
  req
    "AddAttributesToFindings"
    "fixture/AddAttributesToFindings.yaml"

requestCreateAssessmentTarget :: CreateAssessmentTarget -> TestTree
requestCreateAssessmentTarget =
  req
    "CreateAssessmentTarget"
    "fixture/CreateAssessmentTarget.yaml"

requestGetExclusionsPreview :: GetExclusionsPreview -> TestTree
requestGetExclusionsPreview =
  req
    "GetExclusionsPreview"
    "fixture/GetExclusionsPreview.yaml"

requestDescribeResourceGroups :: DescribeResourceGroups -> TestTree
requestDescribeResourceGroups =
  req
    "DescribeResourceGroups"
    "fixture/DescribeResourceGroups.yaml"

requestPreviewAgents :: PreviewAgents -> TestTree
requestPreviewAgents =
  req
    "PreviewAgents"
    "fixture/PreviewAgents.yaml"

requestListExclusions :: ListExclusions -> TestTree
requestListExclusions =
  req
    "ListExclusions"
    "fixture/ListExclusions.yaml"

requestCreateAssessmentTemplate :: CreateAssessmentTemplate -> TestTree
requestCreateAssessmentTemplate =
  req
    "CreateAssessmentTemplate"
    "fixture/CreateAssessmentTemplate.yaml"

requestDescribeCrossAccountAccessRole :: DescribeCrossAccountAccessRole -> TestTree
requestDescribeCrossAccountAccessRole =
  req
    "DescribeCrossAccountAccessRole"
    "fixture/DescribeCrossAccountAccessRole.yaml"

requestSetTagsForResource :: SetTagsForResource -> TestTree
requestSetTagsForResource =
  req
    "SetTagsForResource"
    "fixture/SetTagsForResource.yaml"

requestDescribeExclusions :: DescribeExclusions -> TestTree
requestDescribeExclusions =
  req
    "DescribeExclusions"
    "fixture/DescribeExclusions.yaml"

requestListAssessmentTemplates :: ListAssessmentTemplates -> TestTree
requestListAssessmentTemplates =
  req
    "ListAssessmentTemplates"
    "fixture/ListAssessmentTemplates.yaml"

requestListAssessmentRunAgents :: ListAssessmentRunAgents -> TestTree
requestListAssessmentRunAgents =
  req
    "ListAssessmentRunAgents"
    "fixture/ListAssessmentRunAgents.yaml"

requestDescribeAssessmentRuns :: DescribeAssessmentRuns -> TestTree
requestDescribeAssessmentRuns =
  req
    "DescribeAssessmentRuns"
    "fixture/DescribeAssessmentRuns.yaml"

requestDescribeRulesPackages :: DescribeRulesPackages -> TestTree
requestDescribeRulesPackages =
  req
    "DescribeRulesPackages"
    "fixture/DescribeRulesPackages.yaml"

requestCreateExclusionsPreview :: CreateExclusionsPreview -> TestTree
requestCreateExclusionsPreview =
  req
    "CreateExclusionsPreview"
    "fixture/CreateExclusionsPreview.yaml"

requestCreateResourceGroup :: CreateResourceGroup -> TestTree
requestCreateResourceGroup =
  req
    "CreateResourceGroup"
    "fixture/CreateResourceGroup.yaml"

requestUnsubscribeFromEvent :: UnsubscribeFromEvent -> TestTree
requestUnsubscribeFromEvent =
  req
    "UnsubscribeFromEvent"
    "fixture/UnsubscribeFromEvent.yaml"

requestRemoveAttributesFromFindings :: RemoveAttributesFromFindings -> TestTree
requestRemoveAttributesFromFindings =
  req
    "RemoveAttributesFromFindings"
    "fixture/RemoveAttributesFromFindings.yaml"

requestDeleteAssessmentRun :: DeleteAssessmentRun -> TestTree
requestDeleteAssessmentRun =
  req
    "DeleteAssessmentRun"
    "fixture/DeleteAssessmentRun.yaml"

requestRegisterCrossAccountAccessRole :: RegisterCrossAccountAccessRole -> TestTree
requestRegisterCrossAccountAccessRole =
  req
    "RegisterCrossAccountAccessRole"
    "fixture/RegisterCrossAccountAccessRole.yaml"

requestListEventSubscriptions :: ListEventSubscriptions -> TestTree
requestListEventSubscriptions =
  req
    "ListEventSubscriptions"
    "fixture/ListEventSubscriptions.yaml"

requestGetAssessmentReport :: GetAssessmentReport -> TestTree
requestGetAssessmentReport =
  req
    "GetAssessmentReport"
    "fixture/GetAssessmentReport.yaml"

requestListRulesPackages :: ListRulesPackages -> TestTree
requestListRulesPackages =
  req
    "ListRulesPackages"
    "fixture/ListRulesPackages.yaml"

requestDescribeFindings :: DescribeFindings -> TestTree
requestDescribeFindings =
  req
    "DescribeFindings"
    "fixture/DescribeFindings.yaml"

requestDescribeAssessmentTemplates :: DescribeAssessmentTemplates -> TestTree
requestDescribeAssessmentTemplates =
  req
    "DescribeAssessmentTemplates"
    "fixture/DescribeAssessmentTemplates.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

-- Responses

responseStartAssessmentRun :: StartAssessmentRunResponse -> TestTree
responseStartAssessmentRun =
  res
    "StartAssessmentRunResponse"
    "fixture/StartAssessmentRunResponse.proto"
    inspector
    (Proxy :: Proxy StartAssessmentRun)

responseDeleteAssessmentTemplate :: DeleteAssessmentTemplateResponse -> TestTree
responseDeleteAssessmentTemplate =
  res
    "DeleteAssessmentTemplateResponse"
    "fixture/DeleteAssessmentTemplateResponse.proto"
    inspector
    (Proxy :: Proxy DeleteAssessmentTemplate)

responseSubscribeToEvent :: SubscribeToEventResponse -> TestTree
responseSubscribeToEvent =
  res
    "SubscribeToEventResponse"
    "fixture/SubscribeToEventResponse.proto"
    inspector
    (Proxy :: Proxy SubscribeToEvent)

responseStopAssessmentRun :: StopAssessmentRunResponse -> TestTree
responseStopAssessmentRun =
  res
    "StopAssessmentRunResponse"
    "fixture/StopAssessmentRunResponse.proto"
    inspector
    (Proxy :: Proxy StopAssessmentRun)

responseGetTelemetryMetadata :: GetTelemetryMetadataResponse -> TestTree
responseGetTelemetryMetadata =
  res
    "GetTelemetryMetadataResponse"
    "fixture/GetTelemetryMetadataResponse.proto"
    inspector
    (Proxy :: Proxy GetTelemetryMetadata)

responseListFindings :: ListFindingsResponse -> TestTree
responseListFindings =
  res
    "ListFindingsResponse"
    "fixture/ListFindingsResponse.proto"
    inspector
    (Proxy :: Proxy ListFindings)

responseDescribeAssessmentTargets :: DescribeAssessmentTargetsResponse -> TestTree
responseDescribeAssessmentTargets =
  res
    "DescribeAssessmentTargetsResponse"
    "fixture/DescribeAssessmentTargetsResponse.proto"
    inspector
    (Proxy :: Proxy DescribeAssessmentTargets)

responseUpdateAssessmentTarget :: UpdateAssessmentTargetResponse -> TestTree
responseUpdateAssessmentTarget =
  res
    "UpdateAssessmentTargetResponse"
    "fixture/UpdateAssessmentTargetResponse.proto"
    inspector
    (Proxy :: Proxy UpdateAssessmentTarget)

responseListAssessmentTargets :: ListAssessmentTargetsResponse -> TestTree
responseListAssessmentTargets =
  res
    "ListAssessmentTargetsResponse"
    "fixture/ListAssessmentTargetsResponse.proto"
    inspector
    (Proxy :: Proxy ListAssessmentTargets)

responseListAssessmentRuns :: ListAssessmentRunsResponse -> TestTree
responseListAssessmentRuns =
  res
    "ListAssessmentRunsResponse"
    "fixture/ListAssessmentRunsResponse.proto"
    inspector
    (Proxy :: Proxy ListAssessmentRuns)

responseDeleteAssessmentTarget :: DeleteAssessmentTargetResponse -> TestTree
responseDeleteAssessmentTarget =
  res
    "DeleteAssessmentTargetResponse"
    "fixture/DeleteAssessmentTargetResponse.proto"
    inspector
    (Proxy :: Proxy DeleteAssessmentTarget)

responseAddAttributesToFindings :: AddAttributesToFindingsResponse -> TestTree
responseAddAttributesToFindings =
  res
    "AddAttributesToFindingsResponse"
    "fixture/AddAttributesToFindingsResponse.proto"
    inspector
    (Proxy :: Proxy AddAttributesToFindings)

responseCreateAssessmentTarget :: CreateAssessmentTargetResponse -> TestTree
responseCreateAssessmentTarget =
  res
    "CreateAssessmentTargetResponse"
    "fixture/CreateAssessmentTargetResponse.proto"
    inspector
    (Proxy :: Proxy CreateAssessmentTarget)

responseGetExclusionsPreview :: GetExclusionsPreviewResponse -> TestTree
responseGetExclusionsPreview =
  res
    "GetExclusionsPreviewResponse"
    "fixture/GetExclusionsPreviewResponse.proto"
    inspector
    (Proxy :: Proxy GetExclusionsPreview)

responseDescribeResourceGroups :: DescribeResourceGroupsResponse -> TestTree
responseDescribeResourceGroups =
  res
    "DescribeResourceGroupsResponse"
    "fixture/DescribeResourceGroupsResponse.proto"
    inspector
    (Proxy :: Proxy DescribeResourceGroups)

responsePreviewAgents :: PreviewAgentsResponse -> TestTree
responsePreviewAgents =
  res
    "PreviewAgentsResponse"
    "fixture/PreviewAgentsResponse.proto"
    inspector
    (Proxy :: Proxy PreviewAgents)

responseListExclusions :: ListExclusionsResponse -> TestTree
responseListExclusions =
  res
    "ListExclusionsResponse"
    "fixture/ListExclusionsResponse.proto"
    inspector
    (Proxy :: Proxy ListExclusions)

responseCreateAssessmentTemplate :: CreateAssessmentTemplateResponse -> TestTree
responseCreateAssessmentTemplate =
  res
    "CreateAssessmentTemplateResponse"
    "fixture/CreateAssessmentTemplateResponse.proto"
    inspector
    (Proxy :: Proxy CreateAssessmentTemplate)

responseDescribeCrossAccountAccessRole :: DescribeCrossAccountAccessRoleResponse -> TestTree
responseDescribeCrossAccountAccessRole =
  res
    "DescribeCrossAccountAccessRoleResponse"
    "fixture/DescribeCrossAccountAccessRoleResponse.proto"
    inspector
    (Proxy :: Proxy DescribeCrossAccountAccessRole)

responseSetTagsForResource :: SetTagsForResourceResponse -> TestTree
responseSetTagsForResource =
  res
    "SetTagsForResourceResponse"
    "fixture/SetTagsForResourceResponse.proto"
    inspector
    (Proxy :: Proxy SetTagsForResource)

responseDescribeExclusions :: DescribeExclusionsResponse -> TestTree
responseDescribeExclusions =
  res
    "DescribeExclusionsResponse"
    "fixture/DescribeExclusionsResponse.proto"
    inspector
    (Proxy :: Proxy DescribeExclusions)

responseListAssessmentTemplates :: ListAssessmentTemplatesResponse -> TestTree
responseListAssessmentTemplates =
  res
    "ListAssessmentTemplatesResponse"
    "fixture/ListAssessmentTemplatesResponse.proto"
    inspector
    (Proxy :: Proxy ListAssessmentTemplates)

responseListAssessmentRunAgents :: ListAssessmentRunAgentsResponse -> TestTree
responseListAssessmentRunAgents =
  res
    "ListAssessmentRunAgentsResponse"
    "fixture/ListAssessmentRunAgentsResponse.proto"
    inspector
    (Proxy :: Proxy ListAssessmentRunAgents)

responseDescribeAssessmentRuns :: DescribeAssessmentRunsResponse -> TestTree
responseDescribeAssessmentRuns =
  res
    "DescribeAssessmentRunsResponse"
    "fixture/DescribeAssessmentRunsResponse.proto"
    inspector
    (Proxy :: Proxy DescribeAssessmentRuns)

responseDescribeRulesPackages :: DescribeRulesPackagesResponse -> TestTree
responseDescribeRulesPackages =
  res
    "DescribeRulesPackagesResponse"
    "fixture/DescribeRulesPackagesResponse.proto"
    inspector
    (Proxy :: Proxy DescribeRulesPackages)

responseCreateExclusionsPreview :: CreateExclusionsPreviewResponse -> TestTree
responseCreateExclusionsPreview =
  res
    "CreateExclusionsPreviewResponse"
    "fixture/CreateExclusionsPreviewResponse.proto"
    inspector
    (Proxy :: Proxy CreateExclusionsPreview)

responseCreateResourceGroup :: CreateResourceGroupResponse -> TestTree
responseCreateResourceGroup =
  res
    "CreateResourceGroupResponse"
    "fixture/CreateResourceGroupResponse.proto"
    inspector
    (Proxy :: Proxy CreateResourceGroup)

responseUnsubscribeFromEvent :: UnsubscribeFromEventResponse -> TestTree
responseUnsubscribeFromEvent =
  res
    "UnsubscribeFromEventResponse"
    "fixture/UnsubscribeFromEventResponse.proto"
    inspector
    (Proxy :: Proxy UnsubscribeFromEvent)

responseRemoveAttributesFromFindings :: RemoveAttributesFromFindingsResponse -> TestTree
responseRemoveAttributesFromFindings =
  res
    "RemoveAttributesFromFindingsResponse"
    "fixture/RemoveAttributesFromFindingsResponse.proto"
    inspector
    (Proxy :: Proxy RemoveAttributesFromFindings)

responseDeleteAssessmentRun :: DeleteAssessmentRunResponse -> TestTree
responseDeleteAssessmentRun =
  res
    "DeleteAssessmentRunResponse"
    "fixture/DeleteAssessmentRunResponse.proto"
    inspector
    (Proxy :: Proxy DeleteAssessmentRun)

responseRegisterCrossAccountAccessRole :: RegisterCrossAccountAccessRoleResponse -> TestTree
responseRegisterCrossAccountAccessRole =
  res
    "RegisterCrossAccountAccessRoleResponse"
    "fixture/RegisterCrossAccountAccessRoleResponse.proto"
    inspector
    (Proxy :: Proxy RegisterCrossAccountAccessRole)

responseListEventSubscriptions :: ListEventSubscriptionsResponse -> TestTree
responseListEventSubscriptions =
  res
    "ListEventSubscriptionsResponse"
    "fixture/ListEventSubscriptionsResponse.proto"
    inspector
    (Proxy :: Proxy ListEventSubscriptions)

responseGetAssessmentReport :: GetAssessmentReportResponse -> TestTree
responseGetAssessmentReport =
  res
    "GetAssessmentReportResponse"
    "fixture/GetAssessmentReportResponse.proto"
    inspector
    (Proxy :: Proxy GetAssessmentReport)

responseListRulesPackages :: ListRulesPackagesResponse -> TestTree
responseListRulesPackages =
  res
    "ListRulesPackagesResponse"
    "fixture/ListRulesPackagesResponse.proto"
    inspector
    (Proxy :: Proxy ListRulesPackages)

responseDescribeFindings :: DescribeFindingsResponse -> TestTree
responseDescribeFindings =
  res
    "DescribeFindingsResponse"
    "fixture/DescribeFindingsResponse.proto"
    inspector
    (Proxy :: Proxy DescribeFindings)

responseDescribeAssessmentTemplates :: DescribeAssessmentTemplatesResponse -> TestTree
responseDescribeAssessmentTemplates =
  res
    "DescribeAssessmentTemplatesResponse"
    "fixture/DescribeAssessmentTemplatesResponse.proto"
    inspector
    (Proxy :: Proxy DescribeAssessmentTemplates)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    inspector
    (Proxy :: Proxy ListTagsForResource)
