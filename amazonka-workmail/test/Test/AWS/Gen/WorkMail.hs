{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.WorkMail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.WorkMail where

import Data.Proxy
import Network.AWS.WorkMail
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.WorkMail.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCreateOrganization $
--             createOrganization
--
--         , requestDeleteAlias $
--             deleteAlias
--
--         , requestStartMailboxExportJob $
--             startMailboxExportJob
--
--         , requestDescribeResource $
--             describeResource
--
--         , requestListResourceDelegates $
--             listResourceDelegates
--
--         , requestDeleteAccessControlRule $
--             deleteAccessControlRule
--
--         , requestDisassociateDelegateFromResource $
--             disassociateDelegateFromResource
--
--         , requestGetDefaultRetentionPolicy $
--             getDefaultRetentionPolicy
--
--         , requestListGroups $
--             listGroups
--
--         , requestListMailboxExportJobs $
--             listMailboxExportJobs
--
--         , requestDescribeOrganization $
--             describeOrganization
--
--         , requestCreateResource $
--             createResource
--
--         , requestUpdateResource $
--             updateResource
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDeleteResource $
--             deleteResource
--
--         , requestCreateGroup $
--             createGroup
--
--         , requestTagResource $
--             tagResource
--
--         , requestAssociateMemberToGroup $
--             associateMemberToGroup
--
--         , requestCreateUser $
--             createUser
--
--         , requestPutRetentionPolicy $
--             putRetentionPolicy
--
--         , requestPutMailboxPermissions $
--             putMailboxPermissions
--
--         , requestAssociateDelegateToResource $
--             associateDelegateToResource
--
--         , requestRegisterToWorkMail $
--             registerToWorkMail
--
--         , requestDeleteOrganization $
--             deleteOrganization
--
--         , requestDescribeMailboxExportJob $
--             describeMailboxExportJob
--
--         , requestListOrganizations $
--             listOrganizations
--
--         , requestUpdatePrimaryEmailAddress $
--             updatePrimaryEmailAddress
--
--         , requestListAccessControlRules $
--             listAccessControlRules
--
--         , requestPutAccessControlRule $
--             putAccessControlRule
--
--         , requestDescribeUser $
--             describeUser
--
--         , requestCancelMailboxExportJob $
--             cancelMailboxExportJob
--
--         , requestDeregisterFromWorkMail $
--             deregisterFromWorkMail
--
--         , requestListGroupMembers $
--             listGroupMembers
--
--         , requestDeleteGroup $
--             deleteGroup
--
--         , requestListMailboxPermissions $
--             listMailboxPermissions
--
--         , requestDisassociateMemberFromGroup $
--             disassociateMemberFromGroup
--
--         , requestUpdateMailboxQuota $
--             updateMailboxQuota
--
--         , requestListResources $
--             listResources
--
--         , requestDeleteUser $
--             deleteUser
--
--         , requestListUsers $
--             listUsers
--
--         , requestGetMailboxDetails $
--             getMailboxDetails
--
--         , requestDeleteMailboxPermissions $
--             deleteMailboxPermissions
--
--         , requestDeleteRetentionPolicy $
--             deleteRetentionPolicy
--
--         , requestDescribeGroup $
--             describeGroup
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestCreateAlias $
--             createAlias
--
--         , requestGetAccessControlEffect $
--             getAccessControlEffect
--
--         , requestListAliases $
--             listAliases
--
--         , requestResetPassword $
--             resetPassword
--
--           ]

