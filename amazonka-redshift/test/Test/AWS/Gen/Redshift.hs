{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Redshift
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Redshift where

import Data.Proxy
import Network.AWS.Redshift
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.Redshift.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestPurchaseReservedNodeOffering $
--             purchaseReservedNodeOffering
--
--         , requestDescribeEventCategories $
--             describeEventCategories
--
--         , requestDeleteClusterSubnetGroup $
--             deleteClusterSubnetGroup
--
--         , requestDisableLogging $
--             disableLogging
--
--         , requestDescribeHSMClientCertificates $
--             describeHSMClientCertificates
--
--         , requestModifyClusterParameterGroup $
--             modifyClusterParameterGroup
--
--         , requestCancelResize $
--             cancelResize
--
--         , requestDescribeClusters $
--             describeClusters
--
--         , requestGetClusterCredentials $
--             getClusterCredentials
--
--         , requestRevokeClusterSecurityGroupIngress $
--             revokeClusterSecurityGroupIngress
--
--         , requestCreateUsageLimit $
--             createUsageLimit
--
--         , requestDescribeTags $
--             describeTags
--
--         , requestDeleteUsageLimit $
--             deleteUsageLimit
--
--         , requestDescribeScheduledActions $
--             describeScheduledActions
--
--         , requestRotateEncryptionKey $
--             rotateEncryptionKey
--
--         , requestDescribeClusterDBRevisions $
--             describeClusterDBRevisions
--
--         , requestDescribeEventSubscriptions $
--             describeEventSubscriptions
--
--         , requestResetClusterParameterGroup $
--             resetClusterParameterGroup
--
--         , requestModifyClusterSubnetGroup $
--             modifyClusterSubnetGroup
--
--         , requestRestoreTableFromClusterSnapshot $
--             restoreTableFromClusterSnapshot
--
--         , requestDeleteEventSubscription $
--             deleteEventSubscription
--
--         , requestCreateCluster $
--             createCluster
--
--         , requestModifyClusterSnapshot $
--             modifyClusterSnapshot
--
--         , requestDeleteScheduledAction $
--             deleteScheduledAction
--
--         , requestDescribeAccountAttributes $
--             describeAccountAttributes
--
--         , requestCopyClusterSnapshot $
--             copyClusterSnapshot
--
--         , requestCreateSnapshotCopyGrant $
--             createSnapshotCopyGrant
--
--         , requestModifyClusterSnapshotSchedule $
--             modifyClusterSnapshotSchedule
--
--         , requestCreateClusterParameterGroup $
--             createClusterParameterGroup
--
--         , requestDeleteTags $
--             deleteTags
--
--         , requestEnableSnapshotCopy $
--             enableSnapshotCopy
--
--         , requestDescribeClusterSnapshots $
--             describeClusterSnapshots
--
--         , requestDescribeHSMConfigurations $
--             describeHSMConfigurations
--
--         , requestModifyUsageLimit $
--             modifyUsageLimit
--
--         , requestDescribeClusterSecurityGroups $
--             describeClusterSecurityGroups
--
--         , requestDeleteClusterParameterGroup $
--             deleteClusterParameterGroup
--
--         , requestCreateSnapshotSchedule $
--             createSnapshotSchedule
--
--         , requestDescribeNodeConfigurationOptions $
--             describeNodeConfigurationOptions
--
--         , requestDescribeClusterParameterGroups $
--             describeClusterParameterGroups
--
--         , requestDescribeLoggingStatus $
--             describeLoggingStatus
--
--         , requestDescribeEvents $
--             describeEvents
--
--         , requestCreateClusterSnapshot $
--             createClusterSnapshot
--
--         , requestCreateClusterSubnetGroup $
--             createClusterSubnetGroup
--
--         , requestModifyCluster $
--             modifyCluster
--
--         , requestGetReservedNodeExchangeOfferings $
--             getReservedNodeExchangeOfferings
--
--         , requestDescribeResize $
--             describeResize
--
--         , requestDeleteHSMConfiguration $
--             deleteHSMConfiguration
--
--         , requestDeleteClusterSnapshot $
--             deleteClusterSnapshot
--
--         , requestCreateClusterSecurityGroup $
--             createClusterSecurityGroup
--
--         , requestAcceptReservedNodeExchange $
--             acceptReservedNodeExchange
--
--         , requestModifyScheduledAction $
--             modifyScheduledAction
--
--         , requestModifyEventSubscription $
--             modifyEventSubscription
--
--         , requestDescribeSnapshotSchedules $
--             describeSnapshotSchedules
--
--         , requestDescribeTableRestoreStatus $
--             describeTableRestoreStatus
--
--         , requestModifyClusterMaintenance $
--             modifyClusterMaintenance
--
--         , requestAuthorizeClusterSecurityGroupIngress $
--             authorizeClusterSecurityGroupIngress
--
--         , requestModifyClusterDBRevision $
--             modifyClusterDBRevision
--
--         , requestDescribeStorage $
--             describeStorage
--
--         , requestDescribeSnapshotCopyGrants $
--             describeSnapshotCopyGrants
--
--         , requestBatchModifyClusterSnapshots $
--             batchModifyClusterSnapshots
--
--         , requestModifySnapshotSchedule $
--             modifySnapshotSchedule
--
--         , requestDeleteSnapshotCopyGrant $
--             deleteSnapshotCopyGrant
--
--         , requestDescribeUsageLimits $
--             describeUsageLimits
--
--         , requestDescribeDefaultClusterParameters $
--             describeDefaultClusterParameters
--
--         , requestCreateHSMClientCertificate $
--             createHSMClientCertificate
--
--         , requestDescribeClusterVersions $
--             describeClusterVersions
--
--         , requestDescribeOrderableClusterOptions $
--             describeOrderableClusterOptions
--
--         , requestDeleteHSMClientCertificate $
--             deleteHSMClientCertificate
--
--         , requestRebootCluster $
--             rebootCluster
--
--         , requestDeleteCluster $
--             deleteCluster
--
--         , requestCreateEventSubscription $
--             createEventSubscription
--
--         , requestAuthorizeSnapshotAccess $
--             authorizeSnapshotAccess
--
--         , requestResumeCluster $
--             resumeCluster
--
--         , requestDescribeClusterTracks $
--             describeClusterTracks
--
--         , requestCreateScheduledAction $
--             createScheduledAction
--
--         , requestDeleteSnapshotSchedule $
--             deleteSnapshotSchedule
--
--         , requestDescribeClusterSubnetGroups $
--             describeClusterSubnetGroups
--
--         , requestBatchDeleteClusterSnapshots $
--             batchDeleteClusterSnapshots
--
--         , requestModifyClusterIAMRoles $
--             modifyClusterIAMRoles
--
--         , requestResizeCluster $
--             resizeCluster
--
--         , requestModifySnapshotCopyRetentionPeriod $
--             modifySnapshotCopyRetentionPeriod
--
--         , requestRestoreFromClusterSnapshot $
--             restoreFromClusterSnapshot
--
--         , requestRevokeSnapshotAccess $
--             revokeSnapshotAccess
--
--         , requestPauseCluster $
--             pauseCluster
--
--         , requestDescribeClusterParameters $
--             describeClusterParameters
--
--         , requestDisableSnapshotCopy $
--             disableSnapshotCopy
--
--         , requestCreateTags $
--             createTags
--
--         , requestDescribeReservedNodeOfferings $
--             describeReservedNodeOfferings
--
--         , requestDeleteClusterSecurityGroup $
--             deleteClusterSecurityGroup
--
--         , requestEnableLogging $
--             enableLogging
--
--         , requestCreateHSMConfiguration $
--             createHSMConfiguration
--
--         , requestDescribeReservedNodes $
--             describeReservedNodes
--
--           ]

