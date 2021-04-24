{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CodeDeploy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CodeDeploy where

import Data.Proxy
import Network.AWS.CodeDeploy
import Test.AWS.CodeDeploy.Internal
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
--         [ requestBatchGetOnPremisesInstances $
--             batchGetOnPremisesInstances
--
--         , requestGetApplicationRevision $
--             getApplicationRevision
--
--         , requestBatchGetDeploymentGroups $
--             batchGetDeploymentGroups
--
--         , requestCreateDeploymentConfig $
--             createDeploymentConfig
--
--         , requestStopDeployment $
--             stopDeployment
--
--         , requestListDeploymentTargets $
--             listDeploymentTargets
--
--         , requestCreateApplication $
--             createApplication
--
--         , requestAddTagsToOnPremisesInstances $
--             addTagsToOnPremisesInstances
--
--         , requestGetDeploymentTarget $
--             getDeploymentTarget
--
--         , requestDeleteResourcesByExternalId $
--             deleteResourcesByExternalId
--
--         , requestUntagResource $
--             untagResource
--
--         , requestBatchGetApplications $
--             batchGetApplications
--
--         , requestBatchGetApplicationRevisions $
--             batchGetApplicationRevisions
--
--         , requestListDeployments $
--             listDeployments
--
--         , requestTagResource $
--             tagResource
--
--         , requestContinueDeployment $
--             continueDeployment
--
--         , requestGetDeploymentConfig $
--             getDeploymentConfig
--
--         , requestDeleteDeploymentConfig $
--             deleteDeploymentConfig
--
--         , requestCreateDeploymentGroup $
--             createDeploymentGroup
--
--         , requestListDeploymentConfigs $
--             listDeploymentConfigs
--
--         , requestDeleteDeploymentGroup $
--             deleteDeploymentGroup
--
--         , requestListDeploymentGroups $
--             listDeploymentGroups
--
--         , requestListOnPremisesInstances $
--             listOnPremisesInstances
--
--         , requestUpdateDeploymentGroup $
--             updateDeploymentGroup
--
--         , requestGetDeployment $
--             getDeployment
--
--         , requestRegisterOnPremisesInstance $
--             registerOnPremisesInstance
--
--         , requestRemoveTagsFromOnPremisesInstances $
--             removeTagsFromOnPremisesInstances
--
--         , requestGetApplication $
--             getApplication
--
--         , requestBatchGetDeploymentTargets $
--             batchGetDeploymentTargets
--
--         , requestListGitHubAccountTokenNames $
--             listGitHubAccountTokenNames
--
--         , requestDeleteGitHubAccountToken $
--             deleteGitHubAccountToken
--
--         , requestPutLifecycleEventHookExecutionStatus $
--             putLifecycleEventHookExecutionStatus
--
--         , requestDeregisterOnPremisesInstance $
--             deregisterOnPremisesInstance
--
--         , requestDeleteApplication $
--             deleteApplication
--
--         , requestListApplications $
--             listApplications
--
--         , requestUpdateApplication $
--             updateApplication
--
--         , requestRegisterApplicationRevision $
--             registerApplicationRevision
--
--         , requestGetOnPremisesInstance $
--             getOnPremisesInstance
--
--         , requestListApplicationRevisions $
--             listApplicationRevisions
--
--         , requestBatchGetDeployments $
--             batchGetDeployments
--
--         , requestGetDeploymentGroup $
--             getDeploymentGroup
--
--         , requestCreateDeployment $
--             createDeployment
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--           ]

--     , testGroup "response"
--         [ responseBatchGetOnPremisesInstances $
--             batchGetOnPremisesInstancesResponse
--
--         , responseGetApplicationRevision $
--             getApplicationRevisionResponse
--
--         , responseBatchGetDeploymentGroups $
--             batchGetDeploymentGroupsResponse
--
--         , responseCreateDeploymentConfig $
--             createDeploymentConfigResponse
--
--         , responseStopDeployment $
--             stopDeploymentResponse
--
--         , responseListDeploymentTargets $
--             listDeploymentTargetsResponse
--
--         , responseCreateApplication $
--             createApplicationResponse
--
--         , responseAddTagsToOnPremisesInstances $
--             addTagsToOnPremisesInstancesResponse
--
--         , responseGetDeploymentTarget $
--             getDeploymentTargetResponse
--
--         , responseDeleteResourcesByExternalId $
--             deleteResourcesByExternalIdResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseBatchGetApplications $
--             batchGetApplicationsResponse
--
--         , responseBatchGetApplicationRevisions $
--             batchGetApplicationRevisionsResponse
--
--         , responseListDeployments $
--             listDeploymentsResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseContinueDeployment $
--             continueDeploymentResponse
--
--         , responseGetDeploymentConfig $
--             getDeploymentConfigResponse
--
--         , responseDeleteDeploymentConfig $
--             deleteDeploymentConfigResponse
--
--         , responseCreateDeploymentGroup $
--             createDeploymentGroupResponse
--
--         , responseListDeploymentConfigs $
--             listDeploymentConfigsResponse
--
--         , responseDeleteDeploymentGroup $
--             deleteDeploymentGroupResponse
--
--         , responseListDeploymentGroups $
--             listDeploymentGroupsResponse
--
--         , responseListOnPremisesInstances $
--             listOnPremisesInstancesResponse
--
--         , responseUpdateDeploymentGroup $
--             updateDeploymentGroupResponse
--
--         , responseGetDeployment $
--             getDeploymentResponse
--
--         , responseRegisterOnPremisesInstance $
--             registerOnPremisesInstanceResponse
--
--         , responseRemoveTagsFromOnPremisesInstances $
--             removeTagsFromOnPremisesInstancesResponse
--
--         , responseGetApplication $
--             getApplicationResponse
--
--         , responseBatchGetDeploymentTargets $
--             batchGetDeploymentTargetsResponse
--
--         , responseListGitHubAccountTokenNames $
--             listGitHubAccountTokenNamesResponse
--
--         , responseDeleteGitHubAccountToken $
--             deleteGitHubAccountTokenResponse
--
--         , responsePutLifecycleEventHookExecutionStatus $
--             putLifecycleEventHookExecutionStatusResponse
--
--         , responseDeregisterOnPremisesInstance $
--             deregisterOnPremisesInstanceResponse
--
--         , responseDeleteApplication $
--             deleteApplicationResponse
--
--         , responseListApplications $
--             listApplicationsResponse
--
--         , responseUpdateApplication $
--             updateApplicationResponse
--
--         , responseRegisterApplicationRevision $
--             registerApplicationRevisionResponse
--
--         , responseGetOnPremisesInstance $
--             getOnPremisesInstanceResponse
--
--         , responseListApplicationRevisions $
--             listApplicationRevisionsResponse
--
--         , responseBatchGetDeployments $
--             batchGetDeploymentsResponse
--
--         , responseGetDeploymentGroup $
--             getDeploymentGroupResponse
--
--         , responseCreateDeployment $
--             createDeploymentResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--           ]
--     ]

