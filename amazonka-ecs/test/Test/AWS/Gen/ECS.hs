{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.ECS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.ECS where

import Data.Proxy
import Network.AWS.ECS
import Test.AWS.ECS.Internal
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
--         [ requestSubmitAttachmentStateChanges $
--             submitAttachmentStateChanges
--
--         , requestRegisterContainerInstance $
--             registerContainerInstance
--
--         , requestDiscoverPollEndpoint $
--             discoverPollEndpoint
--
--         , requestUpdateServicePrimaryTaskSet $
--             updateServicePrimaryTaskSet
--
--         , requestDescribeClusters $
--             describeClusters
--
--         , requestListServices $
--             listServices
--
--         , requestRunTask $
--             runTask
--
--         , requestListTasks $
--             listTasks
--
--         , requestCreateService $
--             createService
--
--         , requestPutAccountSetting $
--             putAccountSetting
--
--         , requestDeleteAttributes $
--             deleteAttributes
--
--         , requestCreateCluster $
--             createCluster
--
--         , requestCreateTaskSet $
--             createTaskSet
--
--         , requestDescribeTasks $
--             describeTasks
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDescribeContainerInstances $
--             describeContainerInstances
--
--         , requestTagResource $
--             tagResource
--
--         , requestPutAccountSettingDefault $
--             putAccountSettingDefault
--
--         , requestListAttributes $
--             listAttributes
--
--         , requestSubmitContainerStateChange $
--             submitContainerStateChange
--
--         , requestListContainerInstances $
--             listContainerInstances
--
--         , requestUpdateContainerAgent $
--             updateContainerAgent
--
--         , requestUpdateCapacityProvider $
--             updateCapacityProvider
--
--         , requestDeleteService $
--             deleteService
--
--         , requestUpdateService $
--             updateService
--
--         , requestDeleteCapacityProvider $
--             deleteCapacityProvider
--
--         , requestDescribeTaskSets $
--             describeTaskSets
--
--         , requestListTaskDefinitions $
--             listTaskDefinitions
--
--         , requestCreateCapacityProvider $
--             createCapacityProvider
--
--         , requestRegisterTaskDefinition $
--             registerTaskDefinition
--
--         , requestDeleteTaskSet $
--             deleteTaskSet
--
--         , requestUpdateClusterSettings $
--             updateClusterSettings
--
--         , requestUpdateTaskSet $
--             updateTaskSet
--
--         , requestDeregisterContainerInstance $
--             deregisterContainerInstance
--
--         , requestPutAttributes $
--             putAttributes
--
--         , requestDeleteAccountSetting $
--             deleteAccountSetting
--
--         , requestListAccountSettings $
--             listAccountSettings
--
--         , requestDescribeServices $
--             describeServices
--
--         , requestDescribeCapacityProviders $
--             describeCapacityProviders
--
--         , requestDeleteCluster $
--             deleteCluster
--
--         , requestListClusters $
--             listClusters
--
--         , requestUpdateContainerInstancesState $
--             updateContainerInstancesState
--
--         , requestSubmitTaskStateChange $
--             submitTaskStateChange
--
--         , requestDeregisterTaskDefinition $
--             deregisterTaskDefinition
--
--         , requestStopTask $
--             stopTask
--
--         , requestPutClusterCapacityProviders $
--             putClusterCapacityProviders
--
--         , requestDescribeTaskDefinition $
--             describeTaskDefinition
--
--         , requestStartTask $
--             startTask
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestListTaskDefinitionFamilies $
--             listTaskDefinitionFamilies
--
--           ]

--     , testGroup "response"
--         [ responseSubmitAttachmentStateChanges $
--             submitAttachmentStateChangesResponse
--
--         , responseRegisterContainerInstance $
--             registerContainerInstanceResponse
--
--         , responseDiscoverPollEndpoint $
--             discoverPollEndpointResponse
--
--         , responseUpdateServicePrimaryTaskSet $
--             updateServicePrimaryTaskSetResponse
--
--         , responseDescribeClusters $
--             describeClustersResponse
--
--         , responseListServices $
--             listServicesResponse
--
--         , responseRunTask $
--             runTaskResponse
--
--         , responseListTasks $
--             listTasksResponse
--
--         , responseCreateService $
--             createServiceResponse
--
--         , responsePutAccountSetting $
--             putAccountSettingResponse
--
--         , responseDeleteAttributes $
--             deleteAttributesResponse
--
--         , responseCreateCluster $
--             createClusterResponse
--
--         , responseCreateTaskSet $
--             createTaskSetResponse
--
--         , responseDescribeTasks $
--             describeTasksResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDescribeContainerInstances $
--             describeContainerInstancesResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responsePutAccountSettingDefault $
--             putAccountSettingDefaultResponse
--
--         , responseListAttributes $
--             listAttributesResponse
--
--         , responseSubmitContainerStateChange $
--             submitContainerStateChangeResponse
--
--         , responseListContainerInstances $
--             listContainerInstancesResponse
--
--         , responseUpdateContainerAgent $
--             updateContainerAgentResponse
--
--         , responseUpdateCapacityProvider $
--             updateCapacityProviderResponse
--
--         , responseDeleteService $
--             deleteServiceResponse
--
--         , responseUpdateService $
--             updateServiceResponse
--
--         , responseDeleteCapacityProvider $
--             deleteCapacityProviderResponse
--
--         , responseDescribeTaskSets $
--             describeTaskSetsResponse
--
--         , responseListTaskDefinitions $
--             listTaskDefinitionsResponse
--
--         , responseCreateCapacityProvider $
--             createCapacityProviderResponse
--
--         , responseRegisterTaskDefinition $
--             registerTaskDefinitionResponse
--
--         , responseDeleteTaskSet $
--             deleteTaskSetResponse
--
--         , responseUpdateClusterSettings $
--             updateClusterSettingsResponse
--
--         , responseUpdateTaskSet $
--             updateTaskSetResponse
--
--         , responseDeregisterContainerInstance $
--             deregisterContainerInstanceResponse
--
--         , responsePutAttributes $
--             putAttributesResponse
--
--         , responseDeleteAccountSetting $
--             deleteAccountSettingResponse
--
--         , responseListAccountSettings $
--             listAccountSettingsResponse
--
--         , responseDescribeServices $
--             describeServicesResponse
--
--         , responseDescribeCapacityProviders $
--             describeCapacityProvidersResponse
--
--         , responseDeleteCluster $
--             deleteClusterResponse
--
--         , responseListClusters $
--             listClustersResponse
--
--         , responseUpdateContainerInstancesState $
--             updateContainerInstancesStateResponse
--
--         , responseSubmitTaskStateChange $
--             submitTaskStateChangeResponse
--
--         , responseDeregisterTaskDefinition $
--             deregisterTaskDefinitionResponse
--
--         , responseStopTask $
--             stopTaskResponse
--
--         , responsePutClusterCapacityProviders $
--             putClusterCapacityProvidersResponse
--
--         , responseDescribeTaskDefinition $
--             describeTaskDefinitionResponse
--
--         , responseStartTask $
--             startTaskResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseListTaskDefinitionFamilies $
--             listTaskDefinitionFamiliesResponse
--
--           ]
--     ]

