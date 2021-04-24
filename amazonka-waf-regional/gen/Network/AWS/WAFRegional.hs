{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is the /AWS WAF Regional Classic API Reference/ for using AWS WAF Classic with the AWS resources, Elastic Load Balancing (ELB) Application Load Balancers and API Gateway APIs. The AWS WAF Classic actions and data types listed in the reference are available for protecting Elastic Load Balancing (ELB) Application Load Balancers and API Gateway APIs. You can use these actions and data types by means of the endpoints listed in <https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region AWS Regions and Endpoints> . This guide is for developers who need detailed information about the AWS WAF Classic API actions, data types, and errors. For detailed information about AWS WAF Classic features and an overview of how to use the AWS WAF Classic API, see the <https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html AWS WAF Classic> in the developer guide.
module Network.AWS.WAFRegional
  ( -- * Service Configuration
    wAFRegional,

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

    -- ** WAFUnavailableEntityException
    _WAFUnavailableEntityException,

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
    module Network.AWS.WAFRegional.DeleteWebACL,

    -- ** GetChangeTokenStatus
    module Network.AWS.WAFRegional.GetChangeTokenStatus,

    -- ** UpdateRule
    module Network.AWS.WAFRegional.UpdateRule,

    -- ** GetRuleGroup
    module Network.AWS.WAFRegional.GetRuleGroup,

    -- ** DeleteRule
    module Network.AWS.WAFRegional.DeleteRule,

    -- ** UpdateWebACL
    module Network.AWS.WAFRegional.UpdateWebACL,

    -- ** ListRateBasedRules
    module Network.AWS.WAFRegional.ListRateBasedRules,

    -- ** GetSizeConstraintSet
    module Network.AWS.WAFRegional.GetSizeConstraintSet,

    -- ** GetWebACLForResource
    module Network.AWS.WAFRegional.GetWebACLForResource,

    -- ** ListSqlInjectionMatchSets
    module Network.AWS.WAFRegional.ListSqlInjectionMatchSets,

    -- ** CreateRateBasedRule
    module Network.AWS.WAFRegional.CreateRateBasedRule,

    -- ** ListRegexPatternSets
    module Network.AWS.WAFRegional.ListRegexPatternSets,

    -- ** GetSqlInjectionMatchSet
    module Network.AWS.WAFRegional.GetSqlInjectionMatchSet,

    -- ** CreateRegexPatternSet
    module Network.AWS.WAFRegional.CreateRegexPatternSet,

    -- ** UpdateSizeConstraintSet
    module Network.AWS.WAFRegional.UpdateSizeConstraintSet,

    -- ** GetChangeToken
    module Network.AWS.WAFRegional.GetChangeToken,

    -- ** ListSizeConstraintSets
    module Network.AWS.WAFRegional.ListSizeConstraintSets,

    -- ** UntagResource
    module Network.AWS.WAFRegional.UntagResource,

    -- ** DeleteSizeConstraintSet
    module Network.AWS.WAFRegional.DeleteSizeConstraintSet,

    -- ** ListXSSMatchSets
    module Network.AWS.WAFRegional.ListXSSMatchSets,

    -- ** DeleteRuleGroup
    module Network.AWS.WAFRegional.DeleteRuleGroup,

    -- ** UpdateRuleGroup
    module Network.AWS.WAFRegional.UpdateRuleGroup,

    -- ** TagResource
    module Network.AWS.WAFRegional.TagResource,

    -- ** CreateWebACLMigrationStack
    module Network.AWS.WAFRegional.CreateWebACLMigrationStack,

    -- ** CreateRegexMatchSet
    module Network.AWS.WAFRegional.CreateRegexMatchSet,

    -- ** CreateRuleGroup
    module Network.AWS.WAFRegional.CreateRuleGroup,

    -- ** ListRegexMatchSets
    module Network.AWS.WAFRegional.ListRegexMatchSets,

    -- ** UpdateRegexMatchSet
    module Network.AWS.WAFRegional.UpdateRegexMatchSet,

    -- ** DeleteRegexMatchSet
    module Network.AWS.WAFRegional.DeleteRegexMatchSet,

    -- ** GetLoggingConfiguration
    module Network.AWS.WAFRegional.GetLoggingConfiguration,

    -- ** AssociateWebACL
    module Network.AWS.WAFRegional.AssociateWebACL,

    -- ** DeleteLoggingConfiguration
    module Network.AWS.WAFRegional.DeleteLoggingConfiguration,

    -- ** PutPermissionPolicy
    module Network.AWS.WAFRegional.PutPermissionPolicy,

    -- ** DeleteIPSet
    module Network.AWS.WAFRegional.DeleteIPSet,

    -- ** CreateRule
    module Network.AWS.WAFRegional.CreateRule,

    -- ** ListLoggingConfigurations
    module Network.AWS.WAFRegional.ListLoggingConfigurations,

    -- ** UpdateIPSet
    module Network.AWS.WAFRegional.UpdateIPSet,

    -- ** GetRateBasedRuleManagedKeys
    module Network.AWS.WAFRegional.GetRateBasedRuleManagedKeys,

    -- ** GetGeoMatchSet
    module Network.AWS.WAFRegional.GetGeoMatchSet,

    -- ** CreateWebACL
    module Network.AWS.WAFRegional.CreateWebACL,

    -- ** ListWebACLs
    module Network.AWS.WAFRegional.ListWebACLs,

    -- ** ListRules
    module Network.AWS.WAFRegional.ListRules,

    -- ** CreateByteMatchSet
    module Network.AWS.WAFRegional.CreateByteMatchSet,

    -- ** GetXSSMatchSet
    module Network.AWS.WAFRegional.GetXSSMatchSet,

    -- ** CreateIPSet
    module Network.AWS.WAFRegional.CreateIPSet,

    -- ** ListSubscribedRuleGroups
    module Network.AWS.WAFRegional.ListSubscribedRuleGroups,

    -- ** ListActivatedRulesInRuleGroup
    module Network.AWS.WAFRegional.ListActivatedRulesInRuleGroup,

    -- ** DisassociateWebACL
    module Network.AWS.WAFRegional.DisassociateWebACL,

    -- ** DeleteRateBasedRule
    module Network.AWS.WAFRegional.DeleteRateBasedRule,

    -- ** UpdateRateBasedRule
    module Network.AWS.WAFRegional.UpdateRateBasedRule,

    -- ** CreateSqlInjectionMatchSet
    module Network.AWS.WAFRegional.CreateSqlInjectionMatchSet,

    -- ** GetRegexPatternSet
    module Network.AWS.WAFRegional.GetRegexPatternSet,

    -- ** UpdateSqlInjectionMatchSet
    module Network.AWS.WAFRegional.UpdateSqlInjectionMatchSet,

    -- ** DeleteSqlInjectionMatchSet
    module Network.AWS.WAFRegional.DeleteSqlInjectionMatchSet,

    -- ** UpdateRegexPatternSet
    module Network.AWS.WAFRegional.UpdateRegexPatternSet,

    -- ** DeleteRegexPatternSet
    module Network.AWS.WAFRegional.DeleteRegexPatternSet,

    -- ** GetSampledRequests
    module Network.AWS.WAFRegional.GetSampledRequests,

    -- ** ListResourcesForWebACL
    module Network.AWS.WAFRegional.ListResourcesForWebACL,

    -- ** CreateSizeConstraintSet
    module Network.AWS.WAFRegional.CreateSizeConstraintSet,

    -- ** GetRateBasedRule
    module Network.AWS.WAFRegional.GetRateBasedRule,

    -- ** CreateGeoMatchSet
    module Network.AWS.WAFRegional.CreateGeoMatchSet,

    -- ** DeleteXSSMatchSet
    module Network.AWS.WAFRegional.DeleteXSSMatchSet,

    -- ** GetRule
    module Network.AWS.WAFRegional.GetRule,

    -- ** ListRuleGroups
    module Network.AWS.WAFRegional.ListRuleGroups,

    -- ** UpdateXSSMatchSet
    module Network.AWS.WAFRegional.UpdateXSSMatchSet,

    -- ** GetWebACL
    module Network.AWS.WAFRegional.GetWebACL,

    -- ** UpdateGeoMatchSet
    module Network.AWS.WAFRegional.UpdateGeoMatchSet,

    -- ** GetPermissionPolicy
    module Network.AWS.WAFRegional.GetPermissionPolicy,

    -- ** ListGeoMatchSets
    module Network.AWS.WAFRegional.ListGeoMatchSets,

    -- ** GetByteMatchSet
    module Network.AWS.WAFRegional.GetByteMatchSet,

    -- ** CreateXSSMatchSet
    module Network.AWS.WAFRegional.CreateXSSMatchSet,

    -- ** GetIPSet
    module Network.AWS.WAFRegional.GetIPSet,

    -- ** DeleteGeoMatchSet
    module Network.AWS.WAFRegional.DeleteGeoMatchSet,

    -- ** ListTagsForResource
    module Network.AWS.WAFRegional.ListTagsForResource,

    -- ** UpdateByteMatchSet
    module Network.AWS.WAFRegional.UpdateByteMatchSet,

    -- ** DeleteByteMatchSet
    module Network.AWS.WAFRegional.DeleteByteMatchSet,

    -- ** GetRegexMatchSet
    module Network.AWS.WAFRegional.GetRegexMatchSet,

    -- ** ListByteMatchSets
    module Network.AWS.WAFRegional.ListByteMatchSets,

    -- ** DeletePermissionPolicy
    module Network.AWS.WAFRegional.DeletePermissionPolicy,

    -- ** ListIPSets
    module Network.AWS.WAFRegional.ListIPSets,

    -- ** PutLoggingConfiguration
    module Network.AWS.WAFRegional.PutLoggingConfiguration,

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

    -- ** ResourceType
    ResourceType (..),

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

import Network.AWS.WAFRegional.AssociateWebACL
import Network.AWS.WAFRegional.CreateByteMatchSet
import Network.AWS.WAFRegional.CreateGeoMatchSet
import Network.AWS.WAFRegional.CreateIPSet
import Network.AWS.WAFRegional.CreateRateBasedRule
import Network.AWS.WAFRegional.CreateRegexMatchSet
import Network.AWS.WAFRegional.CreateRegexPatternSet
import Network.AWS.WAFRegional.CreateRule
import Network.AWS.WAFRegional.CreateRuleGroup
import Network.AWS.WAFRegional.CreateSizeConstraintSet
import Network.AWS.WAFRegional.CreateSqlInjectionMatchSet
import Network.AWS.WAFRegional.CreateWebACL
import Network.AWS.WAFRegional.CreateWebACLMigrationStack
import Network.AWS.WAFRegional.CreateXSSMatchSet
import Network.AWS.WAFRegional.DeleteByteMatchSet
import Network.AWS.WAFRegional.DeleteGeoMatchSet
import Network.AWS.WAFRegional.DeleteIPSet
import Network.AWS.WAFRegional.DeleteLoggingConfiguration
import Network.AWS.WAFRegional.DeletePermissionPolicy
import Network.AWS.WAFRegional.DeleteRateBasedRule
import Network.AWS.WAFRegional.DeleteRegexMatchSet
import Network.AWS.WAFRegional.DeleteRegexPatternSet
import Network.AWS.WAFRegional.DeleteRule
import Network.AWS.WAFRegional.DeleteRuleGroup
import Network.AWS.WAFRegional.DeleteSizeConstraintSet
import Network.AWS.WAFRegional.DeleteSqlInjectionMatchSet
import Network.AWS.WAFRegional.DeleteWebACL
import Network.AWS.WAFRegional.DeleteXSSMatchSet
import Network.AWS.WAFRegional.DisassociateWebACL
import Network.AWS.WAFRegional.GetByteMatchSet
import Network.AWS.WAFRegional.GetChangeToken
import Network.AWS.WAFRegional.GetChangeTokenStatus
import Network.AWS.WAFRegional.GetGeoMatchSet
import Network.AWS.WAFRegional.GetIPSet
import Network.AWS.WAFRegional.GetLoggingConfiguration
import Network.AWS.WAFRegional.GetPermissionPolicy
import Network.AWS.WAFRegional.GetRateBasedRule
import Network.AWS.WAFRegional.GetRateBasedRuleManagedKeys
import Network.AWS.WAFRegional.GetRegexMatchSet
import Network.AWS.WAFRegional.GetRegexPatternSet
import Network.AWS.WAFRegional.GetRule
import Network.AWS.WAFRegional.GetRuleGroup
import Network.AWS.WAFRegional.GetSampledRequests
import Network.AWS.WAFRegional.GetSizeConstraintSet
import Network.AWS.WAFRegional.GetSqlInjectionMatchSet
import Network.AWS.WAFRegional.GetWebACL
import Network.AWS.WAFRegional.GetWebACLForResource
import Network.AWS.WAFRegional.GetXSSMatchSet
import Network.AWS.WAFRegional.ListActivatedRulesInRuleGroup
import Network.AWS.WAFRegional.ListByteMatchSets
import Network.AWS.WAFRegional.ListGeoMatchSets
import Network.AWS.WAFRegional.ListIPSets
import Network.AWS.WAFRegional.ListLoggingConfigurations
import Network.AWS.WAFRegional.ListRateBasedRules
import Network.AWS.WAFRegional.ListRegexMatchSets
import Network.AWS.WAFRegional.ListRegexPatternSets
import Network.AWS.WAFRegional.ListResourcesForWebACL
import Network.AWS.WAFRegional.ListRuleGroups
import Network.AWS.WAFRegional.ListRules
import Network.AWS.WAFRegional.ListSizeConstraintSets
import Network.AWS.WAFRegional.ListSqlInjectionMatchSets
import Network.AWS.WAFRegional.ListSubscribedRuleGroups
import Network.AWS.WAFRegional.ListTagsForResource
import Network.AWS.WAFRegional.ListWebACLs
import Network.AWS.WAFRegional.ListXSSMatchSets
import Network.AWS.WAFRegional.PutLoggingConfiguration
import Network.AWS.WAFRegional.PutPermissionPolicy
import Network.AWS.WAFRegional.TagResource
import Network.AWS.WAFRegional.Types
import Network.AWS.WAFRegional.UntagResource
import Network.AWS.WAFRegional.UpdateByteMatchSet
import Network.AWS.WAFRegional.UpdateGeoMatchSet
import Network.AWS.WAFRegional.UpdateIPSet
import Network.AWS.WAFRegional.UpdateRateBasedRule
import Network.AWS.WAFRegional.UpdateRegexMatchSet
import Network.AWS.WAFRegional.UpdateRegexPatternSet
import Network.AWS.WAFRegional.UpdateRule
import Network.AWS.WAFRegional.UpdateRuleGroup
import Network.AWS.WAFRegional.UpdateSizeConstraintSet
import Network.AWS.WAFRegional.UpdateSqlInjectionMatchSet
import Network.AWS.WAFRegional.UpdateWebACL
import Network.AWS.WAFRegional.UpdateXSSMatchSet
import Network.AWS.WAFRegional.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'WAFRegional'.

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
