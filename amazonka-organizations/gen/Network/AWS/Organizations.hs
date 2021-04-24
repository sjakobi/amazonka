{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Organizations__
module Network.AWS.Organizations
  ( -- * Service Configuration
    organizations,

    -- * Errors
    -- $errors

    -- ** OrganizationalUnitNotEmptyException
    _OrganizationalUnitNotEmptyException,

    -- ** PolicyTypeNotEnabledException
    _PolicyTypeNotEnabledException,

    -- ** MalformedPolicyDocumentException
    _MalformedPolicyDocumentException,

    -- ** DuplicateHandshakeException
    _DuplicateHandshakeException,

    -- ** OrganizationNotEmptyException
    _OrganizationNotEmptyException,

    -- ** OrganizationalUnitNotFoundException
    _OrganizationalUnitNotFoundException,

    -- ** DuplicateAccountException
    _DuplicateAccountException,

    -- ** EffectivePolicyNotFoundException
    _EffectivePolicyNotFoundException,

    -- ** HandshakeAlreadyInStateException
    _HandshakeAlreadyInStateException,

    -- ** ConstraintViolationException
    _ConstraintViolationException,

    -- ** AWSOrganizationsNotInUseException
    _AWSOrganizationsNotInUseException,

    -- ** PolicyTypeNotAvailableForOrganizationException
    _PolicyTypeNotAvailableForOrganizationException,

    -- ** HandshakeNotFoundException
    _HandshakeNotFoundException,

    -- ** InvalidInputException
    _InvalidInputException,

    -- ** ParentNotFoundException
    _ParentNotFoundException,

    -- ** DuplicatePolicyException
    _DuplicatePolicyException,

    -- ** AlreadyInOrganizationException
    _AlreadyInOrganizationException,

    -- ** CreateAccountStatusNotFoundException
    _CreateAccountStatusNotFoundException,

    -- ** MasterCannotLeaveOrganizationException
    _MasterCannotLeaveOrganizationException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** PolicyNotFoundException
    _PolicyNotFoundException,

    -- ** PolicyTypeAlreadyEnabledException
    _PolicyTypeAlreadyEnabledException,

    -- ** AccountOwnerNotVerifiedException
    _AccountOwnerNotVerifiedException,

    -- ** HandshakeConstraintViolationException
    _HandshakeConstraintViolationException,

    -- ** DestinationParentNotFoundException
    _DestinationParentNotFoundException,

    -- ** DuplicatePolicyAttachmentException
    _DuplicatePolicyAttachmentException,

    -- ** UnsupportedAPIEndpointException
    _UnsupportedAPIEndpointException,

    -- ** ChildNotFoundException
    _ChildNotFoundException,

    -- ** InvalidHandshakeTransitionException
    _InvalidHandshakeTransitionException,

    -- ** FinalizingOrganizationException
    _FinalizingOrganizationException,

    -- ** PolicyInUseException
    _PolicyInUseException,

    -- ** AccountNotRegisteredException
    _AccountNotRegisteredException,

    -- ** PolicyChangesInProgressException
    _PolicyChangesInProgressException,

    -- ** AccountAlreadyRegisteredException
    _AccountAlreadyRegisteredException,

    -- ** PolicyNotAttachedException
    _PolicyNotAttachedException,

    -- ** DuplicateOrganizationalUnitException
    _DuplicateOrganizationalUnitException,

    -- ** AccessDeniedForDependencyException
    _AccessDeniedForDependencyException,

    -- ** TargetNotFoundException
    _TargetNotFoundException,

    -- ** SourceParentNotFoundException
    _SourceParentNotFoundException,

    -- ** AccountNotFoundException
    _AccountNotFoundException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- ** ServiceException
    _ServiceException,

    -- ** RootNotFoundException
    _RootNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListAccountsForParent (Paginated)
    module Network.AWS.Organizations.ListAccountsForParent,

    -- ** CreateOrganization
    module Network.AWS.Organizations.CreateOrganization,

    -- ** CreatePolicy
    module Network.AWS.Organizations.CreatePolicy,

    -- ** DisablePolicyType
    module Network.AWS.Organizations.DisablePolicyType,

    -- ** DescribeCreateAccountStatus
    module Network.AWS.Organizations.DescribeCreateAccountStatus,

    -- ** ListPolicies (Paginated)
    module Network.AWS.Organizations.ListPolicies,

    -- ** ListHandshakesForAccount (Paginated)
    module Network.AWS.Organizations.ListHandshakesForAccount,

    -- ** ListChildren (Paginated)
    module Network.AWS.Organizations.ListChildren,

    -- ** DeletePolicy
    module Network.AWS.Organizations.DeletePolicy,

    -- ** EnablePolicyType
    module Network.AWS.Organizations.EnablePolicyType,

    -- ** UpdatePolicy
    module Network.AWS.Organizations.UpdatePolicy,

    -- ** ListAWSServiceAccessForOrganization (Paginated)
    module Network.AWS.Organizations.ListAWSServiceAccessForOrganization,

    -- ** DescribeOrganization
    module Network.AWS.Organizations.DescribeOrganization,

    -- ** ListCreateAccountStatus (Paginated)
    module Network.AWS.Organizations.ListCreateAccountStatus,

    -- ** UntagResource
    module Network.AWS.Organizations.UntagResource,

    -- ** ListAccounts (Paginated)
    module Network.AWS.Organizations.ListAccounts,

    -- ** TagResource
    module Network.AWS.Organizations.TagResource,

    -- ** EnableAWSServiceAccess
    module Network.AWS.Organizations.EnableAWSServiceAccess,

    -- ** DescribeOrganizationalUnit
    module Network.AWS.Organizations.DescribeOrganizationalUnit,

    -- ** ListDelegatedServicesForAccount (Paginated)
    module Network.AWS.Organizations.ListDelegatedServicesForAccount,

    -- ** RemoveAccountFromOrganization
    module Network.AWS.Organizations.RemoveAccountFromOrganization,

    -- ** CreateGovCloudAccount
    module Network.AWS.Organizations.CreateGovCloudAccount,

    -- ** DeleteOrganization
    module Network.AWS.Organizations.DeleteOrganization,

    -- ** ListRoots (Paginated)
    module Network.AWS.Organizations.ListRoots,

    -- ** EnableAllFeatures
    module Network.AWS.Organizations.EnableAllFeatures,

    -- ** AcceptHandshake
    module Network.AWS.Organizations.AcceptHandshake,

    -- ** DetachPolicy
    module Network.AWS.Organizations.DetachPolicy,

    -- ** CreateOrganizationalUnit
    module Network.AWS.Organizations.CreateOrganizationalUnit,

    -- ** DescribeAccount
    module Network.AWS.Organizations.DescribeAccount,

    -- ** ListDelegatedAdministrators (Paginated)
    module Network.AWS.Organizations.ListDelegatedAdministrators,

    -- ** UpdateOrganizationalUnit
    module Network.AWS.Organizations.UpdateOrganizationalUnit,

    -- ** DeleteOrganizationalUnit
    module Network.AWS.Organizations.DeleteOrganizationalUnit,

    -- ** CancelHandshake
    module Network.AWS.Organizations.CancelHandshake,

    -- ** RegisterDelegatedAdministrator
    module Network.AWS.Organizations.RegisterDelegatedAdministrator,

    -- ** ListHandshakesForOrganization (Paginated)
    module Network.AWS.Organizations.ListHandshakesForOrganization,

    -- ** ListPoliciesForTarget (Paginated)
    module Network.AWS.Organizations.ListPoliciesForTarget,

    -- ** ListOrganizationalUnitsForParent (Paginated)
    module Network.AWS.Organizations.ListOrganizationalUnitsForParent,

    -- ** ListTargetsForPolicy (Paginated)
    module Network.AWS.Organizations.ListTargetsForPolicy,

    -- ** AttachPolicy
    module Network.AWS.Organizations.AttachPolicy,

    -- ** DeclineHandshake
    module Network.AWS.Organizations.DeclineHandshake,

    -- ** DescribeEffectivePolicy
    module Network.AWS.Organizations.DescribeEffectivePolicy,

    -- ** DeregisterDelegatedAdministrator
    module Network.AWS.Organizations.DeregisterDelegatedAdministrator,

    -- ** MoveAccount
    module Network.AWS.Organizations.MoveAccount,

    -- ** InviteAccountToOrganization
    module Network.AWS.Organizations.InviteAccountToOrganization,

    -- ** LeaveOrganization
    module Network.AWS.Organizations.LeaveOrganization,

    -- ** DisableAWSServiceAccess
    module Network.AWS.Organizations.DisableAWSServiceAccess,

    -- ** ListParents (Paginated)
    module Network.AWS.Organizations.ListParents,

    -- ** DescribePolicy
    module Network.AWS.Organizations.DescribePolicy,

    -- ** CreateAccount
    module Network.AWS.Organizations.CreateAccount,

    -- ** ListTagsForResource (Paginated)
    module Network.AWS.Organizations.ListTagsForResource,

    -- ** DescribeHandshake
    module Network.AWS.Organizations.DescribeHandshake,

    -- * Types

    -- ** AccountJoinedMethod
    AccountJoinedMethod (..),

    -- ** AccountStatus
    AccountStatus (..),

    -- ** ActionType
    ActionType (..),

    -- ** ChildType
    ChildType (..),

    -- ** CreateAccountFailureReason
    CreateAccountFailureReason (..),

    -- ** CreateAccountState
    CreateAccountState (..),

    -- ** EffectivePolicyType
    EffectivePolicyType (..),

    -- ** HandshakePartyType
    HandshakePartyType (..),

    -- ** HandshakeResourceType
    HandshakeResourceType (..),

    -- ** HandshakeState
    HandshakeState (..),

    -- ** IAMUserAccessToBilling
    IAMUserAccessToBilling (..),

    -- ** OrganizationFeatureSet
    OrganizationFeatureSet (..),

    -- ** ParentType
    ParentType (..),

    -- ** PolicyType
    PolicyType (..),

    -- ** PolicyTypeStatus
    PolicyTypeStatus (..),

    -- ** TargetType
    TargetType (..),

    -- ** Account
    Account,
    account,
    aStatus,
    aJoinedMethod,
    aARN,
    aJoinedTimestamp,
    aId,
    aName,
    aEmail,

    -- ** Child
    Child,
    child,
    cId,
    cType,

    -- ** CreateAccountStatus
    CreateAccountStatus,
    createAccountStatus,
    casAccountId,
    casRequestedTimestamp,
    casAccountName,
    casGovCloudAccountId,
    casCompletedTimestamp,
    casId,
    casState,
    casFailureReason,

    -- ** DelegatedAdministrator
    DelegatedAdministrator,
    delegatedAdministrator,
    daStatus,
    daJoinedMethod,
    daARN,
    daJoinedTimestamp,
    daId,
    daName,
    daEmail,
    daDelegationEnabledDate,

    -- ** DelegatedService
    DelegatedService,
    delegatedService,
    dsServicePrincipal,
    dsDelegationEnabledDate,

    -- ** EffectivePolicy
    EffectivePolicy,
    effectivePolicy,
    epTargetId,
    epPolicyContent,
    epPolicyType,
    epLastUpdatedTimestamp,

    -- ** EnabledServicePrincipal
    EnabledServicePrincipal,
    enabledServicePrincipal,
    espServicePrincipal,
    espDateEnabled,

    -- ** Handshake
    Handshake,
    handshake,
    hRequestedTimestamp,
    hParties,
    hARN,
    hId,
    hState,
    hResources,
    hAction,
    hExpirationTimestamp,

    -- ** HandshakeFilter
    HandshakeFilter,
    handshakeFilter,
    hfActionType,
    hfParentHandshakeId,

    -- ** HandshakeParty
    HandshakeParty,
    handshakeParty,
    hpId,
    hpType,

    -- ** HandshakeResource
    HandshakeResource,
    handshakeResource,
    hrResources,
    hrValue,
    hrType,

    -- ** Organization
    Organization,
    organization,
    oMasterAccountEmail,
    oFeatureSet,
    oMasterAccountARN,
    oARN,
    oId,
    oMasterAccountId,
    oAvailablePolicyTypes,

    -- ** OrganizationalUnit
    OrganizationalUnit,
    organizationalUnit,
    ouARN,
    ouId,
    ouName,

    -- ** Parent
    Parent,
    parent,
    pId,
    pType,

    -- ** Policy
    Policy,
    policy,
    pPolicySummary,
    pContent,

    -- ** PolicySummary
    PolicySummary,
    policySummary,
    psARN,
    psId,
    psName,
    psDescription,
    psType,
    psAWSManaged,

    -- ** PolicyTargetSummary
    PolicyTargetSummary,
    policyTargetSummary,
    polTargetId,
    polARN,
    polName,
    polType,

    -- ** PolicyTypeSummary
    PolicyTypeSummary,
    policyTypeSummary,
    ptsStatus,
    ptsType,

    -- ** Root
    Root,
    root,
    rPolicyTypes,
    rARN,
    rId,
    rName,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.Organizations.AcceptHandshake
import Network.AWS.Organizations.AttachPolicy
import Network.AWS.Organizations.CancelHandshake
import Network.AWS.Organizations.CreateAccount
import Network.AWS.Organizations.CreateGovCloudAccount
import Network.AWS.Organizations.CreateOrganization
import Network.AWS.Organizations.CreateOrganizationalUnit
import Network.AWS.Organizations.CreatePolicy
import Network.AWS.Organizations.DeclineHandshake
import Network.AWS.Organizations.DeleteOrganization
import Network.AWS.Organizations.DeleteOrganizationalUnit
import Network.AWS.Organizations.DeletePolicy
import Network.AWS.Organizations.DeregisterDelegatedAdministrator
import Network.AWS.Organizations.DescribeAccount
import Network.AWS.Organizations.DescribeCreateAccountStatus
import Network.AWS.Organizations.DescribeEffectivePolicy
import Network.AWS.Organizations.DescribeHandshake
import Network.AWS.Organizations.DescribeOrganization
import Network.AWS.Organizations.DescribeOrganizationalUnit
import Network.AWS.Organizations.DescribePolicy
import Network.AWS.Organizations.DetachPolicy
import Network.AWS.Organizations.DisableAWSServiceAccess
import Network.AWS.Organizations.DisablePolicyType
import Network.AWS.Organizations.EnableAWSServiceAccess
import Network.AWS.Organizations.EnableAllFeatures
import Network.AWS.Organizations.EnablePolicyType
import Network.AWS.Organizations.InviteAccountToOrganization
import Network.AWS.Organizations.LeaveOrganization
import Network.AWS.Organizations.ListAWSServiceAccessForOrganization
import Network.AWS.Organizations.ListAccounts
import Network.AWS.Organizations.ListAccountsForParent
import Network.AWS.Organizations.ListChildren
import Network.AWS.Organizations.ListCreateAccountStatus
import Network.AWS.Organizations.ListDelegatedAdministrators
import Network.AWS.Organizations.ListDelegatedServicesForAccount
import Network.AWS.Organizations.ListHandshakesForAccount
import Network.AWS.Organizations.ListHandshakesForOrganization
import Network.AWS.Organizations.ListOrganizationalUnitsForParent
import Network.AWS.Organizations.ListParents
import Network.AWS.Organizations.ListPolicies
import Network.AWS.Organizations.ListPoliciesForTarget
import Network.AWS.Organizations.ListRoots
import Network.AWS.Organizations.ListTagsForResource
import Network.AWS.Organizations.ListTargetsForPolicy
import Network.AWS.Organizations.MoveAccount
import Network.AWS.Organizations.RegisterDelegatedAdministrator
import Network.AWS.Organizations.RemoveAccountFromOrganization
import Network.AWS.Organizations.TagResource
import Network.AWS.Organizations.Types
import Network.AWS.Organizations.UntagResource
import Network.AWS.Organizations.UpdateOrganizationalUnit
import Network.AWS.Organizations.UpdatePolicy
import Network.AWS.Organizations.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Organizations'.

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
