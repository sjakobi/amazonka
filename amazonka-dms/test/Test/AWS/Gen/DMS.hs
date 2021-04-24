{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.DMS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.DMS where

import Data.Proxy
import Network.AWS.DMS
import Test.AWS.DMS.Internal
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
--         [ requestDeleteReplicationTaskAssessmentRun $
--             deleteReplicationTaskAssessmentRun
--
--         , requestDescribeEventCategories $
--             describeEventCategories
--
--         , requestStartReplicationTaskAssessment $
--             startReplicationTaskAssessment
--
--         , requestDeleteConnection $
--             deleteConnection
--
--         , requestCreateEndpoint $
--             createEndpoint
--
--         , requestDescribeOrderableReplicationInstances $
--             describeOrderableReplicationInstances
--
--         , requestDeleteCertificate $
--             deleteCertificate
--
--         , requestDescribeApplicableIndividualAssessments $
--             describeApplicableIndividualAssessments
--
--         , requestReloadTables $
--             reloadTables
--
--         , requestStartReplicationTask $
--             startReplicationTask
--
--         , requestDescribeEventSubscriptions $
--             describeEventSubscriptions
--
--         , requestModifyReplicationTask $
--             modifyReplicationTask
--
--         , requestStopReplicationTask $
--             stopReplicationTask
--
--         , requestCreateReplicationInstance $
--             createReplicationInstance
--
--         , requestDescribeReplicationSubnetGroups $
--             describeReplicationSubnetGroups
--
--         , requestDeleteEventSubscription $
--             deleteEventSubscription
--
--         , requestDescribeTableStatistics $
--             describeTableStatistics
--
--         , requestStartReplicationTaskAssessmentRun $
--             startReplicationTaskAssessmentRun
--
--         , requestDescribeRefreshSchemasStatus $
--             describeRefreshSchemasStatus
--
--         , requestDescribeAccountAttributes $
--             describeAccountAttributes
--
--         , requestRemoveTagsFromResource $
--             removeTagsFromResource
--
--         , requestDescribeCertificates $
--             describeCertificates
--
--         , requestModifyEndpoint $
--             modifyEndpoint
--
--         , requestTestConnection $
--             testConnection
--
--         , requestDescribeReplicationTaskAssessmentResults $
--             describeReplicationTaskAssessmentResults
--
--         , requestApplyPendingMaintenanceAction $
--             applyPendingMaintenanceAction
--
--         , requestImportCertificate $
--             importCertificate
--
--         , requestDescribeEndpointTypes $
--             describeEndpointTypes
--
--         , requestDescribePendingMaintenanceActions $
--             describePendingMaintenanceActions
--
--         , requestDeleteEndpoint $
--             deleteEndpoint
--
--         , requestDescribeEvents $
--             describeEvents
--
--         , requestDescribeSchemas $
--             describeSchemas
--
--         , requestModifyEventSubscription $
--             modifyEventSubscription
--
--         , requestDescribeReplicationTasks $
--             describeReplicationTasks
--
--         , requestRefreshSchemas $
--             refreshSchemas
--
--         , requestCreateReplicationSubnetGroup $
--             createReplicationSubnetGroup
--
--         , requestRebootReplicationInstance $
--             rebootReplicationInstance
--
--         , requestDeleteReplicationInstance $
--             deleteReplicationInstance
--
--         , requestDeleteReplicationSubnetGroup $
--             deleteReplicationSubnetGroup
--
--         , requestAddTagsToResource $
--             addTagsToResource
--
--         , requestCreateEventSubscription $
--             createEventSubscription
--
--         , requestDescribeReplicationInstances $
--             describeReplicationInstances
--
--         , requestDescribeReplicationTaskAssessmentRuns $
--             describeReplicationTaskAssessmentRuns
--
--         , requestCancelReplicationTaskAssessmentRun $
--             cancelReplicationTaskAssessmentRun
--
--         , requestDescribeConnections $
--             describeConnections
--
--         , requestModifyReplicationSubnetGroup $
--             modifyReplicationSubnetGroup
--
--         , requestDeleteReplicationTask $
--             deleteReplicationTask
--
--         , requestMoveReplicationTask $
--             moveReplicationTask
--
--         , requestDescribeReplicationTaskIndividualAssessments $
--             describeReplicationTaskIndividualAssessments
--
--         , requestModifyReplicationInstance $
--             modifyReplicationInstance
--
--         , requestDescribeEndpoints $
--             describeEndpoints
--
--         , requestCreateReplicationTask $
--             createReplicationTask
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDescribeReplicationInstanceTaskLogs $
--             describeReplicationInstanceTaskLogs
--
--           ]

--     , testGroup "response"
--         [ responseDeleteReplicationTaskAssessmentRun $
--             deleteReplicationTaskAssessmentRunResponse
--
--         , responseDescribeEventCategories $
--             describeEventCategoriesResponse
--
--         , responseStartReplicationTaskAssessment $
--             startReplicationTaskAssessmentResponse
--
--         , responseDeleteConnection $
--             deleteConnectionResponse
--
--         , responseCreateEndpoint $
--             createEndpointResponse
--
--         , responseDescribeOrderableReplicationInstances $
--             describeOrderableReplicationInstancesResponse
--
--         , responseDeleteCertificate $
--             deleteCertificateResponse
--
--         , responseDescribeApplicableIndividualAssessments $
--             describeApplicableIndividualAssessmentsResponse
--
--         , responseReloadTables $
--             reloadTablesResponse
--
--         , responseStartReplicationTask $
--             startReplicationTaskResponse
--
--         , responseDescribeEventSubscriptions $
--             describeEventSubscriptionsResponse
--
--         , responseModifyReplicationTask $
--             modifyReplicationTaskResponse
--
--         , responseStopReplicationTask $
--             stopReplicationTaskResponse
--
--         , responseCreateReplicationInstance $
--             createReplicationInstanceResponse
--
--         , responseDescribeReplicationSubnetGroups $
--             describeReplicationSubnetGroupsResponse
--
--         , responseDeleteEventSubscription $
--             deleteEventSubscriptionResponse
--
--         , responseDescribeTableStatistics $
--             describeTableStatisticsResponse
--
--         , responseStartReplicationTaskAssessmentRun $
--             startReplicationTaskAssessmentRunResponse
--
--         , responseDescribeRefreshSchemasStatus $
--             describeRefreshSchemasStatusResponse
--
--         , responseDescribeAccountAttributes $
--             describeAccountAttributesResponse
--
--         , responseRemoveTagsFromResource $
--             removeTagsFromResourceResponse
--
--         , responseDescribeCertificates $
--             describeCertificatesResponse
--
--         , responseModifyEndpoint $
--             modifyEndpointResponse
--
--         , responseTestConnection $
--             testConnectionResponse
--
--         , responseDescribeReplicationTaskAssessmentResults $
--             describeReplicationTaskAssessmentResultsResponse
--
--         , responseApplyPendingMaintenanceAction $
--             applyPendingMaintenanceActionResponse
--
--         , responseImportCertificate $
--             importCertificateResponse
--
--         , responseDescribeEndpointTypes $
--             describeEndpointTypesResponse
--
--         , responseDescribePendingMaintenanceActions $
--             describePendingMaintenanceActionsResponse
--
--         , responseDeleteEndpoint $
--             deleteEndpointResponse
--
--         , responseDescribeEvents $
--             describeEventsResponse
--
--         , responseDescribeSchemas $
--             describeSchemasResponse
--
--         , responseModifyEventSubscription $
--             modifyEventSubscriptionResponse
--
--         , responseDescribeReplicationTasks $
--             describeReplicationTasksResponse
--
--         , responseRefreshSchemas $
--             refreshSchemasResponse
--
--         , responseCreateReplicationSubnetGroup $
--             createReplicationSubnetGroupResponse
--
--         , responseRebootReplicationInstance $
--             rebootReplicationInstanceResponse
--
--         , responseDeleteReplicationInstance $
--             deleteReplicationInstanceResponse
--
--         , responseDeleteReplicationSubnetGroup $
--             deleteReplicationSubnetGroupResponse
--
--         , responseAddTagsToResource $
--             addTagsToResourceResponse
--
--         , responseCreateEventSubscription $
--             createEventSubscriptionResponse
--
--         , responseDescribeReplicationInstances $
--             describeReplicationInstancesResponse
--
--         , responseDescribeReplicationTaskAssessmentRuns $
--             describeReplicationTaskAssessmentRunsResponse
--
--         , responseCancelReplicationTaskAssessmentRun $
--             cancelReplicationTaskAssessmentRunResponse
--
--         , responseDescribeConnections $
--             describeConnectionsResponse
--
--         , responseModifyReplicationSubnetGroup $
--             modifyReplicationSubnetGroupResponse
--
--         , responseDeleteReplicationTask $
--             deleteReplicationTaskResponse
--
--         , responseMoveReplicationTask $
--             moveReplicationTaskResponse
--
--         , responseDescribeReplicationTaskIndividualAssessments $
--             describeReplicationTaskIndividualAssessmentsResponse
--
--         , responseModifyReplicationInstance $
--             modifyReplicationInstanceResponse
--
--         , responseDescribeEndpoints $
--             describeEndpointsResponse
--
--         , responseCreateReplicationTask $
--             createReplicationTaskResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDescribeReplicationInstanceTaskLogs $
--             describeReplicationInstanceTaskLogsResponse
--
--           ]
--     ]

