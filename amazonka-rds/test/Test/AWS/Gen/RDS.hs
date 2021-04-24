{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.RDS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.RDS where

import Data.Proxy
import Network.AWS.RDS
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.RDS.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestResetDBClusterParameterGroup $
--             resetDBClusterParameterGroup
--
--         , requestStopDBInstance $
--             stopDBInstance
--
--         , requestModifyDBInstance $
--             modifyDBInstance
--
--         , requestDescribeEventCategories $
--             describeEventCategories
--
--         , requestStartDBInstance $
--             startDBInstance
--
--         , requestCopyDBClusterParameterGroup $
--             copyDBClusterParameterGroup
--
--         , requestDescribeExportTasks $
--             describeExportTasks
--
--         , requestCopyDBSnapshot $
--             copyDBSnapshot
--
--         , requestPromoteReadReplica $
--             promoteReadReplica
--
--         , requestDescribeDBSnapshots $
--             describeDBSnapshots
--
--         , requestModifyDBCluster $
--             modifyDBCluster
--
--         , requestModifyOptionGroup $
--             modifyOptionGroup
--
--         , requestStopDBCluster $
--             stopDBCluster
--
--         , requestCreateDBClusterSnapshot $
--             createDBClusterSnapshot
--
--         , requestDescribeDBClusterParameterGroups $
--             describeDBClusterParameterGroups
--
--         , requestDescribeDBEngineVersions $
--             describeDBEngineVersions
--
--         , requestStartDBCluster $
--             startDBCluster
--
--         , requestDescribeOptionGroupOptions $
--             describeOptionGroupOptions
--
--         , requestDeleteInstallationMedia $
--             deleteInstallationMedia
--
--         , requestCopyOptionGroup $
--             copyOptionGroup
--
--         , requestDescribeDBInstanceAutomatedBackups $
--             describeDBInstanceAutomatedBackups
--
--         , requestModifyGlobalCluster $
--             modifyGlobalCluster
--
--         , requestDescribeDBProxies $
--             describeDBProxies
--
--         , requestRestoreDBClusterToPointInTime $
--             restoreDBClusterToPointInTime
--
--         , requestStopActivityStream $
--             stopActivityStream
--
--         , requestCreateDBInstanceReadReplica $
--             createDBInstanceReadReplica
--
--         , requestDescribeValidDBInstanceModifications $
--             describeValidDBInstanceModifications
--
--         , requestStartExportTask $
--             startExportTask
--
--         , requestDescribeDBParameters $
--             describeDBParameters
--
--         , requestDescribeDBInstances $
--             describeDBInstances
--
--         , requestDescribeEventSubscriptions $
--             describeEventSubscriptions
--
--         , requestRestoreDBInstanceFromS3 $
--             restoreDBInstanceFromS3
--
--         , requestStartActivityStream $
--             startActivityStream
--
--         , requestDescribeDBClusterEndpoints $
--             describeDBClusterEndpoints
--
--         , requestModifyCertificates $
--             modifyCertificates
--
--         , requestDescribeDBClusterSnapshots $
--             describeDBClusterSnapshots
--
--         , requestDeleteDBClusterEndpoint $
--             deleteDBClusterEndpoint
--
--         , requestModifyDBSnapshotAttribute $
--             modifyDBSnapshotAttribute
--
--         , requestDescribeReservedDBInstancesOfferings $
--             describeReservedDBInstancesOfferings
--
--         , requestDeleteDBInstance $
--             deleteDBInstance
--
--         , requestRebootDBInstance $
--             rebootDBInstance
--
--         , requestDeleteEventSubscription $
--             deleteEventSubscription
--
--         , requestDescribeDBParameterGroups $
--             describeDBParameterGroups
--
--         , requestDeleteDBInstanceAutomatedBackup $
--             deleteDBInstanceAutomatedBackup
--
--         , requestDescribeDBClusterBacktracks $
--             describeDBClusterBacktracks
--
--         , requestCreateDBClusterParameterGroup $
--             createDBClusterParameterGroup
--
--         , requestCreateDBProxy $
--             createDBProxy
--
--         , requestDescribeDBClusterParameters $
--             describeDBClusterParameters
--
--         , requestDeleteDBSubnetGroup $
--             deleteDBSubnetGroup
--
--         , requestDescribeAccountAttributes $
--             describeAccountAttributes
--
--         , requestRemoveTagsFromResource $
--             removeTagsFromResource
--
--         , requestCreateDBSecurityGroup $
--             createDBSecurityGroup
--
--         , requestDescribeCertificates $
--             describeCertificates
--
--         , requestCreateDBInstance $
--             createDBInstance
--
--         , requestRemoveRoleFromDBInstance $
--             removeRoleFromDBInstance
--
--         , requestDescribeEngineDefaultClusterParameters $
--             describeEngineDefaultClusterParameters
--
--         , requestStartDBInstanceAutomatedBackupsReplication $
--             startDBInstanceAutomatedBackupsReplication
--
--         , requestCreateOptionGroup $
--             createOptionGroup
--
--         , requestCreateCustomAvailabilityZone $
--             createCustomAvailabilityZone
--
--         , requestStopDBInstanceAutomatedBackupsReplication $
--             stopDBInstanceAutomatedBackupsReplication
--
--         , requestFailoverDBCluster $
--             failoverDBCluster
--
--         , requestRemoveRoleFromDBCluster $
--             removeRoleFromDBCluster
--
--         , requestDescribeDBSnapshotAttributes $
--             describeDBSnapshotAttributes
--
--         , requestCreateDBCluster $
--             createDBCluster
--
--         , requestApplyPendingMaintenanceAction $
--             applyPendingMaintenanceAction
--
--         , requestBacktrackDBCluster $
--             backtrackDBCluster
--
--         , requestDescribeReservedDBInstances $
--             describeReservedDBInstances
--
--         , requestDeleteDBCluster $
--             deleteDBCluster
--
--         , requestDeleteOptionGroup $
--             deleteOptionGroup
--
--         , requestDescribePendingMaintenanceActions $
--             describePendingMaintenanceActions
--
--         , requestDescribeDBProxyTargetGroups $
--             describeDBProxyTargetGroups
--
--         , requestModifyDBClusterParameterGroup $
--             modifyDBClusterParameterGroup
--
--         , requestDescribeDBClusterSnapshotAttributes $
--             describeDBClusterSnapshotAttributes
--
--         , requestDescribeOptionGroups $
--             describeOptionGroups
--
--         , requestDescribeDBClusters $
--             describeDBClusters
--
--         , requestDescribeEvents $
--             describeEvents
--
--         , requestModifyDBProxy $
--             modifyDBProxy
--
--         , requestDescribeDBLogFiles $
--             describeDBLogFiles
--
--         , requestRestoreDBClusterFromS3 $
--             restoreDBClusterFromS3
--
--         , requestCancelExportTask $
--             cancelExportTask
--
--         , requestDescribeGlobalClusters $
--             describeGlobalClusters
--
--         , requestAddSourceIdentifierToSubscription $
--             addSourceIdentifierToSubscription
--
--         , requestModifyEventSubscription $
--             modifyEventSubscription
--
--         , requestModifyDBClusterEndpoint $
--             modifyDBClusterEndpoint
--
--         , requestModifyDBClusterSnapshotAttribute $
--             modifyDBClusterSnapshotAttribute
--
--         , requestDescribeDBSubnetGroups $
--             describeDBSubnetGroups
--
--         , requestModifyDBProxyTargetGroup $
--             modifyDBProxyTargetGroup
--
--         , requestCreateDBParameterGroup $
--             createDBParameterGroup
--
--         , requestDeleteDBClusterSnapshot $
--             deleteDBClusterSnapshot
--
--         , requestRemoveFromGlobalCluster $
--             removeFromGlobalCluster
--
--         , requestDescribeDBSecurityGroups $
--             describeDBSecurityGroups
--
--         , requestAddTagsToResource $
--             addTagsToResource
--
--         , requestRegisterDBProxyTargets $
--             registerDBProxyTargets
--
--         , requestDownloadDBLogFilePortion $
--             downloadDBLogFilePortion
--
--         , requestModifyCurrentDBClusterCapacity $
--             modifyCurrentDBClusterCapacity
--
--         , requestAddRoleToDBInstance $
--             addRoleToDBInstance
--
--         , requestDeleteDBParameterGroup $
--             deleteDBParameterGroup
--
--         , requestCreateDBSnapshot $
--             createDBSnapshot
--
--         , requestCreateDBSubnetGroup $
--             createDBSubnetGroup
--
--         , requestDescribeOrderableDBInstanceOptions $
--             describeOrderableDBInstanceOptions
--
--         , requestDeleteDBSecurityGroup $
--             deleteDBSecurityGroup
--
--         , requestRestoreDBClusterFromSnapshot $
--             restoreDBClusterFromSnapshot
--
--         , requestRestoreDBInstanceFromDBSnapshot $
--             restoreDBInstanceFromDBSnapshot
--
--         , requestCreateDBClusterEndpoint $
--             createDBClusterEndpoint
--
--         , requestCreateEventSubscription $
--             createEventSubscription
--
--         , requestDeleteDBSnapshot $
--             deleteDBSnapshot
--
--         , requestDeleteDBClusterParameterGroup $
--             deleteDBClusterParameterGroup
--
--         , requestDescribeSourceRegions $
--             describeSourceRegions
--
--         , requestPurchaseReservedDBInstancesOffering $
--             purchaseReservedDBInstancesOffering
--
--         , requestAuthorizeDBSecurityGroupIngress $
--             authorizeDBSecurityGroupIngress
--
--         , requestDeleteDBProxy $
--             deleteDBProxy
--
--         , requestRevokeDBSecurityGroupIngress $
--             revokeDBSecurityGroupIngress
--
--         , requestModifyDBParameterGroup $
--             modifyDBParameterGroup
--
--         , requestDeregisterDBProxyTargets $
--             deregisterDBProxyTargets
--
--         , requestDeleteGlobalCluster $
--             deleteGlobalCluster
--
--         , requestPromoteReadReplicaDBCluster $
--             promoteReadReplicaDBCluster
--
--         , requestCreateGlobalCluster $
--             createGlobalCluster
--
--         , requestResetDBParameterGroup $
--             resetDBParameterGroup
--
--         , requestDescribeDBProxyTargets $
--             describeDBProxyTargets
--
--         , requestImportInstallationMedia $
--             importInstallationMedia
--
--         , requestDeleteCustomAvailabilityZone $
--             deleteCustomAvailabilityZone
--
--         , requestFailoverGlobalCluster $
--             failoverGlobalCluster
--
--         , requestRemoveSourceIdentifierFromSubscription $
--             removeSourceIdentifierFromSubscription
--
--         , requestCopyDBClusterSnapshot $
--             copyDBClusterSnapshot
--
--         , requestDescribeInstallationMedia $
--             describeInstallationMedia
--
--         , requestCopyDBParameterGroup $
--             copyDBParameterGroup
--
--         , requestRestoreDBInstanceToPointInTime $
--             restoreDBInstanceToPointInTime
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestModifyDBSnapshot $
--             modifyDBSnapshot
--
--         , requestModifyDBSubnetGroup $
--             modifyDBSubnetGroup
--
--         , requestDescribeEngineDefaultParameters $
--             describeEngineDefaultParameters
--
--         , requestDescribeCustomAvailabilityZones $
--             describeCustomAvailabilityZones
--
--         , requestAddRoleToDBCluster $
--             addRoleToDBCluster
--
--           ]

