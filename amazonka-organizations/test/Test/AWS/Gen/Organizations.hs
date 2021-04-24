{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Organizations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Organizations where

import Data.Proxy
import Network.AWS.Organizations
import Test.AWS.Fixture
import Test.AWS.Organizations.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestListAccountsForParent $
--             listAccountsForParent
--
--         , requestCreateOrganization $
--             createOrganization
--
--         , requestCreatePolicy $
--             createPolicy
--
--         , requestDisablePolicyType $
--             disablePolicyType
--
--         , requestDescribeCreateAccountStatus $
--             describeCreateAccountStatus
--
--         , requestListPolicies $
--             listPolicies
--
--         , requestListHandshakesForAccount $
--             listHandshakesForAccount
--
--         , requestListChildren $
--             listChildren
--
--         , requestDeletePolicy $
--             deletePolicy
--
--         , requestEnablePolicyType $
--             enablePolicyType
--
--         , requestUpdatePolicy $
--             updatePolicy
--
--         , requestListAWSServiceAccessForOrganization $
--             listAWSServiceAccessForOrganization
--
--         , requestDescribeOrganization $
--             describeOrganization
--
--         , requestListCreateAccountStatus $
--             listCreateAccountStatus
--
--         , requestUntagResource $
--             untagResource
--
--         , requestListAccounts $
--             listAccounts
--
--         , requestTagResource $
--             tagResource
--
--         , requestEnableAWSServiceAccess $
--             enableAWSServiceAccess
--
--         , requestDescribeOrganizationalUnit $
--             describeOrganizationalUnit
--
--         , requestListDelegatedServicesForAccount $
--             listDelegatedServicesForAccount
--
--         , requestRemoveAccountFromOrganization $
--             removeAccountFromOrganization
--
--         , requestCreateGovCloudAccount $
--             createGovCloudAccount
--
--         , requestDeleteOrganization $
--             deleteOrganization
--
--         , requestListRoots $
--             listRoots
--
--         , requestEnableAllFeatures $
--             enableAllFeatures
--
--         , requestAcceptHandshake $
--             acceptHandshake
--
--         , requestDetachPolicy $
--             detachPolicy
--
--         , requestCreateOrganizationalUnit $
--             createOrganizationalUnit
--
--         , requestDescribeAccount $
--             describeAccount
--
--         , requestListDelegatedAdministrators $
--             listDelegatedAdministrators
--
--         , requestUpdateOrganizationalUnit $
--             updateOrganizationalUnit
--
--         , requestDeleteOrganizationalUnit $
--             deleteOrganizationalUnit
--
--         , requestCancelHandshake $
--             cancelHandshake
--
--         , requestRegisterDelegatedAdministrator $
--             registerDelegatedAdministrator
--
--         , requestListHandshakesForOrganization $
--             listHandshakesForOrganization
--
--         , requestListPoliciesForTarget $
--             listPoliciesForTarget
--
--         , requestListOrganizationalUnitsForParent $
--             listOrganizationalUnitsForParent
--
--         , requestListTargetsForPolicy $
--             listTargetsForPolicy
--
--         , requestAttachPolicy $
--             attachPolicy
--
--         , requestDeclineHandshake $
--             declineHandshake
--
--         , requestDescribeEffectivePolicy $
--             describeEffectivePolicy
--
--         , requestDeregisterDelegatedAdministrator $
--             deregisterDelegatedAdministrator
--
--         , requestMoveAccount $
--             moveAccount
--
--         , requestInviteAccountToOrganization $
--             inviteAccountToOrganization
--
--         , requestLeaveOrganization $
--             leaveOrganization
--
--         , requestDisableAWSServiceAccess $
--             disableAWSServiceAccess
--
--         , requestListParents $
--             listParents
--
--         , requestDescribePolicy $
--             describePolicy
--
--         , requestCreateAccount $
--             createAccount
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDescribeHandshake $
--             describeHandshake
--
--           ]