-- Requests

requestBatchGetOnPremisesInstances :: BatchGetOnPremisesInstances -> TestTree
requestBatchGetOnPremisesInstances =
  req
    "BatchGetOnPremisesInstances"
    "fixture/BatchGetOnPremisesInstances.yaml"

requestGetApplicationRevision :: GetApplicationRevision -> TestTree
requestGetApplicationRevision =
  req
    "GetApplicationRevision"
    "fixture/GetApplicationRevision.yaml"

requestBatchGetDeploymentGroups :: BatchGetDeploymentGroups -> TestTree
requestBatchGetDeploymentGroups =
  req
    "BatchGetDeploymentGroups"
    "fixture/BatchGetDeploymentGroups.yaml"

requestCreateDeploymentConfig :: CreateDeploymentConfig -> TestTree
requestCreateDeploymentConfig =
  req
    "CreateDeploymentConfig"
    "fixture/CreateDeploymentConfig.yaml"

requestStopDeployment :: StopDeployment -> TestTree
requestStopDeployment =
  req
    "StopDeployment"
    "fixture/StopDeployment.yaml"

requestListDeploymentTargets :: ListDeploymentTargets -> TestTree
requestListDeploymentTargets =
  req
    "ListDeploymentTargets"
    "fixture/ListDeploymentTargets.yaml"

requestCreateApplication :: CreateApplication -> TestTree
requestCreateApplication =
  req
    "CreateApplication"
    "fixture/CreateApplication.yaml"

requestAddTagsToOnPremisesInstances :: AddTagsToOnPremisesInstances -> TestTree
requestAddTagsToOnPremisesInstances =
  req
    "AddTagsToOnPremisesInstances"
    "fixture/AddTagsToOnPremisesInstances.yaml"

requestGetDeploymentTarget :: GetDeploymentTarget -> TestTree
requestGetDeploymentTarget =
  req
    "GetDeploymentTarget"
    "fixture/GetDeploymentTarget.yaml"

