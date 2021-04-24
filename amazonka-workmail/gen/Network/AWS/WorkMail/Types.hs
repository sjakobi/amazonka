{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types
  ( -- * Service Configuration
    workMail,

    -- * Errors
    _EntityNotFoundException,
    _OrganizationNotFoundException,
    _ReservedNameException,
    _MailDomainStateException,
    _TooManyTagsException,
    _NameAvailabilityException,
    _InvalidConfigurationException,
    _OrganizationStateException,
    _EntityStateException,
    _DirectoryInUseException,
    _UnsupportedOperationException,
    _InvalidParameterException,
    _DirectoryUnavailableException,
    _LimitExceededException,
    _InvalidPasswordException,
    _EmailAddressInUseException,
    _ResourceNotFoundException,
    _DirectoryServiceAuthenticationFailedException,
    _MailDomainNotFoundException,
    _EntityAlreadyRegisteredException,

    -- * AccessControlRuleEffect
    AccessControlRuleEffect (..),

    -- * EntityState
    EntityState (..),

    -- * FolderName
    FolderName (..),

    -- * MailboxExportJobState
    MailboxExportJobState (..),

    -- * MemberType
    MemberType (..),

    -- * PermissionType
    PermissionType (..),

    -- * ResourceType
    ResourceType (..),

    -- * RetentionAction
    RetentionAction (..),

    -- * UserRole
    UserRole (..),

    -- * AccessControlRule
    AccessControlRule (..),
    accessControlRule,
    acrEffect,
    acrDateCreated,
    acrNotIPRanges,
    acrIPRanges,
    acrDateModified,
    acrActions,
    acrUserIds,
    acrName,
    acrDescription,
    acrNotActions,
    acrNotUserIds,

    -- * BookingOptions
    BookingOptions (..),
    bookingOptions,
    boAutoDeclineConflictingRequests,
    boAutoDeclineRecurringRequests,
    boAutoAcceptRequests,

    -- * Delegate
    Delegate (..),
    delegate,
    dId,
    dType,

    -- * Domain
    Domain (..),
    domain,
    dHostedZoneId,
    dDomainName,

    -- * FolderConfiguration
    FolderConfiguration (..),
    folderConfiguration,
    fcPeriod,
    fcName,
    fcAction,

    -- * Group
    Group (..),
    group',
    gEnabledDate,
    gId,
    gState,
    gName,
    gEmail,
    gDisabledDate,

    -- * MailboxExportJob
    MailboxExportJob (..),
    mailboxExportJob,
    mejEstimatedProgress,
    mejEntityId,
    mejStartTime,
    mejS3Path,
    mejEndTime,
    mejState,
    mejS3BucketName,
    mejDescription,
    mejJobId,

    -- * Member
    Member (..),
    member,
    mEnabledDate,
    mId,
    mState,
    mName,
    mDisabledDate,
    mType,

    -- * OrganizationSummary
    OrganizationSummary (..),
    organizationSummary,
    osOrganizationId,
    osAlias,
    osDefaultMailDomain,
    osState,
    osErrorMessage,

    -- * Permission
    Permission (..),
    permission,
    pGranteeId,
    pGranteeType,
    pPermissionValues,

    -- * Resource
    Resource (..),
    resource,
    rEnabledDate,
    rId,
    rState,
    rName,
    rEmail,
    rDisabledDate,
    rType,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * User
    User (..),
    user,
    uEnabledDate,
    uId,
    uUserRole,
    uState,
    uName,
    uEmail,
    uDisabledDate,
    uDisplayName,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.WorkMail.Types.AccessControlRule
import Network.AWS.WorkMail.Types.AccessControlRuleEffect
import Network.AWS.WorkMail.Types.BookingOptions
import Network.AWS.WorkMail.Types.Delegate
import Network.AWS.WorkMail.Types.Domain
import Network.AWS.WorkMail.Types.EntityState
import Network.AWS.WorkMail.Types.FolderConfiguration
import Network.AWS.WorkMail.Types.FolderName
import Network.AWS.WorkMail.Types.Group
import Network.AWS.WorkMail.Types.MailboxExportJob
import Network.AWS.WorkMail.Types.MailboxExportJobState
import Network.AWS.WorkMail.Types.Member
import Network.AWS.WorkMail.Types.MemberType
import Network.AWS.WorkMail.Types.OrganizationSummary
import Network.AWS.WorkMail.Types.Permission
import Network.AWS.WorkMail.Types.PermissionType
import Network.AWS.WorkMail.Types.Resource
import Network.AWS.WorkMail.Types.ResourceType
import Network.AWS.WorkMail.Types.RetentionAction
import Network.AWS.WorkMail.Types.Tag
import Network.AWS.WorkMail.Types.User
import Network.AWS.WorkMail.Types.UserRole

-- | API version @2017-10-01@ of the Amazon WorkMail SDK configuration.
workMail :: Service
workMail =
  Service
    { _svcAbbrev = "WorkMail",
      _svcSigner = v4,
      _svcPrefix = "workmail",
      _svcVersion = "2017-10-01",
      _svcEndpoint = defaultEndpoint workMail,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "WorkMail",
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

-- | The identifier supplied for the user, group, or resource does not exist in your organization.
_EntityNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_EntityNotFoundException =
  _MatchServiceError
    workMail
    "EntityNotFoundException"

-- | An operation received a valid organization identifier that either doesn't belong or exist in the system.
_OrganizationNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_OrganizationNotFoundException =
  _MatchServiceError
    workMail
    "OrganizationNotFoundException"

-- | This user, group, or resource name is not allowed in Amazon WorkMail.
_ReservedNameException :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedNameException =
  _MatchServiceError workMail "ReservedNameException"

-- | After a domain has been added to the organization, it must be verified. The domain is not yet verified.
_MailDomainStateException :: AsError a => Getting (First ServiceError) a ServiceError
_MailDomainStateException =
  _MatchServiceError
    workMail
    "MailDomainStateException"

-- | The resource can have up to 50 user-applied tags.
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException =
  _MatchServiceError workMail "TooManyTagsException"

-- | The user, group, or resource name isn't unique in Amazon WorkMail.
_NameAvailabilityException :: AsError a => Getting (First ServiceError) a ServiceError
_NameAvailabilityException =
  _MatchServiceError
    workMail
    "NameAvailabilityException"

-- | The configuration for a resource isn't valid. A resource must either be able to auto-respond to requests or have at least one delegate associated that can do so on its behalf.
_InvalidConfigurationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidConfigurationException =
  _MatchServiceError
    workMail
    "InvalidConfigurationException"

-- | The organization must have a valid state to perform certain operations on the organization or its members.
_OrganizationStateException :: AsError a => Getting (First ServiceError) a ServiceError
_OrganizationStateException =
  _MatchServiceError
    workMail
    "OrganizationStateException"

-- | You are performing an operation on a user, group, or resource that isn't in the expected state, such as trying to delete an active user.
_EntityStateException :: AsError a => Getting (First ServiceError) a ServiceError
_EntityStateException =
  _MatchServiceError workMail "EntityStateException"

-- | The directory is already in use by another WorkMail organization in the same account and Region.
_DirectoryInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryInUseException =
  _MatchServiceError
    workMail
    "DirectoryInUseException"

-- | You can't perform a write operation against a read-only directory.
_UnsupportedOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedOperationException =
  _MatchServiceError
    workMail
    "UnsupportedOperationException"

-- | One or more of the input parameters don't match the service's restrictions.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    workMail
    "InvalidParameterException"

-- | The directory is unavailable. It might be located in another Region or deleted.
_DirectoryUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryUnavailableException =
  _MatchServiceError
    workMail
    "DirectoryUnavailableException"

-- | The request exceeds the limit of the resource.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    workMail
    "LimitExceededException"

-- | The supplied password doesn't match the minimum security constraints, such as length or use of special characters.
_InvalidPasswordException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPasswordException =
  _MatchServiceError
    workMail
    "InvalidPasswordException"

-- | The email address that you're trying to assign is already created for a different user, group, or resource.
_EmailAddressInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_EmailAddressInUseException =
  _MatchServiceError
    workMail
    "EmailAddressInUseException"

-- | The resource cannot be found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    workMail
    "ResourceNotFoundException"

-- | The directory service doesn't recognize the credentials supplied by WorkMail.
_DirectoryServiceAuthenticationFailedException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryServiceAuthenticationFailedException =
  _MatchServiceError
    workMail
    "DirectoryServiceAuthenticationFailedException"

-- | For an email or alias to be created in Amazon WorkMail, the included domain must be defined in the organization.
_MailDomainNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_MailDomainNotFoundException =
  _MatchServiceError
    workMail
    "MailDomainNotFoundException"

-- | The user, group, or resource that you're trying to register is already registered.
_EntityAlreadyRegisteredException :: AsError a => Getting (First ServiceError) a ServiceError
_EntityAlreadyRegisteredException =
  _MatchServiceError
    workMail
    "EntityAlreadyRegisteredException"