--     , testGroup "response"
--         [ responseResetDBClusterParameterGroup $
--             dbClusterParameterGroupNameMessage
--
--         , responseStopDBInstance $
--             stopDBInstanceResponse
--
--         , responseModifyDBInstance $
--             modifyDBInstanceResponse
--
--         , responseDescribeEventCategories $
--             describeEventCategoriesResponse
--
--         , responseStartDBInstance $
--             startDBInstanceResponse
--
--         , responseCopyDBClusterParameterGroup $
--             copyDBClusterParameterGroupResponse
--
--         , responseDescribeExportTasks $
--             describeExportTasksResponse
--
--         , responseCopyDBSnapshot $
--             copyDBSnapshotResponse
--
--         , responsePromoteReadReplica $
--             promoteReadReplicaResponse
--
--         , responseDescribeDBSnapshots $
--             describeDBSnapshotsResponse
--
--         , responseModifyDBCluster $
--             modifyDBClusterResponse
--
--         , responseModifyOptionGroup $
--             modifyOptionGroupResponse
--
--         , responseStopDBCluster $
--             stopDBClusterResponse
--
--         , responseCreateDBClusterSnapshot $
--             createDBClusterSnapshotResponse
--
--         , responseDescribeDBClusterParameterGroups $
--             describeDBClusterParameterGroupsResponse
--
--         , responseDescribeDBEngineVersions $
--             describeDBEngineVersionsResponse
--
--         , responseStartDBCluster $
--             startDBClusterResponse
--
--         , responseDescribeOptionGroupOptions $
--             describeOptionGroupOptionsResponse
--
--         , responseDeleteInstallationMedia $
--             installationMedia
--
--         , responseCopyOptionGroup $
--             copyOptionGroupResponse
--
--         , responseDescribeDBInstanceAutomatedBackups $
--             describeDBInstanceAutomatedBackupsResponse
--
--         , responseModifyGlobalCluster $
--             modifyGlobalClusterResponse
--
--         , responseDescribeDBProxies $
--             describeDBProxiesResponse
--
--         , responseRestoreDBClusterToPointInTime $
--             restoreDBClusterToPointInTimeResponse
--
--         , responseStopActivityStream $
--             stopActivityStreamResponse
--
--         , responseCreateDBInstanceReadReplica $
--             createDBInstanceReadReplicaResponse
--
--         , responseDescribeValidDBInstanceModifications $
--             describeValidDBInstanceModificationsResponse
--
--         , responseStartExportTask $
--             exportTask
--
--         , responseDescribeDBParameters $
--             describeDBParametersResponse
--
--         , responseDescribeDBInstances $
--             describeDBInstancesResponse
--
--         , responseDescribeEventSubscriptions $
--             describeEventSubscriptionsResponse
--
--         , responseRestoreDBInstanceFromS3 $
--             restoreDBInstanceFromS3Response
--
--         , responseStartActivityStream $
--             startActivityStreamResponse
--
--         , responseDescribeDBClusterEndpoints $
--             describeDBClusterEndpointsResponse
--
--         , responseModifyCertificates $
--             modifyCertificatesResponse
--
--         , responseDescribeDBClusterSnapshots $
--             describeDBClusterSnapshotsResponse
--
--         , responseDeleteDBClusterEndpoint $
--             dbClusterEndpoint
--
--         , responseModifyDBSnapshotAttribute $
--             modifyDBSnapshotAttributeResponse
--
--         , responseDescribeReservedDBInstancesOfferings $
--             describeReservedDBInstancesOfferingsResponse
--
--         , responseDeleteDBInstance $
--             deleteDBInstanceResponse
--
--         , responseRebootDBInstance $
--             rebootDBInstanceResponse
--
--         , responseDeleteEventSubscription $
--             deleteEventSubscriptionResponse
--
--         , responseDescribeDBParameterGroups $
--             describeDBParameterGroupsResponse
--
--         , responseDeleteDBInstanceAutomatedBackup $
--             deleteDBInstanceAutomatedBackupResponse
--
--         , responseDescribeDBClusterBacktracks $
--             describeDBClusterBacktracksResponse
--
--         , responseCreateDBClusterParameterGroup $
--             createDBClusterParameterGroupResponse
--
--         , responseCreateDBProxy $
--             createDBProxyResponse
--
--         , responseDescribeDBClusterParameters $
--             describeDBClusterParametersResponse
--
--         , responseDeleteDBSubnetGroup $
--             deleteDBSubnetGroupResponse
--
--         , responseDescribeAccountAttributes $
--             describeAccountAttributesResponse
--
--         , responseRemoveTagsFromResource $
--             removeTagsFromResourceResponse
--
--         , responseCreateDBSecurityGroup $
--             createDBSecurityGroupResponse
--
--         , responseDescribeCertificates $
--             describeCertificatesResponse
--
--         , responseCreateDBInstance $
--             createDBInstanceResponse
--
--         , responseRemoveRoleFromDBInstance $
--             removeRoleFromDBInstanceResponse
--
--         , responseDescribeEngineDefaultClusterParameters $
--             describeEngineDefaultClusterParametersResponse
--
--         , responseStartDBInstanceAutomatedBackupsReplication $
--             startDBInstanceAutomatedBackupsReplicationResponse
--
--         , responseCreateOptionGroup $
--             createOptionGroupResponse
--
--         , responseCreateCustomAvailabilityZone $
--             createCustomAvailabilityZoneResponse
--
--         , responseStopDBInstanceAutomatedBackupsReplication $
--             stopDBInstanceAutomatedBackupsReplicationResponse
--
--         , responseFailoverDBCluster $
--             failoverDBClusterResponse
--
--         , responseRemoveRoleFromDBCluster $
--             removeRoleFromDBClusterResponse
--
--         , responseDescribeDBSnapshotAttributes $
--             describeDBSnapshotAttributesResponse
--
--         , responseCreateDBCluster $
--             createDBClusterResponse
--
--         , responseApplyPendingMaintenanceAction $
--             applyPendingMaintenanceActionResponse
--
--         , responseBacktrackDBCluster $
--             dbClusterBacktrack
--
--         , responseDescribeReservedDBInstances $
--             describeReservedDBInstancesResponse
--
--         , responseDeleteDBCluster $
--             deleteDBClusterResponse
--
--         , responseDeleteOptionGroup $
--             deleteOptionGroupResponse
--
--         , responseDescribePendingMaintenanceActions $
--             describePendingMaintenanceActionsResponse
--
--         , responseDescribeDBProxyTargetGroups $
--             describeDBProxyTargetGroupsResponse
--
--         , responseModifyDBClusterParameterGroup $
--             dbClusterParameterGroupNameMessage
--
--         , responseDescribeDBClusterSnapshotAttributes $
--             describeDBClusterSnapshotAttributesResponse
--
--         , responseDescribeOptionGroups $
--             describeOptionGroupsResponse
--
--         , responseDescribeDBClusters $
--             describeDBClustersResponse
--
--         , responseDescribeEvents $
--             describeEventsResponse
--
--         , responseModifyDBProxy $
--             modifyDBProxyResponse
--
--         , responseDescribeDBLogFiles $
--             describeDBLogFilesResponse
--
--         , responseRestoreDBClusterFromS3 $
--             restoreDBClusterFromS3Response
--
--         , responseCancelExportTask $
--             exportTask
--
--         , responseDescribeGlobalClusters $
--             describeGlobalClustersResponse
--
--         , responseAddSourceIdentifierToSubscription $
--             addSourceIdentifierToSubscriptionResponse
--
--         , responseModifyEventSubscription $
--             modifyEventSubscriptionResponse
--
--         , responseModifyDBClusterEndpoint $
--             dbClusterEndpoint
--
--         , responseModifyDBClusterSnapshotAttribute $
--             modifyDBClusterSnapshotAttributeResponse
--
--         , responseDescribeDBSubnetGroups $
--             describeDBSubnetGroupsResponse
--
--         , responseModifyDBProxyTargetGroup $
--             modifyDBProxyTargetGroupResponse
--
--         , responseCreateDBParameterGroup $
--             createDBParameterGroupResponse
--
--         , responseDeleteDBClusterSnapshot $
--             deleteDBClusterSnapshotResponse
--
--         , responseRemoveFromGlobalCluster $
--             removeFromGlobalClusterResponse
--
--         , responseDescribeDBSecurityGroups $
--             describeDBSecurityGroupsResponse
--
--         , responseAddTagsToResource $
--             addTagsToResourceResponse
--
--         , responseRegisterDBProxyTargets $
--             registerDBProxyTargetsResponse
--
--         , responseDownloadDBLogFilePortion $
--             downloadDBLogFilePortionResponse
--
--         , responseModifyCurrentDBClusterCapacity $
--             modifyCurrentDBClusterCapacityResponse
--
--         , responseAddRoleToDBInstance $
--             addRoleToDBInstanceResponse
--
--         , responseDeleteDBParameterGroup $
--             deleteDBParameterGroupResponse
--
--         , responseCreateDBSnapshot $
--             createDBSnapshotResponse
--
--         , responseCreateDBSubnetGroup $
--             createDBSubnetGroupResponse
--
--         , responseDescribeOrderableDBInstanceOptions $
--             describeOrderableDBInstanceOptionsResponse
--
--         , responseDeleteDBSecurityGroup $
--             deleteDBSecurityGroupResponse
--
--         , responseRestoreDBClusterFromSnapshot $
--             restoreDBClusterFromSnapshotResponse
--
--         , responseRestoreDBInstanceFromDBSnapshot $
--             restoreDBInstanceFromDBSnapshotResponse
--
--         , responseCreateDBClusterEndpoint $
--             dbClusterEndpoint
--
--         , responseCreateEventSubscription $
--             createEventSubscriptionResponse
--
--         , responseDeleteDBSnapshot $
--             deleteDBSnapshotResponse
--
--         , responseDeleteDBClusterParameterGroup $
--             deleteDBClusterParameterGroupResponse
--
--         , responseDescribeSourceRegions $
--             describeSourceRegionsResponse
--
--         , responsePurchaseReservedDBInstancesOffering $
--             purchaseReservedDBInstancesOfferingResponse
--
--         , responseAuthorizeDBSecurityGroupIngress $
--             authorizeDBSecurityGroupIngressResponse
--
--         , responseDeleteDBProxy $
--             deleteDBProxyResponse
--
--         , responseRevokeDBSecurityGroupIngress $
--             revokeDBSecurityGroupIngressResponse
--
--         , responseModifyDBParameterGroup $
--             dbParameterGroupNameMessage
--
--         , responseDeregisterDBProxyTargets $
--             deregisterDBProxyTargetsResponse
--
--         , responseDeleteGlobalCluster $
--             deleteGlobalClusterResponse
--
--         , responsePromoteReadReplicaDBCluster $
--             promoteReadReplicaDBClusterResponse
--
--         , responseCreateGlobalCluster $
--             createGlobalClusterResponse
--
--         , responseResetDBParameterGroup $
--             dbParameterGroupNameMessage
--
--         , responseDescribeDBProxyTargets $
--             describeDBProxyTargetsResponse
--
--         , responseImportInstallationMedia $
--             installationMedia
--
--         , responseDeleteCustomAvailabilityZone $
--             deleteCustomAvailabilityZoneResponse
--
--         , responseFailoverGlobalCluster $
--             failoverGlobalClusterResponse
--
--         , responseRemoveSourceIdentifierFromSubscription $
--             removeSourceIdentifierFromSubscriptionResponse
--
--         , responseCopyDBClusterSnapshot $
--             copyDBClusterSnapshotResponse
--
--         , responseDescribeInstallationMedia $
--             describeInstallationMediaResponse
--
--         , responseCopyDBParameterGroup $
--             copyDBParameterGroupResponse
--
--         , responseRestoreDBInstanceToPointInTime $
--             restoreDBInstanceToPointInTimeResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseModifyDBSnapshot $
--             modifyDBSnapshotResponse
--
--         , responseModifyDBSubnetGroup $
--             modifyDBSubnetGroupResponse
--
--         , responseDescribeEngineDefaultParameters $
--             describeEngineDefaultParametersResponse
--
--         , responseDescribeCustomAvailabilityZones $
--             describeCustomAvailabilityZonesResponse
--
--         , responseAddRoleToDBCluster $
--             addRoleToDBClusterResponse
--
--           ]
--     ]

-- Requests

requestResetDBClusterParameterGroup :: ResetDBClusterParameterGroup -> TestTree
requestResetDBClusterParameterGroup =
  req
    "ResetDBClusterParameterGroup"
    "fixture/ResetDBClusterParameterGroup.yaml"

requestStopDBInstance :: StopDBInstance -> TestTree
requestStopDBInstance =
  req
    "StopDBInstance"
    "fixture/StopDBInstance.yaml"

