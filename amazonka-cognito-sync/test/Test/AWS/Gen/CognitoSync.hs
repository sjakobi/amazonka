{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CognitoSync
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CognitoSync where

import Data.Proxy
import Network.AWS.CognitoSync
import Test.AWS.CognitoSync.Internal
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
--         [ requestUpdateRecords $
--             updateRecords
--
--         , requestListRecords $
--             listRecords
--
--         , requestRegisterDevice $
--             registerDevice
--
--         , requestSubscribeToDataset $
--             subscribeToDataset
--
--         , requestBulkPublish $
--             bulkPublish
--
--         , requestDescribeIdentityUsage $
--             describeIdentityUsage
--
--         , requestSetIdentityPoolConfiguration $
--             setIdentityPoolConfiguration
--
--         , requestGetBulkPublishDetails $
--             getBulkPublishDetails
--
--         , requestListIdentityPoolUsage $
--             listIdentityPoolUsage
--
--         , requestSetCognitoEvents $
--             setCognitoEvents
--
--         , requestDescribeDataset $
--             describeDataset
--
--         , requestUnsubscribeFromDataset $
--             unsubscribeFromDataset
--
--         , requestGetIdentityPoolConfiguration $
--             getIdentityPoolConfiguration
--
--         , requestGetCognitoEvents $
--             getCognitoEvents
--
--         , requestDeleteDataset $
--             deleteDataset
--
--         , requestListDatasets $
--             listDatasets
--
--         , requestDescribeIdentityPoolUsage $
--             describeIdentityPoolUsage
--
--           ]

--     , testGroup "response"
--         [ responseUpdateRecords $
--             updateRecordsResponse
--
--         , responseListRecords $
--             listRecordsResponse
--
--         , responseRegisterDevice $
--             registerDeviceResponse
--
--         , responseSubscribeToDataset $
--             subscribeToDatasetResponse
--
--         , responseBulkPublish $
--             bulkPublishResponse
--
--         , responseDescribeIdentityUsage $
--             describeIdentityUsageResponse
--
--         , responseSetIdentityPoolConfiguration $
--             setIdentityPoolConfigurationResponse
--
--         , responseGetBulkPublishDetails $
--             getBulkPublishDetailsResponse
--
--         , responseListIdentityPoolUsage $
--             listIdentityPoolUsageResponse
--
--         , responseSetCognitoEvents $
--             setCognitoEventsResponse
--
--         , responseDescribeDataset $
--             describeDatasetResponse
--
--         , responseUnsubscribeFromDataset $
--             unsubscribeFromDatasetResponse
--
--         , responseGetIdentityPoolConfiguration $
--             getIdentityPoolConfigurationResponse
--
--         , responseGetCognitoEvents $
--             getCognitoEventsResponse
--
--         , responseDeleteDataset $
--             deleteDatasetResponse
--
--         , responseListDatasets $
--             listDatasetsResponse
--
--         , responseDescribeIdentityPoolUsage $
--             describeIdentityPoolUsageResponse
--
--           ]
--     ]

-- Requests

requestUpdateRecords :: UpdateRecords -> TestTree
requestUpdateRecords =
  req
    "UpdateRecords"
    "fixture/UpdateRecords.yaml"

requestListRecords :: ListRecords -> TestTree
requestListRecords =
  req
    "ListRecords"
    "fixture/ListRecords.yaml"

requestRegisterDevice :: RegisterDevice -> TestTree
requestRegisterDevice =
  req
    "RegisterDevice"
    "fixture/RegisterDevice.yaml"

requestSubscribeToDataset :: SubscribeToDataset -> TestTree
requestSubscribeToDataset =
  req
    "SubscribeToDataset"
    "fixture/SubscribeToDataset.yaml"

requestBulkPublish :: BulkPublish -> TestTree
requestBulkPublish =
  req
    "BulkPublish"
    "fixture/BulkPublish.yaml"