--     , testGroup "response"
--         [ responseCreateOrganization $
--             createOrganizationResponse
--
--         , responseDeleteAlias $
--             deleteAliasResponse
--
--         , responseStartMailboxExportJob $
--             startMailboxExportJobResponse
--
--         , responseDescribeResource $
--             describeResourceResponse
--
--         , responseListResourceDelegates $
--             listResourceDelegatesResponse
--
--         , responseDeleteAccessControlRule $
--             deleteAccessControlRuleResponse
--
--         , responseDisassociateDelegateFromResource $
--             disassociateDelegateFromResourceResponse
--
--         , responseGetDefaultRetentionPolicy $
--             getDefaultRetentionPolicyResponse
--
--         , responseListGroups $
--             listGroupsResponse
--
--         , responseListMailboxExportJobs $
--             listMailboxExportJobsResponse
--
--         , responseDescribeOrganization $
--             describeOrganizationResponse
--
--         , responseCreateResource $
--             createResourceResponse
--
--         , responseUpdateResource $
--             updateResourceResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDeleteResource $
--             deleteResourceResponse
--
--         , responseCreateGroup $
--             createGroupResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseAssociateMemberToGroup $
--             associateMemberToGroupResponse
--
--         , responseCreateUser $
--             createUserResponse
--
--         , responsePutRetentionPolicy $
--             putRetentionPolicyResponse
--
--         , responsePutMailboxPermissions $
--             putMailboxPermissionsResponse
--
--         , responseAssociateDelegateToResource $
--             associateDelegateToResourceResponse
--
--         , responseRegisterToWorkMail $
--             registerToWorkMailResponse
--
--         , responseDeleteOrganization $
--             deleteOrganizationResponse
--
--         , responseDescribeMailboxExportJob $
--             describeMailboxExportJobResponse
--
--         , responseListOrganizations $
--             listOrganizationsResponse
--
--         , responseUpdatePrimaryEmailAddress $
--             updatePrimaryEmailAddressResponse
--
--         , responseListAccessControlRules $
--             listAccessControlRulesResponse
--
--         , responsePutAccessControlRule $
--             putAccessControlRuleResponse
--
--         , responseDescribeUser $
--             describeUserResponse
--
--         , responseCancelMailboxExportJob $
--             cancelMailboxExportJobResponse
--
--         , responseDeregisterFromWorkMail $
--             deregisterFromWorkMailResponse
--
--         , responseListGroupMembers $
--             listGroupMembersResponse
--
--         , responseDeleteGroup $
--             deleteGroupResponse
--
--         , responseListMailboxPermissions $
--             listMailboxPermissionsResponse
--
--         , responseDisassociateMemberFromGroup $
--             disassociateMemberFromGroupResponse
--
--         , responseUpdateMailboxQuota $
--             updateMailboxQuotaResponse
--
--         , responseListResources $
--             listResourcesResponse
--
--         , responseDeleteUser $
--             deleteUserResponse
--
--         , responseListUsers $
--             listUsersResponse
--
--         , responseGetMailboxDetails $
--             getMailboxDetailsResponse
--
--         , responseDeleteMailboxPermissions $
--             deleteMailboxPermissionsResponse
--
--         , responseDeleteRetentionPolicy $
--             deleteRetentionPolicyResponse
--
--         , responseDescribeGroup $
--             describeGroupResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseCreateAlias $
--             createAliasResponse
--
--         , responseGetAccessControlEffect $
--             getAccessControlEffectResponse
--
--         , responseListAliases $
--             listAliasesResponse
--
--         , responseResetPassword $
--             resetPasswordResponse
--
--           ]
--     ]

-- Requests

requestCreateOrganization :: CreateOrganization -> TestTree
requestCreateOrganization =
  req
    "CreateOrganization"
    "fixture/CreateOrganization.yaml"

requestDeleteAlias :: DeleteAlias -> TestTree
requestDeleteAlias =
  req
    "DeleteAlias"
    "fixture/DeleteAlias.yaml"

requestStartMailboxExportJob :: StartMailboxExportJob -> TestTree
requestStartMailboxExportJob =
  req
    "StartMailboxExportJob"
    "fixture/StartMailboxExportJob.yaml"

requestDescribeResource :: DescribeResource -> TestTree
requestDescribeResource =
  req
    "DescribeResource"
    "fixture/DescribeResource.yaml"

requestListResourceDelegates :: ListResourceDelegates -> TestTree
requestListResourceDelegates =
  req
    "ListResourceDelegates"
    "fixture/ListResourceDelegates.yaml"

requestDeleteAccessControlRule :: DeleteAccessControlRule -> TestTree
requestDeleteAccessControlRule =
  req
    "DeleteAccessControlRule"
    "fixture/DeleteAccessControlRule.yaml"

requestDisassociateDelegateFromResource :: DisassociateDelegateFromResource -> TestTree
requestDisassociateDelegateFromResource =
  req
    "DisassociateDelegateFromResource"
    "fixture/DisassociateDelegateFromResource.yaml"

