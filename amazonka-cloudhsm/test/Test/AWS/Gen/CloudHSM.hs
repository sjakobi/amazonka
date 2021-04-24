{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CloudHSM
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CloudHSM where

import Data.Proxy
import Network.AWS.CloudHSM
import Test.AWS.CloudHSM.Internal
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
--         [ requestListHSMs $
--             listHSMs
--
--         , requestDeleteHSM $
--             deleteHSM
--
--         , requestModifyLunaClient $
--             modifyLunaClient
--
--         , requestDeleteHAPG $
--             deleteHAPG
--
--         , requestGetConfig $
--             getConfig
--
--         , requestDeleteLunaClient $
--             deleteLunaClient
--
--         , requestListAvailableZones $
--             listAvailableZones
--
--         , requestModifyHAPG $
--             modifyHAPG
--
--         , requestListLunaClients $
--             listLunaClients
--
--         , requestRemoveTagsFromResource $
--             removeTagsFromResource
--
--         , requestDescribeHAPG $
--             describeHAPG
--
--         , requestCreateLunaClient $
--             createLunaClient
--
--         , requestDescribeHSM $
--             describeHSM
--
--         , requestCreateHAPG $
--             createHAPG
--
--         , requestDescribeLunaClient $
--             describeLunaClient
--
--         , requestListHAPGs $
--             listHAPGs
--
--         , requestAddTagsToResource $
--             addTagsToResource
--
--         , requestModifyHSM $
--             modifyHSM
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestCreateHSM $
--             createHSM
--
--           ]

--     , testGroup "response"
--         [ responseListHSMs $
--             listHSMsResponse
--
--         , responseDeleteHSM $
--             deleteHSMResponse
--
--         , responseModifyLunaClient $
--             modifyLunaClientResponse
--
--         , responseDeleteHAPG $
--             deleteHAPGResponse
--
--         , responseGetConfig $
--             getConfigResponse
--
--         , responseDeleteLunaClient $
--             deleteLunaClientResponse
--
--         , responseListAvailableZones $
--             listAvailableZonesResponse
--
--         , responseModifyHAPG $
--             modifyHAPGResponse
--
--         , responseListLunaClients $
--             listLunaClientsResponse
--
--         , responseRemoveTagsFromResource $
--             removeTagsFromResourceResponse
--
--         , responseDescribeHAPG $
--             describeHAPGResponse
--
--         , responseCreateLunaClient $
--             createLunaClientResponse
--
--         , responseDescribeHSM $
--             describeHSMResponse
--
--         , responseCreateHAPG $
--             createHAPGResponse
--
--         , responseDescribeLunaClient $
--             describeLunaClientResponse
--
--         , responseListHAPGs $
--             listHAPGsResponse
--
--         , responseAddTagsToResource $
--             addTagsToResourceResponse
--
--         , responseModifyHSM $
--             modifyHSMResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseCreateHSM $
--             createHSMResponse
--
--           ]
--     ]

-- Requests

requestListHSMs :: ListHSMs -> TestTree
requestListHSMs =
  req
    "ListHSMs"
    "fixture/ListHSMs.yaml"

requestDeleteHSM :: DeleteHSM -> TestTree
requestDeleteHSM =
  req
    "DeleteHSM"
    "fixture/DeleteHSM.yaml"

requestModifyLunaClient :: ModifyLunaClient -> TestTree
requestModifyLunaClient =
  req
    "ModifyLunaClient"
    "fixture/ModifyLunaClient.yaml"

requestDeleteHAPG :: DeleteHAPG -> TestTree
requestDeleteHAPG =
  req
    "DeleteHAPG"
    "fixture/DeleteHAPG.yaml"

requestGetConfig :: GetConfig -> TestTree
requestGetConfig =
  req
    "GetConfig"
    "fixture/GetConfig.yaml"