requestModifyDBInstance :: ModifyDBInstance -> TestTree
requestModifyDBInstance =
  req
    "ModifyDBInstance"
    "fixture/ModifyDBInstance.yaml"

requestDescribeEventCategories :: DescribeEventCategories -> TestTree
requestDescribeEventCategories =
  req
    "DescribeEventCategories"
    "fixture/DescribeEventCategories.yaml"

requestStartDBInstance :: StartDBInstance -> TestTree
requestStartDBInstance =
  req
    "StartDBInstance"
    "fixture/StartDBInstance.yaml"

requestCopyDBClusterParameterGroup :: CopyDBClusterParameterGroup -> TestTree
requestCopyDBClusterParameterGroup =
  req
    "CopyDBClusterParameterGroup"
    "fixture/CopyDBClusterParameterGroup.yaml"

requestDescribeExportTasks :: DescribeExportTasks -> TestTree
requestDescribeExportTasks =
  req
    "DescribeExportTasks"
    "fixture/DescribeExportTasks.yaml"

requestCopyDBSnapshot :: CopyDBSnapshot -> TestTree
requestCopyDBSnapshot =
  req
    "CopyDBSnapshot"
    "fixture/CopyDBSnapshot.yaml"

requestPromoteReadReplica :: PromoteReadReplica -> TestTree
requestPromoteReadReplica =
  req
    "PromoteReadReplica"
    "fixture/PromoteReadReplica.yaml"

requestDescribeDBSnapshots :: DescribeDBSnapshots -> TestTree
requestDescribeDBSnapshots =
  req
    "DescribeDBSnapshots"
    "fixture/DescribeDBSnapshots.yaml"

requestModifyDBCluster :: ModifyDBCluster -> TestTree
requestModifyDBCluster =
  req
    "ModifyDBCluster"
    "fixture/ModifyDBCluster.yaml"

requestModifyOptionGroup :: ModifyOptionGroup -> TestTree
requestModifyOptionGroup =
  req
    "ModifyOptionGroup"
    "fixture/ModifyOptionGroup.yaml"

requestStopDBCluster :: StopDBCluster -> TestTree
requestStopDBCluster =
  req
    "StopDBCluster"
    "fixture/StopDBCluster.yaml"

requestCreateDBClusterSnapshot :: CreateDBClusterSnapshot -> TestTree
requestCreateDBClusterSnapshot =
  req
    "CreateDBClusterSnapshot"
    "fixture/CreateDBClusterSnapshot.yaml"

requestDescribeDBClusterParameterGroups :: DescribeDBClusterParameterGroups -> TestTree
requestDescribeDBClusterParameterGroups =
  req
    "DescribeDBClusterParameterGroups"
    "fixture/DescribeDBClusterParameterGroups.yaml"

requestDescribeDBEngineVersions :: DescribeDBEngineVersions -> TestTree
requestDescribeDBEngineVersions =
  req
    "DescribeDBEngineVersions"
    "fixture/DescribeDBEngineVersions.yaml"

requestStartDBCluster :: StartDBCluster -> TestTree
requestStartDBCluster =
  req
    "StartDBCluster"
    "fixture/StartDBCluster.yaml"

requestDescribeOptionGroupOptions :: DescribeOptionGroupOptions -> TestTree
requestDescribeOptionGroupOptions =
  req
    "DescribeOptionGroupOptions"
    "fixture/DescribeOptionGroupOptions.yaml"

requestDeleteInstallationMedia :: DeleteInstallationMedia -> TestTree
requestDeleteInstallationMedia =
  req
    "DeleteInstallationMedia"
    "fixture/DeleteInstallationMedia.yaml"

requestCopyOptionGroup :: CopyOptionGroup -> TestTree
requestCopyOptionGroup =
  req
    "CopyOptionGroup"
    "fixture/CopyOptionGroup.yaml"

requestDescribeDBInstanceAutomatedBackups :: DescribeDBInstanceAutomatedBackups -> TestTree
requestDescribeDBInstanceAutomatedBackups =
  req
    "DescribeDBInstanceAutomatedBackups"
    "fixture/DescribeDBInstanceAutomatedBackups.yaml"

requestModifyGlobalCluster :: ModifyGlobalCluster -> TestTree
requestModifyGlobalCluster =
  req
    "ModifyGlobalCluster"
    "fixture/ModifyGlobalCluster.yaml"

requestDescribeDBProxies :: DescribeDBProxies -> TestTree
requestDescribeDBProxies =
  req
    "DescribeDBProxies"
    "fixture/DescribeDBProxies.yaml"

requestRestoreDBClusterToPointInTime :: RestoreDBClusterToPointInTime -> TestTree
requestRestoreDBClusterToPointInTime =
  req
    "RestoreDBClusterToPointInTime"
    "fixture/RestoreDBClusterToPointInTime.yaml"

requestStopActivityStream :: StopActivityStream -> TestTree
requestStopActivityStream =
  req
    "StopActivityStream"
    "fixture/StopActivityStream.yaml"

requestCreateDBInstanceReadReplica :: CreateDBInstanceReadReplica -> TestTree
requestCreateDBInstanceReadReplica =
  req
    "CreateDBInstanceReadReplica"
    "fixture/CreateDBInstanceReadReplica.yaml"

requestDescribeValidDBInstanceModifications :: DescribeValidDBInstanceModifications -> TestTree
requestDescribeValidDBInstanceModifications =
  req
    "DescribeValidDBInstanceModifications"
    "fixture/DescribeValidDBInstanceModifications.yaml"

requestStartExportTask :: StartExportTask -> TestTree
requestStartExportTask =
  req
    "StartExportTask"
    "fixture/StartExportTask.yaml"

requestDescribeDBParameters :: DescribeDBParameters -> TestTree
requestDescribeDBParameters =
  req
    "DescribeDBParameters"
    "fixture/DescribeDBParameters.yaml"

requestDescribeDBInstances :: DescribeDBInstances -> TestTree
requestDescribeDBInstances =
  req
    "DescribeDBInstances"
    "fixture/DescribeDBInstances.yaml"

requestDescribeEventSubscriptions :: DescribeEventSubscriptions -> TestTree
requestDescribeEventSubscriptions =
  req
    "DescribeEventSubscriptions"
    "fixture/DescribeEventSubscriptions.yaml"

requestRestoreDBInstanceFromS3 :: RestoreDBInstanceFromS3 -> TestTree
requestRestoreDBInstanceFromS3 =
  req
    "RestoreDBInstanceFromS3"
    "fixture/RestoreDBInstanceFromS3.yaml"

requestStartActivityStream :: StartActivityStream -> TestTree
requestStartActivityStream =
  req
    "StartActivityStream"
    "fixture/StartActivityStream.yaml"

requestDescribeDBClusterEndpoints :: DescribeDBClusterEndpoints -> TestTree
requestDescribeDBClusterEndpoints =
  req
    "DescribeDBClusterEndpoints"
    "fixture/DescribeDBClusterEndpoints.yaml"

requestModifyCertificates :: ModifyCertificates -> TestTree
requestModifyCertificates =
  req
    "ModifyCertificates"
    "fixture/ModifyCertificates.yaml"

requestDescribeDBClusterSnapshots :: DescribeDBClusterSnapshots -> TestTree
requestDescribeDBClusterSnapshots =
  req
    "DescribeDBClusterSnapshots"
    "fixture/DescribeDBClusterSnapshots.yaml"

requestDeleteDBClusterEndpoint :: DeleteDBClusterEndpoint -> TestTree
requestDeleteDBClusterEndpoint =
  req
    "DeleteDBClusterEndpoint"
    "fixture/DeleteDBClusterEndpoint.yaml"

requestModifyDBSnapshotAttribute :: ModifyDBSnapshotAttribute -> TestTree
requestModifyDBSnapshotAttribute =
  req
    "ModifyDBSnapshotAttribute"
    "fixture/ModifyDBSnapshotAttribute.yaml"

requestDescribeReservedDBInstancesOfferings :: DescribeReservedDBInstancesOfferings -> TestTree
requestDescribeReservedDBInstancesOfferings =
  req
    "DescribeReservedDBInstancesOfferings"
    "fixture/DescribeReservedDBInstancesOfferings.yaml"

requestDeleteDBInstance :: DeleteDBInstance -> TestTree
requestDeleteDBInstance =
  req
    "DeleteDBInstance"
    "fixture/DeleteDBInstance.yaml"

requestRebootDBInstance :: RebootDBInstance -> TestTree
requestRebootDBInstance =
  req
    "RebootDBInstance"
    "fixture/RebootDBInstance.yaml"

requestDeleteEventSubscription :: DeleteEventSubscription -> TestTree
requestDeleteEventSubscription =
  req
    "DeleteEventSubscription"
    "fixture/DeleteEventSubscription.yaml"

requestDescribeDBParameterGroups :: DescribeDBParameterGroups -> TestTree
requestDescribeDBParameterGroups =
  req
    "DescribeDBParameterGroups"
    "fixture/DescribeDBParameterGroups.yaml"

requestDeleteDBInstanceAutomatedBackup :: DeleteDBInstanceAutomatedBackup -> TestTree
requestDeleteDBInstanceAutomatedBackup =
  req
    "DeleteDBInstanceAutomatedBackup"
    "fixture/DeleteDBInstanceAutomatedBackup.yaml"

requestDescribeDBClusterBacktracks :: DescribeDBClusterBacktracks -> TestTree
requestDescribeDBClusterBacktracks =
  req
    "DescribeDBClusterBacktracks"
    "fixture/DescribeDBClusterBacktracks.yaml"

requestCreateDBClusterParameterGroup :: CreateDBClusterParameterGroup -> TestTree
requestCreateDBClusterParameterGroup =
  req
    "CreateDBClusterParameterGroup"
    "fixture/CreateDBClusterParameterGroup.yaml"

requestCreateDBProxy :: CreateDBProxy -> TestTree
requestCreateDBProxy =
  req
    "CreateDBProxy"
    "fixture/CreateDBProxy.yaml"

requestDescribeDBClusterParameters :: DescribeDBClusterParameters -> TestTree
requestDescribeDBClusterParameters =
  req
    "DescribeDBClusterParameters"
    "fixture/DescribeDBClusterParameters.yaml"

requestDeleteDBSubnetGroup :: DeleteDBSubnetGroup -> TestTree
requestDeleteDBSubnetGroup =
  req
    "DeleteDBSubnetGroup"
    "fixture/DeleteDBSubnetGroup.yaml"

requestDescribeAccountAttributes :: DescribeAccountAttributes -> TestTree
requestDescribeAccountAttributes =
  req
    "DescribeAccountAttributes"
    "fixture/DescribeAccountAttributes.yaml"

requestRemoveTagsFromResource :: RemoveTagsFromResource -> TestTree
requestRemoveTagsFromResource =
  req
    "RemoveTagsFromResource"
    "fixture/RemoveTagsFromResource.yaml"

requestCreateDBSecurityGroup :: CreateDBSecurityGroup -> TestTree
requestCreateDBSecurityGroup =
  req
    "CreateDBSecurityGroup"
    "fixture/CreateDBSecurityGroup.yaml"

requestDescribeCertificates :: DescribeCertificates -> TestTree
requestDescribeCertificates =
  req
    "DescribeCertificates"
    "fixture/DescribeCertificates.yaml"

requestCreateDBInstance :: CreateDBInstance -> TestTree
requestCreateDBInstance =
  req
    "CreateDBInstance"
    "fixture/CreateDBInstance.yaml"

requestRemoveRoleFromDBInstance :: RemoveRoleFromDBInstance -> TestTree
requestRemoveRoleFromDBInstance =
  req
    "RemoveRoleFromDBInstance"
    "fixture/RemoveRoleFromDBInstance.yaml"

requestDescribeEngineDefaultClusterParameters :: DescribeEngineDefaultClusterParameters -> TestTree
requestDescribeEngineDefaultClusterParameters =
  req
    "DescribeEngineDefaultClusterParameters"
    "fixture/DescribeEngineDefaultClusterParameters.yaml"

