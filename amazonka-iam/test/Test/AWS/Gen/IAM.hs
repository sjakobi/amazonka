{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.IAM
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.IAM where

import Data.Proxy
import Network.AWS.IAM
import Test.AWS.Fixture
import Test.AWS.IAM.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCreateVirtualMFADevice $
--             createVirtualMFADevice
--
--         , requestAttachRolePolicy $
--             attachRolePolicy
--
--         , requestDeleteSSHPublicKey $
--             deleteSSHPublicKey
--
--         , requestGetUser $
--             getUser
--
--         , requestUpdateSSHPublicKey $
--             updateSSHPublicKey
--
--         , requestUntagOpenIdConnectProvider $
--             untagOpenIdConnectProvider
--
--         , requestListSigningCertificates $
--             listSigningCertificates
--
--         , requestDeleteOpenIdConnectProvider $
--             deleteOpenIdConnectProvider
--
--         , requestListRoleTags $
--             listRoleTags
--
--         , requestListOpenIdConnectProviders $
--             listOpenIdConnectProviders
--
--         , requestCreatePolicy $
--             createPolicy
--
--         , requestGetSAMLProvider $
--             getSAMLProvider
--
--         , requestGetContextKeysForPrincipalPolicy $
--             getContextKeysForPrincipalPolicy
--
--         , requestListEntitiesForPolicy $
--             listEntitiesForPolicy
--
--         , requestListGroupsForUser $
--             listGroupsForUser
--
--         , requestSimulatePrincipalPolicy $
--             simulatePrincipalPolicy
--
--         , requestListPolicies $
--             listPolicies
--
--         , requestCreateServiceLinkedRole $
--             createServiceLinkedRole
--
--         , requestUntagPolicy $
--             untagPolicy
--
--         , requestDeletePolicy $
--             deletePolicy
--
--         , requestDeleteServerCertificate $
--             deleteServerCertificate
--
--         , requestListAttachedGroupPolicies $
--             listAttachedGroupPolicies
--
--         , requestChangePassword $
--             changePassword
--
--         , requestListMFADeviceTags $
--             listMFADeviceTags
--
--         , requestUntagServerCertificate $
--             untagServerCertificate
--
--         , requestUpdateAssumeRolePolicy $
--             updateAssumeRolePolicy
--
--         , requestGetGroupPolicy $
--             getGroupPolicy
--
--         , requestUpdateServerCertificate $
--             updateServerCertificate
--
--         , requestListServerCertificates $
--             listServerCertificates
--
--         , requestListInstanceProfileTags $
--             listInstanceProfileTags
--
--         , requestDeleteGroupPolicy $
--             deleteGroupPolicy
--
--         , requestCreateInstanceProfile $
--             createInstanceProfile
--
--         , requestListGroups $
--             listGroups
--
--         , requestGetLoginProfile $
--             getLoginProfile
--
--         , requestTagRole $
--             tagRole
--
--         , requestRemoveRoleFromInstanceProfile $
--             removeRoleFromInstanceProfile
--
--         , requestGenerateCredentialReport $
--             generateCredentialReport
--
--         , requestCreatePolicyVersion $
--             createPolicyVersion
--
--         , requestGetServerCertificate $
--             getServerCertificate
--
--         , requestRemoveUserFromGroup $
--             removeUserFromGroup
--
--         , requestSetDefaultPolicyVersion $
--             setDefaultPolicyVersion
--
--         , requestResetServiceSpecificCredential $
--             resetServiceSpecificCredential
--
--         , requestGenerateServiceLastAccessedDetails $
--             generateServiceLastAccessedDetails
--
--         , requestListPoliciesGrantingServiceAccess $
--             listPoliciesGrantingServiceAccess
--
--         , requestUpdateRoleDescription $
--             updateRoleDescription
--
--         , requestUploadServerCertificate $
--             uploadServerCertificate
--
--         , requestDetachRolePolicy $
--             detachRolePolicy
--
--         , requestEnableMFADevice $
--             enableMFADevice
--
--         , requestListSAMLProviders $
--             listSAMLProviders
--
--         , requestListPolicyTags $
--             listPolicyTags
--
--         , requestCreateGroup $
--             createGroup
--
--         , requestTagMFADevice $
--             tagMFADevice
--
--         , requestTagInstanceProfile $
--             tagInstanceProfile
--
--         , requestGetOpenIdConnectProvider $
--             getOpenIdConnectProvider
--
--         , requestCreateRole $
--             createRole
--
--         , requestPutUserPermissionsBoundary $
--             putUserPermissionsBoundary
--
--         , requestDeleteUserPolicy $
--             deleteUserPolicy
--
--         , requestDeleteRolePermissionsBoundary $
--             deleteRolePermissionsBoundary
--
--         , requestCreateUser $
--             createUser
--
--         , requestListOpenIdConnectProviderTags $
--             listOpenIdConnectProviderTags
--
--         , requestListRoles $
--             listRoles
--
--         , requestUploadSigningCertificate $
--             uploadSigningCertificate
--
--         , requestDeleteRolePolicy $
--             deleteRolePolicy
--
--         , requestListAttachedRolePolicies $
--             listAttachedRolePolicies
--
--         , requestGetRolePolicy $
--             getRolePolicy
--
--         , requestDeleteAccessKey $
--             deleteAccessKey
--
--         , requestListVirtualMFADevices $
--             listVirtualMFADevices
--
--         , requestTagPolicy $
--             tagPolicy
--
--         , requestRemoveClientIdFromOpenIdConnectProvider $
--             removeClientIdFromOpenIdConnectProvider
--
--         , requestDeleteVirtualMFADevice $
--             deleteVirtualMFADevice
--
--         , requestUpdateAccessKey $
--             updateAccessKey
--
--         , requestCreateServiceSpecificCredential $
--             createServiceSpecificCredential
--
--         , requestResyncMFADevice $
--             resyncMFADevice
--
--         , requestUpdateServiceSpecificCredential $
--             updateServiceSpecificCredential
--
--         , requestGetUserPolicy $
--             getUserPolicy
--
--         , requestUpdateAccountPasswordPolicy $
--             updateAccountPasswordPolicy
--
--         , requestListServiceSpecificCredentials $
--             listServiceSpecificCredentials
--
--         , requestDeleteSigningCertificate $
--             deleteSigningCertificate
--
--         , requestListAttachedUserPolicies $
--             listAttachedUserPolicies
--
--         , requestUpdateSigningCertificate $
--             updateSigningCertificate
--
--         , requestListSSHPublicKeys $
--             listSSHPublicKeys
--
--         , requestDeleteServiceSpecificCredential $
--             deleteServiceSpecificCredential
--
--         , requestCreateAccessKey $
--             createAccessKey
--
--         , requestDeleteAccountPasswordPolicy $
--             deleteAccountPasswordPolicy
--
--         , requestGetOrganizationsAccessReport $
--             getOrganizationsAccessReport
--
--         , requestListInstanceProfilesForRole $
--             listInstanceProfilesForRole
--
--         , requestGetPolicyVersion $
--             getPolicyVersion
--
--         , requestCreateLoginProfile $
--             createLoginProfile
--
--         , requestAddRoleToInstanceProfile $
--             addRoleToInstanceProfile
--
--         , requestGetInstanceProfile $
--             getInstanceProfile
--
--         , requestTagOpenIdConnectProvider $
--             tagOpenIdConnectProvider
--
--         , requestAddUserToGroup $
--             addUserToGroup
--
--         , requestAttachGroupPolicy $
--             attachGroupPolicy
--
--         , requestUpdateLoginProfile $
--             updateLoginProfile
--
--         , requestListSAMLProviderTags $
--             listSAMLProviderTags
--
--         , requestGetGroup $
--             getGroup
--
--         , requestDeleteLoginProfile $
--             deleteLoginProfile
--
--         , requestDeleteServiceLinkedRole $
--             deleteServiceLinkedRole
--
--         , requestGenerateOrganizationsAccessReport $
--             generateOrganizationsAccessReport
--
--         , requestGetServiceLastAccessedDetailsWithEntities $
--             getServiceLastAccessedDetailsWithEntities
--
--         , requestPutGroupPolicy $
--             putGroupPolicy
--
--         , requestGetServiceLastAccessedDetails $
--             getServiceLastAccessedDetails
--
--         , requestDeleteAccountAlias $
--             deleteAccountAlias
--
--         , requestCreateSAMLProvider $
--             createSAMLProvider
--
--         , requestGetPolicy $
--             getPolicy
--
--         , requestDetachUserPolicy $
--             detachUserPolicy
--
--         , requestUpdateGroup $
--             updateGroup
--
--         , requestDeleteGroup $
--             deleteGroup
--
--         , requestGetServiceLinkedRoleDeletionStatus $
--             getServiceLinkedRoleDeletionStatus
--
--         , requestGetAccountAuthorizationDetails $
--             getAccountAuthorizationDetails
--
--         , requestListGroupPolicies $
--             listGroupPolicies
--
--         , requestDeletePolicyVersion $
--             deletePolicyVersion
--
--         , requestDeleteSAMLProvider $
--             deleteSAMLProvider
--
--         , requestTagUser $
--             tagUser
--
--         , requestListInstanceProfiles $
--             listInstanceProfiles
--
--         , requestGetCredentialReport $
--             getCredentialReport
--
--         , requestListMFADevices $
--             listMFADevices
--
--         , requestUpdateSAMLProvider $
--             updateSAMLProvider
--
--         , requestUntagInstanceProfile $
--             untagInstanceProfile
--
--         , requestCreateAccountAlias $
--             createAccountAlias
--
--         , requestUntagMFADevice $
--             untagMFADevice
--
--         , requestUntagSAMLProvider $
--             untagSAMLProvider
--
--         , requestListAccountAliases $
--             listAccountAliases
--
--         , requestListPolicyVersions $
--             listPolicyVersions
--
--         , requestDeleteInstanceProfile $
--             deleteInstanceProfile
--
--         , requestGetAccountSummary $
--             getAccountSummary
--
--         , requestListServerCertificateTags $
--             listServerCertificateTags
--
--         , requestGetSSHPublicKey $
--             getSSHPublicKey
--
--         , requestUpdateOpenIdConnectProviderThumbprint $
--             updateOpenIdConnectProviderThumbprint
--
--         , requestGetAccessKeyLastUsed $
--             getAccessKeyLastUsed
--
--         , requestTagSAMLProvider $
--             tagSAMLProvider
--
--         , requestGetAccountPasswordPolicy $
--             getAccountPasswordPolicy
--
--         , requestDeleteUser $
--             deleteUser
--
--         , requestListUsers $
--             listUsers
--
--         , requestUpdateUser $
--             updateUser
--
--         , requestListRolePolicies $
--             listRolePolicies
--
--         , requestAddClientIdToOpenIdConnectProvider $
--             addClientIdToOpenIdConnectProvider
--
--         , requestDeleteUserPermissionsBoundary $
--             deleteUserPermissionsBoundary
--
--         , requestPutUserPolicy $
--             putUserPolicy
--
--         , requestDetachGroupPolicy $
--             detachGroupPolicy
--
--         , requestUntagUser $
--             untagUser
--
--         , requestGetContextKeysForCustomPolicy $
--             getContextKeysForCustomPolicy
--
--         , requestPutRolePermissionsBoundary $
--             putRolePermissionsBoundary
--
--         , requestUntagRole $
--             untagRole
--
--         , requestSimulateCustomPolicy $
--             simulateCustomPolicy
--
--         , requestUploadSSHPublicKey $
--             uploadSSHPublicKey
--
--         , requestDeleteRole $
--             deleteRole
--
--         , requestListUserPolicies $
--             listUserPolicies
--
--         , requestPutRolePolicy $
--             putRolePolicy
--
--         , requestUpdateRole $
--             updateRole
--
--         , requestSetSecurityTokenServicePreferences $
--             setSecurityTokenServicePreferences
--
--         , requestAttachUserPolicy $
--             attachUserPolicy
--
--         , requestTagServerCertificate $
--             tagServerCertificate
--
--         , requestListAccessKeys $
--             listAccessKeys
--
--         , requestCreateOpenIdConnectProvider $
--             createOpenIdConnectProvider
--
--         , requestDeactivateMFADevice $
--             deactivateMFADevice
--
--         , requestListUserTags $
--             listUserTags
--
--         , requestGetRole $
--             getRole
--
--           ]