-- Requests

requestSubmitAttachmentStateChanges :: SubmitAttachmentStateChanges -> TestTree
requestSubmitAttachmentStateChanges =
  req
    "SubmitAttachmentStateChanges"
    "fixture/SubmitAttachmentStateChanges.yaml"

requestRegisterContainerInstance :: RegisterContainerInstance -> TestTree
requestRegisterContainerInstance =
  req
    "RegisterContainerInstance"
    "fixture/RegisterContainerInstance.yaml"

requestDiscoverPollEndpoint :: DiscoverPollEndpoint -> TestTree
requestDiscoverPollEndpoint =
  req
    "DiscoverPollEndpoint"
    "fixture/DiscoverPollEndpoint.yaml"

requestUpdateServicePrimaryTaskSet :: UpdateServicePrimaryTaskSet -> TestTree
requestUpdateServicePrimaryTaskSet =
  req
    "UpdateServicePrimaryTaskSet"
    "fixture/UpdateServicePrimaryTaskSet.yaml"

requestDescribeClusters :: DescribeClusters -> TestTree
requestDescribeClusters =
  req
    "DescribeClusters"
    "fixture/DescribeClusters.yaml"

requestListServices :: ListServices -> TestTree
requestListServices =
  req
    "ListServices"
    "fixture/ListServices.yaml"

