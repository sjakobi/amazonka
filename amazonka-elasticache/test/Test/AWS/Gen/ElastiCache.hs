{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.ElastiCache
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.ElastiCache where

import Data.Proxy
import Network.AWS.ElastiCache
import Test.AWS.ElastiCache.Internal
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
--         [ requestCreateReplicationGroup $
--             createReplicationGroup
--
--         , requestDeleteCacheCluster $
--             deleteCacheCluster
--
--         , requestRebootCacheCluster $
--             rebootCacheCluster
--
--         , requestIncreaseNodeGroupsInGlobalReplicationGroup $
--             increaseNodeGroupsInGlobalReplicationGroup
--
--         , requestDeleteUserGroup $
--             deleteUserGroup
--
--         , requestDeleteCacheSecurityGroup $
--             deleteCacheSecurityGroup
--
--         , requestStartMigration $
--             startMigration
--
--         , requestAuthorizeCacheSecurityGroupIngress $
--             authorizeCacheSecurityGroupIngress
--
--         , requestCopySnapshot $
--             copySnapshot
--
--         , requestDecreaseReplicaCount $
--             decreaseReplicaCount
--
--         , requestRebalanceSlotsInGlobalReplicationGroup $
--             rebalanceSlotsInGlobalReplicationGroup
--
--         , requestCreateCacheSecurityGroup $
--             createCacheSecurityGroup
--
--         , requestDescribeCacheSubnetGroups $
--             describeCacheSubnetGroups
--
--         , requestDescribeGlobalReplicationGroups $
--             describeGlobalReplicationGroups
--
--         , requestModifyCacheCluster $
--             modifyCacheCluster
--
--         , requestDescribeReservedCacheNodes $
--             describeReservedCacheNodes
--
--         , requestDeleteCacheParameterGroup $
--             deleteCacheParameterGroup
--
--         , requestRemoveTagsFromResource $
--             removeTagsFromResource
--
--         , requestDescribeCacheSecurityGroups $
--             describeCacheSecurityGroups
--
--         , requestBatchStopUpdateAction $
--             batchStopUpdateAction
--
--         , requestModifyReplicationGroup $
--             modifyReplicationGroup
--
--         , requestPurchaseReservedCacheNodesOffering $
--             purchaseReservedCacheNodesOffering
--
--         , requestCreateUser $
--             createUser
--
--         , requestDeleteSnapshot $
--             deleteSnapshot
--
--         , requestCompleteMigration $
--             completeMigration
--
--         , requestCreateCacheCluster $
--             createCacheCluster
--
--         , requestDisassociateGlobalReplicationGroup $
--             disassociateGlobalReplicationGroup
--
--         , requestDescribeEvents $
--             describeEvents
--
--         , requestDeleteReplicationGroup $
--             deleteReplicationGroup
--
--         , requestDescribeSnapshots $
--             describeSnapshots
--
--         , requestTestFailover $
--             testFailover
--
--         , requestBatchApplyUpdateAction $
--             batchApplyUpdateAction
--
--         , requestIncreaseReplicaCount $
--             increaseReplicaCount
--
--         , requestModifyReplicationGroupShardConfiguration $
--             modifyReplicationGroupShardConfiguration
--
--         , requestDescribeUsers $
--             describeUsers
--
--         , requestListAllowedNodeTypeModifications $
--             listAllowedNodeTypeModifications
--
--         , requestResetCacheParameterGroup $
--             resetCacheParameterGroup
--
--         , requestCreateCacheSubnetGroup $
--             createCacheSubnetGroup
--
--         , requestCreateGlobalReplicationGroup $
--             createGlobalReplicationGroup
--
--         , requestDescribeCacheParameterGroups $
--             describeCacheParameterGroups
--
--         , requestFailoverGlobalReplicationGroup $
--             failoverGlobalReplicationGroup
--
--         , requestAddTagsToResource $
--             addTagsToResource
--
--         , requestDecreaseNodeGroupsInGlobalReplicationGroup $
--             decreaseNodeGroupsInGlobalReplicationGroup
--
--         , requestDescribeUpdateActions $
--             describeUpdateActions
--
--         , requestModifyUser $
--             modifyUser
--
--         , requestDeleteCacheSubnetGroup $
--             deleteCacheSubnetGroup
--
--         , requestDeleteGlobalReplicationGroup $
--             deleteGlobalReplicationGroup
--
--         , requestCreateCacheParameterGroup $
--             createCacheParameterGroup
--
--         , requestDescribeCacheEngineVersions $
--             describeCacheEngineVersions
--
--         , requestModifyUserGroup $
--             modifyUserGroup
--
--         , requestDescribeCacheParameters $
--             describeCacheParameters
--
--         , requestModifyGlobalReplicationGroup $
--             modifyGlobalReplicationGroup
--
--         , requestModifyCacheSubnetGroup $
--             modifyCacheSubnetGroup
--
--         , requestDeleteUser $
--             deleteUser
--
--         , requestDescribeUserGroups $
--             describeUserGroups
--
--         , requestCreateSnapshot $
--             createSnapshot
--
--         , requestDescribeCacheClusters $
--             describeCacheClusters
--
--         , requestDescribeReservedCacheNodesOfferings $
--             describeReservedCacheNodesOfferings
--
--         , requestDescribeReplicationGroups $
--             describeReplicationGroups
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestModifyCacheParameterGroup $
--             modifyCacheParameterGroup
--
--         , requestDescribeServiceUpdates $
--             describeServiceUpdates
--
--         , requestDescribeEngineDefaultParameters $
--             describeEngineDefaultParameters
--
--         , requestCreateUserGroup $
--             createUserGroup
--
--         , requestRevokeCacheSecurityGroupIngress $
--             revokeCacheSecurityGroupIngress
--
--           ]

--     , testGroup "response"
--         [ responseCreateReplicationGroup $
--             createReplicationGroupResponse
--
--         , responseDeleteCacheCluster $
--             deleteCacheClusterResponse
--
--         , responseRebootCacheCluster $
--             rebootCacheClusterResponse
--
--         , responseIncreaseNodeGroupsInGlobalReplicationGroup $
--             increaseNodeGroupsInGlobalReplicationGroupResponse
--
--         , responseDeleteUserGroup $
--             userGroup
--
--         , responseDeleteCacheSecurityGroup $
--             deleteCacheSecurityGroupResponse
--
--         , responseStartMigration $
--             startMigrationResponse
--
--         , responseAuthorizeCacheSecurityGroupIngress $
--             authorizeCacheSecurityGroupIngressResponse
--
--         , responseCopySnapshot $
--             copySnapshotResponse
--
--         , responseDecreaseReplicaCount $
--             decreaseReplicaCountResponse
--
--         , responseRebalanceSlotsInGlobalReplicationGroup $
--             rebalanceSlotsInGlobalReplicationGroupResponse
--
--         , responseCreateCacheSecurityGroup $
--             createCacheSecurityGroupResponse
--
--         , responseDescribeCacheSubnetGroups $
--             describeCacheSubnetGroupsResponse
--
--         , responseDescribeGlobalReplicationGroups $
--             describeGlobalReplicationGroupsResponse
--
--         , responseModifyCacheCluster $
--             modifyCacheClusterResponse
--
--         , responseDescribeReservedCacheNodes $
--             describeReservedCacheNodesResponse
--
--         , responseDeleteCacheParameterGroup $
--             deleteCacheParameterGroupResponse
--
--         , responseRemoveTagsFromResource $
--             tagListMessage
--
--         , responseDescribeCacheSecurityGroups $
--             describeCacheSecurityGroupsResponse
--
--         , responseBatchStopUpdateAction $
--             updateActionResultsMessage
--
--         , responseModifyReplicationGroup $
--             modifyReplicationGroupResponse
--
--         , responsePurchaseReservedCacheNodesOffering $
--             purchaseReservedCacheNodesOfferingResponse
--
--         , responseCreateUser $
--             user
--
--         , responseDeleteSnapshot $
--             deleteSnapshotResponse
--
--         , responseCompleteMigration $
--             completeMigrationResponse
--
--         , responseCreateCacheCluster $
--             createCacheClusterResponse
--
--         , responseDisassociateGlobalReplicationGroup $
--             disassociateGlobalReplicationGroupResponse
--
--         , responseDescribeEvents $
--             describeEventsResponse
--
--         , responseDeleteReplicationGroup $
--             deleteReplicationGroupResponse
--
--         , responseDescribeSnapshots $
--             describeSnapshotsResponse
--
--         , responseTestFailover $
--             testFailoverResponse
--
--         , responseBatchApplyUpdateAction $
--             updateActionResultsMessage
--
--         , responseIncreaseReplicaCount $
--             increaseReplicaCountResponse
--
--         , responseModifyReplicationGroupShardConfiguration $
--             modifyReplicationGroupShardConfigurationResponse
--
--         , responseDescribeUsers $
--             describeUsersResponse
--
--         , responseListAllowedNodeTypeModifications $
--             listAllowedNodeTypeModificationsResponse
--
--         , responseResetCacheParameterGroup $
--             cacheParameterGroupNameMessage
--
--         , responseCreateCacheSubnetGroup $
--             createCacheSubnetGroupResponse
--
--         , responseCreateGlobalReplicationGroup $
--             createGlobalReplicationGroupResponse
--
--         , responseDescribeCacheParameterGroups $
--             describeCacheParameterGroupsResponse
--
--         , responseFailoverGlobalReplicationGroup $
--             failoverGlobalReplicationGroupResponse
--
--         , responseAddTagsToResource $
--             tagListMessage
--
--         , responseDecreaseNodeGroupsInGlobalReplicationGroup $
--             decreaseNodeGroupsInGlobalReplicationGroupResponse
--
--         , responseDescribeUpdateActions $
--             describeUpdateActionsResponse
--
--         , responseModifyUser $
--             user
--
--         , responseDeleteCacheSubnetGroup $
--             deleteCacheSubnetGroupResponse
--
--         , responseDeleteGlobalReplicationGroup $
--             deleteGlobalReplicationGroupResponse
--
--         , responseCreateCacheParameterGroup $
--             createCacheParameterGroupResponse
--
--         , responseDescribeCacheEngineVersions $
--             describeCacheEngineVersionsResponse
--
--         , responseModifyUserGroup $
--             userGroup
--
--         , responseDescribeCacheParameters $
--             describeCacheParametersResponse
--
--         , responseModifyGlobalReplicationGroup $
--             modifyGlobalReplicationGroupResponse
--
--         , responseModifyCacheSubnetGroup $
--             modifyCacheSubnetGroupResponse
--
--         , responseDeleteUser $
--             user
--
--         , responseDescribeUserGroups $
--             describeUserGroupsResponse
--
--         , responseCreateSnapshot $
--             createSnapshotResponse
--
--         , responseDescribeCacheClusters $
--             describeCacheClustersResponse
--
--         , responseDescribeReservedCacheNodesOfferings $
--             describeReservedCacheNodesOfferingsResponse
--
--         , responseDescribeReplicationGroups $
--             describeReplicationGroupsResponse
--
--         , responseListTagsForResource $
--             tagListMessage
--
--         , responseModifyCacheParameterGroup $
--             cacheParameterGroupNameMessage
--
--         , responseDescribeServiceUpdates $
--             describeServiceUpdatesResponse
--
--         , responseDescribeEngineDefaultParameters $
--             describeEngineDefaultParametersResponse
--
--         , responseCreateUserGroup $
--             userGroup
--
--         , responseRevokeCacheSecurityGroupIngress $
--             revokeCacheSecurityGroupIngressResponse
--
--           ]
--     ]