requestGetDefaultRetentionPolicy :: GetDefaultRetentionPolicy -> TestTree
requestGetDefaultRetentionPolicy =
  req
    "GetDefaultRetentionPolicy"
    "fixture/GetDefaultRetentionPolicy.yaml"

requestListGroups :: ListGroups -> TestTree
requestListGroups =
  req
    "ListGroups"
    "fixture/ListGroups.yaml"

requestListMailboxExportJobs :: ListMailboxExportJobs -> TestTree
requestListMailboxExportJobs =
  req
    "ListMailboxExportJobs"
    "fixture/ListMailboxExportJobs.yaml"

requestDescribeOrganization :: DescribeOrganization -> TestTree
requestDescribeOrganization =
  req
    "DescribeOrganization"
    "fixture/DescribeOrganization.yaml"

requestCreateResource :: CreateResource -> TestTree
requestCreateResource =
  req
    "CreateResource"
    "fixture/CreateResource.yaml"

requestUpdateResource :: UpdateResource -> TestTree
requestUpdateResource =
  req
    "UpdateResource"
    "fixture/UpdateResource.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDeleteResource :: DeleteResource -> TestTree
requestDeleteResource =
  req
    "DeleteResource"
    "fixture/DeleteResource.yaml"

requestCreateGroup :: CreateGroup -> TestTree
requestCreateGroup =
  req
    "CreateGroup"
    "fixture/CreateGroup.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestAssociateMemberToGroup :: AssociateMemberToGroup -> TestTree
requestAssociateMemberToGroup =
  req
    "AssociateMemberToGroup"
    "fixture/AssociateMemberToGroup.yaml"

requestCreateUser :: CreateUser -> TestTree
requestCreateUser =
  req
    "CreateUser"
    "fixture/CreateUser.yaml"

requestPutRetentionPolicy :: PutRetentionPolicy -> TestTree
requestPutRetentionPolicy =
  req
    "PutRetentionPolicy"
    "fixture/PutRetentionPolicy.yaml"

requestPutMailboxPermissions :: PutMailboxPermissions -> TestTree
requestPutMailboxPermissions =
  req
    "PutMailboxPermissions"
    "fixture/PutMailboxPermissions.yaml"

requestAssociateDelegateToResource :: AssociateDelegateToResource -> TestTree
requestAssociateDelegateToResource =
  req
    "AssociateDelegateToResource"
    "fixture/AssociateDelegateToResource.yaml"

requestRegisterToWorkMail :: RegisterToWorkMail -> TestTree
requestRegisterToWorkMail =
  req
    "RegisterToWorkMail"
    "fixture/RegisterToWorkMail.yaml"

requestDeleteOrganization :: DeleteOrganization -> TestTree
requestDeleteOrganization =
  req
    "DeleteOrganization"
    "fixture/DeleteOrganization.yaml"

requestDescribeMailboxExportJob :: DescribeMailboxExportJob -> TestTree
requestDescribeMailboxExportJob =
  req
    "DescribeMailboxExportJob"
    "fixture/DescribeMailboxExportJob.yaml"

requestListOrganizations :: ListOrganizations -> TestTree
requestListOrganizations =
  req
    "ListOrganizations"
    "fixture/ListOrganizations.yaml"

requestUpdatePrimaryEmailAddress :: UpdatePrimaryEmailAddress -> TestTree
requestUpdatePrimaryEmailAddress =
  req
    "UpdatePrimaryEmailAddress"
    "fixture/UpdatePrimaryEmailAddress.yaml"

requestListAccessControlRules :: ListAccessControlRules -> TestTree
requestListAccessControlRules =
  req
    "ListAccessControlRules"
    "fixture/ListAccessControlRules.yaml"

requestPutAccessControlRule :: PutAccessControlRule -> TestTree
requestPutAccessControlRule =
  req
    "PutAccessControlRule"
    "fixture/PutAccessControlRule.yaml"

requestDescribeUser :: DescribeUser -> TestTree
requestDescribeUser =
  req
    "DescribeUser"
    "fixture/DescribeUser.yaml"

