{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _WAFTagOperationInternalErrorException,
    _WAFInvalidAccountException,
    _WAFSubscriptionNotFoundException,
    _WAFBadRequestException,
    _WAFDisallowedNameException,
    _WAFNonEmptyEntityException,
    _WAFInvalidOperationException,
    _WAFStaleDataException,
    _WAFTagOperationException,
    _WAFInternalErrorException,
    _WAFServiceLinkedRoleErrorException,
    _WAFInvalidParameterException,
    _WAFNonexistentItemException,
    _WAFUnavailableEntityException,
    _WAFInvalidRegexPatternException,
    _WAFNonexistentContainerException,
    _WAFEntityMigrationException,
    _WAFReferencedItemException,
    _WAFInvalidPermissionPolicyException,
    _WAFLimitsExceededException,

    -- * ChangeAction
    ChangeAction (..),

    -- * ChangeTokenStatus
    ChangeTokenStatus (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * GeoMatchConstraintType
    GeoMatchConstraintType (..),

    -- * GeoMatchConstraintValue
    GeoMatchConstraintValue (..),

    -- * IPSetDescriptorType
    IPSetDescriptorType (..),

    -- * MatchFieldType
    MatchFieldType (..),

    -- * PositionalConstraint
    PositionalConstraint (..),

    -- * PredicateType
    PredicateType (..),

    -- * RateKey
    RateKey (..),

    -- * ResourceType
    ResourceType (..),

    -- * TextTransformation
    TextTransformation (..),

    -- * WafActionType
    WafActionType (..),

    -- * WafOverrideActionType
    WafOverrideActionType (..),

    -- * WafRuleType
    WafRuleType (..),

    -- * ActivatedRule
    ActivatedRule (..),
    newActivatedRule,

    -- * ByteMatchSet
    ByteMatchSet (..),
    newByteMatchSet,

    -- * ByteMatchSetSummary
    ByteMatchSetSummary (..),
    newByteMatchSetSummary,

    -- * ByteMatchSetUpdate
    ByteMatchSetUpdate (..),
    newByteMatchSetUpdate,

    -- * ByteMatchTuple
    ByteMatchTuple (..),
    newByteMatchTuple,

    -- * ExcludedRule
    ExcludedRule (..),
    newExcludedRule,

    -- * FieldToMatch
    FieldToMatch (..),
    newFieldToMatch,

    -- * GeoMatchConstraint
    GeoMatchConstraint (..),
    newGeoMatchConstraint,

    -- * GeoMatchSet
    GeoMatchSet (..),
    newGeoMatchSet,

    -- * GeoMatchSetSummary
    GeoMatchSetSummary (..),
    newGeoMatchSetSummary,

    -- * GeoMatchSetUpdate
    GeoMatchSetUpdate (..),
    newGeoMatchSetUpdate,

    -- * HTTPHeader
    HTTPHeader (..),
    newHTTPHeader,

    -- * HTTPRequest
    HTTPRequest (..),
    newHTTPRequest,

    -- * IPSet
    IPSet (..),
    newIPSet,

    -- * IPSetDescriptor
    IPSetDescriptor (..),
    newIPSetDescriptor,

    -- * IPSetSummary
    IPSetSummary (..),
    newIPSetSummary,

    -- * IPSetUpdate
    IPSetUpdate (..),
    newIPSetUpdate,

    -- * LoggingConfiguration
    LoggingConfiguration (..),
    newLoggingConfiguration,

    -- * Predicate
    Predicate (..),
    newPredicate,

    -- * RateBasedRule
    RateBasedRule (..),
    newRateBasedRule,

    -- * RegexMatchSet
    RegexMatchSet (..),
    newRegexMatchSet,

    -- * RegexMatchSetSummary
    RegexMatchSetSummary (..),
    newRegexMatchSetSummary,

    -- * RegexMatchSetUpdate
    RegexMatchSetUpdate (..),
    newRegexMatchSetUpdate,

    -- * RegexMatchTuple
    RegexMatchTuple (..),
    newRegexMatchTuple,

    -- * RegexPatternSet
    RegexPatternSet (..),
    newRegexPatternSet,

    -- * RegexPatternSetSummary
    RegexPatternSetSummary (..),
    newRegexPatternSetSummary,

    -- * RegexPatternSetUpdate
    RegexPatternSetUpdate (..),
    newRegexPatternSetUpdate,

    -- * Rule
    Rule (..),
    newRule,

    -- * RuleGroup
    RuleGroup (..),
    newRuleGroup,

    -- * RuleGroupSummary
    RuleGroupSummary (..),
    newRuleGroupSummary,

    -- * RuleGroupUpdate
    RuleGroupUpdate (..),
    newRuleGroupUpdate,

    -- * RuleSummary
    RuleSummary (..),
    newRuleSummary,

    -- * RuleUpdate
    RuleUpdate (..),
    newRuleUpdate,

    -- * SampledHTTPRequest
    SampledHTTPRequest (..),
    newSampledHTTPRequest,

    -- * SizeConstraint
    SizeConstraint (..),
    newSizeConstraint,

    -- * SizeConstraintSet
    SizeConstraintSet (..),
    newSizeConstraintSet,

    -- * SizeConstraintSetSummary
    SizeConstraintSetSummary (..),
    newSizeConstraintSetSummary,

    -- * SizeConstraintSetUpdate
    SizeConstraintSetUpdate (..),
    newSizeConstraintSetUpdate,

    -- * SqlInjectionMatchSet
    SqlInjectionMatchSet (..),
    newSqlInjectionMatchSet,

    -- * SqlInjectionMatchSetSummary
    SqlInjectionMatchSetSummary (..),
    newSqlInjectionMatchSetSummary,

    -- * SqlInjectionMatchSetUpdate
    SqlInjectionMatchSetUpdate (..),
    newSqlInjectionMatchSetUpdate,

    -- * SqlInjectionMatchTuple
    SqlInjectionMatchTuple (..),
    newSqlInjectionMatchTuple,

    -- * SubscribedRuleGroupSummary
    SubscribedRuleGroupSummary (..),
    newSubscribedRuleGroupSummary,

    -- * Tag
    Tag (..),
    newTag,

    -- * TagInfoForResource
    TagInfoForResource (..),
    newTagInfoForResource,

    -- * TimeWindow
    TimeWindow (..),
    newTimeWindow,

    -- * WafAction
    WafAction (..),
    newWafAction,

    -- * WafOverrideAction
    WafOverrideAction (..),
    newWafOverrideAction,

    -- * WebACL
    WebACL (..),
    newWebACL,

    -- * WebACLSummary
    WebACLSummary (..),
    newWebACLSummary,

    -- * WebACLUpdate
    WebACLUpdate (..),
    newWebACLUpdate,

    -- * XssMatchSet
    XssMatchSet (..),
    newXssMatchSet,

    -- * XssMatchSetSummary
    XssMatchSetSummary (..),
    newXssMatchSetSummary,

    -- * XssMatchSetUpdate
    XssMatchSetUpdate (..),
    newXssMatchSetUpdate,

    -- * XssMatchTuple
    XssMatchTuple (..),
    newXssMatchTuple,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign
import Network.AWS.WAFRegional.Types.ActivatedRule
import Network.AWS.WAFRegional.Types.ByteMatchSet
import Network.AWS.WAFRegional.Types.ByteMatchSetSummary
import Network.AWS.WAFRegional.Types.ByteMatchSetUpdate
import Network.AWS.WAFRegional.Types.ByteMatchTuple
import Network.AWS.WAFRegional.Types.ChangeAction
import Network.AWS.WAFRegional.Types.ChangeTokenStatus
import Network.AWS.WAFRegional.Types.ComparisonOperator
import Network.AWS.WAFRegional.Types.ExcludedRule
import Network.AWS.WAFRegional.Types.FieldToMatch
import Network.AWS.WAFRegional.Types.GeoMatchConstraint
import Network.AWS.WAFRegional.Types.GeoMatchConstraintType
import Network.AWS.WAFRegional.Types.GeoMatchConstraintValue
import Network.AWS.WAFRegional.Types.GeoMatchSet
import Network.AWS.WAFRegional.Types.GeoMatchSetSummary
import Network.AWS.WAFRegional.Types.GeoMatchSetUpdate
import Network.AWS.WAFRegional.Types.HTTPHeader
import Network.AWS.WAFRegional.Types.HTTPRequest
import Network.AWS.WAFRegional.Types.IPSet
import Network.AWS.WAFRegional.Types.IPSetDescriptor
import Network.AWS.WAFRegional.Types.IPSetDescriptorType
import Network.AWS.WAFRegional.Types.IPSetSummary
import Network.AWS.WAFRegional.Types.IPSetUpdate
import Network.AWS.WAFRegional.Types.LoggingConfiguration
import Network.AWS.WAFRegional.Types.MatchFieldType
import Network.AWS.WAFRegional.Types.PositionalConstraint
import Network.AWS.WAFRegional.Types.Predicate
import Network.AWS.WAFRegional.Types.PredicateType
import Network.AWS.WAFRegional.Types.RateBasedRule
import Network.AWS.WAFRegional.Types.RateKey
import Network.AWS.WAFRegional.Types.RegexMatchSet
import Network.AWS.WAFRegional.Types.RegexMatchSetSummary
import Network.AWS.WAFRegional.Types.RegexMatchSetUpdate
import Network.AWS.WAFRegional.Types.RegexMatchTuple
import Network.AWS.WAFRegional.Types.RegexPatternSet
import Network.AWS.WAFRegional.Types.RegexPatternSetSummary
import Network.AWS.WAFRegional.Types.RegexPatternSetUpdate
import Network.AWS.WAFRegional.Types.ResourceType
import Network.AWS.WAFRegional.Types.Rule
import Network.AWS.WAFRegional.Types.RuleGroup
import Network.AWS.WAFRegional.Types.RuleGroupSummary
import Network.AWS.WAFRegional.Types.RuleGroupUpdate
import Network.AWS.WAFRegional.Types.RuleSummary
import Network.AWS.WAFRegional.Types.RuleUpdate
import Network.AWS.WAFRegional.Types.SampledHTTPRequest
import Network.AWS.WAFRegional.Types.SizeConstraint
import Network.AWS.WAFRegional.Types.SizeConstraintSet
import Network.AWS.WAFRegional.Types.SizeConstraintSetSummary
import Network.AWS.WAFRegional.Types.SizeConstraintSetUpdate
import Network.AWS.WAFRegional.Types.SqlInjectionMatchSet
import Network.AWS.WAFRegional.Types.SqlInjectionMatchSetSummary
import Network.AWS.WAFRegional.Types.SqlInjectionMatchSetUpdate
import Network.AWS.WAFRegional.Types.SqlInjectionMatchTuple
import Network.AWS.WAFRegional.Types.SubscribedRuleGroupSummary
import Network.AWS.WAFRegional.Types.Tag
import Network.AWS.WAFRegional.Types.TagInfoForResource
import Network.AWS.WAFRegional.Types.TextTransformation
import Network.AWS.WAFRegional.Types.TimeWindow
import Network.AWS.WAFRegional.Types.WafAction
import Network.AWS.WAFRegional.Types.WafActionType
import Network.AWS.WAFRegional.Types.WafOverrideAction
import Network.AWS.WAFRegional.Types.WafOverrideActionType
import Network.AWS.WAFRegional.Types.WafRuleType
import Network.AWS.WAFRegional.Types.WebACL
import Network.AWS.WAFRegional.Types.WebACLSummary
import Network.AWS.WAFRegional.Types.WebACLUpdate
import Network.AWS.WAFRegional.Types.XssMatchSet
import Network.AWS.WAFRegional.Types.XssMatchSetSummary
import Network.AWS.WAFRegional.Types.XssMatchSetUpdate
import Network.AWS.WAFRegional.Types.XssMatchTuple

-- | API version @2016-11-28@ of the Amazon WAF Regional SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "WAFRegional",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "waf-regional",
      Prelude._svcVersion = "2016-11-28",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "WAFRegional",
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

-- |
_WAFTagOperationInternalErrorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFTagOperationInternalErrorException =
  Prelude._MatchServiceError
    defaultService
    "WAFTagOperationInternalErrorException"

-- | The operation failed because you tried to create, update, or delete an
-- object by using an invalid account identifier.
_WAFInvalidAccountException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFInvalidAccountException =
  Prelude._MatchServiceError
    defaultService
    "WAFInvalidAccountException"

-- | The specified subscription does not exist.
_WAFSubscriptionNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFSubscriptionNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "WAFSubscriptionNotFoundException"

-- |
_WAFBadRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFBadRequestException =
  Prelude._MatchServiceError
    defaultService
    "WAFBadRequestException"

-- | The name specified is invalid.
_WAFDisallowedNameException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFDisallowedNameException =
  Prelude._MatchServiceError
    defaultService
    "WAFDisallowedNameException"

-- | The operation failed because you tried to delete an object that isn\'t
-- empty. For example:
--
-- -   You tried to delete a @WebACL@ that still contains one or more
--     @Rule@ objects.
--
-- -   You tried to delete a @Rule@ that still contains one or more
--     @ByteMatchSet@ objects or other predicates.
--
-- -   You tried to delete a @ByteMatchSet@ that contains one or more
--     @ByteMatchTuple@ objects.
--
-- -   You tried to delete an @IPSet@ that references one or more IP
--     addresses.
_WAFNonEmptyEntityException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFNonEmptyEntityException =
  Prelude._MatchServiceError
    defaultService
    "WAFNonEmptyEntityException"

-- | The operation failed because there was nothing to do. For example:
--
-- -   You tried to remove a @Rule@ from a @WebACL@, but the @Rule@ isn\'t
--     in the specified @WebACL@.
--
-- -   You tried to remove an IP address from an @IPSet@, but the IP
--     address isn\'t in the specified @IPSet@.
--
-- -   You tried to remove a @ByteMatchTuple@ from a @ByteMatchSet@, but
--     the @ByteMatchTuple@ isn\'t in the specified @WebACL@.
--
-- -   You tried to add a @Rule@ to a @WebACL@, but the @Rule@ already
--     exists in the specified @WebACL@.
--
-- -   You tried to add a @ByteMatchTuple@ to a @ByteMatchSet@, but the
--     @ByteMatchTuple@ already exists in the specified @WebACL@.
_WAFInvalidOperationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFInvalidOperationException =
  Prelude._MatchServiceError
    defaultService
    "WAFInvalidOperationException"

-- | The operation failed because you tried to create, update, or delete an
-- object by using a change token that has already been used.
_WAFStaleDataException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFStaleDataException =
  Prelude._MatchServiceError
    defaultService
    "WAFStaleDataException"

-- |
_WAFTagOperationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFTagOperationException =
  Prelude._MatchServiceError
    defaultService
    "WAFTagOperationException"

-- | The operation failed because of a system problem, even though the
-- request was valid. Retry your request.
_WAFInternalErrorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFInternalErrorException =
  Prelude._MatchServiceError
    defaultService
    "WAFInternalErrorException"

-- | AWS WAF is not able to access the service linked role. This can be
-- caused by a previous @PutLoggingConfiguration@ request, which can lock
-- the service linked role for about 20 seconds. Please try your request
-- again. The service linked role can also be locked by a previous
-- @DeleteServiceLinkedRole@ request, which can lock the role for 15
-- minutes or more. If you recently made a @DeleteServiceLinkedRole@, wait
-- at least 15 minutes and try the request again. If you receive this same
-- exception again, you will have to wait additional time until the role is
-- unlocked.
_WAFServiceLinkedRoleErrorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFServiceLinkedRoleErrorException =
  Prelude._MatchServiceError
    defaultService
    "WAFServiceLinkedRoleErrorException"

-- | The operation failed because AWS WAF didn\'t recognize a parameter in
-- the request. For example:
--
-- -   You specified an invalid parameter name.
--
-- -   You specified an invalid value.
--
-- -   You tried to update an object (@ByteMatchSet@, @IPSet@, @Rule@, or
--     @WebACL@) using an action other than @INSERT@ or @DELETE@.
--
-- -   You tried to create a @WebACL@ with a @DefaultAction@ @Type@ other
--     than @ALLOW@, @BLOCK@, or @COUNT@.
--
-- -   You tried to create a @RateBasedRule@ with a @RateKey@ value other
--     than @IP@.
--
-- -   You tried to update a @WebACL@ with a @WafAction@ @Type@ other than
--     @ALLOW@, @BLOCK@, or @COUNT@.
--
-- -   You tried to update a @ByteMatchSet@ with a @FieldToMatch@ @Type@
--     other than HEADER, METHOD, QUERY_STRING, URI, or BODY.
--
-- -   You tried to update a @ByteMatchSet@ with a @Field@ of @HEADER@ but
--     no value for @Data@.
--
-- -   Your request references an ARN that is malformed, or corresponds to
--     a resource with which a web ACL cannot be associated.
_WAFInvalidParameterException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFInvalidParameterException =
  Prelude._MatchServiceError
    defaultService
    "WAFInvalidParameterException"

-- | The operation failed because the referenced object doesn\'t exist.
_WAFNonexistentItemException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFNonexistentItemException =
  Prelude._MatchServiceError
    defaultService
    "WAFNonexistentItemException"

-- | The operation failed because the entity referenced is temporarily
-- unavailable. Retry your request.
_WAFUnavailableEntityException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFUnavailableEntityException =
  Prelude._MatchServiceError
    defaultService
    "WAFUnavailableEntityException"

-- | The regular expression (regex) you specified in @RegexPatternString@ is
-- invalid.
_WAFInvalidRegexPatternException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFInvalidRegexPatternException =
  Prelude._MatchServiceError
    defaultService
    "WAFInvalidRegexPatternException"

-- | The operation failed because you tried to add an object to or delete an
-- object from another object that doesn\'t exist. For example:
--
-- -   You tried to add a @Rule@ to or delete a @Rule@ from a @WebACL@ that
--     doesn\'t exist.
--
-- -   You tried to add a @ByteMatchSet@ to or delete a @ByteMatchSet@ from
--     a @Rule@ that doesn\'t exist.
--
-- -   You tried to add an IP address to or delete an IP address from an
--     @IPSet@ that doesn\'t exist.
--
-- -   You tried to add a @ByteMatchTuple@ to or delete a @ByteMatchTuple@
--     from a @ByteMatchSet@ that doesn\'t exist.
_WAFNonexistentContainerException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFNonexistentContainerException =
  Prelude._MatchServiceError
    defaultService
    "WAFNonexistentContainerException"

-- | The operation failed due to a problem with the migration. The failure
-- cause is provided in the exception, in the @MigrationErrorType@:
--
-- -   @ENTITY_NOT_SUPPORTED@ - The web ACL has an unsupported entity but
--     the @IgnoreUnsupportedType@ is not set to true.
--
-- -   @ENTITY_NOT_FOUND@ - The web ACL doesn\'t exist.
--
-- -   @S3_BUCKET_NO_PERMISSION@ - You don\'t have permission to perform
--     the @PutObject@ action to the specified Amazon S3 bucket.
--
-- -   @S3_BUCKET_NOT_ACCESSIBLE@ - The bucket policy doesn\'t allow AWS
--     WAF to perform the @PutObject@ action in the bucket.
--
-- -   @S3_BUCKET_NOT_FOUND@ - The S3 bucket doesn\'t exist.
--
-- -   @S3_BUCKET_INVALID_REGION@ - The S3 bucket is not in the same Region
--     as the web ACL.
--
-- -   @S3_INTERNAL_ERROR@ - AWS WAF failed to create the template in the
--     S3 bucket for another reason.
_WAFEntityMigrationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFEntityMigrationException =
  Prelude._MatchServiceError
    defaultService
    "WAFEntityMigrationException"

-- | The operation failed because you tried to delete an object that is still
-- in use. For example:
--
-- -   You tried to delete a @ByteMatchSet@ that is still referenced by a
--     @Rule@.
--
-- -   You tried to delete a @Rule@ that is still referenced by a @WebACL@.
_WAFReferencedItemException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFReferencedItemException =
  Prelude._MatchServiceError
    defaultService
    "WAFReferencedItemException"

-- | The operation failed because the specified policy is not in the proper
-- format.
--
-- The policy is subject to the following restrictions:
--
-- -   You can attach only one policy with each @PutPermissionPolicy@
--     request.
--
-- -   The policy must include an @Effect@, @Action@ and @Principal@.
--
-- -   @Effect@ must specify @Allow@.
--
-- -   The @Action@ in the policy must be @waf:UpdateWebACL@,
--     @waf-regional:UpdateWebACL@, @waf:GetRuleGroup@ and
--     @waf-regional:GetRuleGroup@ . Any extra or wildcard actions in the
--     policy will be rejected.
--
-- -   The policy cannot include a @Resource@ parameter.
--
-- -   The ARN in the request must be a valid WAF RuleGroup ARN and the
--     RuleGroup must exist in the same region.
--
-- -   The user making the request must be the owner of the RuleGroup.
--
-- -   Your policy must be composed using IAM Policy version 2012-10-17.
_WAFInvalidPermissionPolicyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFInvalidPermissionPolicyException =
  Prelude._MatchServiceError
    defaultService
    "WAFInvalidPermissionPolicyException"

-- | The operation exceeds a resource limit, for example, the maximum number
-- of @WebACL@ objects that you can create for an AWS account. For more
-- information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/limits.html Limits>
-- in the /AWS WAF Developer Guide/.
_WAFLimitsExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WAFLimitsExceededException =
  Prelude._MatchServiceError
    defaultService
    "WAFLimitsExceededException"