--     , testGroup "response"
--         [ responseCreateVirtualMFADevice $
--             createVirtualMFADeviceResponse
--
--         , responseAttachRolePolicy $
--             attachRolePolicyResponse
--
--         , responseDeleteSSHPublicKey $
--             deleteSSHPublicKeyResponse
--
--         , responseGetUser $
--             getUserResponse
--
--         , responseUpdateSSHPublicKey $
--             updateSSHPublicKeyResponse
--
--         , responseUntagOpenIdConnectProvider $
--             untagOpenIdConnectProviderResponse
--
--         , responseListSigningCertificates $
--             listSigningCertificatesResponse
--
--         , responseDeleteOpenIdConnectProvider $
--             deleteOpenIdConnectProviderResponse
--
--         , responseListRoleTags $
--             listRoleTagsResponse
--
--         , responseListOpenIdConnectProviders $
--             listOpenIdConnectProvidersResponse
--
--         , responseCreatePolicy $
--             createPolicyResponse
--
--         , responseGetSAMLProvider $
--             getSAMLProviderResponse
--
--         , responseGetContextKeysForPrincipalPolicy $
--             getContextKeysForPolicyResponse
--
--         , responseListEntitiesForPolicy $
--             listEntitiesForPolicyResponse
--
--         , responseListGroupsForUser $
--             listGroupsForUserResponse
--
--         , responseSimulatePrincipalPolicy $
--             simulatePolicyResponse
--
--         , responseListPolicies $
--             listPoliciesResponse
--
--         , responseCreateServiceLinkedRole $
--             createServiceLinkedRoleResponse
--
--         , responseUntagPolicy $
--             untagPolicyResponse
--
--         , responseDeletePolicy $
--             deletePolicyResponse
--
--         , responseDeleteServerCertificate $
--             deleteServerCertificateResponse
--
--         , responseListAttachedGroupPolicies $
--             listAttachedGroupPoliciesResponse
--
--         , responseChangePassword $
--             changePasswordResponse
--
--         , responseListMFADeviceTags $
--             listMFADeviceTagsResponse
--
--         , responseUntagServerCertificate $
--             untagServerCertificateResponse
--
--         , responseUpdateAssumeRolePolicy $
--             updateAssumeRolePolicyResponse
--
--         , responseGetGroupPolicy $
--             getGroupPolicyResponse
--
--         , responseUpdateServerCertificate $
--             updateServerCertificateResponse
--
--         , responseListServerCertificates $
--             listServerCertificatesResponse
--
--         , responseListInstanceProfileTags $
--             listInstanceProfileTagsResponse
--
--         , responseDeleteGroupPolicy $
--             deleteGroupPolicyResponse
--
--         , responseCreateInstanceProfile $
--             createInstanceProfileResponse
--
--         , responseListGroups $
--             listGroupsResponse
--
--         , responseGetLoginProfile $
--             getLoginProfileResponse
--
--         , responseTagRole $
--             tagRoleResponse
--
--         , responseRemoveRoleFromInstanceProfile $
--             removeRoleFromInstanceProfileResponse
--
--         , responseGenerateCredentialReport $
--             generateCredentialReportResponse
--
--         , responseCreatePolicyVersion $
--             createPolicyVersionResponse
--
--         , responseGetServerCertificate $
--             getServerCertificateResponse
--
--         , responseRemoveUserFromGroup $
--             removeUserFromGroupResponse
--
--         , responseSetDefaultPolicyVersion $
--             setDefaultPolicyVersionResponse
--
--         , responseResetServiceSpecificCredential $
--             resetServiceSpecificCredentialResponse
--
--         , responseGenerateServiceLastAccessedDetails $
--             generateServiceLastAccessedDetailsResponse
--
--         , responseListPoliciesGrantingServiceAccess $
--             listPoliciesGrantingServiceAccessResponse
--
--         , responseUpdateRoleDescription $
--             updateRoleDescriptionResponse
--
--         , responseUploadServerCertificate $
--             uploadServerCertificateResponse
--
--         , responseDetachRolePolicy $
--             detachRolePolicyResponse
--
--         , responseEnableMFADevice $
--             enableMFADeviceResponse
--
--         , responseListSAMLProviders $
--             listSAMLProvidersResponse
--
--         , responseListPolicyTags $
--             listPolicyTagsResponse
--
--         , responseCreateGroup $
--             createGroupResponse
--
--         , responseTagMFADevice $
--             tagMFADeviceResponse
--
--         , responseTagInstanceProfile $
--             tagInstanceProfileResponse
--
--         , responseGetOpenIdConnectProvider $
--             getOpenIdConnectProviderResponse
--
--         , responseCreateRole $
--             createRoleResponse
--
--         , responsePutUserPermissionsBoundary $
--             putUserPermissionsBoundaryResponse
--
--         , responseDeleteUserPolicy $
--             deleteUserPolicyResponse
--
--         , responseDeleteRolePermissionsBoundary $
--             deleteRolePermissionsBoundaryResponse
--
--         , responseCreateUser $
--             createUserResponse
--
--         , responseListOpenIdConnectProviderTags $
--             listOpenIdConnectProviderTagsResponse
--
--         , responseListRoles $
--             listRolesResponse
--
--         , responseUploadSigningCertificate $
--             uploadSigningCertificateResponse
--
--         , responseDeleteRolePolicy $
--             deleteRolePolicyResponse
--
--         , responseListAttachedRolePolicies $
--             listAttachedRolePoliciesResponse
--
--         , responseGetRolePolicy $
--             getRolePolicyResponse
--
--         , responseDeleteAccessKey $
--             deleteAccessKeyResponse
--
--         , responseListVirtualMFADevices $
--             listVirtualMFADevicesResponse
--
--         , responseTagPolicy $
--             tagPolicyResponse
--
--         , responseRemoveClientIdFromOpenIdConnectProvider $
--             removeClientIdFromOpenIdConnectProviderResponse
--
--         , responseDeleteVirtualMFADevice $
--             deleteVirtualMFADeviceResponse
--
--         , responseUpdateAccessKey $
--             updateAccessKeyResponse
--
--         , responseCreateServiceSpecificCredential $
--             createServiceSpecificCredentialResponse
--
--         , responseResyncMFADevice $
--             resyncMFADeviceResponse
--
--         , responseUpdateServiceSpecificCredential $
--             updateServiceSpecificCredentialResponse
--
--         , responseGetUserPolicy $
--             getUserPolicyResponse
--
--         , responseUpdateAccountPasswordPolicy $
--             updateAccountPasswordPolicyResponse
--
--         , responseListServiceSpecificCredentials $
--             listServiceSpecificCredentialsResponse
--
--         , responseDeleteSigningCertificate $
--             deleteSigningCertificateResponse
--
--         , responseListAttachedUserPolicies $
--             listAttachedUserPoliciesResponse
--
--         , responseUpdateSigningCertificate $
--             updateSigningCertificateResponse
--
--         , responseListSSHPublicKeys $
--             listSSHPublicKeysResponse
--
--         , responseDeleteServiceSpecificCredential $
--             deleteServiceSpecificCredentialResponse
--
--         , responseCreateAccessKey $
--             createAccessKeyResponse
--
--         , responseDeleteAccountPasswordPolicy $
--             deleteAccountPasswordPolicyResponse
--
--         , responseGetOrganizationsAccessReport $
--             getOrganizationsAccessReportResponse
--
--         , responseListInstanceProfilesForRole $
--             listInstanceProfilesForRoleResponse
--
--         , responseGetPolicyVersion $
--             getPolicyVersionResponse
--
--         , responseCreateLoginProfile $
--             createLoginProfileResponse
--
--         , responseAddRoleToInstanceProfile $
--             addRoleToInstanceProfileResponse
--
--         , responseGetInstanceProfile $
--             getInstanceProfileResponse
--
--         , responseTagOpenIdConnectProvider $
--             tagOpenIdConnectProviderResponse
--
--         , responseAddUserToGroup $
--             addUserToGroupResponse
--
--         , responseAttachGroupPolicy $
--             attachGroupPolicyResponse
--
--         , responseUpdateLoginProfile $
--             updateLoginProfileResponse
--
--         , responseListSAMLProviderTags $
--             listSAMLProviderTagsResponse
--
--         , responseGetGroup $
--             getGroupResponse
--
--         , responseDeleteLoginProfile $
--             deleteLoginProfileResponse
--
--         , responseDeleteServiceLinkedRole $
--             deleteServiceLinkedRoleResponse
--
--         , responseGenerateOrganizationsAccessReport $
--             generateOrganizationsAccessReportResponse
--
--         , responseGetServiceLastAccessedDetailsWithEntities $
--             getServiceLastAccessedDetailsWithEntitiesResponse
--
--         , responsePutGroupPolicy $
--             putGroupPolicyResponse
--
--         , responseGetServiceLastAccessedDetails $
--             getServiceLastAccessedDetailsResponse
--
--         , responseDeleteAccountAlias $
--             deleteAccountAliasResponse
--
--         , responseCreateSAMLProvider $
--             createSAMLProviderResponse
--
--         , responseGetPolicy $
--             getPolicyResponse
--
--         , responseDetachUserPolicy $
--             detachUserPolicyResponse
--
--         , responseUpdateGroup $
--             updateGroupResponse
--
--         , responseDeleteGroup $
--             deleteGroupResponse
--
--         , responseGetServiceLinkedRoleDeletionStatus $
--             getServiceLinkedRoleDeletionStatusResponse
--
--         , responseGetAccountAuthorizationDetails $
--             getAccountAuthorizationDetailsResponse
--
--         , responseListGroupPolicies $
--             listGroupPoliciesResponse
--
--         , responseDeletePolicyVersion $
--             deletePolicyVersionResponse
--
--         , responseDeleteSAMLProvider $
--             deleteSAMLProviderResponse
--
--         , responseTagUser $
--             tagUserResponse
--
--         , responseListInstanceProfiles $
--             listInstanceProfilesResponse
--
--         , responseGetCredentialReport $
--             getCredentialReportResponse
--
--         , responseListMFADevices $
--             listMFADevicesResponse
--
--         , responseUpdateSAMLProvider $
--             updateSAMLProviderResponse
--
--         , responseUntagInstanceProfile $
--             untagInstanceProfileResponse
--
--         , responseCreateAccountAlias $
--             createAccountAliasResponse
--
--         , responseUntagMFADevice $
--             untagMFADeviceResponse
--
--         , responseUntagSAMLProvider $
--             untagSAMLProviderResponse
--
--         , responseListAccountAliases $
--             listAccountAliasesResponse
--
--         , responseListPolicyVersions $
--             listPolicyVersionsResponse
--
--         , responseDeleteInstanceProfile $
--             deleteInstanceProfileResponse
--
--         , responseGetAccountSummary $
--             getAccountSummaryResponse
--
--         , responseListServerCertificateTags $
--             listServerCertificateTagsResponse
--
--         , responseGetSSHPublicKey $
--             getSSHPublicKeyResponse
--
--         , responseUpdateOpenIdConnectProviderThumbprint $
--             updateOpenIdConnectProviderThumbprintResponse
--
--         , responseGetAccessKeyLastUsed $
--             getAccessKeyLastUsedResponse
--
--         , responseTagSAMLProvider $
--             tagSAMLProviderResponse
--
--         , responseGetAccountPasswordPolicy $
--             getAccountPasswordPolicyResponse
--
--         , responseDeleteUser $
--             deleteUserResponse
--
--         , responseListUsers $
--             listUsersResponse
--
--         , responseUpdateUser $
--             updateUserResponse
--
--         , responseListRolePolicies $
--             listRolePoliciesResponse
--
--         , responseAddClientIdToOpenIdConnectProvider $
--             addClientIdToOpenIdConnectProviderResponse
--
--         , responseDeleteUserPermissionsBoundary $
--             deleteUserPermissionsBoundaryResponse
--
--         , responsePutUserPolicy $
--             putUserPolicyResponse
--
--         , responseDetachGroupPolicy $
--             detachGroupPolicyResponse
--
--         , responseUntagUser $
--             untagUserResponse
--
--         , responseGetContextKeysForCustomPolicy $
--             getContextKeysForPolicyResponse
--
--         , responsePutRolePermissionsBoundary $
--             putRolePermissionsBoundaryResponse
--
--         , responseUntagRole $
--             untagRoleResponse
--
--         , responseSimulateCustomPolicy $
--             simulatePolicyResponse
--
--         , responseUploadSSHPublicKey $
--             uploadSSHPublicKeyResponse
--
--         , responseDeleteRole $
--             deleteRoleResponse
--
--         , responseListUserPolicies $
--             listUserPoliciesResponse
--
--         , responsePutRolePolicy $
--             putRolePolicyResponse
--
--         , responseUpdateRole $
--             updateRoleResponse
--
--         , responseSetSecurityTokenServicePreferences $
--             setSecurityTokenServicePreferencesResponse
--
--         , responseAttachUserPolicy $
--             attachUserPolicyResponse
--
--         , responseTagServerCertificate $
--             tagServerCertificateResponse
--
--         , responseListAccessKeys $
--             listAccessKeysResponse
--
--         , responseCreateOpenIdConnectProvider $
--             createOpenIdConnectProviderResponse
--
--         , responseDeactivateMFADevice $
--             deactivateMFADeviceResponse
--
--         , responseListUserTags $
--             listUserTagsResponse
--
--         , responseGetRole $
--             getRoleResponse
--
--           ]
--     ]

-- Requests

requestCreateVirtualMFADevice :: CreateVirtualMFADevice -> TestTree
requestCreateVirtualMFADevice =
  req
    "CreateVirtualMFADevice"
    "fixture/CreateVirtualMFADevice.yaml"

requestAttachRolePolicy :: AttachRolePolicy -> TestTree
requestAttachRolePolicy =
  req
    "AttachRolePolicy"
    "fixture/AttachRolePolicy.yaml"

requestDeleteSSHPublicKey :: DeleteSSHPublicKey -> TestTree
requestDeleteSSHPublicKey =
  req
    "DeleteSSHPublicKey"
    "fixture/DeleteSSHPublicKey.yaml"