-- Requests

requestCreateReplicationGroup :: CreateReplicationGroup -> TestTree
requestCreateReplicationGroup =
  req
    "CreateReplicationGroup"
    "fixture/CreateReplicationGroup.yaml"

requestDeleteCacheCluster :: DeleteCacheCluster -> TestTree
requestDeleteCacheCluster =
  req
    "DeleteCacheCluster"
    "fixture/DeleteCacheCluster.yaml"

requestRebootCacheCluster :: RebootCacheCluster -> TestTree
requestRebootCacheCluster =
  req
    "RebootCacheCluster"
    "fixture/RebootCacheCluster.yaml"

requestIncreaseNodeGroupsInGlobalReplicationGroup :: IncreaseNodeGroupsInGlobalReplicationGroup -> TestTree
requestIncreaseNodeGroupsInGlobalReplicationGroup =
  req
    "IncreaseNodeGroupsInGlobalReplicationGroup"
    "fixture/IncreaseNodeGroupsInGlobalReplicationGroup.yaml"

requestDeleteUserGroup :: DeleteUserGroup -> TestTree
requestDeleteUserGroup =
  req
    "DeleteUserGroup"
    "fixture/DeleteUserGroup.yaml"

requestDeleteCacheSecurityGroup :: DeleteCacheSecurityGroup -> TestTree
requestDeleteCacheSecurityGroup =
  req
    "DeleteCacheSecurityGroup"
    "fixture/DeleteCacheSecurityGroup.yaml"