-- Requests

requestDeleteReplicationTaskAssessmentRun :: DeleteReplicationTaskAssessmentRun -> TestTree
requestDeleteReplicationTaskAssessmentRun =
  req
    "DeleteReplicationTaskAssessmentRun"
    "fixture/DeleteReplicationTaskAssessmentRun.yaml"

requestDescribeEventCategories :: DescribeEventCategories -> TestTree
requestDescribeEventCategories =
  req
    "DescribeEventCategories"
    "fixture/DescribeEventCategories.yaml"

requestStartReplicationTaskAssessment :: StartReplicationTaskAssessment -> TestTree
requestStartReplicationTaskAssessment =
  req
    "StartReplicationTaskAssessment"
    "fixture/StartReplicationTaskAssessment.yaml"

requestDeleteConnection :: DeleteConnection -> TestTree
requestDeleteConnection =
  req
    "DeleteConnection"
    "fixture/DeleteConnection.yaml"

requestCreateEndpoint :: CreateEndpoint -> TestTree
requestCreateEndpoint =
  req
    "CreateEndpoint"
    "fixture/CreateEndpoint.yaml"

requestDescribeOrderableReplicationInstances :: DescribeOrderableReplicationInstances -> TestTree
requestDescribeOrderableReplicationInstances =
  req
    "DescribeOrderableReplicationInstances"
    "fixture/DescribeOrderableReplicationInstances.yaml"