requestStartDBInstanceAutomatedBackupsReplication :: StartDBInstanceAutomatedBackupsReplication -> TestTree
requestStartDBInstanceAutomatedBackupsReplication =
  req
    "StartDBInstanceAutomatedBackupsReplication"
    "fixture/StartDBInstanceAutomatedBackupsReplication.yaml"

requestCreateOptionGroup :: CreateOptionGroup -> TestTree
requestCreateOptionGroup =
  req
    "CreateOptionGroup"
    "fixture/CreateOptionGroup.yaml"

requestCreateCustomAvailabilityZone :: CreateCustomAvailabilityZone -> TestTree
requestCreateCustomAvailabilityZone =
  req
    "CreateCustomAvailabilityZone"
    "fixture/CreateCustomAvailabilityZone.yaml"

requestStopDBInstanceAutomatedBackupsReplication :: StopDBInstanceAutomatedBackupsReplication -> TestTree
requestStopDBInstanceAutomatedBackupsReplication =
  req
    "StopDBInstanceAutomatedBackupsReplication"
    "fixture/StopDBInstanceAutomatedBackupsReplication.yaml"

requestFailoverDBCluster :: FailoverDBCluster -> TestTree
requestFailoverDBCluster =
  req
    "FailoverDBCluster"
    "fixture/FailoverDBCluster.yaml"

requestRemoveRoleFromDBCluster :: RemoveRoleFromDBCluster -> TestTree
requestRemoveRoleFromDBCluster =
  req
    "RemoveRoleFromDBCluster"
    "fixture/RemoveRoleFromDBCluster.yaml"

requestDescribeDBSnapshotAttributes :: DescribeDBSnapshotAttributes -> TestTree
requestDescribeDBSnapshotAttributes =
  req
    "DescribeDBSnapshotAttributes"
    "fixture/DescribeDBSnapshotAttributes.yaml"

requestCreateDBCluster :: CreateDBCluster -> TestTree
requestCreateDBCluster =
  req
    "CreateDBCluster"
    "fixture/CreateDBCluster.yaml"

requestApplyPendingMaintenanceAction :: ApplyPendingMaintenanceAction -> TestTree
requestApplyPendingMaintenanceAction =
  req
    "ApplyPendingMaintenanceAction"
    "fixture/ApplyPendingMaintenanceAction.yaml"

requestBacktrackDBCluster :: BacktrackDBCluster -> TestTree
requestBacktrackDBCluster =
  req
    "BacktrackDBCluster"
    "fixture/BacktrackDBCluster.yaml"

requestDescribeReservedDBInstances :: DescribeReservedDBInstances -> TestTree
requestDescribeReservedDBInstances =
  req
    "DescribeReservedDBInstances"
    "fixture/DescribeReservedDBInstances.yaml"

requestDeleteDBCluster :: DeleteDBCluster -> TestTree
requestDeleteDBCluster =
  req
    "DeleteDBCluster"
    "fixture/DeleteDBCluster.yaml"

requestDeleteOptionGroup :: DeleteOptionGroup -> TestTree
requestDeleteOptionGroup =
  req
    "DeleteOptionGroup"
    "fixture/DeleteOptionGroup.yaml"

requestDescribePendingMaintenanceActions :: DescribePendingMaintenanceActions -> TestTree
requestDescribePendingMaintenanceActions =
  req
    "DescribePendingMaintenanceActions"
    "fixture/DescribePendingMaintenanceActions.yaml"

requestDescribeDBProxyTargetGroups :: DescribeDBProxyTargetGroups -> TestTree
requestDescribeDBProxyTargetGroups =
  req
    "DescribeDBProxyTargetGroups"
    "fixture/DescribeDBProxyTargetGroups.yaml"

requestModifyDBClusterParameterGroup :: ModifyDBClusterParameterGroup -> TestTree
requestModifyDBClusterParameterGroup =
  req
    "ModifyDBClusterParameterGroup"
    "fixture/ModifyDBClusterParameterGroup.yaml"

requestDescribeDBClusterSnapshotAttributes :: DescribeDBClusterSnapshotAttributes -> TestTree
requestDescribeDBClusterSnapshotAttributes =
  req
    "DescribeDBClusterSnapshotAttributes"
    "fixture/DescribeDBClusterSnapshotAttributes.yaml"

requestDescribeOptionGroups :: DescribeOptionGroups -> TestTree
requestDescribeOptionGroups =
  req
    "DescribeOptionGroups"
    "fixture/DescribeOptionGroups.yaml"

requestDescribeDBClusters :: DescribeDBClusters -> TestTree
requestDescribeDBClusters =
  req
    "DescribeDBClusters"
    "fixture/DescribeDBClusters.yaml"

requestDescribeEvents :: DescribeEvents -> TestTree
requestDescribeEvents =
  req
    "DescribeEvents"
    "fixture/DescribeEvents.yaml"

requestModifyDBProxy :: ModifyDBProxy -> TestTree
requestModifyDBProxy =
  req
    "ModifyDBProxy"
    "fixture/ModifyDBProxy.yaml"

requestDescribeDBLogFiles :: DescribeDBLogFiles -> TestTree
requestDescribeDBLogFiles =
  req
    "DescribeDBLogFiles"
    "fixture/DescribeDBLogFiles.yaml"

requestRestoreDBClusterFromS3 :: RestoreDBClusterFromS3 -> TestTree
requestRestoreDBClusterFromS3 =
  req
    "RestoreDBClusterFromS3"
    "fixture/RestoreDBClusterFromS3.yaml"

requestCancelExportTask :: CancelExportTask -> TestTree
requestCancelExportTask =
  req
    "CancelExportTask"
    "fixture/CancelExportTask.yaml"

requestDescribeGlobalClusters :: DescribeGlobalClusters -> TestTree
requestDescribeGlobalClusters =
  req
    "DescribeGlobalClusters"
    "fixture/DescribeGlobalClusters.yaml"

requestAddSourceIdentifierToSubscription :: AddSourceIdentifierToSubscription -> TestTree
requestAddSourceIdentifierToSubscription =
  req
    "AddSourceIdentifierToSubscription"
    "fixture/AddSourceIdentifierToSubscription.yaml"

requestModifyEventSubscription :: ModifyEventSubscription -> TestTree
requestModifyEventSubscription =
  req
    "ModifyEventSubscription"
    "fixture/ModifyEventSubscription.yaml"

requestModifyDBClusterEndpoint :: ModifyDBClusterEndpoint -> TestTree
requestModifyDBClusterEndpoint =
  req
    "ModifyDBClusterEndpoint"
    "fixture/ModifyDBClusterEndpoint.yaml"

requestModifyDBClusterSnapshotAttribute :: ModifyDBClusterSnapshotAttribute -> TestTree
requestModifyDBClusterSnapshotAttribute =
  req
    "ModifyDBClusterSnapshotAttribute"
    "fixture/ModifyDBClusterSnapshotAttribute.yaml"

requestDescribeDBSubnetGroups :: DescribeDBSubnetGroups -> TestTree
requestDescribeDBSubnetGroups =
  req
    "DescribeDBSubnetGroups"
    "fixture/DescribeDBSubnetGroups.yaml"

requestModifyDBProxyTargetGroup :: ModifyDBProxyTargetGroup -> TestTree
requestModifyDBProxyTargetGroup =
  req
    "ModifyDBProxyTargetGroup"
    "fixture/ModifyDBProxyTargetGroup.yaml"

requestCreateDBParameterGroup :: CreateDBParameterGroup -> TestTree
requestCreateDBParameterGroup =
  req
    "CreateDBParameterGroup"
    "fixture/CreateDBParameterGroup.yaml"

requestDeleteDBClusterSnapshot :: DeleteDBClusterSnapshot -> TestTree
requestDeleteDBClusterSnapshot =
  req
    "DeleteDBClusterSnapshot"
    "fixture/DeleteDBClusterSnapshot.yaml"

requestRemoveFromGlobalCluster :: RemoveFromGlobalCluster -> TestTree
requestRemoveFromGlobalCluster =
  req
    "RemoveFromGlobalCluster"
    "fixture/RemoveFromGlobalCluster.yaml"

requestDescribeDBSecurityGroups :: DescribeDBSecurityGroups -> TestTree
requestDescribeDBSecurityGroups =
  req
    "DescribeDBSecurityGroups"
    "fixture/DescribeDBSecurityGroups.yaml"

requestAddTagsToResource :: AddTagsToResource -> TestTree
requestAddTagsToResource =
  req
    "AddTagsToResource"
    "fixture/AddTagsToResource.yaml"

requestRegisterDBProxyTargets :: RegisterDBProxyTargets -> TestTree
requestRegisterDBProxyTargets =
  req
    "RegisterDBProxyTargets"
    "fixture/RegisterDBProxyTargets.yaml"

requestDownloadDBLogFilePortion :: DownloadDBLogFilePortion -> TestTree
requestDownloadDBLogFilePortion =
  req
    "DownloadDBLogFilePortion"
    "fixture/DownloadDBLogFilePortion.yaml"

requestModifyCurrentDBClusterCapacity :: ModifyCurrentDBClusterCapacity -> TestTree
requestModifyCurrentDBClusterCapacity =
  req
    "ModifyCurrentDBClusterCapacity"
    "fixture/ModifyCurrentDBClusterCapacity.yaml"

requestAddRoleToDBInstance :: AddRoleToDBInstance -> TestTree
requestAddRoleToDBInstance =
  req
    "AddRoleToDBInstance"
    "fixture/AddRoleToDBInstance.yaml"

requestDeleteDBParameterGroup :: DeleteDBParameterGroup -> TestTree
requestDeleteDBParameterGroup =
  req
    "DeleteDBParameterGroup"
    "fixture/DeleteDBParameterGroup.yaml"

requestCreateDBSnapshot :: CreateDBSnapshot -> TestTree
requestCreateDBSnapshot =
  req
    "CreateDBSnapshot"
    "fixture/CreateDBSnapshot.yaml"

requestCreateDBSubnetGroup :: CreateDBSubnetGroup -> TestTree
requestCreateDBSubnetGroup =
  req
    "CreateDBSubnetGroup"
    "fixture/CreateDBSubnetGroup.yaml"

requestDescribeOrderableDBInstanceOptions :: DescribeOrderableDBInstanceOptions -> TestTree
requestDescribeOrderableDBInstanceOptions =
  req
    "DescribeOrderableDBInstanceOptions"
    "fixture/DescribeOrderableDBInstanceOptions.yaml"

requestDeleteDBSecurityGroup :: DeleteDBSecurityGroup -> TestTree
requestDeleteDBSecurityGroup =
  req
    "DeleteDBSecurityGroup"
    "fixture/DeleteDBSecurityGroup.yaml"

requestRestoreDBClusterFromSnapshot :: RestoreDBClusterFromSnapshot -> TestTree
requestRestoreDBClusterFromSnapshot =
  req
    "RestoreDBClusterFromSnapshot"
    "fixture/RestoreDBClusterFromSnapshot.yaml"

requestRestoreDBInstanceFromDBSnapshot :: RestoreDBInstanceFromDBSnapshot -> TestTree
requestRestoreDBInstanceFromDBSnapshot =
  req
    "RestoreDBInstanceFromDBSnapshot"
    "fixture/RestoreDBInstanceFromDBSnapshot.yaml"

requestCreateDBClusterEndpoint :: CreateDBClusterEndpoint -> TestTree
requestCreateDBClusterEndpoint =
  req
    "CreateDBClusterEndpoint"
    "fixture/CreateDBClusterEndpoint.yaml"

requestCreateEventSubscription :: CreateEventSubscription -> TestTree
requestCreateEventSubscription =
  req
    "CreateEventSubscription"
    "fixture/CreateEventSubscription.yaml"

requestDeleteDBSnapshot :: DeleteDBSnapshot -> TestTree
requestDeleteDBSnapshot =
  req
    "DeleteDBSnapshot"
    "fixture/DeleteDBSnapshot.yaml"

requestDeleteDBClusterParameterGroup :: DeleteDBClusterParameterGroup -> TestTree
requestDeleteDBClusterParameterGroup =
  req
    "DeleteDBClusterParameterGroup"
    "fixture/DeleteDBClusterParameterGroup.yaml"