requestStartMigration :: StartMigration -> TestTree
requestStartMigration =
  req
    "StartMigration"
    "fixture/StartMigration.yaml"

requestAuthorizeCacheSecurityGroupIngress :: AuthorizeCacheSecurityGroupIngress -> TestTree
requestAuthorizeCacheSecurityGroupIngress =
  req
    "AuthorizeCacheSecurityGroupIngress"
    "fixture/AuthorizeCacheSecurityGroupIngress.yaml"

requestCopySnapshot :: CopySnapshot -> TestTree
requestCopySnapshot =
  req
    "CopySnapshot"
    "fixture/CopySnapshot.yaml"

requestDecreaseReplicaCount :: DecreaseReplicaCount -> TestTree
requestDecreaseReplicaCount =
  req
    "DecreaseReplicaCount"
    "fixture/DecreaseReplicaCount.yaml"

requestRebalanceSlotsInGlobalReplicationGroup :: RebalanceSlotsInGlobalReplicationGroup -> TestTree
requestRebalanceSlotsInGlobalReplicationGroup =
  req
    "RebalanceSlotsInGlobalReplicationGroup"
    "fixture/RebalanceSlotsInGlobalReplicationGroup.yaml"

requestCreateCacheSecurityGroup :: CreateCacheSecurityGroup -> TestTree
requestCreateCacheSecurityGroup =
  req
    "CreateCacheSecurityGroup"
    "fixture/CreateCacheSecurityGroup.yaml"

requestDescribeCacheSubnetGroups :: DescribeCacheSubnetGroups -> TestTree
requestDescribeCacheSubnetGroups =
  req
    "DescribeCacheSubnetGroups"
    "fixture/DescribeCacheSubnetGroups.yaml"

requestDescribeGlobalReplicationGroups :: DescribeGlobalReplicationGroups -> TestTree
requestDescribeGlobalReplicationGroups =
  req
    "DescribeGlobalReplicationGroups"
    "fixture/DescribeGlobalReplicationGroups.yaml"

requestModifyCacheCluster :: ModifyCacheCluster -> TestTree
requestModifyCacheCluster =
  req
    "ModifyCacheCluster"
    "fixture/ModifyCacheCluster.yaml"

requestDescribeReservedCacheNodes :: DescribeReservedCacheNodes -> TestTree
requestDescribeReservedCacheNodes =
  req
    "DescribeReservedCacheNodes"
    "fixture/DescribeReservedCacheNodes.yaml"

requestDeleteCacheParameterGroup :: DeleteCacheParameterGroup -> TestTree
requestDeleteCacheParameterGroup =
  req
    "DeleteCacheParameterGroup"
    "fixture/DeleteCacheParameterGroup.yaml"

requestRemoveTagsFromResource :: RemoveTagsFromResource -> TestTree
requestRemoveTagsFromResource =
  req
    "RemoveTagsFromResource"
    "fixture/RemoveTagsFromResource.yaml"

requestDescribeCacheSecurityGroups :: DescribeCacheSecurityGroups -> TestTree
requestDescribeCacheSecurityGroups =
  req
    "DescribeCacheSecurityGroups"
    "fixture/DescribeCacheSecurityGroups.yaml"

requestBatchStopUpdateAction :: BatchStopUpdateAction -> TestTree
requestBatchStopUpdateAction =
  req
    "BatchStopUpdateAction"
    "fixture/BatchStopUpdateAction.yaml"

requestModifyReplicationGroup :: ModifyReplicationGroup -> TestTree
requestModifyReplicationGroup =
  req
    "ModifyReplicationGroup"
    "fixture/ModifyReplicationGroup.yaml"

requestPurchaseReservedCacheNodesOffering :: PurchaseReservedCacheNodesOffering -> TestTree
requestPurchaseReservedCacheNodesOffering =
  req
    "PurchaseReservedCacheNodesOffering"
    "fixture/PurchaseReservedCacheNodesOffering.yaml"