--     , testGroup "response"
--         [ responseListAccountsForParent $
--             listAccountsForParentResponse
--
--         , responseCreateOrganization $
--             createOrganizationResponse
--
--         , responseCreatePolicy $
--             createPolicyResponse
--
--         , responseDisablePolicyType $
--             disablePolicyTypeResponse
--
--         , responseDescribeCreateAccountStatus $
--             describeCreateAccountStatusResponse
--
--         , responseListPolicies $
--             listPoliciesResponse
--
--         , responseListHandshakesForAccount $
--             listHandshakesForAccountResponse
--
--         , responseListChildren $
--             listChildrenResponse
--
--         , responseDeletePolicy $
--             deletePolicyResponse
--
--         , responseEnablePolicyType $
--             enablePolicyTypeResponse
--
--         , responseUpdatePolicy $
--             updatePolicyResponse
--
--         , responseListAWSServiceAccessForOrganization $
--             listAWSServiceAccessForOrganizationResponse
--
--         , responseDescribeOrganization $
--             describeOrganizationResponse
--
--         , responseListCreateAccountStatus $
--             listCreateAccountStatusResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseListAccounts $
--             listAccountsResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseEnableAWSServiceAccess $
--             enableAWSServiceAccessResponse
--
--         , responseDescribeOrganizationalUnit $
--             describeOrganizationalUnitResponse
--
--         , responseListDelegatedServicesForAccount $
--             listDelegatedServicesForAccountResponse
--
--         , responseRemoveAccountFromOrganization $
--             removeAccountFromOrganizationResponse
--
--         , responseCreateGovCloudAccount $
--             createGovCloudAccountResponse
--
--         , responseDeleteOrganization $
--             deleteOrganizationResponse
--
--         , responseListRoots $
--             listRootsResponse
--
--         , responseEnableAllFeatures $
--             enableAllFeaturesResponse
--
--         , responseAcceptHandshake $
--             acceptHandshakeResponse
--
--         , responseDetachPolicy $
--             detachPolicyResponse
--
--         , responseCreateOrganizationalUnit $
--             createOrganizationalUnitResponse
--
--         , responseDescribeAccount $
--             describeAccountResponse
--
--         , responseListDelegatedAdministrators $
--             listDelegatedAdministratorsResponse
--
--         , responseUpdateOrganizationalUnit $
--             updateOrganizationalUnitResponse
--
--         , responseDeleteOrganizationalUnit $
--             deleteOrganizationalUnitResponse
--
--         , responseCancelHandshake $
--             cancelHandshakeResponse
--
--         , responseRegisterDelegatedAdministrator $
--             registerDelegatedAdministratorResponse
--
--         , responseListHandshakesForOrganization $
--             listHandshakesForOrganizationResponse
--
--         , responseListPoliciesForTarget $
--             listPoliciesForTargetResponse
--
--         , responseListOrganizationalUnitsForParent $
--             listOrganizationalUnitsForParentResponse
--
--         , responseListTargetsForPolicy $
--             listTargetsForPolicyResponse
--
--         , responseAttachPolicy $
--             attachPolicyResponse
--
--         , responseDeclineHandshake $
--             declineHandshakeResponse
--
--         , responseDescribeEffectivePolicy $
--             describeEffectivePolicyResponse
--
--         , responseDeregisterDelegatedAdministrator $
--             deregisterDelegatedAdministratorResponse
--
--         , responseMoveAccount $
--             moveAccountResponse
--
--         , responseInviteAccountToOrganization $
--             inviteAccountToOrganizationResponse
--
--         , responseLeaveOrganization $
--             leaveOrganizationResponse
--
--         , responseDisableAWSServiceAccess $
--             disableAWSServiceAccessResponse
--
--         , responseListParents $
--             listParentsResponse
--
--         , responseDescribePolicy $
--             describePolicyResponse
--
--         , responseCreateAccount $
--             createAccountResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDescribeHandshake $
--             describeHandshakeResponse
--
--           ]
--     ]

-- Requests

requestListAccountsForParent :: ListAccountsForParent -> TestTree
requestListAccountsForParent =
  req
    "ListAccountsForParent"
    "fixture/ListAccountsForParent.yaml"

