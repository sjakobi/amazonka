{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Identity and Access Management__
--
-- AWS Identity and Access Management (IAM) is a web service for securely controlling access to AWS services. With IAM, you can centrally manage users, security credentials such as access keys, and permissions that control which AWS resources users and applications can access. For more information about IAM, see <http://aws.amazon.com/iam/ AWS Identity and Access Management (IAM)> and the <https://docs.aws.amazon.com/IAM/latest/UserGuide/ AWS Identity and Access Management User Guide> .
module Network.AWS.IAM
  ( -- * Service Configuration
    iam,

    -- * Errors
    -- $errors

    -- ** MalformedPolicyDocumentException
    _MalformedPolicyDocumentException,

    -- ** PolicyEvaluationException
    _PolicyEvaluationException,

    -- ** UnrecognizedPublicKeyEncodingException
    _UnrecognizedPublicKeyEncodingException,

    -- ** ServiceNotSupportedException
    _ServiceNotSupportedException,

    -- ** ReportGenerationLimitExceededException
    _ReportGenerationLimitExceededException,

    -- ** DuplicateSSHPublicKeyException
    _DuplicateSSHPublicKeyException,

    -- ** KeyPairMismatchException
    _KeyPairMismatchException,

    -- ** PolicyNotAttachableException
    _PolicyNotAttachableException,

    -- ** InvalidInputException
    _InvalidInputException,

    -- ** InvalidPublicKeyException
    _InvalidPublicKeyException,

    -- ** UnmodifiableEntityException
    _UnmodifiableEntityException,

    -- ** DuplicateCertificateException
    _DuplicateCertificateException,

    -- ** MalformedCertificateException
    _MalformedCertificateException,

    -- ** EntityAlreadyExistsException
    _EntityAlreadyExistsException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** ServiceFailureException
    _ServiceFailureException,

    -- ** InvalidUserTypeException
    _InvalidUserTypeException,

    -- ** CredentialReportNotReadyException
    _CredentialReportNotReadyException,

    -- ** CredentialReportNotPresentException
    _CredentialReportNotPresentException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** PasswordPolicyViolationException
    _PasswordPolicyViolationException,

    -- ** InvalidAuthenticationCodeException
    _InvalidAuthenticationCodeException,

    -- ** EntityTemporarilyUnmodifiableException
    _EntityTemporarilyUnmodifiableException,

    -- ** InvalidCertificateException
    _InvalidCertificateException,

    -- ** NoSuchEntityException
    _NoSuchEntityException,

    -- ** DeleteConflictException
    _DeleteConflictException,

    -- ** CredentialReportExpiredException
    _CredentialReportExpiredException,

    -- * Waiters
    -- $waiters

    -- ** UserExists
    userExists,

    -- ** RoleExists
    roleExists,

    -- ** PolicyExists
    policyExists,

    -- ** InstanceProfileExists
    instanceProfileExists,

    -- * Operations
    -- $operations

    -- ** CreateVirtualMFADevice
    module Network.AWS.IAM.CreateVirtualMFADevice,

    -- ** AttachRolePolicy
    module Network.AWS.IAM.AttachRolePolicy,

    -- ** DeleteSSHPublicKey
    module Network.AWS.IAM.DeleteSSHPublicKey,

    -- ** GetUser
    module Network.AWS.IAM.GetUser,

    -- ** UpdateSSHPublicKey
    module Network.AWS.IAM.UpdateSSHPublicKey,

    -- ** UntagOpenIdConnectProvider
    module Network.AWS.IAM.UntagOpenIdConnectProvider,

    -- ** ListSigningCertificates (Paginated)
    module Network.AWS.IAM.ListSigningCertificates,

    -- ** DeleteOpenIdConnectProvider
    module Network.AWS.IAM.DeleteOpenIdConnectProvider,

    -- ** ListRoleTags
    module Network.AWS.IAM.ListRoleTags,

    -- ** ListOpenIdConnectProviders
    module Network.AWS.IAM.ListOpenIdConnectProviders,

    -- ** CreatePolicy
    module Network.AWS.IAM.CreatePolicy,

    -- ** GetSAMLProvider
    module Network.AWS.IAM.GetSAMLProvider,

    -- ** GetContextKeysForPrincipalPolicy
    module Network.AWS.IAM.GetContextKeysForPrincipalPolicy,

    -- ** ListEntitiesForPolicy (Paginated)
    module Network.AWS.IAM.ListEntitiesForPolicy,

    -- ** ListGroupsForUser (Paginated)
    module Network.AWS.IAM.ListGroupsForUser,

    -- ** SimulatePrincipalPolicy (Paginated)
    module Network.AWS.IAM.SimulatePrincipalPolicy,

    -- ** ListPolicies (Paginated)
    module Network.AWS.IAM.ListPolicies,

    -- ** CreateServiceLinkedRole
    module Network.AWS.IAM.CreateServiceLinkedRole,

    -- ** UntagPolicy
    module Network.AWS.IAM.UntagPolicy,

    -- ** DeletePolicy
    module Network.AWS.IAM.DeletePolicy,

    -- ** DeleteServerCertificate
    module Network.AWS.IAM.DeleteServerCertificate,

    -- ** ListAttachedGroupPolicies (Paginated)
    module Network.AWS.IAM.ListAttachedGroupPolicies,

    -- ** ChangePassword
    module Network.AWS.IAM.ChangePassword,

    -- ** ListMFADeviceTags
    module Network.AWS.IAM.ListMFADeviceTags,

    -- ** UntagServerCertificate
    module Network.AWS.IAM.UntagServerCertificate,

    -- ** UpdateAssumeRolePolicy
    module Network.AWS.IAM.UpdateAssumeRolePolicy,

    -- ** GetGroupPolicy
    module Network.AWS.IAM.GetGroupPolicy,

    -- ** UpdateServerCertificate
    module Network.AWS.IAM.UpdateServerCertificate,

    -- ** ListServerCertificates (Paginated)
    module Network.AWS.IAM.ListServerCertificates,

    -- ** ListInstanceProfileTags
    module Network.AWS.IAM.ListInstanceProfileTags,

    -- ** DeleteGroupPolicy
    module Network.AWS.IAM.DeleteGroupPolicy,

    -- ** CreateInstanceProfile
    module Network.AWS.IAM.CreateInstanceProfile,

    -- ** ListGroups (Paginated)
    module Network.AWS.IAM.ListGroups,

    -- ** GetLoginProfile
    module Network.AWS.IAM.GetLoginProfile,

    -- ** TagRole
    module Network.AWS.IAM.TagRole,

    -- ** RemoveRoleFromInstanceProfile
    module Network.AWS.IAM.RemoveRoleFromInstanceProfile,

    -- ** GenerateCredentialReport
    module Network.AWS.IAM.GenerateCredentialReport,

    -- ** CreatePolicyVersion
    module Network.AWS.IAM.CreatePolicyVersion,

    -- ** GetServerCertificate
    module Network.AWS.IAM.GetServerCertificate,

    -- ** RemoveUserFromGroup
    module Network.AWS.IAM.RemoveUserFromGroup,

    -- ** SetDefaultPolicyVersion
    module Network.AWS.IAM.SetDefaultPolicyVersion,

    -- ** ResetServiceSpecificCredential
    module Network.AWS.IAM.ResetServiceSpecificCredential,

    -- ** GenerateServiceLastAccessedDetails
    module Network.AWS.IAM.GenerateServiceLastAccessedDetails,

    -- ** ListPoliciesGrantingServiceAccess
    module Network.AWS.IAM.ListPoliciesGrantingServiceAccess,

    -- ** UpdateRoleDescription
    module Network.AWS.IAM.UpdateRoleDescription,

    -- ** UploadServerCertificate
    module Network.AWS.IAM.UploadServerCertificate,

    -- ** DetachRolePolicy
    module Network.AWS.IAM.DetachRolePolicy,

    -- ** EnableMFADevice
    module Network.AWS.IAM.EnableMFADevice,

    -- ** ListSAMLProviders
    module Network.AWS.IAM.ListSAMLProviders,

    -- ** ListPolicyTags
    module Network.AWS.IAM.ListPolicyTags,

    -- ** CreateGroup
    module Network.AWS.IAM.CreateGroup,

    -- ** TagMFADevice
    module Network.AWS.IAM.TagMFADevice,

    -- ** TagInstanceProfile
    module Network.AWS.IAM.TagInstanceProfile,

    -- ** GetOpenIdConnectProvider
    module Network.AWS.IAM.GetOpenIdConnectProvider,

    -- ** CreateRole
    module Network.AWS.IAM.CreateRole,

    -- ** PutUserPermissionsBoundary
    module Network.AWS.IAM.PutUserPermissionsBoundary,

    -- ** DeleteUserPolicy
    module Network.AWS.IAM.DeleteUserPolicy,

    -- ** DeleteRolePermissionsBoundary
    module Network.AWS.IAM.DeleteRolePermissionsBoundary,

    -- ** CreateUser
    module Network.AWS.IAM.CreateUser,

    -- ** ListOpenIdConnectProviderTags
    module Network.AWS.IAM.ListOpenIdConnectProviderTags,

    -- ** ListRoles (Paginated)
    module Network.AWS.IAM.ListRoles,

    -- ** UploadSigningCertificate
    module Network.AWS.IAM.UploadSigningCertificate,

    -- ** DeleteRolePolicy
    module Network.AWS.IAM.DeleteRolePolicy,

    -- ** ListAttachedRolePolicies (Paginated)
    module Network.AWS.IAM.ListAttachedRolePolicies,

    -- ** GetRolePolicy
    module Network.AWS.IAM.GetRolePolicy,

    -- ** DeleteAccessKey
    module Network.AWS.IAM.DeleteAccessKey,

    -- ** ListVirtualMFADevices (Paginated)
    module Network.AWS.IAM.ListVirtualMFADevices,

    -- ** TagPolicy
    module Network.AWS.IAM.TagPolicy,

    -- ** RemoveClientIdFromOpenIdConnectProvider
    module Network.AWS.IAM.RemoveClientIdFromOpenIdConnectProvider,

    -- ** DeleteVirtualMFADevice
    module Network.AWS.IAM.DeleteVirtualMFADevice,

    -- ** UpdateAccessKey
    module Network.AWS.IAM.UpdateAccessKey,

    -- ** CreateServiceSpecificCredential
    module Network.AWS.IAM.CreateServiceSpecificCredential,

    -- ** ResyncMFADevice
    module Network.AWS.IAM.ResyncMFADevice,

    -- ** UpdateServiceSpecificCredential
    module Network.AWS.IAM.UpdateServiceSpecificCredential,

    -- ** GetUserPolicy
    module Network.AWS.IAM.GetUserPolicy,

    -- ** UpdateAccountPasswordPolicy
    module Network.AWS.IAM.UpdateAccountPasswordPolicy,

    -- ** ListServiceSpecificCredentials
    module Network.AWS.IAM.ListServiceSpecificCredentials,

    -- ** DeleteSigningCertificate
    module Network.AWS.IAM.DeleteSigningCertificate,

    -- ** ListAttachedUserPolicies (Paginated)
    module Network.AWS.IAM.ListAttachedUserPolicies,

    -- ** UpdateSigningCertificate
    module Network.AWS.IAM.UpdateSigningCertificate,

    -- ** ListSSHPublicKeys (Paginated)
    module Network.AWS.IAM.ListSSHPublicKeys,

    -- ** DeleteServiceSpecificCredential
    module Network.AWS.IAM.DeleteServiceSpecificCredential,

    -- ** CreateAccessKey
    module Network.AWS.IAM.CreateAccessKey,

    -- ** DeleteAccountPasswordPolicy
    module Network.AWS.IAM.DeleteAccountPasswordPolicy,

    -- ** GetOrganizationsAccessReport
    module Network.AWS.IAM.GetOrganizationsAccessReport,

    -- ** ListInstanceProfilesForRole (Paginated)
    module Network.AWS.IAM.ListInstanceProfilesForRole,

    -- ** GetPolicyVersion
    module Network.AWS.IAM.GetPolicyVersion,

    -- ** CreateLoginProfile
    module Network.AWS.IAM.CreateLoginProfile,

    -- ** AddRoleToInstanceProfile
    module Network.AWS.IAM.AddRoleToInstanceProfile,

    -- ** GetInstanceProfile
    module Network.AWS.IAM.GetInstanceProfile,

    -- ** TagOpenIdConnectProvider
    module Network.AWS.IAM.TagOpenIdConnectProvider,

    -- ** AddUserToGroup
    module Network.AWS.IAM.AddUserToGroup,

    -- ** AttachGroupPolicy
    module Network.AWS.IAM.AttachGroupPolicy,

    -- ** UpdateLoginProfile
    module Network.AWS.IAM.UpdateLoginProfile,

    -- ** ListSAMLProviderTags
    module Network.AWS.IAM.ListSAMLProviderTags,

    -- ** GetGroup (Paginated)
    module Network.AWS.IAM.GetGroup,

    -- ** DeleteLoginProfile
    module Network.AWS.IAM.DeleteLoginProfile,

    -- ** DeleteServiceLinkedRole
    module Network.AWS.IAM.DeleteServiceLinkedRole,

    -- ** GenerateOrganizationsAccessReport
    module Network.AWS.IAM.GenerateOrganizationsAccessReport,

    -- ** GetServiceLastAccessedDetailsWithEntities
    module Network.AWS.IAM.GetServiceLastAccessedDetailsWithEntities,

    -- ** PutGroupPolicy
    module Network.AWS.IAM.PutGroupPolicy,

    -- ** GetServiceLastAccessedDetails
    module Network.AWS.IAM.GetServiceLastAccessedDetails,

    -- ** DeleteAccountAlias
    module Network.AWS.IAM.DeleteAccountAlias,

    -- ** CreateSAMLProvider
    module Network.AWS.IAM.CreateSAMLProvider,

    -- ** GetPolicy
    module Network.AWS.IAM.GetPolicy,

    -- ** DetachUserPolicy
    module Network.AWS.IAM.DetachUserPolicy,

    -- ** UpdateGroup
    module Network.AWS.IAM.UpdateGroup,

    -- ** DeleteGroup
    module Network.AWS.IAM.DeleteGroup,

    -- ** GetServiceLinkedRoleDeletionStatus
    module Network.AWS.IAM.GetServiceLinkedRoleDeletionStatus,

    -- ** GetAccountAuthorizationDetails (Paginated)
    module Network.AWS.IAM.GetAccountAuthorizationDetails,

    -- ** ListGroupPolicies (Paginated)
    module Network.AWS.IAM.ListGroupPolicies,

    -- ** DeletePolicyVersion
    module Network.AWS.IAM.DeletePolicyVersion,

    -- ** DeleteSAMLProvider
    module Network.AWS.IAM.DeleteSAMLProvider,

    -- ** TagUser
    module Network.AWS.IAM.TagUser,

    -- ** ListInstanceProfiles (Paginated)
    module Network.AWS.IAM.ListInstanceProfiles,

    -- ** GetCredentialReport
    module Network.AWS.IAM.GetCredentialReport,

    -- ** ListMFADevices (Paginated)
    module Network.AWS.IAM.ListMFADevices,

    -- ** UpdateSAMLProvider
    module Network.AWS.IAM.UpdateSAMLProvider,

    -- ** UntagInstanceProfile
    module Network.AWS.IAM.UntagInstanceProfile,

    -- ** CreateAccountAlias
    module Network.AWS.IAM.CreateAccountAlias,

    -- ** UntagMFADevice
    module Network.AWS.IAM.UntagMFADevice,

    -- ** UntagSAMLProvider
    module Network.AWS.IAM.UntagSAMLProvider,

    -- ** ListAccountAliases (Paginated)
    module Network.AWS.IAM.ListAccountAliases,

    -- ** ListPolicyVersions (Paginated)
    module Network.AWS.IAM.ListPolicyVersions,

    -- ** DeleteInstanceProfile
    module Network.AWS.IAM.DeleteInstanceProfile,

    -- ** GetAccountSummary
    module Network.AWS.IAM.GetAccountSummary,

    -- ** ListServerCertificateTags
    module Network.AWS.IAM.ListServerCertificateTags,

    -- ** GetSSHPublicKey
    module Network.AWS.IAM.GetSSHPublicKey,

    -- ** UpdateOpenIdConnectProviderThumbprint
    module Network.AWS.IAM.UpdateOpenIdConnectProviderThumbprint,

    -- ** GetAccessKeyLastUsed
    module Network.AWS.IAM.GetAccessKeyLastUsed,

    -- ** TagSAMLProvider
    module Network.AWS.IAM.TagSAMLProvider,

    -- ** GetAccountPasswordPolicy
    module Network.AWS.IAM.GetAccountPasswordPolicy,

    -- ** DeleteUser
    module Network.AWS.IAM.DeleteUser,

    -- ** ListUsers (Paginated)
    module Network.AWS.IAM.ListUsers,

    -- ** UpdateUser
    module Network.AWS.IAM.UpdateUser,

    -- ** ListRolePolicies (Paginated)
    module Network.AWS.IAM.ListRolePolicies,

    -- ** AddClientIdToOpenIdConnectProvider
    module Network.AWS.IAM.AddClientIdToOpenIdConnectProvider,

    -- ** DeleteUserPermissionsBoundary
    module Network.AWS.IAM.DeleteUserPermissionsBoundary,

    -- ** PutUserPolicy
    module Network.AWS.IAM.PutUserPolicy,

    -- ** DetachGroupPolicy
    module Network.AWS.IAM.DetachGroupPolicy,

    -- ** UntagUser
    module Network.AWS.IAM.UntagUser,

    -- ** GetContextKeysForCustomPolicy
    module Network.AWS.IAM.GetContextKeysForCustomPolicy,

    -- ** PutRolePermissionsBoundary
    module Network.AWS.IAM.PutRolePermissionsBoundary,

    -- ** UntagRole
    module Network.AWS.IAM.UntagRole,

    -- ** SimulateCustomPolicy (Paginated)
    module Network.AWS.IAM.SimulateCustomPolicy,

    -- ** UploadSSHPublicKey
    module Network.AWS.IAM.UploadSSHPublicKey,

    -- ** DeleteRole
    module Network.AWS.IAM.DeleteRole,

    -- ** ListUserPolicies (Paginated)
    module Network.AWS.IAM.ListUserPolicies,

    -- ** PutRolePolicy
    module Network.AWS.IAM.PutRolePolicy,

    -- ** UpdateRole
    module Network.AWS.IAM.UpdateRole,

    -- ** SetSecurityTokenServicePreferences
    module Network.AWS.IAM.SetSecurityTokenServicePreferences,

    -- ** AttachUserPolicy
    module Network.AWS.IAM.AttachUserPolicy,

    -- ** TagServerCertificate
    module Network.AWS.IAM.TagServerCertificate,

    -- ** ListAccessKeys (Paginated)
    module Network.AWS.IAM.ListAccessKeys,

    -- ** CreateOpenIdConnectProvider
    module Network.AWS.IAM.CreateOpenIdConnectProvider,

    -- ** DeactivateMFADevice
    module Network.AWS.IAM.DeactivateMFADevice,

    -- ** ListUserTags
    module Network.AWS.IAM.ListUserTags,

    -- ** GetRole
    module Network.AWS.IAM.GetRole,

    -- * Types

    -- ** AccessAdvisorUsageGranularityType
    AccessAdvisorUsageGranularityType (..),

    -- ** AssignmentStatusType
    AssignmentStatusType (..),

    -- ** ContextKeyTypeEnum
    ContextKeyTypeEnum (..),

    -- ** DeletionTaskStatusType
    DeletionTaskStatusType (..),

    -- ** EncodingType
    EncodingType (..),

    -- ** EntityType
    EntityType (..),

    -- ** GlobalEndpointTokenVersion
    GlobalEndpointTokenVersion (..),

    -- ** JobStatusType
    JobStatusType (..),

    -- ** PermissionsBoundaryAttachmentType
    PermissionsBoundaryAttachmentType (..),

    -- ** PolicyEvaluationDecisionType
    PolicyEvaluationDecisionType (..),

    -- ** PolicyOwnerEntityType
    PolicyOwnerEntityType (..),

    -- ** PolicyScopeType
    PolicyScopeType (..),

    -- ** PolicySourceType
    PolicySourceType (..),

    -- ** PolicyType
    PolicyType (..),

    -- ** PolicyUsageType
    PolicyUsageType (..),

    -- ** ReportFormatType
    ReportFormatType (..),

    -- ** ReportStateType
    ReportStateType (..),

    -- ** SortKeyType
    SortKeyType (..),

    -- ** StatusType
    StatusType (..),

    -- ** SummaryKeyType
    SummaryKeyType (..),

    -- ** AccessDetail
    AccessDetail,
    accessDetail,
    adTotalAuthenticatedEntities,
    adEntityPath,
    adLastAuthenticatedTime,
    adRegion,
    adServiceName,
    adServiceNamespace,

    -- ** AccessKeyInfo
    AccessKeyInfo,
    accessKeyInfo,
    akiCreateDate,
    akiUserName,
    akiAccessKeyId,
    akiStatus,
    akiSecretAccessKey,

    -- ** AccessKeyLastUsed
    AccessKeyLastUsed,
    accessKeyLastUsed,
    akluLastUsedDate,
    akluServiceName,
    akluRegion,

    -- ** AccessKeyMetadata
    AccessKeyMetadata,
    accessKeyMetadata,
    akmStatus,
    akmCreateDate,
    akmAccessKeyId,
    akmUserName,

    -- ** AttachedPermissionsBoundary
    AttachedPermissionsBoundary,
    attachedPermissionsBoundary,
    apbPermissionsBoundaryARN,
    apbPermissionsBoundaryType,

    -- ** AttachedPolicy
    AttachedPolicy,
    attachedPolicy,
    apPolicyName,
    apPolicyARN,

    -- ** ContextEntry
    ContextEntry,
    contextEntry,
    ceContextKeyValues,
    ceContextKeyName,
    ceContextKeyType,

    -- ** DeletionTaskFailureReasonType
    DeletionTaskFailureReasonType,
    deletionTaskFailureReasonType,
    dtfrtReason,
    dtfrtRoleUsageList,

    -- ** EntityDetails
    EntityDetails,
    entityDetails,
    edLastAuthenticated,
    edEntityInfo,

    -- ** EntityInfo
    EntityInfo,
    entityInfo,
    eiPath,
    eiARN,
    eiName,
    eiType,
    eiId,

    -- ** ErrorDetails
    ErrorDetails,
    errorDetails,
    edMessage,
    edCode,

    -- ** EvaluationResult
    EvaluationResult,
    evaluationResult,
    erEvalDecisionDetails,
    erPermissionsBoundaryDecisionDetail,
    erOrganizationsDecisionDetail,
    erResourceSpecificResults,
    erMatchedStatements,
    erEvalResourceName,
    erMissingContextValues,
    erEvalActionName,
    erEvalDecision,

    -- ** GetContextKeysForPolicyResponse
    GetContextKeysForPolicyResponse,
    getContextKeysForPolicyResponse,
    gckfprContextKeyNames,

    -- ** Group
    Group,
    group',
    gPath,
    gGroupName,
    gGroupId,
    gARN,
    gCreateDate,

    -- ** GroupDetail
    GroupDetail,
    groupDetail,
    gdAttachedManagedPolicies,
    gdGroupName,
    gdCreateDate,
    gdARN,
    gdGroupId,
    gdGroupPolicyList,
    gdPath,

    -- ** InstanceProfile
    InstanceProfile,
    instanceProfile,
    ipTags,
    ipPath,
    ipInstanceProfileName,
    ipInstanceProfileId,
    ipARN,
    ipCreateDate,
    ipRoles,

    -- ** ListPoliciesGrantingServiceAccessEntry
    ListPoliciesGrantingServiceAccessEntry,
    listPoliciesGrantingServiceAccessEntry,
    lpgsaePolicies,
    lpgsaeServiceNamespace,

    -- ** LoginProfile
    LoginProfile,
    loginProfile,
    lpPasswordResetRequired,
    lpUserName,
    lpCreateDate,

    -- ** MFADevice
    MFADevice,
    mfaDevice,
    mdUserName,
    mdSerialNumber,
    mdEnableDate,

    -- ** ManagedPolicyDetail
    ManagedPolicyDetail,
    managedPolicyDetail,
    mpdPolicyName,
    mpdPermissionsBoundaryUsageCount,
    mpdIsAttachable,
    mpdCreateDate,
    mpdARN,
    mpdAttachmentCount,
    mpdDefaultVersionId,
    mpdDescription,
    mpdPolicyVersionList,
    mpdPath,
    mpdPolicyId,
    mpdUpdateDate,

    -- ** OpenIdConnectProviderListEntry
    OpenIdConnectProviderListEntry,
    openIdConnectProviderListEntry,
    oicpleARN,

    -- ** OrganizationsDecisionDetail
    OrganizationsDecisionDetail,
    organizationsDecisionDetail,
    oddAllowedByOrganizations,

    -- ** PasswordPolicy
    PasswordPolicy,
    passwordPolicy,
    ppMaxPasswordAge,
    ppRequireLowercaseCharacters,
    ppMinimumPasswordLength,
    ppPasswordReusePrevention,
    ppExpirePasswords,
    ppRequireUppercaseCharacters,
    ppAllowUsersToChangePassword,
    ppHardExpiry,
    ppRequireSymbols,
    ppRequireNumbers,

    -- ** PermissionsBoundaryDecisionDetail
    PermissionsBoundaryDecisionDetail,
    permissionsBoundaryDecisionDetail,
    pbddAllowedByPermissionsBoundary,

    -- ** Policy
    Policy,
    policy,
    pPolicyName,
    pPermissionsBoundaryUsageCount,
    pIsAttachable,
    pCreateDate,
    pARN,
    pAttachmentCount,
    pDefaultVersionId,
    pTags,
    pDescription,
    pPath,
    pPolicyId,
    pUpdateDate,

    -- ** PolicyDetail
    PolicyDetail,
    policyDetail,
    pdPolicyName,
    pdPolicyDocument,

    -- ** PolicyGrantingServiceAccess
    PolicyGrantingServiceAccess,
    policyGrantingServiceAccess,
    pgsaEntityName,
    pgsaEntityType,
    pgsaPolicyARN,
    pgsaPolicyName,
    pgsaPolicyType,

    -- ** PolicyGroup
    PolicyGroup,
    policyGroup,
    pgGroupName,
    pgGroupId,

    -- ** PolicyRole
    PolicyRole,
    policyRole,
    prRoleId,
    prRoleName,

    -- ** PolicyUser
    PolicyUser,
    policyUser,
    puUserId,
    puUserName,

    -- ** PolicyVersion
    PolicyVersion,
    policyVersion,
    pvCreateDate,
    pvVersionId,
    pvDocument,
    pvIsDefaultVersion,

    -- ** Position
    Position,
    position,
    pColumn,
    pLine,

    -- ** ResourceSpecificResult
    ResourceSpecificResult,
    resourceSpecificResult,
    rsrEvalDecisionDetails,
    rsrPermissionsBoundaryDecisionDetail,
    rsrMatchedStatements,
    rsrMissingContextValues,
    rsrEvalResourceName,
    rsrEvalResourceDecision,

    -- ** Role
    Role,
    role',
    rAssumeRolePolicyDocument,
    rMaxSessionDuration,
    rRoleLastUsed,
    rPermissionsBoundary,
    rTags,
    rDescription,
    rPath,
    rRoleName,
    rRoleId,
    rARN,
    rCreateDate,

    -- ** RoleDetail
    RoleDetail,
    roleDetail,
    rdAssumeRolePolicyDocument,
    rdRoleId,
    rdRoleLastUsed,
    rdAttachedManagedPolicies,
    rdRolePolicyList,
    rdRoleName,
    rdPermissionsBoundary,
    rdCreateDate,
    rdARN,
    rdTags,
    rdInstanceProfileList,
    rdPath,

    -- ** RoleLastUsed
    RoleLastUsed,
    roleLastUsed,
    rluLastUsedDate,
    rluRegion,

    -- ** RoleUsageType
    RoleUsageType,
    roleUsageType,
    rutResources,
    rutRegion,

    -- ** SAMLProviderListEntry
    SAMLProviderListEntry,
    sAMLProviderListEntry,
    samlpleCreateDate,
    samlpleARN,
    samlpleValidUntil,

    -- ** SSHPublicKey
    SSHPublicKey,
    sshPublicKey,
    spkUploadDate,
    spkUserName,
    spkSSHPublicKeyId,
    spkFingerprint,
    spkSSHPublicKeyBody,
    spkStatus,

    -- ** SSHPublicKeyMetadata
    SSHPublicKeyMetadata,
    sshPublicKeyMetadata,
    spkmUserName,
    spkmSSHPublicKeyId,
    spkmStatus,
    spkmUploadDate,

    -- ** ServerCertificate
    ServerCertificate,
    serverCertificate,
    sTags,
    sCertificateChain,
    sServerCertificateMetadata,
    sCertificateBody,

    -- ** ServerCertificateMetadata
    ServerCertificateMetadata,
    serverCertificateMetadata,
    scmUploadDate,
    scmExpiration,
    scmPath,
    scmServerCertificateName,
    scmServerCertificateId,
    scmARN,

    -- ** ServiceLastAccessed
    ServiceLastAccessed,
    serviceLastAccessed,
    slaTotalAuthenticatedEntities,
    slaLastAuthenticatedRegion,
    slaLastAuthenticatedEntity,
    slaTrackedActionsLastAccessed,
    slaLastAuthenticated,
    slaServiceName,
    slaServiceNamespace,

    -- ** ServiceSpecificCredential
    ServiceSpecificCredential,
    serviceSpecificCredential,
    sscCreateDate,
    sscServiceName,
    sscServiceUserName,
    sscServicePassword,
    sscServiceSpecificCredentialId,
    sscUserName,
    sscStatus,

    -- ** ServiceSpecificCredentialMetadata
    ServiceSpecificCredentialMetadata,
    serviceSpecificCredentialMetadata,
    sscmUserName,
    sscmStatus,
    sscmServiceUserName,
    sscmCreateDate,
    sscmServiceSpecificCredentialId,
    sscmServiceName,

    -- ** SigningCertificate
    SigningCertificate,
    signingCertificate,
    scUploadDate,
    scUserName,
    scCertificateId,
    scCertificateBody,
    scStatus,

    -- ** SimulatePolicyResponse
    SimulatePolicyResponse,
    simulatePolicyResponse,
    sprIsTruncated,
    sprEvaluationResults,
    sprMarker,

    -- ** Statement
    Statement,
    statement,
    sStartPosition,
    sSourcePolicyType,
    sEndPosition,
    sSourcePolicyId,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TrackedActionLastAccessed
    TrackedActionLastAccessed,
    trackedActionLastAccessed,
    talaActionName,
    talaLastAccessedTime,
    talaLastAccessedRegion,
    talaLastAccessedEntity,

    -- ** User
    User,
    user,
    uPermissionsBoundary,
    uPasswordLastUsed,
    uTags,
    uPath,
    uUserName,
    uUserId,
    uARN,
    uCreateDate,

    -- ** UserDetail
    UserDetail,
    userDetail,
    udAttachedManagedPolicies,
    udPermissionsBoundary,
    udCreateDate,
    udARN,
    udGroupList,
    udUserId,
    udTags,
    udUserName,
    udUserPolicyList,
    udPath,

    -- ** VirtualMFADevice
    VirtualMFADevice,
    virtualMFADevice,
    vmdUser,
    vmdEnableDate,
    vmdQRCodePNG,
    vmdTags,
    vmdBase32StringSeed,
    vmdSerialNumber,
  )
where

import Network.AWS.IAM.AddClientIdToOpenIdConnectProvider
import Network.AWS.IAM.AddRoleToInstanceProfile
import Network.AWS.IAM.AddUserToGroup
import Network.AWS.IAM.AttachGroupPolicy
import Network.AWS.IAM.AttachRolePolicy
import Network.AWS.IAM.AttachUserPolicy
import Network.AWS.IAM.ChangePassword
import Network.AWS.IAM.CreateAccessKey
import Network.AWS.IAM.CreateAccountAlias
import Network.AWS.IAM.CreateGroup
import Network.AWS.IAM.CreateInstanceProfile
import Network.AWS.IAM.CreateLoginProfile
import Network.AWS.IAM.CreateOpenIdConnectProvider
import Network.AWS.IAM.CreatePolicy
import Network.AWS.IAM.CreatePolicyVersion
import Network.AWS.IAM.CreateRole
import Network.AWS.IAM.CreateSAMLProvider
import Network.AWS.IAM.CreateServiceLinkedRole
import Network.AWS.IAM.CreateServiceSpecificCredential
import Network.AWS.IAM.CreateUser
import Network.AWS.IAM.CreateVirtualMFADevice
import Network.AWS.IAM.DeactivateMFADevice
import Network.AWS.IAM.DeleteAccessKey
import Network.AWS.IAM.DeleteAccountAlias
import Network.AWS.IAM.DeleteAccountPasswordPolicy
import Network.AWS.IAM.DeleteGroup
import Network.AWS.IAM.DeleteGroupPolicy
import Network.AWS.IAM.DeleteInstanceProfile
import Network.AWS.IAM.DeleteLoginProfile
import Network.AWS.IAM.DeleteOpenIdConnectProvider
import Network.AWS.IAM.DeletePolicy
import Network.AWS.IAM.DeletePolicyVersion
import Network.AWS.IAM.DeleteRole
import Network.AWS.IAM.DeleteRolePermissionsBoundary
import Network.AWS.IAM.DeleteRolePolicy
import Network.AWS.IAM.DeleteSAMLProvider
import Network.AWS.IAM.DeleteSSHPublicKey
import Network.AWS.IAM.DeleteServerCertificate
import Network.AWS.IAM.DeleteServiceLinkedRole
import Network.AWS.IAM.DeleteServiceSpecificCredential
import Network.AWS.IAM.DeleteSigningCertificate
import Network.AWS.IAM.DeleteUser
import Network.AWS.IAM.DeleteUserPermissionsBoundary
import Network.AWS.IAM.DeleteUserPolicy
import Network.AWS.IAM.DeleteVirtualMFADevice
import Network.AWS.IAM.DetachGroupPolicy
import Network.AWS.IAM.DetachRolePolicy
import Network.AWS.IAM.DetachUserPolicy
import Network.AWS.IAM.EnableMFADevice
import Network.AWS.IAM.GenerateCredentialReport
import Network.AWS.IAM.GenerateOrganizationsAccessReport
import Network.AWS.IAM.GenerateServiceLastAccessedDetails
import Network.AWS.IAM.GetAccessKeyLastUsed
import Network.AWS.IAM.GetAccountAuthorizationDetails
import Network.AWS.IAM.GetAccountPasswordPolicy
import Network.AWS.IAM.GetAccountSummary
import Network.AWS.IAM.GetContextKeysForCustomPolicy
import Network.AWS.IAM.GetContextKeysForPrincipalPolicy
import Network.AWS.IAM.GetCredentialReport
import Network.AWS.IAM.GetGroup
import Network.AWS.IAM.GetGroupPolicy
import Network.AWS.IAM.GetInstanceProfile
import Network.AWS.IAM.GetLoginProfile
import Network.AWS.IAM.GetOpenIdConnectProvider
import Network.AWS.IAM.GetOrganizationsAccessReport
import Network.AWS.IAM.GetPolicy
import Network.AWS.IAM.GetPolicyVersion
import Network.AWS.IAM.GetRole
import Network.AWS.IAM.GetRolePolicy
import Network.AWS.IAM.GetSAMLProvider
import Network.AWS.IAM.GetSSHPublicKey
import Network.AWS.IAM.GetServerCertificate
import Network.AWS.IAM.GetServiceLastAccessedDetails
import Network.AWS.IAM.GetServiceLastAccessedDetailsWithEntities
import Network.AWS.IAM.GetServiceLinkedRoleDeletionStatus
import Network.AWS.IAM.GetUser
import Network.AWS.IAM.GetUserPolicy
import Network.AWS.IAM.ListAccessKeys
import Network.AWS.IAM.ListAccountAliases
import Network.AWS.IAM.ListAttachedGroupPolicies
import Network.AWS.IAM.ListAttachedRolePolicies
import Network.AWS.IAM.ListAttachedUserPolicies
import Network.AWS.IAM.ListEntitiesForPolicy
import Network.AWS.IAM.ListGroupPolicies
import Network.AWS.IAM.ListGroups
import Network.AWS.IAM.ListGroupsForUser
import Network.AWS.IAM.ListInstanceProfileTags
import Network.AWS.IAM.ListInstanceProfiles
import Network.AWS.IAM.ListInstanceProfilesForRole
import Network.AWS.IAM.ListMFADeviceTags
import Network.AWS.IAM.ListMFADevices
import Network.AWS.IAM.ListOpenIdConnectProviderTags
import Network.AWS.IAM.ListOpenIdConnectProviders
import Network.AWS.IAM.ListPolicies
import Network.AWS.IAM.ListPoliciesGrantingServiceAccess
import Network.AWS.IAM.ListPolicyTags
import Network.AWS.IAM.ListPolicyVersions
import Network.AWS.IAM.ListRolePolicies
import Network.AWS.IAM.ListRoleTags
import Network.AWS.IAM.ListRoles
import Network.AWS.IAM.ListSAMLProviderTags
import Network.AWS.IAM.ListSAMLProviders
import Network.AWS.IAM.ListSSHPublicKeys
import Network.AWS.IAM.ListServerCertificateTags
import Network.AWS.IAM.ListServerCertificates
import Network.AWS.IAM.ListServiceSpecificCredentials
import Network.AWS.IAM.ListSigningCertificates
import Network.AWS.IAM.ListUserPolicies
import Network.AWS.IAM.ListUserTags
import Network.AWS.IAM.ListUsers
import Network.AWS.IAM.ListVirtualMFADevices
import Network.AWS.IAM.PutGroupPolicy
import Network.AWS.IAM.PutRolePermissionsBoundary
import Network.AWS.IAM.PutRolePolicy
import Network.AWS.IAM.PutUserPermissionsBoundary
import Network.AWS.IAM.PutUserPolicy
import Network.AWS.IAM.RemoveClientIdFromOpenIdConnectProvider
import Network.AWS.IAM.RemoveRoleFromInstanceProfile
import Network.AWS.IAM.RemoveUserFromGroup
import Network.AWS.IAM.ResetServiceSpecificCredential
import Network.AWS.IAM.ResyncMFADevice
import Network.AWS.IAM.SetDefaultPolicyVersion
import Network.AWS.IAM.SetSecurityTokenServicePreferences
import Network.AWS.IAM.SimulateCustomPolicy
import Network.AWS.IAM.SimulatePrincipalPolicy
import Network.AWS.IAM.TagInstanceProfile
import Network.AWS.IAM.TagMFADevice
import Network.AWS.IAM.TagOpenIdConnectProvider
import Network.AWS.IAM.TagPolicy
import Network.AWS.IAM.TagRole
import Network.AWS.IAM.TagSAMLProvider
import Network.AWS.IAM.TagServerCertificate
import Network.AWS.IAM.TagUser
import Network.AWS.IAM.Types
import Network.AWS.IAM.UntagInstanceProfile
import Network.AWS.IAM.UntagMFADevice
import Network.AWS.IAM.UntagOpenIdConnectProvider
import Network.AWS.IAM.UntagPolicy
import Network.AWS.IAM.UntagRole
import Network.AWS.IAM.UntagSAMLProvider
import Network.AWS.IAM.UntagServerCertificate
import Network.AWS.IAM.UntagUser
import Network.AWS.IAM.UpdateAccessKey
import Network.AWS.IAM.UpdateAccountPasswordPolicy
import Network.AWS.IAM.UpdateAssumeRolePolicy
import Network.AWS.IAM.UpdateGroup
import Network.AWS.IAM.UpdateLoginProfile
import Network.AWS.IAM.UpdateOpenIdConnectProviderThumbprint
import Network.AWS.IAM.UpdateRole
import Network.AWS.IAM.UpdateRoleDescription
import Network.AWS.IAM.UpdateSAMLProvider
import Network.AWS.IAM.UpdateSSHPublicKey
import Network.AWS.IAM.UpdateServerCertificate
import Network.AWS.IAM.UpdateServiceSpecificCredential
import Network.AWS.IAM.UpdateSigningCertificate
import Network.AWS.IAM.UpdateUser
import Network.AWS.IAM.UploadSSHPublicKey
import Network.AWS.IAM.UploadServerCertificate
import Network.AWS.IAM.UploadSigningCertificate
import Network.AWS.IAM.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'IAM'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