--     , testGroup "response"
--         [ responsePurchaseReservedNodeOffering $
--             purchaseReservedNodeOfferingResponse
--
--         , responseDescribeEventCategories $
--             describeEventCategoriesResponse
--
--         , responseDeleteClusterSubnetGroup $
--             deleteClusterSubnetGroupResponse
--
--         , responseDisableLogging $
--             loggingStatus
--
--         , responseDescribeHSMClientCertificates $
--             describeHSMClientCertificatesResponse
--
--         , responseModifyClusterParameterGroup $
--             clusterParameterGroupNameMessage
--
--         , responseCancelResize $
--             resizeProgressMessage
--
--         , responseDescribeClusters $
--             describeClustersResponse
--
--         , responseGetClusterCredentials $
--             getClusterCredentialsResponse
--
--         , responseRevokeClusterSecurityGroupIngress $
--             revokeClusterSecurityGroupIngressResponse
--
--         , responseCreateUsageLimit $
--             usageLimit
--
--         , responseDescribeTags $
--             describeTagsResponse
--
--         , responseDeleteUsageLimit $
--             deleteUsageLimitResponse
--
--         , responseDescribeScheduledActions $
--             describeScheduledActionsResponse
--
--         , responseRotateEncryptionKey $
--             rotateEncryptionKeyResponse
--
--         , responseDescribeClusterDBRevisions $
--             describeClusterDBRevisionsResponse
--
--         , responseDescribeEventSubscriptions $
--             describeEventSubscriptionsResponse
--
--         , responseResetClusterParameterGroup $
--             clusterParameterGroupNameMessage
--
--         , responseModifyClusterSubnetGroup $
--             modifyClusterSubnetGroupResponse
--
--         , responseRestoreTableFromClusterSnapshot $
--             restoreTableFromClusterSnapshotResponse
--
--         , responseDeleteEventSubscription $
--             deleteEventSubscriptionResponse
--
--         , responseCreateCluster $
--             createClusterResponse
--
--         , responseModifyClusterSnapshot $
--             modifyClusterSnapshotResponse
--
--         , responseDeleteScheduledAction $
--             deleteScheduledActionResponse
--
--         , responseDescribeAccountAttributes $
--             describeAccountAttributesResponse
--
--         , responseCopyClusterSnapshot $
--             copyClusterSnapshotResponse
--
--         , responseCreateSnapshotCopyGrant $
--             createSnapshotCopyGrantResponse
--
--         , responseModifyClusterSnapshotSchedule $
--             modifyClusterSnapshotScheduleResponse
--
--         , responseCreateClusterParameterGroup $
--             createClusterParameterGroupResponse
--
--         , responseDeleteTags $
--             deleteTagsResponse
--
--         , responseEnableSnapshotCopy $
--             enableSnapshotCopyResponse
--
--         , responseDescribeClusterSnapshots $
--             describeClusterSnapshotsResponse
--
--         , responseDescribeHSMConfigurations $
--             describeHSMConfigurationsResponse
--
--         , responseModifyUsageLimit $
--             usageLimit
--
--         , responseDescribeClusterSecurityGroups $
--             describeClusterSecurityGroupsResponse
--
--         , responseDeleteClusterParameterGroup $
--             deleteClusterParameterGroupResponse
--
--         , responseCreateSnapshotSchedule $
--             snapshotSchedule
--
--         , responseDescribeNodeConfigurationOptions $
--             describeNodeConfigurationOptionsResponse
--
--         , responseDescribeClusterParameterGroups $
--             describeClusterParameterGroupsResponse
--
--         , responseDescribeLoggingStatus $
--             loggingStatus
--
--         , responseDescribeEvents $
--             describeEventsResponse
--
--         , responseCreateClusterSnapshot $
--             createClusterSnapshotResponse
--
--         , responseCreateClusterSubnetGroup $
--             createClusterSubnetGroupResponse
--
--         , responseModifyCluster $
--             modifyClusterResponse
--
--         , responseGetReservedNodeExchangeOfferings $
--             getReservedNodeExchangeOfferingsResponse
--
--         , responseDescribeResize $
--             resizeProgressMessage
--
--         , responseDeleteHSMConfiguration $
--             deleteHSMConfigurationResponse
--
--         , responseDeleteClusterSnapshot $
--             deleteClusterSnapshotResponse
--
--         , responseCreateClusterSecurityGroup $
--             createClusterSecurityGroupResponse
--
--         , responseAcceptReservedNodeExchange $
--             acceptReservedNodeExchangeResponse
--
--         , responseModifyScheduledAction $
--             scheduledAction
--
--         , responseModifyEventSubscription $
--             modifyEventSubscriptionResponse
--
--         , responseDescribeSnapshotSchedules $
--             describeSnapshotSchedulesResponse
--
--         , responseDescribeTableRestoreStatus $
--             describeTableRestoreStatusResponse
--
--         , responseModifyClusterMaintenance $
--             modifyClusterMaintenanceResponse
--
--         , responseAuthorizeClusterSecurityGroupIngress $
--             authorizeClusterSecurityGroupIngressResponse
--
--         , responseModifyClusterDBRevision $
--             modifyClusterDBRevisionResponse
--
--         , responseDescribeStorage $
--             describeStorageResponse
--
--         , responseDescribeSnapshotCopyGrants $
--             describeSnapshotCopyGrantsResponse
--
--         , responseBatchModifyClusterSnapshots $
--             batchModifyClusterSnapshotsResponse
--
--         , responseModifySnapshotSchedule $
--             snapshotSchedule
--
--         , responseDeleteSnapshotCopyGrant $
--             deleteSnapshotCopyGrantResponse
--
--         , responseDescribeUsageLimits $
--             describeUsageLimitsResponse
--
--         , responseDescribeDefaultClusterParameters $
--             describeDefaultClusterParametersResponse
--
--         , responseCreateHSMClientCertificate $
--             createHSMClientCertificateResponse
--
--         , responseDescribeClusterVersions $
--             describeClusterVersionsResponse
--
--         , responseDescribeOrderableClusterOptions $
--             describeOrderableClusterOptionsResponse
--
--         , responseDeleteHSMClientCertificate $
--             deleteHSMClientCertificateResponse
--
--         , responseRebootCluster $
--             rebootClusterResponse
--
--         , responseDeleteCluster $
--             deleteClusterResponse
--
--         , responseCreateEventSubscription $
--             createEventSubscriptionResponse
--
--         , responseAuthorizeSnapshotAccess $
--             authorizeSnapshotAccessResponse
--
--         , responseResumeCluster $
--             resumeClusterResponse
--
--         , responseDescribeClusterTracks $
--             describeClusterTracksResponse
--
--         , responseCreateScheduledAction $
--             scheduledAction
--
--         , responseDeleteSnapshotSchedule $
--             deleteSnapshotScheduleResponse
--
--         , responseDescribeClusterSubnetGroups $
--             describeClusterSubnetGroupsResponse
--
--         , responseBatchDeleteClusterSnapshots $
--             batchDeleteClusterSnapshotsResponse
--
--         , responseModifyClusterIAMRoles $
--             modifyClusterIAMRolesResponse
--
--         , responseResizeCluster $
--             resizeClusterResponse
--
--         , responseModifySnapshotCopyRetentionPeriod $
--             modifySnapshotCopyRetentionPeriodResponse
--
--         , responseRestoreFromClusterSnapshot $
--             restoreFromClusterSnapshotResponse
--
--         , responseRevokeSnapshotAccess $
--             revokeSnapshotAccessResponse
--
--         , responsePauseCluster $
--             pauseClusterResponse
--
--         , responseDescribeClusterParameters $
--             describeClusterParametersResponse
--
--         , responseDisableSnapshotCopy $
--             disableSnapshotCopyResponse
--
--         , responseCreateTags $
--             createTagsResponse
--
--         , responseDescribeReservedNodeOfferings $
--             describeReservedNodeOfferingsResponse
--
--         , responseDeleteClusterSecurityGroup $
--             deleteClusterSecurityGroupResponse
--
--         , responseEnableLogging $
--             loggingStatus
--
--         , responseCreateHSMConfiguration $
--             createHSMConfigurationResponse
--
--         , responseDescribeReservedNodes $
--             describeReservedNodesResponse
--
--           ]
--     ]

-- Requests

requestPurchaseReservedNodeOffering :: PurchaseReservedNodeOffering -> TestTree
requestPurchaseReservedNodeOffering =
  req
    "PurchaseReservedNodeOffering"
    "fixture/PurchaseReservedNodeOffering.yaml"

