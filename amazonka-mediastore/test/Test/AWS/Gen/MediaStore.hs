{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.MediaStore
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.MediaStore where

import Data.Proxy
import Network.AWS.MediaStore
import Test.AWS.Fixture
import Test.AWS.MediaStore.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestPutLifecyclePolicy $
--             putLifecyclePolicy
--
--         , requestPutCORSPolicy $
--             putCORSPolicy
--
--         , requestPutContainerPolicy $
--             putContainerPolicy
--
--         , requestDeleteContainer $
--             deleteContainer
--
--         , requestGetCORSPolicy $
--             getCORSPolicy
--
--         , requestUntagResource $
--             untagResource
--
--         , requestTagResource $
--             tagResource
--
--         , requestDeleteMetricPolicy $
--             deleteMetricPolicy
--
--         , requestDescribeContainer $
--             describeContainer
--
--         , requestGetMetricPolicy $
--             getMetricPolicy
--
--         , requestStartAccessLogging $
--             startAccessLogging
--
--         , requestDeleteLifecyclePolicy $
--             deleteLifecyclePolicy
--
--         , requestStopAccessLogging $
--             stopAccessLogging
--
--         , requestDeleteCORSPolicy $
--             deleteCORSPolicy
--
--         , requestGetContainerPolicy $
--             getContainerPolicy
--
--         , requestDeleteContainerPolicy $
--             deleteContainerPolicy
--
--         , requestListContainers $
--             listContainers
--
--         , requestCreateContainer $
--             createContainer
--
--         , requestGetLifecyclePolicy $
--             getLifecyclePolicy
--
--         , requestPutMetricPolicy $
--             putMetricPolicy
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--           ]

--     , testGroup "response"
--         [ responsePutLifecyclePolicy $
--             putLifecyclePolicyResponse
--
--         , responsePutCORSPolicy $
--             putCORSPolicyResponse
--
--         , responsePutContainerPolicy $
--             putContainerPolicyResponse
--
--         , responseDeleteContainer $
--             deleteContainerResponse
--
--         , responseGetCORSPolicy $
--             getCORSPolicyResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseDeleteMetricPolicy $
--             deleteMetricPolicyResponse
--
--         , responseDescribeContainer $
--             describeContainerResponse
--
--         , responseGetMetricPolicy $
--             getMetricPolicyResponse
--
--         , responseStartAccessLogging $
--             startAccessLoggingResponse
--
--         , responseDeleteLifecyclePolicy $
--             deleteLifecyclePolicyResponse
--
--         , responseStopAccessLogging $
--             stopAccessLoggingResponse
--
--         , responseDeleteCORSPolicy $
--             deleteCORSPolicyResponse
--
--         , responseGetContainerPolicy $
--             getContainerPolicyResponse
--
--         , responseDeleteContainerPolicy $
--             deleteContainerPolicyResponse
--
--         , responseListContainers $
--             listContainersResponse
--
--         , responseCreateContainer $
--             createContainerResponse
--
--         , responseGetLifecyclePolicy $
--             getLifecyclePolicyResponse
--
--         , responsePutMetricPolicy $
--             putMetricPolicyResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--           ]
--     ]

-- Requests

requestPutLifecyclePolicy :: PutLifecyclePolicy -> TestTree
requestPutLifecyclePolicy =
  req
    "PutLifecyclePolicy"
    "fixture/PutLifecyclePolicy.yaml"

requestPutCORSPolicy :: PutCORSPolicy -> TestTree
requestPutCORSPolicy =
  req
    "PutCORSPolicy"
    "fixture/PutCORSPolicy.yaml"

requestPutContainerPolicy :: PutContainerPolicy -> TestTree
requestPutContainerPolicy =
  req
    "PutContainerPolicy"
    "fixture/PutContainerPolicy.yaml"

requestDeleteContainer :: DeleteContainer -> TestTree
requestDeleteContainer =
  req
    "DeleteContainer"
    "fixture/DeleteContainer.yaml"

requestGetCORSPolicy :: GetCORSPolicy -> TestTree
requestGetCORSPolicy =
  req
    "GetCORSPolicy"
    "fixture/GetCORSPolicy.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestDeleteMetricPolicy :: DeleteMetricPolicy -> TestTree
requestDeleteMetricPolicy =
  req
    "DeleteMetricPolicy"
    "fixture/DeleteMetricPolicy.yaml"

requestDescribeContainer :: DescribeContainer -> TestTree
requestDescribeContainer =
  req
    "DescribeContainer"
    "fixture/DescribeContainer.yaml"

requestGetMetricPolicy :: GetMetricPolicy -> TestTree
requestGetMetricPolicy =
  req
    "GetMetricPolicy"
    "fixture/GetMetricPolicy.yaml"

requestStartAccessLogging :: StartAccessLogging -> TestTree
requestStartAccessLogging =
  req
    "StartAccessLogging"
    "fixture/StartAccessLogging.yaml"

requestDeleteLifecyclePolicy :: DeleteLifecyclePolicy -> TestTree
requestDeleteLifecyclePolicy =
  req
    "DeleteLifecyclePolicy"
    "fixture/DeleteLifecyclePolicy.yaml"

requestStopAccessLogging :: StopAccessLogging -> TestTree
requestStopAccessLogging =
  req
    "StopAccessLogging"
    "fixture/StopAccessLogging.yaml"

requestDeleteCORSPolicy :: DeleteCORSPolicy -> TestTree
requestDeleteCORSPolicy =
  req
    "DeleteCORSPolicy"
    "fixture/DeleteCORSPolicy.yaml"

requestGetContainerPolicy :: GetContainerPolicy -> TestTree
requestGetContainerPolicy =
  req
    "GetContainerPolicy"
    "fixture/GetContainerPolicy.yaml"

