{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Shield
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Shield where

import Data.Proxy
import Network.AWS.Shield
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.Shield.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCreateSubscription $
--             createSubscription
--
--         , requestDescribeEmergencyContactSettings $
--             describeEmergencyContactSettings
--
--         , requestDescribeProtectionGroup $
--             describeProtectionGroup
--
--         , requestDescribeSubscription $
--             describeSubscription
--
--         , requestAssociateHealthCheck $
--             associateHealthCheck
--
--         , requestDescribeDRTAccess $
--             describeDRTAccess
--
--         , requestListResourcesInProtectionGroup $
--             listResourcesInProtectionGroup
--
--         , requestDisableProactiveEngagement $
--             disableProactiveEngagement
--
--         , requestEnableProactiveEngagement $
--             enableProactiveEngagement
--
--         , requestDisassociateDRTLogBucket $
--             disassociateDRTLogBucket
--
--         , requestUpdateSubscription $
--             updateSubscription
--
--         , requestAssociateDRTRole $
--             associateDRTRole
--
--         , requestCreateProtection $
--             createProtection
--
--         , requestAssociateDRTLogBucket $
--             associateDRTLogBucket
--
--         , requestDisassociateDRTRole $
--             disassociateDRTRole
--
--         , requestListAttacks $
--             listAttacks
--
--         , requestDescribeProtection $
--             describeProtection
--
--         , requestDescribeAttackStatistics $
--             describeAttackStatistics
--
--         , requestDisassociateHealthCheck $
--             disassociateHealthCheck
--
--         , requestCreateProtectionGroup $
--             createProtectionGroup
--
--         , requestListProtectionGroups $
--             listProtectionGroups
--
--         , requestDescribeAttack $
--             describeAttack
--
--         , requestUpdateEmergencyContactSettings $
--             updateEmergencyContactSettings
--
--         , requestDeleteProtectionGroup $
--             deleteProtectionGroup
--
--         , requestUpdateProtectionGroup $
--             updateProtectionGroup
--
--         , requestListProtections $
--             listProtections
--
--         , requestDeleteProtection $
--             deleteProtection
--
--         , requestAssociateProactiveEngagementDetails $
--             associateProactiveEngagementDetails
--
--         , requestGetSubscriptionState $
--             getSubscriptionState
--
--           ]

--     , testGroup "response"
--         [ responseCreateSubscription $
--             createSubscriptionResponse
--
--         , responseDescribeEmergencyContactSettings $
--             describeEmergencyContactSettingsResponse
--
--         , responseDescribeProtectionGroup $
--             describeProtectionGroupResponse
--
--         , responseDescribeSubscription $
--             describeSubscriptionResponse
--
--         , responseAssociateHealthCheck $
--             associateHealthCheckResponse
--
--         , responseDescribeDRTAccess $
--             describeDRTAccessResponse
--
--         , responseListResourcesInProtectionGroup $
--             listResourcesInProtectionGroupResponse
--
--         , responseDisableProactiveEngagement $
--             disableProactiveEngagementResponse
--
--         , responseEnableProactiveEngagement $
--             enableProactiveEngagementResponse
--
--         , responseDisassociateDRTLogBucket $
--             disassociateDRTLogBucketResponse
--
--         , responseUpdateSubscription $
--             updateSubscriptionResponse
--
--         , responseAssociateDRTRole $
--             associateDRTRoleResponse
--
--         , responseCreateProtection $
--             createProtectionResponse
--
--         , responseAssociateDRTLogBucket $
--             associateDRTLogBucketResponse
--
--         , responseDisassociateDRTRole $
--             disassociateDRTRoleResponse
--
--         , responseListAttacks $
--             listAttacksResponse
--
--         , responseDescribeProtection $
--             describeProtectionResponse
--
--         , responseDescribeAttackStatistics $
--             describeAttackStatisticsResponse
--
--         , responseDisassociateHealthCheck $
--             disassociateHealthCheckResponse
--
--         , responseCreateProtectionGroup $
--             createProtectionGroupResponse
--
--         , responseListProtectionGroups $
--             listProtectionGroupsResponse
--
--         , responseDescribeAttack $
--             describeAttackResponse
--
--         , responseUpdateEmergencyContactSettings $
--             updateEmergencyContactSettingsResponse
--
--         , responseDeleteProtectionGroup $
--             deleteProtectionGroupResponse
--
--         , responseUpdateProtectionGroup $
--             updateProtectionGroupResponse
--
--         , responseListProtections $
--             listProtectionsResponse
--
--         , responseDeleteProtection $
--             deleteProtectionResponse
--
--         , responseAssociateProactiveEngagementDetails $
--             associateProactiveEngagementDetailsResponse
--
--         , responseGetSubscriptionState $
--             getSubscriptionStateResponse
--
--           ]
--     ]

