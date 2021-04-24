{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Route53AutoNaming
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Route53AutoNaming where

import Data.Proxy
import Network.AWS.Route53AutoNaming
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.Route53AutoNaming.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCreatePublicDNSNamespace $
--             createPublicDNSNamespace
--
--         , requestListServices $
--             listServices
--
--         , requestListOperations $
--             listOperations
--
--         , requestCreateService $
--             createService
--
--         , requestCreatePrivateDNSNamespace $
--             createPrivateDNSNamespace
--
--         , requestUntagResource $
--             untagResource
--
--         , requestListInstances $
--             listInstances
--
--         , requestTagResource $
--             tagResource
--
--         , requestGetNamespace $
--             getNamespace
--
--         , requestListNamespaces $
--             listNamespaces
--
--         , requestCreateHTTPNamespace $
--             createHTTPNamespace
--
--         , requestGetInstance $
--             getInstance
--
--         , requestGetInstancesHealthStatus $
--             getInstancesHealthStatus
--
--         , requestDeleteService $
--             deleteService
--
--         , requestUpdateService $
--             updateService
--
--         , requestDiscoverInstances $
--             discoverInstances
--
--         , requestDeregisterInstance $
--             deregisterInstance
--
--         , requestGetOperation $
--             getOperation
--
--         , requestGetService $
--             getService
--
--         , requestUpdateInstanceCustomHealthStatus $
--             updateInstanceCustomHealthStatus
--
--         , requestRegisterInstance $
--             registerInstance
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDeleteNamespace $
--             deleteNamespace
--
--           ]

--     , testGroup "response"
--         [ responseCreatePublicDNSNamespace $
--             createPublicDNSNamespaceResponse
--
--         , responseListServices $
--             listServicesResponse
--
--         , responseListOperations $
--             listOperationsResponse
--
--         , responseCreateService $
--             createServiceResponse
--
--         , responseCreatePrivateDNSNamespace $
--             createPrivateDNSNamespaceResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseListInstances $
--             listInstancesResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseGetNamespace $
--             getNamespaceResponse
--
--         , responseListNamespaces $
--             listNamespacesResponse
--
--         , responseCreateHTTPNamespace $
--             createHTTPNamespaceResponse
--
--         , responseGetInstance $
--             getInstanceResponse
--
--         , responseGetInstancesHealthStatus $
--             getInstancesHealthStatusResponse
--
--         , responseDeleteService $
--             deleteServiceResponse
--
--         , responseUpdateService $
--             updateServiceResponse
--
--         , responseDiscoverInstances $
--             discoverInstancesResponse
--
--         , responseDeregisterInstance $
--             deregisterInstanceResponse
--
--         , responseGetOperation $
--             getOperationResponse
--
--         , responseGetService $
--             getServiceResponse
--
--         , responseUpdateInstanceCustomHealthStatus $
--             updateInstanceCustomHealthStatusResponse
--
--         , responseRegisterInstance $
--             registerInstanceResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDeleteNamespace $
--             deleteNamespaceResponse
--
--           ]
--     ]

-- Requests

requestCreatePublicDNSNamespace :: CreatePublicDNSNamespace -> TestTree
requestCreatePublicDNSNamespace =
  req
    "CreatePublicDNSNamespace"
    "fixture/CreatePublicDNSNamespace.yaml"

requestListServices :: ListServices -> TestTree
requestListServices =
  req
    "ListServices"
    "fixture/ListServices.yaml"

requestListOperations :: ListOperations -> TestTree
requestListOperations =
  req
    "ListOperations"
    "fixture/ListOperations.yaml"

requestCreateService :: CreateService -> TestTree
requestCreateService =
  req
    "CreateService"
    "fixture/CreateService.yaml"

requestCreatePrivateDNSNamespace :: CreatePrivateDNSNamespace -> TestTree
requestCreatePrivateDNSNamespace =
  req
    "CreatePrivateDNSNamespace"
    "fixture/CreatePrivateDNSNamespace.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestListInstances :: ListInstances -> TestTree
requestListInstances =
  req
    "ListInstances"
    "fixture/ListInstances.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestGetNamespace :: GetNamespace -> TestTree
requestGetNamespace =
  req
    "GetNamespace"
    "fixture/GetNamespace.yaml"

requestListNamespaces :: ListNamespaces -> TestTree
requestListNamespaces =
  req
    "ListNamespaces"
    "fixture/ListNamespaces.yaml"

requestCreateHTTPNamespace :: CreateHTTPNamespace -> TestTree
requestCreateHTTPNamespace =
  req
    "CreateHTTPNamespace"
    "fixture/CreateHTTPNamespace.yaml"

requestGetInstance :: GetInstance -> TestTree
requestGetInstance =
  req
    "GetInstance"
    "fixture/GetInstance.yaml"

requestGetInstancesHealthStatus :: GetInstancesHealthStatus -> TestTree
requestGetInstancesHealthStatus =
  req
    "GetInstancesHealthStatus"
    "fixture/GetInstancesHealthStatus.yaml"

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

requestDiscoverInstances :: DiscoverInstances -> TestTree
requestDiscoverInstances =
  req
    "DiscoverInstances"
    "fixture/DiscoverInstances.yaml"

requestDeregisterInstance :: DeregisterInstance -> TestTree
requestDeregisterInstance =
  req
    "DeregisterInstance"
    "fixture/DeregisterInstance.yaml"