requestCreateOrganization :: CreateOrganization -> TestTree
requestCreateOrganization =
  req
    "CreateOrganization"
    "fixture/CreateOrganization.yaml"

requestCreatePolicy :: CreatePolicy -> TestTree
requestCreatePolicy =
  req
    "CreatePolicy"
    "fixture/CreatePolicy.yaml"

requestDisablePolicyType :: DisablePolicyType -> TestTree
requestDisablePolicyType =
  req
    "DisablePolicyType"
    "fixture/DisablePolicyType.yaml"

requestDescribeCreateAccountStatus :: DescribeCreateAccountStatus -> TestTree
requestDescribeCreateAccountStatus =
  req
    "DescribeCreateAccountStatus"
    "fixture/DescribeCreateAccountStatus.yaml"

requestListPolicies :: ListPolicies -> TestTree
requestListPolicies =
  req
    "ListPolicies"
    "fixture/ListPolicies.yaml"

requestListHandshakesForAccount :: ListHandshakesForAccount -> TestTree
requestListHandshakesForAccount =
  req
    "ListHandshakesForAccount"
    "fixture/ListHandshakesForAccount.yaml"

requestListChildren :: ListChildren -> TestTree
requestListChildren =
  req
    "ListChildren"
    "fixture/ListChildren.yaml"

requestDeletePolicy :: DeletePolicy -> TestTree
requestDeletePolicy =
  req
    "DeletePolicy"
    "fixture/DeletePolicy.yaml"

requestEnablePolicyType :: EnablePolicyType -> TestTree
requestEnablePolicyType =
  req
    "EnablePolicyType"
    "fixture/EnablePolicyType.yaml"

requestUpdatePolicy :: UpdatePolicy -> TestTree
requestUpdatePolicy =
  req
    "UpdatePolicy"
    "fixture/UpdatePolicy.yaml"

requestListAWSServiceAccessForOrganization :: ListAWSServiceAccessForOrganization -> TestTree
requestListAWSServiceAccessForOrganization =
  req
    "ListAWSServiceAccessForOrganization"
    "fixture/ListAWSServiceAccessForOrganization.yaml"

requestDescribeOrganization :: DescribeOrganization -> TestTree
requestDescribeOrganization =
  req
    "DescribeOrganization"
    "fixture/DescribeOrganization.yaml"

requestListCreateAccountStatus :: ListCreateAccountStatus -> TestTree
requestListCreateAccountStatus =
  req
    "ListCreateAccountStatus"
    "fixture/ListCreateAccountStatus.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestListAccounts :: ListAccounts -> TestTree
requestListAccounts =
  req
    "ListAccounts"
    "fixture/ListAccounts.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestEnableAWSServiceAccess :: EnableAWSServiceAccess -> TestTree
requestEnableAWSServiceAccess =
  req
    "EnableAWSServiceAccess"
    "fixture/EnableAWSServiceAccess.yaml"

requestDescribeOrganizationalUnit :: DescribeOrganizationalUnit -> TestTree
requestDescribeOrganizationalUnit =
  req
    "DescribeOrganizationalUnit"
    "fixture/DescribeOrganizationalUnit.yaml"

requestListDelegatedServicesForAccount :: ListDelegatedServicesForAccount -> TestTree
requestListDelegatedServicesForAccount =
  req
    "ListDelegatedServicesForAccount"
    "fixture/ListDelegatedServicesForAccount.yaml"

requestRemoveAccountFromOrganization :: RemoveAccountFromOrganization -> TestTree
requestRemoveAccountFromOrganization =
  req
    "RemoveAccountFromOrganization"
    "fixture/RemoveAccountFromOrganization.yaml"

requestCreateGovCloudAccount :: CreateGovCloudAccount -> TestTree
requestCreateGovCloudAccount =
  req
    "CreateGovCloudAccount"
    "fixture/CreateGovCloudAccount.yaml"

requestDeleteOrganization :: DeleteOrganization -> TestTree
requestDeleteOrganization =
  req
    "DeleteOrganization"
    "fixture/DeleteOrganization.yaml"