requestCreateUser :: CreateUser -> TestTree
requestCreateUser =
  req
    "CreateUser"
    "fixture/CreateUser.yaml"

requestDeleteSnapshot :: DeleteSnapshot -> TestTree
requestDeleteSnapshot =
  req
    "DeleteSnapshot"
    "fixture/DeleteSnapshot.yaml"

requestCompleteMigration :: CompleteMigration -> TestTree
requestCompleteMigration =
  req
    "CompleteMigration"
    "fixture/CompleteMigration.yaml"

requestCreateCacheCluster :: CreateCacheCluster -> TestTree
requestCreateCacheCluster =
  req
    "CreateCacheCluster"
    "fixture/CreateCacheCluster.yaml"

requestDisassociateGlobalReplicationGroup :: DisassociateGlobalReplicationGroup -> TestTree
requestDisassociateGlobalReplicationGroup =
  req
    "DisassociateGlobalReplicationGroup"
    "fixture/DisassociateGlobalReplicationGroup.yaml"

requestDescribeEvents :: DescribeEvents -> TestTree
requestDescribeEvents =
  req
    "DescribeEvents"
    "fixture/DescribeEvents.yaml"

requestDeleteReplicationGroup :: DeleteReplicationGroup -> TestTree
requestDeleteReplicationGroup =
  req
    "DeleteReplicationGroup"
    "fixture/DeleteReplicationGroup.yaml"

requestDescribeSnapshots :: DescribeSnapshots -> TestTree
requestDescribeSnapshots =
  req
    "DescribeSnapshots"
    "fixture/DescribeSnapshots.yaml"

requestTestFailover :: TestFailover -> TestTree
requestTestFailover =
  req
    "TestFailover"
    "fixture/TestFailover.yaml"

requestBatchApplyUpdateAction :: BatchApplyUpdateAction -> TestTree
requestBatchApplyUpdateAction =
  req
    "BatchApplyUpdateAction"
    "fixture/BatchApplyUpdateAction.yaml"

requestIncreaseReplicaCount :: IncreaseReplicaCount -> TestTree
requestIncreaseReplicaCount =
  req
    "IncreaseReplicaCount"
    "fixture/IncreaseReplicaCount.yaml"

requestModifyReplicationGroupShardConfiguration :: ModifyReplicationGroupShardConfiguration -> TestTree
requestModifyReplicationGroupShardConfiguration =
  req
    "ModifyReplicationGroupShardConfiguration"
    "fixture/ModifyReplicationGroupShardConfiguration.yaml"

requestDescribeUsers :: DescribeUsers -> TestTree
requestDescribeUsers =
  req
    "DescribeUsers"
    "fixture/DescribeUsers.yaml"

requestListAllowedNodeTypeModifications :: ListAllowedNodeTypeModifications -> TestTree
requestListAllowedNodeTypeModifications =
  req
    "ListAllowedNodeTypeModifications"
    "fixture/ListAllowedNodeTypeModifications.yaml"

requestResetCacheParameterGroup :: ResetCacheParameterGroup -> TestTree
requestResetCacheParameterGroup =
  req
    "ResetCacheParameterGroup"
    "fixture/ResetCacheParameterGroup.yaml"

requestCreateCacheSubnetGroup :: CreateCacheSubnetGroup -> TestTree
requestCreateCacheSubnetGroup =
  req
    "CreateCacheSubnetGroup"
    "fixture/CreateCacheSubnetGroup.yaml"

requestCreateGlobalReplicationGroup :: CreateGlobalReplicationGroup -> TestTree
requestCreateGlobalReplicationGroup =
  req
    "CreateGlobalReplicationGroup"
    "fixture/CreateGlobalReplicationGroup.yaml"

requestDescribeCacheParameterGroups :: DescribeCacheParameterGroups -> TestTree
requestDescribeCacheParameterGroups =
  req
    "DescribeCacheParameterGroups"
    "fixture/DescribeCacheParameterGroups.yaml"

requestFailoverGlobalReplicationGroup :: FailoverGlobalReplicationGroup -> TestTree
requestFailoverGlobalReplicationGroup =
  req
    "FailoverGlobalReplicationGroup"
    "fixture/FailoverGlobalReplicationGroup.yaml"

requestAddTagsToResource :: AddTagsToResource -> TestTree
requestAddTagsToResource =
  req
    "AddTagsToResource"
    "fixture/AddTagsToResource.yaml"

requestDecreaseNodeGroupsInGlobalReplicationGroup :: DecreaseNodeGroupsInGlobalReplicationGroup -> TestTree
requestDecreaseNodeGroupsInGlobalReplicationGroup =
  req
    "DecreaseNodeGroupsInGlobalReplicationGroup"
    "fixture/DecreaseNodeGroupsInGlobalReplicationGroup.yaml"

requestDescribeUpdateActions :: DescribeUpdateActions -> TestTree
requestDescribeUpdateActions =
  req
    "DescribeUpdateActions"
    "fixture/DescribeUpdateActions.yaml"

requestModifyUser :: ModifyUser -> TestTree
requestModifyUser =
  req
    "ModifyUser"
    "fixture/ModifyUser.yaml"

requestDeleteCacheSubnetGroup :: DeleteCacheSubnetGroup -> TestTree
requestDeleteCacheSubnetGroup =
  req
    "DeleteCacheSubnetGroup"
    "fixture/DeleteCacheSubnetGroup.yaml"

requestDeleteGlobalReplicationGroup :: DeleteGlobalReplicationGroup -> TestTree
requestDeleteGlobalReplicationGroup =
  req
    "DeleteGlobalReplicationGroup"
    "fixture/DeleteGlobalReplicationGroup.yaml"