requestDescribeEventCategories :: DescribeEventCategories -> TestTree
requestDescribeEventCategories =
  req
    "DescribeEventCategories"
    "fixture/DescribeEventCategories.yaml"

requestDeleteClusterSubnetGroup :: DeleteClusterSubnetGroup -> TestTree
requestDeleteClusterSubnetGroup =
  req
    "DeleteClusterSubnetGroup"
    "fixture/DeleteClusterSubnetGroup.yaml"

requestDisableLogging :: DisableLogging -> TestTree
requestDisableLogging =
  req
    "DisableLogging"
    "fixture/DisableLogging.yaml"

requestDescribeHSMClientCertificates :: DescribeHSMClientCertificates -> TestTree
requestDescribeHSMClientCertificates =
  req
    "DescribeHSMClientCertificates"
    "fixture/DescribeHSMClientCertificates.yaml"

requestModifyClusterParameterGroup :: ModifyClusterParameterGroup -> TestTree
requestModifyClusterParameterGroup =
  req
    "ModifyClusterParameterGroup"
    "fixture/ModifyClusterParameterGroup.yaml"

requestCancelResize :: CancelResize -> TestTree
requestCancelResize =
  req
    "CancelResize"
    "fixture/CancelResize.yaml"

requestDescribeClusters :: DescribeClusters -> TestTree
requestDescribeClusters =
  req
    "DescribeClusters"
    "fixture/DescribeClusters.yaml"

requestGetClusterCredentials :: GetClusterCredentials -> TestTree
requestGetClusterCredentials =
  req
    "GetClusterCredentials"
    "fixture/GetClusterCredentials.yaml"

requestRevokeClusterSecurityGroupIngress :: RevokeClusterSecurityGroupIngress -> TestTree
requestRevokeClusterSecurityGroupIngress =
  req
    "RevokeClusterSecurityGroupIngress"
    "fixture/RevokeClusterSecurityGroupIngress.yaml"

requestCreateUsageLimit :: CreateUsageLimit -> TestTree
requestCreateUsageLimit =
  req
    "CreateUsageLimit"
    "fixture/CreateUsageLimit.yaml"

requestDescribeTags :: DescribeTags -> TestTree
requestDescribeTags =
  req
    "DescribeTags"
    "fixture/DescribeTags.yaml"

requestDeleteUsageLimit :: DeleteUsageLimit -> TestTree
requestDeleteUsageLimit =
  req
    "DeleteUsageLimit"
    "fixture/DeleteUsageLimit.yaml"

requestDescribeScheduledActions :: DescribeScheduledActions -> TestTree
requestDescribeScheduledActions =
  req
    "DescribeScheduledActions"
    "fixture/DescribeScheduledActions.yaml"

requestRotateEncryptionKey :: RotateEncryptionKey -> TestTree
requestRotateEncryptionKey =
  req
    "RotateEncryptionKey"
    "fixture/RotateEncryptionKey.yaml"

requestDescribeClusterDBRevisions :: DescribeClusterDBRevisions -> TestTree
requestDescribeClusterDBRevisions =
  req
    "DescribeClusterDBRevisions"
    "fixture/DescribeClusterDBRevisions.yaml"

requestDescribeEventSubscriptions :: DescribeEventSubscriptions -> TestTree
requestDescribeEventSubscriptions =
  req
    "DescribeEventSubscriptions"
    "fixture/DescribeEventSubscriptions.yaml"

requestResetClusterParameterGroup :: ResetClusterParameterGroup -> TestTree
requestResetClusterParameterGroup =
  req
    "ResetClusterParameterGroup"
    "fixture/ResetClusterParameterGroup.yaml"

requestModifyClusterSubnetGroup :: ModifyClusterSubnetGroup -> TestTree
requestModifyClusterSubnetGroup =
  req
    "ModifyClusterSubnetGroup"
    "fixture/ModifyClusterSubnetGroup.yaml"

requestRestoreTableFromClusterSnapshot :: RestoreTableFromClusterSnapshot -> TestTree
requestRestoreTableFromClusterSnapshot =
  req
    "RestoreTableFromClusterSnapshot"
    "fixture/RestoreTableFromClusterSnapshot.yaml"

requestDeleteEventSubscription :: DeleteEventSubscription -> TestTree
requestDeleteEventSubscription =
  req
    "DeleteEventSubscription"
    "fixture/DeleteEventSubscription.yaml"

requestCreateCluster :: CreateCluster -> TestTree
requestCreateCluster =
  req
    "CreateCluster"
    "fixture/CreateCluster.yaml"

requestModifyClusterSnapshot :: ModifyClusterSnapshot -> TestTree
requestModifyClusterSnapshot =
  req
    "ModifyClusterSnapshot"
    "fixture/ModifyClusterSnapshot.yaml"

requestDeleteScheduledAction :: DeleteScheduledAction -> TestTree
requestDeleteScheduledAction =
  req
    "DeleteScheduledAction"
    "fixture/DeleteScheduledAction.yaml"

requestDescribeAccountAttributes :: DescribeAccountAttributes -> TestTree
requestDescribeAccountAttributes =
  req
    "DescribeAccountAttributes"
    "fixture/DescribeAccountAttributes.yaml"

requestCopyClusterSnapshot :: CopyClusterSnapshot -> TestTree
requestCopyClusterSnapshot =
  req
    "CopyClusterSnapshot"
    "fixture/CopyClusterSnapshot.yaml"

requestCreateSnapshotCopyGrant :: CreateSnapshotCopyGrant -> TestTree
requestCreateSnapshotCopyGrant =
  req
    "CreateSnapshotCopyGrant"
    "fixture/CreateSnapshotCopyGrant.yaml"

requestModifyClusterSnapshotSchedule :: ModifyClusterSnapshotSchedule -> TestTree
requestModifyClusterSnapshotSchedule =
  req
    "ModifyClusterSnapshotSchedule"
    "fixture/ModifyClusterSnapshotSchedule.yaml"

requestCreateClusterParameterGroup :: CreateClusterParameterGroup -> TestTree
requestCreateClusterParameterGroup =
  req
    "CreateClusterParameterGroup"
    "fixture/CreateClusterParameterGroup.yaml"

requestDeleteTags :: DeleteTags -> TestTree
requestDeleteTags =
  req
    "DeleteTags"
    "fixture/DeleteTags.yaml"

requestEnableSnapshotCopy :: EnableSnapshotCopy -> TestTree
requestEnableSnapshotCopy =
  req
    "EnableSnapshotCopy"
    "fixture/EnableSnapshotCopy.yaml"

requestDescribeClusterSnapshots :: DescribeClusterSnapshots -> TestTree
requestDescribeClusterSnapshots =
  req
    "DescribeClusterSnapshots"
    "fixture/DescribeClusterSnapshots.yaml"

requestDescribeHSMConfigurations :: DescribeHSMConfigurations -> TestTree
requestDescribeHSMConfigurations =
  req
    "DescribeHSMConfigurations"
    "fixture/DescribeHSMConfigurations.yaml"

requestModifyUsageLimit :: ModifyUsageLimit -> TestTree
requestModifyUsageLimit =
  req
    "ModifyUsageLimit"
    "fixture/ModifyUsageLimit.yaml"

requestDescribeClusterSecurityGroups :: DescribeClusterSecurityGroups -> TestTree
requestDescribeClusterSecurityGroups =
  req
    "DescribeClusterSecurityGroups"
    "fixture/DescribeClusterSecurityGroups.yaml"

requestDeleteClusterParameterGroup :: DeleteClusterParameterGroup -> TestTree
requestDeleteClusterParameterGroup =
  req
    "DeleteClusterParameterGroup"
    "fixture/DeleteClusterParameterGroup.yaml"

requestCreateSnapshotSchedule :: CreateSnapshotSchedule -> TestTree
requestCreateSnapshotSchedule =
  req
    "CreateSnapshotSchedule"
    "fixture/CreateSnapshotSchedule.yaml"

requestDescribeNodeConfigurationOptions :: DescribeNodeConfigurationOptions -> TestTree
requestDescribeNodeConfigurationOptions =
  req
    "DescribeNodeConfigurationOptions"
    "fixture/DescribeNodeConfigurationOptions.yaml"

