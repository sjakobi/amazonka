{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Firewall Manager__
--
-- This is the /AWS Firewall Manager API Reference/ . This guide is for developers who need detailed information about the AWS Firewall Manager API actions, data types, and errors. For detailed information about AWS Firewall Manager features, see the <https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html AWS Firewall Manager Developer Guide> .
--
-- Some API actions require explicit resource permissions. For information, see the developer guide topic <https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html Firewall Manager required permissions for API actions> .
module Network.AWS.FMS
  ( -- * Service Configuration
    fms,

    -- * Errors
    -- $errors

    -- ** InvalidTypeException
    _InvalidTypeException,

    -- ** InvalidOperationException
    _InvalidOperationException,

    -- ** InternalErrorException
    _InternalErrorException,

    -- ** InvalidInputException
    _InvalidInputException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DeleteNotificationChannel
    module Network.AWS.FMS.DeleteNotificationChannel,

    -- ** ListPolicies (Paginated)
    module Network.AWS.FMS.ListPolicies,

    -- ** DeletePolicy
    module Network.AWS.FMS.DeletePolicy,

    -- ** ListAppsLists
    module Network.AWS.FMS.ListAppsLists,

    -- ** GetProtectionStatus
    module Network.AWS.FMS.GetProtectionStatus,

    -- ** PutAppsList
    module Network.AWS.FMS.PutAppsList,

    -- ** ListProtocolsLists
    module Network.AWS.FMS.ListProtocolsLists,

    -- ** GetAppsList
    module Network.AWS.FMS.GetAppsList,

    -- ** PutProtocolsList
    module Network.AWS.FMS.PutProtocolsList,

    -- ** ListComplianceStatus (Paginated)
    module Network.AWS.FMS.ListComplianceStatus,

    -- ** UntagResource
    module Network.AWS.FMS.UntagResource,

    -- ** TagResource
    module Network.AWS.FMS.TagResource,

    -- ** GetNotificationChannel
    module Network.AWS.FMS.GetNotificationChannel,

    -- ** AssociateAdminAccount
    module Network.AWS.FMS.AssociateAdminAccount,

    -- ** PutNotificationChannel
    module Network.AWS.FMS.PutNotificationChannel,

    -- ** DisassociateAdminAccount
    module Network.AWS.FMS.DisassociateAdminAccount,

    -- ** PutPolicy
    module Network.AWS.FMS.PutPolicy,

    -- ** DeleteAppsList
    module Network.AWS.FMS.DeleteAppsList,

    -- ** GetProtocolsList
    module Network.AWS.FMS.GetProtocolsList,

    -- ** GetPolicy
    module Network.AWS.FMS.GetPolicy,

    -- ** DeleteProtocolsList
    module Network.AWS.FMS.DeleteProtocolsList,

    -- ** GetAdminAccount
    module Network.AWS.FMS.GetAdminAccount,

    -- ** ListMemberAccounts (Paginated)
    module Network.AWS.FMS.ListMemberAccounts,

    -- ** GetViolationDetails
    module Network.AWS.FMS.GetViolationDetails,

    -- ** ListTagsForResource
    module Network.AWS.FMS.ListTagsForResource,

    -- ** GetComplianceDetail
    module Network.AWS.FMS.GetComplianceDetail,

    -- * Types

    -- ** AccountRoleStatus
    AccountRoleStatus (..),

    -- ** CustomerPolicyScopeIdType
    CustomerPolicyScopeIdType (..),

    -- ** DependentServiceName
    DependentServiceName (..),

    -- ** PolicyComplianceStatusType
    PolicyComplianceStatusType (..),

    -- ** RemediationActionType
    RemediationActionType (..),

    -- ** SecurityServiceType
    SecurityServiceType (..),

    -- ** ViolationReason
    ViolationReason (..),

    -- ** AWSEC2InstanceViolation
    AWSEC2InstanceViolation,
    awsEC2InstanceViolation,
    aeivViolationTarget,
    aeivAWSEC2NetworkInterfaceViolations,

    -- ** AWSEC2NetworkInterfaceViolation
    AWSEC2NetworkInterfaceViolation,
    awsEC2NetworkInterfaceViolation,
    aenivViolationTarget,
    aenivViolatingSecurityGroups,

    -- ** AWSVPCSecurityGroupViolation
    AWSVPCSecurityGroupViolation,
    awsVPCSecurityGroupViolation,
    avsgvPartialMatches,
    avsgvPossibleSecurityGroupRemediationActions,
    avsgvViolationTarget,
    avsgvViolationTargetDescription,

    -- ** App
    App,
    app,
    appAppName,
    appProtocol,
    appPort,

    -- ** AppsListData
    AppsListData,
    appsListData,
    aldLastUpdateTime,
    aldListId,
    aldPreviousAppsList,
    aldCreateTime,
    aldListUpdateToken,
    aldListName,
    aldAppsList,

    -- ** AppsListDataSummary
    AppsListDataSummary,
    appsListDataSummary,
    aldsAppsList,
    aldsListName,
    aldsListARN,
    aldsListId,

    -- ** ComplianceViolator
    ComplianceViolator,
    complianceViolator,
    cvResourceId,
    cvResourceType,
    cvViolationReason,

    -- ** EvaluationResult
    EvaluationResult,
    evaluationResult,
    erComplianceStatus,
    erEvaluationLimitExceeded,
    erViolatorCount,

    -- ** NetworkFirewallMissingExpectedRTViolation
    NetworkFirewallMissingExpectedRTViolation,
    networkFirewallMissingExpectedRTViolation,
    nfmertvCurrentRouteTable,
    nfmertvViolationTarget,
    nfmertvAvailabilityZone,
    nfmertvExpectedRouteTable,
    nfmertvVPC,

    -- ** NetworkFirewallMissingFirewallViolation
    NetworkFirewallMissingFirewallViolation,
    networkFirewallMissingFirewallViolation,
    nfmfvTargetViolationReason,
    nfmfvViolationTarget,
    nfmfvAvailabilityZone,
    nfmfvVPC,

    -- ** NetworkFirewallMissingSubnetViolation
    NetworkFirewallMissingSubnetViolation,
    networkFirewallMissingSubnetViolation,
    nfmsvTargetViolationReason,
    nfmsvViolationTarget,
    nfmsvAvailabilityZone,
    nfmsvVPC,

    -- ** NetworkFirewallPolicyDescription
    NetworkFirewallPolicyDescription,
    networkFirewallPolicyDescription,
    nfpdStatelessRuleGroups,
    nfpdStatelessFragmentDefaultActions,
    nfpdStatelessDefaultActions,
    nfpdStatefulRuleGroups,
    nfpdStatelessCustomActions,

    -- ** NetworkFirewallPolicyModifiedViolation
    NetworkFirewallPolicyModifiedViolation,
    networkFirewallPolicyModifiedViolation,
    nfpmvCurrentPolicyDescription,
    nfpmvViolationTarget,
    nfpmvExpectedPolicyDescription,

    -- ** PartialMatch
    PartialMatch,
    partialMatch,
    pmTargetViolationReasons,
    pmReference,

    -- ** Policy
    Policy,
    policy,
    pResourceTags,
    pResourceTypeList,
    pPolicyUpdateToken,
    pIncludeMap,
    pPolicyId,
    pExcludeMap,
    pPolicyName,
    pSecurityServicePolicyData,
    pResourceType,
    pExcludeResourceTags,
    pRemediationEnabled,

    -- ** PolicyComplianceDetail
    PolicyComplianceDetail,
    policyComplianceDetail,
    pcdViolators,
    pcdPolicyOwner,
    pcdMemberAccount,
    pcdEvaluationLimitExceeded,
    pcdIssueInfoMap,
    pcdPolicyId,
    pcdExpiredAt,

    -- ** PolicyComplianceStatus
    PolicyComplianceStatus,
    policyComplianceStatus,
    pcsPolicyName,
    pcsPolicyOwner,
    pcsMemberAccount,
    pcsLastUpdated,
    pcsEvaluationResults,
    pcsIssueInfoMap,
    pcsPolicyId,

    -- ** PolicySummary
    PolicySummary,
    policySummary,
    psPolicyName,
    psSecurityServiceType,
    psResourceType,
    psRemediationEnabled,
    psPolicyId,
    psPolicyARN,

    -- ** ProtocolsListData
    ProtocolsListData,
    protocolsListData,
    pldLastUpdateTime,
    pldListId,
    pldCreateTime,
    pldPreviousProtocolsList,
    pldListUpdateToken,
    pldListName,
    pldProtocolsList,

    -- ** ProtocolsListDataSummary
    ProtocolsListDataSummary,
    protocolsListDataSummary,
    pldsListName,
    pldsProtocolsList,
    pldsListARN,
    pldsListId,

    -- ** ResourceTag
    ResourceTag,
    resourceTag,
    rtValue,
    rtKey,

    -- ** ResourceViolation
    ResourceViolation,
    resourceViolation,
    rvNetworkFirewallMissingSubnetViolation,
    rvAWSEC2NetworkInterfaceViolation,
    rvNetworkFirewallMissingExpectedRTViolation,
    rvAWSEC2InstanceViolation,
    rvNetworkFirewallMissingFirewallViolation,
    rvNetworkFirewallPolicyModifiedViolation,
    rvAWSVPCSecurityGroupViolation,

    -- ** SecurityGroupRemediationAction
    SecurityGroupRemediationAction,
    securityGroupRemediationAction,
    sgraRemediationActionType,
    sgraRemediationResult,
    sgraIsDefaultAction,
    sgraDescription,

    -- ** SecurityGroupRuleDescription
    SecurityGroupRuleDescription,
    securityGroupRuleDescription,
    sgrdFromPort,
    sgrdIPV4Range,
    sgrdPrefixListId,
    sgrdIPV6Range,
    sgrdProtocol,
    sgrdToPort,

    -- ** SecurityServicePolicyData
    SecurityServicePolicyData,
    securityServicePolicyData,
    sspdManagedServiceData,
    sspdType,

    -- ** StatefulRuleGroup
    StatefulRuleGroup,
    statefulRuleGroup,
    sResourceId,
    sRuleGroupName,

    -- ** StatelessRuleGroup
    StatelessRuleGroup,
    statelessRuleGroup,
    srgResourceId,
    srgPriority,
    srgRuleGroupName,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** ViolationDetail
    ViolationDetail,
    violationDetail,
    vdResourceDescription,
    vdResourceTags,
    vdPolicyId,
    vdMemberAccount,
    vdResourceId,
    vdResourceType,
    vdResourceViolations,
  )
where

import Network.AWS.FMS.AssociateAdminAccount
import Network.AWS.FMS.DeleteAppsList
import Network.AWS.FMS.DeleteNotificationChannel
import Network.AWS.FMS.DeletePolicy
import Network.AWS.FMS.DeleteProtocolsList
import Network.AWS.FMS.DisassociateAdminAccount
import Network.AWS.FMS.GetAdminAccount
import Network.AWS.FMS.GetAppsList
import Network.AWS.FMS.GetComplianceDetail
import Network.AWS.FMS.GetNotificationChannel
import Network.AWS.FMS.GetPolicy
import Network.AWS.FMS.GetProtectionStatus
import Network.AWS.FMS.GetProtocolsList
import Network.AWS.FMS.GetViolationDetails
import Network.AWS.FMS.ListAppsLists
import Network.AWS.FMS.ListComplianceStatus
import Network.AWS.FMS.ListMemberAccounts
import Network.AWS.FMS.ListPolicies
import Network.AWS.FMS.ListProtocolsLists
import Network.AWS.FMS.ListTagsForResource
import Network.AWS.FMS.PutAppsList
import Network.AWS.FMS.PutNotificationChannel
import Network.AWS.FMS.PutPolicy
import Network.AWS.FMS.PutProtocolsList
import Network.AWS.FMS.TagResource
import Network.AWS.FMS.Types
import Network.AWS.FMS.UntagResource
import Network.AWS.FMS.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'FMS'.

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