requestCreateCacheParameterGroup :: CreateCacheParameterGroup -> TestTree
requestCreateCacheParameterGroup =
  req
    "CreateCacheParameterGroup"
    "fixture/CreateCacheParameterGroup.yaml"

requestDescribeCacheEngineVersions :: DescribeCacheEngineVersions -> TestTree
requestDescribeCacheEngineVersions =
  req
    "DescribeCacheEngineVersions"
    "fixture/DescribeCacheEngineVersions.yaml"

requestModifyUserGroup :: ModifyUserGroup -> TestTree
requestModifyUserGroup =
  req
    "ModifyUserGroup"
    "fixture/ModifyUserGroup.yaml"

requestDescribeCacheParameters :: DescribeCacheParameters -> TestTree
requestDescribeCacheParameters =
  req
    "DescribeCacheParameters"
    "fixture/DescribeCacheParameters.yaml"

requestModifyGlobalReplicationGroup :: ModifyGlobalReplicationGroup -> TestTree
requestModifyGlobalReplicationGroup =
  req
    "ModifyGlobalReplicationGroup"
    "fixture/ModifyGlobalReplicationGroup.yaml"

requestModifyCacheSubnetGroup :: ModifyCacheSubnetGroup -> TestTree
requestModifyCacheSubnetGroup =
  req
    "ModifyCacheSubnetGroup"
    "fixture/ModifyCacheSubnetGroup.yaml"

requestDeleteUser :: DeleteUser -> TestTree
requestDeleteUser =
  req
    "DeleteUser"
    "fixture/DeleteUser.yaml"

requestDescribeUserGroups :: DescribeUserGroups -> TestTree
requestDescribeUserGroups =
  req
    "DescribeUserGroups"
    "fixture/DescribeUserGroups.yaml"

requestCreateSnapshot :: CreateSnapshot -> TestTree
requestCreateSnapshot =
  req
    "CreateSnapshot"
    "fixture/CreateSnapshot.yaml"

requestDescribeCacheClusters :: DescribeCacheClusters -> TestTree
requestDescribeCacheClusters =
  req
    "DescribeCacheClusters"
    "fixture/DescribeCacheClusters.yaml"

requestDescribeReservedCacheNodesOfferings :: DescribeReservedCacheNodesOfferings -> TestTree
requestDescribeReservedCacheNodesOfferings =
  req
    "DescribeReservedCacheNodesOfferings"
    "fixture/DescribeReservedCacheNodesOfferings.yaml"

requestDescribeReplicationGroups :: DescribeReplicationGroups -> TestTree
requestDescribeReplicationGroups =
  req
    "DescribeReplicationGroups"
    "fixture/DescribeReplicationGroups.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestModifyCacheParameterGroup :: ModifyCacheParameterGroup -> TestTree
requestModifyCacheParameterGroup =
  req
    "ModifyCacheParameterGroup"
    "fixture/ModifyCacheParameterGroup.yaml"

requestDescribeServiceUpdates :: DescribeServiceUpdates -> TestTree
requestDescribeServiceUpdates =
  req
    "DescribeServiceUpdates"
    "fixture/DescribeServiceUpdates.yaml"

requestDescribeEngineDefaultParameters :: DescribeEngineDefaultParameters -> TestTree
requestDescribeEngineDefaultParameters =
  req
    "DescribeEngineDefaultParameters"
    "fixture/DescribeEngineDefaultParameters.yaml"

requestCreateUserGroup :: CreateUserGroup -> TestTree
requestCreateUserGroup =
  req
    "CreateUserGroup"
    "fixture/CreateUserGroup.yaml"

requestRevokeCacheSecurityGroupIngress :: RevokeCacheSecurityGroupIngress -> TestTree
requestRevokeCacheSecurityGroupIngress =
  req
    "RevokeCacheSecurityGroupIngress"
    "fixture/RevokeCacheSecurityGroupIngress.yaml"

-- Responses

responseCreateReplicationGroup :: CreateReplicationGroupResponse -> TestTree
responseCreateReplicationGroup =
  res
    "CreateReplicationGroupResponse"
    "fixture/CreateReplicationGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy CreateReplicationGroup)

responseDeleteCacheCluster :: DeleteCacheClusterResponse -> TestTree
responseDeleteCacheCluster =
  res
    "DeleteCacheClusterResponse"
    "fixture/DeleteCacheClusterResponse.proto"
    elastiCache
    (Proxy :: Proxy DeleteCacheCluster)

responseRebootCacheCluster :: RebootCacheClusterResponse -> TestTree
responseRebootCacheCluster =
  res
    "RebootCacheClusterResponse"
    "fixture/RebootCacheClusterResponse.proto"
    elastiCache
    (Proxy :: Proxy RebootCacheCluster)

responseIncreaseNodeGroupsInGlobalReplicationGroup :: IncreaseNodeGroupsInGlobalReplicationGroupResponse -> TestTree
responseIncreaseNodeGroupsInGlobalReplicationGroup =
  res
    "IncreaseNodeGroupsInGlobalReplicationGroupResponse"
    "fixture/IncreaseNodeGroupsInGlobalReplicationGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy IncreaseNodeGroupsInGlobalReplicationGroup)

responseDeleteUserGroup :: UserGroup -> TestTree
responseDeleteUserGroup =
  res
    "DeleteUserGroupResponse"
    "fixture/DeleteUserGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy DeleteUserGroup)

responseDeleteCacheSecurityGroup :: DeleteCacheSecurityGroupResponse -> TestTree
responseDeleteCacheSecurityGroup =
  res
    "DeleteCacheSecurityGroupResponse"
    "fixture/DeleteCacheSecurityGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy DeleteCacheSecurityGroup)