requestDescribeClusterParameterGroups :: DescribeClusterParameterGroups -> TestTree
requestDescribeClusterParameterGroups =
  req
    "DescribeClusterParameterGroups"
    "fixture/DescribeClusterParameterGroups.yaml"

requestDescribeLoggingStatus :: DescribeLoggingStatus -> TestTree
requestDescribeLoggingStatus =
  req
    "DescribeLoggingStatus"
    "fixture/DescribeLoggingStatus.yaml"

requestDescribeEvents :: DescribeEvents -> TestTree
requestDescribeEvents =
  req
    "DescribeEvents"
    "fixture/DescribeEvents.yaml"

requestCreateClusterSnapshot :: CreateClusterSnapshot -> TestTree
requestCreateClusterSnapshot =
  req
    "CreateClusterSnapshot"
    "fixture/CreateClusterSnapshot.yaml"

requestCreateClusterSubnetGroup :: CreateClusterSubnetGroup -> TestTree
requestCreateClusterSubnetGroup =
  req
    "CreateClusterSubnetGroup"
    "fixture/CreateClusterSubnetGroup.yaml"

requestModifyCluster :: ModifyCluster -> TestTree
requestModifyCluster =
  req
    "ModifyCluster"
    "fixture/ModifyCluster.yaml"

requestGetReservedNodeExchangeOfferings :: GetReservedNodeExchangeOfferings -> TestTree
requestGetReservedNodeExchangeOfferings =
  req
    "GetReservedNodeExchangeOfferings"
    "fixture/GetReservedNodeExchangeOfferings.yaml"

requestDescribeResize :: DescribeResize -> TestTree
requestDescribeResize =
  req
    "DescribeResize"
    "fixture/DescribeResize.yaml"

requestDeleteHSMConfiguration :: DeleteHSMConfiguration -> TestTree
requestDeleteHSMConfiguration =
  req
    "DeleteHSMConfiguration"
    "fixture/DeleteHSMConfiguration.yaml"

requestDeleteClusterSnapshot :: DeleteClusterSnapshot -> TestTree
requestDeleteClusterSnapshot =
  req
    "DeleteClusterSnapshot"
    "fixture/DeleteClusterSnapshot.yaml"

requestCreateClusterSecurityGroup :: CreateClusterSecurityGroup -> TestTree
requestCreateClusterSecurityGroup =
  req
    "CreateClusterSecurityGroup"
    "fixture/CreateClusterSecurityGroup.yaml"

requestAcceptReservedNodeExchange :: AcceptReservedNodeExchange -> TestTree
requestAcceptReservedNodeExchange =
  req
    "AcceptReservedNodeExchange"
    "fixture/AcceptReservedNodeExchange.yaml"

requestModifyScheduledAction :: ModifyScheduledAction -> TestTree
requestModifyScheduledAction =
  req
    "ModifyScheduledAction"
    "fixture/ModifyScheduledAction.yaml"

requestModifyEventSubscription :: ModifyEventSubscription -> TestTree
requestModifyEventSubscription =
  req
    "ModifyEventSubscription"
    "fixture/ModifyEventSubscription.yaml"

requestDescribeSnapshotSchedules :: DescribeSnapshotSchedules -> TestTree
requestDescribeSnapshotSchedules =
  req
    "DescribeSnapshotSchedules"
    "fixture/DescribeSnapshotSchedules.yaml"

requestDescribeTableRestoreStatus :: DescribeTableRestoreStatus -> TestTree
requestDescribeTableRestoreStatus =
  req
    "DescribeTableRestoreStatus"
    "fixture/DescribeTableRestoreStatus.yaml"

requestModifyClusterMaintenance :: ModifyClusterMaintenance -> TestTree
requestModifyClusterMaintenance =
  req
    "ModifyClusterMaintenance"
    "fixture/ModifyClusterMaintenance.yaml"

requestAuthorizeClusterSecurityGroupIngress :: AuthorizeClusterSecurityGroupIngress -> TestTree
requestAuthorizeClusterSecurityGroupIngress =
  req
    "AuthorizeClusterSecurityGroupIngress"
    "fixture/AuthorizeClusterSecurityGroupIngress.yaml"

requestModifyClusterDBRevision :: ModifyClusterDBRevision -> TestTree
requestModifyClusterDBRevision =
  req
    "ModifyClusterDBRevision"
    "fixture/ModifyClusterDBRevision.yaml"

requestDescribeStorage :: DescribeStorage -> TestTree
requestDescribeStorage =
  req
    "DescribeStorage"
    "fixture/DescribeStorage.yaml"

requestDescribeSnapshotCopyGrants :: DescribeSnapshotCopyGrants -> TestTree
requestDescribeSnapshotCopyGrants =
  req
    "DescribeSnapshotCopyGrants"
    "fixture/DescribeSnapshotCopyGrants.yaml"

requestBatchModifyClusterSnapshots :: BatchModifyClusterSnapshots -> TestTree
requestBatchModifyClusterSnapshots =
  req
    "BatchModifyClusterSnapshots"
    "fixture/BatchModifyClusterSnapshots.yaml"

requestModifySnapshotSchedule :: ModifySnapshotSchedule -> TestTree
requestModifySnapshotSchedule =
  req
    "ModifySnapshotSchedule"
    "fixture/ModifySnapshotSchedule.yaml"

requestDeleteSnapshotCopyGrant :: DeleteSnapshotCopyGrant -> TestTree
requestDeleteSnapshotCopyGrant =
  req
    "DeleteSnapshotCopyGrant"
    "fixture/DeleteSnapshotCopyGrant.yaml"

requestDescribeUsageLimits :: DescribeUsageLimits -> TestTree
requestDescribeUsageLimits =
  req
    "DescribeUsageLimits"
    "fixture/DescribeUsageLimits.yaml"

requestDescribeDefaultClusterParameters :: DescribeDefaultClusterParameters -> TestTree
requestDescribeDefaultClusterParameters =
  req
    "DescribeDefaultClusterParameters"
    "fixture/DescribeDefaultClusterParameters.yaml"

requestCreateHSMClientCertificate :: CreateHSMClientCertificate -> TestTree
requestCreateHSMClientCertificate =
  req
    "CreateHSMClientCertificate"
    "fixture/CreateHSMClientCertificate.yaml"

requestDescribeClusterVersions :: DescribeClusterVersions -> TestTree
requestDescribeClusterVersions =
  req
    "DescribeClusterVersions"
    "fixture/DescribeClusterVersions.yaml"

requestDescribeOrderableClusterOptions :: DescribeOrderableClusterOptions -> TestTree
requestDescribeOrderableClusterOptions =
  req
    "DescribeOrderableClusterOptions"
    "fixture/DescribeOrderableClusterOptions.yaml"

requestDeleteHSMClientCertificate :: DeleteHSMClientCertificate -> TestTree
requestDeleteHSMClientCertificate =
  req
    "DeleteHSMClientCertificate"
    "fixture/DeleteHSMClientCertificate.yaml"

requestRebootCluster :: RebootCluster -> TestTree
requestRebootCluster =
  req
    "RebootCluster"
    "fixture/RebootCluster.yaml"

requestDeleteCluster :: DeleteCluster -> TestTree
requestDeleteCluster =
  req
    "DeleteCluster"
    "fixture/DeleteCluster.yaml"

requestCreateEventSubscription :: CreateEventSubscription -> TestTree
requestCreateEventSubscription =
  req
    "CreateEventSubscription"
    "fixture/CreateEventSubscription.yaml"

requestAuthorizeSnapshotAccess :: AuthorizeSnapshotAccess -> TestTree
requestAuthorizeSnapshotAccess =
  req
    "AuthorizeSnapshotAccess"
    "fixture/AuthorizeSnapshotAccess.yaml"

requestResumeCluster :: ResumeCluster -> TestTree
requestResumeCluster =
  req
    "ResumeCluster"
    "fixture/ResumeCluster.yaml"

requestDescribeClusterTracks :: DescribeClusterTracks -> TestTree
requestDescribeClusterTracks =
  req
    "DescribeClusterTracks"
    "fixture/DescribeClusterTracks.yaml"