requestRunTask :: RunTask -> TestTree
requestRunTask =
  req
    "RunTask"
    "fixture/RunTask.yaml"

requestListTasks :: ListTasks -> TestTree
requestListTasks =
  req
    "ListTasks"
    "fixture/ListTasks.yaml"

requestCreateService :: CreateService -> TestTree
requestCreateService =
  req
    "CreateService"
    "fixture/CreateService.yaml"

requestPutAccountSetting :: PutAccountSetting -> TestTree
requestPutAccountSetting =
  req
    "PutAccountSetting"
    "fixture/PutAccountSetting.yaml"

requestDeleteAttributes :: DeleteAttributes -> TestTree
requestDeleteAttributes =
  req
    "DeleteAttributes"
    "fixture/DeleteAttributes.yaml"

requestCreateCluster :: CreateCluster -> TestTree
requestCreateCluster =
  req
    "CreateCluster"
    "fixture/CreateCluster.yaml"

requestCreateTaskSet :: CreateTaskSet -> TestTree
requestCreateTaskSet =
  req
    "CreateTaskSet"
    "fixture/CreateTaskSet.yaml"

requestDescribeTasks :: DescribeTasks -> TestTree
requestDescribeTasks =
  req
    "DescribeTasks"
    "fixture/DescribeTasks.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDescribeContainerInstances :: DescribeContainerInstances -> TestTree
requestDescribeContainerInstances =
  req
    "DescribeContainerInstances"
    "fixture/DescribeContainerInstances.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestPutAccountSettingDefault :: PutAccountSettingDefault -> TestTree
requestPutAccountSettingDefault =
  req
    "PutAccountSettingDefault"
    "fixture/PutAccountSettingDefault.yaml"

requestListAttributes :: ListAttributes -> TestTree
requestListAttributes =
  req
    "ListAttributes"
    "fixture/ListAttributes.yaml"

requestSubmitContainerStateChange :: SubmitContainerStateChange -> TestTree
requestSubmitContainerStateChange =
  req
    "SubmitContainerStateChange"
    "fixture/SubmitContainerStateChange.yaml"

requestListContainerInstances :: ListContainerInstances -> TestTree
requestListContainerInstances =
  req
    "ListContainerInstances"
    "fixture/ListContainerInstances.yaml"

requestUpdateContainerAgent :: UpdateContainerAgent -> TestTree
requestUpdateContainerAgent =
  req
    "UpdateContainerAgent"
    "fixture/UpdateContainerAgent.yaml"

requestUpdateCapacityProvider :: UpdateCapacityProvider -> TestTree
requestUpdateCapacityProvider =
  req
    "UpdateCapacityProvider"
    "fixture/UpdateCapacityProvider.yaml"

requestDeleteService :: DeleteService -> TestTree
requestDeleteService =
  req
    "DeleteService"
    "fixture/DeleteService.yaml"

requestUpdateService :: UpdateService -> TestTree
requestUpdateService =
  req
    "UpdateService"
    "fixture/UpdateService.yaml"

requestDeleteCapacityProvider :: DeleteCapacityProvider -> TestTree
requestDeleteCapacityProvider =
  req
    "DeleteCapacityProvider"
    "fixture/DeleteCapacityProvider.yaml"

requestDescribeTaskSets :: DescribeTaskSets -> TestTree
requestDescribeTaskSets =
  req
    "DescribeTaskSets"
    "fixture/DescribeTaskSets.yaml"

requestListTaskDefinitions :: ListTaskDefinitions -> TestTree
requestListTaskDefinitions =
  req
    "ListTaskDefinitions"
    "fixture/ListTaskDefinitions.yaml"

requestCreateCapacityProvider :: CreateCapacityProvider -> TestTree
requestCreateCapacityProvider =
  req
    "CreateCapacityProvider"
    "fixture/CreateCapacityProvider.yaml"

requestRegisterTaskDefinition :: RegisterTaskDefinition -> TestTree
requestRegisterTaskDefinition =
  req
    "RegisterTaskDefinition"
    "fixture/RegisterTaskDefinition.yaml"

requestDeleteTaskSet :: DeleteTaskSet -> TestTree
requestDeleteTaskSet =
  req
    "DeleteTaskSet"
    "fixture/DeleteTaskSet.yaml"