responseStartMigration :: StartMigrationResponse -> TestTree
responseStartMigration =
  res
    "StartMigrationResponse"
    "fixture/StartMigrationResponse.proto"
    elastiCache
    (Proxy :: Proxy StartMigration)

responseAuthorizeCacheSecurityGroupIngress :: AuthorizeCacheSecurityGroupIngressResponse -> TestTree
responseAuthorizeCacheSecurityGroupIngress =
  res
    "AuthorizeCacheSecurityGroupIngressResponse"
    "fixture/AuthorizeCacheSecurityGroupIngressResponse.proto"
    elastiCache
    (Proxy :: Proxy AuthorizeCacheSecurityGroupIngress)

responseCopySnapshot :: CopySnapshotResponse -> TestTree
responseCopySnapshot =
  res
    "CopySnapshotResponse"
    "fixture/CopySnapshotResponse.proto"
    elastiCache
    (Proxy :: Proxy CopySnapshot)

responseDecreaseReplicaCount :: DecreaseReplicaCountResponse -> TestTree
responseDecreaseReplicaCount =
  res
    "DecreaseReplicaCountResponse"
    "fixture/DecreaseReplicaCountResponse.proto"
    elastiCache
    (Proxy :: Proxy DecreaseReplicaCount)

responseRebalanceSlotsInGlobalReplicationGroup :: RebalanceSlotsInGlobalReplicationGroupResponse -> TestTree
responseRebalanceSlotsInGlobalReplicationGroup =
  res
    "RebalanceSlotsInGlobalReplicationGroupResponse"
    "fixture/RebalanceSlotsInGlobalReplicationGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy RebalanceSlotsInGlobalReplicationGroup)

responseCreateCacheSecurityGroup :: CreateCacheSecurityGroupResponse -> TestTree
responseCreateCacheSecurityGroup =
  res
    "CreateCacheSecurityGroupResponse"
    "fixture/CreateCacheSecurityGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy CreateCacheSecurityGroup)

responseDescribeCacheSubnetGroups :: DescribeCacheSubnetGroupsResponse -> TestTree
responseDescribeCacheSubnetGroups =
  res
    "DescribeCacheSubnetGroupsResponse"
    "fixture/DescribeCacheSubnetGroupsResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeCacheSubnetGroups)

responseDescribeGlobalReplicationGroups :: DescribeGlobalReplicationGroupsResponse -> TestTree
responseDescribeGlobalReplicationGroups =
  res
    "DescribeGlobalReplicationGroupsResponse"
    "fixture/DescribeGlobalReplicationGroupsResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeGlobalReplicationGroups)

responseModifyCacheCluster :: ModifyCacheClusterResponse -> TestTree
responseModifyCacheCluster =
  res
    "ModifyCacheClusterResponse"
    "fixture/ModifyCacheClusterResponse.proto"
    elastiCache
    (Proxy :: Proxy ModifyCacheCluster)

responseDescribeReservedCacheNodes :: DescribeReservedCacheNodesResponse -> TestTree
responseDescribeReservedCacheNodes =
  res
    "DescribeReservedCacheNodesResponse"
    "fixture/DescribeReservedCacheNodesResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeReservedCacheNodes)

responseDeleteCacheParameterGroup :: DeleteCacheParameterGroupResponse -> TestTree
responseDeleteCacheParameterGroup =
  res
    "DeleteCacheParameterGroupResponse"
    "fixture/DeleteCacheParameterGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy DeleteCacheParameterGroup)

responseRemoveTagsFromResource :: TagListMessage -> TestTree
responseRemoveTagsFromResource =
  res
    "RemoveTagsFromResourceResponse"
    "fixture/RemoveTagsFromResourceResponse.proto"
    elastiCache
    (Proxy :: Proxy RemoveTagsFromResource)

responseDescribeCacheSecurityGroups :: DescribeCacheSecurityGroupsResponse -> TestTree
responseDescribeCacheSecurityGroups =
  res
    "DescribeCacheSecurityGroupsResponse"
    "fixture/DescribeCacheSecurityGroupsResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeCacheSecurityGroups)

responseBatchStopUpdateAction :: UpdateActionResultsMessage -> TestTree
responseBatchStopUpdateAction =
  res
    "BatchStopUpdateActionResponse"
    "fixture/BatchStopUpdateActionResponse.proto"
    elastiCache
    (Proxy :: Proxy BatchStopUpdateAction)

responseModifyReplicationGroup :: ModifyReplicationGroupResponse -> TestTree
responseModifyReplicationGroup =
  res
    "ModifyReplicationGroupResponse"
    "fixture/ModifyReplicationGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy ModifyReplicationGroup)

responsePurchaseReservedCacheNodesOffering :: PurchaseReservedCacheNodesOfferingResponse -> TestTree
responsePurchaseReservedCacheNodesOffering =
  res
    "PurchaseReservedCacheNodesOfferingResponse"
    "fixture/PurchaseReservedCacheNodesOfferingResponse.proto"
    elastiCache
    (Proxy :: Proxy PurchaseReservedCacheNodesOffering)

responseCreateUser :: User -> TestTree
responseCreateUser =
  res
    "CreateUserResponse"
    "fixture/CreateUserResponse.proto"
    elastiCache
    (Proxy :: Proxy CreateUser)

responseDeleteSnapshot :: DeleteSnapshotResponse -> TestTree
responseDeleteSnapshot =
  res
    "DeleteSnapshotResponse"
    "fixture/DeleteSnapshotResponse.proto"
    elastiCache
    (Proxy :: Proxy DeleteSnapshot)

responseCompleteMigration :: CompleteMigrationResponse -> TestTree
responseCompleteMigration =
  res
    "CompleteMigrationResponse"
    "fixture/CompleteMigrationResponse.proto"
    elastiCache
    (Proxy :: Proxy CompleteMigration)