requestCreateScheduledAction :: CreateScheduledAction -> TestTree
requestCreateScheduledAction =
  req
    "CreateScheduledAction"
    "fixture/CreateScheduledAction.yaml"

requestDeleteSnapshotSchedule :: DeleteSnapshotSchedule -> TestTree
requestDeleteSnapshotSchedule =
  req
    "DeleteSnapshotSchedule"
    "fixture/DeleteSnapshotSchedule.yaml"

requestDescribeClusterSubnetGroups :: DescribeClusterSubnetGroups -> TestTree
requestDescribeClusterSubnetGroups =
  req
    "DescribeClusterSubnetGroups"
    "fixture/DescribeClusterSubnetGroups.yaml"

requestBatchDeleteClusterSnapshots :: BatchDeleteClusterSnapshots -> TestTree
requestBatchDeleteClusterSnapshots =
  req
    "BatchDeleteClusterSnapshots"
    "fixture/BatchDeleteClusterSnapshots.yaml"

requestModifyClusterIAMRoles :: ModifyClusterIAMRoles -> TestTree
requestModifyClusterIAMRoles =
  req
    "ModifyClusterIAMRoles"
    "fixture/ModifyClusterIAMRoles.yaml"

requestResizeCluster :: ResizeCluster -> TestTree
requestResizeCluster =
  req
    "ResizeCluster"
    "fixture/ResizeCluster.yaml"

requestModifySnapshotCopyRetentionPeriod :: ModifySnapshotCopyRetentionPeriod -> TestTree
requestModifySnapshotCopyRetentionPeriod =
  req
    "ModifySnapshotCopyRetentionPeriod"
    "fixture/ModifySnapshotCopyRetentionPeriod.yaml"

requestRestoreFromClusterSnapshot :: RestoreFromClusterSnapshot -> TestTree
requestRestoreFromClusterSnapshot =
  req
    "RestoreFromClusterSnapshot"
    "fixture/RestoreFromClusterSnapshot.yaml"

requestRevokeSnapshotAccess :: RevokeSnapshotAccess -> TestTree
requestRevokeSnapshotAccess =
  req
    "RevokeSnapshotAccess"
    "fixture/RevokeSnapshotAccess.yaml"

requestPauseCluster :: PauseCluster -> TestTree
requestPauseCluster =
  req
    "PauseCluster"
    "fixture/PauseCluster.yaml"

requestDescribeClusterParameters :: DescribeClusterParameters -> TestTree
requestDescribeClusterParameters =
  req
    "DescribeClusterParameters"
    "fixture/DescribeClusterParameters.yaml"

requestDisableSnapshotCopy :: DisableSnapshotCopy -> TestTree
requestDisableSnapshotCopy =
  req
    "DisableSnapshotCopy"
    "fixture/DisableSnapshotCopy.yaml"

requestCreateTags :: CreateTags -> TestTree
requestCreateTags =
  req
    "CreateTags"
    "fixture/CreateTags.yaml"

requestDescribeReservedNodeOfferings :: DescribeReservedNodeOfferings -> TestTree
requestDescribeReservedNodeOfferings =
  req
    "DescribeReservedNodeOfferings"
    "fixture/DescribeReservedNodeOfferings.yaml"

requestDeleteClusterSecurityGroup :: DeleteClusterSecurityGroup -> TestTree
requestDeleteClusterSecurityGroup =
  req
    "DeleteClusterSecurityGroup"
    "fixture/DeleteClusterSecurityGroup.yaml"

requestEnableLogging :: EnableLogging -> TestTree
requestEnableLogging =
  req
    "EnableLogging"
    "fixture/EnableLogging.yaml"

requestCreateHSMConfiguration :: CreateHSMConfiguration -> TestTree
requestCreateHSMConfiguration =
  req
    "CreateHSMConfiguration"
    "fixture/CreateHSMConfiguration.yaml"

requestDescribeReservedNodes :: DescribeReservedNodes -> TestTree
requestDescribeReservedNodes =
  req
    "DescribeReservedNodes"
    "fixture/DescribeReservedNodes.yaml"

-- Responses

responsePurchaseReservedNodeOffering :: PurchaseReservedNodeOfferingResponse -> TestTree
responsePurchaseReservedNodeOffering =
  res
    "PurchaseReservedNodeOfferingResponse"
    "fixture/PurchaseReservedNodeOfferingResponse.proto"
    redshift
    (Proxy :: Proxy PurchaseReservedNodeOffering)

responseDescribeEventCategories :: DescribeEventCategoriesResponse -> TestTree
responseDescribeEventCategories =
  res
    "DescribeEventCategoriesResponse"
    "fixture/DescribeEventCategoriesResponse.proto"
    redshift
    (Proxy :: Proxy DescribeEventCategories)

responseDeleteClusterSubnetGroup :: DeleteClusterSubnetGroupResponse -> TestTree
responseDeleteClusterSubnetGroup =
  res
    "DeleteClusterSubnetGroupResponse"
    "fixture/DeleteClusterSubnetGroupResponse.proto"
    redshift
    (Proxy :: Proxy DeleteClusterSubnetGroup)

responseDisableLogging :: LoggingStatus -> TestTree
responseDisableLogging =
  res
    "DisableLoggingResponse"
    "fixture/DisableLoggingResponse.proto"
    redshift
    (Proxy :: Proxy DisableLogging)

responseDescribeHSMClientCertificates :: DescribeHSMClientCertificatesResponse -> TestTree
responseDescribeHSMClientCertificates =
  res
    "DescribeHSMClientCertificatesResponse"
    "fixture/DescribeHSMClientCertificatesResponse.proto"
    redshift
    (Proxy :: Proxy DescribeHSMClientCertificates)

responseModifyClusterParameterGroup :: ClusterParameterGroupNameMessage -> TestTree
responseModifyClusterParameterGroup =
  res
    "ModifyClusterParameterGroupResponse"
    "fixture/ModifyClusterParameterGroupResponse.proto"
    redshift
    (Proxy :: Proxy ModifyClusterParameterGroup)

responseCancelResize :: ResizeProgressMessage -> TestTree
responseCancelResize =
  res
    "CancelResizeResponse"
    "fixture/CancelResizeResponse.proto"
    redshift
    (Proxy :: Proxy CancelResize)

responseDescribeClusters :: DescribeClustersResponse -> TestTree
responseDescribeClusters =
  res
    "DescribeClustersResponse"
    "fixture/DescribeClustersResponse.proto"
    redshift
    (Proxy :: Proxy DescribeClusters)

responseGetClusterCredentials :: GetClusterCredentialsResponse -> TestTree
responseGetClusterCredentials =
  res
    "GetClusterCredentialsResponse"
    "fixture/GetClusterCredentialsResponse.proto"
    redshift
    (Proxy :: Proxy GetClusterCredentials)

responseRevokeClusterSecurityGroupIngress :: RevokeClusterSecurityGroupIngressResponse -> TestTree
responseRevokeClusterSecurityGroupIngress =
  res
    "RevokeClusterSecurityGroupIngressResponse"
    "fixture/RevokeClusterSecurityGroupIngressResponse.proto"
    redshift
    (Proxy :: Proxy RevokeClusterSecurityGroupIngress)

responseCreateUsageLimit :: UsageLimit -> TestTree
responseCreateUsageLimit =
  res
    "CreateUsageLimitResponse"
    "fixture/CreateUsageLimitResponse.proto"
    redshift
    (Proxy :: Proxy CreateUsageLimit)

responseDescribeTags :: DescribeTagsResponse -> TestTree
responseDescribeTags =
  res
    "DescribeTagsResponse"
    "fixture/DescribeTagsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeTags)

responseDeleteUsageLimit :: DeleteUsageLimitResponse -> TestTree
responseDeleteUsageLimit =
  res
    "DeleteUsageLimitResponse"
    "fixture/DeleteUsageLimitResponse.proto"
    redshift
    (Proxy :: Proxy DeleteUsageLimit)

responseDescribeScheduledActions :: DescribeScheduledActionsResponse -> TestTree
responseDescribeScheduledActions =
  res
    "DescribeScheduledActionsResponse"
    "fixture/DescribeScheduledActionsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeScheduledActions)

