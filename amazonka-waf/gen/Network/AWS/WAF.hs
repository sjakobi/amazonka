{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is the /AWS WAF Classic API Reference/ for using AWS WAF Classic with Amazon CloudFront. The AWS WAF Classic actions and data types listed in the reference are available for protecting Amazon CloudFront distributions. You can use these actions and data types via the endpoint /waf.amazonaws.com/ . This guide is for developers who need detailed information about the AWS WAF Classic API actions, data types, and errors. For detailed information about AWS WAF Classic features and an overview of how to use the AWS WAF Classic API, see the <https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html AWS WAF Classic> in the developer guide.
module Network.AWS.WAF
  ( -- * Service Configuration
    waf,

    -- * Errors
    -- $errors

    -- ** WAFTagOperationInternalErrorException
    _WAFTagOperationInternalErrorException,

    -- ** WAFInvalidAccountException
    _WAFInvalidAccountException,

    -- ** WAFSubscriptionNotFoundException
    _WAFSubscriptionNotFoundException,

    -- ** WAFBadRequestException
    _WAFBadRequestException,

    -- ** WAFDisallowedNameException
    _WAFDisallowedNameException,

    -- ** WAFNonEmptyEntityException
    _WAFNonEmptyEntityException,

    -- ** WAFInvalidOperationException
    _WAFInvalidOperationException,

    -- ** WAFStaleDataException
    _WAFStaleDataException,

    -- ** WAFTagOperationException
    _WAFTagOperationException,

    -- ** WAFInternalErrorException
    _WAFInternalErrorException,

    -- ** WAFServiceLinkedRoleErrorException
    _WAFServiceLinkedRoleErrorException,

    -- ** WAFInvalidParameterException
    _WAFInvalidParameterException,

    -- ** WAFNonexistentItemException
    _WAFNonexistentItemException,

    -- ** WAFInvalidRegexPatternException
    _WAFInvalidRegexPatternException,

    -- ** WAFNonexistentContainerException
    _WAFNonexistentContainerException,

    -- ** WAFEntityMigrationException
    _WAFEntityMigrationException,

    -- ** WAFReferencedItemException
    _WAFReferencedItemException,

    -- ** WAFInvalidPermissionPolicyException
    _WAFInvalidPermissionPolicyException,

    -- ** WAFLimitsExceededException
    _WAFLimitsExceededException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DeleteWebACL
    module Network.AWS.WAF.DeleteWebACL,

    -- ** GetChangeTokenStatus
    module Network.AWS.WAF.GetChangeTokenStatus,

    -- ** UpdateRule
    module Network.AWS.WAF.UpdateRule,

    -- ** GetRuleGroup
    module Network.AWS.WAF.GetRuleGroup,

    -- ** DeleteRule
    module Network.AWS.WAF.DeleteRule,

    -- ** UpdateWebACL
    module Network.AWS.WAF.UpdateWebACL,

    -- ** ListRateBasedRules (Paginated)
    module Network.AWS.WAF.ListRateBasedRules,

    -- ** GetSizeConstraintSet
    module Network.AWS.WAF.GetSizeConstraintSet,

    -- ** ListSqlInjectionMatchSets (Paginated)
    module Network.AWS.WAF.ListSqlInjectionMatchSets,

    -- ** CreateRateBasedRule
    module Network.AWS.WAF.CreateRateBasedRule,

    -- ** ListRegexPatternSets (Paginated)
    module Network.AWS.WAF.ListRegexPatternSets,

    -- ** GetSqlInjectionMatchSet
    module Network.AWS.WAF.GetSqlInjectionMatchSet,

    -- ** CreateRegexPatternSet
    module Network.AWS.WAF.CreateRegexPatternSet,

    -- ** UpdateSizeConstraintSet
    module Network.AWS.WAF.UpdateSizeConstraintSet,

    -- ** GetChangeToken
    module Network.AWS.WAF.GetChangeToken,

    -- ** ListSizeConstraintSets (Paginated)
    module Network.AWS.WAF.ListSizeConstraintSets,

    -- ** UntagResource
    module Network.AWS.WAF.UntagResource,

    -- ** DeleteSizeConstraintSet
    module Network.AWS.WAF.DeleteSizeConstraintSet,

    -- ** ListXSSMatchSets (Paginated)
    module Network.AWS.WAF.ListXSSMatchSets,

    -- ** DeleteRuleGroup
    module Network.AWS.WAF.DeleteRuleGroup,

    -- ** UpdateRuleGroup
    module Network.AWS.WAF.UpdateRuleGroup,

    -- ** TagResource
    module Network.AWS.WAF.TagResource,

    -- ** CreateWebACLMigrationStack
    module Network.AWS.WAF.CreateWebACLMigrationStack,

    -- ** CreateRegexMatchSet
    module Network.AWS.WAF.CreateRegexMatchSet,

    -- ** CreateRuleGroup
    module Network.AWS.WAF.CreateRuleGroup,

    -- ** ListRegexMatchSets (Paginated)
    module Network.AWS.WAF.ListRegexMatchSets,

    -- ** UpdateRegexMatchSet
    module Network.AWS.WAF.UpdateRegexMatchSet,

    -- ** DeleteRegexMatchSet
    module Network.AWS.WAF.DeleteRegexMatchSet,

    -- ** GetLoggingConfiguration
    module Network.AWS.WAF.GetLoggingConfiguration,

    -- ** DeleteLoggingConfiguration
    module Network.AWS.WAF.DeleteLoggingConfiguration,

    -- ** PutPermissionPolicy
    module Network.AWS.WAF.PutPermissionPolicy,

    -- ** DeleteIPSet
    module Network.AWS.WAF.DeleteIPSet,

    -- ** CreateRule
    module Network.AWS.WAF.CreateRule,

    -- ** ListLoggingConfigurations (Paginated)
    module Network.AWS.WAF.ListLoggingConfigurations,

    -- ** UpdateIPSet
    module Network.AWS.WAF.UpdateIPSet,

    -- ** GetRateBasedRuleManagedKeys (Paginated)
    module Network.AWS.WAF.GetRateBasedRuleManagedKeys,

    -- ** GetGeoMatchSet
    module Network.AWS.WAF.GetGeoMatchSet,

    -- ** CreateWebACL
    module Network.AWS.WAF.CreateWebACL,

    -- ** ListWebACLs (Paginated)
    module Network.AWS.WAF.ListWebACLs,

    -- ** ListRules (Paginated)
    module Network.AWS.WAF.ListRules,

    -- ** CreateByteMatchSet
    module Network.AWS.WAF.CreateByteMatchSet,

    -- ** GetXSSMatchSet
    module Network.AWS.WAF.GetXSSMatchSet,

    -- ** CreateIPSet
    module Network.AWS.WAF.CreateIPSet,

    -- ** ListSubscribedRuleGroups (Paginated)
    module Network.AWS.WAF.ListSubscribedRuleGroups,

    -- ** ListActivatedRulesInRuleGroup (Paginated)
    module Network.AWS.WAF.ListActivatedRulesInRuleGroup,

    -- ** DeleteRateBasedRule
    module Network.AWS.WAF.DeleteRateBasedRule,

    -- ** UpdateRateBasedRule
    module Network.AWS.WAF.UpdateRateBasedRule,

    -- ** CreateSqlInjectionMatchSet
    module Network.AWS.WAF.CreateSqlInjectionMatchSet,

    -- ** GetRegexPatternSet
    module Network.AWS.WAF.GetRegexPatternSet,

    -- ** UpdateSqlInjectionMatchSet
    module Network.AWS.WAF.UpdateSqlInjectionMatchSet,

    -- ** DeleteSqlInjectionMatchSet
    module Network.AWS.WAF.DeleteSqlInjectionMatchSet,

    -- ** UpdateRegexPatternSet
    module Network.AWS.WAF.UpdateRegexPatternSet,

    -- ** DeleteRegexPatternSet
    module Network.AWS.WAF.DeleteRegexPatternSet,

    -- ** GetSampledRequests
    module Network.AWS.WAF.GetSampledRequests,

    -- ** CreateSizeConstraintSet
    module Network.AWS.WAF.CreateSizeConstraintSet,

    -- ** GetRateBasedRule
    module Network.AWS.WAF.GetRateBasedRule,

    -- ** CreateGeoMatchSet
    module Network.AWS.WAF.CreateGeoMatchSet,

    -- ** DeleteXSSMatchSet
    module Network.AWS.WAF.DeleteXSSMatchSet,

    -- ** GetRule
    module Network.AWS.WAF.GetRule,

    -- ** ListRuleGroups (Paginated)
    module Network.AWS.WAF.ListRuleGroups,

    -- ** UpdateXSSMatchSet
    module Network.AWS.WAF.UpdateXSSMatchSet,

    -- ** GetWebACL
    module Network.AWS.WAF.GetWebACL,

    -- ** UpdateGeoMatchSet
    module Network.AWS.WAF.UpdateGeoMatchSet,

    -- ** GetPermissionPolicy
    module Network.AWS.WAF.GetPermissionPolicy,

    -- ** ListGeoMatchSets (Paginated)
    module Network.AWS.WAF.ListGeoMatchSets,

    -- ** GetByteMatchSet
    module Network.AWS.WAF.GetByteMatchSet,

    -- ** CreateXSSMatchSet
    module Network.AWS.WAF.CreateXSSMatchSet,

    -- ** GetIPSet
    module Network.AWS.WAF.GetIPSet,

    -- ** DeleteGeoMatchSet
    module Network.AWS.WAF.DeleteGeoMatchSet,

    -- ** ListTagsForResource
    module Network.AWS.WAF.ListTagsForResource,

    -- ** UpdateByteMatchSet
    module Network.AWS.WAF.UpdateByteMatchSet,

    -- ** DeleteByteMatchSet
    module Network.AWS.WAF.DeleteByteMatchSet,

    -- ** GetRegexMatchSet
    module Network.AWS.WAF.GetRegexMatchSet,

    -- ** ListByteMatchSets (Paginated)
    module Network.AWS.WAF.ListByteMatchSets,

    -- ** DeletePermissionPolicy
    module Network.AWS.WAF.DeletePermissionPolicy,

    -- ** ListIPSets (Paginated)
    module Network.AWS.WAF.ListIPSets,

    -- ** PutLoggingConfiguration
    module Network.AWS.WAF.PutLoggingConfiguration,

    -- * Types

    -- ** ChangeAction
    ChangeAction (..),

    -- ** ChangeTokenStatus
    ChangeTokenStatus (..),

    -- ** ComparisonOperator
    ComparisonOperator (..),

    -- ** GeoMatchConstraintType
    GeoMatchConstraintType (..),

    -- ** GeoMatchConstraintValue
    GeoMatchConstraintValue (..),

    -- ** IPSetDescriptorType
    IPSetDescriptorType (..),

    -- ** MatchFieldType
    MatchFieldType (..),

    -- ** PositionalConstraint
    PositionalConstraint (..),

    -- ** PredicateType
    PredicateType (..),

    -- ** RateKey
    RateKey (..),

    -- ** TextTransformation
    TextTransformation (..),

    -- ** WafActionType
    WafActionType (..),

    -- ** WafOverrideActionType
    WafOverrideActionType (..),

    -- ** WafRuleType
    WafRuleType (..),

    -- ** ActivatedRule
    ActivatedRule,
    activatedRule,
    arExcludedRules,
    arOverrideAction,
    arAction,
    arType,
    arPriority,
    arRuleId,

    -- ** ByteMatchSet
    ByteMatchSet,
    byteMatchSet,
    bmsName,
    bmsByteMatchSetId,
    bmsByteMatchTuples,

    -- ** ByteMatchSetSummary
    ByteMatchSetSummary,
    byteMatchSetSummary,
    bmssByteMatchSetId,
    bmssName,

    -- ** ByteMatchSetUpdate
    ByteMatchSetUpdate,
    byteMatchSetUpdate,
    bmsuAction,
    bmsuByteMatchTuple,

    -- ** ByteMatchTuple
    ByteMatchTuple,
    byteMatchTuple,
    bmtFieldToMatch,
    bmtTargetString,
    bmtTextTransformation,
    bmtPositionalConstraint,

    -- ** ExcludedRule
    ExcludedRule,
    excludedRule,
    erRuleId,

    -- ** FieldToMatch
    FieldToMatch,
    fieldToMatch,
    ftmData,
    ftmType,

    -- ** GeoMatchConstraint
    GeoMatchConstraint,
    geoMatchConstraint,
    gmcType,
    gmcValue,

    -- ** GeoMatchSet
    GeoMatchSet,
    geoMatchSet,
    gmsName,
    gmsGeoMatchSetId,
    gmsGeoMatchConstraints,

    -- ** GeoMatchSetSummary
    GeoMatchSetSummary,
    geoMatchSetSummary,
    gmssGeoMatchSetId,
    gmssName,

    -- ** GeoMatchSetUpdate
    GeoMatchSetUpdate,
    geoMatchSetUpdate,
    gmsuAction,
    gmsuGeoMatchConstraint,

    -- ** HTTPHeader
    HTTPHeader,
    hTTPHeader,
    httphName,
    httphValue,

    -- ** HTTPRequest
    HTTPRequest,
    hTTPRequest,
    httprHeaders,
    httprURI,
    httprMethod,
    httprClientIP,
    httprCountry,
    httprHTTPVersion,

    -- ** IPSet
    IPSet,
    ipSet,
    isName,
    isIPSetId,
    isIPSetDescriptors,

    -- ** IPSetDescriptor
    IPSetDescriptor,
    ipSetDescriptor,
    isdType,
    isdValue,

    -- ** IPSetSummary
    IPSetSummary,
    ipSetSummary,
    issIPSetId,
    issName,

    -- ** IPSetUpdate
    IPSetUpdate,
    ipSetUpdate,
    isuAction,
    isuIPSetDescriptor,

    -- ** LoggingConfiguration
    LoggingConfiguration,
    loggingConfiguration,
    lcRedactedFields,
    lcResourceARN,
    lcLogDestinationConfigs,

    -- ** Predicate
    Predicate,
    predicate,
    pNegated,
    pType,
    pDataId,

    -- ** RateBasedRule
    RateBasedRule,
    rateBasedRule,
    rbrMetricName,
    rbrName,
    rbrRuleId,
    rbrMatchPredicates,
    rbrRateKey,
    rbrRateLimit,

    -- ** RegexMatchSet
    RegexMatchSet,
    regexMatchSet,
    rmsRegexMatchSetId,
    rmsRegexMatchTuples,
    rmsName,

    -- ** RegexMatchSetSummary
    RegexMatchSetSummary,
    regexMatchSetSummary,
    rmssRegexMatchSetId,
    rmssName,

    -- ** RegexMatchSetUpdate
    RegexMatchSetUpdate,
    regexMatchSetUpdate,
    rmsuAction,
    rmsuRegexMatchTuple,

    -- ** RegexMatchTuple
    RegexMatchTuple,
    regexMatchTuple,
    rmtFieldToMatch,
    rmtTextTransformation,
    rmtRegexPatternSetId,

    -- ** RegexPatternSet
    RegexPatternSet,
    regexPatternSet,
    rpsName,
    rpsRegexPatternSetId,
    rpsRegexPatternStrings,

    -- ** RegexPatternSetSummary
    RegexPatternSetSummary,
    regexPatternSetSummary,
    rpssRegexPatternSetId,
    rpssName,

    -- ** RegexPatternSetUpdate
    RegexPatternSetUpdate,
    regexPatternSetUpdate,
    rpsuAction,
    rpsuRegexPatternString,

    -- ** Rule
    Rule,
    rule,
    rMetricName,
    rName,
    rRuleId,
    rPredicates,

    -- ** RuleGroup
    RuleGroup,
    ruleGroup,
    rgMetricName,
    rgName,
    rgRuleGroupId,

    -- ** RuleGroupSummary
    RuleGroupSummary,
    ruleGroupSummary,
    rgsRuleGroupId,
    rgsName,

    -- ** RuleGroupUpdate
    RuleGroupUpdate,
    ruleGroupUpdate,
    rguAction,
    rguActivatedRule,

    -- ** RuleSummary
    RuleSummary,
    ruleSummary,
    rsRuleId,
    rsName,

    -- ** RuleUpdate
    RuleUpdate,
    ruleUpdate,
    ruAction,
    ruPredicate,

    -- ** SampledHTTPRequest
    SampledHTTPRequest,
    sampledHTTPRequest,
    shttprTimestamp,
    shttprAction,
    shttprRuleWithinRuleGroup,
    shttprRequest,
    shttprWeight,

    -- ** SizeConstraint
    SizeConstraint,
    sizeConstraint,
    scFieldToMatch,
    scTextTransformation,
    scComparisonOperator,
    scSize,

    -- ** SizeConstraintSet
    SizeConstraintSet,
    sizeConstraintSet,
    scsName,
    scsSizeConstraintSetId,
    scsSizeConstraints,

    -- ** SizeConstraintSetSummary
    SizeConstraintSetSummary,
    sizeConstraintSetSummary,
    scssSizeConstraintSetId,
    scssName,

    -- ** SizeConstraintSetUpdate
    SizeConstraintSetUpdate,
    sizeConstraintSetUpdate,
    scsuAction,
    scsuSizeConstraint,

    -- ** SqlInjectionMatchSet
    SqlInjectionMatchSet,
    sqlInjectionMatchSet,
    simsName,
    simsSqlInjectionMatchSetId,
    simsSqlInjectionMatchTuples,

    -- ** SqlInjectionMatchSetSummary
    SqlInjectionMatchSetSummary,
    sqlInjectionMatchSetSummary,
    simssSqlInjectionMatchSetId,
    simssName,

    -- ** SqlInjectionMatchSetUpdate
    SqlInjectionMatchSetUpdate,
    sqlInjectionMatchSetUpdate,
    simsuAction,
    simsuSqlInjectionMatchTuple,

    -- ** SqlInjectionMatchTuple
    SqlInjectionMatchTuple,
    sqlInjectionMatchTuple,
    simtFieldToMatch,
    simtTextTransformation,

    -- ** SubscribedRuleGroupSummary
    SubscribedRuleGroupSummary,
    subscribedRuleGroupSummary,
    srgsRuleGroupId,
    srgsName,
    srgsMetricName,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TagInfoForResource
    TagInfoForResource,
    tagInfoForResource,
    tifrResourceARN,
    tifrTagList,

    -- ** TimeWindow
    TimeWindow,
    timeWindow,
    twStartTime,
    twEndTime,

    -- ** WafAction
    WafAction,
    wafAction,
    waType,

    -- ** WafOverrideAction
    WafOverrideAction,
    wafOverrideAction,
    woaType,

    -- ** WebACL
    WebACL,
    webACL,
    waMetricName,
    waWebACLARN,
    waName,
    waWebACLId,
    waDefaultAction,
    waRules,

    -- ** WebACLSummary
    WebACLSummary,
    webACLSummary,
    wasWebACLId,
    wasName,

    -- ** WebACLUpdate
    WebACLUpdate,
    webACLUpdate,
    wauAction,
    wauActivatedRule,

    -- ** XSSMatchSet
    XSSMatchSet,
    xssMatchSet,
    xmsName,
    xmsXSSMatchSetId,
    xmsXSSMatchTuples,

    -- ** XSSMatchSetSummary
    XSSMatchSetSummary,
    xssMatchSetSummary,
    xmssXSSMatchSetId,
    xmssName,

    -- ** XSSMatchSetUpdate
    XSSMatchSetUpdate,
    xssMatchSetUpdate,
    xmsuAction,
    xmsuXSSMatchTuple,

    -- ** XSSMatchTuple
    XSSMatchTuple,
    xssMatchTuple,
    xmtFieldToMatch,
    xmtTextTransformation,
  )
where

import Network.AWS.WAF.CreateByteMatchSet
import Network.AWS.WAF.CreateGeoMatchSet
import Network.AWS.WAF.CreateIPSet
import Network.AWS.WAF.CreateRateBasedRule
import Network.AWS.WAF.CreateRegexMatchSet
import Network.AWS.WAF.CreateRegexPatternSet
import Network.AWS.WAF.CreateRule
import Network.AWS.WAF.CreateRuleGroup
import Network.AWS.WAF.CreateSizeConstraintSet
import Network.AWS.WAF.CreateSqlInjectionMatchSet
import Network.AWS.WAF.CreateWebACL
import Network.AWS.WAF.CreateWebACLMigrationStack
import Network.AWS.WAF.CreateXSSMatchSet
import Network.AWS.WAF.DeleteByteMatchSet
import Network.AWS.WAF.DeleteGeoMatchSet
import Network.AWS.WAF.DeleteIPSet
import Network.AWS.WAF.DeleteLoggingConfiguration
import Network.AWS.WAF.DeletePermissionPolicy
import Network.AWS.WAF.DeleteRateBasedRule
import Network.AWS.WAF.DeleteRegexMatchSet
import Network.AWS.WAF.DeleteRegexPatternSet
import Network.AWS.WAF.DeleteRule
import Network.AWS.WAF.DeleteRuleGroup
import Network.AWS.WAF.DeleteSizeConstraintSet
import Network.AWS.WAF.DeleteSqlInjectionMatchSet
import Network.AWS.WAF.DeleteWebACL
import Network.AWS.WAF.DeleteXSSMatchSet
import Network.AWS.WAF.GetByteMatchSet
import Network.AWS.WAF.GetChangeToken
import Network.AWS.WAF.GetChangeTokenStatus
import Network.AWS.WAF.GetGeoMatchSet
import Network.AWS.WAF.GetIPSet
import Network.AWS.WAF.GetLoggingConfiguration
import Network.AWS.WAF.GetPermissionPolicy
import Network.AWS.WAF.GetRateBasedRule
import Network.AWS.WAF.GetRateBasedRuleManagedKeys
import Network.AWS.WAF.GetRegexMatchSet
import Network.AWS.WAF.GetRegexPatternSet
import Network.AWS.WAF.GetRule
import Network.AWS.WAF.GetRuleGroup
import Network.AWS.WAF.GetSampledRequests
import Network.AWS.WAF.GetSizeConstraintSet
import Network.AWS.WAF.GetSqlInjectionMatchSet
import Network.AWS.WAF.GetWebACL
import Network.AWS.WAF.GetXSSMatchSet
import Network.AWS.WAF.ListActivatedRulesInRuleGroup
import Network.AWS.WAF.ListByteMatchSets
import Network.AWS.WAF.ListGeoMatchSets
import Network.AWS.WAF.ListIPSets
import Network.AWS.WAF.ListLoggingConfigurations
import Network.AWS.WAF.ListRateBasedRules
import Network.AWS.WAF.ListRegexMatchSets
import Network.AWS.WAF.ListRegexPatternSets
import Network.AWS.WAF.ListRuleGroups
import Network.AWS.WAF.ListRules
import Network.AWS.WAF.ListSizeConstraintSets
import Network.AWS.WAF.ListSqlInjectionMatchSets
import Network.AWS.WAF.ListSubscribedRuleGroups
import Network.AWS.WAF.ListTagsForResource
import Network.AWS.WAF.ListWebACLs
import Network.AWS.WAF.ListXSSMatchSets
import Network.AWS.WAF.PutLoggingConfiguration
import Network.AWS.WAF.PutPermissionPolicy
import Network.AWS.WAF.TagResource
import Network.AWS.WAF.Types
import Network.AWS.WAF.UntagResource
import Network.AWS.WAF.UpdateByteMatchSet
import Network.AWS.WAF.UpdateGeoMatchSet
import Network.AWS.WAF.UpdateIPSet
import Network.AWS.WAF.UpdateRateBasedRule
import Network.AWS.WAF.UpdateRegexMatchSet
import Network.AWS.WAF.UpdateRegexPatternSet
import Network.AWS.WAF.UpdateRule
import Network.AWS.WAF.UpdateRuleGroup
import Network.AWS.WAF.UpdateSizeConstraintSet
import Network.AWS.WAF.UpdateSqlInjectionMatchSet
import Network.AWS.WAF.UpdateWebACL
import Network.AWS.WAF.UpdateXSSMatchSet
import Network.AWS.WAF.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'WAF'.

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
