{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types
  ( -- * Service Configuration
    iam,

    -- * Errors
    _MalformedPolicyDocumentException,
    _PolicyEvaluationException,
    _UnrecognizedPublicKeyEncodingException,
    _ServiceNotSupportedException,
    _ReportGenerationLimitExceededException,
    _DuplicateSSHPublicKeyException,
    _KeyPairMismatchException,
    _PolicyNotAttachableException,
    _InvalidInputException,
    _InvalidPublicKeyException,
    _UnmodifiableEntityException,
    _DuplicateCertificateException,
    _MalformedCertificateException,
    _EntityAlreadyExistsException,
    _ConcurrentModificationException,
    _ServiceFailureException,
    _InvalidUserTypeException,
    _CredentialReportNotReadyException,
    _CredentialReportNotPresentException,
    _LimitExceededException,
    _PasswordPolicyViolationException,
    _InvalidAuthenticationCodeException,
    _EntityTemporarilyUnmodifiableException,
    _InvalidCertificateException,
    _NoSuchEntityException,
    _DeleteConflictException,
    _CredentialReportExpiredException,

    -- * AccessAdvisorUsageGranularityType
    AccessAdvisorUsageGranularityType (..),

    -- * AssignmentStatusType
    AssignmentStatusType (..),

    -- * ContextKeyTypeEnum
    ContextKeyTypeEnum (..),

    -- * DeletionTaskStatusType
    DeletionTaskStatusType (..),

    -- * EncodingType
    EncodingType (..),

    -- * EntityType
    EntityType (..),

    -- * GlobalEndpointTokenVersion
    GlobalEndpointTokenVersion (..),

    -- * JobStatusType
    JobStatusType (..),

    -- * PermissionsBoundaryAttachmentType
    PermissionsBoundaryAttachmentType (..),

    -- * PolicyEvaluationDecisionType
    PolicyEvaluationDecisionType (..),

    -- * PolicyOwnerEntityType
    PolicyOwnerEntityType (..),

    -- * PolicyScopeType
    PolicyScopeType (..),

    -- * PolicySourceType
    PolicySourceType (..),

    -- * PolicyType
    PolicyType (..),

    -- * PolicyUsageType
    PolicyUsageType (..),

    -- * ReportFormatType
    ReportFormatType (..),

    -- * ReportStateType
    ReportStateType (..),

    -- * SortKeyType
    SortKeyType (..),

    -- * StatusType
    StatusType (..),

    -- * SummaryKeyType
    SummaryKeyType (..),

    -- * AccessDetail
    AccessDetail (..),
    accessDetail,
    adTotalAuthenticatedEntities,
    adEntityPath,
    adLastAuthenticatedTime,
    adRegion,
    adServiceName,
    adServiceNamespace,

    -- * AccessKeyInfo
    AccessKeyInfo (..),
    accessKeyInfo,
    akiCreateDate,
    akiUserName,
    akiAccessKeyId,
    akiStatus,
    akiSecretAccessKey,

    -- * AccessKeyLastUsed
    AccessKeyLastUsed (..),
    accessKeyLastUsed,
    akluLastUsedDate,
    akluServiceName,
    akluRegion,

    -- * AccessKeyMetadata
    AccessKeyMetadata (..),
    accessKeyMetadata,
    akmStatus,
    akmCreateDate,
    akmAccessKeyId,
    akmUserName,

    -- * AttachedPermissionsBoundary
    AttachedPermissionsBoundary (..),
    attachedPermissionsBoundary,
    apbPermissionsBoundaryARN,
    apbPermissionsBoundaryType,

    -- * AttachedPolicy
    AttachedPolicy (..),
    attachedPolicy,
    apPolicyName,
    apPolicyARN,

    -- * ContextEntry
    ContextEntry (..),
    contextEntry,
    ceContextKeyValues,
    ceContextKeyName,
    ceContextKeyType,

    -- * DeletionTaskFailureReasonType
    DeletionTaskFailureReasonType (..),
    deletionTaskFailureReasonType,
    dtfrtReason,
    dtfrtRoleUsageList,

    -- * EntityDetails
    EntityDetails (..),
    entityDetails,
    edLastAuthenticated,
    edEntityInfo,

    -- * EntityInfo
    EntityInfo (..),
    entityInfo,
    eiPath,
    eiARN,
    eiName,
    eiType,
    eiId,

    -- * ErrorDetails
    ErrorDetails (..),
    errorDetails,
    edMessage,
    edCode,

    -- * EvaluationResult
    EvaluationResult (..),
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

    -- * GetContextKeysForPolicyResponse
    GetContextKeysForPolicyResponse (..),
    getContextKeysForPolicyResponse,
    gckfprContextKeyNames,

    -- * Group
    Group (..),
    group',
    gPath,
    gGroupName,
    gGroupId,
    gARN,
    gCreateDate,

    -- * GroupDetail
    GroupDetail (..),
    groupDetail,
    gdAttachedManagedPolicies,
    gdGroupName,
    gdCreateDate,
    gdARN,
    gdGroupId,
    gdGroupPolicyList,
    gdPath,

    -- * InstanceProfile
    InstanceProfile (..),
    instanceProfile,
    ipTags,
    ipPath,
    ipInstanceProfileName,
    ipInstanceProfileId,
    ipARN,
    ipCreateDate,
    ipRoles,

    -- * ListPoliciesGrantingServiceAccessEntry
    ListPoliciesGrantingServiceAccessEntry (..),
    listPoliciesGrantingServiceAccessEntry,
    lpgsaePolicies,
    lpgsaeServiceNamespace,

    -- * LoginProfile
    LoginProfile (..),
    loginProfile,
    lpPasswordResetRequired,
    lpUserName,
    lpCreateDate,

    -- * MFADevice
    MFADevice (..),
    mfaDevice,
    mdUserName,
    mdSerialNumber,
    mdEnableDate,

    -- * ManagedPolicyDetail
    ManagedPolicyDetail (..),
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

    -- * OpenIdConnectProviderListEntry
    OpenIdConnectProviderListEntry (..),
    openIdConnectProviderListEntry,
    oicpleARN,

    -- * OrganizationsDecisionDetail
    OrganizationsDecisionDetail (..),
    organizationsDecisionDetail,
    oddAllowedByOrganizations,

    -- * PasswordPolicy
    PasswordPolicy (..),
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

    -- * PermissionsBoundaryDecisionDetail
    PermissionsBoundaryDecisionDetail (..),
    permissionsBoundaryDecisionDetail,
    pbddAllowedByPermissionsBoundary,

    -- * Policy
    Policy (..),
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

    -- * PolicyDetail
    PolicyDetail (..),
    policyDetail,
    pdPolicyName,
    pdPolicyDocument,

    -- * PolicyGrantingServiceAccess
    PolicyGrantingServiceAccess (..),
    policyGrantingServiceAccess,
    pgsaEntityName,
    pgsaEntityType,
    pgsaPolicyARN,
    pgsaPolicyName,
    pgsaPolicyType,

    -- * PolicyGroup
    PolicyGroup (..),
    policyGroup,
    pgGroupName,
    pgGroupId,

    -- * PolicyRole
    PolicyRole (..),
    policyRole,
    prRoleId,
    prRoleName,

    -- * PolicyUser
    PolicyUser (..),
    policyUser,
    puUserId,
    puUserName,

    -- * PolicyVersion
    PolicyVersion (..),
    policyVersion,
    pvCreateDate,
    pvVersionId,
    pvDocument,
    pvIsDefaultVersion,

    -- * Position
    Position (..),
    position,
    pColumn,
    pLine,

    -- * ResourceSpecificResult
    ResourceSpecificResult (..),
    resourceSpecificResult,
    rsrEvalDecisionDetails,
    rsrPermissionsBoundaryDecisionDetail,
    rsrMatchedStatements,
    rsrMissingContextValues,
    rsrEvalResourceName,
    rsrEvalResourceDecision,

    -- * Role
    Role (..),
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

    -- * RoleDetail
    RoleDetail (..),
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

    -- * RoleLastUsed
    RoleLastUsed (..),
    roleLastUsed,
    rluLastUsedDate,
    rluRegion,

    -- * RoleUsageType
    RoleUsageType (..),
    roleUsageType,
    rutResources,
    rutRegion,

    -- * SAMLProviderListEntry
    SAMLProviderListEntry (..),
    sAMLProviderListEntry,
    samlpleCreateDate,
    samlpleARN,
    samlpleValidUntil,

    -- * SSHPublicKey
    SSHPublicKey (..),
    sshPublicKey,
    spkUploadDate,
    spkUserName,
    spkSSHPublicKeyId,
    spkFingerprint,
    spkSSHPublicKeyBody,
    spkStatus,

    -- * SSHPublicKeyMetadata
    SSHPublicKeyMetadata (..),
    sshPublicKeyMetadata,
    spkmUserName,
    spkmSSHPublicKeyId,
    spkmStatus,
    spkmUploadDate,

    -- * ServerCertificate
    ServerCertificate (..),
    serverCertificate,
    sTags,
    sCertificateChain,
    sServerCertificateMetadata,
    sCertificateBody,

    -- * ServerCertificateMetadata
    ServerCertificateMetadata (..),
    serverCertificateMetadata,
    scmUploadDate,
    scmExpiration,
    scmPath,
    scmServerCertificateName,
    scmServerCertificateId,
    scmARN,

    -- * ServiceLastAccessed
    ServiceLastAccessed (..),
    serviceLastAccessed,
    slaTotalAuthenticatedEntities,
    slaLastAuthenticatedRegion,
    slaLastAuthenticatedEntity,
    slaTrackedActionsLastAccessed,
    slaLastAuthenticated,
    slaServiceName,
    slaServiceNamespace,

    -- * ServiceSpecificCredential
    ServiceSpecificCredential (..),
    serviceSpecificCredential,
    sscCreateDate,
    sscServiceName,
    sscServiceUserName,
    sscServicePassword,
    sscServiceSpecificCredentialId,
    sscUserName,
    sscStatus,

    -- * ServiceSpecificCredentialMetadata
    ServiceSpecificCredentialMetadata (..),
    serviceSpecificCredentialMetadata,
    sscmUserName,
    sscmStatus,
    sscmServiceUserName,
    sscmCreateDate,
    sscmServiceSpecificCredentialId,
    sscmServiceName,

    -- * SigningCertificate
    SigningCertificate (..),
    signingCertificate,
    scUploadDate,
    scUserName,
    scCertificateId,
    scCertificateBody,
    scStatus,

    -- * SimulatePolicyResponse
    SimulatePolicyResponse (..),
    simulatePolicyResponse,
    sprIsTruncated,
    sprEvaluationResults,
    sprMarker,

    -- * Statement
    Statement (..),
    statement,
    sStartPosition,
    sSourcePolicyType,
    sEndPosition,
    sSourcePolicyId,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TrackedActionLastAccessed
    TrackedActionLastAccessed (..),
    trackedActionLastAccessed,
    talaActionName,
    talaLastAccessedTime,
    talaLastAccessedRegion,
    talaLastAccessedEntity,

    -- * User
    User (..),
    user,
    uPermissionsBoundary,
    uPasswordLastUsed,
    uTags,
    uPath,
    uUserName,
    uUserId,
    uARN,
    uCreateDate,

    -- * UserDetail
    UserDetail (..),
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

    -- * VirtualMFADevice
    VirtualMFADevice (..),
    virtualMFADevice,
    vmdUser,
    vmdEnableDate,
    vmdQRCodePNG,
    vmdTags,
    vmdBase32StringSeed,
    vmdSerialNumber,
  )
where

import Network.AWS.IAM.Types.AccessAdvisorUsageGranularityType
import Network.AWS.IAM.Types.AccessDetail
import Network.AWS.IAM.Types.AccessKeyInfo
import Network.AWS.IAM.Types.AccessKeyLastUsed
import Network.AWS.IAM.Types.AccessKeyMetadata
import Network.AWS.IAM.Types.AssignmentStatusType
import Network.AWS.IAM.Types.AttachedPermissionsBoundary
import Network.AWS.IAM.Types.AttachedPolicy
import Network.AWS.IAM.Types.ContextEntry
import Network.AWS.IAM.Types.ContextKeyTypeEnum
import Network.AWS.IAM.Types.DeletionTaskFailureReasonType
import Network.AWS.IAM.Types.DeletionTaskStatusType
import Network.AWS.IAM.Types.EncodingType
import Network.AWS.IAM.Types.EntityDetails
import Network.AWS.IAM.Types.EntityInfo
import Network.AWS.IAM.Types.EntityType
import Network.AWS.IAM.Types.ErrorDetails
import Network.AWS.IAM.Types.EvaluationResult
import Network.AWS.IAM.Types.GetContextKeysForPolicyResponse
import Network.AWS.IAM.Types.GlobalEndpointTokenVersion
import Network.AWS.IAM.Types.Group
import Network.AWS.IAM.Types.GroupDetail
import Network.AWS.IAM.Types.InstanceProfile
import Network.AWS.IAM.Types.JobStatusType
import Network.AWS.IAM.Types.ListPoliciesGrantingServiceAccessEntry
import Network.AWS.IAM.Types.LoginProfile
import Network.AWS.IAM.Types.MFADevice
import Network.AWS.IAM.Types.ManagedPolicyDetail
import Network.AWS.IAM.Types.OpenIdConnectProviderListEntry
import Network.AWS.IAM.Types.OrganizationsDecisionDetail
import Network.AWS.IAM.Types.PasswordPolicy
import Network.AWS.IAM.Types.PermissionsBoundaryAttachmentType
import Network.AWS.IAM.Types.PermissionsBoundaryDecisionDetail
import Network.AWS.IAM.Types.Policy
import Network.AWS.IAM.Types.PolicyDetail
import Network.AWS.IAM.Types.PolicyEvaluationDecisionType
import Network.AWS.IAM.Types.PolicyGrantingServiceAccess
import Network.AWS.IAM.Types.PolicyGroup
import Network.AWS.IAM.Types.PolicyOwnerEntityType
import Network.AWS.IAM.Types.PolicyRole
import Network.AWS.IAM.Types.PolicyScopeType
import Network.AWS.IAM.Types.PolicySourceType
import Network.AWS.IAM.Types.PolicyType
import Network.AWS.IAM.Types.PolicyUsageType
import Network.AWS.IAM.Types.PolicyUser
import Network.AWS.IAM.Types.PolicyVersion
import Network.AWS.IAM.Types.Position
import Network.AWS.IAM.Types.ReportFormatType
import Network.AWS.IAM.Types.ReportStateType
import Network.AWS.IAM.Types.ResourceSpecificResult
import Network.AWS.IAM.Types.Role
import Network.AWS.IAM.Types.RoleDetail
import Network.AWS.IAM.Types.RoleLastUsed
import Network.AWS.IAM.Types.RoleUsageType
import Network.AWS.IAM.Types.SAMLProviderListEntry
import Network.AWS.IAM.Types.SSHPublicKey
import Network.AWS.IAM.Types.SSHPublicKeyMetadata
import Network.AWS.IAM.Types.ServerCertificate
import Network.AWS.IAM.Types.ServerCertificateMetadata
import Network.AWS.IAM.Types.ServiceLastAccessed
import Network.AWS.IAM.Types.ServiceSpecificCredential
import Network.AWS.IAM.Types.ServiceSpecificCredentialMetadata
import Network.AWS.IAM.Types.SigningCertificate
import Network.AWS.IAM.Types.SimulatePolicyResponse
import Network.AWS.IAM.Types.SortKeyType
import Network.AWS.IAM.Types.Statement
import Network.AWS.IAM.Types.StatusType
import Network.AWS.IAM.Types.SummaryKeyType
import Network.AWS.IAM.Types.Tag
import Network.AWS.IAM.Types.TrackedActionLastAccessed
import Network.AWS.IAM.Types.User
import Network.AWS.IAM.Types.UserDetail
import Network.AWS.IAM.Types.VirtualMFADevice
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2010-05-08@ of the Amazon Identity and Access Management SDK configuration.
iam :: Service
iam =
  Service
    { _svcAbbrev = "IAM",
      _svcSigner = v4,
      _svcPrefix = "iam",
      _svcVersion = "2010-05-08",
      _svcEndpoint = defaultEndpoint iam,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "IAM",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has
          ( hasCode "ProvisionedThroughputExceededException"
              . hasStatus 400
          )
          e =
        Just "throughput_exceeded"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has
          (hasCode "RequestThrottledException" . hasStatus 400)
          e =
        Just "request_throttled_exception"
      | has
          (hasCode "ThrottledException" . hasStatus 400)
          e =
        Just "throttled_exception"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | has (hasStatus 500) e = Just "general_server_error"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing

-- | The request was rejected because the policy document was malformed. The error message describes the specific error.
_MalformedPolicyDocumentException :: AsError a => Getting (First ServiceError) a ServiceError
_MalformedPolicyDocumentException =
  _MatchServiceError iam "MalformedPolicyDocument"
    . hasStatus 400

-- | The request failed because a provided policy could not be successfully evaluated. An additional detailed message indicates the source of the failure.
_PolicyEvaluationException :: AsError a => Getting (First ServiceError) a ServiceError
_PolicyEvaluationException =
  _MatchServiceError iam "PolicyEvaluation"
    . hasStatus 500

-- | The request was rejected because the public key encoding format is unsupported or unrecognized.
_UnrecognizedPublicKeyEncodingException :: AsError a => Getting (First ServiceError) a ServiceError
_UnrecognizedPublicKeyEncodingException =
  _MatchServiceError
    iam
    "UnrecognizedPublicKeyEncoding"
    . hasStatus 400

-- | The specified service does not support service-specific credentials.
_ServiceNotSupportedException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceNotSupportedException =
  _MatchServiceError iam "NotSupportedService"
    . hasStatus 404

-- | The request failed because the maximum number of concurrent requests for this account are already running.
_ReportGenerationLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ReportGenerationLimitExceededException =
  _MatchServiceError
    iam
    "ReportGenerationLimitExceeded"
    . hasStatus 409

-- | The request was rejected because the SSH public key is already associated with the specified IAM user.
_DuplicateSSHPublicKeyException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateSSHPublicKeyException =
  _MatchServiceError iam "DuplicateSSHPublicKey"
    . hasStatus 400

-- | The request was rejected because the public key certificate and the private key do not match.
_KeyPairMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_KeyPairMismatchException =
  _MatchServiceError iam "KeyPairMismatch"
    . hasStatus 400

-- | The request failed because AWS service role policies can only be attached to the service-linked role for that service.
_PolicyNotAttachableException :: AsError a => Getting (First ServiceError) a ServiceError
_PolicyNotAttachableException =
  _MatchServiceError iam "PolicyNotAttachable"
    . hasStatus 400

-- | The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
_InvalidInputException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInputException =
  _MatchServiceError iam "InvalidInput"
    . hasStatus 400

-- | The request was rejected because the public key is malformed or otherwise invalid.
_InvalidPublicKeyException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPublicKeyException =
  _MatchServiceError iam "InvalidPublicKey"
    . hasStatus 400

-- | The request was rejected because only the service that depends on the service-linked role can modify or delete the role on your behalf. The error message includes the name of the service that depends on this service-linked role. You must request the change through that service.
_UnmodifiableEntityException :: AsError a => Getting (First ServiceError) a ServiceError
_UnmodifiableEntityException =
  _MatchServiceError iam "UnmodifiableEntity"
    . hasStatus 400

-- | The request was rejected because the same certificate is associated with an IAM user in the account.
_DuplicateCertificateException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateCertificateException =
  _MatchServiceError iam "DuplicateCertificate"
    . hasStatus 409

-- | The request was rejected because the certificate was malformed or expired. The error message describes the specific error.
_MalformedCertificateException :: AsError a => Getting (First ServiceError) a ServiceError
_MalformedCertificateException =
  _MatchServiceError iam "MalformedCertificate"
    . hasStatus 400

-- | The request was rejected because it attempted to create a resource that already exists.
_EntityAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_EntityAlreadyExistsException =
  _MatchServiceError iam "EntityAlreadyExists"
    . hasStatus 409

-- | The request was rejected because multiple requests to change this object were submitted simultaneously. Wait a few minutes and submit your request again.
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException =
  _MatchServiceError iam "ConcurrentModification"
    . hasStatus 409

-- | The request processing has failed because of an unknown error, exception or failure.
_ServiceFailureException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceFailureException =
  _MatchServiceError iam "ServiceFailure"
    . hasStatus 500

-- | The request was rejected because the type of user for the transaction was incorrect.
_InvalidUserTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUserTypeException =
  _MatchServiceError iam "InvalidUserType"
    . hasStatus 400

-- | The request was rejected because the credential report is still being generated.
_CredentialReportNotReadyException :: AsError a => Getting (First ServiceError) a ServiceError
_CredentialReportNotReadyException =
  _MatchServiceError iam "ReportInProgress"
    . hasStatus 404

-- | The request was rejected because the credential report does not exist. To generate a credential report, use 'GenerateCredentialReport' .
_CredentialReportNotPresentException :: AsError a => Getting (First ServiceError) a ServiceError
_CredentialReportNotPresentException =
  _MatchServiceError iam "ReportNotPresent"
    . hasStatus 410

-- | The request was rejected because it attempted to create resources beyond the current AWS account limits. The error message describes the limit exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError iam "LimitExceeded"
    . hasStatus 409

-- | The request was rejected because the provided password did not meet the requirements imposed by the account password policy.
_PasswordPolicyViolationException :: AsError a => Getting (First ServiceError) a ServiceError
_PasswordPolicyViolationException =
  _MatchServiceError iam "PasswordPolicyViolation"
    . hasStatus 400

-- | The request was rejected because the authentication code was not recognized. The error message describes the specific error.
_InvalidAuthenticationCodeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAuthenticationCodeException =
  _MatchServiceError iam "InvalidAuthenticationCode"
    . hasStatus 403

-- | The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.
_EntityTemporarilyUnmodifiableException :: AsError a => Getting (First ServiceError) a ServiceError
_EntityTemporarilyUnmodifiableException =
  _MatchServiceError
    iam
    "EntityTemporarilyUnmodifiable"
    . hasStatus 409

-- | The request was rejected because the certificate is invalid.
_InvalidCertificateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCertificateException =
  _MatchServiceError iam "InvalidCertificate"
    . hasStatus 400

-- | The request was rejected because it referenced a resource entity that does not exist. The error message describes the resource.
_NoSuchEntityException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchEntityException =
  _MatchServiceError iam "NoSuchEntity"
    . hasStatus 404

-- | The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.
_DeleteConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_DeleteConflictException =
  _MatchServiceError iam "DeleteConflict"
    . hasStatus 409

-- | The request was rejected because the most recent credential report has expired. To generate a new credential report, use 'GenerateCredentialReport' . For more information about credential report expiration, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html Getting credential reports> in the /IAM User Guide/ .
_CredentialReportExpiredException :: AsError a => Getting (First ServiceError) a ServiceError
_CredentialReportExpiredException =
  _MatchServiceError iam "ReportExpired"
    . hasStatus 410