requestDeleteResourcesByExternalId :: DeleteResourcesByExternalId -> TestTree
requestDeleteResourcesByExternalId =
  req
    "DeleteResourcesByExternalId"
    "fixture/DeleteResourcesByExternalId.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestBatchGetApplications :: BatchGetApplications -> TestTree
requestBatchGetApplications =
  req
    "BatchGetApplications"
    "fixture/BatchGetApplications.yaml"

requestBatchGetApplicationRevisions :: BatchGetApplicationRevisions -> TestTree
requestBatchGetApplicationRevisions =
  req
    "BatchGetApplicationRevisions"
    "fixture/BatchGetApplicationRevisions.yaml"

requestListDeployments :: ListDeployments -> TestTree
requestListDeployments =
  req
    "ListDeployments"
    "fixture/ListDeployments.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestContinueDeployment :: ContinueDeployment -> TestTree
requestContinueDeployment =
  req
    "ContinueDeployment"
    "fixture/ContinueDeployment.yaml"

requestGetDeploymentConfig :: GetDeploymentConfig -> TestTree
requestGetDeploymentConfig =
  req
    "GetDeploymentConfig"
    "fixture/GetDeploymentConfig.yaml"

requestDeleteDeploymentConfig :: DeleteDeploymentConfig -> TestTree
requestDeleteDeploymentConfig =
  req
    "DeleteDeploymentConfig"
    "fixture/DeleteDeploymentConfig.yaml"

requestCreateDeploymentGroup :: CreateDeploymentGroup -> TestTree
requestCreateDeploymentGroup =
  req
    "CreateDeploymentGroup"
    "fixture/CreateDeploymentGroup.yaml"

requestListDeploymentConfigs :: ListDeploymentConfigs -> TestTree
requestListDeploymentConfigs =
  req
    "ListDeploymentConfigs"
    "fixture/ListDeploymentConfigs.yaml"

requestDeleteDeploymentGroup :: DeleteDeploymentGroup -> TestTree
requestDeleteDeploymentGroup =
  req
    "DeleteDeploymentGroup"
    "fixture/DeleteDeploymentGroup.yaml"

requestListDeploymentGroups :: ListDeploymentGroups -> TestTree
requestListDeploymentGroups =
  req
    "ListDeploymentGroups"
    "fixture/ListDeploymentGroups.yaml"

requestListOnPremisesInstances :: ListOnPremisesInstances -> TestTree
requestListOnPremisesInstances =
  req
    "ListOnPremisesInstances"
    "fixture/ListOnPremisesInstances.yaml"

requestUpdateDeploymentGroup :: UpdateDeploymentGroup -> TestTree
requestUpdateDeploymentGroup =
  req
    "UpdateDeploymentGroup"
    "fixture/UpdateDeploymentGroup.yaml"

requestGetDeployment :: GetDeployment -> TestTree
requestGetDeployment =
  req
    "GetDeployment"
    "fixture/GetDeployment.yaml"

requestRegisterOnPremisesInstance :: RegisterOnPremisesInstance -> TestTree
requestRegisterOnPremisesInstance =
  req
    "RegisterOnPremisesInstance"
    "fixture/RegisterOnPremisesInstance.yaml"

requestRemoveTagsFromOnPremisesInstances :: RemoveTagsFromOnPremisesInstances -> TestTree
requestRemoveTagsFromOnPremisesInstances =
  req
    "RemoveTagsFromOnPremisesInstances"
    "fixture/RemoveTagsFromOnPremisesInstances.yaml"

requestGetApplication :: GetApplication -> TestTree
requestGetApplication =
  req
    "GetApplication"
    "fixture/GetApplication.yaml"

requestBatchGetDeploymentTargets :: BatchGetDeploymentTargets -> TestTree
requestBatchGetDeploymentTargets =
  req
    "BatchGetDeploymentTargets"
    "fixture/BatchGetDeploymentTargets.yaml"

requestListGitHubAccountTokenNames :: ListGitHubAccountTokenNames -> TestTree
requestListGitHubAccountTokenNames =
  req
    "ListGitHubAccountTokenNames"
    "fixture/ListGitHubAccountTokenNames.yaml"

requestDeleteGitHubAccountToken :: DeleteGitHubAccountToken -> TestTree
requestDeleteGitHubAccountToken =
  req
    "DeleteGitHubAccountToken"
    "fixture/DeleteGitHubAccountToken.yaml"