requestCancelMailboxExportJob :: CancelMailboxExportJob -> TestTree
requestCancelMailboxExportJob =
  req
    "CancelMailboxExportJob"
    "fixture/CancelMailboxExportJob.yaml"

requestDeregisterFromWorkMail :: DeregisterFromWorkMail -> TestTree
requestDeregisterFromWorkMail =
  req
    "DeregisterFromWorkMail"
    "fixture/DeregisterFromWorkMail.yaml"

requestListGroupMembers :: ListGroupMembers -> TestTree
requestListGroupMembers =
  req
    "ListGroupMembers"
    "fixture/ListGroupMembers.yaml"

requestDeleteGroup :: DeleteGroup -> TestTree
requestDeleteGroup =
  req
    "DeleteGroup"
    "fixture/DeleteGroup.yaml"

requestListMailboxPermissions :: ListMailboxPermissions -> TestTree
requestListMailboxPermissions =
  req
    "ListMailboxPermissions"
    "fixture/ListMailboxPermissions.yaml"

requestDisassociateMemberFromGroup :: DisassociateMemberFromGroup -> TestTree
requestDisassociateMemberFromGroup =
  req
    "DisassociateMemberFromGroup"
    "fixture/DisassociateMemberFromGroup.yaml"

requestUpdateMailboxQuota :: UpdateMailboxQuota -> TestTree
requestUpdateMailboxQuota =
  req
    "UpdateMailboxQuota"
    "fixture/UpdateMailboxQuota.yaml"

requestListResources :: ListResources -> TestTree
requestListResources =
  req
    "ListResources"
    "fixture/ListResources.yaml"

requestDeleteUser :: DeleteUser -> TestTree
requestDeleteUser =
  req
    "DeleteUser"
    "fixture/DeleteUser.yaml"

requestListUsers :: ListUsers -> TestTree
requestListUsers =
  req
    "ListUsers"
    "fixture/ListUsers.yaml"

requestGetMailboxDetails :: GetMailboxDetails -> TestTree
requestGetMailboxDetails =
  req
    "GetMailboxDetails"
    "fixture/GetMailboxDetails.yaml"

requestDeleteMailboxPermissions :: DeleteMailboxPermissions -> TestTree
requestDeleteMailboxPermissions =
  req
    "DeleteMailboxPermissions"
    "fixture/DeleteMailboxPermissions.yaml"

requestDeleteRetentionPolicy :: DeleteRetentionPolicy -> TestTree
requestDeleteRetentionPolicy =
  req
    "DeleteRetentionPolicy"
    "fixture/DeleteRetentionPolicy.yaml"

requestDescribeGroup :: DescribeGroup -> TestTree
requestDescribeGroup =
  req
    "DescribeGroup"
    "fixture/DescribeGroup.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestCreateAlias :: CreateAlias -> TestTree
requestCreateAlias =
  req
    "CreateAlias"
    "fixture/CreateAlias.yaml"

requestGetAccessControlEffect :: GetAccessControlEffect -> TestTree
requestGetAccessControlEffect =
  req
    "GetAccessControlEffect"
    "fixture/GetAccessControlEffect.yaml"

requestListAliases :: ListAliases -> TestTree
requestListAliases =
  req
    "ListAliases"
    "fixture/ListAliases.yaml"

requestResetPassword :: ResetPassword -> TestTree
requestResetPassword =
  req
    "ResetPassword"
    "fixture/ResetPassword.yaml"

-- Responses

responseCreateOrganization :: CreateOrganizationResponse -> TestTree
responseCreateOrganization =
  res
    "CreateOrganizationResponse"
    "fixture/CreateOrganizationResponse.proto"
    workMail
    (Proxy :: Proxy CreateOrganization)

responseDeleteAlias :: DeleteAliasResponse -> TestTree
responseDeleteAlias =
  res
    "DeleteAliasResponse"
    "fixture/DeleteAliasResponse.proto"
    workMail
    (Proxy :: Proxy DeleteAlias)

responseStartMailboxExportJob :: StartMailboxExportJobResponse -> TestTree
responseStartMailboxExportJob =
  res
    "StartMailboxExportJobResponse"
    "fixture/StartMailboxExportJobResponse.proto"
    workMail
    (Proxy :: Proxy StartMailboxExportJob)