requestGetUser :: GetUser -> TestTree
requestGetUser =
  req
    "GetUser"
    "fixture/GetUser.yaml"

requestUpdateSSHPublicKey :: UpdateSSHPublicKey -> TestTree
requestUpdateSSHPublicKey =
  req
    "UpdateSSHPublicKey"
    "fixture/UpdateSSHPublicKey.yaml"

requestUntagOpenIdConnectProvider :: UntagOpenIdConnectProvider -> TestTree
requestUntagOpenIdConnectProvider =
  req
    "UntagOpenIdConnectProvider"
    "fixture/UntagOpenIdConnectProvider.yaml"

requestListSigningCertificates :: ListSigningCertificates -> TestTree
requestListSigningCertificates =
  req
    "ListSigningCertificates"
    "fixture/ListSigningCertificates.yaml"

requestDeleteOpenIdConnectProvider :: DeleteOpenIdConnectProvider -> TestTree
requestDeleteOpenIdConnectProvider =
  req
    "DeleteOpenIdConnectProvider"
    "fixture/DeleteOpenIdConnectProvider.yaml"

requestListRoleTags :: ListRoleTags -> TestTree
requestListRoleTags =
  req
    "ListRoleTags"
    "fixture/ListRoleTags.yaml"

requestListOpenIdConnectProviders :: ListOpenIdConnectProviders -> TestTree
requestListOpenIdConnectProviders =
  req
    "ListOpenIdConnectProviders"
    "fixture/ListOpenIdConnectProviders.yaml"

requestCreatePolicy :: CreatePolicy -> TestTree
requestCreatePolicy =
  req
    "CreatePolicy"
    "fixture/CreatePolicy.yaml"

requestGetSAMLProvider :: GetSAMLProvider -> TestTree
requestGetSAMLProvider =
  req
    "GetSAMLProvider"
    "fixture/GetSAMLProvider.yaml"

requestGetContextKeysForPrincipalPolicy :: GetContextKeysForPrincipalPolicy -> TestTree
requestGetContextKeysForPrincipalPolicy =
  req
    "GetContextKeysForPrincipalPolicy"
    "fixture/GetContextKeysForPrincipalPolicy.yaml"

requestListEntitiesForPolicy :: ListEntitiesForPolicy -> TestTree
requestListEntitiesForPolicy =
  req
    "ListEntitiesForPolicy"
    "fixture/ListEntitiesForPolicy.yaml"

requestListGroupsForUser :: ListGroupsForUser -> TestTree
requestListGroupsForUser =
  req
    "ListGroupsForUser"
    "fixture/ListGroupsForUser.yaml"

requestSimulatePrincipalPolicy :: SimulatePrincipalPolicy -> TestTree
requestSimulatePrincipalPolicy =
  req
    "SimulatePrincipalPolicy"
    "fixture/SimulatePrincipalPolicy.yaml"

requestListPolicies :: ListPolicies -> TestTree
requestListPolicies =
  req
    "ListPolicies"
    "fixture/ListPolicies.yaml"

requestCreateServiceLinkedRole :: CreateServiceLinkedRole -> TestTree
requestCreateServiceLinkedRole =
  req
    "CreateServiceLinkedRole"
    "fixture/CreateServiceLinkedRole.yaml"

requestUntagPolicy :: UntagPolicy -> TestTree
requestUntagPolicy =
  req
    "UntagPolicy"
    "fixture/UntagPolicy.yaml"

requestDeletePolicy :: DeletePolicy -> TestTree
requestDeletePolicy =
  req
    "DeletePolicy"
    "fixture/DeletePolicy.yaml"

requestDeleteServerCertificate :: DeleteServerCertificate -> TestTree
requestDeleteServerCertificate =
  req
    "DeleteServerCertificate"
    "fixture/DeleteServerCertificate.yaml"

requestListAttachedGroupPolicies :: ListAttachedGroupPolicies -> TestTree
requestListAttachedGroupPolicies =
  req
    "ListAttachedGroupPolicies"
    "fixture/ListAttachedGroupPolicies.yaml"

requestChangePassword :: ChangePassword -> TestTree
requestChangePassword =
  req
    "ChangePassword"
    "fixture/ChangePassword.yaml"

requestListMFADeviceTags :: ListMFADeviceTags -> TestTree
requestListMFADeviceTags =
  req
    "ListMFADeviceTags"
    "fixture/ListMFADeviceTags.yaml"

requestUntagServerCertificate :: UntagServerCertificate -> TestTree
requestUntagServerCertificate =
  req
    "UntagServerCertificate"
    "fixture/UntagServerCertificate.yaml"

requestUpdateAssumeRolePolicy :: UpdateAssumeRolePolicy -> TestTree
requestUpdateAssumeRolePolicy =
  req
    "UpdateAssumeRolePolicy"
    "fixture/UpdateAssumeRolePolicy.yaml"

requestGetGroupPolicy :: GetGroupPolicy -> TestTree
requestGetGroupPolicy =
  req
    "GetGroupPolicy"
    "fixture/GetGroupPolicy.yaml"

requestUpdateServerCertificate :: UpdateServerCertificate -> TestTree
requestUpdateServerCertificate =
  req
    "UpdateServerCertificate"
    "fixture/UpdateServerCertificate.yaml"

requestListServerCertificates :: ListServerCertificates -> TestTree
requestListServerCertificates =
  req
    "ListServerCertificates"
    "fixture/ListServerCertificates.yaml"

requestListInstanceProfileTags :: ListInstanceProfileTags -> TestTree
requestListInstanceProfileTags =
  req
    "ListInstanceProfileTags"
    "fixture/ListInstanceProfileTags.yaml"

requestDeleteGroupPolicy :: DeleteGroupPolicy -> TestTree
requestDeleteGroupPolicy =
  req
    "DeleteGroupPolicy"
    "fixture/DeleteGroupPolicy.yaml"

requestCreateInstanceProfile :: CreateInstanceProfile -> TestTree
requestCreateInstanceProfile =
  req
    "CreateInstanceProfile"
    "fixture/CreateInstanceProfile.yaml"

requestListGroups :: ListGroups -> TestTree
requestListGroups =
  req
    "ListGroups"
    "fixture/ListGroups.yaml"

requestGetLoginProfile :: GetLoginProfile -> TestTree
requestGetLoginProfile =
  req
    "GetLoginProfile"
    "fixture/GetLoginProfile.yaml"

requestTagRole :: TagRole -> TestTree
requestTagRole =
  req
    "TagRole"
    "fixture/TagRole.yaml"

requestRemoveRoleFromInstanceProfile :: RemoveRoleFromInstanceProfile -> TestTree
requestRemoveRoleFromInstanceProfile =
  req
    "RemoveRoleFromInstanceProfile"
    "fixture/RemoveRoleFromInstanceProfile.yaml"

requestGenerateCredentialReport :: GenerateCredentialReport -> TestTree
requestGenerateCredentialReport =
  req
    "GenerateCredentialReport"
    "fixture/GenerateCredentialReport.yaml"

requestCreatePolicyVersion :: CreatePolicyVersion -> TestTree
requestCreatePolicyVersion =
  req
    "CreatePolicyVersion"
    "fixture/CreatePolicyVersion.yaml"

requestGetServerCertificate :: GetServerCertificate -> TestTree
requestGetServerCertificate =
  req
    "GetServerCertificate"
    "fixture/GetServerCertificate.yaml"

requestRemoveUserFromGroup :: RemoveUserFromGroup -> TestTree
requestRemoveUserFromGroup =
  req
    "RemoveUserFromGroup"
    "fixture/RemoveUserFromGroup.yaml"

requestSetDefaultPolicyVersion :: SetDefaultPolicyVersion -> TestTree
requestSetDefaultPolicyVersion =
  req
    "SetDefaultPolicyVersion"
    "fixture/SetDefaultPolicyVersion.yaml"

requestResetServiceSpecificCredential :: ResetServiceSpecificCredential -> TestTree
requestResetServiceSpecificCredential =
  req
    "ResetServiceSpecificCredential"
    "fixture/ResetServiceSpecificCredential.yaml"

requestGenerateServiceLastAccessedDetails :: GenerateServiceLastAccessedDetails -> TestTree
requestGenerateServiceLastAccessedDetails =
  req
    "GenerateServiceLastAccessedDetails"
    "fixture/GenerateServiceLastAccessedDetails.yaml"

requestListPoliciesGrantingServiceAccess :: ListPoliciesGrantingServiceAccess -> TestTree
requestListPoliciesGrantingServiceAccess =
  req
    "ListPoliciesGrantingServiceAccess"
    "fixture/ListPoliciesGrantingServiceAccess.yaml"

requestUpdateRoleDescription :: UpdateRoleDescription -> TestTree
requestUpdateRoleDescription =
  req
    "UpdateRoleDescription"
    "fixture/UpdateRoleDescription.yaml"

requestUploadServerCertificate :: UploadServerCertificate -> TestTree
requestUploadServerCertificate =
  req
    "UploadServerCertificate"
    "fixture/UploadServerCertificate.yaml"

requestDetachRolePolicy :: DetachRolePolicy -> TestTree
requestDetachRolePolicy =
  req
    "DetachRolePolicy"
    "fixture/DetachRolePolicy.yaml"

requestEnableMFADevice :: EnableMFADevice -> TestTree
requestEnableMFADevice =
  req
    "EnableMFADevice"
    "fixture/EnableMFADevice.yaml"

requestListSAMLProviders :: ListSAMLProviders -> TestTree
requestListSAMLProviders =
  req
    "ListSAMLProviders"
    "fixture/ListSAMLProviders.yaml"

requestListPolicyTags :: ListPolicyTags -> TestTree
requestListPolicyTags =
  req
    "ListPolicyTags"
    "fixture/ListPolicyTags.yaml"

requestCreateGroup :: CreateGroup -> TestTree
requestCreateGroup =
  req
    "CreateGroup"
    "fixture/CreateGroup.yaml"

requestTagMFADevice :: TagMFADevice -> TestTree
requestTagMFADevice =
  req
    "TagMFADevice"
    "fixture/TagMFADevice.yaml"

requestTagInstanceProfile :: TagInstanceProfile -> TestTree
requestTagInstanceProfile =
  req
    "TagInstanceProfile"
    "fixture/TagInstanceProfile.yaml"

requestGetOpenIdConnectProvider :: GetOpenIdConnectProvider -> TestTree
requestGetOpenIdConnectProvider =
  req
    "GetOpenIdConnectProvider"
    "fixture/GetOpenIdConnectProvider.yaml"

requestCreateRole :: CreateRole -> TestTree
requestCreateRole =
  req
    "CreateRole"
    "fixture/CreateRole.yaml"

requestPutUserPermissionsBoundary :: PutUserPermissionsBoundary -> TestTree
requestPutUserPermissionsBoundary =
  req
    "PutUserPermissionsBoundary"
    "fixture/PutUserPermissionsBoundary.yaml"

requestDeleteUserPolicy :: DeleteUserPolicy -> TestTree
requestDeleteUserPolicy =
  req
    "DeleteUserPolicy"
    "fixture/DeleteUserPolicy.yaml"

requestDeleteRolePermissionsBoundary :: DeleteRolePermissionsBoundary -> TestTree
requestDeleteRolePermissionsBoundary =
  req
    "DeleteRolePermissionsBoundary"
    "fixture/DeleteRolePermissionsBoundary.yaml"

requestCreateUser :: CreateUser -> TestTree
requestCreateUser =
  req
    "CreateUser"
    "fixture/CreateUser.yaml"

requestListOpenIdConnectProviderTags :: ListOpenIdConnectProviderTags -> TestTree
requestListOpenIdConnectProviderTags =
  req
    "ListOpenIdConnectProviderTags"
    "fixture/ListOpenIdConnectProviderTags.yaml"

requestListRoles :: ListRoles -> TestTree
requestListRoles =
  req
    "ListRoles"
    "fixture/ListRoles.yaml"

requestUploadSigningCertificate :: UploadSigningCertificate -> TestTree
requestUploadSigningCertificate =
  req
    "UploadSigningCertificate"
    "fixture/UploadSigningCertificate.yaml"

requestDeleteRolePolicy :: DeleteRolePolicy -> TestTree
requestDeleteRolePolicy =
  req
    "DeleteRolePolicy"
    "fixture/DeleteRolePolicy.yaml"

requestListAttachedRolePolicies :: ListAttachedRolePolicies -> TestTree
requestListAttachedRolePolicies =
  req
    "ListAttachedRolePolicies"
    "fixture/ListAttachedRolePolicies.yaml"

requestGetRolePolicy :: GetRolePolicy -> TestTree
requestGetRolePolicy =
  req
    "GetRolePolicy"
    "fixture/GetRolePolicy.yaml"

requestDeleteAccessKey :: DeleteAccessKey -> TestTree
requestDeleteAccessKey =
  req
    "DeleteAccessKey"
    "fixture/DeleteAccessKey.yaml"

requestListVirtualMFADevices :: ListVirtualMFADevices -> TestTree
requestListVirtualMFADevices =
  req
    "ListVirtualMFADevices"
    "fixture/ListVirtualMFADevices.yaml"

requestTagPolicy :: TagPolicy -> TestTree
requestTagPolicy =
  req
    "TagPolicy"
    "fixture/TagPolicy.yaml"