requestListRoots :: ListRoots -> TestTree
requestListRoots =
  req
    "ListRoots"
    "fixture/ListRoots.yaml"

requestEnableAllFeatures :: EnableAllFeatures -> TestTree
requestEnableAllFeatures =
  req
    "EnableAllFeatures"
    "fixture/EnableAllFeatures.yaml"

requestAcceptHandshake :: AcceptHandshake -> TestTree
requestAcceptHandshake =
  req
    "AcceptHandshake"
    "fixture/AcceptHandshake.yaml"

requestDetachPolicy :: DetachPolicy -> TestTree
requestDetachPolicy =
  req
    "DetachPolicy"
    "fixture/DetachPolicy.yaml"

requestCreateOrganizationalUnit :: CreateOrganizationalUnit -> TestTree
requestCreateOrganizationalUnit =
  req
    "CreateOrganizationalUnit"
    "fixture/CreateOrganizationalUnit.yaml"

requestDescribeAccount :: DescribeAccount -> TestTree
requestDescribeAccount =
  req
    "DescribeAccount"
    "fixture/DescribeAccount.yaml"

requestListDelegatedAdministrators :: ListDelegatedAdministrators -> TestTree
requestListDelegatedAdministrators =
  req
    "ListDelegatedAdministrators"
    "fixture/ListDelegatedAdministrators.yaml"

requestUpdateOrganizationalUnit :: UpdateOrganizationalUnit -> TestTree
requestUpdateOrganizationalUnit =
  req
    "UpdateOrganizationalUnit"
    "fixture/UpdateOrganizationalUnit.yaml"

requestDeleteOrganizationalUnit :: DeleteOrganizationalUnit -> TestTree
requestDeleteOrganizationalUnit =
  req
    "DeleteOrganizationalUnit"
    "fixture/DeleteOrganizationalUnit.yaml"

requestCancelHandshake :: CancelHandshake -> TestTree
requestCancelHandshake =
  req
    "CancelHandshake"
    "fixture/CancelHandshake.yaml"

requestRegisterDelegatedAdministrator :: RegisterDelegatedAdministrator -> TestTree
requestRegisterDelegatedAdministrator =
  req
    "RegisterDelegatedAdministrator"
    "fixture/RegisterDelegatedAdministrator.yaml"

requestListHandshakesForOrganization :: ListHandshakesForOrganization -> TestTree
requestListHandshakesForOrganization =
  req
    "ListHandshakesForOrganization"
    "fixture/ListHandshakesForOrganization.yaml"

requestListPoliciesForTarget :: ListPoliciesForTarget -> TestTree
requestListPoliciesForTarget =
  req
    "ListPoliciesForTarget"
    "fixture/ListPoliciesForTarget.yaml"

requestListOrganizationalUnitsForParent :: ListOrganizationalUnitsForParent -> TestTree
requestListOrganizationalUnitsForParent =
  req
    "ListOrganizationalUnitsForParent"
    "fixture/ListOrganizationalUnitsForParent.yaml"

requestListTargetsForPolicy :: ListTargetsForPolicy -> TestTree
requestListTargetsForPolicy =
  req
    "ListTargetsForPolicy"
    "fixture/ListTargetsForPolicy.yaml"

requestAttachPolicy :: AttachPolicy -> TestTree
requestAttachPolicy =
  req
    "AttachPolicy"
    "fixture/AttachPolicy.yaml"

requestDeclineHandshake :: DeclineHandshake -> TestTree
requestDeclineHandshake =
  req
    "DeclineHandshake"
    "fixture/DeclineHandshake.yaml"

requestDescribeEffectivePolicy :: DescribeEffectivePolicy -> TestTree
requestDescribeEffectivePolicy =
  req
    "DescribeEffectivePolicy"
    "fixture/DescribeEffectivePolicy.yaml"

requestDeregisterDelegatedAdministrator :: DeregisterDelegatedAdministrator -> TestTree
requestDeregisterDelegatedAdministrator =
  req
    "DeregisterDelegatedAdministrator"
    "fixture/DeregisterDelegatedAdministrator.yaml"