requestUpdateClusterSettings :: UpdateClusterSettings -> TestTree
requestUpdateClusterSettings =
  req
    "UpdateClusterSettings"
    "fixture/UpdateClusterSettings.yaml"

requestUpdateTaskSet :: UpdateTaskSet -> TestTree
requestUpdateTaskSet =
  req
    "UpdateTaskSet"
    "fixture/UpdateTaskSet.yaml"

requestDeregisterContainerInstance :: DeregisterContainerInstance -> TestTree
requestDeregisterContainerInstance =
  req
    "DeregisterContainerInstance"
    "fixture/DeregisterContainerInstance.yaml"

requestPutAttributes :: PutAttributes -> TestTree
requestPutAttributes =
  req
    "PutAttributes"
    "fixture/PutAttributes.yaml"

requestDeleteAccountSetting :: DeleteAccountSetting -> TestTree
requestDeleteAccountSetting =
  req
    "DeleteAccountSetting"
    "fixture/DeleteAccountSetting.yaml"

requestListAccountSettings :: ListAccountSettings -> TestTree
requestListAccountSettings =
  req
    "ListAccountSettings"
    "fixture/ListAccountSettings.yaml"

requestDescribeServices :: DescribeServices -> TestTree
requestDescribeServices =
  req
    "DescribeServices"
    "fixture/DescribeServices.yaml"

requestDescribeCapacityProviders :: DescribeCapacityProviders -> TestTree
requestDescribeCapacityProviders =
  req
    "DescribeCapacityProviders"
    "fixture/DescribeCapacityProviders.yaml"

requestDeleteCluster :: DeleteCluster -> TestTree
requestDeleteCluster =
  req
    "DeleteCluster"
    "fixture/DeleteCluster.yaml"

requestListClusters :: ListClusters -> TestTree
requestListClusters =
  req
    "ListClusters"
    "fixture/ListClusters.yaml"

requestUpdateContainerInstancesState :: UpdateContainerInstancesState -> TestTree
requestUpdateContainerInstancesState =
  req
    "UpdateContainerInstancesState"
    "fixture/UpdateContainerInstancesState.yaml"

requestSubmitTaskStateChange :: SubmitTaskStateChange -> TestTree
requestSubmitTaskStateChange =
  req
    "SubmitTaskStateChange"
    "fixture/SubmitTaskStateChange.yaml"

requestDeregisterTaskDefinition :: DeregisterTaskDefinition -> TestTree
requestDeregisterTaskDefinition =
  req
    "DeregisterTaskDefinition"
    "fixture/DeregisterTaskDefinition.yaml"

requestStopTask :: StopTask -> TestTree
requestStopTask =
  req
    "StopTask"
    "fixture/StopTask.yaml"

requestPutClusterCapacityProviders :: PutClusterCapacityProviders -> TestTree
requestPutClusterCapacityProviders =
  req
    "PutClusterCapacityProviders"
    "fixture/PutClusterCapacityProviders.yaml"

requestDescribeTaskDefinition :: DescribeTaskDefinition -> TestTree
requestDescribeTaskDefinition =
  req
    "DescribeTaskDefinition"
    "fixture/DescribeTaskDefinition.yaml"

requestStartTask :: StartTask -> TestTree
requestStartTask =
  req
    "StartTask"
    "fixture/StartTask.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestListTaskDefinitionFamilies :: ListTaskDefinitionFamilies -> TestTree
requestListTaskDefinitionFamilies =
  req
    "ListTaskDefinitionFamilies"
    "fixture/ListTaskDefinitionFamilies.yaml"

-- Responses

responseSubmitAttachmentStateChanges :: SubmitAttachmentStateChangesResponse -> TestTree
responseSubmitAttachmentStateChanges =
  res
    "SubmitAttachmentStateChangesResponse"
    "fixture/SubmitAttachmentStateChangesResponse.proto"
    ecs
    (Proxy :: Proxy SubmitAttachmentStateChanges)

responseRegisterContainerInstance :: RegisterContainerInstanceResponse -> TestTree
responseRegisterContainerInstance =
  res
    "RegisterContainerInstanceResponse"
    "fixture/RegisterContainerInstanceResponse.proto"
    ecs
    (Proxy :: Proxy RegisterContainerInstance)

responseDiscoverPollEndpoint :: DiscoverPollEndpointResponse -> TestTree
responseDiscoverPollEndpoint =
  res
    "DiscoverPollEndpointResponse"
    "fixture/DiscoverPollEndpointResponse.proto"
    ecs
    (Proxy :: Proxy DiscoverPollEndpoint)