requestDeleteCertificate :: DeleteCertificate -> TestTree
requestDeleteCertificate =
  req
    "DeleteCertificate"
    "fixture/DeleteCertificate.yaml"

requestDescribeApplicableIndividualAssessments :: DescribeApplicableIndividualAssessments -> TestTree
requestDescribeApplicableIndividualAssessments =
  req
    "DescribeApplicableIndividualAssessments"
    "fixture/DescribeApplicableIndividualAssessments.yaml"

requestReloadTables :: ReloadTables -> TestTree
requestReloadTables =
  req
    "ReloadTables"
    "fixture/ReloadTables.yaml"

requestStartReplicationTask :: StartReplicationTask -> TestTree
requestStartReplicationTask =
  req
    "StartReplicationTask"
    "fixture/StartReplicationTask.yaml"

requestDescribeEventSubscriptions :: DescribeEventSubscriptions -> TestTree
requestDescribeEventSubscriptions =
  req
    "DescribeEventSubscriptions"
    "fixture/DescribeEventSubscriptions.yaml"

requestModifyReplicationTask :: ModifyReplicationTask -> TestTree
requestModifyReplicationTask =
  req
    "ModifyReplicationTask"
    "fixture/ModifyReplicationTask.yaml"

requestStopReplicationTask :: StopReplicationTask -> TestTree
requestStopReplicationTask =
  req
    "StopReplicationTask"
    "fixture/StopReplicationTask.yaml"

requestCreateReplicationInstance :: CreateReplicationInstance -> TestTree
requestCreateReplicationInstance =
  req
    "CreateReplicationInstance"
    "fixture/CreateReplicationInstance.yaml"

requestDescribeReplicationSubnetGroups :: DescribeReplicationSubnetGroups -> TestTree
requestDescribeReplicationSubnetGroups =
  req
    "DescribeReplicationSubnetGroups"
    "fixture/DescribeReplicationSubnetGroups.yaml"

requestDeleteEventSubscription :: DeleteEventSubscription -> TestTree
requestDeleteEventSubscription =
  req
    "DeleteEventSubscription"
    "fixture/DeleteEventSubscription.yaml"

requestDescribeTableStatistics :: DescribeTableStatistics -> TestTree
requestDescribeTableStatistics =
  req
    "DescribeTableStatistics"
    "fixture/DescribeTableStatistics.yaml"

requestStartReplicationTaskAssessmentRun :: StartReplicationTaskAssessmentRun -> TestTree
requestStartReplicationTaskAssessmentRun =
  req
    "StartReplicationTaskAssessmentRun"
    "fixture/StartReplicationTaskAssessmentRun.yaml"

requestDescribeRefreshSchemasStatus :: DescribeRefreshSchemasStatus -> TestTree
requestDescribeRefreshSchemasStatus =
  req
    "DescribeRefreshSchemasStatus"
    "fixture/DescribeRefreshSchemasStatus.yaml"

requestDescribeAccountAttributes :: DescribeAccountAttributes -> TestTree
requestDescribeAccountAttributes =
  req
    "DescribeAccountAttributes"
    "fixture/DescribeAccountAttributes.yaml"

requestRemoveTagsFromResource :: RemoveTagsFromResource -> TestTree
requestRemoveTagsFromResource =
  req
    "RemoveTagsFromResource"
    "fixture/RemoveTagsFromResource.yaml"

