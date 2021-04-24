{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types
  ( -- * Service Configuration
    eLBv2,

    -- * Errors
    _InvalidSecurityGroupException,
    _ALPNPolicyNotSupportedException,
    _InvalidConfigurationRequestException,
    _TooManyTagsException,
    _HealthUnavailableException,
    _PriorityInUseException,
    _DuplicateTagKeysException,
    _AvailabilityZoneNotSupportedException,
    _TooManyUniqueTargetGroupsPerLoadBalancerException,
    _IncompatibleProtocolsException,
    _TooManyRulesException,
    _TooManyActionsException,
    _OperationNotPermittedException,
    _TargetGroupAssociationLimitException,
    _TooManyRegistrationsForTargetIdException,
    _ListenerNotFoundException,
    _SubnetNotFoundException,
    _InvalidTargetException,
    _UnsupportedProtocolException,
    _ResourceInUseException,
    _AllocationIdNotFoundException,
    _TooManyLoadBalancersException,
    _CertificateNotFoundException,
    _DuplicateTargetGroupNameException,
    _DuplicateListenerException,
    _LoadBalancerNotFoundException,
    _TooManyCertificatesException,
    _InvalidSchemeException,
    _SSLPolicyNotFoundException,
    _InvalidSubnetException,
    _TooManyTargetGroupsException,
    _DuplicateLoadBalancerNameException,
    _TooManyListenersException,
    _InvalidLoadBalancerActionException,
    _TooManyTargetsException,
    _RuleNotFoundException,
    _TargetGroupNotFoundException,

    -- * ActionTypeEnum
    ActionTypeEnum (..),

    -- * AuthenticateCognitoActionConditionalBehaviorEnum
    AuthenticateCognitoActionConditionalBehaviorEnum (..),

    -- * AuthenticateOidcActionConditionalBehaviorEnum
    AuthenticateOidcActionConditionalBehaviorEnum (..),

    -- * IPAddressType
    IPAddressType (..),

    -- * LoadBalancerSchemeEnum
    LoadBalancerSchemeEnum (..),

    -- * LoadBalancerStateEnum
    LoadBalancerStateEnum (..),

    -- * LoadBalancerTypeEnum
    LoadBalancerTypeEnum (..),

    -- * ProtocolEnum
    ProtocolEnum (..),

    -- * RedirectActionStatusCodeEnum
    RedirectActionStatusCodeEnum (..),

    -- * TargetHealthReasonEnum
    TargetHealthReasonEnum (..),

    -- * TargetHealthStateEnum
    TargetHealthStateEnum (..),

    -- * TargetTypeEnum
    TargetTypeEnum (..),

    -- * Action
    Action (..),
    action,
    aAuthenticateOidcConfig,
    aTargetGroupARN,
    aAuthenticateCognitoConfig,
    aFixedResponseConfig,
    aForwardConfig,
    aOrder,
    aRedirectConfig,
    aType,

    -- * AuthenticateCognitoActionConfig
    AuthenticateCognitoActionConfig (..),
    authenticateCognitoActionConfig,
    acacSessionTimeout,
    acacScope,
    acacAuthenticationRequestExtraParams,
    acacSessionCookieName,
    acacOnUnauthenticatedRequest,
    acacUserPoolARN,
    acacUserPoolClientId,
    acacUserPoolDomain,

    -- * AuthenticateOidcActionConfig
    AuthenticateOidcActionConfig (..),
    authenticateOidcActionConfig,
    aoacUseExistingClientSecret,
    aoacClientSecret,
    aoacSessionTimeout,
    aoacScope,
    aoacAuthenticationRequestExtraParams,
    aoacSessionCookieName,
    aoacOnUnauthenticatedRequest,
    aoacIssuer,
    aoacAuthorizationEndpoint,
    aoacTokenEndpoint,
    aoacUserInfoEndpoint,
    aoacClientId,

    -- * AvailabilityZone
    AvailabilityZone (..),
    availabilityZone,
    azZoneName,
    azOutpostId,
    azLoadBalancerAddresses,
    azSubnetId,

    -- * Certificate
    Certificate (..),
    certificate,
    cIsDefault,
    cCertificateARN,

    -- * Cipher
    Cipher (..),
    cipher,
    cPriority,
    cName,

    -- * FixedResponseActionConfig
    FixedResponseActionConfig (..),
    fixedResponseActionConfig,
    fracContentType,
    fracMessageBody,
    fracStatusCode,

    -- * ForwardActionConfig
    ForwardActionConfig (..),
    forwardActionConfig,
    facTargetGroupStickinessConfig,
    facTargetGroups,

    -- * HTTPHeaderConditionConfig
    HTTPHeaderConditionConfig (..),
    hTTPHeaderConditionConfig,
    httphccValues,
    httphccHTTPHeaderName,

    -- * HTTPRequestMethodConditionConfig
    HTTPRequestMethodConditionConfig (..),
    hTTPRequestMethodConditionConfig,
    httprmccValues,

    -- * HostHeaderConditionConfig
    HostHeaderConditionConfig (..),
    hostHeaderConditionConfig,
    hhccValues,

    -- * Limit
    Limit (..),
    limit,
    lName,
    lMax,

    -- * Listener
    Listener (..),
    listener,
    lLoadBalancerARN,
    lSSLPolicy,
    lPort,
    lDefaultActions,
    lProtocol,
    lCertificates,
    lListenerARN,
    lAlpnPolicy,

    -- * LoadBalancer
    LoadBalancer (..),
    loadBalancer,
    lbIPAddressType,
    lbLoadBalancerARN,
    lbCustomerOwnedIPv4Pool,
    lbAvailabilityZones,
    lbScheme,
    lbCreatedTime,
    lbSecurityGroups,
    lbState,
    lbDNSName,
    lbType,
    lbCanonicalHostedZoneId,
    lbVPCId,
    lbLoadBalancerName,

    -- * LoadBalancerAddress
    LoadBalancerAddress (..),
    loadBalancerAddress,
    lbaPrivateIPv4Address,
    lbaIPAddress,
    lbaIPv6Address,
    lbaAllocationId,

    -- * LoadBalancerAttribute
    LoadBalancerAttribute (..),
    loadBalancerAttribute,
    lbaKey,
    lbaValue,

    -- * LoadBalancerState
    LoadBalancerState (..),
    loadBalancerState,
    lbsCode,
    lbsReason,

    -- * Matcher
    Matcher (..),
    matcher,
    mGrpcCode,
    mHTTPCode,

    -- * PathPatternConditionConfig
    PathPatternConditionConfig (..),
    pathPatternConditionConfig,
    ppccValues,

    -- * QueryStringConditionConfig
    QueryStringConditionConfig (..),
    queryStringConditionConfig,
    qsccValues,

    -- * QueryStringKeyValuePair
    QueryStringKeyValuePair (..),
    queryStringKeyValuePair,
    qskvpKey,
    qskvpValue,

    -- * RedirectActionConfig
    RedirectActionConfig (..),
    redirectActionConfig,
    racQuery,
    racPort,
    racProtocol,
    racHost,
    racPath,
    racStatusCode,

    -- * Rule
    Rule (..),
    rule,
    rIsDefault,
    rRuleARN,
    rActions,
    rPriority,
    rConditions,

    -- * RuleCondition
    RuleCondition (..),
    ruleCondition,
    rcPathPatternConfig,
    rcHTTPRequestMethodConfig,
    rcValues,
    rcSourceIPConfig,
    rcHTTPHeaderConfig,
    rcHostHeaderConfig,
    rcQueryStringConfig,
    rcField,

    -- * RulePriorityPair
    RulePriorityPair (..),
    rulePriorityPair,
    rppRuleARN,
    rppPriority,

    -- * SSLPolicy
    SSLPolicy (..),
    sslPolicy,
    spCiphers,
    spName,
    spSSLProtocols,

    -- * SourceIPConditionConfig
    SourceIPConditionConfig (..),
    sourceIPConditionConfig,
    siccValues,

    -- * SubnetMapping
    SubnetMapping (..),
    subnetMapping,
    smPrivateIPv4Address,
    smIPv6Address,
    smSubnetId,
    smAllocationId,

    -- * Tag
    Tag (..),
    tag,
    tagValue,
    tagKey,

    -- * TagDescription
    TagDescription (..),
    tagDescription,
    tdResourceARN,
    tdTags,

    -- * TargetDescription
    TargetDescription (..),
    targetDescription,
    tdAvailabilityZone,
    tdPort,
    tdId,

    -- * TargetGroup
    TargetGroup (..),
    targetGroup,
    tgHealthCheckEnabled,
    tgHealthCheckProtocol,
    tgTargetGroupName,
    tgTargetType,
    tgTargetGroupARN,
    tgHealthCheckPort,
    tgHealthCheckTimeoutSeconds,
    tgHealthCheckPath,
    tgLoadBalancerARNs,
    tgMatcher,
    tgProtocolVersion,
    tgHealthyThresholdCount,
    tgPort,
    tgHealthCheckIntervalSeconds,
    tgProtocol,
    tgVPCId,
    tgUnhealthyThresholdCount,

    -- * TargetGroupAttribute
    TargetGroupAttribute (..),
    targetGroupAttribute,
    tgaKey,
    tgaValue,

    -- * TargetGroupStickinessConfig
    TargetGroupStickinessConfig (..),
    targetGroupStickinessConfig,
    tgscEnabled,
    tgscDurationSeconds,

    -- * TargetGroupTuple
    TargetGroupTuple (..),
    targetGroupTuple,
    tgtTargetGroupARN,
    tgtWeight,

    -- * TargetHealth
    TargetHealth (..),
    targetHealth,
    thState,
    thReason,
    thDescription,

    -- * TargetHealthDescription
    TargetHealthDescription (..),
    targetHealthDescription,
    thdHealthCheckPort,
    thdTarget,
    thdTargetHealth,
  )
where

import Network.AWS.ELBv2.Types.Action
import Network.AWS.ELBv2.Types.ActionTypeEnum
import Network.AWS.ELBv2.Types.AuthenticateCognitoActionConditionalBehaviorEnum
import Network.AWS.ELBv2.Types.AuthenticateCognitoActionConfig
import Network.AWS.ELBv2.Types.AuthenticateOidcActionConditionalBehaviorEnum
import Network.AWS.ELBv2.Types.AuthenticateOidcActionConfig
import Network.AWS.ELBv2.Types.AvailabilityZone
import Network.AWS.ELBv2.Types.Certificate
import Network.AWS.ELBv2.Types.Cipher
import Network.AWS.ELBv2.Types.FixedResponseActionConfig
import Network.AWS.ELBv2.Types.ForwardActionConfig
import Network.AWS.ELBv2.Types.HTTPHeaderConditionConfig
import Network.AWS.ELBv2.Types.HTTPRequestMethodConditionConfig
import Network.AWS.ELBv2.Types.HostHeaderConditionConfig
import Network.AWS.ELBv2.Types.IPAddressType
import Network.AWS.ELBv2.Types.Limit
import Network.AWS.ELBv2.Types.Listener
import Network.AWS.ELBv2.Types.LoadBalancer
import Network.AWS.ELBv2.Types.LoadBalancerAddress
import Network.AWS.ELBv2.Types.LoadBalancerAttribute
import Network.AWS.ELBv2.Types.LoadBalancerSchemeEnum
import Network.AWS.ELBv2.Types.LoadBalancerState
import Network.AWS.ELBv2.Types.LoadBalancerStateEnum
import Network.AWS.ELBv2.Types.LoadBalancerTypeEnum
import Network.AWS.ELBv2.Types.Matcher
import Network.AWS.ELBv2.Types.PathPatternConditionConfig
import Network.AWS.ELBv2.Types.ProtocolEnum
import Network.AWS.ELBv2.Types.QueryStringConditionConfig
import Network.AWS.ELBv2.Types.QueryStringKeyValuePair
import Network.AWS.ELBv2.Types.RedirectActionConfig
import Network.AWS.ELBv2.Types.RedirectActionStatusCodeEnum
import Network.AWS.ELBv2.Types.Rule
import Network.AWS.ELBv2.Types.RuleCondition
import Network.AWS.ELBv2.Types.RulePriorityPair
import Network.AWS.ELBv2.Types.SSLPolicy
import Network.AWS.ELBv2.Types.SourceIPConditionConfig
import Network.AWS.ELBv2.Types.SubnetMapping
import Network.AWS.ELBv2.Types.Tag
import Network.AWS.ELBv2.Types.TagDescription
import Network.AWS.ELBv2.Types.TargetDescription
import Network.AWS.ELBv2.Types.TargetGroup
import Network.AWS.ELBv2.Types.TargetGroupAttribute
import Network.AWS.ELBv2.Types.TargetGroupStickinessConfig
import Network.AWS.ELBv2.Types.TargetGroupTuple
import Network.AWS.ELBv2.Types.TargetHealth
import Network.AWS.ELBv2.Types.TargetHealthDescription
import Network.AWS.ELBv2.Types.TargetHealthReasonEnum
import Network.AWS.ELBv2.Types.TargetHealthStateEnum
import Network.AWS.ELBv2.Types.TargetTypeEnum
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-12-01@ of the Amazon Elastic Load Balancing SDK configuration.
eLBv2 :: Service
eLBv2 =
  Service
    { _svcAbbrev = "ELBv2",
      _svcSigner = v4,
      _svcPrefix = "elasticloadbalancing",
      _svcVersion = "2015-12-01",
      _svcEndpoint = defaultEndpoint eLBv2,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "ELBv2",
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

-- | The specified security group does not exist.
_InvalidSecurityGroupException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSecurityGroupException =
  _MatchServiceError eLBv2 "InvalidSecurityGroup"
    . hasStatus 400

-- | The specified ALPN policy is not supported.
_ALPNPolicyNotSupportedException :: AsError a => Getting (First ServiceError) a ServiceError
_ALPNPolicyNotSupportedException =
  _MatchServiceError eLBv2 "ALPNPolicyNotFound"
    . hasStatus 400

-- | The requested configuration is not valid.
_InvalidConfigurationRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidConfigurationRequestException =
  _MatchServiceError
    eLBv2
    "InvalidConfigurationRequest"
    . hasStatus 400

-- | You've reached the limit on the number of tags per load balancer.
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException =
  _MatchServiceError eLBv2 "TooManyTags"
    . hasStatus 400

-- | The health of the specified targets could not be retrieved due to an internal error.
_HealthUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_HealthUnavailableException =
  _MatchServiceError eLBv2 "HealthUnavailable"
    . hasStatus 500

-- | The specified priority is in use.
_PriorityInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_PriorityInUseException =
  _MatchServiceError eLBv2 "PriorityInUse"
    . hasStatus 400

-- | A tag key was specified more than once.
_DuplicateTagKeysException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateTagKeysException =
  _MatchServiceError eLBv2 "DuplicateTagKeys"
    . hasStatus 400

-- | The specified Availability Zone is not supported.
_AvailabilityZoneNotSupportedException :: AsError a => Getting (First ServiceError) a ServiceError
_AvailabilityZoneNotSupportedException =
  _MatchServiceError
    eLBv2
    "AvailabilityZoneNotSupported"
    . hasStatus 400

-- | You've reached the limit on the number of unique target groups per load balancer across all listeners. If a target group is used by multiple actions for a load balancer, it is counted as only one use.
_TooManyUniqueTargetGroupsPerLoadBalancerException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyUniqueTargetGroupsPerLoadBalancerException =
  _MatchServiceError
    eLBv2
    "TooManyUniqueTargetGroupsPerLoadBalancer"
    . hasStatus 400

-- | The specified configuration is not valid with this protocol.
_IncompatibleProtocolsException :: AsError a => Getting (First ServiceError) a ServiceError
_IncompatibleProtocolsException =
  _MatchServiceError eLBv2 "IncompatibleProtocols"
    . hasStatus 400

-- | You've reached the limit on the number of rules per load balancer.
_TooManyRulesException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRulesException =
  _MatchServiceError eLBv2 "TooManyRules"
    . hasStatus 400

-- | You've reached the limit on the number of actions per rule.
_TooManyActionsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyActionsException =
  _MatchServiceError eLBv2 "TooManyActions"
    . hasStatus 400

-- | This operation is not allowed.
_OperationNotPermittedException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationNotPermittedException =
  _MatchServiceError eLBv2 "OperationNotPermitted"
    . hasStatus 400

-- | You've reached the limit on the number of load balancers per target group.
_TargetGroupAssociationLimitException :: AsError a => Getting (First ServiceError) a ServiceError
_TargetGroupAssociationLimitException =
  _MatchServiceError
    eLBv2
    "TargetGroupAssociationLimit"
    . hasStatus 400

-- | You've reached the limit on the number of times a target can be registered with a load balancer.
_TooManyRegistrationsForTargetIdException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRegistrationsForTargetIdException =
  _MatchServiceError
    eLBv2
    "TooManyRegistrationsForTargetId"
    . hasStatus 400

-- | The specified listener does not exist.
_ListenerNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ListenerNotFoundException =
  _MatchServiceError eLBv2 "ListenerNotFound"
    . hasStatus 400

-- | The specified subnet does not exist.
_SubnetNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_SubnetNotFoundException =
  _MatchServiceError eLBv2 "SubnetNotFound"
    . hasStatus 400

-- | The specified target does not exist, is not in the same VPC as the target group, or has an unsupported instance type.
_InvalidTargetException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTargetException =
  _MatchServiceError eLBv2 "InvalidTarget"
    . hasStatus 400

-- | The specified protocol is not supported.
_UnsupportedProtocolException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedProtocolException =
  _MatchServiceError eLBv2 "UnsupportedProtocol"
    . hasStatus 400

-- | A specified resource is in use.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError eLBv2 "ResourceInUse"
    . hasStatus 400

-- | The specified allocation ID does not exist.
_AllocationIdNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_AllocationIdNotFoundException =
  _MatchServiceError eLBv2 "AllocationIdNotFound"
    . hasStatus 400

-- | You've reached the limit on the number of load balancers for your AWS account.
_TooManyLoadBalancersException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyLoadBalancersException =
  _MatchServiceError eLBv2 "TooManyLoadBalancers"
    . hasStatus 400

-- | The specified certificate does not exist.
_CertificateNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_CertificateNotFoundException =
  _MatchServiceError eLBv2 "CertificateNotFound"
    . hasStatus 400

-- | A target group with the specified name already exists.
_DuplicateTargetGroupNameException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateTargetGroupNameException =
  _MatchServiceError eLBv2 "DuplicateTargetGroupName"
    . hasStatus 400

-- | A listener with the specified port already exists.
_DuplicateListenerException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateListenerException =
  _MatchServiceError eLBv2 "DuplicateListener"
    . hasStatus 400

-- | The specified load balancer does not exist.
_LoadBalancerNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_LoadBalancerNotFoundException =
  _MatchServiceError eLBv2 "LoadBalancerNotFound"
    . hasStatus 400

-- | You've reached the limit on the number of certificates per load balancer.
_TooManyCertificatesException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyCertificatesException =
  _MatchServiceError eLBv2 "TooManyCertificates"
    . hasStatus 400

-- | The requested scheme is not valid.
_InvalidSchemeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSchemeException =
  _MatchServiceError eLBv2 "InvalidScheme"
    . hasStatus 400

-- | The specified SSL policy does not exist.
_SSLPolicyNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_SSLPolicyNotFoundException =
  _MatchServiceError eLBv2 "SSLPolicyNotFound"
    . hasStatus 400

-- | The specified subnet is out of available addresses.
_InvalidSubnetException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSubnetException =
  _MatchServiceError eLBv2 "InvalidSubnet"
    . hasStatus 400

-- | You've reached the limit on the number of target groups for your AWS account.
_TooManyTargetGroupsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTargetGroupsException =
  _MatchServiceError eLBv2 "TooManyTargetGroups"
    . hasStatus 400

-- | A load balancer with the specified name already exists.
_DuplicateLoadBalancerNameException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateLoadBalancerNameException =
  _MatchServiceError
    eLBv2
    "DuplicateLoadBalancerName"
    . hasStatus 400

-- | You've reached the limit on the number of listeners per load balancer.
_TooManyListenersException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyListenersException =
  _MatchServiceError eLBv2 "TooManyListeners"
    . hasStatus 400

-- | The requested action is not valid.
_InvalidLoadBalancerActionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLoadBalancerActionException =
  _MatchServiceError
    eLBv2
    "InvalidLoadBalancerAction"
    . hasStatus 400

-- | You've reached the limit on the number of targets.
_TooManyTargetsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTargetsException =
  _MatchServiceError eLBv2 "TooManyTargets"
    . hasStatus 400

-- | The specified rule does not exist.
_RuleNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_RuleNotFoundException =
  _MatchServiceError eLBv2 "RuleNotFound"
    . hasStatus 400

-- | The specified target group does not exist.
_TargetGroupNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_TargetGroupNotFoundException =
  _MatchServiceError eLBv2 "TargetGroupNotFound"
    . hasStatus 400
