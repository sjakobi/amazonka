{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Snowball
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Snowball where

import Data.Proxy
import Network.AWS.Snowball
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.Snowball.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestListClusterJobs $
--             listClusterJobs
--
--         , requestCancelJob $
--             cancelJob
--
--         , requestUpdateJobShipmentState $
--             updateJobShipmentState
--
--         , requestCreateCluster $
--             createCluster
--
--         , requestUpdateJob $
--             updateJob
--
--         , requestDescribeAddress $
--             describeAddress
--
--         , requestDescribeReturnShippingLabel $
--             describeReturnShippingLabel
--
--         , requestGetSoftwareUpdates $
--             getSoftwareUpdates
--
--         , requestListCompatibleImages $
--             listCompatibleImages
--
--         , requestDescribeAddresses $
--             describeAddresses
--
--         , requestDescribeJob $
--             describeJob
--
--         , requestDescribeCluster $
--             describeCluster
--
--         , requestCancelCluster $
--             cancelCluster
--
--         , requestGetJobUnlockCode $
--             getJobUnlockCode
--
--         , requestListJobs $
--             listJobs
--
--         , requestGetJobManifest $
--             getJobManifest
--
--         , requestCreateJob $
--             createJob
--
--         , requestUpdateCluster $
--             updateCluster
--
--         , requestListClusters $
--             listClusters
--
--         , requestGetSnowballUsage $
--             getSnowballUsage
--
--         , requestCreateReturnShippingLabel $
--             createReturnShippingLabel
--
--         , requestCreateAddress $
--             createAddress
--
--           ]

--     , testGroup "response"
--         [ responseListClusterJobs $
--             listClusterJobsResponse
--
--         , responseCancelJob $
--             cancelJobResponse
--
--         , responseUpdateJobShipmentState $
--             updateJobShipmentStateResponse
--
--         , responseCreateCluster $
--             createClusterResponse
--
--         , responseUpdateJob $
--             updateJobResponse
--
--         , responseDescribeAddress $
--             describeAddressResponse
--
--         , responseDescribeReturnShippingLabel $
--             describeReturnShippingLabelResponse
--
--         , responseGetSoftwareUpdates $
--             getSoftwareUpdatesResponse
--
--         , responseListCompatibleImages $
--             listCompatibleImagesResponse
--
--         , responseDescribeAddresses $
--             describeAddressesResponse
--
--         , responseDescribeJob $
--             describeJobResponse
--
--         , responseDescribeCluster $
--             describeClusterResponse
--
--         , responseCancelCluster $
--             cancelClusterResponse
--
--         , responseGetJobUnlockCode $
--             getJobUnlockCodeResponse
--
--         , responseListJobs $
--             listJobsResponse
--
--         , responseGetJobManifest $
--             getJobManifestResponse
--
--         , responseCreateJob $
--             createJobResponse
--
--         , responseUpdateCluster $
--             updateClusterResponse
--
--         , responseListClusters $
--             listClustersResponse
--
--         , responseGetSnowballUsage $
--             getSnowballUsageResponse
--
--         , responseCreateReturnShippingLabel $
--             createReturnShippingLabelResponse
--
--         , responseCreateAddress $
--             createAddressResponse
--
--           ]
--     ]

-- Requests

requestListClusterJobs :: ListClusterJobs -> TestTree
requestListClusterJobs =
  req
    "ListClusterJobs"
    "fixture/ListClusterJobs.yaml"

requestCancelJob :: CancelJob -> TestTree
requestCancelJob =
  req
    "CancelJob"
    "fixture/CancelJob.yaml"

requestUpdateJobShipmentState :: UpdateJobShipmentState -> TestTree
requestUpdateJobShipmentState =
  req
    "UpdateJobShipmentState"
    "fixture/UpdateJobShipmentState.yaml"

requestCreateCluster :: CreateCluster -> TestTree
requestCreateCluster =
  req
    "CreateCluster"
    "fixture/CreateCluster.yaml"

requestUpdateJob :: UpdateJob -> TestTree
requestUpdateJob =
  req
    "UpdateJob"
    "fixture/UpdateJob.yaml"

requestDescribeAddress :: DescribeAddress -> TestTree
requestDescribeAddress =
  req
    "DescribeAddress"
    "fixture/DescribeAddress.yaml"

