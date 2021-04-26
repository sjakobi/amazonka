{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidTypeException,
    _InvalidOperationException,
    _InternalErrorException,
    _InvalidInputException,
    _LimitExceededException,
    _ResourceNotFoundException,

    -- * AccountRoleStatus
    AccountRoleStatus (..),

    -- * CustomerPolicyScopeIdType
    CustomerPolicyScopeIdType (..),

    -- * DependentServiceName
    DependentServiceName (..),

    -- * PolicyComplianceStatusType
    PolicyComplianceStatusType (..),

    -- * RemediationActionType
    RemediationActionType (..),

    -- * SecurityServiceType
    SecurityServiceType (..),

    -- * ViolationReason
    ViolationReason (..),

    -- * App
    App (..),
    newApp,

    -- * AppsListData
    AppsListData (..),
    newAppsListData,

    -- * AppsListDataSummary
    AppsListDataSummary (..),
    newAppsListDataSummary,

    -- * AwsEc2InstanceViolation
    AwsEc2InstanceViolation (..),
    newAwsEc2InstanceViolation,

    -- * AwsEc2NetworkInterfaceViolation
    AwsEc2NetworkInterfaceViolation (..),
    newAwsEc2NetworkInterfaceViolation,

    -- * AwsVPCSecurityGroupViolation
    AwsVPCSecurityGroupViolation (..),
    newAwsVPCSecurityGroupViolation,

    -- * ComplianceViolator
    ComplianceViolator (..),
    newComplianceViolator,

    -- * EvaluationResult
    EvaluationResult (..),
    newEvaluationResult,

    -- * NetworkFirewallMissingExpectedRTViolation
    NetworkFirewallMissingExpectedRTViolation (..),
    newNetworkFirewallMissingExpectedRTViolation,

    -- * NetworkFirewallMissingFirewallViolation
    NetworkFirewallMissingFirewallViolation (..),
    newNetworkFirewallMissingFirewallViolation,

    -- * NetworkFirewallMissingSubnetViolation
    NetworkFirewallMissingSubnetViolation (..),
    newNetworkFirewallMissingSubnetViolation,

    -- * NetworkFirewallPolicyDescription
    NetworkFirewallPolicyDescription (..),
    newNetworkFirewallPolicyDescription,

    -- * NetworkFirewallPolicyModifiedViolation
    NetworkFirewallPolicyModifiedViolation (..),
    newNetworkFirewallPolicyModifiedViolation,

    -- * PartialMatch
    PartialMatch (..),
    newPartialMatch,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PolicyComplianceDetail
    PolicyComplianceDetail (..),
    newPolicyComplianceDetail,

    -- * PolicyComplianceStatus
    PolicyComplianceStatus (..),
    newPolicyComplianceStatus,

    -- * PolicySummary
    PolicySummary (..),
    newPolicySummary,

    -- * ProtocolsListData
    ProtocolsListData (..),
    newProtocolsListData,

    -- * ProtocolsListDataSummary
    ProtocolsListDataSummary (..),
    newProtocolsListDataSummary,

    -- * ResourceTag
    ResourceTag (..),
    newResourceTag,

    -- * ResourceViolation
    ResourceViolation (..),
    newResourceViolation,

    -- * SecurityGroupRemediationAction
    SecurityGroupRemediationAction (..),
    newSecurityGroupRemediationAction,

    -- * SecurityGroupRuleDescription
    SecurityGroupRuleDescription (..),
    newSecurityGroupRuleDescription,

    -- * SecurityServicePolicyData
    SecurityServicePolicyData (..),
    newSecurityServicePolicyData,

    -- * StatefulRuleGroup
    StatefulRuleGroup (..),
    newStatefulRuleGroup,

    -- * StatelessRuleGroup
    StatelessRuleGroup (..),
    newStatelessRuleGroup,

    -- * Tag
    Tag (..),
    newTag,

    -- * ViolationDetail
    ViolationDetail (..),
    newViolationDetail,
  )
where

import Network.AWS.FMS.Types.AccountRoleStatus
import Network.AWS.FMS.Types.App
import Network.AWS.FMS.Types.AppsListData
import Network.AWS.FMS.Types.AppsListDataSummary
import Network.AWS.FMS.Types.AwsEc2InstanceViolation
import Network.AWS.FMS.Types.AwsEc2NetworkInterfaceViolation
import Network.AWS.FMS.Types.AwsVPCSecurityGroupViolation
import Network.AWS.FMS.Types.ComplianceViolator
import Network.AWS.FMS.Types.CustomerPolicyScopeIdType
import Network.AWS.FMS.Types.DependentServiceName
import Network.AWS.FMS.Types.EvaluationResult
import Network.AWS.FMS.Types.NetworkFirewallMissingExpectedRTViolation
import Network.AWS.FMS.Types.NetworkFirewallMissingFirewallViolation
import Network.AWS.FMS.Types.NetworkFirewallMissingSubnetViolation
import Network.AWS.FMS.Types.NetworkFirewallPolicyDescription
import Network.AWS.FMS.Types.NetworkFirewallPolicyModifiedViolation
import Network.AWS.FMS.Types.PartialMatch
import Network.AWS.FMS.Types.Policy
import Network.AWS.FMS.Types.PolicyComplianceDetail
import Network.AWS.FMS.Types.PolicyComplianceStatus
import Network.AWS.FMS.Types.PolicyComplianceStatusType
import Network.AWS.FMS.Types.PolicySummary
import Network.AWS.FMS.Types.ProtocolsListData
import Network.AWS.FMS.Types.ProtocolsListDataSummary
import Network.AWS.FMS.Types.RemediationActionType
import Network.AWS.FMS.Types.ResourceTag
import Network.AWS.FMS.Types.ResourceViolation
import Network.AWS.FMS.Types.SecurityGroupRemediationAction
import Network.AWS.FMS.Types.SecurityGroupRuleDescription
import Network.AWS.FMS.Types.SecurityServicePolicyData
import Network.AWS.FMS.Types.SecurityServiceType
import Network.AWS.FMS.Types.StatefulRuleGroup
import Network.AWS.FMS.Types.StatelessRuleGroup
import Network.AWS.FMS.Types.Tag
import Network.AWS.FMS.Types.ViolationDetail
import Network.AWS.FMS.Types.ViolationReason
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2018-01-01@ of the Amazon Firewall Management Service SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "FMS",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "fms",
      Prelude._svcVersion = "2018-01-01",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseJSONError "FMS",
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

-- | The value of the @Type@ parameter is invalid.
_InvalidTypeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidTypeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidTypeException"

-- | The operation failed because there was nothing to do or the operation
-- wasn\'t possible. For example, you might have submitted an
-- @AssociateAdminAccount@ request for an account ID that was already set
-- as the AWS Firewall Manager administrator. Or you might have tried to
-- access a Region that\'s disabled by default, and that you need to enable
-- for the Firewall Manager administrator account and for AWS Organizations
-- before you can access it.
_InvalidOperationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidOperationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidOperationException"

-- | The operation failed because of a system problem, even though the
-- request was valid. Retry your request.
_InternalErrorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalErrorException =
  Prelude._MatchServiceError
    defaultService
    "InternalErrorException"

-- | The parameters of the request were invalid.
_InvalidInputException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInputException =
  Prelude._MatchServiceError
    defaultService
    "InvalidInputException"

-- | The operation exceeds a resource limit, for example, the maximum number
-- of @policy@ objects that you can create for an AWS account. For more
-- information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/fms-limits.html Firewall Manager Limits>
-- in the /AWS WAF Developer Guide/.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | The specified resource was not found.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"