requestDescribeSourceRegions :: DescribeSourceRegions -> TestTree
requestDescribeSourceRegions =
  req
    "DescribeSourceRegions"
    "fixture/DescribeSourceRegions.yaml"

requestPurchaseReservedDBInstancesOffering :: PurchaseReservedDBInstancesOffering -> TestTree
requestPurchaseReservedDBInstancesOffering =
  req
    "PurchaseReservedDBInstancesOffering"
    "fixture/PurchaseReservedDBInstancesOffering.yaml"

requestAuthorizeDBSecurityGroupIngress :: AuthorizeDBSecurityGroupIngress -> TestTree
requestAuthorizeDBSecurityGroupIngress =
  req
    "AuthorizeDBSecurityGroupIngress"
    "fixture/AuthorizeDBSecurityGroupIngress.yaml"

requestDeleteDBProxy :: DeleteDBProxy -> TestTree
requestDeleteDBProxy =
  req
    "DeleteDBProxy"
    "fixture/DeleteDBProxy.yaml"

requestRevokeDBSecurityGroupIngress :: RevokeDBSecurityGroupIngress -> TestTree
requestRevokeDBSecurityGroupIngress =
  req
    "RevokeDBSecurityGroupIngress"
    "fixture/RevokeDBSecurityGroupIngress.yaml"

requestModifyDBParameterGroup :: ModifyDBParameterGroup -> TestTree
requestModifyDBParameterGroup =
  req
    "ModifyDBParameterGroup"
    "fixture/ModifyDBParameterGroup.yaml"

requestDeregisterDBProxyTargets :: DeregisterDBProxyTargets -> TestTree
requestDeregisterDBProxyTargets =
  req
    "DeregisterDBProxyTargets"
    "fixture/DeregisterDBProxyTargets.yaml"

requestDeleteGlobalCluster :: DeleteGlobalCluster -> TestTree
requestDeleteGlobalCluster =
  req
    "DeleteGlobalCluster"
    "fixture/DeleteGlobalCluster.yaml"

requestPromoteReadReplicaDBCluster :: PromoteReadReplicaDBCluster -> TestTree
requestPromoteReadReplicaDBCluster =
  req
    "PromoteReadReplicaDBCluster"
    "fixture/PromoteReadReplicaDBCluster.yaml"

requestCreateGlobalCluster :: CreateGlobalCluster -> TestTree
requestCreateGlobalCluster =
  req
    "CreateGlobalCluster"
    "fixture/CreateGlobalCluster.yaml"

requestResetDBParameterGroup :: ResetDBParameterGroup -> TestTree
requestResetDBParameterGroup =
  req
    "ResetDBParameterGroup"
    "fixture/ResetDBParameterGroup.yaml"

requestDescribeDBProxyTargets :: DescribeDBProxyTargets -> TestTree
requestDescribeDBProxyTargets =
  req
    "DescribeDBProxyTargets"
    "fixture/DescribeDBProxyTargets.yaml"

requestImportInstallationMedia :: ImportInstallationMedia -> TestTree
requestImportInstallationMedia =
  req
    "ImportInstallationMedia"
    "fixture/ImportInstallationMedia.yaml"

requestDeleteCustomAvailabilityZone :: DeleteCustomAvailabilityZone -> TestTree
requestDeleteCustomAvailabilityZone =
  req
    "DeleteCustomAvailabilityZone"
    "fixture/DeleteCustomAvailabilityZone.yaml"

requestFailoverGlobalCluster :: FailoverGlobalCluster -> TestTree
requestFailoverGlobalCluster =
  req
    "FailoverGlobalCluster"
    "fixture/FailoverGlobalCluster.yaml"

requestRemoveSourceIdentifierFromSubscription :: RemoveSourceIdentifierFromSubscription -> TestTree
requestRemoveSourceIdentifierFromSubscription =
  req
    "RemoveSourceIdentifierFromSubscription"
    "fixture/RemoveSourceIdentifierFromSubscription.yaml"

requestCopyDBClusterSnapshot :: CopyDBClusterSnapshot -> TestTree
requestCopyDBClusterSnapshot =
  req
    "CopyDBClusterSnapshot"
    "fixture/CopyDBClusterSnapshot.yaml"

requestDescribeInstallationMedia :: DescribeInstallationMedia -> TestTree
requestDescribeInstallationMedia =
  req
    "DescribeInstallationMedia"
    "fixture/DescribeInstallationMedia.yaml"

requestCopyDBParameterGroup :: CopyDBParameterGroup -> TestTree
requestCopyDBParameterGroup =
  req
    "CopyDBParameterGroup"
    "fixture/CopyDBParameterGroup.yaml"

requestRestoreDBInstanceToPointInTime :: RestoreDBInstanceToPointInTime -> TestTree
requestRestoreDBInstanceToPointInTime =
  req
    "RestoreDBInstanceToPointInTime"
    "fixture/RestoreDBInstanceToPointInTime.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestModifyDBSnapshot :: ModifyDBSnapshot -> TestTree
requestModifyDBSnapshot =
  req
    "ModifyDBSnapshot"
    "fixture/ModifyDBSnapshot.yaml"

requestModifyDBSubnetGroup :: ModifyDBSubnetGroup -> TestTree
requestModifyDBSubnetGroup =
  req
    "ModifyDBSubnetGroup"
    "fixture/ModifyDBSubnetGroup.yaml"

requestDescribeEngineDefaultParameters :: DescribeEngineDefaultParameters -> TestTree
requestDescribeEngineDefaultParameters =
  req
    "DescribeEngineDefaultParameters"
    "fixture/DescribeEngineDefaultParameters.yaml"

requestDescribeCustomAvailabilityZones :: DescribeCustomAvailabilityZones -> TestTree
requestDescribeCustomAvailabilityZones =
  req
    "DescribeCustomAvailabilityZones"
    "fixture/DescribeCustomAvailabilityZones.yaml"

requestAddRoleToDBCluster :: AddRoleToDBCluster -> TestTree
requestAddRoleToDBCluster =
  req
    "AddRoleToDBCluster"
    "fixture/AddRoleToDBCluster.yaml"

-- Responses

responseResetDBClusterParameterGroup :: DBClusterParameterGroupNameMessage -> TestTree
responseResetDBClusterParameterGroup =
  res
    "ResetDBClusterParameterGroupResponse"
    "fixture/ResetDBClusterParameterGroupResponse.proto"
    rds
    (Proxy :: Proxy ResetDBClusterParameterGroup)

responseStopDBInstance :: StopDBInstanceResponse -> TestTree
responseStopDBInstance =
  res
    "StopDBInstanceResponse"
    "fixture/StopDBInstanceResponse.proto"
    rds
    (Proxy :: Proxy StopDBInstance)

responseModifyDBInstance :: ModifyDBInstanceResponse -> TestTree
responseModifyDBInstance =
  res
    "ModifyDBInstanceResponse"
    "fixture/ModifyDBInstanceResponse.proto"
    rds
    (Proxy :: Proxy ModifyDBInstance)

responseDescribeEventCategories :: DescribeEventCategoriesResponse -> TestTree
responseDescribeEventCategories =
  res
    "DescribeEventCategoriesResponse"
    "fixture/DescribeEventCategoriesResponse.proto"
    rds
    (Proxy :: Proxy DescribeEventCategories)

responseStartDBInstance :: StartDBInstanceResponse -> TestTree
responseStartDBInstance =
  res
    "StartDBInstanceResponse"
    "fixture/StartDBInstanceResponse.proto"
    rds
    (Proxy :: Proxy StartDBInstance)

responseCopyDBClusterParameterGroup :: CopyDBClusterParameterGroupResponse -> TestTree
responseCopyDBClusterParameterGroup =
  res
    "CopyDBClusterParameterGroupResponse"
    "fixture/CopyDBClusterParameterGroupResponse.proto"
    rds
    (Proxy :: Proxy CopyDBClusterParameterGroup)

responseDescribeExportTasks :: DescribeExportTasksResponse -> TestTree
responseDescribeExportTasks =
  res
    "DescribeExportTasksResponse"
    "fixture/DescribeExportTasksResponse.proto"
    rds
    (Proxy :: Proxy DescribeExportTasks)

responseCopyDBSnapshot :: CopyDBSnapshotResponse -> TestTree
responseCopyDBSnapshot =
  res
    "CopyDBSnapshotResponse"
    "fixture/CopyDBSnapshotResponse.proto"
    rds
    (Proxy :: Proxy CopyDBSnapshot)

responsePromoteReadReplica :: PromoteReadReplicaResponse -> TestTree
responsePromoteReadReplica =
  res
    "PromoteReadReplicaResponse"
    "fixture/PromoteReadReplicaResponse.proto"
    rds
    (Proxy :: Proxy PromoteReadReplica)

responseDescribeDBSnapshots :: DescribeDBSnapshotsResponse -> TestTree
responseDescribeDBSnapshots =
  res
    "DescribeDBSnapshotsResponse"
    "fixture/DescribeDBSnapshotsResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBSnapshots)

responseModifyDBCluster :: ModifyDBClusterResponse -> TestTree
responseModifyDBCluster =
  res
    "ModifyDBClusterResponse"
    "fixture/ModifyDBClusterResponse.proto"
    rds
    (Proxy :: Proxy ModifyDBCluster)

responseModifyOptionGroup :: ModifyOptionGroupResponse -> TestTree
responseModifyOptionGroup =
  res
    "ModifyOptionGroupResponse"
    "fixture/ModifyOptionGroupResponse.proto"
    rds
    (Proxy :: Proxy ModifyOptionGroup)

responseStopDBCluster :: StopDBClusterResponse -> TestTree
responseStopDBCluster =
  res
    "StopDBClusterResponse"
    "fixture/StopDBClusterResponse.proto"
    rds
    (Proxy :: Proxy StopDBCluster)

responseCreateDBClusterSnapshot :: CreateDBClusterSnapshotResponse -> TestTree
responseCreateDBClusterSnapshot =
  res
    "CreateDBClusterSnapshotResponse"
    "fixture/CreateDBClusterSnapshotResponse.proto"
    rds
    (Proxy :: Proxy CreateDBClusterSnapshot)

responseDescribeDBClusterParameterGroups :: DescribeDBClusterParameterGroupsResponse -> TestTree
responseDescribeDBClusterParameterGroups =
  res
    "DescribeDBClusterParameterGroupsResponse"
    "fixture/DescribeDBClusterParameterGroupsResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBClusterParameterGroups)

responseDescribeDBEngineVersions :: DescribeDBEngineVersionsResponse -> TestTree
responseDescribeDBEngineVersions =
  res
    "DescribeDBEngineVersionsResponse"
    "fixture/DescribeDBEngineVersionsResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBEngineVersions)

responseStartDBCluster :: StartDBClusterResponse -> TestTree
responseStartDBCluster =
  res
    "StartDBClusterResponse"
    "fixture/StartDBClusterResponse.proto"
    rds
    (Proxy :: Proxy StartDBCluster)

responseDescribeOptionGroupOptions :: DescribeOptionGroupOptionsResponse -> TestTree
responseDescribeOptionGroupOptions =
  res
    "DescribeOptionGroupOptionsResponse"
    "fixture/DescribeOptionGroupOptionsResponse.proto"
    rds
    (Proxy :: Proxy DescribeOptionGroupOptions)

responseDeleteInstallationMedia :: InstallationMedia -> TestTree
responseDeleteInstallationMedia =
  res
    "DeleteInstallationMediaResponse"
    "fixture/DeleteInstallationMediaResponse.proto"
    rds
    (Proxy :: Proxy DeleteInstallationMedia)

responseCopyOptionGroup :: CopyOptionGroupResponse -> TestTree
responseCopyOptionGroup =
  res
    "CopyOptionGroupResponse"
    "fixture/CopyOptionGroupResponse.proto"
    rds
    (Proxy :: Proxy CopyOptionGroup)