-- Requests

requestCreateSubscription :: CreateSubscription -> TestTree
requestCreateSubscription =
  req
    "CreateSubscription"
    "fixture/CreateSubscription.yaml"

requestDescribeEmergencyContactSettings :: DescribeEmergencyContactSettings -> TestTree
requestDescribeEmergencyContactSettings =
  req
    "DescribeEmergencyContactSettings"
    "fixture/DescribeEmergencyContactSettings.yaml"

requestDescribeProtectionGroup :: DescribeProtectionGroup -> TestTree
requestDescribeProtectionGroup =
  req
    "DescribeProtectionGroup"
    "fixture/DescribeProtectionGroup.yaml"

requestDescribeSubscription :: DescribeSubscription -> TestTree
requestDescribeSubscription =
  req
    "DescribeSubscription"
    "fixture/DescribeSubscription.yaml"

requestAssociateHealthCheck :: AssociateHealthCheck -> TestTree
requestAssociateHealthCheck =
  req
    "AssociateHealthCheck"
    "fixture/AssociateHealthCheck.yaml"

requestDescribeDRTAccess :: DescribeDRTAccess -> TestTree
requestDescribeDRTAccess =
  req
    "DescribeDRTAccess"
    "fixture/DescribeDRTAccess.yaml"

requestListResourcesInProtectionGroup :: ListResourcesInProtectionGroup -> TestTree
requestListResourcesInProtectionGroup =
  req
    "ListResourcesInProtectionGroup"
    "fixture/ListResourcesInProtectionGroup.yaml"

requestDisableProactiveEngagement :: DisableProactiveEngagement -> TestTree
requestDisableProactiveEngagement =
  req
    "DisableProactiveEngagement"
    "fixture/DisableProactiveEngagement.yaml"

requestEnableProactiveEngagement :: EnableProactiveEngagement -> TestTree
requestEnableProactiveEngagement =
  req
    "EnableProactiveEngagement"
    "fixture/EnableProactiveEngagement.yaml"

requestDisassociateDRTLogBucket :: DisassociateDRTLogBucket -> TestTree
requestDisassociateDRTLogBucket =
  req
    "DisassociateDRTLogBucket"
    "fixture/DisassociateDRTLogBucket.yaml"

requestUpdateSubscription :: UpdateSubscription -> TestTree
requestUpdateSubscription =
  req
    "UpdateSubscription"
    "fixture/UpdateSubscription.yaml"

requestAssociateDRTRole :: AssociateDRTRole -> TestTree
requestAssociateDRTRole =
  req
    "AssociateDRTRole"
    "fixture/AssociateDRTRole.yaml"

requestCreateProtection :: CreateProtection -> TestTree
requestCreateProtection =
  req
    "CreateProtection"
    "fixture/CreateProtection.yaml"

requestAssociateDRTLogBucket :: AssociateDRTLogBucket -> TestTree
requestAssociateDRTLogBucket =
  req
    "AssociateDRTLogBucket"
    "fixture/AssociateDRTLogBucket.yaml"