requestDescribeCertificates :: DescribeCertificates -> TestTree
requestDescribeCertificates =
  req
    "DescribeCertificates"
    "fixture/DescribeCertificates.yaml"

requestModifyEndpoint :: ModifyEndpoint -> TestTree
requestModifyEndpoint =
  req
    "ModifyEndpoint"
    "fixture/ModifyEndpoint.yaml"

requestTestConnection :: TestConnection -> TestTree
requestTestConnection =
  req
    "TestConnection"
    "fixture/TestConnection.yaml"

requestDescribeReplicationTaskAssessmentResults :: DescribeReplicationTaskAssessmentResults -> TestTree
requestDescribeReplicationTaskAssessmentResults =
  req
    "DescribeReplicationTaskAssessmentResults"
    "fixture/DescribeReplicationTaskAssessmentResults.yaml"

requestApplyPendingMaintenanceAction :: ApplyPendingMaintenanceAction -> TestTree
requestApplyPendingMaintenanceAction =
  req
    "ApplyPendingMaintenanceAction"
    "fixture/ApplyPendingMaintenanceAction.yaml"

requestImportCertificate :: ImportCertificate -> TestTree
requestImportCertificate =
  req
    "ImportCertificate"
    "fixture/ImportCertificate.yaml"

requestDescribeEndpointTypes :: DescribeEndpointTypes -> TestTree
requestDescribeEndpointTypes =
  req
    "DescribeEndpointTypes"
    "fixture/DescribeEndpointTypes.yaml"

requestDescribePendingMaintenanceActions :: DescribePendingMaintenanceActions -> TestTree
requestDescribePendingMaintenanceActions =
  req
    "DescribePendingMaintenanceActions"
    "fixture/DescribePendingMaintenanceActions.yaml"

requestDeleteEndpoint :: DeleteEndpoint -> TestTree
requestDeleteEndpoint =
  req
    "DeleteEndpoint"
    "fixture/DeleteEndpoint.yaml"

requestDescribeEvents :: DescribeEvents -> TestTree
requestDescribeEvents =
  req
    "DescribeEvents"
    "fixture/DescribeEvents.yaml"

requestDescribeSchemas :: DescribeSchemas -> TestTree
requestDescribeSchemas =
  req
    "DescribeSchemas"
    "fixture/DescribeSchemas.yaml"

requestModifyEventSubscription :: ModifyEventSubscription -> TestTree
requestModifyEventSubscription =
  req
    "ModifyEventSubscription"
    "fixture/ModifyEventSubscription.yaml"

requestDescribeReplicationTasks :: DescribeReplicationTasks -> TestTree
requestDescribeReplicationTasks =
  req
    "DescribeReplicationTasks"
    "fixture/DescribeReplicationTasks.yaml"

requestRefreshSchemas :: RefreshSchemas -> TestTree
requestRefreshSchemas =
  req
    "RefreshSchemas"
    "fixture/RefreshSchemas.yaml"

requestCreateReplicationSubnetGroup :: CreateReplicationSubnetGroup -> TestTree
requestCreateReplicationSubnetGroup =
  req
    "CreateReplicationSubnetGroup"
    "fixture/CreateReplicationSubnetGroup.yaml"

requestRebootReplicationInstance :: RebootReplicationInstance -> TestTree
requestRebootReplicationInstance =
  req
    "RebootReplicationInstance"
    "fixture/RebootReplicationInstance.yaml"

requestDeleteReplicationInstance :: DeleteReplicationInstance -> TestTree
requestDeleteReplicationInstance =
  req
    "DeleteReplicationInstance"
    "fixture/DeleteReplicationInstance.yaml"

requestDeleteReplicationSubnetGroup :: DeleteReplicationSubnetGroup -> TestTree
requestDeleteReplicationSubnetGroup =
  req
    "DeleteReplicationSubnetGroup"
    "fixture/DeleteReplicationSubnetGroup.yaml"

requestAddTagsToResource :: AddTagsToResource -> TestTree
requestAddTagsToResource =
  req
    "AddTagsToResource"
    "fixture/AddTagsToResource.yaml"

requestCreateEventSubscription :: CreateEventSubscription -> TestTree
requestCreateEventSubscription =
  req
    "CreateEventSubscription"
    "fixture/CreateEventSubscription.yaml"

requestDescribeReplicationInstances :: DescribeReplicationInstances -> TestTree
requestDescribeReplicationInstances =
  req
    "DescribeReplicationInstances"
    "fixture/DescribeReplicationInstances.yaml"