requestDeleteLunaClient :: DeleteLunaClient -> TestTree
requestDeleteLunaClient =
  req
    "DeleteLunaClient"
    "fixture/DeleteLunaClient.yaml"

requestListAvailableZones :: ListAvailableZones -> TestTree
requestListAvailableZones =
  req
    "ListAvailableZones"
    "fixture/ListAvailableZones.yaml"

requestModifyHAPG :: ModifyHAPG -> TestTree
requestModifyHAPG =
  req
    "ModifyHAPG"
    "fixture/ModifyHAPG.yaml"

requestListLunaClients :: ListLunaClients -> TestTree
requestListLunaClients =
  req
    "ListLunaClients"
    "fixture/ListLunaClients.yaml"

requestRemoveTagsFromResource :: RemoveTagsFromResource -> TestTree
requestRemoveTagsFromResource =
  req
    "RemoveTagsFromResource"
    "fixture/RemoveTagsFromResource.yaml"

requestDescribeHAPG :: DescribeHAPG -> TestTree
requestDescribeHAPG =
  req
    "DescribeHAPG"
    "fixture/DescribeHAPG.yaml"

requestCreateLunaClient :: CreateLunaClient -> TestTree
requestCreateLunaClient =
  req
    "CreateLunaClient"
    "fixture/CreateLunaClient.yaml"

requestDescribeHSM :: DescribeHSM -> TestTree
requestDescribeHSM =
  req
    "DescribeHSM"
    "fixture/DescribeHSM.yaml"

requestCreateHAPG :: CreateHAPG -> TestTree
requestCreateHAPG =
  req
    "CreateHAPG"
    "fixture/CreateHAPG.yaml"

requestDescribeLunaClient :: DescribeLunaClient -> TestTree
requestDescribeLunaClient =
  req
    "DescribeLunaClient"
    "fixture/DescribeLunaClient.yaml"

requestListHAPGs :: ListHAPGs -> TestTree
requestListHAPGs =
  req
    "ListHAPGs"
    "fixture/ListHAPGs.yaml"

requestAddTagsToResource :: AddTagsToResource -> TestTree
requestAddTagsToResource =
  req
    "AddTagsToResource"
    "fixture/AddTagsToResource.yaml"

requestModifyHSM :: ModifyHSM -> TestTree
requestModifyHSM =
  req
    "ModifyHSM"
    "fixture/ModifyHSM.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestCreateHSM :: CreateHSM -> TestTree
requestCreateHSM =
  req
    "CreateHSM"
    "fixture/CreateHSM.yaml"

-- Responses

responseListHSMs :: ListHSMsResponse -> TestTree
responseListHSMs =
  res
    "ListHSMsResponse"
    "fixture/ListHSMsResponse.proto"
    cloudHSM
    (Proxy :: Proxy ListHSMs)

responseDeleteHSM :: DeleteHSMResponse -> TestTree
responseDeleteHSM =
  res
    "DeleteHSMResponse"
    "fixture/DeleteHSMResponse.proto"
    cloudHSM
    (Proxy :: Proxy DeleteHSM)

responseModifyLunaClient :: ModifyLunaClientResponse -> TestTree
responseModifyLunaClient =
  res
    "ModifyLunaClientResponse"
    "fixture/ModifyLunaClientResponse.proto"
    cloudHSM
    (Proxy :: Proxy ModifyLunaClient)

responseDeleteHAPG :: DeleteHAPGResponse -> TestTree
responseDeleteHAPG =
  res
    "DeleteHAPGResponse"
    "fixture/DeleteHAPGResponse.proto"
    cloudHSM
    (Proxy :: Proxy DeleteHAPG)

responseGetConfig :: GetConfigResponse -> TestTree
responseGetConfig =
  res
    "GetConfigResponse"
    "fixture/GetConfigResponse.proto"
    cloudHSM
    (Proxy :: Proxy GetConfig)