responseUpdateServicePrimaryTaskSet :: UpdateServicePrimaryTaskSetResponse -> TestTree
responseUpdateServicePrimaryTaskSet =
  res
    "UpdateServicePrimaryTaskSetResponse"
    "fixture/UpdateServicePrimaryTaskSetResponse.proto"
    ecs
    (Proxy :: Proxy UpdateServicePrimaryTaskSet)

responseDescribeClusters :: DescribeClustersResponse -> TestTree
responseDescribeClusters =
  res
    "DescribeClustersResponse"
    "fixture/DescribeClustersResponse.proto"
    ecs
    (Proxy :: Proxy DescribeClusters)

responseListServices :: ListServicesResponse -> TestTree
responseListServices =
  res
    "ListServicesResponse"
    "fixture/ListServicesResponse.proto"
    ecs
    (Proxy :: Proxy ListServices)

responseRunTask :: RunTaskResponse -> TestTree
responseRunTask =
  res
    "RunTaskResponse"
    "fixture/RunTaskResponse.proto"
    ecs
    (Proxy :: Proxy RunTask)

responseListTasks :: ListTasksResponse -> TestTree
responseListTasks =
  res
    "ListTasksResponse"
    "fixture/ListTasksResponse.proto"
    ecs
    (Proxy :: Proxy ListTasks)

responseCreateService :: CreateServiceResponse -> TestTree
responseCreateService =
  res
    "CreateServiceResponse"
    "fixture/CreateServiceResponse.proto"
    ecs
    (Proxy :: Proxy CreateService)

responsePutAccountSetting :: PutAccountSettingResponse -> TestTree
responsePutAccountSetting =
  res
    "PutAccountSettingResponse"
    "fixture/PutAccountSettingResponse.proto"
    ecs
    (Proxy :: Proxy PutAccountSetting)

responseDeleteAttributes :: DeleteAttributesResponse -> TestTree
responseDeleteAttributes =
  res
    "DeleteAttributesResponse"
    "fixture/DeleteAttributesResponse.proto"
    ecs
    (Proxy :: Proxy DeleteAttributes)

responseCreateCluster :: CreateClusterResponse -> TestTree
responseCreateCluster =
  res
    "CreateClusterResponse"
    "fixture/CreateClusterResponse.proto"
    ecs
    (Proxy :: Proxy CreateCluster)

responseCreateTaskSet :: CreateTaskSetResponse -> TestTree
responseCreateTaskSet =
  res
    "CreateTaskSetResponse"
    "fixture/CreateTaskSetResponse.proto"
    ecs
    (Proxy :: Proxy CreateTaskSet)

responseDescribeTasks :: DescribeTasksResponse -> TestTree
responseDescribeTasks =
  res
    "DescribeTasksResponse"
    "fixture/DescribeTasksResponse.proto"
    ecs
    (Proxy :: Proxy DescribeTasks)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    ecs
    (Proxy :: Proxy UntagResource)

responseDescribeContainerInstances :: DescribeContainerInstancesResponse -> TestTree
responseDescribeContainerInstances =
  res
    "DescribeContainerInstancesResponse"
    "fixture/DescribeContainerInstancesResponse.proto"
    ecs
    (Proxy :: Proxy DescribeContainerInstances)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    ecs
    (Proxy :: Proxy TagResource)

responsePutAccountSettingDefault :: PutAccountSettingDefaultResponse -> TestTree
responsePutAccountSettingDefault =
  res
    "PutAccountSettingDefaultResponse"
    "fixture/PutAccountSettingDefaultResponse.proto"
    ecs
    (Proxy :: Proxy PutAccountSettingDefault)

responseListAttributes :: ListAttributesResponse -> TestTree
responseListAttributes =
  res
    "ListAttributesResponse"
    "fixture/ListAttributesResponse.proto"
    ecs
    (Proxy :: Proxy ListAttributes)

responseSubmitContainerStateChange :: SubmitContainerStateChangeResponse -> TestTree
responseSubmitContainerStateChange =
  res
    "SubmitContainerStateChangeResponse"
    "fixture/SubmitContainerStateChangeResponse.proto"
    ecs
    (Proxy :: Proxy SubmitContainerStateChange)

