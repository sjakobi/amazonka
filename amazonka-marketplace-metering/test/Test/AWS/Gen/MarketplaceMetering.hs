{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.MarketplaceMetering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.MarketplaceMetering where

import Data.Proxy
import Network.AWS.MarketplaceMetering
import Test.AWS.Fixture
import Test.AWS.MarketplaceMetering.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestMeterUsage $
--             meterUsage
--
--         , requestRegisterUsage $
--             registerUsage
--
--         , requestResolveCustomer $
--             resolveCustomer
--
--         , requestBatchMeterUsage $
--             batchMeterUsage
--
--           ]

--     , testGroup "response"
--         [ responseMeterUsage $
--             meterUsageResponse
--
--         , responseRegisterUsage $
--             registerUsageResponse
--
--         , responseResolveCustomer $
--             resolveCustomerResponse
--
--         , responseBatchMeterUsage $
--             batchMeterUsageResponse
--
--           ]
--     ]

-- Requests

requestMeterUsage :: MeterUsage -> TestTree
requestMeterUsage =
  req
    "MeterUsage"
    "fixture/MeterUsage.yaml"

requestRegisterUsage :: RegisterUsage -> TestTree
requestRegisterUsage =
  req
    "RegisterUsage"
    "fixture/RegisterUsage.yaml"

requestResolveCustomer :: ResolveCustomer -> TestTree
requestResolveCustomer =
  req
    "ResolveCustomer"
    "fixture/ResolveCustomer.yaml"

requestBatchMeterUsage :: BatchMeterUsage -> TestTree
requestBatchMeterUsage =
  req
    "BatchMeterUsage"
    "fixture/BatchMeterUsage.yaml"

-- Responses

responseMeterUsage :: MeterUsageResponse -> TestTree
responseMeterUsage =
  res
    "MeterUsageResponse"
    "fixture/MeterUsageResponse.proto"
    marketplaceMetering
    (Proxy :: Proxy MeterUsage)

responseRegisterUsage :: RegisterUsageResponse -> TestTree
responseRegisterUsage =
  res
    "RegisterUsageResponse"
    "fixture/RegisterUsageResponse.proto"
    marketplaceMetering
    (Proxy :: Proxy RegisterUsage)

responseResolveCustomer :: ResolveCustomerResponse -> TestTree
responseResolveCustomer =
  res
    "ResolveCustomerResponse"
    "fixture/ResolveCustomerResponse.proto"
    marketplaceMetering
    (Proxy :: Proxy ResolveCustomer)

responseBatchMeterUsage :: BatchMeterUsageResponse -> TestTree
responseBatchMeterUsage =
  res
    "BatchMeterUsageResponse"
    "fixture/BatchMeterUsageResponse.proto"
    marketplaceMetering
    (Proxy :: Proxy BatchMeterUsage)