responseDescribeDBInstanceAutomatedBackups :: DescribeDBInstanceAutomatedBackupsResponse -> TestTree
responseDescribeDBInstanceAutomatedBackups =
  res
    "DescribeDBInstanceAutomatedBackupsResponse"
    "fixture/DescribeDBInstanceAutomatedBackupsResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBInstanceAutomatedBackups)

responseModifyGlobalCluster :: ModifyGlobalClusterResponse -> TestTree
responseModifyGlobalCluster =
  res
    "ModifyGlobalClusterResponse"
    "fixture/ModifyGlobalClusterResponse.proto"
    rds
    (Proxy :: Proxy ModifyGlobalCluster)

responseDescribeDBProxies :: DescribeDBProxiesResponse -> TestTree
responseDescribeDBProxies =
  res
    "DescribeDBProxiesResponse"
    "fixture/DescribeDBProxiesResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBProxies)

responseRestoreDBClusterToPointInTime :: RestoreDBClusterToPointInTimeResponse -> TestTree
responseRestoreDBClusterToPointInTime =
  res
    "RestoreDBClusterToPointInTimeResponse"
    "fixture/RestoreDBClusterToPointInTimeResponse.proto"
    rds
    (Proxy :: Proxy RestoreDBClusterToPointInTime)

responseStopActivityStream :: StopActivityStreamResponse -> TestTree
responseStopActivityStream =
  res
    "StopActivityStreamResponse"
    "fixture/StopActivityStreamResponse.proto"
    rds
    (Proxy :: Proxy StopActivityStream)

responseCreateDBInstanceReadReplica :: CreateDBInstanceReadReplicaResponse -> TestTree
responseCreateDBInstanceReadReplica =
  res
    "CreateDBInstanceReadReplicaResponse"
    "fixture/CreateDBInstanceReadReplicaResponse.proto"
    rds
    (Proxy :: Proxy CreateDBInstanceReadReplica)

responseDescribeValidDBInstanceModifications :: DescribeValidDBInstanceModificationsResponse -> TestTree
responseDescribeValidDBInstanceModifications =
  res
    "DescribeValidDBInstanceModificationsResponse"
    "fixture/DescribeValidDBInstanceModificationsResponse.proto"
    rds
    (Proxy :: Proxy DescribeValidDBInstanceModifications)

responseStartExportTask :: ExportTask -> TestTree
responseStartExportTask =
  res
    "StartExportTaskResponse"
    "fixture/StartExportTaskResponse.proto"
    rds
    (Proxy :: Proxy StartExportTask)

responseDescribeDBParameters :: DescribeDBParametersResponse -> TestTree
responseDescribeDBParameters =
  res
    "DescribeDBParametersResponse"
    "fixture/DescribeDBParametersResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBParameters)

responseDescribeDBInstances :: DescribeDBInstancesResponse -> TestTree
responseDescribeDBInstances =
  res
    "DescribeDBInstancesResponse"
    "fixture/DescribeDBInstancesResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBInstances)

responseDescribeEventSubscriptions :: DescribeEventSubscriptionsResponse -> TestTree
responseDescribeEventSubscriptions =
  res
    "DescribeEventSubscriptionsResponse"
    "fixture/DescribeEventSubscriptionsResponse.proto"
    rds
    (Proxy :: Proxy DescribeEventSubscriptions)

responseRestoreDBInstanceFromS3 :: RestoreDBInstanceFromS3Response -> TestTree
responseRestoreDBInstanceFromS3 =
  res
    "RestoreDBInstanceFromS3Response"
    "fixture/RestoreDBInstanceFromS3Response.proto"
    rds
    (Proxy :: Proxy RestoreDBInstanceFromS3)

responseStartActivityStream :: StartActivityStreamResponse -> TestTree
responseStartActivityStream =
  res
    "StartActivityStreamResponse"
    "fixture/StartActivityStreamResponse.proto"
    rds
    (Proxy :: Proxy StartActivityStream)

responseDescribeDBClusterEndpoints :: DescribeDBClusterEndpointsResponse -> TestTree
responseDescribeDBClusterEndpoints =
  res
    "DescribeDBClusterEndpointsResponse"
    "fixture/DescribeDBClusterEndpointsResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBClusterEndpoints)

responseModifyCertificates :: ModifyCertificatesResponse -> TestTree
responseModifyCertificates =
  res
    "ModifyCertificatesResponse"
    "fixture/ModifyCertificatesResponse.proto"
    rds
    (Proxy :: Proxy ModifyCertificates)

responseDescribeDBClusterSnapshots :: DescribeDBClusterSnapshotsResponse -> TestTree
responseDescribeDBClusterSnapshots =
  res
    "DescribeDBClusterSnapshotsResponse"
    "fixture/DescribeDBClusterSnapshotsResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBClusterSnapshots)

responseDeleteDBClusterEndpoint :: DBClusterEndpoint -> TestTree
responseDeleteDBClusterEndpoint =
  res
    "DeleteDBClusterEndpointResponse"
    "fixture/DeleteDBClusterEndpointResponse.proto"
    rds
    (Proxy :: Proxy DeleteDBClusterEndpoint)

responseModifyDBSnapshotAttribute :: ModifyDBSnapshotAttributeResponse -> TestTree
responseModifyDBSnapshotAttribute =
  res
    "ModifyDBSnapshotAttributeResponse"
    "fixture/ModifyDBSnapshotAttributeResponse.proto"
    rds
    (Proxy :: Proxy ModifyDBSnapshotAttribute)

responseDescribeReservedDBInstancesOfferings :: DescribeReservedDBInstancesOfferingsResponse -> TestTree
responseDescribeReservedDBInstancesOfferings =
  res
    "DescribeReservedDBInstancesOfferingsResponse"
    "fixture/DescribeReservedDBInstancesOfferingsResponse.proto"
    rds
    (Proxy :: Proxy DescribeReservedDBInstancesOfferings)

responseDeleteDBInstance :: DeleteDBInstanceResponse -> TestTree
responseDeleteDBInstance =
  res
    "DeleteDBInstanceResponse"
    "fixture/DeleteDBInstanceResponse.proto"
    rds
    (Proxy :: Proxy DeleteDBInstance)

responseRebootDBInstance :: RebootDBInstanceResponse -> TestTree
responseRebootDBInstance =
  res
    "RebootDBInstanceResponse"
    "fixture/RebootDBInstanceResponse.proto"
    rds
    (Proxy :: Proxy RebootDBInstance)

responseDeleteEventSubscription :: DeleteEventSubscriptionResponse -> TestTree
responseDeleteEventSubscription =
  res
    "DeleteEventSubscriptionResponse"
    "fixture/DeleteEventSubscriptionResponse.proto"
    rds
    (Proxy :: Proxy DeleteEventSubscription)

responseDescribeDBParameterGroups :: DescribeDBParameterGroupsResponse -> TestTree
responseDescribeDBParameterGroups =
  res
    "DescribeDBParameterGroupsResponse"
    "fixture/DescribeDBParameterGroupsResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBParameterGroups)

responseDeleteDBInstanceAutomatedBackup :: DeleteDBInstanceAutomatedBackupResponse -> TestTree
responseDeleteDBInstanceAutomatedBackup =
  res
    "DeleteDBInstanceAutomatedBackupResponse"
    "fixture/DeleteDBInstanceAutomatedBackupResponse.proto"
    rds
    (Proxy :: Proxy DeleteDBInstanceAutomatedBackup)

responseDescribeDBClusterBacktracks :: DescribeDBClusterBacktracksResponse -> TestTree
responseDescribeDBClusterBacktracks =
  res
    "DescribeDBClusterBacktracksResponse"
    "fixture/DescribeDBClusterBacktracksResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBClusterBacktracks)

responseCreateDBClusterParameterGroup :: CreateDBClusterParameterGroupResponse -> TestTree
responseCreateDBClusterParameterGroup =
  res
    "CreateDBClusterParameterGroupResponse"
    "fixture/CreateDBClusterParameterGroupResponse.proto"
    rds
    (Proxy :: Proxy CreateDBClusterParameterGroup)

responseCreateDBProxy :: CreateDBProxyResponse -> TestTree
responseCreateDBProxy =
  res
    "CreateDBProxyResponse"
    "fixture/CreateDBProxyResponse.proto"
    rds
    (Proxy :: Proxy CreateDBProxy)

responseDescribeDBClusterParameters :: DescribeDBClusterParametersResponse -> TestTree
responseDescribeDBClusterParameters =
  res
    "DescribeDBClusterParametersResponse"
    "fixture/DescribeDBClusterParametersResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBClusterParameters)

responseDeleteDBSubnetGroup :: DeleteDBSubnetGroupResponse -> TestTree
responseDeleteDBSubnetGroup =
  res
    "DeleteDBSubnetGroupResponse"
    "fixture/DeleteDBSubnetGroupResponse.proto"
    rds
    (Proxy :: Proxy DeleteDBSubnetGroup)

responseDescribeAccountAttributes :: DescribeAccountAttributesResponse -> TestTree
responseDescribeAccountAttributes =
  res
    "DescribeAccountAttributesResponse"
    "fixture/DescribeAccountAttributesResponse.proto"
    rds
    (Proxy :: Proxy DescribeAccountAttributes)

responseRemoveTagsFromResource :: RemoveTagsFromResourceResponse -> TestTree
responseRemoveTagsFromResource =
  res
    "RemoveTagsFromResourceResponse"
    "fixture/RemoveTagsFromResourceResponse.proto"
    rds
    (Proxy :: Proxy RemoveTagsFromResource)

responseCreateDBSecurityGroup :: CreateDBSecurityGroupResponse -> TestTree
responseCreateDBSecurityGroup =
  res
    "CreateDBSecurityGroupResponse"
    "fixture/CreateDBSecurityGroupResponse.proto"
    rds
    (Proxy :: Proxy CreateDBSecurityGroup)

responseDescribeCertificates :: DescribeCertificatesResponse -> TestTree
responseDescribeCertificates =
  res
    "DescribeCertificatesResponse"
    "fixture/DescribeCertificatesResponse.proto"
    rds
    (Proxy :: Proxy DescribeCertificates)

responseCreateDBInstance :: CreateDBInstanceResponse -> TestTree
responseCreateDBInstance =
  res
    "CreateDBInstanceResponse"
    "fixture/CreateDBInstanceResponse.proto"
    rds
    (Proxy :: Proxy CreateDBInstance)

responseRemoveRoleFromDBInstance :: RemoveRoleFromDBInstanceResponse -> TestTree
responseRemoveRoleFromDBInstance =
  res
    "RemoveRoleFromDBInstanceResponse"
    "fixture/RemoveRoleFromDBInstanceResponse.proto"
    rds
    (Proxy :: Proxy RemoveRoleFromDBInstance)

responseDescribeEngineDefaultClusterParameters :: DescribeEngineDefaultClusterParametersResponse -> TestTree
responseDescribeEngineDefaultClusterParameters =
  res
    "DescribeEngineDefaultClusterParametersResponse"
    "fixture/DescribeEngineDefaultClusterParametersResponse.proto"
    rds
    (Proxy :: Proxy DescribeEngineDefaultClusterParameters)

responseStartDBInstanceAutomatedBackupsReplication :: StartDBInstanceAutomatedBackupsReplicationResponse -> TestTree
responseStartDBInstanceAutomatedBackupsReplication =
  res
    "StartDBInstanceAutomatedBackupsReplicationResponse"
    "fixture/StartDBInstanceAutomatedBackupsReplicationResponse.proto"
    rds
    (Proxy :: Proxy StartDBInstanceAutomatedBackupsReplication)

responseCreateOptionGroup :: CreateOptionGroupResponse -> TestTree
responseCreateOptionGroup =
  res
    "CreateOptionGroupResponse"
    "fixture/CreateOptionGroupResponse.proto"
    rds
    (Proxy :: Proxy CreateOptionGroup)

responseCreateCustomAvailabilityZone :: CreateCustomAvailabilityZoneResponse -> TestTree
responseCreateCustomAvailabilityZone =
  res
    "CreateCustomAvailabilityZoneResponse"
    "fixture/CreateCustomAvailabilityZoneResponse.proto"
    rds
    (Proxy :: Proxy CreateCustomAvailabilityZone)