responseCreateCacheCluster :: CreateCacheClusterResponse -> TestTree
responseCreateCacheCluster =
  res
    "CreateCacheClusterResponse"
    "fixture/CreateCacheClusterResponse.proto"
    elastiCache
    (Proxy :: Proxy CreateCacheCluster)

responseDisassociateGlobalReplicationGroup :: DisassociateGlobalReplicationGroupResponse -> TestTree
responseDisassociateGlobalReplicationGroup =
  res
    "DisassociateGlobalReplicationGroupResponse"
    "fixture/DisassociateGlobalReplicationGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy DisassociateGlobalReplicationGroup)

responseDescribeEvents :: DescribeEventsResponse -> TestTree
responseDescribeEvents =
  res
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeEvents)

responseDeleteReplicationGroup :: DeleteReplicationGroupResponse -> TestTree
responseDeleteReplicationGroup =
  res
    "DeleteReplicationGroupResponse"
    "fixture/DeleteReplicationGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy DeleteReplicationGroup)

responseDescribeSnapshots :: DescribeSnapshotsResponse -> TestTree
responseDescribeSnapshots =
  res
    "DescribeSnapshotsResponse"
    "fixture/DescribeSnapshotsResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeSnapshots)

responseTestFailover :: TestFailoverResponse -> TestTree
responseTestFailover =
  res
    "TestFailoverResponse"
    "fixture/TestFailoverResponse.proto"
    elastiCache
    (Proxy :: Proxy TestFailover)

responseBatchApplyUpdateAction :: UpdateActionResultsMessage -> TestTree
responseBatchApplyUpdateAction =
  res
    "BatchApplyUpdateActionResponse"
    "fixture/BatchApplyUpdateActionResponse.proto"
    elastiCache
    (Proxy :: Proxy BatchApplyUpdateAction)

responseIncreaseReplicaCount :: IncreaseReplicaCountResponse -> TestTree
responseIncreaseReplicaCount =
  res
    "IncreaseReplicaCountResponse"
    "fixture/IncreaseReplicaCountResponse.proto"
    elastiCache
    (Proxy :: Proxy IncreaseReplicaCount)

responseModifyReplicationGroupShardConfiguration :: ModifyReplicationGroupShardConfigurationResponse -> TestTree
responseModifyReplicationGroupShardConfiguration =
  res
    "ModifyReplicationGroupShardConfigurationResponse"
    "fixture/ModifyReplicationGroupShardConfigurationResponse.proto"
    elastiCache
    (Proxy :: Proxy ModifyReplicationGroupShardConfiguration)

responseDescribeUsers :: DescribeUsersResponse -> TestTree
responseDescribeUsers =
  res
    "DescribeUsersResponse"
    "fixture/DescribeUsersResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeUsers)

responseListAllowedNodeTypeModifications :: ListAllowedNodeTypeModificationsResponse -> TestTree
responseListAllowedNodeTypeModifications =
  res
    "ListAllowedNodeTypeModificationsResponse"
    "fixture/ListAllowedNodeTypeModificationsResponse.proto"
    elastiCache
    (Proxy :: Proxy ListAllowedNodeTypeModifications)

responseResetCacheParameterGroup :: CacheParameterGroupNameMessage -> TestTree
responseResetCacheParameterGroup =
  res
    "ResetCacheParameterGroupResponse"
    "fixture/ResetCacheParameterGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy ResetCacheParameterGroup)

responseCreateCacheSubnetGroup :: CreateCacheSubnetGroupResponse -> TestTree
responseCreateCacheSubnetGroup =
  res
    "CreateCacheSubnetGroupResponse"
    "fixture/CreateCacheSubnetGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy CreateCacheSubnetGroup)

responseCreateGlobalReplicationGroup :: CreateGlobalReplicationGroupResponse -> TestTree
responseCreateGlobalReplicationGroup =
  res
    "CreateGlobalReplicationGroupResponse"
    "fixture/CreateGlobalReplicationGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy CreateGlobalReplicationGroup)

responseDescribeCacheParameterGroups :: DescribeCacheParameterGroupsResponse -> TestTree
responseDescribeCacheParameterGroups =
  res
    "DescribeCacheParameterGroupsResponse"
    "fixture/DescribeCacheParameterGroupsResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeCacheParameterGroups)

responseFailoverGlobalReplicationGroup :: FailoverGlobalReplicationGroupResponse -> TestTree
responseFailoverGlobalReplicationGroup =
  res
    "FailoverGlobalReplicationGroupResponse"
    "fixture/FailoverGlobalReplicationGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy FailoverGlobalReplicationGroup)

responseAddTagsToResource :: TagListMessage -> TestTree
responseAddTagsToResource =
  res
    "AddTagsToResourceResponse"
    "fixture/AddTagsToResourceResponse.proto"
    elastiCache
    (Proxy :: Proxy AddTagsToResource)

responseDecreaseNodeGroupsInGlobalReplicationGroup :: DecreaseNodeGroupsInGlobalReplicationGroupResponse -> TestTree
responseDecreaseNodeGroupsInGlobalReplicationGroup =
  res
    "DecreaseNodeGroupsInGlobalReplicationGroupResponse"
    "fixture/DecreaseNodeGroupsInGlobalReplicationGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy DecreaseNodeGroupsInGlobalReplicationGroup)

responseDescribeUpdateActions :: DescribeUpdateActionsResponse -> TestTree
responseDescribeUpdateActions =
  res
    "DescribeUpdateActionsResponse"
    "fixture/DescribeUpdateActionsResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeUpdateActions)