requestDescribeIdentityUsage :: DescribeIdentityUsage -> TestTree
requestDescribeIdentityUsage =
  req
    "DescribeIdentityUsage"
    "fixture/DescribeIdentityUsage.yaml"

requestSetIdentityPoolConfiguration :: SetIdentityPoolConfiguration -> TestTree
requestSetIdentityPoolConfiguration =
  req
    "SetIdentityPoolConfiguration"
    "fixture/SetIdentityPoolConfiguration.yaml"

requestGetBulkPublishDetails :: GetBulkPublishDetails -> TestTree
requestGetBulkPublishDetails =
  req
    "GetBulkPublishDetails"
    "fixture/GetBulkPublishDetails.yaml"

requestListIdentityPoolUsage :: ListIdentityPoolUsage -> TestTree
requestListIdentityPoolUsage =
  req
    "ListIdentityPoolUsage"
    "fixture/ListIdentityPoolUsage.yaml"

requestSetCognitoEvents :: SetCognitoEvents -> TestTree
requestSetCognitoEvents =
  req
    "SetCognitoEvents"
    "fixture/SetCognitoEvents.yaml"

requestDescribeDataset :: DescribeDataset -> TestTree
requestDescribeDataset =
  req
    "DescribeDataset"
    "fixture/DescribeDataset.yaml"

requestUnsubscribeFromDataset :: UnsubscribeFromDataset -> TestTree
requestUnsubscribeFromDataset =
  req
    "UnsubscribeFromDataset"
    "fixture/UnsubscribeFromDataset.yaml"

requestGetIdentityPoolConfiguration :: GetIdentityPoolConfiguration -> TestTree
requestGetIdentityPoolConfiguration =
  req
    "GetIdentityPoolConfiguration"
    "fixture/GetIdentityPoolConfiguration.yaml"

requestGetCognitoEvents :: GetCognitoEvents -> TestTree
requestGetCognitoEvents =
  req
    "GetCognitoEvents"
    "fixture/GetCognitoEvents.yaml"

requestDeleteDataset :: DeleteDataset -> TestTree
requestDeleteDataset =
  req
    "DeleteDataset"
    "fixture/DeleteDataset.yaml"

requestListDatasets :: ListDatasets -> TestTree
requestListDatasets =
  req
    "ListDatasets"
    "fixture/ListDatasets.yaml"

requestDescribeIdentityPoolUsage :: DescribeIdentityPoolUsage -> TestTree
requestDescribeIdentityPoolUsage =
  req
    "DescribeIdentityPoolUsage"
    "fixture/DescribeIdentityPoolUsage.yaml"

-- Responses

responseUpdateRecords :: UpdateRecordsResponse -> TestTree
responseUpdateRecords =
  res
    "UpdateRecordsResponse"
    "fixture/UpdateRecordsResponse.proto"
    cognitoSync
    (Proxy :: Proxy UpdateRecords)

responseListRecords :: ListRecordsResponse -> TestTree
responseListRecords =
  res
    "ListRecordsResponse"
    "fixture/ListRecordsResponse.proto"
    cognitoSync
    (Proxy :: Proxy ListRecords)

responseRegisterDevice :: RegisterDeviceResponse -> TestTree
responseRegisterDevice =
  res
    "RegisterDeviceResponse"
    "fixture/RegisterDeviceResponse.proto"
    cognitoSync
    (Proxy :: Proxy RegisterDevice)

responseSubscribeToDataset :: SubscribeToDatasetResponse -> TestTree
responseSubscribeToDataset =
  res
    "SubscribeToDatasetResponse"
    "fixture/SubscribeToDatasetResponse.proto"
    cognitoSync
    (Proxy :: Proxy SubscribeToDataset)

responseBulkPublish :: BulkPublishResponse -> TestTree
responseBulkPublish =
  res
    "BulkPublishResponse"
    "fixture/BulkPublishResponse.proto"
    cognitoSync
    (Proxy :: Proxy BulkPublish)

