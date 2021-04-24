{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.SDB
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.SDB where

import Data.Proxy
import Network.AWS.SDB
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.SDB.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestListDomains $
--             listDomains
--
--         , requestDeleteAttributes $
--             deleteAttributes
--
--         , requestDomainMetadata $
--             domainMetadata
--
--         , requestBatchPutAttributes $
--             batchPutAttributes
--
--         , requestCreateDomain $
--             createDomain
--
--         , requestGetAttributes $
--             getAttributes
--
--         , requestDeleteDomain $
--             deleteDomain
--
--         , requestPutAttributes $
--             putAttributes
--
--         , requestSelect $
--             select
--
--         , requestBatchDeleteAttributes $
--             batchDeleteAttributes
--
--           ]

--     , testGroup "response"
--         [ responseListDomains $
--             listDomainsResponse
--
--         , responseDeleteAttributes $
--             deleteAttributesResponse
--
--         , responseDomainMetadata $
--             domainMetadataResponse
--
--         , responseBatchPutAttributes $
--             batchPutAttributesResponse
--
--         , responseCreateDomain $
--             createDomainResponse
--
--         , responseGetAttributes $
--             getAttributesResponse
--
--         , responseDeleteDomain $
--             deleteDomainResponse
--
--         , responsePutAttributes $
--             putAttributesResponse
--
--         , responseSelect $
--             selectResponse
--
--         , responseBatchDeleteAttributes $
--             batchDeleteAttributesResponse
--
--           ]
--     ]

-- Requests

requestListDomains :: ListDomains -> TestTree
requestListDomains =
  req
    "ListDomains"
    "fixture/ListDomains.yaml"

requestDeleteAttributes :: DeleteAttributes -> TestTree
requestDeleteAttributes =
  req
    "DeleteAttributes"
    "fixture/DeleteAttributes.yaml"

requestDomainMetadata :: DomainMetadata -> TestTree
requestDomainMetadata =
  req
    "DomainMetadata"
    "fixture/DomainMetadata.yaml"

requestBatchPutAttributes :: BatchPutAttributes -> TestTree
requestBatchPutAttributes =
  req
    "BatchPutAttributes"
    "fixture/BatchPutAttributes.yaml"

requestCreateDomain :: CreateDomain -> TestTree
requestCreateDomain =
  req
    "CreateDomain"
    "fixture/CreateDomain.yaml"

requestGetAttributes :: GetAttributes -> TestTree
requestGetAttributes =
  req
    "GetAttributes"
    "fixture/GetAttributes.yaml"

requestDeleteDomain :: DeleteDomain -> TestTree
requestDeleteDomain =
  req
    "DeleteDomain"
    "fixture/DeleteDomain.yaml"

requestPutAttributes :: PutAttributes -> TestTree
requestPutAttributes =
  req
    "PutAttributes"
    "fixture/PutAttributes.yaml"

requestSelect :: Select -> TestTree
requestSelect =
  req
    "Select"
    "fixture/Select.yaml"

requestBatchDeleteAttributes :: BatchDeleteAttributes -> TestTree
requestBatchDeleteAttributes =
  req
    "BatchDeleteAttributes"
    "fixture/BatchDeleteAttributes.yaml"

-- Responses

responseListDomains :: ListDomainsResponse -> TestTree
responseListDomains =
  res
    "ListDomainsResponse"
    "fixture/ListDomainsResponse.proto"
    sdb
    (Proxy :: Proxy ListDomains)

responseDeleteAttributes :: DeleteAttributesResponse -> TestTree
responseDeleteAttributes =
  res
    "DeleteAttributesResponse"
    "fixture/DeleteAttributesResponse.proto"
    sdb
    (Proxy :: Proxy DeleteAttributes)

responseDomainMetadata :: DomainMetadataResponse -> TestTree
responseDomainMetadata =
  res
    "DomainMetadataResponse"
    "fixture/DomainMetadataResponse.proto"
    sdb
    (Proxy :: Proxy DomainMetadata)

responseBatchPutAttributes :: BatchPutAttributesResponse -> TestTree
responseBatchPutAttributes =
  res
    "BatchPutAttributesResponse"
    "fixture/BatchPutAttributesResponse.proto"
    sdb
    (Proxy :: Proxy BatchPutAttributes)

responseCreateDomain :: CreateDomainResponse -> TestTree
responseCreateDomain =
  res
    "CreateDomainResponse"
    "fixture/CreateDomainResponse.proto"
    sdb
    (Proxy :: Proxy CreateDomain)

responseGetAttributes :: GetAttributesResponse -> TestTree
responseGetAttributes =
  res
    "GetAttributesResponse"
    "fixture/GetAttributesResponse.proto"
    sdb
    (Proxy :: Proxy GetAttributes)

responseDeleteDomain :: DeleteDomainResponse -> TestTree
responseDeleteDomain =
  res
    "DeleteDomainResponse"
    "fixture/DeleteDomainResponse.proto"
    sdb
    (Proxy :: Proxy DeleteDomain)

responsePutAttributes :: PutAttributesResponse -> TestTree
responsePutAttributes =
  res
    "PutAttributesResponse"
    "fixture/PutAttributesResponse.proto"
    sdb
    (Proxy :: Proxy PutAttributes)

responseSelect :: SelectResponse -> TestTree
responseSelect =
  res
    "SelectResponse"
    "fixture/SelectResponse.proto"
    sdb
    (Proxy :: Proxy Select)

responseBatchDeleteAttributes :: BatchDeleteAttributesResponse -> TestTree
responseBatchDeleteAttributes =
  res
    "BatchDeleteAttributesResponse"
    "fixture/BatchDeleteAttributesResponse.proto"
    sdb
    (Proxy :: Proxy BatchDeleteAttributes)