requestRemoveClientIdFromOpenIdConnectProvider :: RemoveClientIdFromOpenIdConnectProvider -> TestTree
requestRemoveClientIdFromOpenIdConnectProvider =
  req
    "RemoveClientIdFromOpenIdConnectProvider"
    "fixture/RemoveClientIdFromOpenIdConnectProvider.yaml"

requestDeleteVirtualMFADevice :: DeleteVirtualMFADevice -> TestTree
requestDeleteVirtualMFADevice =
  req
    "DeleteVirtualMFADevice"
    "fixture/DeleteVirtualMFADevice.yaml"

requestUpdateAccessKey :: UpdateAccessKey -> TestTree
requestUpdateAccessKey =
  req
    "UpdateAccessKey"
    "fixture/UpdateAccessKey.yaml"

requestCreateServiceSpecificCredential :: CreateServiceSpecificCredential -> TestTree
requestCreateServiceSpecificCredential =
  req
    "CreateServiceSpecificCredential"
    "fixture/CreateServiceSpecificCredential.yaml"

requestResyncMFADevice :: ResyncMFADevice -> TestTree
requestResyncMFADevice =
  req
    "ResyncMFADevice"
    "fixture/ResyncMFADevice.yaml"

requestUpdateServiceSpecificCredential :: UpdateServiceSpecificCredential -> TestTree
requestUpdateServiceSpecificCredential =
  req
    "UpdateServiceSpecificCredential"
    "fixture/UpdateServiceSpecificCredential.yaml"

requestGetUserPolicy :: GetUserPolicy -> TestTree
requestGetUserPolicy =
  req
    "GetUserPolicy"
    "fixture/GetUserPolicy.yaml"

requestUpdateAccountPasswordPolicy :: UpdateAccountPasswordPolicy -> TestTree
requestUpdateAccountPasswordPolicy =
  req
    "UpdateAccountPasswordPolicy"
    "fixture/UpdateAccountPasswordPolicy.yaml"

requestListServiceSpecificCredentials :: ListServiceSpecificCredentials -> TestTree
requestListServiceSpecificCredentials =
  req
    "ListServiceSpecificCredentials"
    "fixture/ListServiceSpecificCredentials.yaml"

requestDeleteSigningCertificate :: DeleteSigningCertificate -> TestTree
requestDeleteSigningCertificate =
  req
    "DeleteSigningCertificate"
    "fixture/DeleteSigningCertificate.yaml"

requestListAttachedUserPolicies :: ListAttachedUserPolicies -> TestTree
requestListAttachedUserPolicies =
  req
    "ListAttachedUserPolicies"
    "fixture/ListAttachedUserPolicies.yaml"

requestUpdateSigningCertificate :: UpdateSigningCertificate -> TestTree
requestUpdateSigningCertificate =
  req
    "UpdateSigningCertificate"
    "fixture/UpdateSigningCertificate.yaml"

requestListSSHPublicKeys :: ListSSHPublicKeys -> TestTree
requestListSSHPublicKeys =
  req
    "ListSSHPublicKeys"
    "fixture/ListSSHPublicKeys.yaml"

requestDeleteServiceSpecificCredential :: DeleteServiceSpecificCredential -> TestTree
requestDeleteServiceSpecificCredential =
  req
    "DeleteServiceSpecificCredential"
    "fixture/DeleteServiceSpecificCredential.yaml"

requestCreateAccessKey :: CreateAccessKey -> TestTree
requestCreateAccessKey =
  req
    "CreateAccessKey"
    "fixture/CreateAccessKey.yaml"

requestDeleteAccountPasswordPolicy :: DeleteAccountPasswordPolicy -> TestTree
requestDeleteAccountPasswordPolicy =
  req
    "DeleteAccountPasswordPolicy"
    "fixture/DeleteAccountPasswordPolicy.yaml"

requestGetOrganizationsAccessReport :: GetOrganizationsAccessReport -> TestTree
requestGetOrganizationsAccessReport =
  req
    "GetOrganizationsAccessReport"
    "fixture/GetOrganizationsAccessReport.yaml"

requestListInstanceProfilesForRole :: ListInstanceProfilesForRole -> TestTree
requestListInstanceProfilesForRole =
  req
    "ListInstanceProfilesForRole"
    "fixture/ListInstanceProfilesForRole.yaml"

requestGetPolicyVersion :: GetPolicyVersion -> TestTree
requestGetPolicyVersion =
  req
    "GetPolicyVersion"
    "fixture/GetPolicyVersion.yaml"

requestCreateLoginProfile :: CreateLoginProfile -> TestTree
requestCreateLoginProfile =
  req
    "CreateLoginProfile"
    "fixture/CreateLoginProfile.yaml"

requestAddRoleToInstanceProfile :: AddRoleToInstanceProfile -> TestTree
requestAddRoleToInstanceProfile =
  req
    "AddRoleToInstanceProfile"
    "fixture/AddRoleToInstanceProfile.yaml"

requestGetInstanceProfile :: GetInstanceProfile -> TestTree
requestGetInstanceProfile =
  req
    "GetInstanceProfile"
    "fixture/GetInstanceProfile.yaml"

requestTagOpenIdConnectProvider :: TagOpenIdConnectProvider -> TestTree
requestTagOpenIdConnectProvider =
  req
    "TagOpenIdConnectProvider"
    "fixture/TagOpenIdConnectProvider.yaml"

requestAddUserToGroup :: AddUserToGroup -> TestTree
requestAddUserToGroup =
  req
    "AddUserToGroup"
    "fixture/AddUserToGroup.yaml"

requestAttachGroupPolicy :: AttachGroupPolicy -> TestTree
requestAttachGroupPolicy =
  req
    "AttachGroupPolicy"
    "fixture/AttachGroupPolicy.yaml"

requestUpdateLoginProfile :: UpdateLoginProfile -> TestTree
requestUpdateLoginProfile =
  req
    "UpdateLoginProfile"
    "fixture/UpdateLoginProfile.yaml"

requestListSAMLProviderTags :: ListSAMLProviderTags -> TestTree
requestListSAMLProviderTags =
  req
    "ListSAMLProviderTags"
    "fixture/ListSAMLProviderTags.yaml"

requestGetGroup :: GetGroup -> TestTree
requestGetGroup =
  req
    "GetGroup"
    "fixture/GetGroup.yaml"

requestDeleteLoginProfile :: DeleteLoginProfile -> TestTree
requestDeleteLoginProfile =
  req
    "DeleteLoginProfile"
    "fixture/DeleteLoginProfile.yaml"

requestDeleteServiceLinkedRole :: DeleteServiceLinkedRole -> TestTree
requestDeleteServiceLinkedRole =
  req
    "DeleteServiceLinkedRole"
    "fixture/DeleteServiceLinkedRole.yaml"

requestGenerateOrganizationsAccessReport :: GenerateOrganizationsAccessReport -> TestTree
requestGenerateOrganizationsAccessReport =
  req
    "GenerateOrganizationsAccessReport"
    "fixture/GenerateOrganizationsAccessReport.yaml"

requestGetServiceLastAccessedDetailsWithEntities :: GetServiceLastAccessedDetailsWithEntities -> TestTree
requestGetServiceLastAccessedDetailsWithEntities =
  req
    "GetServiceLastAccessedDetailsWithEntities"
    "fixture/GetServiceLastAccessedDetailsWithEntities.yaml"

requestPutGroupPolicy :: PutGroupPolicy -> TestTree
requestPutGroupPolicy =
  req
    "PutGroupPolicy"
    "fixture/PutGroupPolicy.yaml"

requestGetServiceLastAccessedDetails :: GetServiceLastAccessedDetails -> TestTree
requestGetServiceLastAccessedDetails =
  req
    "GetServiceLastAccessedDetails"
    "fixture/GetServiceLastAccessedDetails.yaml"

requestDeleteAccountAlias :: DeleteAccountAlias -> TestTree
requestDeleteAccountAlias =
  req
    "DeleteAccountAlias"
    "fixture/DeleteAccountAlias.yaml"

requestCreateSAMLProvider :: CreateSAMLProvider -> TestTree
requestCreateSAMLProvider =
  req
    "CreateSAMLProvider"
    "fixture/CreateSAMLProvider.yaml"

requestGetPolicy :: GetPolicy -> TestTree
requestGetPolicy =
  req
    "GetPolicy"
    "fixture/GetPolicy.yaml"

requestDetachUserPolicy :: DetachUserPolicy -> TestTree
requestDetachUserPolicy =
  req
    "DetachUserPolicy"
    "fixture/DetachUserPolicy.yaml"

requestUpdateGroup :: UpdateGroup -> TestTree
requestUpdateGroup =
  req
    "UpdateGroup"
    "fixture/UpdateGroup.yaml"

requestDeleteGroup :: DeleteGroup -> TestTree
requestDeleteGroup =
  req
    "DeleteGroup"
    "fixture/DeleteGroup.yaml"

requestGetServiceLinkedRoleDeletionStatus :: GetServiceLinkedRoleDeletionStatus -> TestTree
requestGetServiceLinkedRoleDeletionStatus =
  req
    "GetServiceLinkedRoleDeletionStatus"
    "fixture/GetServiceLinkedRoleDeletionStatus.yaml"

requestGetAccountAuthorizationDetails :: GetAccountAuthorizationDetails -> TestTree
requestGetAccountAuthorizationDetails =
  req
    "GetAccountAuthorizationDetails"
    "fixture/GetAccountAuthorizationDetails.yaml"

requestListGroupPolicies :: ListGroupPolicies -> TestTree
requestListGroupPolicies =
  req
    "ListGroupPolicies"
    "fixture/ListGroupPolicies.yaml"

requestDeletePolicyVersion :: DeletePolicyVersion -> TestTree
requestDeletePolicyVersion =
  req
    "DeletePolicyVersion"
    "fixture/DeletePolicyVersion.yaml"

requestDeleteSAMLProvider :: DeleteSAMLProvider -> TestTree
requestDeleteSAMLProvider =
  req
    "DeleteSAMLProvider"
    "fixture/DeleteSAMLProvider.yaml"

requestTagUser :: TagUser -> TestTree
requestTagUser =
  req
    "TagUser"
    "fixture/TagUser.yaml"

requestListInstanceProfiles :: ListInstanceProfiles -> TestTree
requestListInstanceProfiles =
  req
    "ListInstanceProfiles"
    "fixture/ListInstanceProfiles.yaml"

requestGetCredentialReport :: GetCredentialReport -> TestTree
requestGetCredentialReport =
  req
    "GetCredentialReport"
    "fixture/GetCredentialReport.yaml"

requestListMFADevices :: ListMFADevices -> TestTree
requestListMFADevices =
  req
    "ListMFADevices"
    "fixture/ListMFADevices.yaml"

requestUpdateSAMLProvider :: UpdateSAMLProvider -> TestTree
requestUpdateSAMLProvider =
  req
    "UpdateSAMLProvider"
    "fixture/UpdateSAMLProvider.yaml"

requestUntagInstanceProfile :: UntagInstanceProfile -> TestTree
requestUntagInstanceProfile =
  req
    "UntagInstanceProfile"
    "fixture/UntagInstanceProfile.yaml"

requestCreateAccountAlias :: CreateAccountAlias -> TestTree
requestCreateAccountAlias =
  req
    "CreateAccountAlias"
    "fixture/CreateAccountAlias.yaml"

requestUntagMFADevice :: UntagMFADevice -> TestTree
requestUntagMFADevice =
  req
    "UntagMFADevice"
    "fixture/UntagMFADevice.yaml"

requestUntagSAMLProvider :: UntagSAMLProvider -> TestTree
requestUntagSAMLProvider =
  req
    "UntagSAMLProvider"
    "fixture/UntagSAMLProvider.yaml"

requestListAccountAliases :: ListAccountAliases -> TestTree
requestListAccountAliases =
  req
    "ListAccountAliases"
    "fixture/ListAccountAliases.yaml"

requestListPolicyVersions :: ListPolicyVersions -> TestTree
requestListPolicyVersions =
  req
    "ListPolicyVersions"
    "fixture/ListPolicyVersions.yaml"

requestDeleteInstanceProfile :: DeleteInstanceProfile -> TestTree
requestDeleteInstanceProfile =
  req
    "DeleteInstanceProfile"
    "fixture/DeleteInstanceProfile.yaml"

requestGetAccountSummary :: GetAccountSummary -> TestTree
requestGetAccountSummary =
  req
    "GetAccountSummary"
    "fixture/GetAccountSummary.yaml"

requestListServerCertificateTags :: ListServerCertificateTags -> TestTree
requestListServerCertificateTags =
  req
    "ListServerCertificateTags"
    "fixture/ListServerCertificateTags.yaml"

requestGetSSHPublicKey :: GetSSHPublicKey -> TestTree
requestGetSSHPublicKey =
  req
    "GetSSHPublicKey"
    "fixture/GetSSHPublicKey.yaml"

requestUpdateOpenIdConnectProviderThumbprint :: UpdateOpenIdConnectProviderThumbprint -> TestTree
requestUpdateOpenIdConnectProviderThumbprint =
  req
    "UpdateOpenIdConnectProviderThumbprint"
    "fixture/UpdateOpenIdConnectProviderThumbprint.yaml"