requestDescribeReplicationTaskAssessmentRuns :: DescribeReplicationTaskAssessmentRuns -> TestTree
requestDescribeReplicationTaskAssessmentRuns =
  req
    "DescribeReplicationTaskAssessmentRuns"
    "fixture/DescribeReplicationTaskAssessmentRuns.yaml"

requestCancelReplicationTaskAssessmentRun :: CancelReplicationTaskAssessmentRun -> TestTree
requestCancelReplicationTaskAssessmentRun =
  req
    "CancelReplicationTaskAssessmentRun"
    "fixture/CancelReplicationTaskAssessmentRun.yaml"

requestDescribeConnections :: DescribeConnections -> TestTree
requestDescribeConnections =
  req
    "DescribeConnections"
    "fixture/DescribeConnections.yaml"

requestModifyReplicationSubnetGroup :: ModifyReplicationSubnetGroup -> TestTree
requestModifyReplicationSubnetGroup =
  req
    "ModifyReplicationSubnetGroup"
    "fixture/ModifyReplicationSubnetGroup.yaml"

requestDeleteReplicationTask :: DeleteReplicationTask -> TestTree
requestDeleteReplicationTask =
  req
    "DeleteReplicationTask"
    "fixture/DeleteReplicationTask.yaml"

requestMoveReplicationTask :: MoveReplicationTask -> TestTree
requestMoveReplicationTask =
  req
    "MoveReplicationTask"
    "fixture/MoveReplicationTask.yaml"

requestDescribeReplicationTaskIndividualAssessments :: DescribeReplicationTaskIndividualAssessments -> TestTree
requestDescribeReplicationTaskIndividualAssessments =
  req
    "DescribeReplicationTaskIndividualAssessments"
    "fixture/DescribeReplicationTaskIndividualAssessments.yaml"

requestModifyReplicationInstance :: ModifyReplicationInstance -> TestTree
requestModifyReplicationInstance =
  req
    "ModifyReplicationInstance"
    "fixture/ModifyReplicationInstance.yaml"

requestDescribeEndpoints :: DescribeEndpoints -> TestTree
requestDescribeEndpoints =
  req
    "DescribeEndpoints"
    "fixture/DescribeEndpoints.yaml"

requestCreateReplicationTask :: CreateReplicationTask -> TestTree
requestCreateReplicationTask =
  req
    "CreateReplicationTask"
    "fixture/CreateReplicationTask.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDescribeReplicationInstanceTaskLogs :: DescribeReplicationInstanceTaskLogs -> TestTree
requestDescribeReplicationInstanceTaskLogs =
  req
    "DescribeReplicationInstanceTaskLogs"
    "fixture/DescribeReplicationInstanceTaskLogs.yaml"

-- Responses

responseDeleteReplicationTaskAssessmentRun :: DeleteReplicationTaskAssessmentRunResponse -> TestTree
responseDeleteReplicationTaskAssessmentRun =
  res
    "DeleteReplicationTaskAssessmentRunResponse"
    "fixture/DeleteReplicationTaskAssessmentRunResponse.proto"
    dms
    (Proxy :: Proxy DeleteReplicationTaskAssessmentRun)

responseDescribeEventCategories :: DescribeEventCategoriesResponse -> TestTree
responseDescribeEventCategories =
  res
    "DescribeEventCategoriesResponse"
    "fixture/DescribeEventCategoriesResponse.proto"
    dms
    (Proxy :: Proxy DescribeEventCategories)

responseStartReplicationTaskAssessment :: StartReplicationTaskAssessmentResponse -> TestTree
responseStartReplicationTaskAssessment =
  res
    "StartReplicationTaskAssessmentResponse"
    "fixture/StartReplicationTaskAssessmentResponse.proto"
    dms
    (Proxy :: Proxy StartReplicationTaskAssessment)

responseDeleteConnection :: DeleteConnectionResponse -> TestTree
responseDeleteConnection =
  res
    "DeleteConnectionResponse"
    "fixture/DeleteConnectionResponse.proto"
    dms
    (Proxy :: Proxy DeleteConnection)

responseCreateEndpoint :: CreateEndpointResponse -> TestTree
responseCreateEndpoint =
  res
    "CreateEndpointResponse"
    "fixture/CreateEndpointResponse.proto"
    dms
    (Proxy :: Proxy CreateEndpoint)

responseDescribeOrderableReplicationInstances :: DescribeOrderableReplicationInstancesResponse -> TestTree
responseDescribeOrderableReplicationInstances =
  res
    "DescribeOrderableReplicationInstancesResponse"
    "fixture/DescribeOrderableReplicationInstancesResponse.proto"
    dms
    (Proxy :: Proxy DescribeOrderableReplicationInstances)

