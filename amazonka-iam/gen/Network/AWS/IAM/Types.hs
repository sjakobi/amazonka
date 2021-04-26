{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    newAccessDetail,

    -- * AccessKeyInfo
    AccessKeyInfo (..),
    newAccessKeyInfo,

    -- * AccessKeyLastUsed
    AccessKeyLastUsed (..),
    newAccessKeyLastUsed,

    -- * AccessKeyMetadata
    AccessKeyMetadata (..),
    newAccessKeyMetadata,

    -- * AttachedPermissionsBoundary
    AttachedPermissionsBoundary (..),
    newAttachedPermissionsBoundary,

    -- * AttachedPolicy
    AttachedPolicy (..),
    newAttachedPolicy,

    -- * ContextEntry
    ContextEntry (..),
    newContextEntry,

    -- * DeletionTaskFailureReasonType
    DeletionTaskFailureReasonType (..),
    newDeletionTaskFailureReasonType,

    -- * EntityDetails
    EntityDetails (..),
    newEntityDetails,

    -- * EntityInfo
    EntityInfo (..),
    newEntityInfo,

    -- * ErrorDetails
    ErrorDetails (..),
    newErrorDetails,

    -- * EvaluationResult
    EvaluationResult (..),
    newEvaluationResult,

    -- * GetContextKeysForPolicyResponse
    GetContextKeysForPolicyResponse (..),
    newGetContextKeysForPolicyResponse,

    -- * Group
    Group (..),
    newGroup,

    -- * GroupDetail
    GroupDetail (..),
    newGroupDetail,

    -- * InstanceProfile
    InstanceProfile (..),
    newInstanceProfile,

    -- * ListPoliciesGrantingServiceAccessEntry
    ListPoliciesGrantingServiceAccessEntry (..),
    newListPoliciesGrantingServiceAccessEntry,

    -- * LoginProfile
    LoginProfile (..),
    newLoginProfile,

    -- * MFADevice
    MFADevice (..),
    newMFADevice,

    -- * ManagedPolicyDetail
    ManagedPolicyDetail (..),
    newManagedPolicyDetail,

    -- * OpenIDConnectProviderListEntry
    OpenIDConnectProviderListEntry (..),
    newOpenIDConnectProviderListEntry,

    -- * OrganizationsDecisionDetail
    OrganizationsDecisionDetail (..),
    newOrganizationsDecisionDetail,

    -- * PasswordPolicy
    PasswordPolicy (..),
    newPasswordPolicy,

    -- * PermissionsBoundaryDecisionDetail
    PermissionsBoundaryDecisionDetail (..),
    newPermissionsBoundaryDecisionDetail,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PolicyDetail
    PolicyDetail (..),
    newPolicyDetail,

    -- * PolicyGrantingServiceAccess
    PolicyGrantingServiceAccess (..),
    newPolicyGrantingServiceAccess,

    -- * PolicyGroup
    PolicyGroup (..),
    newPolicyGroup,

    -- * PolicyRole
    PolicyRole (..),
    newPolicyRole,

    -- * PolicyUser
    PolicyUser (..),
    newPolicyUser,

    -- * PolicyVersion
    PolicyVersion (..),
    newPolicyVersion,

    -- * Position
    Position (..),
    newPosition,

    -- * ResourceSpecificResult
    ResourceSpecificResult (..),
    newResourceSpecificResult,

    -- * Role
    Role (..),
    newRole,

    -- * RoleDetail
    RoleDetail (..),
    newRoleDetail,

    -- * RoleLastUsed
    RoleLastUsed (..),
    newRoleLastUsed,

    -- * RoleUsageType
    RoleUsageType (..),
    newRoleUsageType,

    -- * SAMLProviderListEntry
    SAMLProviderListEntry (..),
    newSAMLProviderListEntry,

    -- * SSHPublicKey
    SSHPublicKey (..),
    newSSHPublicKey,

    -- * SSHPublicKeyMetadata
    SSHPublicKeyMetadata (..),
    newSSHPublicKeyMetadata,

    -- * ServerCertificate
    ServerCertificate (..),
    newServerCertificate,

    -- * ServerCertificateMetadata
    ServerCertificateMetadata (..),
    newServerCertificateMetadata,

    -- * ServiceLastAccessed
    ServiceLastAccessed (..),
    newServiceLastAccessed,

    -- * ServiceSpecificCredential
    ServiceSpecificCredential (..),
    newServiceSpecificCredential,

    -- * ServiceSpecificCredentialMetadata
    ServiceSpecificCredentialMetadata (..),
    newServiceSpecificCredentialMetadata,

    -- * SigningCertificate
    SigningCertificate (..),
    newSigningCertificate,

    -- * SimulatePolicyResponse
    SimulatePolicyResponse (..),
    newSimulatePolicyResponse,

    -- * Statement
    Statement (..),
    newStatement,

    -- * Tag
    Tag (..),
    newTag,

    -- * TrackedActionLastAccessed
    TrackedActionLastAccessed (..),
    newTrackedActionLastAccessed,

    -- * User
    User (..),
    newUser,

    -- * UserDetail
    UserDetail (..),
    newUserDetail,

    -- * VirtualMFADevice
    VirtualMFADevice (..),
    newVirtualMFADevice,
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
import Network.AWS.IAM.Types.OpenIDConnectProviderListEntry
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2010-05-08@ of the Amazon Identity and Access Management SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "IAM",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "iam",
      Prelude._svcVersion = "2010-05-08",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseXMLError "IAM",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | The request was rejected because the policy document was malformed. The
-- error message describes the specific error.
_MalformedPolicyDocumentException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MalformedPolicyDocumentException =
  Prelude._MatchServiceError
    defaultService
    "MalformedPolicyDocument"
    Prelude.. Prelude.hasStatus 400

-- | The request failed because a provided policy could not be successfully
-- evaluated. An additional detailed message indicates the source of the
-- failure.
_PolicyEvaluationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PolicyEvaluationException =
  Prelude._MatchServiceError
    defaultService
    "PolicyEvaluation"
    Prelude.. Prelude.hasStatus 500

-- | The request was rejected because the public key encoding format is
-- unsupported or unrecognized.
_UnrecognizedPublicKeyEncodingException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnrecognizedPublicKeyEncodingException =
  Prelude._MatchServiceError
    defaultService
    "UnrecognizedPublicKeyEncoding"
    Prelude.. Prelude.hasStatus 400

-- | The specified service does not support service-specific credentials.
_ServiceNotSupportedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceNotSupportedException =
  Prelude._MatchServiceError
    defaultService
    "NotSupportedService"
    Prelude.. Prelude.hasStatus 404

-- | The request failed because the maximum number of concurrent requests for
-- this account are already running.
_ReportGenerationLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReportGenerationLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "ReportGenerationLimitExceeded"
    Prelude.. Prelude.hasStatus 409

-- | The request was rejected because the SSH public key is already
-- associated with the specified IAM user.
_DuplicateSSHPublicKeyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateSSHPublicKeyException =
  Prelude._MatchServiceError
    defaultService
    "DuplicateSSHPublicKey"
    Prelude.. Prelude.hasStatus 400

-- | The request was rejected because the public key certificate and the
-- private key do not match.
_KeyPairMismatchException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KeyPairMismatchException =
  Prelude._MatchServiceError
    defaultService
    "KeyPairMismatch"
    Prelude.. Prelude.hasStatus 400

-- | The request failed because AWS service role policies can only be
-- attached to the service-linked role for that service.
_PolicyNotAttachableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PolicyNotAttachableException =
  Prelude._MatchServiceError
    defaultService
    "PolicyNotAttachable"
    Prelude.. Prelude.hasStatus 400

-- | The request was rejected because an invalid or out-of-range value was
-- supplied for an input parameter.
_InvalidInputException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInputException =
  Prelude._MatchServiceError
    defaultService
    "InvalidInput"
    Prelude.. Prelude.hasStatus 400

-- | The request was rejected because the public key is malformed or
-- otherwise invalid.
_InvalidPublicKeyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidPublicKeyException =
  Prelude._MatchServiceError
    defaultService
    "InvalidPublicKey"
    Prelude.. Prelude.hasStatus 400

-- | The request was rejected because only the service that depends on the
-- service-linked role can modify or delete the role on your behalf. The
-- error message includes the name of the service that depends on this
-- service-linked role. You must request the change through that service.
_UnmodifiableEntityException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnmodifiableEntityException =
  Prelude._MatchServiceError
    defaultService
    "UnmodifiableEntity"
    Prelude.. Prelude.hasStatus 400

-- | The request was rejected because the same certificate is associated with
-- an IAM user in the account.
_DuplicateCertificateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateCertificateException =
  Prelude._MatchServiceError
    defaultService
    "DuplicateCertificate"
    Prelude.. Prelude.hasStatus 409

-- | The request was rejected because the certificate was malformed or
-- expired. The error message describes the specific error.
_MalformedCertificateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MalformedCertificateException =
  Prelude._MatchServiceError
    defaultService
    "MalformedCertificate"
    Prelude.. Prelude.hasStatus 400

-- | The request was rejected because it attempted to create a resource that
-- already exists.
_EntityAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_EntityAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "EntityAlreadyExists"
    Prelude.. Prelude.hasStatus 409

-- | The request was rejected because multiple requests to change this object
-- were submitted simultaneously. Wait a few minutes and submit your
-- request again.
_ConcurrentModificationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentModificationException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentModification"
    Prelude.. Prelude.hasStatus 409

-- | The request processing has failed because of an unknown error, exception
-- or failure.
_ServiceFailureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceFailureException =
  Prelude._MatchServiceError
    defaultService
    "ServiceFailure"
    Prelude.. Prelude.hasStatus 500

-- | The request was rejected because the type of user for the transaction
-- was incorrect.
_InvalidUserTypeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidUserTypeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidUserType"
    Prelude.. Prelude.hasStatus 400

-- | The request was rejected because the credential report is still being
-- generated.
_CredentialReportNotReadyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CredentialReportNotReadyException =
  Prelude._MatchServiceError
    defaultService
    "ReportInProgress"
    Prelude.. Prelude.hasStatus 404

-- | The request was rejected because the credential report does not exist.
-- To generate a credential report, use GenerateCredentialReport.
_CredentialReportNotPresentException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CredentialReportNotPresentException =
  Prelude._MatchServiceError
    defaultService
    "ReportNotPresent"
    Prelude.. Prelude.hasStatus 410

-- | The request was rejected because it attempted to create resources beyond
-- the current AWS account limits. The error message describes the limit
-- exceeded.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceeded"
    Prelude.. Prelude.hasStatus 409

-- | The request was rejected because the provided password did not meet the
-- requirements imposed by the account password policy.
_PasswordPolicyViolationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PasswordPolicyViolationException =
  Prelude._MatchServiceError
    defaultService
    "PasswordPolicyViolation"
    Prelude.. Prelude.hasStatus 400

-- | The request was rejected because the authentication code was not
-- recognized. The error message describes the specific error.
_InvalidAuthenticationCodeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidAuthenticationCodeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidAuthenticationCode"
    Prelude.. Prelude.hasStatus 403

-- | The request was rejected because it referenced an entity that is
-- temporarily unmodifiable, such as a user name that was deleted and then
-- recreated. The error indicates that the request is likely to succeed if
-- you try again after waiting several minutes. The error message describes
-- the entity.
_EntityTemporarilyUnmodifiableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_EntityTemporarilyUnmodifiableException =
  Prelude._MatchServiceError
    defaultService
    "EntityTemporarilyUnmodifiable"
    Prelude.. Prelude.hasStatus 409

-- | The request was rejected because the certificate is invalid.
_InvalidCertificateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidCertificateException =
  Prelude._MatchServiceError
    defaultService
    "InvalidCertificate"
    Prelude.. Prelude.hasStatus 400

-- | The request was rejected because it referenced a resource entity that
-- does not exist. The error message describes the resource.
_NoSuchEntityException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchEntityException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchEntity"
    Prelude.. Prelude.hasStatus 404

-- | The request was rejected because it attempted to delete a resource that
-- has attached subordinate entities. The error message describes these
-- entities.
_DeleteConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DeleteConflictException =
  Prelude._MatchServiceError
    defaultService
    "DeleteConflict"
    Prelude.. Prelude.hasStatus 409

-- | The request was rejected because the most recent credential report has
-- expired. To generate a new credential report, use
-- GenerateCredentialReport. For more information about credential report
-- expiration, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html Getting credential reports>
-- in the /IAM User Guide/.
_CredentialReportExpiredException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CredentialReportExpiredException =
  Prelude._MatchServiceError
    defaultService
    "ReportExpired"
    Prelude.. Prelude.hasStatus 410