requestGetAccessKeyLastUsed :: GetAccessKeyLastUsed -> TestTree
requestGetAccessKeyLastUsed =
  req
    "GetAccessKeyLastUsed"
    "fixture/GetAccessKeyLastUsed.yaml"

requestTagSAMLProvider :: TagSAMLProvider -> TestTree
requestTagSAMLProvider =
  req
    "TagSAMLProvider"
    "fixture/TagSAMLProvider.yaml"

requestGetAccountPasswordPolicy :: GetAccountPasswordPolicy -> TestTree
requestGetAccountPasswordPolicy =
  req
    "GetAccountPasswordPolicy"
    "fixture/GetAccountPasswordPolicy.yaml"

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

requestUpdateUser :: UpdateUser -> TestTree
requestUpdateUser =
  req
    "UpdateUser"
    "fixture/UpdateUser.yaml"

requestListRolePolicies :: ListRolePolicies -> TestTree
requestListRolePolicies =
  req
    "ListRolePolicies"
    "fixture/ListRolePolicies.yaml"

requestAddClientIdToOpenIdConnectProvider :: AddClientIdToOpenIdConnectProvider -> TestTree
requestAddClientIdToOpenIdConnectProvider =
  req
    "AddClientIdToOpenIdConnectProvider"
    "fixture/AddClientIdToOpenIdConnectProvider.yaml"

requestDeleteUserPermissionsBoundary :: DeleteUserPermissionsBoundary -> TestTree
requestDeleteUserPermissionsBoundary =
  req
    "DeleteUserPermissionsBoundary"
    "fixture/DeleteUserPermissionsBoundary.yaml"

requestPutUserPolicy :: PutUserPolicy -> TestTree
requestPutUserPolicy =
  req
    "PutUserPolicy"
    "fixture/PutUserPolicy.yaml"

requestDetachGroupPolicy :: DetachGroupPolicy -> TestTree
requestDetachGroupPolicy =
  req
    "DetachGroupPolicy"
    "fixture/DetachGroupPolicy.yaml"

requestUntagUser :: UntagUser -> TestTree
requestUntagUser =
  req
    "UntagUser"
    "fixture/UntagUser.yaml"

requestGetContextKeysForCustomPolicy :: GetContextKeysForCustomPolicy -> TestTree
requestGetContextKeysForCustomPolicy =
  req
    "GetContextKeysForCustomPolicy"
    "fixture/GetContextKeysForCustomPolicy.yaml"

requestPutRolePermissionsBoundary :: PutRolePermissionsBoundary -> TestTree
requestPutRolePermissionsBoundary =
  req
    "PutRolePermissionsBoundary"
    "fixture/PutRolePermissionsBoundary.yaml"

requestUntagRole :: UntagRole -> TestTree
requestUntagRole =
  req
    "UntagRole"
    "fixture/UntagRole.yaml"

requestSimulateCustomPolicy :: SimulateCustomPolicy -> TestTree
requestSimulateCustomPolicy =
  req
    "SimulateCustomPolicy"
    "fixture/SimulateCustomPolicy.yaml"

requestUploadSSHPublicKey :: UploadSSHPublicKey -> TestTree
requestUploadSSHPublicKey =
  req
    "UploadSSHPublicKey"
    "fixture/UploadSSHPublicKey.yaml"

requestDeleteRole :: DeleteRole -> TestTree
requestDeleteRole =
  req
    "DeleteRole"
    "fixture/DeleteRole.yaml"

requestListUserPolicies :: ListUserPolicies -> TestTree
requestListUserPolicies =
  req
    "ListUserPolicies"
    "fixture/ListUserPolicies.yaml"

requestPutRolePolicy :: PutRolePolicy -> TestTree
requestPutRolePolicy =
  req
    "PutRolePolicy"
    "fixture/PutRolePolicy.yaml"

requestUpdateRole :: UpdateRole -> TestTree
requestUpdateRole =
  req
    "UpdateRole"
    "fixture/UpdateRole.yaml"

requestSetSecurityTokenServicePreferences :: SetSecurityTokenServicePreferences -> TestTree
requestSetSecurityTokenServicePreferences =
  req
    "SetSecurityTokenServicePreferences"
    "fixture/SetSecurityTokenServicePreferences.yaml"

requestAttachUserPolicy :: AttachUserPolicy -> TestTree
requestAttachUserPolicy =
  req
    "AttachUserPolicy"
    "fixture/AttachUserPolicy.yaml"

requestTagServerCertificate :: TagServerCertificate -> TestTree
requestTagServerCertificate =
  req
    "TagServerCertificate"
    "fixture/TagServerCertificate.yaml"

requestListAccessKeys :: ListAccessKeys -> TestTree
requestListAccessKeys =
  req
    "ListAccessKeys"
    "fixture/ListAccessKeys.yaml"

requestCreateOpenIdConnectProvider :: CreateOpenIdConnectProvider -> TestTree
requestCreateOpenIdConnectProvider =
  req
    "CreateOpenIdConnectProvider"
    "fixture/CreateOpenIdConnectProvider.yaml"

requestDeactivateMFADevice :: DeactivateMFADevice -> TestTree
requestDeactivateMFADevice =
  req
    "DeactivateMFADevice"
    "fixture/DeactivateMFADevice.yaml"

requestListUserTags :: ListUserTags -> TestTree
requestListUserTags =
  req
    "ListUserTags"
    "fixture/ListUserTags.yaml"

requestGetRole :: GetRole -> TestTree
requestGetRole =
  req
    "GetRole"
    "fixture/GetRole.yaml"

-- Responses

responseCreateVirtualMFADevice :: CreateVirtualMFADeviceResponse -> TestTree
responseCreateVirtualMFADevice =
  res
    "CreateVirtualMFADeviceResponse"
    "fixture/CreateVirtualMFADeviceResponse.proto"
    iam
    (Proxy :: Proxy CreateVirtualMFADevice)

responseAttachRolePolicy :: AttachRolePolicyResponse -> TestTree
responseAttachRolePolicy =
  res
    "AttachRolePolicyResponse"
    "fixture/AttachRolePolicyResponse.proto"
    iam
    (Proxy :: Proxy AttachRolePolicy)

responseDeleteSSHPublicKey :: DeleteSSHPublicKeyResponse -> TestTree
responseDeleteSSHPublicKey =
  res
    "DeleteSSHPublicKeyResponse"
    "fixture/DeleteSSHPublicKeyResponse.proto"
    iam
    (Proxy :: Proxy DeleteSSHPublicKey)

responseGetUser :: GetUserResponse -> TestTree
responseGetUser =
  res
    "GetUserResponse"
    "fixture/GetUserResponse.proto"
    iam
    (Proxy :: Proxy GetUser)

responseUpdateSSHPublicKey :: UpdateSSHPublicKeyResponse -> TestTree
responseUpdateSSHPublicKey =
  res
    "UpdateSSHPublicKeyResponse"
    "fixture/UpdateSSHPublicKeyResponse.proto"
    iam
    (Proxy :: Proxy UpdateSSHPublicKey)

responseUntagOpenIdConnectProvider :: UntagOpenIdConnectProviderResponse -> TestTree
responseUntagOpenIdConnectProvider =
  res
    "UntagOpenIdConnectProviderResponse"
    "fixture/UntagOpenIdConnectProviderResponse.proto"
    iam
    (Proxy :: Proxy UntagOpenIdConnectProvider)

responseListSigningCertificates :: ListSigningCertificatesResponse -> TestTree
responseListSigningCertificates =
  res
    "ListSigningCertificatesResponse"
    "fixture/ListSigningCertificatesResponse.proto"
    iam
    (Proxy :: Proxy ListSigningCertificates)

responseDeleteOpenIdConnectProvider :: DeleteOpenIdConnectProviderResponse -> TestTree
responseDeleteOpenIdConnectProvider =
  res
    "DeleteOpenIdConnectProviderResponse"
    "fixture/DeleteOpenIdConnectProviderResponse.proto"
    iam
    (Proxy :: Proxy DeleteOpenIdConnectProvider)

responseListRoleTags :: ListRoleTagsResponse -> TestTree
responseListRoleTags =
  res
    "ListRoleTagsResponse"
    "fixture/ListRoleTagsResponse.proto"
    iam
    (Proxy :: Proxy ListRoleTags)

responseListOpenIdConnectProviders :: ListOpenIdConnectProvidersResponse -> TestTree
responseListOpenIdConnectProviders =
  res
    "ListOpenIdConnectProvidersResponse"
    "fixture/ListOpenIdConnectProvidersResponse.proto"
    iam
    (Proxy :: Proxy ListOpenIdConnectProviders)

responseCreatePolicy :: CreatePolicyResponse -> TestTree
responseCreatePolicy =
  res
    "CreatePolicyResponse"
    "fixture/CreatePolicyResponse.proto"
    iam
    (Proxy :: Proxy CreatePolicy)

responseGetSAMLProvider :: GetSAMLProviderResponse -> TestTree
responseGetSAMLProvider =
  res
    "GetSAMLProviderResponse"
    "fixture/GetSAMLProviderResponse.proto"
    iam
    (Proxy :: Proxy GetSAMLProvider)

responseGetContextKeysForPrincipalPolicy :: GetContextKeysForPolicyResponse -> TestTree
responseGetContextKeysForPrincipalPolicy =
  res
    "GetContextKeysForPrincipalPolicyResponse"
    "fixture/GetContextKeysForPrincipalPolicyResponse.proto"
    iam
    (Proxy :: Proxy GetContextKeysForPrincipalPolicy)

responseListEntitiesForPolicy :: ListEntitiesForPolicyResponse -> TestTree
responseListEntitiesForPolicy =
  res
    "ListEntitiesForPolicyResponse"
    "fixture/ListEntitiesForPolicyResponse.proto"
    iam
    (Proxy :: Proxy ListEntitiesForPolicy)

responseListGroupsForUser :: ListGroupsForUserResponse -> TestTree
responseListGroupsForUser =
  res
    "ListGroupsForUserResponse"
    "fixture/ListGroupsForUserResponse.proto"
    iam
    (Proxy :: Proxy ListGroupsForUser)

responseSimulatePrincipalPolicy :: SimulatePolicyResponse -> TestTree
responseSimulatePrincipalPolicy =
  res
    "SimulatePrincipalPolicyResponse"
    "fixture/SimulatePrincipalPolicyResponse.proto"
    iam
    (Proxy :: Proxy SimulatePrincipalPolicy)

responseListPolicies :: ListPoliciesResponse -> TestTree
responseListPolicies =
  res
    "ListPoliciesResponse"
    "fixture/ListPoliciesResponse.proto"
    iam
    (Proxy :: Proxy ListPolicies)

responseCreateServiceLinkedRole :: CreateServiceLinkedRoleResponse -> TestTree
responseCreateServiceLinkedRole =
  res
    "CreateServiceLinkedRoleResponse"
    "fixture/CreateServiceLinkedRoleResponse.proto"
    iam
    (Proxy :: Proxy CreateServiceLinkedRole)

responseUntagPolicy :: UntagPolicyResponse -> TestTree
responseUntagPolicy =
  res
    "UntagPolicyResponse"
    "fixture/UntagPolicyResponse.proto"
    iam
    (Proxy :: Proxy UntagPolicy)

responseDeletePolicy :: DeletePolicyResponse -> TestTree
responseDeletePolicy =
  res
    "DeletePolicyResponse"
    "fixture/DeletePolicyResponse.proto"
    iam
    (Proxy :: Proxy DeletePolicy)

responseDeleteServerCertificate :: DeleteServerCertificateResponse -> TestTree
responseDeleteServerCertificate =
  res
    "DeleteServerCertificateResponse"
    "fixture/DeleteServerCertificateResponse.proto"
    iam
    (Proxy :: Proxy DeleteServerCertificate)

responseListAttachedGroupPolicies :: ListAttachedGroupPoliciesResponse -> TestTree
responseListAttachedGroupPolicies =
  res
    "ListAttachedGroupPoliciesResponse"
    "fixture/ListAttachedGroupPoliciesResponse.proto"
    iam
    (Proxy :: Proxy ListAttachedGroupPolicies)

responseChangePassword :: ChangePasswordResponse -> TestTree
responseChangePassword =
  res
    "ChangePasswordResponse"
    "fixture/ChangePasswordResponse.proto"
    iam
    (Proxy :: Proxy ChangePassword)

responseListMFADeviceTags :: ListMFADeviceTagsResponse -> TestTree
responseListMFADeviceTags =
  res
    "ListMFADeviceTagsResponse"
    "fixture/ListMFADeviceTagsResponse.proto"
    iam
    (Proxy :: Proxy ListMFADeviceTags)

responseUntagServerCertificate :: UntagServerCertificateResponse -> TestTree
responseUntagServerCertificate =
  res
    "UntagServerCertificateResponse"
    "fixture/UntagServerCertificateResponse.proto"
    iam
    (Proxy :: Proxy UntagServerCertificate)

responseUpdateAssumeRolePolicy :: UpdateAssumeRolePolicyResponse -> TestTree
responseUpdateAssumeRolePolicy =
  res
    "UpdateAssumeRolePolicyResponse"
    "fixture/UpdateAssumeRolePolicyResponse.proto"
    iam
    (Proxy :: Proxy UpdateAssumeRolePolicy)