responseDeleteCertificate :: DeleteCertificateResponse -> TestTree
responseDeleteCertificate =
  res
    "DeleteCertificateResponse"
    "fixture/DeleteCertificateResponse.proto"
    dms
    (Proxy :: Proxy DeleteCertificate)

responseDescribeApplicableIndividualAssessments :: DescribeApplicableIndividualAssessmentsResponse -> TestTree
responseDescribeApplicableIndividualAssessments =
  res
    "DescribeApplicableIndividualAssessmentsResponse"
    "fixture/DescribeApplicableIndividualAssessmentsResponse.proto"
    dms
    (Proxy :: Proxy DescribeApplicableIndividualAssessments)

responseReloadTables :: ReloadTablesResponse -> TestTree
responseReloadTables =
  res
    "ReloadTablesResponse"
    "fixture/ReloadTablesResponse.proto"
    dms
    (Proxy :: Proxy ReloadTables)

responseStartReplicationTask :: StartReplicationTaskResponse -> TestTree
responseStartReplicationTask =
  res
    "StartReplicationTaskResponse"
    "fixture/StartReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy StartReplicationTask)

responseDescribeEventSubscriptions :: DescribeEventSubscriptionsResponse -> TestTree
responseDescribeEventSubscriptions =
  res
    "DescribeEventSubscriptionsResponse"
    "fixture/DescribeEventSubscriptionsResponse.proto"
    dms
    (Proxy :: Proxy DescribeEventSubscriptions)

responseModifyReplicationTask :: ModifyReplicationTaskResponse -> TestTree
responseModifyReplicationTask =
  res
    "ModifyReplicationTaskResponse"
    "fixture/ModifyReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy ModifyReplicationTask)

responseStopReplicationTask :: StopReplicationTaskResponse -> TestTree
responseStopReplicationTask =
  res
    "StopReplicationTaskResponse"
    "fixture/StopReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy StopReplicationTask)

responseCreateReplicationInstance :: CreateReplicationInstanceResponse -> TestTree
responseCreateReplicationInstance =
  res
    "CreateReplicationInstanceResponse"
    "fixture/CreateReplicationInstanceResponse.proto"
    dms
    (Proxy :: Proxy CreateReplicationInstance)

responseDescribeReplicationSubnetGroups :: DescribeReplicationSubnetGroupsResponse -> TestTree
responseDescribeReplicationSubnetGroups =
  res
    "DescribeReplicationSubnetGroupsResponse"
    "fixture/DescribeReplicationSubnetGroupsResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationSubnetGroups)

responseDeleteEventSubscription :: DeleteEventSubscriptionResponse -> TestTree
responseDeleteEventSubscription =
  res
    "DeleteEventSubscriptionResponse"
    "fixture/DeleteEventSubscriptionResponse.proto"
    dms
    (Proxy :: Proxy DeleteEventSubscription)

responseDescribeTableStatistics :: DescribeTableStatisticsResponse -> TestTree
responseDescribeTableStatistics =
  res
    "DescribeTableStatisticsResponse"
    "fixture/DescribeTableStatisticsResponse.proto"
    dms
    (Proxy :: Proxy DescribeTableStatistics)

responseStartReplicationTaskAssessmentRun :: StartReplicationTaskAssessmentRunResponse -> TestTree
responseStartReplicationTaskAssessmentRun =
  res
    "StartReplicationTaskAssessmentRunResponse"
    "fixture/StartReplicationTaskAssessmentRunResponse.proto"
    dms
    (Proxy :: Proxy StartReplicationTaskAssessmentRun)

responseDescribeRefreshSchemasStatus :: DescribeRefreshSchemasStatusResponse -> TestTree
responseDescribeRefreshSchemasStatus =
  res
    "DescribeRefreshSchemasStatusResponse"
    "fixture/DescribeRefreshSchemasStatusResponse.proto"
    dms
    (Proxy :: Proxy DescribeRefreshSchemasStatus)

responseDescribeAccountAttributes :: DescribeAccountAttributesResponse -> TestTree
responseDescribeAccountAttributes =
  res
    "DescribeAccountAttributesResponse"
    "fixture/DescribeAccountAttributesResponse.proto"
    dms
    (Proxy :: Proxy DescribeAccountAttributes)

responseRemoveTagsFromResource :: RemoveTagsFromResourceResponse -> TestTree
responseRemoveTagsFromResource =
  res
    "RemoveTagsFromResourceResponse"
    "fixture/RemoveTagsFromResourceResponse.proto"
    dms
    (Proxy :: Proxy RemoveTagsFromResource)

responseDescribeCertificates :: DescribeCertificatesResponse -> TestTree
responseDescribeCertificates =
  res
    "DescribeCertificatesResponse"
    "fixture/DescribeCertificatesResponse.proto"
    dms
    (Proxy :: Proxy DescribeCertificates)