responseStopDBInstanceAutomatedBackupsReplication :: StopDBInstanceAutomatedBackupsReplicationResponse -> TestTree
responseStopDBInstanceAutomatedBackupsReplication =
  res
    "StopDBInstanceAutomatedBackupsReplicationResponse"
    "fixture/StopDBInstanceAutomatedBackupsReplicationResponse.proto"
    rds
    (Proxy :: Proxy StopDBInstanceAutomatedBackupsReplication)

responseFailoverDBCluster :: FailoverDBClusterResponse -> TestTree
responseFailoverDBCluster =
  res
    "FailoverDBClusterResponse"
    "fixture/FailoverDBClusterResponse.proto"
    rds
    (Proxy :: Proxy FailoverDBCluster)

responseRemoveRoleFromDBCluster :: RemoveRoleFromDBClusterResponse -> TestTree
responseRemoveRoleFromDBCluster =
  res
    "RemoveRoleFromDBClusterResponse"
    "fixture/RemoveRoleFromDBClusterResponse.proto"
    rds
    (Proxy :: Proxy RemoveRoleFromDBCluster)

responseDescribeDBSnapshotAttributes :: DescribeDBSnapshotAttributesResponse -> TestTree
responseDescribeDBSnapshotAttributes =
  res
    "DescribeDBSnapshotAttributesResponse"
    "fixture/DescribeDBSnapshotAttributesResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBSnapshotAttributes)

responseCreateDBCluster :: CreateDBClusterResponse -> TestTree
responseCreateDBCluster =
  res
    "CreateDBClusterResponse"
    "fixture/CreateDBClusterResponse.proto"
    rds
    (Proxy :: Proxy CreateDBCluster)

responseApplyPendingMaintenanceAction :: ApplyPendingMaintenanceActionResponse -> TestTree
responseApplyPendingMaintenanceAction =
  res
    "ApplyPendingMaintenanceActionResponse"
    "fixture/ApplyPendingMaintenanceActionResponse.proto"
    rds
    (Proxy :: Proxy ApplyPendingMaintenanceAction)

responseBacktrackDBCluster :: DBClusterBacktrack -> TestTree
responseBacktrackDBCluster =
  res
    "BacktrackDBClusterResponse"
    "fixture/BacktrackDBClusterResponse.proto"
    rds
    (Proxy :: Proxy BacktrackDBCluster)

responseDescribeReservedDBInstances :: DescribeReservedDBInstancesResponse -> TestTree
responseDescribeReservedDBInstances =
  res
    "DescribeReservedDBInstancesResponse"
    "fixture/DescribeReservedDBInstancesResponse.proto"
    rds
    (Proxy :: Proxy DescribeReservedDBInstances)

responseDeleteDBCluster :: DeleteDBClusterResponse -> TestTree
responseDeleteDBCluster =
  res
    "DeleteDBClusterResponse"
    "fixture/DeleteDBClusterResponse.proto"
    rds
    (Proxy :: Proxy DeleteDBCluster)

responseDeleteOptionGroup :: DeleteOptionGroupResponse -> TestTree
responseDeleteOptionGroup =
  res
    "DeleteOptionGroupResponse"
    "fixture/DeleteOptionGroupResponse.proto"
    rds
    (Proxy :: Proxy DeleteOptionGroup)

responseDescribePendingMaintenanceActions :: DescribePendingMaintenanceActionsResponse -> TestTree
responseDescribePendingMaintenanceActions =
  res
    "DescribePendingMaintenanceActionsResponse"
    "fixture/DescribePendingMaintenanceActionsResponse.proto"
    rds
    (Proxy :: Proxy DescribePendingMaintenanceActions)

responseDescribeDBProxyTargetGroups :: DescribeDBProxyTargetGroupsResponse -> TestTree
responseDescribeDBProxyTargetGroups =
  res
    "DescribeDBProxyTargetGroupsResponse"
    "fixture/DescribeDBProxyTargetGroupsResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBProxyTargetGroups)

responseModifyDBClusterParameterGroup :: DBClusterParameterGroupNameMessage -> TestTree
responseModifyDBClusterParameterGroup =
  res
    "ModifyDBClusterParameterGroupResponse"
    "fixture/ModifyDBClusterParameterGroupResponse.proto"
    rds
    (Proxy :: Proxy ModifyDBClusterParameterGroup)

responseDescribeDBClusterSnapshotAttributes :: DescribeDBClusterSnapshotAttributesResponse -> TestTree
responseDescribeDBClusterSnapshotAttributes =
  res
    "DescribeDBClusterSnapshotAttributesResponse"
    "fixture/DescribeDBClusterSnapshotAttributesResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBClusterSnapshotAttributes)

responseDescribeOptionGroups :: DescribeOptionGroupsResponse -> TestTree
responseDescribeOptionGroups =
  res
    "DescribeOptionGroupsResponse"
    "fixture/DescribeOptionGroupsResponse.proto"
    rds
    (Proxy :: Proxy DescribeOptionGroups)

responseDescribeDBClusters :: DescribeDBClustersResponse -> TestTree
responseDescribeDBClusters =
  res
    "DescribeDBClustersResponse"
    "fixture/DescribeDBClustersResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBClusters)

responseDescribeEvents :: DescribeEventsResponse -> TestTree
responseDescribeEvents =
  res
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse.proto"
    rds
    (Proxy :: Proxy DescribeEvents)

responseModifyDBProxy :: ModifyDBProxyResponse -> TestTree
responseModifyDBProxy =
  res
    "ModifyDBProxyResponse"
    "fixture/ModifyDBProxyResponse.proto"
    rds
    (Proxy :: Proxy ModifyDBProxy)

responseDescribeDBLogFiles :: DescribeDBLogFilesResponse -> TestTree
responseDescribeDBLogFiles =
  res
    "DescribeDBLogFilesResponse"
    "fixture/DescribeDBLogFilesResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBLogFiles)

responseRestoreDBClusterFromS3 :: RestoreDBClusterFromS3Response -> TestTree
responseRestoreDBClusterFromS3 =
  res
    "RestoreDBClusterFromS3Response"
    "fixture/RestoreDBClusterFromS3Response.proto"
    rds
    (Proxy :: Proxy RestoreDBClusterFromS3)

responseCancelExportTask :: ExportTask -> TestTree
responseCancelExportTask =
  res
    "CancelExportTaskResponse"
    "fixture/CancelExportTaskResponse.proto"
    rds
    (Proxy :: Proxy CancelExportTask)

responseDescribeGlobalClusters :: DescribeGlobalClustersResponse -> TestTree
responseDescribeGlobalClusters =
  res
    "DescribeGlobalClustersResponse"
    "fixture/DescribeGlobalClustersResponse.proto"
    rds
    (Proxy :: Proxy DescribeGlobalClusters)

responseAddSourceIdentifierToSubscription :: AddSourceIdentifierToSubscriptionResponse -> TestTree
responseAddSourceIdentifierToSubscription =
  res
    "AddSourceIdentifierToSubscriptionResponse"
    "fixture/AddSourceIdentifierToSubscriptionResponse.proto"
    rds
    (Proxy :: Proxy AddSourceIdentifierToSubscription)

responseModifyEventSubscription :: ModifyEventSubscriptionResponse -> TestTree
responseModifyEventSubscription =
  res
    "ModifyEventSubscriptionResponse"
    "fixture/ModifyEventSubscriptionResponse.proto"
    rds
    (Proxy :: Proxy ModifyEventSubscription)

responseModifyDBClusterEndpoint :: DBClusterEndpoint -> TestTree
responseModifyDBClusterEndpoint =
  res
    "ModifyDBClusterEndpointResponse"
    "fixture/ModifyDBClusterEndpointResponse.proto"
    rds
    (Proxy :: Proxy ModifyDBClusterEndpoint)

responseModifyDBClusterSnapshotAttribute :: ModifyDBClusterSnapshotAttributeResponse -> TestTree
responseModifyDBClusterSnapshotAttribute =
  res
    "ModifyDBClusterSnapshotAttributeResponse"
    "fixture/ModifyDBClusterSnapshotAttributeResponse.proto"
    rds
    (Proxy :: Proxy ModifyDBClusterSnapshotAttribute)

responseDescribeDBSubnetGroups :: DescribeDBSubnetGroupsResponse -> TestTree
responseDescribeDBSubnetGroups =
  res
    "DescribeDBSubnetGroupsResponse"
    "fixture/DescribeDBSubnetGroupsResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBSubnetGroups)

responseModifyDBProxyTargetGroup :: ModifyDBProxyTargetGroupResponse -> TestTree
responseModifyDBProxyTargetGroup =
  res
    "ModifyDBProxyTargetGroupResponse"
    "fixture/ModifyDBProxyTargetGroupResponse.proto"
    rds
    (Proxy :: Proxy ModifyDBProxyTargetGroup)

responseCreateDBParameterGroup :: CreateDBParameterGroupResponse -> TestTree
responseCreateDBParameterGroup =
  res
    "CreateDBParameterGroupResponse"
    "fixture/CreateDBParameterGroupResponse.proto"
    rds
    (Proxy :: Proxy CreateDBParameterGroup)

responseDeleteDBClusterSnapshot :: DeleteDBClusterSnapshotResponse -> TestTree
responseDeleteDBClusterSnapshot =
  res
    "DeleteDBClusterSnapshotResponse"
    "fixture/DeleteDBClusterSnapshotResponse.proto"
    rds
    (Proxy :: Proxy DeleteDBClusterSnapshot)

responseRemoveFromGlobalCluster :: RemoveFromGlobalClusterResponse -> TestTree
responseRemoveFromGlobalCluster =
  res
    "RemoveFromGlobalClusterResponse"
    "fixture/RemoveFromGlobalClusterResponse.proto"
    rds
    (Proxy :: Proxy RemoveFromGlobalCluster)

responseDescribeDBSecurityGroups :: DescribeDBSecurityGroupsResponse -> TestTree
responseDescribeDBSecurityGroups =
  res
    "DescribeDBSecurityGroupsResponse"
    "fixture/DescribeDBSecurityGroupsResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBSecurityGroups)

responseAddTagsToResource :: AddTagsToResourceResponse -> TestTree
responseAddTagsToResource =
  res
    "AddTagsToResourceResponse"
    "fixture/AddTagsToResourceResponse.proto"
    rds
    (Proxy :: Proxy AddTagsToResource)

responseRegisterDBProxyTargets :: RegisterDBProxyTargetsResponse -> TestTree
responseRegisterDBProxyTargets =
  res
    "RegisterDBProxyTargetsResponse"
    "fixture/RegisterDBProxyTargetsResponse.proto"
    rds
    (Proxy :: Proxy RegisterDBProxyTargets)

responseDownloadDBLogFilePortion :: DownloadDBLogFilePortionResponse -> TestTree
responseDownloadDBLogFilePortion =
  res
    "DownloadDBLogFilePortionResponse"
    "fixture/DownloadDBLogFilePortionResponse.proto"
    rds
    (Proxy :: Proxy DownloadDBLogFilePortion)

responseModifyCurrentDBClusterCapacity :: ModifyCurrentDBClusterCapacityResponse -> TestTree
responseModifyCurrentDBClusterCapacity =
  res
    "ModifyCurrentDBClusterCapacityResponse"
    "fixture/ModifyCurrentDBClusterCapacityResponse.proto"
    rds
    (Proxy :: Proxy ModifyCurrentDBClusterCapacity)

responseAddRoleToDBInstance :: AddRoleToDBInstanceResponse -> TestTree
responseAddRoleToDBInstance =
  res
    "AddRoleToDBInstanceResponse"
    "fixture/AddRoleToDBInstanceResponse.proto"
    rds
    (Proxy :: Proxy AddRoleToDBInstance)

responseDeleteDBParameterGroup :: DeleteDBParameterGroupResponse -> TestTree
responseDeleteDBParameterGroup =
  res
    "DeleteDBParameterGroupResponse"
    "fixture/DeleteDBParameterGroupResponse.proto"
    rds
    (Proxy :: Proxy DeleteDBParameterGroup)