responseRotateEncryptionKey :: RotateEncryptionKeyResponse -> TestTree
responseRotateEncryptionKey =
  res
    "RotateEncryptionKeyResponse"
    "fixture/RotateEncryptionKeyResponse.proto"
    redshift
    (Proxy :: Proxy RotateEncryptionKey)

responseDescribeClusterDBRevisions :: DescribeClusterDBRevisionsResponse -> TestTree
responseDescribeClusterDBRevisions =
  res
    "DescribeClusterDBRevisionsResponse"
    "fixture/DescribeClusterDBRevisionsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeClusterDBRevisions)

responseDescribeEventSubscriptions :: DescribeEventSubscriptionsResponse -> TestTree
responseDescribeEventSubscriptions =
  res
    "DescribeEventSubscriptionsResponse"
    "fixture/DescribeEventSubscriptionsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeEventSubscriptions)

responseResetClusterParameterGroup :: ClusterParameterGroupNameMessage -> TestTree
responseResetClusterParameterGroup =
  res
    "ResetClusterParameterGroupResponse"
    "fixture/ResetClusterParameterGroupResponse.proto"
    redshift
    (Proxy :: Proxy ResetClusterParameterGroup)

responseModifyClusterSubnetGroup :: ModifyClusterSubnetGroupResponse -> TestTree
responseModifyClusterSubnetGroup =
  res
    "ModifyClusterSubnetGroupResponse"
    "fixture/ModifyClusterSubnetGroupResponse.proto"
    redshift
    (Proxy :: Proxy ModifyClusterSubnetGroup)

responseRestoreTableFromClusterSnapshot :: RestoreTableFromClusterSnapshotResponse -> TestTree
responseRestoreTableFromClusterSnapshot =
  res
    "RestoreTableFromClusterSnapshotResponse"
    "fixture/RestoreTableFromClusterSnapshotResponse.proto"
    redshift
    (Proxy :: Proxy RestoreTableFromClusterSnapshot)

responseDeleteEventSubscription :: DeleteEventSubscriptionResponse -> TestTree
responseDeleteEventSubscription =
  res
    "DeleteEventSubscriptionResponse"
    "fixture/DeleteEventSubscriptionResponse.proto"
    redshift
    (Proxy :: Proxy DeleteEventSubscription)

responseCreateCluster :: CreateClusterResponse -> TestTree
responseCreateCluster =
  res
    "CreateClusterResponse"
    "fixture/CreateClusterResponse.proto"
    redshift
    (Proxy :: Proxy CreateCluster)

responseModifyClusterSnapshot :: ModifyClusterSnapshotResponse -> TestTree
responseModifyClusterSnapshot =
  res
    "ModifyClusterSnapshotResponse"
    "fixture/ModifyClusterSnapshotResponse.proto"
    redshift
    (Proxy :: Proxy ModifyClusterSnapshot)

responseDeleteScheduledAction :: DeleteScheduledActionResponse -> TestTree
responseDeleteScheduledAction =
  res
    "DeleteScheduledActionResponse"
    "fixture/DeleteScheduledActionResponse.proto"
    redshift
    (Proxy :: Proxy DeleteScheduledAction)

responseDescribeAccountAttributes :: DescribeAccountAttributesResponse -> TestTree
responseDescribeAccountAttributes =
  res
    "DescribeAccountAttributesResponse"
    "fixture/DescribeAccountAttributesResponse.proto"
    redshift
    (Proxy :: Proxy DescribeAccountAttributes)

responseCopyClusterSnapshot :: CopyClusterSnapshotResponse -> TestTree
responseCopyClusterSnapshot =
  res
    "CopyClusterSnapshotResponse"
    "fixture/CopyClusterSnapshotResponse.proto"
    redshift
    (Proxy :: Proxy CopyClusterSnapshot)

responseCreateSnapshotCopyGrant :: CreateSnapshotCopyGrantResponse -> TestTree
responseCreateSnapshotCopyGrant =
  res
    "CreateSnapshotCopyGrantResponse"
    "fixture/CreateSnapshotCopyGrantResponse.proto"
    redshift
    (Proxy :: Proxy CreateSnapshotCopyGrant)

responseModifyClusterSnapshotSchedule :: ModifyClusterSnapshotScheduleResponse -> TestTree
responseModifyClusterSnapshotSchedule =
  res
    "ModifyClusterSnapshotScheduleResponse"
    "fixture/ModifyClusterSnapshotScheduleResponse.proto"
    redshift
    (Proxy :: Proxy ModifyClusterSnapshotSchedule)

responseCreateClusterParameterGroup :: CreateClusterParameterGroupResponse -> TestTree
responseCreateClusterParameterGroup =
  res
    "CreateClusterParameterGroupResponse"
    "fixture/CreateClusterParameterGroupResponse.proto"
    redshift
    (Proxy :: Proxy CreateClusterParameterGroup)

responseDeleteTags :: DeleteTagsResponse -> TestTree
responseDeleteTags =
  res
    "DeleteTagsResponse"
    "fixture/DeleteTagsResponse.proto"
    redshift
    (Proxy :: Proxy DeleteTags)

responseEnableSnapshotCopy :: EnableSnapshotCopyResponse -> TestTree
responseEnableSnapshotCopy =
  res
    "EnableSnapshotCopyResponse"
    "fixture/EnableSnapshotCopyResponse.proto"
    redshift
    (Proxy :: Proxy EnableSnapshotCopy)

responseDescribeClusterSnapshots :: DescribeClusterSnapshotsResponse -> TestTree
responseDescribeClusterSnapshots =
  res
    "DescribeClusterSnapshotsResponse"
    "fixture/DescribeClusterSnapshotsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeClusterSnapshots)

responseDescribeHSMConfigurations :: DescribeHSMConfigurationsResponse -> TestTree
responseDescribeHSMConfigurations =
  res
    "DescribeHSMConfigurationsResponse"
    "fixture/DescribeHSMConfigurationsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeHSMConfigurations)

responseModifyUsageLimit :: UsageLimit -> TestTree
responseModifyUsageLimit =
  res
    "ModifyUsageLimitResponse"
    "fixture/ModifyUsageLimitResponse.proto"
    redshift
    (Proxy :: Proxy ModifyUsageLimit)

responseDescribeClusterSecurityGroups :: DescribeClusterSecurityGroupsResponse -> TestTree
responseDescribeClusterSecurityGroups =
  res
    "DescribeClusterSecurityGroupsResponse"
    "fixture/DescribeClusterSecurityGroupsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeClusterSecurityGroups)

responseDeleteClusterParameterGroup :: DeleteClusterParameterGroupResponse -> TestTree
responseDeleteClusterParameterGroup =
  res
    "DeleteClusterParameterGroupResponse"
    "fixture/DeleteClusterParameterGroupResponse.proto"
    redshift
    (Proxy :: Proxy DeleteClusterParameterGroup)

responseCreateSnapshotSchedule :: SnapshotSchedule -> TestTree
responseCreateSnapshotSchedule =
  res
    "CreateSnapshotScheduleResponse"
    "fixture/CreateSnapshotScheduleResponse.proto"
    redshift
    (Proxy :: Proxy CreateSnapshotSchedule)

responseDescribeNodeConfigurationOptions :: DescribeNodeConfigurationOptionsResponse -> TestTree
responseDescribeNodeConfigurationOptions =
  res
    "DescribeNodeConfigurationOptionsResponse"
    "fixture/DescribeNodeConfigurationOptionsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeNodeConfigurationOptions)

responseDescribeClusterParameterGroups :: DescribeClusterParameterGroupsResponse -> TestTree
responseDescribeClusterParameterGroups =
  res
    "DescribeClusterParameterGroupsResponse"
    "fixture/DescribeClusterParameterGroupsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeClusterParameterGroups)

responseDescribeLoggingStatus :: LoggingStatus -> TestTree
responseDescribeLoggingStatus =
  res
    "DescribeLoggingStatusResponse"
    "fixture/DescribeLoggingStatusResponse.proto"
    redshift
    (Proxy :: Proxy DescribeLoggingStatus)