responseModifyEndpoint :: ModifyEndpointResponse -> TestTree
responseModifyEndpoint =
  res
    "ModifyEndpointResponse"
    "fixture/ModifyEndpointResponse.proto"
    dms
    (Proxy :: Proxy ModifyEndpoint)

responseTestConnection :: TestConnectionResponse -> TestTree
responseTestConnection =
  res
    "TestConnectionResponse"
    "fixture/TestConnectionResponse.proto"
    dms
    (Proxy :: Proxy TestConnection)

responseDescribeReplicationTaskAssessmentResults :: DescribeReplicationTaskAssessmentResultsResponse -> TestTree
responseDescribeReplicationTaskAssessmentResults =
  res
    "DescribeReplicationTaskAssessmentResultsResponse"
    "fixture/DescribeReplicationTaskAssessmentResultsResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationTaskAssessmentResults)

responseApplyPendingMaintenanceAction :: ApplyPendingMaintenanceActionResponse -> TestTree
responseApplyPendingMaintenanceAction =
  res
    "ApplyPendingMaintenanceActionResponse"
    "fixture/ApplyPendingMaintenanceActionResponse.proto"
    dms
    (Proxy :: Proxy ApplyPendingMaintenanceAction)

responseImportCertificate :: ImportCertificateResponse -> TestTree
responseImportCertificate =
  res
    "ImportCertificateResponse"
    "fixture/ImportCertificateResponse.proto"
    dms
    (Proxy :: Proxy ImportCertificate)

responseDescribeEndpointTypes :: DescribeEndpointTypesResponse -> TestTree
responseDescribeEndpointTypes =
  res
    "DescribeEndpointTypesResponse"
    "fixture/DescribeEndpointTypesResponse.proto"
    dms
    (Proxy :: Proxy DescribeEndpointTypes)

responseDescribePendingMaintenanceActions :: DescribePendingMaintenanceActionsResponse -> TestTree
responseDescribePendingMaintenanceActions =
  res
    "DescribePendingMaintenanceActionsResponse"
    "fixture/DescribePendingMaintenanceActionsResponse.proto"
    dms
    (Proxy :: Proxy DescribePendingMaintenanceActions)

responseDeleteEndpoint :: DeleteEndpointResponse -> TestTree
responseDeleteEndpoint =
  res
    "DeleteEndpointResponse"
    "fixture/DeleteEndpointResponse.proto"
    dms
    (Proxy :: Proxy DeleteEndpoint)

responseDescribeEvents :: DescribeEventsResponse -> TestTree
responseDescribeEvents =
  res
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse.proto"
    dms
    (Proxy :: Proxy DescribeEvents)

responseDescribeSchemas :: DescribeSchemasResponse -> TestTree
responseDescribeSchemas =
  res
    "DescribeSchemasResponse"
    "fixture/DescribeSchemasResponse.proto"
    dms
    (Proxy :: Proxy DescribeSchemas)

responseModifyEventSubscription :: ModifyEventSubscriptionResponse -> TestTree
responseModifyEventSubscription =
  res
    "ModifyEventSubscriptionResponse"
    "fixture/ModifyEventSubscriptionResponse.proto"
    dms
    (Proxy :: Proxy ModifyEventSubscription)

responseDescribeReplicationTasks :: DescribeReplicationTasksResponse -> TestTree
responseDescribeReplicationTasks =
  res
    "DescribeReplicationTasksResponse"
    "fixture/DescribeReplicationTasksResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationTasks)

responseRefreshSchemas :: RefreshSchemasResponse -> TestTree
responseRefreshSchemas =
  res
    "RefreshSchemasResponse"
    "fixture/RefreshSchemasResponse.proto"
    dms
    (Proxy :: Proxy RefreshSchemas)

responseCreateReplicationSubnetGroup :: CreateReplicationSubnetGroupResponse -> TestTree
responseCreateReplicationSubnetGroup =
  res
    "CreateReplicationSubnetGroupResponse"
    "fixture/CreateReplicationSubnetGroupResponse.proto"
    dms
    (Proxy :: Proxy CreateReplicationSubnetGroup)

responseRebootReplicationInstance :: RebootReplicationInstanceResponse -> TestTree
responseRebootReplicationInstance =
  res
    "RebootReplicationInstanceResponse"
    "fixture/RebootReplicationInstanceResponse.proto"
    dms
    (Proxy :: Proxy RebootReplicationInstance)

responseDeleteReplicationInstance :: DeleteReplicationInstanceResponse -> TestTree
responseDeleteReplicationInstance =
  res
    "DeleteReplicationInstanceResponse"
    "fixture/DeleteReplicationInstanceResponse.proto"
    dms
    (Proxy :: Proxy DeleteReplicationInstance)

