{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.EFS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.EFS where

import Data.Proxy
import Network.AWS.EFS
import Test.AWS.EFS.Internal
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
--         [ requestPutBackupPolicy $
--             putBackupPolicy
--
--         , requestPutLifecycleConfiguration $
--             putLifecycleConfiguration
--
--         , requestDeleteAccessPoint $
--             deleteAccessPoint
--
--         , requestModifyMountTargetSecurityGroups $
--             modifyMountTargetSecurityGroups
--
--         , requestDescribeFileSystemPolicy $
--             describeFileSystemPolicy
--
--         , requestUntagResource $
--             untagResource
--
--         , requestTagResource $
--             tagResource
--
--         , requestCreateMountTarget $
--             createMountTarget
--
--         , requestDeleteMountTarget $
--             deleteMountTarget
--
--         , requestDescribeFileSystems $
--             describeFileSystems
--
--         , requestDescribeMountTargets $
--             describeMountTargets
--
--         , requestDeleteFileSystemPolicy $
--             deleteFileSystemPolicy
--
--         , requestCreateFileSystem $
--             createFileSystem
--
--         , requestCreateAccessPoint $
--             createAccessPoint
--
--         , requestDescribeAccessPoints $
--             describeAccessPoints
--
--         , requestDescribeLifecycleConfiguration $
--             describeLifecycleConfiguration
--
--         , requestDescribeMountTargetSecurityGroups $
--             describeMountTargetSecurityGroups
--
--         , requestDescribeBackupPolicy $
--             describeBackupPolicy
--
--         , requestUpdateFileSystem $
--             updateFileSystem
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDeleteFileSystem $
--             deleteFileSystem
--
--         , requestPutFileSystemPolicy $
--             putFileSystemPolicy
--
--           ]

--     , testGroup "response"
--         [ responsePutBackupPolicy $
--             backupPolicyDescription
--
--         , responsePutLifecycleConfiguration $
--             lifecycleConfigurationDescription
--
--         , responseDeleteAccessPoint $
--             deleteAccessPointResponse
--
--         , responseModifyMountTargetSecurityGroups $
--             modifyMountTargetSecurityGroupsResponse
--
--         , responseDescribeFileSystemPolicy $
--             fileSystemPolicyDescription
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseCreateMountTarget $
--             mountTargetDescription
--
--         , responseDeleteMountTarget $
--             deleteMountTargetResponse
--
--         , responseDescribeFileSystems $
--             describeFileSystemsResponse
--
--         , responseDescribeMountTargets $
--             describeMountTargetsResponse
--
--         , responseDeleteFileSystemPolicy $
--             deleteFileSystemPolicyResponse
--
--         , responseCreateFileSystem $
--             fileSystemDescription
--
--         , responseCreateAccessPoint $
--             accessPointDescription
--
--         , responseDescribeAccessPoints $
--             describeAccessPointsResponse
--
--         , responseDescribeLifecycleConfiguration $
--             lifecycleConfigurationDescription
--
--         , responseDescribeMountTargetSecurityGroups $
--             describeMountTargetSecurityGroupsResponse
--
--         , responseDescribeBackupPolicy $
--             backupPolicyDescription
--
--         , responseUpdateFileSystem $
--             fileSystemDescription
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDeleteFileSystem $
--             deleteFileSystemResponse
--
--         , responsePutFileSystemPolicy $
--             fileSystemPolicyDescription
--
--           ]
--     ]

-- Requests

requestPutBackupPolicy :: PutBackupPolicy -> TestTree
requestPutBackupPolicy =
  req
    "PutBackupPolicy"
    "fixture/PutBackupPolicy.yaml"

requestPutLifecycleConfiguration :: PutLifecycleConfiguration -> TestTree
requestPutLifecycleConfiguration =
  req
    "PutLifecycleConfiguration"
    "fixture/PutLifecycleConfiguration.yaml"

requestDeleteAccessPoint :: DeleteAccessPoint -> TestTree
requestDeleteAccessPoint =
  req
    "DeleteAccessPoint"
    "fixture/DeleteAccessPoint.yaml"

requestModifyMountTargetSecurityGroups :: ModifyMountTargetSecurityGroups -> TestTree
requestModifyMountTargetSecurityGroups =
  req
    "ModifyMountTargetSecurityGroups"
    "fixture/ModifyMountTargetSecurityGroups.yaml"

requestDescribeFileSystemPolicy :: DescribeFileSystemPolicy -> TestTree
requestDescribeFileSystemPolicy =
  req
    "DescribeFileSystemPolicy"
    "fixture/DescribeFileSystemPolicy.yaml"

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