responseDescribeEvents :: DescribeEventsResponse -> TestTree
responseDescribeEvents =
  res
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeEvents)

responseCreateClusterSnapshot :: CreateClusterSnapshotResponse -> TestTree
responseCreateClusterSnapshot =
  res
    "CreateClusterSnapshotResponse"
    "fixture/CreateClusterSnapshotResponse.proto"
    redshift
    (Proxy :: Proxy CreateClusterSnapshot)

responseCreateClusterSubnetGroup :: CreateClusterSubnetGroupResponse -> TestTree
responseCreateClusterSubnetGroup =
  res
    "CreateClusterSubnetGroupResponse"
    "fixture/CreateClusterSubnetGroupResponse.proto"
    redshift
    (Proxy :: Proxy CreateClusterSubnetGroup)

responseModifyCluster :: ModifyClusterResponse -> TestTree
responseModifyCluster =
  res
    "ModifyClusterResponse"
    "fixture/ModifyClusterResponse.proto"
    redshift
    (Proxy :: Proxy ModifyCluster)

responseGetReservedNodeExchangeOfferings :: GetReservedNodeExchangeOfferingsResponse -> TestTree
responseGetReservedNodeExchangeOfferings =
  res
    "GetReservedNodeExchangeOfferingsResponse"
    "fixture/GetReservedNodeExchangeOfferingsResponse.proto"
    redshift
    (Proxy :: Proxy GetReservedNodeExchangeOfferings)

responseDescribeResize :: ResizeProgressMessage -> TestTree
responseDescribeResize =
  res
    "DescribeResizeResponse"
    "fixture/DescribeResizeResponse.proto"
    redshift
    (Proxy :: Proxy DescribeResize)

responseDeleteHSMConfiguration :: DeleteHSMConfigurationResponse -> TestTree
responseDeleteHSMConfiguration =
  res
    "DeleteHSMConfigurationResponse"
    "fixture/DeleteHSMConfigurationResponse.proto"
    redshift
    (Proxy :: Proxy DeleteHSMConfiguration)

responseDeleteClusterSnapshot :: DeleteClusterSnapshotResponse -> TestTree
responseDeleteClusterSnapshot =
  res
    "DeleteClusterSnapshotResponse"
    "fixture/DeleteClusterSnapshotResponse.proto"
    redshift
    (Proxy :: Proxy DeleteClusterSnapshot)

responseCreateClusterSecurityGroup :: CreateClusterSecurityGroupResponse -> TestTree
responseCreateClusterSecurityGroup =
  res
    "CreateClusterSecurityGroupResponse"
    "fixture/CreateClusterSecurityGroupResponse.proto"
    redshift
    (Proxy :: Proxy CreateClusterSecurityGroup)

responseAcceptReservedNodeExchange :: AcceptReservedNodeExchangeResponse -> TestTree
responseAcceptReservedNodeExchange =
  res
    "AcceptReservedNodeExchangeResponse"
    "fixture/AcceptReservedNodeExchangeResponse.proto"
    redshift
    (Proxy :: Proxy AcceptReservedNodeExchange)

responseModifyScheduledAction :: ScheduledAction -> TestTree
responseModifyScheduledAction =
  res
    "ModifyScheduledActionResponse"
    "fixture/ModifyScheduledActionResponse.proto"
    redshift
    (Proxy :: Proxy ModifyScheduledAction)

responseModifyEventSubscription :: ModifyEventSubscriptionResponse -> TestTree
responseModifyEventSubscription =
  res
    "ModifyEventSubscriptionResponse"
    "fixture/ModifyEventSubscriptionResponse.proto"
    redshift
    (Proxy :: Proxy ModifyEventSubscription)

responseDescribeSnapshotSchedules :: DescribeSnapshotSchedulesResponse -> TestTree
responseDescribeSnapshotSchedules =
  res
    "DescribeSnapshotSchedulesResponse"
    "fixture/DescribeSnapshotSchedulesResponse.proto"
    redshift
    (Proxy :: Proxy DescribeSnapshotSchedules)

responseDescribeTableRestoreStatus :: DescribeTableRestoreStatusResponse -> TestTree
responseDescribeTableRestoreStatus =
  res
    "DescribeTableRestoreStatusResponse"
    "fixture/DescribeTableRestoreStatusResponse.proto"
    redshift
    (Proxy :: Proxy DescribeTableRestoreStatus)

responseModifyClusterMaintenance :: ModifyClusterMaintenanceResponse -> TestTree
responseModifyClusterMaintenance =
  res
    "ModifyClusterMaintenanceResponse"
    "fixture/ModifyClusterMaintenanceResponse.proto"
    redshift
    (Proxy :: Proxy ModifyClusterMaintenance)

responseAuthorizeClusterSecurityGroupIngress :: AuthorizeClusterSecurityGroupIngressResponse -> TestTree
responseAuthorizeClusterSecurityGroupIngress =
  res
    "AuthorizeClusterSecurityGroupIngressResponse"
    "fixture/AuthorizeClusterSecurityGroupIngressResponse.proto"
    redshift
    (Proxy :: Proxy AuthorizeClusterSecurityGroupIngress)

responseModifyClusterDBRevision :: ModifyClusterDBRevisionResponse -> TestTree
responseModifyClusterDBRevision =
  res
    "ModifyClusterDBRevisionResponse"
    "fixture/ModifyClusterDBRevisionResponse.proto"
    redshift
    (Proxy :: Proxy ModifyClusterDBRevision)

responseDescribeStorage :: DescribeStorageResponse -> TestTree
responseDescribeStorage =
  res
    "DescribeStorageResponse"
    "fixture/DescribeStorageResponse.proto"
    redshift
    (Proxy :: Proxy DescribeStorage)

responseDescribeSnapshotCopyGrants :: DescribeSnapshotCopyGrantsResponse -> TestTree
responseDescribeSnapshotCopyGrants =
  res
    "DescribeSnapshotCopyGrantsResponse"
    "fixture/DescribeSnapshotCopyGrantsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeSnapshotCopyGrants)

responseBatchModifyClusterSnapshots :: BatchModifyClusterSnapshotsResponse -> TestTree
responseBatchModifyClusterSnapshots =
  res
    "BatchModifyClusterSnapshotsResponse"
    "fixture/BatchModifyClusterSnapshotsResponse.proto"
    redshift
    (Proxy :: Proxy BatchModifyClusterSnapshots)

responseModifySnapshotSchedule :: SnapshotSchedule -> TestTree
responseModifySnapshotSchedule =
  res
    "ModifySnapshotScheduleResponse"
    "fixture/ModifySnapshotScheduleResponse.proto"
    redshift
    (Proxy :: Proxy ModifySnapshotSchedule)

responseDeleteSnapshotCopyGrant :: DeleteSnapshotCopyGrantResponse -> TestTree
responseDeleteSnapshotCopyGrant =
  res
    "DeleteSnapshotCopyGrantResponse"
    "fixture/DeleteSnapshotCopyGrantResponse.proto"
    redshift
    (Proxy :: Proxy DeleteSnapshotCopyGrant)

responseDescribeUsageLimits :: DescribeUsageLimitsResponse -> TestTree
responseDescribeUsageLimits =
  res
    "DescribeUsageLimitsResponse"
    "fixture/DescribeUsageLimitsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeUsageLimits)

responseDescribeDefaultClusterParameters :: DescribeDefaultClusterParametersResponse -> TestTree
responseDescribeDefaultClusterParameters =
  res
    "DescribeDefaultClusterParametersResponse"
    "fixture/DescribeDefaultClusterParametersResponse.proto"
    redshift
    (Proxy :: Proxy DescribeDefaultClusterParameters)

responseCreateHSMClientCertificate :: CreateHSMClientCertificateResponse -> TestTree
responseCreateHSMClientCertificate =
  res
    "CreateHSMClientCertificateResponse"
    "fixture/CreateHSMClientCertificateResponse.proto"
    redshift
    (Proxy :: Proxy CreateHSMClientCertificate)

responseDescribeClusterVersions :: DescribeClusterVersionsResponse -> TestTree
responseDescribeClusterVersions =
  res
    "DescribeClusterVersionsResponse"
    "fixture/DescribeClusterVersionsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeClusterVersions)