responseDeleteReplicationSubnetGroup :: DeleteReplicationSubnetGroupResponse -> TestTree
responseDeleteReplicationSubnetGroup =
  res
    "DeleteReplicationSubnetGroupResponse"
    "fixture/DeleteReplicationSubnetGroupResponse.proto"
    dms
    (Proxy :: Proxy DeleteReplicationSubnetGroup)

responseAddTagsToResource :: AddTagsToResourceResponse -> TestTree
responseAddTagsToResource =
  res
    "AddTagsToResourceResponse"
    "fixture/AddTagsToResourceResponse.proto"
    dms
    (Proxy :: Proxy AddTagsToResource)

responseCreateEventSubscription :: CreateEventSubscriptionResponse -> TestTree
responseCreateEventSubscription =
  res
    "CreateEventSubscriptionResponse"
    "fixture/CreateEventSubscriptionResponse.proto"
    dms
    (Proxy :: Proxy CreateEventSubscription)

responseDescribeReplicationInstances :: DescribeReplicationInstancesResponse -> TestTree
responseDescribeReplicationInstances =
  res
    "DescribeReplicationInstancesResponse"
    "fixture/DescribeReplicationInstancesResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationInstances)

responseDescribeReplicationTaskAssessmentRuns :: DescribeReplicationTaskAssessmentRunsResponse -> TestTree
responseDescribeReplicationTaskAssessmentRuns =
  res
    "DescribeReplicationTaskAssessmentRunsResponse"
    "fixture/DescribeReplicationTaskAssessmentRunsResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationTaskAssessmentRuns)

responseCancelReplicationTaskAssessmentRun :: CancelReplicationTaskAssessmentRunResponse -> TestTree
responseCancelReplicationTaskAssessmentRun =
  res
    "CancelReplicationTaskAssessmentRunResponse"
    "fixture/CancelReplicationTaskAssessmentRunResponse.proto"
    dms
    (Proxy :: Proxy CancelReplicationTaskAssessmentRun)

responseDescribeConnections :: DescribeConnectionsResponse -> TestTree
responseDescribeConnections =
  res
    "DescribeConnectionsResponse"
    "fixture/DescribeConnectionsResponse.proto"
    dms
    (Proxy :: Proxy DescribeConnections)

responseModifyReplicationSubnetGroup :: ModifyReplicationSubnetGroupResponse -> TestTree
responseModifyReplicationSubnetGroup =
  res
    "ModifyReplicationSubnetGroupResponse"
    "fixture/ModifyReplicationSubnetGroupResponse.proto"
    dms
    (Proxy :: Proxy ModifyReplicationSubnetGroup)

responseDeleteReplicationTask :: DeleteReplicationTaskResponse -> TestTree
responseDeleteReplicationTask =
  res
    "DeleteReplicationTaskResponse"
    "fixture/DeleteReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy DeleteReplicationTask)

responseMoveReplicationTask :: MoveReplicationTaskResponse -> TestTree
responseMoveReplicationTask =
  res
    "MoveReplicationTaskResponse"
    "fixture/MoveReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy MoveReplicationTask)

responseDescribeReplicationTaskIndividualAssessments :: DescribeReplicationTaskIndividualAssessmentsResponse -> TestTree
responseDescribeReplicationTaskIndividualAssessments =
  res
    "DescribeReplicationTaskIndividualAssessmentsResponse"
    "fixture/DescribeReplicationTaskIndividualAssessmentsResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationTaskIndividualAssessments)

responseModifyReplicationInstance :: ModifyReplicationInstanceResponse -> TestTree
responseModifyReplicationInstance =
  res
    "ModifyReplicationInstanceResponse"
    "fixture/ModifyReplicationInstanceResponse.proto"
    dms
    (Proxy :: Proxy ModifyReplicationInstance)

responseDescribeEndpoints :: DescribeEndpointsResponse -> TestTree
responseDescribeEndpoints =
  res
    "DescribeEndpointsResponse"
    "fixture/DescribeEndpointsResponse.proto"
    dms
    (Proxy :: Proxy DescribeEndpoints)

responseCreateReplicationTask :: CreateReplicationTaskResponse -> TestTree
responseCreateReplicationTask =
  res
    "CreateReplicationTaskResponse"
    "fixture/CreateReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy CreateReplicationTask)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    dms
    (Proxy :: Proxy ListTagsForResource)

responseDescribeReplicationInstanceTaskLogs :: DescribeReplicationInstanceTaskLogsResponse -> TestTree
responseDescribeReplicationInstanceTaskLogs =
  res
    "DescribeReplicationInstanceTaskLogsResponse"
    "fixture/DescribeReplicationInstanceTaskLogsResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationInstanceTaskLogs)