requestDeleteContainerPolicy :: DeleteContainerPolicy -> TestTree
requestDeleteContainerPolicy =
  req
    "DeleteContainerPolicy"
    "fixture/DeleteContainerPolicy.yaml"

requestListContainers :: ListContainers -> TestTree
requestListContainers =
  req
    "ListContainers"
    "fixture/ListContainers.yaml"

requestCreateContainer :: CreateContainer -> TestTree
requestCreateContainer =
  req
    "CreateContainer"
    "fixture/CreateContainer.yaml"

requestGetLifecyclePolicy :: GetLifecyclePolicy -> TestTree
requestGetLifecyclePolicy =
  req
    "GetLifecyclePolicy"
    "fixture/GetLifecyclePolicy.yaml"

requestPutMetricPolicy :: PutMetricPolicy -> TestTree
requestPutMetricPolicy =
  req
    "PutMetricPolicy"
    "fixture/PutMetricPolicy.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

-- Responses

responsePutLifecyclePolicy :: PutLifecyclePolicyResponse -> TestTree
responsePutLifecyclePolicy =
  res
    "PutLifecyclePolicyResponse"
    "fixture/PutLifecyclePolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy PutLifecyclePolicy)

responsePutCORSPolicy :: PutCORSPolicyResponse -> TestTree
responsePutCORSPolicy =
  res
    "PutCORSPolicyResponse"
    "fixture/PutCORSPolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy PutCORSPolicy)

responsePutContainerPolicy :: PutContainerPolicyResponse -> TestTree
responsePutContainerPolicy =
  res
    "PutContainerPolicyResponse"
    "fixture/PutContainerPolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy PutContainerPolicy)

responseDeleteContainer :: DeleteContainerResponse -> TestTree
responseDeleteContainer =
  res
    "DeleteContainerResponse"
    "fixture/DeleteContainerResponse.proto"
    mediaStore
    (Proxy :: Proxy DeleteContainer)

responseGetCORSPolicy :: GetCORSPolicyResponse -> TestTree
responseGetCORSPolicy =
  res
    "GetCORSPolicyResponse"
    "fixture/GetCORSPolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy GetCORSPolicy)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    mediaStore
    (Proxy :: Proxy UntagResource)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    mediaStore
    (Proxy :: Proxy TagResource)

responseDeleteMetricPolicy :: DeleteMetricPolicyResponse -> TestTree
responseDeleteMetricPolicy =
  res
    "DeleteMetricPolicyResponse"
    "fixture/DeleteMetricPolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy DeleteMetricPolicy)

responseDescribeContainer :: DescribeContainerResponse -> TestTree
responseDescribeContainer =
  res
    "DescribeContainerResponse"
    "fixture/DescribeContainerResponse.proto"
    mediaStore
    (Proxy :: Proxy DescribeContainer)

responseGetMetricPolicy :: GetMetricPolicyResponse -> TestTree
responseGetMetricPolicy =
  res
    "GetMetricPolicyResponse"
    "fixture/GetMetricPolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy GetMetricPolicy)

responseStartAccessLogging :: StartAccessLoggingResponse -> TestTree
responseStartAccessLogging =
  res
    "StartAccessLoggingResponse"
    "fixture/StartAccessLoggingResponse.proto"
    mediaStore
    (Proxy :: Proxy StartAccessLogging)

responseDeleteLifecyclePolicy :: DeleteLifecyclePolicyResponse -> TestTree
responseDeleteLifecyclePolicy =
  res
    "DeleteLifecyclePolicyResponse"
    "fixture/DeleteLifecyclePolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy DeleteLifecyclePolicy)

responseStopAccessLogging :: StopAccessLoggingResponse -> TestTree
responseStopAccessLogging =
  res
    "StopAccessLoggingResponse"
    "fixture/StopAccessLoggingResponse.proto"
    mediaStore
    (Proxy :: Proxy StopAccessLogging)

responseDeleteCORSPolicy :: DeleteCORSPolicyResponse -> TestTree
responseDeleteCORSPolicy =
  res
    "DeleteCORSPolicyResponse"
    "fixture/DeleteCORSPolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy DeleteCORSPolicy)

responseGetContainerPolicy :: GetContainerPolicyResponse -> TestTree
responseGetContainerPolicy =
  res
    "GetContainerPolicyResponse"
    "fixture/GetContainerPolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy GetContainerPolicy)

responseDeleteContainerPolicy :: DeleteContainerPolicyResponse -> TestTree
responseDeleteContainerPolicy =
  res
    "DeleteContainerPolicyResponse"
    "fixture/DeleteContainerPolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy DeleteContainerPolicy)

responseListContainers :: ListContainersResponse -> TestTree
responseListContainers =
  res
    "ListContainersResponse"
    "fixture/ListContainersResponse.proto"
    mediaStore
    (Proxy :: Proxy ListContainers)

responseCreateContainer :: CreateContainerResponse -> TestTree
responseCreateContainer =
  res
    "CreateContainerResponse"
    "fixture/CreateContainerResponse.proto"
    mediaStore
    (Proxy :: Proxy CreateContainer)

responseGetLifecyclePolicy :: GetLifecyclePolicyResponse -> TestTree
responseGetLifecyclePolicy =
  res
    "GetLifecyclePolicyResponse"
    "fixture/GetLifecyclePolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy GetLifecyclePolicy)

responsePutMetricPolicy :: PutMetricPolicyResponse -> TestTree
responsePutMetricPolicy =
  res
    "PutMetricPolicyResponse"
    "fixture/PutMetricPolicyResponse.proto"
    mediaStore
    (Proxy :: Proxy PutMetricPolicy)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    mediaStore
    (Proxy :: Proxy ListTagsForResource)