requestMoveAccount :: MoveAccount -> TestTree
requestMoveAccount =
  req
    "MoveAccount"
    "fixture/MoveAccount.yaml"

requestInviteAccountToOrganization :: InviteAccountToOrganization -> TestTree
requestInviteAccountToOrganization =
  req
    "InviteAccountToOrganization"
    "fixture/InviteAccountToOrganization.yaml"

requestLeaveOrganization :: LeaveOrganization -> TestTree
requestLeaveOrganization =
  req
    "LeaveOrganization"
    "fixture/LeaveOrganization.yaml"

requestDisableAWSServiceAccess :: DisableAWSServiceAccess -> TestTree
requestDisableAWSServiceAccess =
  req
    "DisableAWSServiceAccess"
    "fixture/DisableAWSServiceAccess.yaml"

requestListParents :: ListParents -> TestTree
requestListParents =
  req
    "ListParents"
    "fixture/ListParents.yaml"

requestDescribePolicy :: DescribePolicy -> TestTree
requestDescribePolicy =
  req
    "DescribePolicy"
    "fixture/DescribePolicy.yaml"

requestCreateAccount :: CreateAccount -> TestTree
requestCreateAccount =
  req
    "CreateAccount"
    "fixture/CreateAccount.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDescribeHandshake :: DescribeHandshake -> TestTree
requestDescribeHandshake =
  req
    "DescribeHandshake"
    "fixture/DescribeHandshake.yaml"

-- Responses

responseListAccountsForParent :: ListAccountsForParentResponse -> TestTree
responseListAccountsForParent =
  res
    "ListAccountsForParentResponse"
    "fixture/ListAccountsForParentResponse.proto"
    organizations
    (Proxy :: Proxy ListAccountsForParent)

responseCreateOrganization :: CreateOrganizationResponse -> TestTree
responseCreateOrganization =
  res
    "CreateOrganizationResponse"
    "fixture/CreateOrganizationResponse.proto"
    organizations
    (Proxy :: Proxy CreateOrganization)

responseCreatePolicy :: CreatePolicyResponse -> TestTree
responseCreatePolicy =
  res
    "CreatePolicyResponse"
    "fixture/CreatePolicyResponse.proto"
    organizations
    (Proxy :: Proxy CreatePolicy)

responseDisablePolicyType :: DisablePolicyTypeResponse -> TestTree
responseDisablePolicyType =
  res
    "DisablePolicyTypeResponse"
    "fixture/DisablePolicyTypeResponse.proto"
    organizations
    (Proxy :: Proxy DisablePolicyType)

responseDescribeCreateAccountStatus :: DescribeCreateAccountStatusResponse -> TestTree
responseDescribeCreateAccountStatus =
  res
    "DescribeCreateAccountStatusResponse"
    "fixture/DescribeCreateAccountStatusResponse.proto"
    organizations
    (Proxy :: Proxy DescribeCreateAccountStatus)

responseListPolicies :: ListPoliciesResponse -> TestTree
responseListPolicies =
  res
    "ListPoliciesResponse"
    "fixture/ListPoliciesResponse.proto"
    organizations
    (Proxy :: Proxy ListPolicies)

responseListHandshakesForAccount :: ListHandshakesForAccountResponse -> TestTree
responseListHandshakesForAccount =
  res
    "ListHandshakesForAccountResponse"
    "fixture/ListHandshakesForAccountResponse.proto"
    organizations
    (Proxy :: Proxy ListHandshakesForAccount)

responseListChildren :: ListChildrenResponse -> TestTree
responseListChildren =
  res
    "ListChildrenResponse"
    "fixture/ListChildrenResponse.proto"
    organizations
    (Proxy :: Proxy ListChildren)

responseDeletePolicy :: DeletePolicyResponse -> TestTree
responseDeletePolicy =
  res
    "DeletePolicyResponse"
    "fixture/DeletePolicyResponse.proto"
    organizations
    (Proxy :: Proxy DeletePolicy)