responseDescribeResource :: DescribeResourceResponse -> TestTree
responseDescribeResource =
  res
    "DescribeResourceResponse"
    "fixture/DescribeResourceResponse.proto"
    workMail
    (Proxy :: Proxy DescribeResource)

responseListResourceDelegates :: ListResourceDelegatesResponse -> TestTree
responseListResourceDelegates =
  res
    "ListResourceDelegatesResponse"
    "fixture/ListResourceDelegatesResponse.proto"
    workMail
    (Proxy :: Proxy ListResourceDelegates)

responseDeleteAccessControlRule :: DeleteAccessControlRuleResponse -> TestTree
responseDeleteAccessControlRule =
  res
    "DeleteAccessControlRuleResponse"
    "fixture/DeleteAccessControlRuleResponse.proto"
    workMail
    (Proxy :: Proxy DeleteAccessControlRule)

responseDisassociateDelegateFromResource :: DisassociateDelegateFromResourceResponse -> TestTree
responseDisassociateDelegateFromResource =
  res
    "DisassociateDelegateFromResourceResponse"
    "fixture/DisassociateDelegateFromResourceResponse.proto"
    workMail
    (Proxy :: Proxy DisassociateDelegateFromResource)

responseGetDefaultRetentionPolicy :: GetDefaultRetentionPolicyResponse -> TestTree
responseGetDefaultRetentionPolicy =
  res
    "GetDefaultRetentionPolicyResponse"
    "fixture/GetDefaultRetentionPolicyResponse.proto"
    workMail
    (Proxy :: Proxy GetDefaultRetentionPolicy)

responseListGroups :: ListGroupsResponse -> TestTree
responseListGroups =
  res
    "ListGroupsResponse"
    "fixture/ListGroupsResponse.proto"
    workMail
    (Proxy :: Proxy ListGroups)

responseListMailboxExportJobs :: ListMailboxExportJobsResponse -> TestTree
responseListMailboxExportJobs =
  res
    "ListMailboxExportJobsResponse"
    "fixture/ListMailboxExportJobsResponse.proto"
    workMail
    (Proxy :: Proxy ListMailboxExportJobs)

responseDescribeOrganization :: DescribeOrganizationResponse -> TestTree
responseDescribeOrganization =
  res
    "DescribeOrganizationResponse"
    "fixture/DescribeOrganizationResponse.proto"
    workMail
    (Proxy :: Proxy DescribeOrganization)

responseCreateResource :: CreateResourceResponse -> TestTree
responseCreateResource =
  res
    "CreateResourceResponse"
    "fixture/CreateResourceResponse.proto"
    workMail
    (Proxy :: Proxy CreateResource)

responseUpdateResource :: UpdateResourceResponse -> TestTree
responseUpdateResource =
  res
    "UpdateResourceResponse"
    "fixture/UpdateResourceResponse.proto"
    workMail
    (Proxy :: Proxy UpdateResource)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    workMail
    (Proxy :: Proxy UntagResource)

responseDeleteResource :: DeleteResourceResponse -> TestTree
responseDeleteResource =
  res
    "DeleteResourceResponse"
    "fixture/DeleteResourceResponse.proto"
    workMail
    (Proxy :: Proxy DeleteResource)

responseCreateGroup :: CreateGroupResponse -> TestTree
responseCreateGroup =
  res
    "CreateGroupResponse"
    "fixture/CreateGroupResponse.proto"
    workMail
    (Proxy :: Proxy CreateGroup)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    workMail
    (Proxy :: Proxy TagResource)

responseAssociateMemberToGroup :: AssociateMemberToGroupResponse -> TestTree
responseAssociateMemberToGroup =
  res
    "AssociateMemberToGroupResponse"
    "fixture/AssociateMemberToGroupResponse.proto"
    workMail
    (Proxy :: Proxy AssociateMemberToGroup)

responseCreateUser :: CreateUserResponse -> TestTree
responseCreateUser =
  res
    "CreateUserResponse"
    "fixture/CreateUserResponse.proto"
    workMail
    (Proxy :: Proxy CreateUser)