requestDescribeReturnShippingLabel :: DescribeReturnShippingLabel -> TestTree
requestDescribeReturnShippingLabel =
  req
    "DescribeReturnShippingLabel"
    "fixture/DescribeReturnShippingLabel.yaml"

requestGetSoftwareUpdates :: GetSoftwareUpdates -> TestTree
requestGetSoftwareUpdates =
  req
    "GetSoftwareUpdates"
    "fixture/GetSoftwareUpdates.yaml"

requestListCompatibleImages :: ListCompatibleImages -> TestTree
requestListCompatibleImages =
  req
    "ListCompatibleImages"
    "fixture/ListCompatibleImages.yaml"

requestDescribeAddresses :: DescribeAddresses -> TestTree
requestDescribeAddresses =
  req
    "DescribeAddresses"
    "fixture/DescribeAddresses.yaml"

requestDescribeJob :: DescribeJob -> TestTree
requestDescribeJob =
  req
    "DescribeJob"
    "fixture/DescribeJob.yaml"

requestDescribeCluster :: DescribeCluster -> TestTree
requestDescribeCluster =
  req
    "DescribeCluster"
    "fixture/DescribeCluster.yaml"

requestCancelCluster :: CancelCluster -> TestTree
requestCancelCluster =
  req
    "CancelCluster"
    "fixture/CancelCluster.yaml"

requestGetJobUnlockCode :: GetJobUnlockCode -> TestTree
requestGetJobUnlockCode =
  req
    "GetJobUnlockCode"
    "fixture/GetJobUnlockCode.yaml"

requestListJobs :: ListJobs -> TestTree
requestListJobs =
  req
    "ListJobs"
    "fixture/ListJobs.yaml"

requestGetJobManifest :: GetJobManifest -> TestTree
requestGetJobManifest =
  req
    "GetJobManifest"
    "fixture/GetJobManifest.yaml"

requestCreateJob :: CreateJob -> TestTree
requestCreateJob =
  req
    "CreateJob"
    "fixture/CreateJob.yaml"

requestUpdateCluster :: UpdateCluster -> TestTree
requestUpdateCluster =
  req
    "UpdateCluster"
    "fixture/UpdateCluster.yaml"

requestListClusters :: ListClusters -> TestTree
requestListClusters =
  req
    "ListClusters"
    "fixture/ListClusters.yaml"

requestGetSnowballUsage :: GetSnowballUsage -> TestTree
requestGetSnowballUsage =
  req
    "GetSnowballUsage"
    "fixture/GetSnowballUsage.yaml"

requestCreateReturnShippingLabel :: CreateReturnShippingLabel -> TestTree
requestCreateReturnShippingLabel =
  req
    "CreateReturnShippingLabel"
    "fixture/CreateReturnShippingLabel.yaml"

requestCreateAddress :: CreateAddress -> TestTree
requestCreateAddress =
  req
    "CreateAddress"
    "fixture/CreateAddress.yaml"

-- Responses

responseListClusterJobs :: ListClusterJobsResponse -> TestTree
responseListClusterJobs =
  res
    "ListClusterJobsResponse"
    "fixture/ListClusterJobsResponse.proto"
    snowball
    (Proxy :: Proxy ListClusterJobs)

responseCancelJob :: CancelJobResponse -> TestTree
responseCancelJob =
  res
    "CancelJobResponse"
    "fixture/CancelJobResponse.proto"
    snowball
    (Proxy :: Proxy CancelJob)

responseUpdateJobShipmentState :: UpdateJobShipmentStateResponse -> TestTree
responseUpdateJobShipmentState =
  res
    "UpdateJobShipmentStateResponse"
    "fixture/UpdateJobShipmentStateResponse.proto"
    snowball
    (Proxy :: Proxy UpdateJobShipmentState)

responseCreateCluster :: CreateClusterResponse -> TestTree
responseCreateCluster =
  res
    "CreateClusterResponse"
    "fixture/CreateClusterResponse.proto"
    snowball
    (Proxy :: Proxy CreateCluster)

responseUpdateJob :: UpdateJobResponse -> TestTree
responseUpdateJob =
  res
    "UpdateJobResponse"
    "fixture/UpdateJobResponse.proto"
    snowball
    (Proxy :: Proxy UpdateJob)

responseDescribeAddress :: DescribeAddressResponse -> TestTree
responseDescribeAddress =
  res
    "DescribeAddressResponse"
    "fixture/DescribeAddressResponse.proto"
    snowball
    (Proxy :: Proxy DescribeAddress)