responseEnablePolicyType :: EnablePolicyTypeResponse -> TestTree
responseEnablePolicyType =
  res
    "EnablePolicyTypeResponse"
    "fixture/EnablePolicyTypeResponse.proto"
    organizations
    (Proxy :: Proxy EnablePolicyType)

responseUpdatePolicy :: UpdatePolicyResponse -> TestTree
responseUpdatePolicy =
  res
    "UpdatePolicyResponse"
    "fixture/UpdatePolicyResponse.proto"
    organizations
    (Proxy :: Proxy UpdatePolicy)

responseListAWSServiceAccessForOrganization :: ListAWSServiceAccessForOrganizationResponse -> TestTree
responseListAWSServiceAccessForOrganization =
  res
    "ListAWSServiceAccessForOrganizationResponse"
    "fixture/ListAWSServiceAccessForOrganizationResponse.proto"
    organizations
    (Proxy :: Proxy ListAWSServiceAccessForOrganization)

responseDescribeOrganization :: DescribeOrganizationResponse -> TestTree
responseDescribeOrganization =
  res
    "DescribeOrganizationResponse"
    "fixture/DescribeOrganizationResponse.proto"
    organizations
    (Proxy :: Proxy DescribeOrganization)

responseListCreateAccountStatus :: ListCreateAccountStatusResponse -> TestTree
responseListCreateAccountStatus =
  res
    "ListCreateAccountStatusResponse"
    "fixture/ListCreateAccountStatusResponse.proto"
    organizations
    (Proxy :: Proxy ListCreateAccountStatus)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    organizations
    (Proxy :: Proxy UntagResource)

responseListAccounts :: ListAccountsResponse -> TestTree
responseListAccounts =
  res
    "ListAccountsResponse"
    "fixture/ListAccountsResponse.proto"
    organizations
    (Proxy :: Proxy ListAccounts)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    organizations
    (Proxy :: Proxy TagResource)

responseEnableAWSServiceAccess :: EnableAWSServiceAccessResponse -> TestTree
responseEnableAWSServiceAccess =
  res
    "EnableAWSServiceAccessResponse"
    "fixture/EnableAWSServiceAccessResponse.proto"
    organizations
    (Proxy :: Proxy EnableAWSServiceAccess)

responseDescribeOrganizationalUnit :: DescribeOrganizationalUnitResponse -> TestTree
responseDescribeOrganizationalUnit =
  res
    "DescribeOrganizationalUnitResponse"
    "fixture/DescribeOrganizationalUnitResponse.proto"
    organizations
    (Proxy :: Proxy DescribeOrganizationalUnit)

responseListDelegatedServicesForAccount :: ListDelegatedServicesForAccountResponse -> TestTree
responseListDelegatedServicesForAccount =
  res
    "ListDelegatedServicesForAccountResponse"
    "fixture/ListDelegatedServicesForAccountResponse.proto"
    organizations
    (Proxy :: Proxy ListDelegatedServicesForAccount)

responseRemoveAccountFromOrganization :: RemoveAccountFromOrganizationResponse -> TestTree
responseRemoveAccountFromOrganization =
  res
    "RemoveAccountFromOrganizationResponse"
    "fixture/RemoveAccountFromOrganizationResponse.proto"
    organizations
    (Proxy :: Proxy RemoveAccountFromOrganization)

responseCreateGovCloudAccount :: CreateGovCloudAccountResponse -> TestTree
responseCreateGovCloudAccount =
  res
    "CreateGovCloudAccountResponse"
    "fixture/CreateGovCloudAccountResponse.proto"
    organizations
    (Proxy :: Proxy CreateGovCloudAccount)

responseDeleteOrganization :: DeleteOrganizationResponse -> TestTree
responseDeleteOrganization =
  res
    "DeleteOrganizationResponse"
    "fixture/DeleteOrganizationResponse.proto"
    organizations
    (Proxy :: Proxy DeleteOrganization)