requestPutLifecycleEventHookExecutionStatus :: PutLifecycleEventHookExecutionStatus -> TestTree
requestPutLifecycleEventHookExecutionStatus =
  req
    "PutLifecycleEventHookExecutionStatus"
    "fixture/PutLifecycleEventHookExecutionStatus.yaml"

requestDeregisterOnPremisesInstance :: DeregisterOnPremisesInstance -> TestTree
requestDeregisterOnPremisesInstance =
  req
    "DeregisterOnPremisesInstance"
    "fixture/DeregisterOnPremisesInstance.yaml"

requestDeleteApplication :: DeleteApplication -> TestTree
requestDeleteApplication =
  req
    "DeleteApplication"
    "fixture/DeleteApplication.yaml"

requestListApplications :: ListApplications -> TestTree
requestListApplications =
  req
    "ListApplications"
    "fixture/ListApplications.yaml"

requestUpdateApplication :: UpdateApplication -> TestTree
requestUpdateApplication =
  req
    "UpdateApplication"
    "fixture/UpdateApplication.yaml"

requestRegisterApplicationRevision :: RegisterApplicationRevision -> TestTree
requestRegisterApplicationRevision =
  req
    "RegisterApplicationRevision"
    "fixture/RegisterApplicationRevision.yaml"

requestGetOnPremisesInstance :: GetOnPremisesInstance -> TestTree
requestGetOnPremisesInstance =
  req
    "GetOnPremisesInstance"
    "fixture/GetOnPremisesInstance.yaml"

requestListApplicationRevisions :: ListApplicationRevisions -> TestTree
requestListApplicationRevisions =
  req
    "ListApplicationRevisions"
    "fixture/ListApplicationRevisions.yaml"

requestBatchGetDeployments :: BatchGetDeployments -> TestTree
requestBatchGetDeployments =
  req
    "BatchGetDeployments"
    "fixture/BatchGetDeployments.yaml"

requestGetDeploymentGroup :: GetDeploymentGroup -> TestTree
requestGetDeploymentGroup =
  req
    "GetDeploymentGroup"
    "fixture/GetDeploymentGroup.yaml"

requestCreateDeployment :: CreateDeployment -> TestTree
requestCreateDeployment =
  req
    "CreateDeployment"
    "fixture/CreateDeployment.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

-- Responses

responseBatchGetOnPremisesInstances :: BatchGetOnPremisesInstancesResponse -> TestTree
responseBatchGetOnPremisesInstances =
  res
    "BatchGetOnPremisesInstancesResponse"
    "fixture/BatchGetOnPremisesInstancesResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetOnPremisesInstances)

responseGetApplicationRevision :: GetApplicationRevisionResponse -> TestTree
responseGetApplicationRevision =
  res
    "GetApplicationRevisionResponse"
    "fixture/GetApplicationRevisionResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetApplicationRevision)

responseBatchGetDeploymentGroups :: BatchGetDeploymentGroupsResponse -> TestTree
responseBatchGetDeploymentGroups =
  res
    "BatchGetDeploymentGroupsResponse"
    "fixture/BatchGetDeploymentGroupsResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetDeploymentGroups)

responseCreateDeploymentConfig :: CreateDeploymentConfigResponse -> TestTree
responseCreateDeploymentConfig =
  res
    "CreateDeploymentConfigResponse"
    "fixture/CreateDeploymentConfigResponse.proto"
    codeDeploy
    (Proxy :: Proxy CreateDeploymentConfig)

responseStopDeployment :: StopDeploymentResponse -> TestTree
responseStopDeployment =
  res
    "StopDeploymentResponse"
    "fixture/StopDeploymentResponse.proto"
    codeDeploy
    (Proxy :: Proxy StopDeployment)

responseListDeploymentTargets :: ListDeploymentTargetsResponse -> TestTree
responseListDeploymentTargets =
  res
    "ListDeploymentTargetsResponse"
    "fixture/ListDeploymentTargetsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListDeploymentTargets)

responseCreateApplication :: CreateApplicationResponse -> TestTree
responseCreateApplication =
  res
    "CreateApplicationResponse"
    "fixture/CreateApplicationResponse.proto"
    codeDeploy
    (Proxy :: Proxy CreateApplication)

responseAddTagsToOnPremisesInstances :: AddTagsToOnPremisesInstancesResponse -> TestTree
responseAddTagsToOnPremisesInstances =
  res
    "AddTagsToOnPremisesInstancesResponse"
    "fixture/AddTagsToOnPremisesInstancesResponse.proto"
    codeDeploy
    (Proxy :: Proxy AddTagsToOnPremisesInstances)

