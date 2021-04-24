{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CloudHSMv2
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CloudHSMv2 where

import Data.Proxy
import Network.AWS.CloudHSMv2
import Test.AWS.CloudHSMv2.Internal
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
--         [ requestDeleteHSM $
--             deleteHSM
--
--         , requestDeleteBackup $
--             deleteBackup
--
--         , requestDescribeClusters $
--             describeClusters
--
--         , requestRestoreBackup $
--             restoreBackup
--
--         , requestCreateCluster $
--             createCluster
--
--         , requestUntagResource $
--             untagResource
--
--         , requestCopyBackupToRegion $
--             copyBackupToRegion
--
--         , requestTagResource $
--             tagResource
--
--         , requestModifyCluster $
--             modifyCluster
--
--         , requestModifyBackupAttributes $
--             modifyBackupAttributes
--
--         , requestDeleteCluster $
--             deleteCluster
--
--         , requestListTags $
--             listTags
--
--         , requestDescribeBackups $
--             describeBackups
--
--         , requestCreateHSM $
--             createHSM
--
--         , requestInitializeCluster $
--             initializeCluster
--
--           ]

--     , testGroup "response"
--         [ responseDeleteHSM $
--             deleteHSMResponse
--
--         , responseDeleteBackup $
--             deleteBackupResponse
--
--         , responseDescribeClusters $
--             describeClustersResponse
--
--         , responseRestoreBackup $
--             restoreBackupResponse
--
--         , responseCreateCluster $
--             createClusterResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseCopyBackupToRegion $
--             copyBackupToRegionResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseModifyCluster $
--             modifyClusterResponse
--
--         , responseModifyBackupAttributes $
--             modifyBackupAttributesResponse
--
--         , responseDeleteCluster $
--             deleteClusterResponse
--
--         , responseListTags $
--             listTagsResponse
--
--         , responseDescribeBackups $
--             describeBackupsResponse
--
--         , responseCreateHSM $
--             createHSMResponse
--
--         , responseInitializeCluster $
--             initializeClusterResponse
--
--           ]
--     ]

-- Requests

requestDeleteHSM :: DeleteHSM -> TestTree
requestDeleteHSM =
  req
    "DeleteHSM"
    "fixture/DeleteHSM.yaml"

requestDeleteBackup :: DeleteBackup -> TestTree
requestDeleteBackup =
  req
    "DeleteBackup"
    "fixture/DeleteBackup.yaml"

requestDescribeClusters :: DescribeClusters -> TestTree
requestDescribeClusters =
  req
    "DescribeClusters"
    "fixture/DescribeClusters.yaml"

requestRestoreBackup :: RestoreBackup -> TestTree
requestRestoreBackup =
  req
    "RestoreBackup"
    "fixture/RestoreBackup.yaml"

requestCreateCluster :: CreateCluster -> TestTree
requestCreateCluster =
  req
    "CreateCluster"
    "fixture/CreateCluster.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestCopyBackupToRegion :: CopyBackupToRegion -> TestTree
requestCopyBackupToRegion =
  req
    "CopyBackupToRegion"
    "fixture/CopyBackupToRegion.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestModifyCluster :: ModifyCluster -> TestTree
requestModifyCluster =
  req
    "ModifyCluster"
    "fixture/ModifyCluster.yaml"

requestModifyBackupAttributes :: ModifyBackupAttributes -> TestTree
requestModifyBackupAttributes =
  req
    "ModifyBackupAttributes"
    "fixture/ModifyBackupAttributes.yaml"

requestDeleteCluster :: DeleteCluster -> TestTree
requestDeleteCluster =
  req
    "DeleteCluster"
    "fixture/DeleteCluster.yaml"

requestListTags :: ListTags -> TestTree
requestListTags =
  req
    "ListTags"
    "fixture/ListTags.yaml"

requestDescribeBackups :: DescribeBackups -> TestTree
requestDescribeBackups =
  req
    "DescribeBackups"
    "fixture/DescribeBackups.yaml"

requestCreateHSM :: CreateHSM -> TestTree
requestCreateHSM =
  req
    "CreateHSM"
    "fixture/CreateHSM.yaml"

requestInitializeCluster :: InitializeCluster -> TestTree
requestInitializeCluster =
  req
    "InitializeCluster"
    "fixture/InitializeCluster.yaml"

-- Responses

responseDeleteHSM :: DeleteHSMResponse -> TestTree
responseDeleteHSM =
  res
    "DeleteHSMResponse"
    "fixture/DeleteHSMResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy DeleteHSM)

responseDeleteBackup :: DeleteBackupResponse -> TestTree
responseDeleteBackup =
  res
    "DeleteBackupResponse"
    "fixture/DeleteBackupResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy DeleteBackup)

responseDescribeClusters :: DescribeClustersResponse -> TestTree
responseDescribeClusters =
  res
    "DescribeClustersResponse"
    "fixture/DescribeClustersResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy DescribeClusters)

responseRestoreBackup :: RestoreBackupResponse -> TestTree
responseRestoreBackup =
  res
    "RestoreBackupResponse"
    "fixture/RestoreBackupResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy RestoreBackup)

responseCreateCluster :: CreateClusterResponse -> TestTree
responseCreateCluster =
  res
    "CreateClusterResponse"
    "fixture/CreateClusterResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy CreateCluster)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy UntagResource)

responseCopyBackupToRegion :: CopyBackupToRegionResponse -> TestTree
responseCopyBackupToRegion =
  res
    "CopyBackupToRegionResponse"
    "fixture/CopyBackupToRegionResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy CopyBackupToRegion)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy TagResource)

responseModifyCluster :: ModifyClusterResponse -> TestTree
responseModifyCluster =
  res
    "ModifyClusterResponse"
    "fixture/ModifyClusterResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy ModifyCluster)

responseModifyBackupAttributes :: ModifyBackupAttributesResponse -> TestTree
responseModifyBackupAttributes =
  res
    "ModifyBackupAttributesResponse"
    "fixture/ModifyBackupAttributesResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy ModifyBackupAttributes)

responseDeleteCluster :: DeleteClusterResponse -> TestTree
responseDeleteCluster =
  res
    "DeleteClusterResponse"
    "fixture/DeleteClusterResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy DeleteCluster)

responseListTags :: ListTagsResponse -> TestTree
responseListTags =
  res
    "ListTagsResponse"
    "fixture/ListTagsResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy ListTags)

responseDescribeBackups :: DescribeBackupsResponse -> TestTree
responseDescribeBackups =
  res
    "DescribeBackupsResponse"
    "fixture/DescribeBackupsResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy DescribeBackups)

responseCreateHSM :: CreateHSMResponse -> TestTree
responseCreateHSM =
  res
    "CreateHSMResponse"
    "fixture/CreateHSMResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy CreateHSM)

responseInitializeCluster :: InitializeClusterResponse -> TestTree
responseInitializeCluster =
  res
    "InitializeClusterResponse"
    "fixture/InitializeClusterResponse.proto"
    cloudHSMv2
    (Proxy :: Proxy InitializeCluster)