responseListRoots :: ListRootsResponse -> TestTree
responseListRoots =
  res
    "ListRootsResponse"
    "fixture/ListRootsResponse.proto"
    organizations
    (Proxy :: Proxy ListRoots)

responseEnableAllFeatures :: EnableAllFeaturesResponse -> TestTree
responseEnableAllFeatures =
  res
    "EnableAllFeaturesResponse"
    "fixture/EnableAllFeaturesResponse.proto"
    organizations
    (Proxy :: Proxy EnableAllFeatures)

responseAcceptHandshake :: AcceptHandshakeResponse -> TestTree
responseAcceptHandshake =
  res
    "AcceptHandshakeResponse"
    "fixture/AcceptHandshakeResponse.proto"
    organizations
    (Proxy :: Proxy AcceptHandshake)

responseDetachPolicy :: DetachPolicyResponse -> TestTree
responseDetachPolicy =
  res
    "DetachPolicyResponse"
    "fixture/DetachPolicyResponse.proto"
    organizations
    (Proxy :: Proxy DetachPolicy)

responseCreateOrganizationalUnit :: CreateOrganizationalUnitResponse -> TestTree
responseCreateOrganizationalUnit =
  res
    "CreateOrganizationalUnitResponse"
    "fixture/CreateOrganizationalUnitResponse.proto"
    organizations
    (Proxy :: Proxy CreateOrganizationalUnit)

responseDescribeAccount :: DescribeAccountResponse -> TestTree
responseDescribeAccount =
  res
    "DescribeAccountResponse"
    "fixture/DescribeAccountResponse.proto"
    organizations
    (Proxy :: Proxy DescribeAccount)

responseListDelegatedAdministrators :: ListDelegatedAdministratorsResponse -> TestTree
responseListDelegatedAdministrators =
  res
    "ListDelegatedAdministratorsResponse"
    "fixture/ListDelegatedAdministratorsResponse.proto"
    organizations
    (Proxy :: Proxy ListDelegatedAdministrators)

responseUpdateOrganizationalUnit :: UpdateOrganizationalUnitResponse -> TestTree
responseUpdateOrganizationalUnit =
  res
    "UpdateOrganizationalUnitResponse"
    "fixture/UpdateOrganizationalUnitResponse.proto"
    organizations
    (Proxy :: Proxy UpdateOrganizationalUnit)

responseDeleteOrganizationalUnit :: DeleteOrganizationalUnitResponse -> TestTree
responseDeleteOrganizationalUnit =
  res
    "DeleteOrganizationalUnitResponse"
    "fixture/DeleteOrganizationalUnitResponse.proto"
    organizations
    (Proxy :: Proxy DeleteOrganizationalUnit)

responseCancelHandshake :: CancelHandshakeResponse -> TestTree
responseCancelHandshake =
  res
    "CancelHandshakeResponse"
    "fixture/CancelHandshakeResponse.proto"
    organizations
    (Proxy :: Proxy CancelHandshake)

responseRegisterDelegatedAdministrator :: RegisterDelegatedAdministratorResponse -> TestTree
responseRegisterDelegatedAdministrator =
  res
    "RegisterDelegatedAdministratorResponse"
    "fixture/RegisterDelegatedAdministratorResponse.proto"
    organizations
    (Proxy :: Proxy RegisterDelegatedAdministrator)

responseListHandshakesForOrganization :: ListHandshakesForOrganizationResponse -> TestTree
responseListHandshakesForOrganization =
  res
    "ListHandshakesForOrganizationResponse"
    "fixture/ListHandshakesForOrganizationResponse.proto"
    organizations
    (Proxy :: Proxy ListHandshakesForOrganization)

responseListPoliciesForTarget :: ListPoliciesForTargetResponse -> TestTree
responseListPoliciesForTarget =
  res
    "ListPoliciesForTargetResponse"
    "fixture/ListPoliciesForTargetResponse.proto"
    organizations
    (Proxy :: Proxy ListPoliciesForTarget)