responseGetDeploymentTarget :: GetDeploymentTargetResponse -> TestTree
responseGetDeploymentTarget =
  res
    "GetDeploymentTargetResponse"
    "fixture/GetDeploymentTargetResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetDeploymentTarget)

responseDeleteResourcesByExternalId :: DeleteResourcesByExternalIdResponse -> TestTree
responseDeleteResourcesByExternalId =
  res
    "DeleteResourcesByExternalIdResponse"
    "fixture/DeleteResourcesByExternalIdResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeleteResourcesByExternalId)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    codeDeploy
    (Proxy :: Proxy UntagResource)

responseBatchGetApplications :: BatchGetApplicationsResponse -> TestTree
responseBatchGetApplications =
  res
    "BatchGetApplicationsResponse"
    "fixture/BatchGetApplicationsResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetApplications)

responseBatchGetApplicationRevisions :: BatchGetApplicationRevisionsResponse -> TestTree
responseBatchGetApplicationRevisions =
  res
    "BatchGetApplicationRevisionsResponse"
    "fixture/BatchGetApplicationRevisionsResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetApplicationRevisions)

responseListDeployments :: ListDeploymentsResponse -> TestTree
responseListDeployments =
  res
    "ListDeploymentsResponse"
    "fixture/ListDeploymentsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListDeployments)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    codeDeploy
    (Proxy :: Proxy TagResource)

responseContinueDeployment :: ContinueDeploymentResponse -> TestTree
responseContinueDeployment =
  res
    "ContinueDeploymentResponse"
    "fixture/ContinueDeploymentResponse.proto"
    codeDeploy
    (Proxy :: Proxy ContinueDeployment)

responseGetDeploymentConfig :: GetDeploymentConfigResponse -> TestTree
responseGetDeploymentConfig =
  res
    "GetDeploymentConfigResponse"
    "fixture/GetDeploymentConfigResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetDeploymentConfig)

responseDeleteDeploymentConfig :: DeleteDeploymentConfigResponse -> TestTree
responseDeleteDeploymentConfig =
  res
    "DeleteDeploymentConfigResponse"
    "fixture/DeleteDeploymentConfigResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeleteDeploymentConfig)

responseCreateDeploymentGroup :: CreateDeploymentGroupResponse -> TestTree
responseCreateDeploymentGroup =
  res
    "CreateDeploymentGroupResponse"
    "fixture/CreateDeploymentGroupResponse.proto"
    codeDeploy
    (Proxy :: Proxy CreateDeploymentGroup)

responseListDeploymentConfigs :: ListDeploymentConfigsResponse -> TestTree
responseListDeploymentConfigs =
  res
    "ListDeploymentConfigsResponse"
    "fixture/ListDeploymentConfigsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListDeploymentConfigs)

responseDeleteDeploymentGroup :: DeleteDeploymentGroupResponse -> TestTree
responseDeleteDeploymentGroup =
  res
    "DeleteDeploymentGroupResponse"
    "fixture/DeleteDeploymentGroupResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeleteDeploymentGroup)

responseListDeploymentGroups :: ListDeploymentGroupsResponse -> TestTree
responseListDeploymentGroups =
  res
    "ListDeploymentGroupsResponse"
    "fixture/ListDeploymentGroupsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListDeploymentGroups)

responseListOnPremisesInstances :: ListOnPremisesInstancesResponse -> TestTree
responseListOnPremisesInstances =
  res
    "ListOnPremisesInstancesResponse"
    "fixture/ListOnPremisesInstancesResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListOnPremisesInstances)

responseUpdateDeploymentGroup :: UpdateDeploymentGroupResponse -> TestTree
responseUpdateDeploymentGroup =
  res
    "UpdateDeploymentGroupResponse"
    "fixture/UpdateDeploymentGroupResponse.proto"
    codeDeploy
    (Proxy :: Proxy UpdateDeploymentGroup)

responseGetDeployment :: GetDeploymentResponse -> TestTree
responseGetDeployment =
  res
    "GetDeploymentResponse"
    "fixture/GetDeploymentResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetDeployment)

responseRegisterOnPremisesInstance :: RegisterOnPremisesInstanceResponse -> TestTree
responseRegisterOnPremisesInstance =
  res
    "RegisterOnPremisesInstanceResponse"
    "fixture/RegisterOnPremisesInstanceResponse.proto"
    codeDeploy
    (Proxy :: Proxy RegisterOnPremisesInstance)