responseModifyUser :: User -> TestTree
responseModifyUser =
  res
    "ModifyUserResponse"
    "fixture/ModifyUserResponse.proto"
    elastiCache
    (Proxy :: Proxy ModifyUser)

responseDeleteCacheSubnetGroup :: DeleteCacheSubnetGroupResponse -> TestTree
responseDeleteCacheSubnetGroup =
  res
    "DeleteCacheSubnetGroupResponse"
    "fixture/DeleteCacheSubnetGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy DeleteCacheSubnetGroup)

responseDeleteGlobalReplicationGroup :: DeleteGlobalReplicationGroupResponse -> TestTree
responseDeleteGlobalReplicationGroup =
  res
    "DeleteGlobalReplicationGroupResponse"
    "fixture/DeleteGlobalReplicationGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy DeleteGlobalReplicationGroup)

responseCreateCacheParameterGroup :: CreateCacheParameterGroupResponse -> TestTree
responseCreateCacheParameterGroup =
  res
    "CreateCacheParameterGroupResponse"
    "fixture/CreateCacheParameterGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy CreateCacheParameterGroup)

responseDescribeCacheEngineVersions :: DescribeCacheEngineVersionsResponse -> TestTree
responseDescribeCacheEngineVersions =
  res
    "DescribeCacheEngineVersionsResponse"
    "fixture/DescribeCacheEngineVersionsResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeCacheEngineVersions)

responseModifyUserGroup :: UserGroup -> TestTree
responseModifyUserGroup =
  res
    "ModifyUserGroupResponse"
    "fixture/ModifyUserGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy ModifyUserGroup)

responseDescribeCacheParameters :: DescribeCacheParametersResponse -> TestTree
responseDescribeCacheParameters =
  res
    "DescribeCacheParametersResponse"
    "fixture/DescribeCacheParametersResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeCacheParameters)

responseModifyGlobalReplicationGroup :: ModifyGlobalReplicationGroupResponse -> TestTree
responseModifyGlobalReplicationGroup =
  res
    "ModifyGlobalReplicationGroupResponse"
    "fixture/ModifyGlobalReplicationGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy ModifyGlobalReplicationGroup)

responseModifyCacheSubnetGroup :: ModifyCacheSubnetGroupResponse -> TestTree
responseModifyCacheSubnetGroup =
  res
    "ModifyCacheSubnetGroupResponse"
    "fixture/ModifyCacheSubnetGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy ModifyCacheSubnetGroup)

responseDeleteUser :: User -> TestTree
responseDeleteUser =
  res
    "DeleteUserResponse"
    "fixture/DeleteUserResponse.proto"
    elastiCache
    (Proxy :: Proxy DeleteUser)

responseDescribeUserGroups :: DescribeUserGroupsResponse -> TestTree
responseDescribeUserGroups =
  res
    "DescribeUserGroupsResponse"
    "fixture/DescribeUserGroupsResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeUserGroups)

responseCreateSnapshot :: CreateSnapshotResponse -> TestTree
responseCreateSnapshot =
  res
    "CreateSnapshotResponse"
    "fixture/CreateSnapshotResponse.proto"
    elastiCache
    (Proxy :: Proxy CreateSnapshot)

responseDescribeCacheClusters :: DescribeCacheClustersResponse -> TestTree
responseDescribeCacheClusters =
  res
    "DescribeCacheClustersResponse"
    "fixture/DescribeCacheClustersResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeCacheClusters)

responseDescribeReservedCacheNodesOfferings :: DescribeReservedCacheNodesOfferingsResponse -> TestTree
responseDescribeReservedCacheNodesOfferings =
  res
    "DescribeReservedCacheNodesOfferingsResponse"
    "fixture/DescribeReservedCacheNodesOfferingsResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeReservedCacheNodesOfferings)

responseDescribeReplicationGroups :: DescribeReplicationGroupsResponse -> TestTree
responseDescribeReplicationGroups =
  res
    "DescribeReplicationGroupsResponse"
    "fixture/DescribeReplicationGroupsResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeReplicationGroups)

responseListTagsForResource :: TagListMessage -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    elastiCache
    (Proxy :: Proxy ListTagsForResource)

responseModifyCacheParameterGroup :: CacheParameterGroupNameMessage -> TestTree
responseModifyCacheParameterGroup =
  res
    "ModifyCacheParameterGroupResponse"
    "fixture/ModifyCacheParameterGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy ModifyCacheParameterGroup)

responseDescribeServiceUpdates :: DescribeServiceUpdatesResponse -> TestTree
responseDescribeServiceUpdates =
  res
    "DescribeServiceUpdatesResponse"
    "fixture/DescribeServiceUpdatesResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeServiceUpdates)

responseDescribeEngineDefaultParameters :: DescribeEngineDefaultParametersResponse -> TestTree
responseDescribeEngineDefaultParameters =
  res
    "DescribeEngineDefaultParametersResponse"
    "fixture/DescribeEngineDefaultParametersResponse.proto"
    elastiCache
    (Proxy :: Proxy DescribeEngineDefaultParameters)

responseCreateUserGroup :: UserGroup -> TestTree
responseCreateUserGroup =
  res
    "CreateUserGroupResponse"
    "fixture/CreateUserGroupResponse.proto"
    elastiCache
    (Proxy :: Proxy CreateUserGroup)

responseRevokeCacheSecurityGroupIngress :: RevokeCacheSecurityGroupIngressResponse -> TestTree
responseRevokeCacheSecurityGroupIngress =
  res
    "RevokeCacheSecurityGroupIngressResponse"
    "fixture/RevokeCacheSecurityGroupIngressResponse.proto"
    elastiCache
    (Proxy :: Proxy RevokeCacheSecurityGroupIngress)