requestDisassociateDRTRole :: DisassociateDRTRole -> TestTree
requestDisassociateDRTRole =
  req
    "DisassociateDRTRole"
    "fixture/DisassociateDRTRole.yaml"

requestListAttacks :: ListAttacks -> TestTree
requestListAttacks =
  req
    "ListAttacks"
    "fixture/ListAttacks.yaml"

requestDescribeProtection :: DescribeProtection -> TestTree
requestDescribeProtection =
  req
    "DescribeProtection"
    "fixture/DescribeProtection.yaml"

requestDescribeAttackStatistics :: DescribeAttackStatistics -> TestTree
requestDescribeAttackStatistics =
  req
    "DescribeAttackStatistics"
    "fixture/DescribeAttackStatistics.yaml"

requestDisassociateHealthCheck :: DisassociateHealthCheck -> TestTree
requestDisassociateHealthCheck =
  req
    "DisassociateHealthCheck"
    "fixture/DisassociateHealthCheck.yaml"

requestCreateProtectionGroup :: CreateProtectionGroup -> TestTree
requestCreateProtectionGroup =
  req
    "CreateProtectionGroup"
    "fixture/CreateProtectionGroup.yaml"

requestListProtectionGroups :: ListProtectionGroups -> TestTree
requestListProtectionGroups =
  req
    "ListProtectionGroups"
    "fixture/ListProtectionGroups.yaml"

requestDescribeAttack :: DescribeAttack -> TestTree
requestDescribeAttack =
  req
    "DescribeAttack"
    "fixture/DescribeAttack.yaml"

requestUpdateEmergencyContactSettings :: UpdateEmergencyContactSettings -> TestTree
requestUpdateEmergencyContactSettings =
  req
    "UpdateEmergencyContactSettings"
    "fixture/UpdateEmergencyContactSettings.yaml"

requestDeleteProtectionGroup :: DeleteProtectionGroup -> TestTree
requestDeleteProtectionGroup =
  req
    "DeleteProtectionGroup"
    "fixture/DeleteProtectionGroup.yaml"

requestUpdateProtectionGroup :: UpdateProtectionGroup -> TestTree
requestUpdateProtectionGroup =
  req
    "UpdateProtectionGroup"
    "fixture/UpdateProtectionGroup.yaml"

requestListProtections :: ListProtections -> TestTree
requestListProtections =
  req
    "ListProtections"
    "fixture/ListProtections.yaml"

requestDeleteProtection :: DeleteProtection -> TestTree
requestDeleteProtection =
  req
    "DeleteProtection"
    "fixture/DeleteProtection.yaml"

requestAssociateProactiveEngagementDetails :: AssociateProactiveEngagementDetails -> TestTree
requestAssociateProactiveEngagementDetails =
  req
    "AssociateProactiveEngagementDetails"
    "fixture/AssociateProactiveEngagementDetails.yaml"

requestGetSubscriptionState :: GetSubscriptionState -> TestTree
requestGetSubscriptionState =
  req
    "GetSubscriptionState"
    "fixture/GetSubscriptionState.yaml"

-- Responses

responseCreateSubscription :: CreateSubscriptionResponse -> TestTree
responseCreateSubscription =
  res
    "CreateSubscriptionResponse"
    "fixture/CreateSubscriptionResponse.proto"
    shield
    (Proxy :: Proxy CreateSubscription)

responseDescribeEmergencyContactSettings :: DescribeEmergencyContactSettingsResponse -> TestTree
responseDescribeEmergencyContactSettings =
  res
    "DescribeEmergencyContactSettingsResponse"
    "fixture/DescribeEmergencyContactSettingsResponse.proto"
    shield
    (Proxy :: Proxy DescribeEmergencyContactSettings)

responseDescribeProtectionGroup :: DescribeProtectionGroupResponse -> TestTree
responseDescribeProtectionGroup =
  res
    "DescribeProtectionGroupResponse"
    "fixture/DescribeProtectionGroupResponse.proto"
    shield
    (Proxy :: Proxy DescribeProtectionGroup)