responseDescribeOrderableClusterOptions :: DescribeOrderableClusterOptionsResponse -> TestTree
responseDescribeOrderableClusterOptions =
  res
    "DescribeOrderableClusterOptionsResponse"
    "fixture/DescribeOrderableClusterOptionsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeOrderableClusterOptions)

responseDeleteHSMClientCertificate :: DeleteHSMClientCertificateResponse -> TestTree
responseDeleteHSMClientCertificate =
  res
    "DeleteHSMClientCertificateResponse"
    "fixture/DeleteHSMClientCertificateResponse.proto"
    redshift
    (Proxy :: Proxy DeleteHSMClientCertificate)

responseRebootCluster :: RebootClusterResponse -> TestTree
responseRebootCluster =
  res
    "RebootClusterResponse"
    "fixture/RebootClusterResponse.proto"
    redshift
    (Proxy :: Proxy RebootCluster)

responseDeleteCluster :: DeleteClusterResponse -> TestTree
responseDeleteCluster =
  res
    "DeleteClusterResponse"
    "fixture/DeleteClusterResponse.proto"
    redshift
    (Proxy :: Proxy DeleteCluster)

responseCreateEventSubscription :: CreateEventSubscriptionResponse -> TestTree
responseCreateEventSubscription =
  res
    "CreateEventSubscriptionResponse"
    "fixture/CreateEventSubscriptionResponse.proto"
    redshift
    (Proxy :: Proxy CreateEventSubscription)

responseAuthorizeSnapshotAccess :: AuthorizeSnapshotAccessResponse -> TestTree
responseAuthorizeSnapshotAccess =
  res
    "AuthorizeSnapshotAccessResponse"
    "fixture/AuthorizeSnapshotAccessResponse.proto"
    redshift
    (Proxy :: Proxy AuthorizeSnapshotAccess)

responseResumeCluster :: ResumeClusterResponse -> TestTree
responseResumeCluster =
  res
    "ResumeClusterResponse"
    "fixture/ResumeClusterResponse.proto"
    redshift
    (Proxy :: Proxy ResumeCluster)

responseDescribeClusterTracks :: DescribeClusterTracksResponse -> TestTree
responseDescribeClusterTracks =
  res
    "DescribeClusterTracksResponse"
    "fixture/DescribeClusterTracksResponse.proto"
    redshift
    (Proxy :: Proxy DescribeClusterTracks)

responseCreateScheduledAction :: ScheduledAction -> TestTree
responseCreateScheduledAction =
  res
    "CreateScheduledActionResponse"
    "fixture/CreateScheduledActionResponse.proto"
    redshift
    (Proxy :: Proxy CreateScheduledAction)

responseDeleteSnapshotSchedule :: DeleteSnapshotScheduleResponse -> TestTree
responseDeleteSnapshotSchedule =
  res
    "DeleteSnapshotScheduleResponse"
    "fixture/DeleteSnapshotScheduleResponse.proto"
    redshift
    (Proxy :: Proxy DeleteSnapshotSchedule)

responseDescribeClusterSubnetGroups :: DescribeClusterSubnetGroupsResponse -> TestTree
responseDescribeClusterSubnetGroups =
  res
    "DescribeClusterSubnetGroupsResponse"
    "fixture/DescribeClusterSubnetGroupsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeClusterSubnetGroups)

responseBatchDeleteClusterSnapshots :: BatchDeleteClusterSnapshotsResponse -> TestTree
responseBatchDeleteClusterSnapshots =
  res
    "BatchDeleteClusterSnapshotsResponse"
    "fixture/BatchDeleteClusterSnapshotsResponse.proto"
    redshift
    (Proxy :: Proxy BatchDeleteClusterSnapshots)

responseModifyClusterIAMRoles :: ModifyClusterIAMRolesResponse -> TestTree
responseModifyClusterIAMRoles =
  res
    "ModifyClusterIAMRolesResponse"
    "fixture/ModifyClusterIAMRolesResponse.proto"
    redshift
    (Proxy :: Proxy ModifyClusterIAMRoles)

responseResizeCluster :: ResizeClusterResponse -> TestTree
responseResizeCluster =
  res
    "ResizeClusterResponse"
    "fixture/ResizeClusterResponse.proto"
    redshift
    (Proxy :: Proxy ResizeCluster)

responseModifySnapshotCopyRetentionPeriod :: ModifySnapshotCopyRetentionPeriodResponse -> TestTree
responseModifySnapshotCopyRetentionPeriod =
  res
    "ModifySnapshotCopyRetentionPeriodResponse"
    "fixture/ModifySnapshotCopyRetentionPeriodResponse.proto"
    redshift
    (Proxy :: Proxy ModifySnapshotCopyRetentionPeriod)

responseRestoreFromClusterSnapshot :: RestoreFromClusterSnapshotResponse -> TestTree
responseRestoreFromClusterSnapshot =
  res
    "RestoreFromClusterSnapshotResponse"
    "fixture/RestoreFromClusterSnapshotResponse.proto"
    redshift
    (Proxy :: Proxy RestoreFromClusterSnapshot)

responseRevokeSnapshotAccess :: RevokeSnapshotAccessResponse -> TestTree
responseRevokeSnapshotAccess =
  res
    "RevokeSnapshotAccessResponse"
    "fixture/RevokeSnapshotAccessResponse.proto"
    redshift
    (Proxy :: Proxy RevokeSnapshotAccess)

responsePauseCluster :: PauseClusterResponse -> TestTree
responsePauseCluster =
  res
    "PauseClusterResponse"
    "fixture/PauseClusterResponse.proto"
    redshift
    (Proxy :: Proxy PauseCluster)

responseDescribeClusterParameters :: DescribeClusterParametersResponse -> TestTree
responseDescribeClusterParameters =
  res
    "DescribeClusterParametersResponse"
    "fixture/DescribeClusterParametersResponse.proto"
    redshift
    (Proxy :: Proxy DescribeClusterParameters)

responseDisableSnapshotCopy :: DisableSnapshotCopyResponse -> TestTree
responseDisableSnapshotCopy =
  res
    "DisableSnapshotCopyResponse"
    "fixture/DisableSnapshotCopyResponse.proto"
    redshift
    (Proxy :: Proxy DisableSnapshotCopy)

responseCreateTags :: CreateTagsResponse -> TestTree
responseCreateTags =
  res
    "CreateTagsResponse"
    "fixture/CreateTagsResponse.proto"
    redshift
    (Proxy :: Proxy CreateTags)

responseDescribeReservedNodeOfferings :: DescribeReservedNodeOfferingsResponse -> TestTree
responseDescribeReservedNodeOfferings =
  res
    "DescribeReservedNodeOfferingsResponse"
    "fixture/DescribeReservedNodeOfferingsResponse.proto"
    redshift
    (Proxy :: Proxy DescribeReservedNodeOfferings)

responseDeleteClusterSecurityGroup :: DeleteClusterSecurityGroupResponse -> TestTree
responseDeleteClusterSecurityGroup =
  res
    "DeleteClusterSecurityGroupResponse"
    "fixture/DeleteClusterSecurityGroupResponse.proto"
    redshift
    (Proxy :: Proxy DeleteClusterSecurityGroup)

responseEnableLogging :: LoggingStatus -> TestTree
responseEnableLogging =
  res
    "EnableLoggingResponse"
    "fixture/EnableLoggingResponse.proto"
    redshift
    (Proxy :: Proxy EnableLogging)

responseCreateHSMConfiguration :: CreateHSMConfigurationResponse -> TestTree
responseCreateHSMConfiguration =
  res
    "CreateHSMConfigurationResponse"
    "fixture/CreateHSMConfigurationResponse.proto"
    redshift
    (Proxy :: Proxy CreateHSMConfiguration)

responseDescribeReservedNodes :: DescribeReservedNodesResponse -> TestTree
responseDescribeReservedNodes =
  res
    "DescribeReservedNodesResponse"
    "fixture/DescribeReservedNodesResponse.proto"
    redshift
    (Proxy :: Proxy DescribeReservedNodes)