responseDescribeIdentityUsage :: DescribeIdentityUsageResponse -> TestTree
responseDescribeIdentityUsage =
  res
    "DescribeIdentityUsageResponse"
    "fixture/DescribeIdentityUsageResponse.proto"
    cognitoSync
    (Proxy :: Proxy DescribeIdentityUsage)

responseSetIdentityPoolConfiguration :: SetIdentityPoolConfigurationResponse -> TestTree
responseSetIdentityPoolConfiguration =
  res
    "SetIdentityPoolConfigurationResponse"
    "fixture/SetIdentityPoolConfigurationResponse.proto"
    cognitoSync
    (Proxy :: Proxy SetIdentityPoolConfiguration)

responseGetBulkPublishDetails :: GetBulkPublishDetailsResponse -> TestTree
responseGetBulkPublishDetails =
  res
    "GetBulkPublishDetailsResponse"
    "fixture/GetBulkPublishDetailsResponse.proto"
    cognitoSync
    (Proxy :: Proxy GetBulkPublishDetails)

responseListIdentityPoolUsage :: ListIdentityPoolUsageResponse -> TestTree
responseListIdentityPoolUsage =
  res
    "ListIdentityPoolUsageResponse"
    "fixture/ListIdentityPoolUsageResponse.proto"
    cognitoSync
    (Proxy :: Proxy ListIdentityPoolUsage)

responseSetCognitoEvents :: SetCognitoEventsResponse -> TestTree
responseSetCognitoEvents =
  res
    "SetCognitoEventsResponse"
    "fixture/SetCognitoEventsResponse.proto"
    cognitoSync
    (Proxy :: Proxy SetCognitoEvents)

responseDescribeDataset :: DescribeDatasetResponse -> TestTree
responseDescribeDataset =
  res
    "DescribeDatasetResponse"
    "fixture/DescribeDatasetResponse.proto"
    cognitoSync
    (Proxy :: Proxy DescribeDataset)

responseUnsubscribeFromDataset :: UnsubscribeFromDatasetResponse -> TestTree
responseUnsubscribeFromDataset =
  res
    "UnsubscribeFromDatasetResponse"
    "fixture/UnsubscribeFromDatasetResponse.proto"
    cognitoSync
    (Proxy :: Proxy UnsubscribeFromDataset)

responseGetIdentityPoolConfiguration :: GetIdentityPoolConfigurationResponse -> TestTree
responseGetIdentityPoolConfiguration =
  res
    "GetIdentityPoolConfigurationResponse"
    "fixture/GetIdentityPoolConfigurationResponse.proto"
    cognitoSync
    (Proxy :: Proxy GetIdentityPoolConfiguration)

responseGetCognitoEvents :: GetCognitoEventsResponse -> TestTree
responseGetCognitoEvents =
  res
    "GetCognitoEventsResponse"
    "fixture/GetCognitoEventsResponse.proto"
    cognitoSync
    (Proxy :: Proxy GetCognitoEvents)

responseDeleteDataset :: DeleteDatasetResponse -> TestTree
responseDeleteDataset =
  res
    "DeleteDatasetResponse"
    "fixture/DeleteDatasetResponse.proto"
    cognitoSync
    (Proxy :: Proxy DeleteDataset)

responseListDatasets :: ListDatasetsResponse -> TestTree
responseListDatasets =
  res
    "ListDatasetsResponse"
    "fixture/ListDatasetsResponse.proto"
    cognitoSync
    (Proxy :: Proxy ListDatasets)

responseDescribeIdentityPoolUsage :: DescribeIdentityPoolUsageResponse -> TestTree
responseDescribeIdentityPoolUsage =
  res
    "DescribeIdentityPoolUsageResponse"
    "fixture/DescribeIdentityPoolUsageResponse.proto"
    cognitoSync
    (Proxy :: Proxy DescribeIdentityPoolUsage)