responseListOrganizationalUnitsForParent :: ListOrganizationalUnitsForParentResponse -> TestTree
responseListOrganizationalUnitsForParent =
  res
    "ListOrganizationalUnitsForParentResponse"
    "fixture/ListOrganizationalUnitsForParentResponse.proto"
    organizations
    (Proxy :: Proxy ListOrganizationalUnitsForParent)

responseListTargetsForPolicy :: ListTargetsForPolicyResponse -> TestTree
responseListTargetsForPolicy =
  res
    "ListTargetsForPolicyResponse"
    "fixture/ListTargetsForPolicyResponse.proto"
    organizations
    (Proxy :: Proxy ListTargetsForPolicy)

responseAttachPolicy :: AttachPolicyResponse -> TestTree
responseAttachPolicy =
  res
    "AttachPolicyResponse"
    "fixture/AttachPolicyResponse.proto"
    organizations
    (Proxy :: Proxy AttachPolicy)

responseDeclineHandshake :: DeclineHandshakeResponse -> TestTree
responseDeclineHandshake =
  res
    "DeclineHandshakeResponse"
    "fixture/DeclineHandshakeResponse.proto"
    organizations
    (Proxy :: Proxy DeclineHandshake)

responseDescribeEffectivePolicy :: DescribeEffectivePolicyResponse -> TestTree
responseDescribeEffectivePolicy =
  res
    "DescribeEffectivePolicyResponse"
    "fixture/DescribeEffectivePolicyResponse.proto"
    organizations
    (Proxy :: Proxy DescribeEffectivePolicy)

responseDeregisterDelegatedAdministrator :: DeregisterDelegatedAdministratorResponse -> TestTree
responseDeregisterDelegatedAdministrator =
  res
    "DeregisterDelegatedAdministratorResponse"
    "fixture/DeregisterDelegatedAdministratorResponse.proto"
    organizations
    (Proxy :: Proxy DeregisterDelegatedAdministrator)

responseMoveAccount :: MoveAccountResponse -> TestTree
responseMoveAccount =
  res
    "MoveAccountResponse"
    "fixture/MoveAccountResponse.proto"
    organizations
    (Proxy :: Proxy MoveAccount)

responseInviteAccountToOrganization :: InviteAccountToOrganizationResponse -> TestTree
responseInviteAccountToOrganization =
  res
    "InviteAccountToOrganizationResponse"
    "fixture/InviteAccountToOrganizationResponse.proto"
    organizations
    (Proxy :: Proxy InviteAccountToOrganization)

responseLeaveOrganization :: LeaveOrganizationResponse -> TestTree
responseLeaveOrganization =
  res
    "LeaveOrganizationResponse"
    "fixture/LeaveOrganizationResponse.proto"
    organizations
    (Proxy :: Proxy LeaveOrganization)

responseDisableAWSServiceAccess :: DisableAWSServiceAccessResponse -> TestTree
responseDisableAWSServiceAccess =
  res
    "DisableAWSServiceAccessResponse"
    "fixture/DisableAWSServiceAccessResponse.proto"
    organizations
    (Proxy :: Proxy DisableAWSServiceAccess)

responseListParents :: ListParentsResponse -> TestTree
responseListParents =
  res
    "ListParentsResponse"
    "fixture/ListParentsResponse.proto"
    organizations
    (Proxy :: Proxy ListParents)

responseDescribePolicy :: DescribePolicyResponse -> TestTree
responseDescribePolicy =
  res
    "DescribePolicyResponse"
    "fixture/DescribePolicyResponse.proto"
    organizations
    (Proxy :: Proxy DescribePolicy)

responseCreateAccount :: CreateAccountResponse -> TestTree
responseCreateAccount =
  res
    "CreateAccountResponse"
    "fixture/CreateAccountResponse.proto"
    organizations
    (Proxy :: Proxy CreateAccount)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    organizations
    (Proxy :: Proxy ListTagsForResource)

responseDescribeHandshake :: DescribeHandshakeResponse -> TestTree
responseDescribeHandshake =
  res
    "DescribeHandshakeResponse"
    "fixture/DescribeHandshakeResponse.proto"
    organizations
    (Proxy :: Proxy DescribeHandshake)