responseGetGroupPolicy :: GetGroupPolicyResponse -> TestTree
responseGetGroupPolicy =
  res
    "GetGroupPolicyResponse"
    "fixture/GetGroupPolicyResponse.proto"
    iam
    (Proxy :: Proxy GetGroupPolicy)

responseUpdateServerCertificate :: UpdateServerCertificateResponse -> TestTree
responseUpdateServerCertificate =
  res
    "UpdateServerCertificateResponse"
    "fixture/UpdateServerCertificateResponse.proto"
    iam
    (Proxy :: Proxy UpdateServerCertificate)

responseListServerCertificates :: ListServerCertificatesResponse -> TestTree
responseListServerCertificates =
  res
    "ListServerCertificatesResponse"
    "fixture/ListServerCertificatesResponse.proto"
    iam
    (Proxy :: Proxy ListServerCertificates)

responseListInstanceProfileTags :: ListInstanceProfileTagsResponse -> TestTree
responseListInstanceProfileTags =
  res
    "ListInstanceProfileTagsResponse"
    "fixture/ListInstanceProfileTagsResponse.proto"
    iam
    (Proxy :: Proxy ListInstanceProfileTags)

responseDeleteGroupPolicy :: DeleteGroupPolicyResponse -> TestTree
responseDeleteGroupPolicy =
  res
    "DeleteGroupPolicyResponse"
    "fixture/DeleteGroupPolicyResponse.proto"
    iam
    (Proxy :: Proxy DeleteGroupPolicy)

responseCreateInstanceProfile :: CreateInstanceProfileResponse -> TestTree
responseCreateInstanceProfile =
  res
    "CreateInstanceProfileResponse"
    "fixture/CreateInstanceProfileResponse.proto"
    iam
    (Proxy :: Proxy CreateInstanceProfile)

responseListGroups :: ListGroupsResponse -> TestTree
responseListGroups =
  res
    "ListGroupsResponse"
    "fixture/ListGroupsResponse.proto"
    iam
    (Proxy :: Proxy ListGroups)

responseGetLoginProfile :: GetLoginProfileResponse -> TestTree
responseGetLoginProfile =
  res
    "GetLoginProfileResponse"
    "fixture/GetLoginProfileResponse.proto"
    iam
    (Proxy :: Proxy GetLoginProfile)

responseTagRole :: TagRoleResponse -> TestTree
responseTagRole =
  res
    "TagRoleResponse"
    "fixture/TagRoleResponse.proto"
    iam
    (Proxy :: Proxy TagRole)

responseRemoveRoleFromInstanceProfile :: RemoveRoleFromInstanceProfileResponse -> TestTree
responseRemoveRoleFromInstanceProfile =
  res
    "RemoveRoleFromInstanceProfileResponse"
    "fixture/RemoveRoleFromInstanceProfileResponse.proto"
    iam
    (Proxy :: Proxy RemoveRoleFromInstanceProfile)

responseGenerateCredentialReport :: GenerateCredentialReportResponse -> TestTree
responseGenerateCredentialReport =
  res
    "GenerateCredentialReportResponse"
    "fixture/GenerateCredentialReportResponse.proto"
    iam
    (Proxy :: Proxy GenerateCredentialReport)

responseCreatePolicyVersion :: CreatePolicyVersionResponse -> TestTree
responseCreatePolicyVersion =
  res
    "CreatePolicyVersionResponse"
    "fixture/CreatePolicyVersionResponse.proto"
    iam
    (Proxy :: Proxy CreatePolicyVersion)

responseGetServerCertificate :: GetServerCertificateResponse -> TestTree
responseGetServerCertificate =
  res
    "GetServerCertificateResponse"
    "fixture/GetServerCertificateResponse.proto"
    iam
    (Proxy :: Proxy GetServerCertificate)

responseRemoveUserFromGroup :: RemoveUserFromGroupResponse -> TestTree
responseRemoveUserFromGroup =
  res
    "RemoveUserFromGroupResponse"
    "fixture/RemoveUserFromGroupResponse.proto"
    iam
    (Proxy :: Proxy RemoveUserFromGroup)

responseSetDefaultPolicyVersion :: SetDefaultPolicyVersionResponse -> TestTree
responseSetDefaultPolicyVersion =
  res
    "SetDefaultPolicyVersionResponse"
    "fixture/SetDefaultPolicyVersionResponse.proto"
    iam
    (Proxy :: Proxy SetDefaultPolicyVersion)

responseResetServiceSpecificCredential :: ResetServiceSpecificCredentialResponse -> TestTree
responseResetServiceSpecificCredential =
  res
    "ResetServiceSpecificCredentialResponse"
    "fixture/ResetServiceSpecificCredentialResponse.proto"
    iam
    (Proxy :: Proxy ResetServiceSpecificCredential)

responseGenerateServiceLastAccessedDetails :: GenerateServiceLastAccessedDetailsResponse -> TestTree
responseGenerateServiceLastAccessedDetails =
  res
    "GenerateServiceLastAccessedDetailsResponse"
    "fixture/GenerateServiceLastAccessedDetailsResponse.proto"
    iam
    (Proxy :: Proxy GenerateServiceLastAccessedDetails)

responseListPoliciesGrantingServiceAccess :: ListPoliciesGrantingServiceAccessResponse -> TestTree
responseListPoliciesGrantingServiceAccess =
  res
    "ListPoliciesGrantingServiceAccessResponse"
    "fixture/ListPoliciesGrantingServiceAccessResponse.proto"
    iam
    (Proxy :: Proxy ListPoliciesGrantingServiceAccess)

responseUpdateRoleDescription :: UpdateRoleDescriptionResponse -> TestTree
responseUpdateRoleDescription =
  res
    "UpdateRoleDescriptionResponse"
    "fixture/UpdateRoleDescriptionResponse.proto"
    iam
    (Proxy :: Proxy UpdateRoleDescription)

responseUploadServerCertificate :: UploadServerCertificateResponse -> TestTree
responseUploadServerCertificate =
  res
    "UploadServerCertificateResponse"
    "fixture/UploadServerCertificateResponse.proto"
    iam
    (Proxy :: Proxy UploadServerCertificate)

responseDetachRolePolicy :: DetachRolePolicyResponse -> TestTree
responseDetachRolePolicy =
  res
    "DetachRolePolicyResponse"
    "fixture/DetachRolePolicyResponse.proto"
    iam
    (Proxy :: Proxy DetachRolePolicy)

responseEnableMFADevice :: EnableMFADeviceResponse -> TestTree
responseEnableMFADevice =
  res
    "EnableMFADeviceResponse"
    "fixture/EnableMFADeviceResponse.proto"
    iam
    (Proxy :: Proxy EnableMFADevice)

responseListSAMLProviders :: ListSAMLProvidersResponse -> TestTree
responseListSAMLProviders =
  res
    "ListSAMLProvidersResponse"
    "fixture/ListSAMLProvidersResponse.proto"
    iam
    (Proxy :: Proxy ListSAMLProviders)

responseListPolicyTags :: ListPolicyTagsResponse -> TestTree
responseListPolicyTags =
  res
    "ListPolicyTagsResponse"
    "fixture/ListPolicyTagsResponse.proto"
    iam
    (Proxy :: Proxy ListPolicyTags)

responseCreateGroup :: CreateGroupResponse -> TestTree
responseCreateGroup =
  res
    "CreateGroupResponse"
    "fixture/CreateGroupResponse.proto"
    iam
    (Proxy :: Proxy CreateGroup)

responseTagMFADevice :: TagMFADeviceResponse -> TestTree
responseTagMFADevice =
  res
    "TagMFADeviceResponse"
    "fixture/TagMFADeviceResponse.proto"
    iam
    (Proxy :: Proxy TagMFADevice)

responseTagInstanceProfile :: TagInstanceProfileResponse -> TestTree
responseTagInstanceProfile =
  res
    "TagInstanceProfileResponse"
    "fixture/TagInstanceProfileResponse.proto"
    iam
    (Proxy :: Proxy TagInstanceProfile)

responseGetOpenIdConnectProvider :: GetOpenIdConnectProviderResponse -> TestTree
responseGetOpenIdConnectProvider =
  res
    "GetOpenIdConnectProviderResponse"
    "fixture/GetOpenIdConnectProviderResponse.proto"
    iam
    (Proxy :: Proxy GetOpenIdConnectProvider)

responseCreateRole :: CreateRoleResponse -> TestTree
responseCreateRole =
  res
    "CreateRoleResponse"
    "fixture/CreateRoleResponse.proto"
    iam
    (Proxy :: Proxy CreateRole)

responsePutUserPermissionsBoundary :: PutUserPermissionsBoundaryResponse -> TestTree
responsePutUserPermissionsBoundary =
  res
    "PutUserPermissionsBoundaryResponse"
    "fixture/PutUserPermissionsBoundaryResponse.proto"
    iam
    (Proxy :: Proxy PutUserPermissionsBoundary)

responseDeleteUserPolicy :: DeleteUserPolicyResponse -> TestTree
responseDeleteUserPolicy =
  res
    "DeleteUserPolicyResponse"
    "fixture/DeleteUserPolicyResponse.proto"
    iam
    (Proxy :: Proxy DeleteUserPolicy)

responseDeleteRolePermissionsBoundary :: DeleteRolePermissionsBoundaryResponse -> TestTree
responseDeleteRolePermissionsBoundary =
  res
    "DeleteRolePermissionsBoundaryResponse"
    "fixture/DeleteRolePermissionsBoundaryResponse.proto"
    iam
    (Proxy :: Proxy DeleteRolePermissionsBoundary)

responseCreateUser :: CreateUserResponse -> TestTree
responseCreateUser =
  res
    "CreateUserResponse"
    "fixture/CreateUserResponse.proto"
    iam
    (Proxy :: Proxy CreateUser)

responseListOpenIdConnectProviderTags :: ListOpenIdConnectProviderTagsResponse -> TestTree
responseListOpenIdConnectProviderTags =
  res
    "ListOpenIdConnectProviderTagsResponse"
    "fixture/ListOpenIdConnectProviderTagsResponse.proto"
    iam
    (Proxy :: Proxy ListOpenIdConnectProviderTags)

responseListRoles :: ListRolesResponse -> TestTree
responseListRoles =
  res
    "ListRolesResponse"
    "fixture/ListRolesResponse.proto"
    iam
    (Proxy :: Proxy ListRoles)

responseUploadSigningCertificate :: UploadSigningCertificateResponse -> TestTree
responseUploadSigningCertificate =
  res
    "UploadSigningCertificateResponse"
    "fixture/UploadSigningCertificateResponse.proto"
    iam
    (Proxy :: Proxy UploadSigningCertificate)

responseDeleteRolePolicy :: DeleteRolePolicyResponse -> TestTree
responseDeleteRolePolicy =
  res
    "DeleteRolePolicyResponse"
    "fixture/DeleteRolePolicyResponse.proto"
    iam
    (Proxy :: Proxy DeleteRolePolicy)

responseListAttachedRolePolicies :: ListAttachedRolePoliciesResponse -> TestTree
responseListAttachedRolePolicies =
  res
    "ListAttachedRolePoliciesResponse"
    "fixture/ListAttachedRolePoliciesResponse.proto"
    iam
    (Proxy :: Proxy ListAttachedRolePolicies)

responseGetRolePolicy :: GetRolePolicyResponse -> TestTree
responseGetRolePolicy =
  res
    "GetRolePolicyResponse"
    "fixture/GetRolePolicyResponse.proto"
    iam
    (Proxy :: Proxy GetRolePolicy)

responseDeleteAccessKey :: DeleteAccessKeyResponse -> TestTree
responseDeleteAccessKey =
  res
    "DeleteAccessKeyResponse"
    "fixture/DeleteAccessKeyResponse.proto"
    iam
    (Proxy :: Proxy DeleteAccessKey)

responseListVirtualMFADevices :: ListVirtualMFADevicesResponse -> TestTree
responseListVirtualMFADevices =
  res
    "ListVirtualMFADevicesResponse"
    "fixture/ListVirtualMFADevicesResponse.proto"
    iam
    (Proxy :: Proxy ListVirtualMFADevices)

responseTagPolicy :: TagPolicyResponse -> TestTree
responseTagPolicy =
  res
    "TagPolicyResponse"
    "fixture/TagPolicyResponse.proto"
    iam
    (Proxy :: Proxy TagPolicy)

responseRemoveClientIdFromOpenIdConnectProvider :: RemoveClientIdFromOpenIdConnectProviderResponse -> TestTree
responseRemoveClientIdFromOpenIdConnectProvider =
  res
    "RemoveClientIdFromOpenIdConnectProviderResponse"
    "fixture/RemoveClientIdFromOpenIdConnectProviderResponse.proto"
    iam
    (Proxy :: Proxy RemoveClientIdFromOpenIdConnectProvider)

responseDeleteVirtualMFADevice :: DeleteVirtualMFADeviceResponse -> TestTree
responseDeleteVirtualMFADevice =
  res
    "DeleteVirtualMFADeviceResponse"
    "fixture/DeleteVirtualMFADeviceResponse.proto"
    iam
    (Proxy :: Proxy DeleteVirtualMFADevice)