requestGetOperation :: GetOperation -> TestTree
requestGetOperation =
  req
    "GetOperation"
    "fixture/GetOperation.yaml"

requestGetService :: GetService -> TestTree
requestGetService =
  req
    "GetService"
    "fixture/GetService.yaml"

requestUpdateInstanceCustomHealthStatus :: UpdateInstanceCustomHealthStatus -> TestTree
requestUpdateInstanceCustomHealthStatus =
  req
    "UpdateInstanceCustomHealthStatus"
    "fixture/UpdateInstanceCustomHealthStatus.yaml"

requestRegisterInstance :: RegisterInstance -> TestTree
requestRegisterInstance =
  req
    "RegisterInstance"
    "fixture/RegisterInstance.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteNamespace :: DeleteNamespace -> TestTree
requestDeleteNamespace =
  req
    "DeleteNamespace"
    "fixture/DeleteNamespace.yaml"

-- Responses

responseCreatePublicDNSNamespace :: CreatePublicDNSNamespaceResponse -> TestTree
responseCreatePublicDNSNamespace =
  res
    "CreatePublicDNSNamespaceResponse"
    "fixture/CreatePublicDNSNamespaceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy CreatePublicDNSNamespace)

responseListServices :: ListServicesResponse -> TestTree
responseListServices =
  res
    "ListServicesResponse"
    "fixture/ListServicesResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy ListServices)

responseListOperations :: ListOperationsResponse -> TestTree
responseListOperations =
  res
    "ListOperationsResponse"
    "fixture/ListOperationsResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy ListOperations)

responseCreateService :: CreateServiceResponse -> TestTree
responseCreateService =
  res
    "CreateServiceResponse"
    "fixture/CreateServiceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy CreateService)

responseCreatePrivateDNSNamespace :: CreatePrivateDNSNamespaceResponse -> TestTree
responseCreatePrivateDNSNamespace =
  res
    "CreatePrivateDNSNamespaceResponse"
    "fixture/CreatePrivateDNSNamespaceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy CreatePrivateDNSNamespace)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy UntagResource)

responseListInstances :: ListInstancesResponse -> TestTree
responseListInstances =
  res
    "ListInstancesResponse"
    "fixture/ListInstancesResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy ListInstances)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy TagResource)

responseGetNamespace :: GetNamespaceResponse -> TestTree
responseGetNamespace =
  res
    "GetNamespaceResponse"
    "fixture/GetNamespaceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy GetNamespace)

responseListNamespaces :: ListNamespacesResponse -> TestTree
responseListNamespaces =
  res
    "ListNamespacesResponse"
    "fixture/ListNamespacesResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy ListNamespaces)

responseCreateHTTPNamespace :: CreateHTTPNamespaceResponse -> TestTree
responseCreateHTTPNamespace =
  res
    "CreateHTTPNamespaceResponse"
    "fixture/CreateHTTPNamespaceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy CreateHTTPNamespace)

responseGetInstance :: GetInstanceResponse -> TestTree
responseGetInstance =
  res
    "GetInstanceResponse"
    "fixture/GetInstanceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy GetInstance)

responseGetInstancesHealthStatus :: GetInstancesHealthStatusResponse -> TestTree
responseGetInstancesHealthStatus =
  res
    "GetInstancesHealthStatusResponse"
    "fixture/GetInstancesHealthStatusResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy GetInstancesHealthStatus)

responseDeleteService :: DeleteServiceResponse -> TestTree
responseDeleteService =
  res
    "DeleteServiceResponse"
    "fixture/DeleteServiceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy DeleteService)

responseUpdateService :: UpdateServiceResponse -> TestTree
responseUpdateService =
  res
    "UpdateServiceResponse"
    "fixture/UpdateServiceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy UpdateService)

responseDiscoverInstances :: DiscoverInstancesResponse -> TestTree
responseDiscoverInstances =
  res
    "DiscoverInstancesResponse"
    "fixture/DiscoverInstancesResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy DiscoverInstances)

responseDeregisterInstance :: DeregisterInstanceResponse -> TestTree
responseDeregisterInstance =
  res
    "DeregisterInstanceResponse"
    "fixture/DeregisterInstanceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy DeregisterInstance)

responseGetOperation :: GetOperationResponse -> TestTree
responseGetOperation =
  res
    "GetOperationResponse"
    "fixture/GetOperationResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy GetOperation)

responseGetService :: GetServiceResponse -> TestTree
responseGetService =
  res
    "GetServiceResponse"
    "fixture/GetServiceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy GetService)

responseUpdateInstanceCustomHealthStatus :: UpdateInstanceCustomHealthStatusResponse -> TestTree
responseUpdateInstanceCustomHealthStatus =
  res
    "UpdateInstanceCustomHealthStatusResponse"
    "fixture/UpdateInstanceCustomHealthStatusResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy UpdateInstanceCustomHealthStatus)

responseRegisterInstance :: RegisterInstanceResponse -> TestTree
responseRegisterInstance =
  res
    "RegisterInstanceResponse"
    "fixture/RegisterInstanceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy RegisterInstance)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy ListTagsForResource)

responseDeleteNamespace :: DeleteNamespaceResponse -> TestTree
responseDeleteNamespace =
  res
    "DeleteNamespaceResponse"
    "fixture/DeleteNamespaceResponse.proto"
    route53AutoNaming
    (Proxy :: Proxy DeleteNamespace)