responseCreateDBSnapshot :: CreateDBSnapshotResponse -> TestTree
responseCreateDBSnapshot =
  res
    "CreateDBSnapshotResponse"
    "fixture/CreateDBSnapshotResponse.proto"
    rds
    (Proxy :: Proxy CreateDBSnapshot)

responseCreateDBSubnetGroup :: CreateDBSubnetGroupResponse -> TestTree
responseCreateDBSubnetGroup =
  res
    "CreateDBSubnetGroupResponse"
    "fixture/CreateDBSubnetGroupResponse.proto"
    rds
    (Proxy :: Proxy CreateDBSubnetGroup)

responseDescribeOrderableDBInstanceOptions :: DescribeOrderableDBInstanceOptionsResponse -> TestTree
responseDescribeOrderableDBInstanceOptions =
  res
    "DescribeOrderableDBInstanceOptionsResponse"
    "fixture/DescribeOrderableDBInstanceOptionsResponse.proto"
    rds
    (Proxy :: Proxy DescribeOrderableDBInstanceOptions)

responseDeleteDBSecurityGroup :: DeleteDBSecurityGroupResponse -> TestTree
responseDeleteDBSecurityGroup =
  res
    "DeleteDBSecurityGroupResponse"
    "fixture/DeleteDBSecurityGroupResponse.proto"
    rds
    (Proxy :: Proxy DeleteDBSecurityGroup)

responseRestoreDBClusterFromSnapshot :: RestoreDBClusterFromSnapshotResponse -> TestTree
responseRestoreDBClusterFromSnapshot =
  res
    "RestoreDBClusterFromSnapshotResponse"
    "fixture/RestoreDBClusterFromSnapshotResponse.proto"
    rds
    (Proxy :: Proxy RestoreDBClusterFromSnapshot)

responseRestoreDBInstanceFromDBSnapshot :: RestoreDBInstanceFromDBSnapshotResponse -> TestTree
responseRestoreDBInstanceFromDBSnapshot =
  res
    "RestoreDBInstanceFromDBSnapshotResponse"
    "fixture/RestoreDBInstanceFromDBSnapshotResponse.proto"
    rds
    (Proxy :: Proxy RestoreDBInstanceFromDBSnapshot)

responseCreateDBClusterEndpoint :: DBClusterEndpoint -> TestTree
responseCreateDBClusterEndpoint =
  res
    "CreateDBClusterEndpointResponse"
    "fixture/CreateDBClusterEndpointResponse.proto"
    rds
    (Proxy :: Proxy CreateDBClusterEndpoint)

responseCreateEventSubscription :: CreateEventSubscriptionResponse -> TestTree
responseCreateEventSubscription =
  res
    "CreateEventSubscriptionResponse"
    "fixture/CreateEventSubscriptionResponse.proto"
    rds
    (Proxy :: Proxy CreateEventSubscription)

responseDeleteDBSnapshot :: DeleteDBSnapshotResponse -> TestTree
responseDeleteDBSnapshot =
  res
    "DeleteDBSnapshotResponse"
    "fixture/DeleteDBSnapshotResponse.proto"
    rds
    (Proxy :: Proxy DeleteDBSnapshot)

responseDeleteDBClusterParameterGroup :: DeleteDBClusterParameterGroupResponse -> TestTree
responseDeleteDBClusterParameterGroup =
  res
    "DeleteDBClusterParameterGroupResponse"
    "fixture/DeleteDBClusterParameterGroupResponse.proto"
    rds
    (Proxy :: Proxy DeleteDBClusterParameterGroup)

responseDescribeSourceRegions :: DescribeSourceRegionsResponse -> TestTree
responseDescribeSourceRegions =
  res
    "DescribeSourceRegionsResponse"
    "fixture/DescribeSourceRegionsResponse.proto"
    rds
    (Proxy :: Proxy DescribeSourceRegions)

responsePurchaseReservedDBInstancesOffering :: PurchaseReservedDBInstancesOfferingResponse -> TestTree
responsePurchaseReservedDBInstancesOffering =
  res
    "PurchaseReservedDBInstancesOfferingResponse"
    "fixture/PurchaseReservedDBInstancesOfferingResponse.proto"
    rds
    (Proxy :: Proxy PurchaseReservedDBInstancesOffering)

responseAuthorizeDBSecurityGroupIngress :: AuthorizeDBSecurityGroupIngressResponse -> TestTree
responseAuthorizeDBSecurityGroupIngress =
  res
    "AuthorizeDBSecurityGroupIngressResponse"
    "fixture/AuthorizeDBSecurityGroupIngressResponse.proto"
    rds
    (Proxy :: Proxy AuthorizeDBSecurityGroupIngress)

responseDeleteDBProxy :: DeleteDBProxyResponse -> TestTree
responseDeleteDBProxy =
  res
    "DeleteDBProxyResponse"
    "fixture/DeleteDBProxyResponse.proto"
    rds
    (Proxy :: Proxy DeleteDBProxy)

responseRevokeDBSecurityGroupIngress :: RevokeDBSecurityGroupIngressResponse -> TestTree
responseRevokeDBSecurityGroupIngress =
  res
    "RevokeDBSecurityGroupIngressResponse"
    "fixture/RevokeDBSecurityGroupIngressResponse.proto"
    rds
    (Proxy :: Proxy RevokeDBSecurityGroupIngress)

responseModifyDBParameterGroup :: DBParameterGroupNameMessage -> TestTree
responseModifyDBParameterGroup =
  res
    "ModifyDBParameterGroupResponse"
    "fixture/ModifyDBParameterGroupResponse.proto"
    rds
    (Proxy :: Proxy ModifyDBParameterGroup)

responseDeregisterDBProxyTargets :: DeregisterDBProxyTargetsResponse -> TestTree
responseDeregisterDBProxyTargets =
  res
    "DeregisterDBProxyTargetsResponse"
    "fixture/DeregisterDBProxyTargetsResponse.proto"
    rds
    (Proxy :: Proxy DeregisterDBProxyTargets)

responseDeleteGlobalCluster :: DeleteGlobalClusterResponse -> TestTree
responseDeleteGlobalCluster =
  res
    "DeleteGlobalClusterResponse"
    "fixture/DeleteGlobalClusterResponse.proto"
    rds
    (Proxy :: Proxy DeleteGlobalCluster)

responsePromoteReadReplicaDBCluster :: PromoteReadReplicaDBClusterResponse -> TestTree
responsePromoteReadReplicaDBCluster =
  res
    "PromoteReadReplicaDBClusterResponse"
    "fixture/PromoteReadReplicaDBClusterResponse.proto"
    rds
    (Proxy :: Proxy PromoteReadReplicaDBCluster)

responseCreateGlobalCluster :: CreateGlobalClusterResponse -> TestTree
responseCreateGlobalCluster =
  res
    "CreateGlobalClusterResponse"
    "fixture/CreateGlobalClusterResponse.proto"
    rds
    (Proxy :: Proxy CreateGlobalCluster)

responseResetDBParameterGroup :: DBParameterGroupNameMessage -> TestTree
responseResetDBParameterGroup =
  res
    "ResetDBParameterGroupResponse"
    "fixture/ResetDBParameterGroupResponse.proto"
    rds
    (Proxy :: Proxy ResetDBParameterGroup)

responseDescribeDBProxyTargets :: DescribeDBProxyTargetsResponse -> TestTree
responseDescribeDBProxyTargets =
  res
    "DescribeDBProxyTargetsResponse"
    "fixture/DescribeDBProxyTargetsResponse.proto"
    rds
    (Proxy :: Proxy DescribeDBProxyTargets)

responseImportInstallationMedia :: InstallationMedia -> TestTree
responseImportInstallationMedia =
  res
    "ImportInstallationMediaResponse"
    "fixture/ImportInstallationMediaResponse.proto"
    rds
    (Proxy :: Proxy ImportInstallationMedia)

responseDeleteCustomAvailabilityZone :: DeleteCustomAvailabilityZoneResponse -> TestTree
responseDeleteCustomAvailabilityZone =
  res
    "DeleteCustomAvailabilityZoneResponse"
    "fixture/DeleteCustomAvailabilityZoneResponse.proto"
    rds
    (Proxy :: Proxy DeleteCustomAvailabilityZone)

responseFailoverGlobalCluster :: FailoverGlobalClusterResponse -> TestTree
responseFailoverGlobalCluster =
  res
    "FailoverGlobalClusterResponse"
    "fixture/FailoverGlobalClusterResponse.proto"
    rds
    (Proxy :: Proxy FailoverGlobalCluster)

responseRemoveSourceIdentifierFromSubscription :: RemoveSourceIdentifierFromSubscriptionResponse -> TestTree
responseRemoveSourceIdentifierFromSubscription =
  res
    "RemoveSourceIdentifierFromSubscriptionResponse"
    "fixture/RemoveSourceIdentifierFromSubscriptionResponse.proto"
    rds
    (Proxy :: Proxy RemoveSourceIdentifierFromSubscription)

responseCopyDBClusterSnapshot :: CopyDBClusterSnapshotResponse -> TestTree
responseCopyDBClusterSnapshot =
  res
    "CopyDBClusterSnapshotResponse"
    "fixture/CopyDBClusterSnapshotResponse.proto"
    rds
    (Proxy :: Proxy CopyDBClusterSnapshot)

responseDescribeInstallationMedia :: DescribeInstallationMediaResponse -> TestTree
responseDescribeInstallationMedia =
  res
    "DescribeInstallationMediaResponse"
    "fixture/DescribeInstallationMediaResponse.proto"
    rds
    (Proxy :: Proxy DescribeInstallationMedia)

responseCopyDBParameterGroup :: CopyDBParameterGroupResponse -> TestTree
responseCopyDBParameterGroup =
  res
    "CopyDBParameterGroupResponse"
    "fixture/CopyDBParameterGroupResponse.proto"
    rds
    (Proxy :: Proxy CopyDBParameterGroup)

responseRestoreDBInstanceToPointInTime :: RestoreDBInstanceToPointInTimeResponse -> TestTree
responseRestoreDBInstanceToPointInTime =
  res
    "RestoreDBInstanceToPointInTimeResponse"
    "fixture/RestoreDBInstanceToPointInTimeResponse.proto"
    rds
    (Proxy :: Proxy RestoreDBInstanceToPointInTime)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    rds
    (Proxy :: Proxy ListTagsForResource)

responseModifyDBSnapshot :: ModifyDBSnapshotResponse -> TestTree
responseModifyDBSnapshot =
  res
    "ModifyDBSnapshotResponse"
    "fixture/ModifyDBSnapshotResponse.proto"
    rds
    (Proxy :: Proxy ModifyDBSnapshot)

responseModifyDBSubnetGroup :: ModifyDBSubnetGroupResponse -> TestTree
responseModifyDBSubnetGroup =
  res
    "ModifyDBSubnetGroupResponse"
    "fixture/ModifyDBSubnetGroupResponse.proto"
    rds
    (Proxy :: Proxy ModifyDBSubnetGroup)

responseDescribeEngineDefaultParameters :: DescribeEngineDefaultParametersResponse -> TestTree
responseDescribeEngineDefaultParameters =
  res
    "DescribeEngineDefaultParametersResponse"
    "fixture/DescribeEngineDefaultParametersResponse.proto"
    rds
    (Proxy :: Proxy DescribeEngineDefaultParameters)

responseDescribeCustomAvailabilityZones :: DescribeCustomAvailabilityZonesResponse -> TestTree
responseDescribeCustomAvailabilityZones =
  res
    "DescribeCustomAvailabilityZonesResponse"
    "fixture/DescribeCustomAvailabilityZonesResponse.proto"
    rds
    (Proxy :: Proxy DescribeCustomAvailabilityZones)

responseAddRoleToDBCluster :: AddRoleToDBClusterResponse -> TestTree
responseAddRoleToDBCluster =
  res
    "AddRoleToDBClusterResponse"
    "fixture/AddRoleToDBClusterResponse.proto"
    rds
    (Proxy :: Proxy AddRoleToDBCluster)