responseUpdateAccessKey :: UpdateAccessKeyResponse -> TestTree
responseUpdateAccessKey =
  res
    "UpdateAccessKeyResponse"
    "fixture/UpdateAccessKeyResponse.proto"
    iam
    (Proxy :: Proxy UpdateAccessKey)

responseCreateServiceSpecificCredential :: CreateServiceSpecificCredentialResponse -> TestTree
responseCreateServiceSpecificCredential =
  res
    "CreateServiceSpecificCredentialResponse"
    "fixture/CreateServiceSpecificCredentialResponse.proto"
    iam
    (Proxy :: Proxy CreateServiceSpecificCredential)

responseResyncMFADevice :: ResyncMFADeviceResponse -> TestTree
responseResyncMFADevice =
  res
    "ResyncMFADeviceResponse"
    "fixture/ResyncMFADeviceResponse.proto"
    iam
    (Proxy :: Proxy ResyncMFADevice)

responseUpdateServiceSpecificCredential :: UpdateServiceSpecificCredentialResponse -> TestTree
responseUpdateServiceSpecificCredential =
  res
    "UpdateServiceSpecificCredentialResponse"
    "fixture/UpdateServiceSpecificCredentialResponse.proto"
    iam
    (Proxy :: Proxy UpdateServiceSpecificCredential)

responseGetUserPolicy :: GetUserPolicyResponse -> TestTree
responseGetUserPolicy =
  res
    "GetUserPolicyResponse"
    "fixture/GetUserPolicyResponse.proto"
    iam
    (Proxy :: Proxy GetUserPolicy)

responseUpdateAccountPasswordPolicy :: UpdateAccountPasswordPolicyResponse -> TestTree
responseUpdateAccountPasswordPolicy =
  res
    "UpdateAccountPasswordPolicyResponse"
    "fixture/UpdateAccountPasswordPolicyResponse.proto"
    iam
    (Proxy :: Proxy UpdateAccountPasswordPolicy)

responseListServiceSpecificCredentials :: ListServiceSpecificCredentialsResponse -> TestTree
responseListServiceSpecificCredentials =
  res
    "ListServiceSpecificCredentialsResponse"
    "fixture/ListServiceSpecificCredentialsResponse.proto"
    iam
    (Proxy :: Proxy ListServiceSpecificCredentials)

responseDeleteSigningCertificate :: DeleteSigningCertificateResponse -> TestTree
responseDeleteSigningCertificate =
  res
    "DeleteSigningCertificateResponse"
    "fixture/DeleteSigningCertificateResponse.proto"
    iam
    (Proxy :: Proxy DeleteSigningCertificate)

responseListAttachedUserPolicies :: ListAttachedUserPoliciesResponse -> TestTree
responseListAttachedUserPolicies =
  res
    "ListAttachedUserPoliciesResponse"
    "fixture/ListAttachedUserPoliciesResponse.proto"
    iam
    (Proxy :: Proxy ListAttachedUserPolicies)

responseUpdateSigningCertificate :: UpdateSigningCertificateResponse -> TestTree
responseUpdateSigningCertificate =
  res
    "UpdateSigningCertificateResponse"
    "fixture/UpdateSigningCertificateResponse.proto"
    iam
    (Proxy :: Proxy UpdateSigningCertificate)

responseListSSHPublicKeys :: ListSSHPublicKeysResponse -> TestTree
responseListSSHPublicKeys =
  res
    "ListSSHPublicKeysResponse"
    "fixture/ListSSHPublicKeysResponse.proto"
    iam
    (Proxy :: Proxy ListSSHPublicKeys)

responseDeleteServiceSpecificCredential :: DeleteServiceSpecificCredentialResponse -> TestTree
responseDeleteServiceSpecificCredential =
  res
    "DeleteServiceSpecificCredentialResponse"
    "fixture/DeleteServiceSpecificCredentialResponse.proto"
    iam
    (Proxy :: Proxy DeleteServiceSpecificCredential)

responseCreateAccessKey :: CreateAccessKeyResponse -> TestTree
responseCreateAccessKey =
  res
    "CreateAccessKeyResponse"
    "fixture/CreateAccessKeyResponse.proto"
    iam
    (Proxy :: Proxy CreateAccessKey)

responseDeleteAccountPasswordPolicy :: DeleteAccountPasswordPolicyResponse -> TestTree
responseDeleteAccountPasswordPolicy =
  res
    "DeleteAccountPasswordPolicyResponse"
    "fixture/DeleteAccountPasswordPolicyResponse.proto"
    iam
    (Proxy :: Proxy DeleteAccountPasswordPolicy)

responseGetOrganizationsAccessReport :: GetOrganizationsAccessReportResponse -> TestTree
responseGetOrganizationsAccessReport =
  res
    "GetOrganizationsAccessReportResponse"
    "fixture/GetOrganizationsAccessReportResponse.proto"
    iam
    (Proxy :: Proxy GetOrganizationsAccessReport)

responseListInstanceProfilesForRole :: ListInstanceProfilesForRoleResponse -> TestTree
responseListInstanceProfilesForRole =
  res
    "ListInstanceProfilesForRoleResponse"
    "fixture/ListInstanceProfilesForRoleResponse.proto"
    iam
    (Proxy :: Proxy ListInstanceProfilesForRole)

responseGetPolicyVersion :: GetPolicyVersionResponse -> TestTree
responseGetPolicyVersion =
  res
    "GetPolicyVersionResponse"
    "fixture/GetPolicyVersionResponse.proto"
    iam
    (Proxy :: Proxy GetPolicyVersion)

responseCreateLoginProfile :: CreateLoginProfileResponse -> TestTree
responseCreateLoginProfile =
  res
    "CreateLoginProfileResponse"
    "fixture/CreateLoginProfileResponse.proto"
    iam
    (Proxy :: Proxy CreateLoginProfile)

responseAddRoleToInstanceProfile :: AddRoleToInstanceProfileResponse -> TestTree
responseAddRoleToInstanceProfile =
  res
    "AddRoleToInstanceProfileResponse"
    "fixture/AddRoleToInstanceProfileResponse.proto"
    iam
    (Proxy :: Proxy AddRoleToInstanceProfile)

responseGetInstanceProfile :: GetInstanceProfileResponse -> TestTree
responseGetInstanceProfile =
  res
    "GetInstanceProfileResponse"
    "fixture/GetInstanceProfileResponse.proto"
    iam
    (Proxy :: Proxy GetInstanceProfile)

responseTagOpenIdConnectProvider :: TagOpenIdConnectProviderResponse -> TestTree
responseTagOpenIdConnectProvider =
  res
    "TagOpenIdConnectProviderResponse"
    "fixture/TagOpenIdConnectProviderResponse.proto"
    iam
    (Proxy :: Proxy TagOpenIdConnectProvider)

responseAddUserToGroup :: AddUserToGroupResponse -> TestTree
responseAddUserToGroup =
  res
    "AddUserToGroupResponse"
    "fixture/AddUserToGroupResponse.proto"
    iam
    (Proxy :: Proxy AddUserToGroup)

responseAttachGroupPolicy :: AttachGroupPolicyResponse -> TestTree
responseAttachGroupPolicy =
  res
    "AttachGroupPolicyResponse"
    "fixture/AttachGroupPolicyResponse.proto"
    iam
    (Proxy :: Proxy AttachGroupPolicy)

responseUpdateLoginProfile :: UpdateLoginProfileResponse -> TestTree
responseUpdateLoginProfile =
  res
    "UpdateLoginProfileResponse"
    "fixture/UpdateLoginProfileResponse.proto"
    iam
    (Proxy :: Proxy UpdateLoginProfile)

responseListSAMLProviderTags :: ListSAMLProviderTagsResponse -> TestTree
responseListSAMLProviderTags =
  res
    "ListSAMLProviderTagsResponse"
    "fixture/ListSAMLProviderTagsResponse.proto"
    iam
    (Proxy :: Proxy ListSAMLProviderTags)

responseGetGroup :: GetGroupResponse -> TestTree
responseGetGroup =
  res
    "GetGroupResponse"
    "fixture/GetGroupResponse.proto"
    iam
    (Proxy :: Proxy GetGroup)

responseDeleteLoginProfile :: DeleteLoginProfileResponse -> TestTree
responseDeleteLoginProfile =
  res
    "DeleteLoginProfileResponse"
    "fixture/DeleteLoginProfileResponse.proto"
    iam
    (Proxy :: Proxy DeleteLoginProfile)

responseDeleteServiceLinkedRole :: DeleteServiceLinkedRoleResponse -> TestTree
responseDeleteServiceLinkedRole =
  res
    "DeleteServiceLinkedRoleResponse"
    "fixture/DeleteServiceLinkedRoleResponse.proto"
    iam
    (Proxy :: Proxy DeleteServiceLinkedRole)

responseGenerateOrganizationsAccessReport :: GenerateOrganizationsAccessReportResponse -> TestTree
responseGenerateOrganizationsAccessReport =
  res
    "GenerateOrganizationsAccessReportResponse"
    "fixture/GenerateOrganizationsAccessReportResponse.proto"
    iam
    (Proxy :: Proxy GenerateOrganizationsAccessReport)

responseGetServiceLastAccessedDetailsWithEntities :: GetServiceLastAccessedDetailsWithEntitiesResponse -> TestTree
responseGetServiceLastAccessedDetailsWithEntities =
  res
    "GetServiceLastAccessedDetailsWithEntitiesResponse"
    "fixture/GetServiceLastAccessedDetailsWithEntitiesResponse.proto"
    iam
    (Proxy :: Proxy GetServiceLastAccessedDetailsWithEntities)

responsePutGroupPolicy :: PutGroupPolicyResponse -> TestTree
responsePutGroupPolicy =
  res
    "PutGroupPolicyResponse"
    "fixture/PutGroupPolicyResponse.proto"
    iam
    (Proxy :: Proxy PutGroupPolicy)

responseGetServiceLastAccessedDetails :: GetServiceLastAccessedDetailsResponse -> TestTree
responseGetServiceLastAccessedDetails =
  res
    "GetServiceLastAccessedDetailsResponse"
    "fixture/GetServiceLastAccessedDetailsResponse.proto"
    iam
    (Proxy :: Proxy GetServiceLastAccessedDetails)

responseDeleteAccountAlias :: DeleteAccountAliasResponse -> TestTree
responseDeleteAccountAlias =
  res
    "DeleteAccountAliasResponse"
    "fixture/DeleteAccountAliasResponse.proto"
    iam
    (Proxy :: Proxy DeleteAccountAlias)

responseCreateSAMLProvider :: CreateSAMLProviderResponse -> TestTree
responseCreateSAMLProvider =
  res
    "CreateSAMLProviderResponse"
    "fixture/CreateSAMLProviderResponse.proto"
    iam
    (Proxy :: Proxy CreateSAMLProvider)

responseGetPolicy :: GetPolicyResponse -> TestTree
responseGetPolicy =
  res
    "GetPolicyResponse"
    "fixture/GetPolicyResponse.proto"
    iam
    (Proxy :: Proxy GetPolicy)

responseDetachUserPolicy :: DetachUserPolicyResponse -> TestTree
responseDetachUserPolicy =
  res
    "DetachUserPolicyResponse"
    "fixture/DetachUserPolicyResponse.proto"
    iam
    (Proxy :: Proxy DetachUserPolicy)

responseUpdateGroup :: UpdateGroupResponse -> TestTree
responseUpdateGroup =
  res
    "UpdateGroupResponse"
    "fixture/UpdateGroupResponse.proto"
    iam
    (Proxy :: Proxy UpdateGroup)

responseDeleteGroup :: DeleteGroupResponse -> TestTree
responseDeleteGroup =
  res
    "DeleteGroupResponse"
    "fixture/DeleteGroupResponse.proto"
    iam
    (Proxy :: Proxy DeleteGroup)

responseGetServiceLinkedRoleDeletionStatus :: GetServiceLinkedRoleDeletionStatusResponse -> TestTree
responseGetServiceLinkedRoleDeletionStatus =
  res
    "GetServiceLinkedRoleDeletionStatusResponse"
    "fixture/GetServiceLinkedRoleDeletionStatusResponse.proto"
    iam
    (Proxy :: Proxy GetServiceLinkedRoleDeletionStatus)

responseGetAccountAuthorizationDetails :: GetAccountAuthorizationDetailsResponse -> TestTree
responseGetAccountAuthorizationDetails =
  res
    "GetAccountAuthorizationDetailsResponse"
    "fixture/GetAccountAuthorizationDetailsResponse.proto"
    iam
    (Proxy :: Proxy GetAccountAuthorizationDetails)

responseListGroupPolicies :: ListGroupPoliciesResponse -> TestTree
responseListGroupPolicies =
  res
    "ListGroupPoliciesResponse"
    "fixture/ListGroupPoliciesResponse.proto"
    iam
    (Proxy :: Proxy ListGroupPolicies)

responseDeletePolicyVersion :: DeletePolicyVersionResponse -> TestTree
responseDeletePolicyVersion =
  res
    "DeletePolicyVersionResponse"
    "fixture/DeletePolicyVersionResponse.proto"
    iam
    (Proxy :: Proxy DeletePolicyVersion)