responseDescribeSubscription :: DescribeSubscriptionResponse -> TestTree
responseDescribeSubscription =
  res
    "DescribeSubscriptionResponse"
    "fixture/DescribeSubscriptionResponse.proto"
    shield
    (Proxy :: Proxy DescribeSubscription)

responseAssociateHealthCheck :: AssociateHealthCheckResponse -> TestTree
responseAssociateHealthCheck =
  res
    "AssociateHealthCheckResponse"
    "fixture/AssociateHealthCheckResponse.proto"
    shield
    (Proxy :: Proxy AssociateHealthCheck)

responseDescribeDRTAccess :: DescribeDRTAccessResponse -> TestTree
responseDescribeDRTAccess =
  res
    "DescribeDRTAccessResponse"
    "fixture/DescribeDRTAccessResponse.proto"
    shield
    (Proxy :: Proxy DescribeDRTAccess)

responseListResourcesInProtectionGroup :: ListResourcesInProtectionGroupResponse -> TestTree
responseListResourcesInProtectionGroup =
  res
    "ListResourcesInProtectionGroupResponse"
    "fixture/ListResourcesInProtectionGroupResponse.proto"
    shield
    (Proxy :: Proxy ListResourcesInProtectionGroup)

responseDisableProactiveEngagement :: DisableProactiveEngagementResponse -> TestTree
responseDisableProactiveEngagement =
  res
    "DisableProactiveEngagementResponse"
    "fixture/DisableProactiveEngagementResponse.proto"
    shield
    (Proxy :: Proxy DisableProactiveEngagement)

responseEnableProactiveEngagement :: EnableProactiveEngagementResponse -> TestTree
responseEnableProactiveEngagement =
  res
    "EnableProactiveEngagementResponse"
    "fixture/EnableProactiveEngagementResponse.proto"
    shield
    (Proxy :: Proxy EnableProactiveEngagement)

responseDisassociateDRTLogBucket :: DisassociateDRTLogBucketResponse -> TestTree
responseDisassociateDRTLogBucket =
  res
    "DisassociateDRTLogBucketResponse"
    "fixture/DisassociateDRTLogBucketResponse.proto"
    shield
    (Proxy :: Proxy DisassociateDRTLogBucket)

responseUpdateSubscription :: UpdateSubscriptionResponse -> TestTree
responseUpdateSubscription =
  res
    "UpdateSubscriptionResponse"
    "fixture/UpdateSubscriptionResponse.proto"
    shield
    (Proxy :: Proxy UpdateSubscription)

responseAssociateDRTRole :: AssociateDRTRoleResponse -> TestTree
responseAssociateDRTRole =
  res
    "AssociateDRTRoleResponse"
    "fixture/AssociateDRTRoleResponse.proto"
    shield
    (Proxy :: Proxy AssociateDRTRole)

responseCreateProtection :: CreateProtectionResponse -> TestTree
responseCreateProtection =
  res
    "CreateProtectionResponse"
    "fixture/CreateProtectionResponse.proto"
    shield
    (Proxy :: Proxy CreateProtection)

responseAssociateDRTLogBucket :: AssociateDRTLogBucketResponse -> TestTree
responseAssociateDRTLogBucket =
  res
    "AssociateDRTLogBucketResponse"
    "fixture/AssociateDRTLogBucketResponse.proto"
    shield
    (Proxy :: Proxy AssociateDRTLogBucket)

responseDisassociateDRTRole :: DisassociateDRTRoleResponse -> TestTree
responseDisassociateDRTRole =
  res
    "DisassociateDRTRoleResponse"
    "fixture/DisassociateDRTRoleResponse.proto"
    shield
    (Proxy :: Proxy DisassociateDRTRole)

responseListAttacks :: ListAttacksResponse -> TestTree
responseListAttacks =
  res
    "ListAttacksResponse"
    "fixture/ListAttacksResponse.proto"
    shield
    (Proxy :: Proxy ListAttacks)