responseDescribeReturnShippingLabel :: DescribeReturnShippingLabelResponse -> TestTree
responseDescribeReturnShippingLabel =
  res
    "DescribeReturnShippingLabelResponse"
    "fixture/DescribeReturnShippingLabelResponse.proto"
    snowball
    (Proxy :: Proxy DescribeReturnShippingLabel)

responseGetSoftwareUpdates :: GetSoftwareUpdatesResponse -> TestTree
responseGetSoftwareUpdates =
  res
    "GetSoftwareUpdatesResponse"
    "fixture/GetSoftwareUpdatesResponse.proto"
    snowball
    (Proxy :: Proxy GetSoftwareUpdates)

responseListCompatibleImages :: ListCompatibleImagesResponse -> TestTree
responseListCompatibleImages =
  res
    "ListCompatibleImagesResponse"
    "fixture/ListCompatibleImagesResponse.proto"
    snowball
    (Proxy :: Proxy ListCompatibleImages)

responseDescribeAddresses :: DescribeAddressesResponse -> TestTree
responseDescribeAddresses =
  res
    "DescribeAddressesResponse"
    "fixture/DescribeAddressesResponse.proto"
    snowball
    (Proxy :: Proxy DescribeAddresses)

responseDescribeJob :: DescribeJobResponse -> TestTree
responseDescribeJob =
  res
    "DescribeJobResponse"
    "fixture/DescribeJobResponse.proto"
    snowball
    (Proxy :: Proxy DescribeJob)

responseDescribeCluster :: DescribeClusterResponse -> TestTree
responseDescribeCluster =
  res
    "DescribeClusterResponse"
    "fixture/DescribeClusterResponse.proto"
    snowball
    (Proxy :: Proxy DescribeCluster)

responseCancelCluster :: CancelClusterResponse -> TestTree
responseCancelCluster =
  res
    "CancelClusterResponse"
    "fixture/CancelClusterResponse.proto"
    snowball
    (Proxy :: Proxy CancelCluster)

responseGetJobUnlockCode :: GetJobUnlockCodeResponse -> TestTree
responseGetJobUnlockCode =
  res
    "GetJobUnlockCodeResponse"
    "fixture/GetJobUnlockCodeResponse.proto"
    snowball
    (Proxy :: Proxy GetJobUnlockCode)

responseListJobs :: ListJobsResponse -> TestTree
responseListJobs =
  res
    "ListJobsResponse"
    "fixture/ListJobsResponse.proto"
    snowball
    (Proxy :: Proxy ListJobs)

responseGetJobManifest :: GetJobManifestResponse -> TestTree
responseGetJobManifest =
  res
    "GetJobManifestResponse"
    "fixture/GetJobManifestResponse.proto"
    snowball
    (Proxy :: Proxy GetJobManifest)

responseCreateJob :: CreateJobResponse -> TestTree
responseCreateJob =
  res
    "CreateJobResponse"
    "fixture/CreateJobResponse.proto"
    snowball
    (Proxy :: Proxy CreateJob)

responseUpdateCluster :: UpdateClusterResponse -> TestTree
responseUpdateCluster =
  res
    "UpdateClusterResponse"
    "fixture/UpdateClusterResponse.proto"
    snowball
    (Proxy :: Proxy UpdateCluster)

responseListClusters :: ListClustersResponse -> TestTree
responseListClusters =
  res
    "ListClustersResponse"
    "fixture/ListClustersResponse.proto"
    snowball
    (Proxy :: Proxy ListClusters)

responseGetSnowballUsage :: GetSnowballUsageResponse -> TestTree
responseGetSnowballUsage =
  res
    "GetSnowballUsageResponse"
    "fixture/GetSnowballUsageResponse.proto"
    snowball
    (Proxy :: Proxy GetSnowballUsage)

responseCreateReturnShippingLabel :: CreateReturnShippingLabelResponse -> TestTree
responseCreateReturnShippingLabel =
  res
    "CreateReturnShippingLabelResponse"
    "fixture/CreateReturnShippingLabelResponse.proto"
    snowball
    (Proxy :: Proxy CreateReturnShippingLabel)

responseCreateAddress :: CreateAddressResponse -> TestTree
responseCreateAddress =
  res
    "CreateAddressResponse"
    "fixture/CreateAddressResponse.proto"
    snowball
    (Proxy :: Proxy CreateAddress)