responseRemoveTagsFromOnPremisesInstances :: RemoveTagsFromOnPremisesInstancesResponse -> TestTree
responseRemoveTagsFromOnPremisesInstances =
  res
    "RemoveTagsFromOnPremisesInstancesResponse"
    "fixture/RemoveTagsFromOnPremisesInstancesResponse.proto"
    codeDeploy
    (Proxy :: Proxy RemoveTagsFromOnPremisesInstances)

responseGetApplication :: GetApplicationResponse -> TestTree
responseGetApplication =
  res
    "GetApplicationResponse"
    "fixture/GetApplicationResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetApplication)

responseBatchGetDeploymentTargets :: BatchGetDeploymentTargetsResponse -> TestTree
responseBatchGetDeploymentTargets =
  res
    "BatchGetDeploymentTargetsResponse"
    "fixture/BatchGetDeploymentTargetsResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetDeploymentTargets)

responseListGitHubAccountTokenNames :: ListGitHubAccountTokenNamesResponse -> TestTree
responseListGitHubAccountTokenNames =
  res
    "ListGitHubAccountTokenNamesResponse"
    "fixture/ListGitHubAccountTokenNamesResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListGitHubAccountTokenNames)

responseDeleteGitHubAccountToken :: DeleteGitHubAccountTokenResponse -> TestTree
responseDeleteGitHubAccountToken =
  res
    "DeleteGitHubAccountTokenResponse"
    "fixture/DeleteGitHubAccountTokenResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeleteGitHubAccountToken)

responsePutLifecycleEventHookExecutionStatus :: PutLifecycleEventHookExecutionStatusResponse -> TestTree
responsePutLifecycleEventHookExecutionStatus =
  res
    "PutLifecycleEventHookExecutionStatusResponse"
    "fixture/PutLifecycleEventHookExecutionStatusResponse.proto"
    codeDeploy
    (Proxy :: Proxy PutLifecycleEventHookExecutionStatus)

responseDeregisterOnPremisesInstance :: DeregisterOnPremisesInstanceResponse -> TestTree
responseDeregisterOnPremisesInstance =
  res
    "DeregisterOnPremisesInstanceResponse"
    "fixture/DeregisterOnPremisesInstanceResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeregisterOnPremisesInstance)

responseDeleteApplication :: DeleteApplicationResponse -> TestTree
responseDeleteApplication =
  res
    "DeleteApplicationResponse"
    "fixture/DeleteApplicationResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeleteApplication)

responseListApplications :: ListApplicationsResponse -> TestTree
responseListApplications =
  res
    "ListApplicationsResponse"
    "fixture/ListApplicationsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListApplications)

responseUpdateApplication :: UpdateApplicationResponse -> TestTree
responseUpdateApplication =
  res
    "UpdateApplicationResponse"
    "fixture/UpdateApplicationResponse.proto"
    codeDeploy
    (Proxy :: Proxy UpdateApplication)

responseRegisterApplicationRevision :: RegisterApplicationRevisionResponse -> TestTree
responseRegisterApplicationRevision =
  res
    "RegisterApplicationRevisionResponse"
    "fixture/RegisterApplicationRevisionResponse.proto"
    codeDeploy
    (Proxy :: Proxy RegisterApplicationRevision)

responseGetOnPremisesInstance :: GetOnPremisesInstanceResponse -> TestTree
responseGetOnPremisesInstance =
  res
    "GetOnPremisesInstanceResponse"
    "fixture/GetOnPremisesInstanceResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetOnPremisesInstance)

responseListApplicationRevisions :: ListApplicationRevisionsResponse -> TestTree
responseListApplicationRevisions =
  res
    "ListApplicationRevisionsResponse"
    "fixture/ListApplicationRevisionsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListApplicationRevisions)

responseBatchGetDeployments :: BatchGetDeploymentsResponse -> TestTree
responseBatchGetDeployments =
  res
    "BatchGetDeploymentsResponse"
    "fixture/BatchGetDeploymentsResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetDeployments)

responseGetDeploymentGroup :: GetDeploymentGroupResponse -> TestTree
responseGetDeploymentGroup =
  res
    "GetDeploymentGroupResponse"
    "fixture/GetDeploymentGroupResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetDeploymentGroup)

responseCreateDeployment :: CreateDeploymentResponse -> TestTree
responseCreateDeployment =
  res
    "CreateDeploymentResponse"
    "fixture/CreateDeploymentResponse.proto"
    codeDeploy
    (Proxy :: Proxy CreateDeployment)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListTagsForResource)