requestCreateMountTarget :: CreateMountTarget -> TestTree
requestCreateMountTarget =
  req
    "CreateMountTarget"
    "fixture/CreateMountTarget.yaml"

requestDeleteMountTarget :: DeleteMountTarget -> TestTree
requestDeleteMountTarget =
  req
    "DeleteMountTarget"
    "fixture/DeleteMountTarget.yaml"

requestDescribeFileSystems :: DescribeFileSystems -> TestTree
requestDescribeFileSystems =
  req
    "DescribeFileSystems"
    "fixture/DescribeFileSystems.yaml"

requestDescribeMountTargets :: DescribeMountTargets -> TestTree
requestDescribeMountTargets =
  req
    "DescribeMountTargets"
    "fixture/DescribeMountTargets.yaml"

requestDeleteFileSystemPolicy :: DeleteFileSystemPolicy -> TestTree
requestDeleteFileSystemPolicy =
  req
    "DeleteFileSystemPolicy"
    "fixture/DeleteFileSystemPolicy.yaml"

requestCreateFileSystem :: CreateFileSystem -> TestTree
requestCreateFileSystem =
  req
    "CreateFileSystem"
    "fixture/CreateFileSystem.yaml"

requestCreateAccessPoint :: CreateAccessPoint -> TestTree
requestCreateAccessPoint =
  req
    "CreateAccessPoint"
    "fixture/CreateAccessPoint.yaml"

requestDescribeAccessPoints :: DescribeAccessPoints -> TestTree
requestDescribeAccessPoints =
  req
    "DescribeAccessPoints"
    "fixture/DescribeAccessPoints.yaml"

requestDescribeLifecycleConfiguration :: DescribeLifecycleConfiguration -> TestTree
requestDescribeLifecycleConfiguration =
  req
    "DescribeLifecycleConfiguration"
    "fixture/DescribeLifecycleConfiguration.yaml"

requestDescribeMountTargetSecurityGroups :: DescribeMountTargetSecurityGroups -> TestTree
requestDescribeMountTargetSecurityGroups =
  req
    "DescribeMountTargetSecurityGroups"
    "fixture/DescribeMountTargetSecurityGroups.yaml"

requestDescribeBackupPolicy :: DescribeBackupPolicy -> TestTree
requestDescribeBackupPolicy =
  req
    "DescribeBackupPolicy"
    "fixture/DescribeBackupPolicy.yaml"

requestUpdateFileSystem :: UpdateFileSystem -> TestTree
requestUpdateFileSystem =
  req
    "UpdateFileSystem"
    "fixture/UpdateFileSystem.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteFileSystem :: DeleteFileSystem -> TestTree
requestDeleteFileSystem =
  req
    "DeleteFileSystem"
    "fixture/DeleteFileSystem.yaml"

requestPutFileSystemPolicy :: PutFileSystemPolicy -> TestTree
requestPutFileSystemPolicy =
  req
    "PutFileSystemPolicy"
    "fixture/PutFileSystemPolicy.yaml"

-- Responses

responsePutBackupPolicy :: BackupPolicyDescription -> TestTree
responsePutBackupPolicy =
  res
    "PutBackupPolicyResponse"
    "fixture/PutBackupPolicyResponse.proto"
    efs
    (Proxy :: Proxy PutBackupPolicy)

responsePutLifecycleConfiguration :: LifecycleConfigurationDescription -> TestTree
responsePutLifecycleConfiguration =
  res
    "PutLifecycleConfigurationResponse"
    "fixture/PutLifecycleConfigurationResponse.proto"
    efs
    (Proxy :: Proxy PutLifecycleConfiguration)

responseDeleteAccessPoint :: DeleteAccessPointResponse -> TestTree
responseDeleteAccessPoint =
  res
    "DeleteAccessPointResponse"
    "fixture/DeleteAccessPointResponse.proto"
    efs
    (Proxy :: Proxy DeleteAccessPoint)

responseModifyMountTargetSecurityGroups :: ModifyMountTargetSecurityGroupsResponse -> TestTree
responseModifyMountTargetSecurityGroups =
  res
    "ModifyMountTargetSecurityGroupsResponse"
    "fixture/ModifyMountTargetSecurityGroupsResponse.proto"
    efs
    (Proxy :: Proxy ModifyMountTargetSecurityGroups)