responseListContainerInstances :: ListContainerInstancesResponse -> TestTree
responseListContainerInstances =
  res
    "ListContainerInstancesResponse"
    "fixture/ListContainerInstancesResponse.proto"
    ecs
    (Proxy :: Proxy ListContainerInstances)

responseUpdateContainerAgent :: UpdateContainerAgentResponse -> TestTree
responseUpdateContainerAgent =
  res
    "UpdateContainerAgentResponse"
    "fixture/UpdateContainerAgentResponse.proto"
    ecs
    (Proxy :: Proxy UpdateContainerAgent)

responseUpdateCapacityProvider :: UpdateCapacityProviderResponse -> TestTree
responseUpdateCapacityProvider =
  res
    "UpdateCapacityProviderResponse"
    "fixture/UpdateCapacityProviderResponse.proto"
    ecs
    (Proxy :: Proxy UpdateCapacityProvider)

responseDeleteService :: DeleteServiceResponse -> TestTree
responseDeleteService =
  res
    "DeleteServiceResponse"
    "fixture/DeleteServiceResponse.proto"
    ecs
    (Proxy :: Proxy DeleteService)

responseUpdateService :: UpdateServiceResponse -> TestTree
responseUpdateService =
  res
    "UpdateServiceResponse"
    "fixture/UpdateServiceResponse.proto"
    ecs
    (Proxy :: Proxy UpdateService)

responseDeleteCapacityProvider :: DeleteCapacityProviderResponse -> TestTree
responseDeleteCapacityProvider =
  res
    "DeleteCapacityProviderResponse"
    "fixture/DeleteCapacityProviderResponse.proto"
    ecs
    (Proxy :: Proxy DeleteCapacityProvider)

responseDescribeTaskSets :: DescribeTaskSetsResponse -> TestTree
responseDescribeTaskSets =
  res
    "DescribeTaskSetsResponse"
    "fixture/DescribeTaskSetsResponse.proto"
    ecs
    (Proxy :: Proxy DescribeTaskSets)

responseListTaskDefinitions :: ListTaskDefinitionsResponse -> TestTree
responseListTaskDefinitions =
  res
    "ListTaskDefinitionsResponse"
    "fixture/ListTaskDefinitionsResponse.proto"
    ecs
    (Proxy :: Proxy ListTaskDefinitions)

responseCreateCapacityProvider :: CreateCapacityProviderResponse -> TestTree
responseCreateCapacityProvider =
  res
    "CreateCapacityProviderResponse"
    "fixture/CreateCapacityProviderResponse.proto"
    ecs
    (Proxy :: Proxy CreateCapacityProvider)

responseRegisterTaskDefinition :: RegisterTaskDefinitionResponse -> TestTree
responseRegisterTaskDefinition =
  res
    "RegisterTaskDefinitionResponse"
    "fixture/RegisterTaskDefinitionResponse.proto"
    ecs
    (Proxy :: Proxy RegisterTaskDefinition)

responseDeleteTaskSet :: DeleteTaskSetResponse -> TestTree
responseDeleteTaskSet =
  res
    "DeleteTaskSetResponse"
    "fixture/DeleteTaskSetResponse.proto"
    ecs
    (Proxy :: Proxy DeleteTaskSet)

responseUpdateClusterSettings :: UpdateClusterSettingsResponse -> TestTree
responseUpdateClusterSettings =
  res
    "UpdateClusterSettingsResponse"
    "fixture/UpdateClusterSettingsResponse.proto"
    ecs
    (Proxy :: Proxy UpdateClusterSettings)

responseUpdateTaskSet :: UpdateTaskSetResponse -> TestTree
responseUpdateTaskSet =
  res
    "UpdateTaskSetResponse"
    "fixture/UpdateTaskSetResponse.proto"
    ecs
    (Proxy :: Proxy UpdateTaskSet)

responseDeregisterContainerInstance :: DeregisterContainerInstanceResponse -> TestTree
responseDeregisterContainerInstance =
  res
    "DeregisterContainerInstanceResponse"
    "fixture/DeregisterContainerInstanceResponse.proto"
    ecs
    (Proxy :: Proxy DeregisterContainerInstance)

responsePutAttributes :: PutAttributesResponse -> TestTree
responsePutAttributes =
  res
    "PutAttributesResponse"
    "fixture/PutAttributesResponse.proto"
    ecs
    (Proxy :: Proxy PutAttributes)