responseDeleteSAMLProvider :: DeleteSAMLProviderResponse -> TestTree
responseDeleteSAMLProvider =
  res
    "DeleteSAMLProviderResponse"
    "fixture/DeleteSAMLProviderResponse.proto"
    iam
    (Proxy :: Proxy DeleteSAMLProvider)

responseTagUser :: TagUserResponse -> TestTree
responseTagUser =
  res
    "TagUserResponse"
    "fixture/TagUserResponse.proto"
    iam
    (Proxy :: Proxy TagUser)

responseListInstanceProfiles :: ListInstanceProfilesResponse -> TestTree
responseListInstanceProfiles =
  res
    "ListInstanceProfilesResponse"
    "fixture/ListInstanceProfilesResponse.proto"
    iam
    (Proxy :: Proxy ListInstanceProfiles)

responseGetCredentialReport :: GetCredentialReportResponse -> TestTree
responseGetCredentialReport =
  res
    "GetCredentialReportResponse"
    "fixture/GetCredentialReportResponse.proto"
    iam
    (Proxy :: Proxy GetCredentialReport)

responseListMFADevices :: ListMFADevicesResponse -> TestTree
responseListMFADevices =
  res
    "ListMFADevicesResponse"
    "fixture/ListMFADevicesResponse.proto"
    iam
    (Proxy :: Proxy ListMFADevices)

responseUpdateSAMLProvider :: UpdateSAMLProviderResponse -> TestTree
responseUpdateSAMLProvider =
  res
    "UpdateSAMLProviderResponse"
    "fixture/UpdateSAMLProviderResponse.proto"
    iam
    (Proxy :: Proxy UpdateSAMLProvider)

responseUntagInstanceProfile :: UntagInstanceProfileResponse -> TestTree
responseUntagInstanceProfile =
  res
    "UntagInstanceProfileResponse"
    "fixture/UntagInstanceProfileResponse.proto"
    iam
    (Proxy :: Proxy UntagInstanceProfile)

responseCreateAccountAlias :: CreateAccountAliasResponse -> TestTree
responseCreateAccountAlias =
  res
    "CreateAccountAliasResponse"
    "fixture/CreateAccountAliasResponse.proto"
    iam
    (Proxy :: Proxy CreateAccountAlias)

responseUntagMFADevice :: UntagMFADeviceResponse -> TestTree
responseUntagMFADevice =
  res
    "UntagMFADeviceResponse"
    "fixture/UntagMFADeviceResponse.proto"
    iam
    (Proxy :: Proxy UntagMFADevice)

responseUntagSAMLProvider :: UntagSAMLProviderResponse -> TestTree
responseUntagSAMLProvider =
  res
    "UntagSAMLProviderResponse"
    "fixture/UntagSAMLProviderResponse.proto"
    iam
    (Proxy :: Proxy UntagSAMLProvider)

responseListAccountAliases :: ListAccountAliasesResponse -> TestTree
responseListAccountAliases =
  res
    "ListAccountAliasesResponse"
    "fixture/ListAccountAliasesResponse.proto"
    iam
    (Proxy :: Proxy ListAccountAliases)

responseListPolicyVersions :: ListPolicyVersionsResponse -> TestTree
responseListPolicyVersions =
  res
    "ListPolicyVersionsResponse"
    "fixture/ListPolicyVersionsResponse.proto"
    iam
    (Proxy :: Proxy ListPolicyVersions)

responseDeleteInstanceProfile :: DeleteInstanceProfileResponse -> TestTree
responseDeleteInstanceProfile =
  res
    "DeleteInstanceProfileResponse"
    "fixture/DeleteInstanceProfileResponse.proto"
    iam
    (Proxy :: Proxy DeleteInstanceProfile)

responseGetAccountSummary :: GetAccountSummaryResponse -> TestTree
responseGetAccountSummary =
  res
    "GetAccountSummaryResponse"
    "fixture/GetAccountSummaryResponse.proto"
    iam
    (Proxy :: Proxy GetAccountSummary)

responseListServerCertificateTags :: ListServerCertificateTagsResponse -> TestTree
responseListServerCertificateTags =
  res
    "ListServerCertificateTagsResponse"
    "fixture/ListServerCertificateTagsResponse.proto"
    iam
    (Proxy :: Proxy ListServerCertificateTags)

responseGetSSHPublicKey :: GetSSHPublicKeyResponse -> TestTree
responseGetSSHPublicKey =
  res
    "GetSSHPublicKeyResponse"
    "fixture/GetSSHPublicKeyResponse.proto"
    iam
    (Proxy :: Proxy GetSSHPublicKey)

responseUpdateOpenIdConnectProviderThumbprint :: UpdateOpenIdConnectProviderThumbprintResponse -> TestTree
responseUpdateOpenIdConnectProviderThumbprint =
  res
    "UpdateOpenIdConnectProviderThumbprintResponse"
    "fixture/UpdateOpenIdConnectProviderThumbprintResponse.proto"
    iam
    (Proxy :: Proxy UpdateOpenIdConnectProviderThumbprint)

responseGetAccessKeyLastUsed :: GetAccessKeyLastUsedResponse -> TestTree
responseGetAccessKeyLastUsed =
  res
    "GetAccessKeyLastUsedResponse"
    "fixture/GetAccessKeyLastUsedResponse.proto"
    iam
    (Proxy :: Proxy GetAccessKeyLastUsed)

responseTagSAMLProvider :: TagSAMLProviderResponse -> TestTree
responseTagSAMLProvider =
  res
    "TagSAMLProviderResponse"
    "fixture/TagSAMLProviderResponse.proto"
    iam
    (Proxy :: Proxy TagSAMLProvider)

responseGetAccountPasswordPolicy :: GetAccountPasswordPolicyResponse -> TestTree
responseGetAccountPasswordPolicy =
  res
    "GetAccountPasswordPolicyResponse"
    "fixture/GetAccountPasswordPolicyResponse.proto"
    iam
    (Proxy :: Proxy GetAccountPasswordPolicy)

responseDeleteUser :: DeleteUserResponse -> TestTree
responseDeleteUser =
  res
    "DeleteUserResponse"
    "fixture/DeleteUserResponse.proto"
    iam
    (Proxy :: Proxy DeleteUser)

responseListUsers :: ListUsersResponse -> TestTree
responseListUsers =
  res
    "ListUsersResponse"
    "fixture/ListUsersResponse.proto"
    iam
    (Proxy :: Proxy ListUsers)

responseUpdateUser :: UpdateUserResponse -> TestTree
responseUpdateUser =
  res
    "UpdateUserResponse"
    "fixture/UpdateUserResponse.proto"
    iam
    (Proxy :: Proxy UpdateUser)

responseListRolePolicies :: ListRolePoliciesResponse -> TestTree
responseListRolePolicies =
  res
    "ListRolePoliciesResponse"
    "fixture/ListRolePoliciesResponse.proto"
    iam
    (Proxy :: Proxy ListRolePolicies)

responseAddClientIdToOpenIdConnectProvider :: AddClientIdToOpenIdConnectProviderResponse -> TestTree
responseAddClientIdToOpenIdConnectProvider =
  res
    "AddClientIdToOpenIdConnectProviderResponse"
    "fixture/AddClientIdToOpenIdConnectProviderResponse.proto"
    iam
    (Proxy :: Proxy AddClientIdToOpenIdConnectProvider)

responseDeleteUserPermissionsBoundary :: DeleteUserPermissionsBoundaryResponse -> TestTree
responseDeleteUserPermissionsBoundary =
  res
    "DeleteUserPermissionsBoundaryResponse"
    "fixture/DeleteUserPermissionsBoundaryResponse.proto"
    iam
    (Proxy :: Proxy DeleteUserPermissionsBoundary)

responsePutUserPolicy :: PutUserPolicyResponse -> TestTree
responsePutUserPolicy =
  res
    "PutUserPolicyResponse"
    "fixture/PutUserPolicyResponse.proto"
    iam
    (Proxy :: Proxy PutUserPolicy)

responseDetachGroupPolicy :: DetachGroupPolicyResponse -> TestTree
responseDetachGroupPolicy =
  res
    "DetachGroupPolicyResponse"
    "fixture/DetachGroupPolicyResponse.proto"
    iam
    (Proxy :: Proxy DetachGroupPolicy)

responseUntagUser :: UntagUserResponse -> TestTree
responseUntagUser =
  res
    "UntagUserResponse"
    "fixture/UntagUserResponse.proto"
    iam
    (Proxy :: Proxy UntagUser)

responseGetContextKeysForCustomPolicy :: GetContextKeysForPolicyResponse -> TestTree
responseGetContextKeysForCustomPolicy =
  res
    "GetContextKeysForCustomPolicyResponse"
    "fixture/GetContextKeysForCustomPolicyResponse.proto"
    iam
    (Proxy :: Proxy GetContextKeysForCustomPolicy)

responsePutRolePermissionsBoundary :: PutRolePermissionsBoundaryResponse -> TestTree
responsePutRolePermissionsBoundary =
  res
    "PutRolePermissionsBoundaryResponse"
    "fixture/PutRolePermissionsBoundaryResponse.proto"
    iam
    (Proxy :: Proxy PutRolePermissionsBoundary)

responseUntagRole :: UntagRoleResponse -> TestTree
responseUntagRole =
  res
    "UntagRoleResponse"
    "fixture/UntagRoleResponse.proto"
    iam
    (Proxy :: Proxy UntagRole)

responseSimulateCustomPolicy :: SimulatePolicyResponse -> TestTree
responseSimulateCustomPolicy =
  res
    "SimulateCustomPolicyResponse"
    "fixture/SimulateCustomPolicyResponse.proto"
    iam
    (Proxy :: Proxy SimulateCustomPolicy)

responseUploadSSHPublicKey :: UploadSSHPublicKeyResponse -> TestTree
responseUploadSSHPublicKey =
  res
    "UploadSSHPublicKeyResponse"
    "fixture/UploadSSHPublicKeyResponse.proto"
    iam
    (Proxy :: Proxy UploadSSHPublicKey)

responseDeleteRole :: DeleteRoleResponse -> TestTree
responseDeleteRole =
  res
    "DeleteRoleResponse"
    "fixture/DeleteRoleResponse.proto"
    iam
    (Proxy :: Proxy DeleteRole)

responseListUserPolicies :: ListUserPoliciesResponse -> TestTree
responseListUserPolicies =
  res
    "ListUserPoliciesResponse"
    "fixture/ListUserPoliciesResponse.proto"
    iam
    (Proxy :: Proxy ListUserPolicies)

responsePutRolePolicy :: PutRolePolicyResponse -> TestTree
responsePutRolePolicy =
  res
    "PutRolePolicyResponse"
    "fixture/PutRolePolicyResponse.proto"
    iam
    (Proxy :: Proxy PutRolePolicy)

responseUpdateRole :: UpdateRoleResponse -> TestTree
responseUpdateRole =
  res
    "UpdateRoleResponse"
    "fixture/UpdateRoleResponse.proto"
    iam
    (Proxy :: Proxy UpdateRole)

responseSetSecurityTokenServicePreferences :: SetSecurityTokenServicePreferencesResponse -> TestTree
responseSetSecurityTokenServicePreferences =
  res
    "SetSecurityTokenServicePreferencesResponse"
    "fixture/SetSecurityTokenServicePreferencesResponse.proto"
    iam
    (Proxy :: Proxy SetSecurityTokenServicePreferences)

responseAttachUserPolicy :: AttachUserPolicyResponse -> TestTree
responseAttachUserPolicy =
  res
    "AttachUserPolicyResponse"
    "fixture/AttachUserPolicyResponse.proto"
    iam
    (Proxy :: Proxy AttachUserPolicy)

responseTagServerCertificate :: TagServerCertificateResponse -> TestTree
responseTagServerCertificate =
  res
    "TagServerCertificateResponse"
    "fixture/TagServerCertificateResponse.proto"
    iam
    (Proxy :: Proxy TagServerCertificate)

responseListAccessKeys :: ListAccessKeysResponse -> TestTree
responseListAccessKeys =
  res
    "ListAccessKeysResponse"
    "fixture/ListAccessKeysResponse.proto"
    iam
    (Proxy :: Proxy ListAccessKeys)

responseCreateOpenIdConnectProvider :: CreateOpenIdConnectProviderResponse -> TestTree
responseCreateOpenIdConnectProvider =
  res
    "CreateOpenIdConnectProviderResponse"
    "fixture/CreateOpenIdConnectProviderResponse.proto"
    iam
    (Proxy :: Proxy CreateOpenIdConnectProvider)

responseDeactivateMFADevice :: DeactivateMFADeviceResponse -> TestTree
responseDeactivateMFADevice =
  res
    "DeactivateMFADeviceResponse"
    "fixture/DeactivateMFADeviceResponse.proto"
    iam
    (Proxy :: Proxy DeactivateMFADevice)

responseListUserTags :: ListUserTagsResponse -> TestTree
responseListUserTags =
  res
    "ListUserTagsResponse"
    "fixture/ListUserTagsResponse.proto"
    iam
    (Proxy :: Proxy ListUserTags)

responseGetRole :: GetRoleResponse -> TestTree
responseGetRole =
  res
    "GetRoleResponse"
    "fixture/GetRoleResponse.proto"
    iam
    (Proxy :: Proxy GetRole)