responseDescribeFileSystemPolicy :: FileSystemPolicyDescription -> TestTree
responseDescribeFileSystemPolicy =
  res
    "DescribeFileSystemPolicyResponse"
    "fixture/DescribeFileSystemPolicyResponse.proto"
    efs
    (Proxy :: Proxy DescribeFileSystemPolicy)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    efs
    (Proxy :: Proxy UntagResource)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    efs
    (Proxy :: Proxy TagResource)

responseCreateMountTarget :: MountTargetDescription -> TestTree
responseCreateMountTarget =
  res
    "CreateMountTargetResponse"
    "fixture/CreateMountTargetResponse.proto"
    efs
    (Proxy :: Proxy CreateMountTarget)

responseDeleteMountTarget :: DeleteMountTargetResponse -> TestTree
responseDeleteMountTarget =
  res
    "DeleteMountTargetResponse"
    "fixture/DeleteMountTargetResponse.proto"
    efs
    (Proxy :: Proxy DeleteMountTarget)

responseDescribeFileSystems :: DescribeFileSystemsResponse -> TestTree
responseDescribeFileSystems =
  res
    "DescribeFileSystemsResponse"
    "fixture/DescribeFileSystemsResponse.proto"
    efs
    (Proxy :: Proxy DescribeFileSystems)

responseDescribeMountTargets :: DescribeMountTargetsResponse -> TestTree
responseDescribeMountTargets =
  res
    "DescribeMountTargetsResponse"
    "fixture/DescribeMountTargetsResponse.proto"
    efs
    (Proxy :: Proxy DescribeMountTargets)

responseDeleteFileSystemPolicy :: DeleteFileSystemPolicyResponse -> TestTree
responseDeleteFileSystemPolicy =
  res
    "DeleteFileSystemPolicyResponse"
    "fixture/DeleteFileSystemPolicyResponse.proto"
    efs
    (Proxy :: Proxy DeleteFileSystemPolicy)

responseCreateFileSystem :: FileSystemDescription -> TestTree
responseCreateFileSystem =
  res
    "CreateFileSystemResponse"
    "fixture/CreateFileSystemResponse.proto"
    efs
    (Proxy :: Proxy CreateFileSystem)

responseCreateAccessPoint :: AccessPointDescription -> TestTree
responseCreateAccessPoint =
  res
    "CreateAccessPointResponse"
    "fixture/CreateAccessPointResponse.proto"
    efs
    (Proxy :: Proxy CreateAccessPoint)

responseDescribeAccessPoints :: DescribeAccessPointsResponse -> TestTree
responseDescribeAccessPoints =
  res
    "DescribeAccessPointsResponse"
    "fixture/DescribeAccessPointsResponse.proto"
    efs
    (Proxy :: Proxy DescribeAccessPoints)

responseDescribeLifecycleConfiguration :: LifecycleConfigurationDescription -> TestTree
responseDescribeLifecycleConfiguration =
  res
    "DescribeLifecycleConfigurationResponse"
    "fixture/DescribeLifecycleConfigurationResponse.proto"
    efs
    (Proxy :: Proxy DescribeLifecycleConfiguration)

responseDescribeMountTargetSecurityGroups :: DescribeMountTargetSecurityGroupsResponse -> TestTree
responseDescribeMountTargetSecurityGroups =
  res
    "DescribeMountTargetSecurityGroupsResponse"
    "fixture/DescribeMountTargetSecurityGroupsResponse.proto"
    efs
    (Proxy :: Proxy DescribeMountTargetSecurityGroups)

responseDescribeBackupPolicy :: BackupPolicyDescription -> TestTree
responseDescribeBackupPolicy =
  res
    "DescribeBackupPolicyResponse"
    "fixture/DescribeBackupPolicyResponse.proto"
    efs
    (Proxy :: Proxy DescribeBackupPolicy)

responseUpdateFileSystem :: FileSystemDescription -> TestTree
responseUpdateFileSystem =
  res
    "UpdateFileSystemResponse"
    "fixture/UpdateFileSystemResponse.proto"
    efs
    (Proxy :: Proxy UpdateFileSystem)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    efs
    (Proxy :: Proxy ListTagsForResource)

responseDeleteFileSystem :: DeleteFileSystemResponse -> TestTree
responseDeleteFileSystem =
  res
    "DeleteFileSystemResponse"
    "fixture/DeleteFileSystemResponse.proto"
    efs
    (Proxy :: Proxy DeleteFileSystem)

responsePutFileSystemPolicy :: FileSystemPolicyDescription -> TestTree
responsePutFileSystemPolicy =
  res
    "PutFileSystemPolicyResponse"
    "fixture/PutFileSystemPolicyResponse.proto"
    efs
    (Proxy :: Proxy PutFileSystemPolicy)