responsePutRetentionPolicy :: PutRetentionPolicyResponse -> TestTree
responsePutRetentionPolicy =
  res
    "PutRetentionPolicyResponse"
    "fixture/PutRetentionPolicyResponse.proto"
    workMail
    (Proxy :: Proxy PutRetentionPolicy)

responsePutMailboxPermissions :: PutMailboxPermissionsResponse -> TestTree
responsePutMailboxPermissions =
  res
    "PutMailboxPermissionsResponse"
    "fixture/PutMailboxPermissionsResponse.proto"
    workMail
    (Proxy :: Proxy PutMailboxPermissions)

responseAssociateDelegateToResource :: AssociateDelegateToResourceResponse -> TestTree
responseAssociateDelegateToResource =
  res
    "AssociateDelegateToResourceResponse"
    "fixture/AssociateDelegateToResourceResponse.proto"
    workMail
    (Proxy :: Proxy AssociateDelegateToResource)

responseRegisterToWorkMail :: RegisterToWorkMailResponse -> TestTree
responseRegisterToWorkMail =
  res
    "RegisterToWorkMailResponse"
    "fixture/RegisterToWorkMailResponse.proto"
    workMail
    (Proxy :: Proxy RegisterToWorkMail)

responseDeleteOrganization :: DeleteOrganizationResponse -> TestTree
responseDeleteOrganization =
  res
    "DeleteOrganizationResponse"
    "fixture/DeleteOrganizationResponse.proto"
    workMail
    (Proxy :: Proxy DeleteOrganization)

responseDescribeMailboxExportJob :: DescribeMailboxExportJobResponse -> TestTree
responseDescribeMailboxExportJob =
  res
    "DescribeMailboxExportJobResponse"
    "fixture/DescribeMailboxExportJobResponse.proto"
    workMail
    (Proxy :: Proxy DescribeMailboxExportJob)

responseListOrganizations :: ListOrganizationsResponse -> TestTree
responseListOrganizations =
  res
    "ListOrganizationsResponse"
    "fixture/ListOrganizationsResponse.proto"
    workMail
    (Proxy :: Proxy ListOrganizations)

responseUpdatePrimaryEmailAddress :: UpdatePrimaryEmailAddressResponse -> TestTree
responseUpdatePrimaryEmailAddress =
  res
    "UpdatePrimaryEmailAddressResponse"
    "fixture/UpdatePrimaryEmailAddressResponse.proto"
    workMail
    (Proxy :: Proxy UpdatePrimaryEmailAddress)

responseListAccessControlRules :: ListAccessControlRulesResponse -> TestTree
responseListAccessControlRules =
  res
    "ListAccessControlRulesResponse"
    "fixture/ListAccessControlRulesResponse.proto"
    workMail
    (Proxy :: Proxy ListAccessControlRules)

responsePutAccessControlRule :: PutAccessControlRuleResponse -> TestTree
responsePutAccessControlRule =
  res
    "PutAccessControlRuleResponse"
    "fixture/PutAccessControlRuleResponse.proto"
    workMail
    (Proxy :: Proxy PutAccessControlRule)

responseDescribeUser :: DescribeUserResponse -> TestTree
responseDescribeUser =
  res
    "DescribeUserResponse"
    "fixture/DescribeUserResponse.proto"
    workMail
    (Proxy :: Proxy DescribeUser)

responseCancelMailboxExportJob :: CancelMailboxExportJobResponse -> TestTree
responseCancelMailboxExportJob =
  res
    "CancelMailboxExportJobResponse"
    "fixture/CancelMailboxExportJobResponse.proto"
    workMail
    (Proxy :: Proxy CancelMailboxExportJob)

responseDeregisterFromWorkMail :: DeregisterFromWorkMailResponse -> TestTree
responseDeregisterFromWorkMail =
  res
    "DeregisterFromWorkMailResponse"
    "fixture/DeregisterFromWorkMailResponse.proto"
    workMail
    (Proxy :: Proxy DeregisterFromWorkMail)

responseListGroupMembers :: ListGroupMembersResponse -> TestTree
responseListGroupMembers =
  res
    "ListGroupMembersResponse"
    "fixture/ListGroupMembersResponse.proto"
    workMail
    (Proxy :: Proxy ListGroupMembers)