responseDescribeProtection :: DescribeProtectionResponse -> TestTree
responseDescribeProtection =
  res
    "DescribeProtectionResponse"
    "fixture/DescribeProtectionResponse.proto"
    shield
    (Proxy :: Proxy DescribeProtection)

responseDescribeAttackStatistics :: DescribeAttackStatisticsResponse -> TestTree
responseDescribeAttackStatistics =
  res
    "DescribeAttackStatisticsResponse"
    "fixture/DescribeAttackStatisticsResponse.proto"
    shield
    (Proxy :: Proxy DescribeAttackStatistics)

responseDisassociateHealthCheck :: DisassociateHealthCheckResponse -> TestTree
responseDisassociateHealthCheck =
  res
    "DisassociateHealthCheckResponse"
    "fixture/DisassociateHealthCheckResponse.proto"
    shield
    (Proxy :: Proxy DisassociateHealthCheck)

responseCreateProtectionGroup :: CreateProtectionGroupResponse -> TestTree
responseCreateProtectionGroup =
  res
    "CreateProtectionGroupResponse"
    "fixture/CreateProtectionGroupResponse.proto"
    shield
    (Proxy :: Proxy CreateProtectionGroup)

responseListProtectionGroups :: ListProtectionGroupsResponse -> TestTree
responseListProtectionGroups =
  res
    "ListProtectionGroupsResponse"
    "fixture/ListProtectionGroupsResponse.proto"
    shield
    (Proxy :: Proxy ListProtectionGroups)

responseDescribeAttack :: DescribeAttackResponse -> TestTree
responseDescribeAttack =
  res
    "DescribeAttackResponse"
    "fixture/DescribeAttackResponse.proto"
    shield
    (Proxy :: Proxy DescribeAttack)

responseUpdateEmergencyContactSettings :: UpdateEmergencyContactSettingsResponse -> TestTree
responseUpdateEmergencyContactSettings =
  res
    "UpdateEmergencyContactSettingsResponse"
    "fixture/UpdateEmergencyContactSettingsResponse.proto"
    shield
    (Proxy :: Proxy UpdateEmergencyContactSettings)

responseDeleteProtectionGroup :: DeleteProtectionGroupResponse -> TestTree
responseDeleteProtectionGroup =
  res
    "DeleteProtectionGroupResponse"
    "fixture/DeleteProtectionGroupResponse.proto"
    shield
    (Proxy :: Proxy DeleteProtectionGroup)

responseUpdateProtectionGroup :: UpdateProtectionGroupResponse -> TestTree
responseUpdateProtectionGroup =
  res
    "UpdateProtectionGroupResponse"
    "fixture/UpdateProtectionGroupResponse.proto"
    shield
    (Proxy :: Proxy UpdateProtectionGroup)

responseListProtections :: ListProtectionsResponse -> TestTree
responseListProtections =
  res
    "ListProtectionsResponse"
    "fixture/ListProtectionsResponse.proto"
    shield
    (Proxy :: Proxy ListProtections)

responseDeleteProtection :: DeleteProtectionResponse -> TestTree
responseDeleteProtection =
  res
    "DeleteProtectionResponse"
    "fixture/DeleteProtectionResponse.proto"
    shield
    (Proxy :: Proxy DeleteProtection)

responseAssociateProactiveEngagementDetails :: AssociateProactiveEngagementDetailsResponse -> TestTree
responseAssociateProactiveEngagementDetails =
  res
    "AssociateProactiveEngagementDetailsResponse"
    "fixture/AssociateProactiveEngagementDetailsResponse.proto"
    shield
    (Proxy :: Proxy AssociateProactiveEngagementDetails)

responseGetSubscriptionState :: GetSubscriptionStateResponse -> TestTree
responseGetSubscriptionState =
  res
    "GetSubscriptionStateResponse"
    "fixture/GetSubscriptionStateResponse.proto"
    shield
    (Proxy :: Proxy GetSubscriptionState)