responseDeleteAccountSetting :: DeleteAccountSettingResponse -> TestTree
responseDeleteAccountSetting =
  res
    "DeleteAccountSettingResponse"
    "fixture/DeleteAccountSettingResponse.proto"
    ecs
    (Proxy :: Proxy DeleteAccountSetting)

responseListAccountSettings :: ListAccountSettingsResponse -> TestTree
responseListAccountSettings =
  res
    "ListAccountSettingsResponse"
    "fixture/ListAccountSettingsResponse.proto"
    ecs
    (Proxy :: Proxy ListAccountSettings)

responseDescribeServices :: DescribeServicesResponse -> TestTree
responseDescribeServices =
  res
    "DescribeServicesResponse"
    "fixture/DescribeServicesResponse.proto"
    ecs
    (Proxy :: Proxy DescribeServices)

responseDescribeCapacityProviders :: DescribeCapacityProvidersResponse -> TestTree
responseDescribeCapacityProviders =
  res
    "DescribeCapacityProvidersResponse"
    "fixture/DescribeCapacityProvidersResponse.proto"
    ecs
    (Proxy :: Proxy DescribeCapacityProviders)

responseDeleteCluster :: DeleteClusterResponse -> TestTree
responseDeleteCluster =
  res
    "DeleteClusterResponse"
    "fixture/DeleteClusterResponse.proto"
    ecs
    (Proxy :: Proxy DeleteCluster)

responseListClusters :: ListClustersResponse -> TestTree
responseListClusters =
  res
    "ListClustersResponse"
    "fixture/ListClustersResponse.proto"
    ecs
    (Proxy :: Proxy ListClusters)

responseUpdateContainerInstancesState :: UpdateContainerInstancesStateResponse -> TestTree
responseUpdateContainerInstancesState =
  res
    "UpdateContainerInstancesStateResponse"
    "fixture/UpdateContainerInstancesStateResponse.proto"
    ecs
    (Proxy :: Proxy UpdateContainerInstancesState)

responseSubmitTaskStateChange :: SubmitTaskStateChangeResponse -> TestTree
responseSubmitTaskStateChange =
  res
    "SubmitTaskStateChangeResponse"
    "fixture/SubmitTaskStateChangeResponse.proto"
    ecs
    (Proxy :: Proxy SubmitTaskStateChange)

responseDeregisterTaskDefinition :: DeregisterTaskDefinitionResponse -> TestTree
responseDeregisterTaskDefinition =
  res
    "DeregisterTaskDefinitionResponse"
    "fixture/DeregisterTaskDefinitionResponse.proto"
    ecs
    (Proxy :: Proxy DeregisterTaskDefinition)

responseStopTask :: StopTaskResponse -> TestTree
responseStopTask =
  res
    "StopTaskResponse"
    "fixture/StopTaskResponse.proto"
    ecs
    (Proxy :: Proxy StopTask)

responsePutClusterCapacityProviders :: PutClusterCapacityProvidersResponse -> TestTree
responsePutClusterCapacityProviders =
  res
    "PutClusterCapacityProvidersResponse"
    "fixture/PutClusterCapacityProvidersResponse.proto"
    ecs
    (Proxy :: Proxy PutClusterCapacityProviders)

responseDescribeTaskDefinition :: DescribeTaskDefinitionResponse -> TestTree
responseDescribeTaskDefinition =
  res
    "DescribeTaskDefinitionResponse"
    "fixture/DescribeTaskDefinitionResponse.proto"
    ecs
    (Proxy :: Proxy DescribeTaskDefinition)

responseStartTask :: StartTaskResponse -> TestTree
responseStartTask =
  res
    "StartTaskResponse"
    "fixture/StartTaskResponse.proto"
    ecs
    (Proxy :: Proxy StartTask)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    ecs
    (Proxy :: Proxy ListTagsForResource)

responseListTaskDefinitionFamilies :: ListTaskDefinitionFamiliesResponse -> TestTree
responseListTaskDefinitionFamilies =
  res
    "ListTaskDefinitionFamiliesResponse"
    "fixture/ListTaskDefinitionFamiliesResponse.proto"
    ecs
    (Proxy :: Proxy ListTaskDefinitionFamilies)