responseDeleteGroup :: DeleteGroupResponse -> TestTree
responseDeleteGroup =
  res
    "DeleteGroupResponse"
    "fixture/DeleteGroupResponse.proto"
    workMail
    (Proxy :: Proxy DeleteGroup)

responseListMailboxPermissions :: ListMailboxPermissionsResponse -> TestTree
responseListMailboxPermissions =
  res
    "ListMailboxPermissionsResponse"
    "fixture/ListMailboxPermissionsResponse.proto"
    workMail
    (Proxy :: Proxy ListMailboxPermissions)

responseDisassociateMemberFromGroup :: DisassociateMemberFromGroupResponse -> TestTree
responseDisassociateMemberFromGroup =
  res
    "DisassociateMemberFromGroupResponse"
    "fixture/DisassociateMemberFromGroupResponse.proto"
    workMail
    (Proxy :: Proxy DisassociateMemberFromGroup)

responseUpdateMailboxQuota :: UpdateMailboxQuotaResponse -> TestTree
responseUpdateMailboxQuota =
  res
    "UpdateMailboxQuotaResponse"
    "fixture/UpdateMailboxQuotaResponse.proto"
    workMail
    (Proxy :: Proxy UpdateMailboxQuota)

responseListResources :: ListResourcesResponse -> TestTree
responseListResources =
  res
    "ListResourcesResponse"
    "fixture/ListResourcesResponse.proto"
    workMail
    (Proxy :: Proxy ListResources)

responseDeleteUser :: DeleteUserResponse -> TestTree
responseDeleteUser =
  res
    "DeleteUserResponse"
    "fixture/DeleteUserResponse.proto"
    workMail
    (Proxy :: Proxy DeleteUser)

responseListUsers :: ListUsersResponse -> TestTree
responseListUsers =
  res
    "ListUsersResponse"
    "fixture/ListUsersResponse.proto"
    workMail
    (Proxy :: Proxy ListUsers)

responseGetMailboxDetails :: GetMailboxDetailsResponse -> TestTree
responseGetMailboxDetails =
  res
    "GetMailboxDetailsResponse"
    "fixture/GetMailboxDetailsResponse.proto"
    workMail
    (Proxy :: Proxy GetMailboxDetails)

responseDeleteMailboxPermissions :: DeleteMailboxPermissionsResponse -> TestTree
responseDeleteMailboxPermissions =
  res
    "DeleteMailboxPermissionsResponse"
    "fixture/DeleteMailboxPermissionsResponse.proto"
    workMail
    (Proxy :: Proxy DeleteMailboxPermissions)

responseDeleteRetentionPolicy :: DeleteRetentionPolicyResponse -> TestTree
responseDeleteRetentionPolicy =
  res
    "DeleteRetentionPolicyResponse"
    "fixture/DeleteRetentionPolicyResponse.proto"
    workMail
    (Proxy :: Proxy DeleteRetentionPolicy)

responseDescribeGroup :: DescribeGroupResponse -> TestTree
responseDescribeGroup =
  res
    "DescribeGroupResponse"
    "fixture/DescribeGroupResponse.proto"
    workMail
    (Proxy :: Proxy DescribeGroup)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    workMail
    (Proxy :: Proxy ListTagsForResource)

responseCreateAlias :: CreateAliasResponse -> TestTree
responseCreateAlias =
  res
    "CreateAliasResponse"
    "fixture/CreateAliasResponse.proto"
    workMail
    (Proxy :: Proxy CreateAlias)

responseGetAccessControlEffect :: GetAccessControlEffectResponse -> TestTree
responseGetAccessControlEffect =
  res
    "GetAccessControlEffectResponse"
    "fixture/GetAccessControlEffectResponse.proto"
    workMail
    (Proxy :: Proxy GetAccessControlEffect)

responseListAliases :: ListAliasesResponse -> TestTree
responseListAliases =
  res
    "ListAliasesResponse"
    "fixture/ListAliasesResponse.proto"
    workMail
    (Proxy :: Proxy ListAliases)

responseResetPassword :: ResetPasswordResponse -> TestTree
responseResetPassword =
  res
    "ResetPasswordResponse"
    "fixture/ResetPasswordResponse.proto"
    workMail
    (Proxy :: Proxy ResetPassword)