responseDeleteLunaClient :: DeleteLunaClientResponse -> TestTree
responseDeleteLunaClient =
  res
    "DeleteLunaClientResponse"
    "fixture/DeleteLunaClientResponse.proto"
    cloudHSM
    (Proxy :: Proxy DeleteLunaClient)

responseListAvailableZones :: ListAvailableZonesResponse -> TestTree
responseListAvailableZones =
  res
    "ListAvailableZonesResponse"
    "fixture/ListAvailableZonesResponse.proto"
    cloudHSM
    (Proxy :: Proxy ListAvailableZones)

responseModifyHAPG :: ModifyHAPGResponse -> TestTree
responseModifyHAPG =
  res
    "ModifyHAPGResponse"
    "fixture/ModifyHAPGResponse.proto"
    cloudHSM
    (Proxy :: Proxy ModifyHAPG)

responseListLunaClients :: ListLunaClientsResponse -> TestTree
responseListLunaClients =
  res
    "ListLunaClientsResponse"
    "fixture/ListLunaClientsResponse.proto"
    cloudHSM
    (Proxy :: Proxy ListLunaClients)

responseRemoveTagsFromResource :: RemoveTagsFromResourceResponse -> TestTree
responseRemoveTagsFromResource =
  res
    "RemoveTagsFromResourceResponse"
    "fixture/RemoveTagsFromResourceResponse.proto"
    cloudHSM
    (Proxy :: Proxy RemoveTagsFromResource)

responseDescribeHAPG :: DescribeHAPGResponse -> TestTree
responseDescribeHAPG =
  res
    "DescribeHAPGResponse"
    "fixture/DescribeHAPGResponse.proto"
    cloudHSM
    (Proxy :: Proxy DescribeHAPG)

responseCreateLunaClient :: CreateLunaClientResponse -> TestTree
responseCreateLunaClient =
  res
    "CreateLunaClientResponse"
    "fixture/CreateLunaClientResponse.proto"
    cloudHSM
    (Proxy :: Proxy CreateLunaClient)

responseDescribeHSM :: DescribeHSMResponse -> TestTree
responseDescribeHSM =
  res
    "DescribeHSMResponse"
    "fixture/DescribeHSMResponse.proto"
    cloudHSM
    (Proxy :: Proxy DescribeHSM)

responseCreateHAPG :: CreateHAPGResponse -> TestTree
responseCreateHAPG =
  res
    "CreateHAPGResponse"
    "fixture/CreateHAPGResponse.proto"
    cloudHSM
    (Proxy :: Proxy CreateHAPG)

responseDescribeLunaClient :: DescribeLunaClientResponse -> TestTree
responseDescribeLunaClient =
  res
    "DescribeLunaClientResponse"
    "fixture/DescribeLunaClientResponse.proto"
    cloudHSM
    (Proxy :: Proxy DescribeLunaClient)

responseListHAPGs :: ListHAPGsResponse -> TestTree
responseListHAPGs =
  res
    "ListHAPGsResponse"
    "fixture/ListHAPGsResponse.proto"
    cloudHSM
    (Proxy :: Proxy ListHAPGs)

responseAddTagsToResource :: AddTagsToResourceResponse -> TestTree
responseAddTagsToResource =
  res
    "AddTagsToResourceResponse"
    "fixture/AddTagsToResourceResponse.proto"
    cloudHSM
    (Proxy :: Proxy AddTagsToResource)

responseModifyHSM :: ModifyHSMResponse -> TestTree
responseModifyHSM =
  res
    "ModifyHSMResponse"
    "fixture/ModifyHSMResponse.proto"
    cloudHSM
    (Proxy :: Proxy ModifyHSM)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    cloudHSM
    (Proxy :: Proxy ListTagsForResource)

responseCreateHSM :: CreateHSMResponse -> TestTree
responseCreateHSM =
  res
    "CreateHSMResponse"
    "fixture/CreateHSMResponse.proto"
    cloudHSM
    (Proxy :: Proxy CreateHSM)
