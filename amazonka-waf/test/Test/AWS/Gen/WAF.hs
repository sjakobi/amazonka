{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.WAF
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.WAF where

import Data.Proxy
import Network.AWS.WAF
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.WAF.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteWebACL $
--             deleteWebACL
--
--         , requestGetChangeTokenStatus $
--             getChangeTokenStatus
--
--         , requestUpdateRule $
--             updateRule
--
--         , requestGetRuleGroup $
--             getRuleGroup
--
--         , requestDeleteRule $
--             deleteRule
--
--         , requestUpdateWebACL $
--             updateWebACL
--
--         , requestListRateBasedRules $
--             listRateBasedRules
--
--         , requestGetSizeConstraintSet $
--             getSizeConstraintSet
--
--         , requestListSqlInjectionMatchSets $
--             listSqlInjectionMatchSets
--
--         , requestCreateRateBasedRule $
--             createRateBasedRule
--
--         , requestListRegexPatternSets $
--             listRegexPatternSets
--
--         , requestGetSqlInjectionMatchSet $
--             getSqlInjectionMatchSet
--
--         , requestCreateRegexPatternSet $
--             createRegexPatternSet
--
--         , requestUpdateSizeConstraintSet $
--             updateSizeConstraintSet
--
--         , requestGetChangeToken $
--             getChangeToken
--
--         , requestListSizeConstraintSets $
--             listSizeConstraintSets
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDeleteSizeConstraintSet $
--             deleteSizeConstraintSet
--
--         , requestListXSSMatchSets $
--             listXSSMatchSets
--
--         , requestDeleteRuleGroup $
--             deleteRuleGroup
--
--         , requestUpdateRuleGroup $
--             updateRuleGroup
--
--         , requestTagResource $
--             tagResource
--
--         , requestCreateWebACLMigrationStack $
--             createWebACLMigrationStack
--
--         , requestCreateRegexMatchSet $
--             createRegexMatchSet
--
--         , requestCreateRuleGroup $
--             createRuleGroup
--
--         , requestListRegexMatchSets $
--             listRegexMatchSets
--
--         , requestUpdateRegexMatchSet $
--             updateRegexMatchSet
--
--         , requestDeleteRegexMatchSet $
--             deleteRegexMatchSet
--
--         , requestGetLoggingConfiguration $
--             getLoggingConfiguration
--
--         , requestDeleteLoggingConfiguration $
--             deleteLoggingConfiguration
--
--         , requestPutPermissionPolicy $
--             putPermissionPolicy
--
--         , requestDeleteIPSet $
--             deleteIPSet
--
--         , requestCreateRule $
--             createRule
--
--         , requestListLoggingConfigurations $
--             listLoggingConfigurations
--
--         , requestUpdateIPSet $
--             updateIPSet
--
--         , requestGetRateBasedRuleManagedKeys $
--             getRateBasedRuleManagedKeys
--
--         , requestGetGeoMatchSet $
--             getGeoMatchSet
--
--         , requestCreateWebACL $
--             createWebACL
--
--         , requestListWebACLs $
--             listWebACLs
--
--         , requestListRules $
--             listRules
--
--         , requestCreateByteMatchSet $
--             createByteMatchSet
--
--         , requestGetXSSMatchSet $
--             getXSSMatchSet
--
--         , requestCreateIPSet $
--             createIPSet
--
--         , requestListSubscribedRuleGroups $
--             listSubscribedRuleGroups
--
--         , requestListActivatedRulesInRuleGroup $
--             listActivatedRulesInRuleGroup
--
--         , requestDeleteRateBasedRule $
--             deleteRateBasedRule
--
--         , requestUpdateRateBasedRule $
--             updateRateBasedRule
--
--         , requestCreateSqlInjectionMatchSet $
--             createSqlInjectionMatchSet
--
--         , requestGetRegexPatternSet $
--             getRegexPatternSet
--
--         , requestUpdateSqlInjectionMatchSet $
--             updateSqlInjectionMatchSet
--
--         , requestDeleteSqlInjectionMatchSet $
--             deleteSqlInjectionMatchSet
--
--         , requestUpdateRegexPatternSet $
--             updateRegexPatternSet
--
--         , requestDeleteRegexPatternSet $
--             deleteRegexPatternSet
--
--         , requestGetSampledRequests $
--             getSampledRequests
--
--         , requestCreateSizeConstraintSet $
--             createSizeConstraintSet
--
--         , requestGetRateBasedRule $
--             getRateBasedRule
--
--         , requestCreateGeoMatchSet $
--             createGeoMatchSet
--
--         , requestDeleteXSSMatchSet $
--             deleteXSSMatchSet
--
--         , requestGetRule $
--             getRule
--
--         , requestListRuleGroups $
--             listRuleGroups
--
--         , requestUpdateXSSMatchSet $
--             updateXSSMatchSet
--
--         , requestGetWebACL $
--             getWebACL
--
--         , requestUpdateGeoMatchSet $
--             updateGeoMatchSet
--
--         , requestGetPermissionPolicy $
--             getPermissionPolicy
--
--         , requestListGeoMatchSets $
--             listGeoMatchSets
--
--         , requestGetByteMatchSet $
--             getByteMatchSet
--
--         , requestCreateXSSMatchSet $
--             createXSSMatchSet
--
--         , requestGetIPSet $
--             getIPSet
--
--         , requestDeleteGeoMatchSet $
--             deleteGeoMatchSet
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestUpdateByteMatchSet $
--             updateByteMatchSet
--
--         , requestDeleteByteMatchSet $
--             deleteByteMatchSet
--
--         , requestGetRegexMatchSet $
--             getRegexMatchSet
--
--         , requestListByteMatchSets $
--             listByteMatchSets
--
--         , requestDeletePermissionPolicy $
--             deletePermissionPolicy
--
--         , requestListIPSets $
--             listIPSets
--
--         , requestPutLoggingConfiguration $
--             putLoggingConfiguration
--
--           ]

--     , testGroup "response"
--         [ responseDeleteWebACL $
--             deleteWebACLResponse
--
--         , responseGetChangeTokenStatus $
--             getChangeTokenStatusResponse
--
--         , responseUpdateRule $
--             updateRuleResponse
--
--         , responseGetRuleGroup $
--             getRuleGroupResponse
--
--         , responseDeleteRule $
--             deleteRuleResponse
--
--         , responseUpdateWebACL $
--             updateWebACLResponse
--
--         , responseListRateBasedRules $
--             listRateBasedRulesResponse
--
--         , responseGetSizeConstraintSet $
--             getSizeConstraintSetResponse
--
--         , responseListSqlInjectionMatchSets $
--             listSqlInjectionMatchSetsResponse
--
--         , responseCreateRateBasedRule $
--             createRateBasedRuleResponse
--
--         , responseListRegexPatternSets $
--             listRegexPatternSetsResponse
--
--         , responseGetSqlInjectionMatchSet $
--             getSqlInjectionMatchSetResponse
--
--         , responseCreateRegexPatternSet $
--             createRegexPatternSetResponse
--
--         , responseUpdateSizeConstraintSet $
--             updateSizeConstraintSetResponse
--
--         , responseGetChangeToken $
--             getChangeTokenResponse
--
--         , responseListSizeConstraintSets $
--             listSizeConstraintSetsResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDeleteSizeConstraintSet $
--             deleteSizeConstraintSetResponse
--
--         , responseListXSSMatchSets $
--             listXSSMatchSetsResponse
--
--         , responseDeleteRuleGroup $
--             deleteRuleGroupResponse
--
--         , responseUpdateRuleGroup $
--             updateRuleGroupResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseCreateWebACLMigrationStack $
--             createWebACLMigrationStackResponse
--
--         , responseCreateRegexMatchSet $
--             createRegexMatchSetResponse
--
--         , responseCreateRuleGroup $
--             createRuleGroupResponse
--
--         , responseListRegexMatchSets $
--             listRegexMatchSetsResponse
--
--         , responseUpdateRegexMatchSet $
--             updateRegexMatchSetResponse
--
--         , responseDeleteRegexMatchSet $
--             deleteRegexMatchSetResponse
--
--         , responseGetLoggingConfiguration $
--             getLoggingConfigurationResponse
--
--         , responseDeleteLoggingConfiguration $
--             deleteLoggingConfigurationResponse
--
--         , responsePutPermissionPolicy $
--             putPermissionPolicyResponse
--
--         , responseDeleteIPSet $
--             deleteIPSetResponse
--
--         , responseCreateRule $
--             createRuleResponse
--
--         , responseListLoggingConfigurations $
--             listLoggingConfigurationsResponse
--
--         , responseUpdateIPSet $
--             updateIPSetResponse
--
--         , responseGetRateBasedRuleManagedKeys $
--             getRateBasedRuleManagedKeysResponse
--
--         , responseGetGeoMatchSet $
--             getGeoMatchSetResponse
--
--         , responseCreateWebACL $
--             createWebACLResponse
--
--         , responseListWebACLs $
--             listWebACLsResponse
--
--         , responseListRules $
--             listRulesResponse
--
--         , responseCreateByteMatchSet $
--             createByteMatchSetResponse
--
--         , responseGetXSSMatchSet $
--             getXSSMatchSetResponse
--
--         , responseCreateIPSet $
--             createIPSetResponse
--
--         , responseListSubscribedRuleGroups $
--             listSubscribedRuleGroupsResponse
--
--         , responseListActivatedRulesInRuleGroup $
--             listActivatedRulesInRuleGroupResponse
--
--         , responseDeleteRateBasedRule $
--             deleteRateBasedRuleResponse
--
--         , responseUpdateRateBasedRule $
--             updateRateBasedRuleResponse
--
--         , responseCreateSqlInjectionMatchSet $
--             createSqlInjectionMatchSetResponse
--
--         , responseGetRegexPatternSet $
--             getRegexPatternSetResponse
--
--         , responseUpdateSqlInjectionMatchSet $
--             updateSqlInjectionMatchSetResponse
--
--         , responseDeleteSqlInjectionMatchSet $
--             deleteSqlInjectionMatchSetResponse
--
--         , responseUpdateRegexPatternSet $
--             updateRegexPatternSetResponse
--
--         , responseDeleteRegexPatternSet $
--             deleteRegexPatternSetResponse
--
--         , responseGetSampledRequests $
--             getSampledRequestsResponse
--
--         , responseCreateSizeConstraintSet $
--             createSizeConstraintSetResponse
--
--         , responseGetRateBasedRule $
--             getRateBasedRuleResponse
--
--         , responseCreateGeoMatchSet $
--             createGeoMatchSetResponse
--
--         , responseDeleteXSSMatchSet $
--             deleteXSSMatchSetResponse
--
--         , responseGetRule $
--             getRuleResponse
--
--         , responseListRuleGroups $
--             listRuleGroupsResponse
--
--         , responseUpdateXSSMatchSet $
--             updateXSSMatchSetResponse
--
--         , responseGetWebACL $
--             getWebACLResponse
--
--         , responseUpdateGeoMatchSet $
--             updateGeoMatchSetResponse
--
--         , responseGetPermissionPolicy $
--             getPermissionPolicyResponse
--
--         , responseListGeoMatchSets $
--             listGeoMatchSetsResponse
--
--         , responseGetByteMatchSet $
--             getByteMatchSetResponse
--
--         , responseCreateXSSMatchSet $
--             createXSSMatchSetResponse
--
--         , responseGetIPSet $
--             getIPSetResponse
--
--         , responseDeleteGeoMatchSet $
--             deleteGeoMatchSetResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseUpdateByteMatchSet $
--             updateByteMatchSetResponse
--
--         , responseDeleteByteMatchSet $
--             deleteByteMatchSetResponse
--
--         , responseGetRegexMatchSet $
--             getRegexMatchSetResponse
--
--         , responseListByteMatchSets $
--             listByteMatchSetsResponse
--
--         , responseDeletePermissionPolicy $
--             deletePermissionPolicyResponse
--
--         , responseListIPSets $
--             listIPSetsResponse
--
--         , responsePutLoggingConfiguration $
--             putLoggingConfigurationResponse
--
--           ]
--     ]

-- Requests

requestDeleteWebACL :: DeleteWebACL -> TestTree
requestDeleteWebACL =
  req
    "DeleteWebACL"
    "fixture/DeleteWebACL.yaml"

requestGetChangeTokenStatus :: GetChangeTokenStatus -> TestTree
requestGetChangeTokenStatus =
  req
    "GetChangeTokenStatus"
    "fixture/GetChangeTokenStatus.yaml"

requestUpdateRule :: UpdateRule -> TestTree
requestUpdateRule =
  req
    "UpdateRule"
    "fixture/UpdateRule.yaml"

requestGetRuleGroup :: GetRuleGroup -> TestTree
requestGetRuleGroup =
  req
    "GetRuleGroup"
    "fixture/GetRuleGroup.yaml"

requestDeleteRule :: DeleteRule -> TestTree
requestDeleteRule =
  req
    "DeleteRule"
    "fixture/DeleteRule.yaml"

requestUpdateWebACL :: UpdateWebACL -> TestTree
requestUpdateWebACL =
  req
    "UpdateWebACL"
    "fixture/UpdateWebACL.yaml"

requestListRateBasedRules :: ListRateBasedRules -> TestTree
requestListRateBasedRules =
  req
    "ListRateBasedRules"
    "fixture/ListRateBasedRules.yaml"

requestGetSizeConstraintSet :: GetSizeConstraintSet -> TestTree
requestGetSizeConstraintSet =
  req
    "GetSizeConstraintSet"
    "fixture/GetSizeConstraintSet.yaml"

requestListSqlInjectionMatchSets :: ListSqlInjectionMatchSets -> TestTree
requestListSqlInjectionMatchSets =
  req
    "ListSqlInjectionMatchSets"
    "fixture/ListSqlInjectionMatchSets.yaml"

requestCreateRateBasedRule :: CreateRateBasedRule -> TestTree
requestCreateRateBasedRule =
  req
    "CreateRateBasedRule"
    "fixture/CreateRateBasedRule.yaml"

requestListRegexPatternSets :: ListRegexPatternSets -> TestTree
requestListRegexPatternSets =
  req
    "ListRegexPatternSets"
    "fixture/ListRegexPatternSets.yaml"

requestGetSqlInjectionMatchSet :: GetSqlInjectionMatchSet -> TestTree
requestGetSqlInjectionMatchSet =
  req
    "GetSqlInjectionMatchSet"
    "fixture/GetSqlInjectionMatchSet.yaml"

requestCreateRegexPatternSet :: CreateRegexPatternSet -> TestTree
requestCreateRegexPatternSet =
  req
    "CreateRegexPatternSet"
    "fixture/CreateRegexPatternSet.yaml"

requestUpdateSizeConstraintSet :: UpdateSizeConstraintSet -> TestTree
requestUpdateSizeConstraintSet =
  req
    "UpdateSizeConstraintSet"
    "fixture/UpdateSizeConstraintSet.yaml"

requestGetChangeToken :: GetChangeToken -> TestTree
requestGetChangeToken =
  req
    "GetChangeToken"
    "fixture/GetChangeToken.yaml"

requestListSizeConstraintSets :: ListSizeConstraintSets -> TestTree
requestListSizeConstraintSets =
  req
    "ListSizeConstraintSets"
    "fixture/ListSizeConstraintSets.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDeleteSizeConstraintSet :: DeleteSizeConstraintSet -> TestTree
requestDeleteSizeConstraintSet =
  req
    "DeleteSizeConstraintSet"
    "fixture/DeleteSizeConstraintSet.yaml"

requestListXSSMatchSets :: ListXSSMatchSets -> TestTree
requestListXSSMatchSets =
  req
    "ListXSSMatchSets"
    "fixture/ListXSSMatchSets.yaml"

requestDeleteRuleGroup :: DeleteRuleGroup -> TestTree
requestDeleteRuleGroup =
  req
    "DeleteRuleGroup"
    "fixture/DeleteRuleGroup.yaml"

requestUpdateRuleGroup :: UpdateRuleGroup -> TestTree
requestUpdateRuleGroup =
  req
    "UpdateRuleGroup"
    "fixture/UpdateRuleGroup.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestCreateWebACLMigrationStack :: CreateWebACLMigrationStack -> TestTree
requestCreateWebACLMigrationStack =
  req
    "CreateWebACLMigrationStack"
    "fixture/CreateWebACLMigrationStack.yaml"

requestCreateRegexMatchSet :: CreateRegexMatchSet -> TestTree
requestCreateRegexMatchSet =
  req
    "CreateRegexMatchSet"
    "fixture/CreateRegexMatchSet.yaml"

requestCreateRuleGroup :: CreateRuleGroup -> TestTree
requestCreateRuleGroup =
  req
    "CreateRuleGroup"
    "fixture/CreateRuleGroup.yaml"

requestListRegexMatchSets :: ListRegexMatchSets -> TestTree
requestListRegexMatchSets =
  req
    "ListRegexMatchSets"
    "fixture/ListRegexMatchSets.yaml"

requestUpdateRegexMatchSet :: UpdateRegexMatchSet -> TestTree
requestUpdateRegexMatchSet =
  req
    "UpdateRegexMatchSet"
    "fixture/UpdateRegexMatchSet.yaml"

requestDeleteRegexMatchSet :: DeleteRegexMatchSet -> TestTree
requestDeleteRegexMatchSet =
  req
    "DeleteRegexMatchSet"
    "fixture/DeleteRegexMatchSet.yaml"

requestGetLoggingConfiguration :: GetLoggingConfiguration -> TestTree
requestGetLoggingConfiguration =
  req
    "GetLoggingConfiguration"
    "fixture/GetLoggingConfiguration.yaml"

requestDeleteLoggingConfiguration :: DeleteLoggingConfiguration -> TestTree
requestDeleteLoggingConfiguration =
  req
    "DeleteLoggingConfiguration"
    "fixture/DeleteLoggingConfiguration.yaml"

requestPutPermissionPolicy :: PutPermissionPolicy -> TestTree
requestPutPermissionPolicy =
  req
    "PutPermissionPolicy"
    "fixture/PutPermissionPolicy.yaml"

requestDeleteIPSet :: DeleteIPSet -> TestTree
requestDeleteIPSet =
  req
    "DeleteIPSet"
    "fixture/DeleteIPSet.yaml"

requestCreateRule :: CreateRule -> TestTree
requestCreateRule =
  req
    "CreateRule"
    "fixture/CreateRule.yaml"

requestListLoggingConfigurations :: ListLoggingConfigurations -> TestTree
requestListLoggingConfigurations =
  req
    "ListLoggingConfigurations"
    "fixture/ListLoggingConfigurations.yaml"

requestUpdateIPSet :: UpdateIPSet -> TestTree
requestUpdateIPSet =
  req
    "UpdateIPSet"
    "fixture/UpdateIPSet.yaml"

requestGetRateBasedRuleManagedKeys :: GetRateBasedRuleManagedKeys -> TestTree
requestGetRateBasedRuleManagedKeys =
  req
    "GetRateBasedRuleManagedKeys"
    "fixture/GetRateBasedRuleManagedKeys.yaml"

requestGetGeoMatchSet :: GetGeoMatchSet -> TestTree
requestGetGeoMatchSet =
  req
    "GetGeoMatchSet"
    "fixture/GetGeoMatchSet.yaml"

requestCreateWebACL :: CreateWebACL -> TestTree
requestCreateWebACL =
  req
    "CreateWebACL"
    "fixture/CreateWebACL.yaml"

requestListWebACLs :: ListWebACLs -> TestTree
requestListWebACLs =
  req
    "ListWebACLs"
    "fixture/ListWebACLs.yaml"

requestListRules :: ListRules -> TestTree
requestListRules =
  req
    "ListRules"
    "fixture/ListRules.yaml"

requestCreateByteMatchSet :: CreateByteMatchSet -> TestTree
requestCreateByteMatchSet =
  req
    "CreateByteMatchSet"
    "fixture/CreateByteMatchSet.yaml"

requestGetXSSMatchSet :: GetXSSMatchSet -> TestTree
requestGetXSSMatchSet =
  req
    "GetXSSMatchSet"
    "fixture/GetXSSMatchSet.yaml"

requestCreateIPSet :: CreateIPSet -> TestTree
requestCreateIPSet =
  req
    "CreateIPSet"
    "fixture/CreateIPSet.yaml"

requestListSubscribedRuleGroups :: ListSubscribedRuleGroups -> TestTree
requestListSubscribedRuleGroups =
  req
    "ListSubscribedRuleGroups"
    "fixture/ListSubscribedRuleGroups.yaml"

requestListActivatedRulesInRuleGroup :: ListActivatedRulesInRuleGroup -> TestTree
requestListActivatedRulesInRuleGroup =
  req
    "ListActivatedRulesInRuleGroup"
    "fixture/ListActivatedRulesInRuleGroup.yaml"

requestDeleteRateBasedRule :: DeleteRateBasedRule -> TestTree
requestDeleteRateBasedRule =
  req
    "DeleteRateBasedRule"
    "fixture/DeleteRateBasedRule.yaml"

requestUpdateRateBasedRule :: UpdateRateBasedRule -> TestTree
requestUpdateRateBasedRule =
  req
    "UpdateRateBasedRule"
    "fixture/UpdateRateBasedRule.yaml"

requestCreateSqlInjectionMatchSet :: CreateSqlInjectionMatchSet -> TestTree
requestCreateSqlInjectionMatchSet =
  req
    "CreateSqlInjectionMatchSet"
    "fixture/CreateSqlInjectionMatchSet.yaml"

requestGetRegexPatternSet :: GetRegexPatternSet -> TestTree
requestGetRegexPatternSet =
  req
    "GetRegexPatternSet"
    "fixture/GetRegexPatternSet.yaml"

requestUpdateSqlInjectionMatchSet :: UpdateSqlInjectionMatchSet -> TestTree
requestUpdateSqlInjectionMatchSet =
  req
    "UpdateSqlInjectionMatchSet"
    "fixture/UpdateSqlInjectionMatchSet.yaml"

requestDeleteSqlInjectionMatchSet :: DeleteSqlInjectionMatchSet -> TestTree
requestDeleteSqlInjectionMatchSet =
  req
    "DeleteSqlInjectionMatchSet"
    "fixture/DeleteSqlInjectionMatchSet.yaml"

requestUpdateRegexPatternSet :: UpdateRegexPatternSet -> TestTree
requestUpdateRegexPatternSet =
  req
    "UpdateRegexPatternSet"
    "fixture/UpdateRegexPatternSet.yaml"

requestDeleteRegexPatternSet :: DeleteRegexPatternSet -> TestTree
requestDeleteRegexPatternSet =
  req
    "DeleteRegexPatternSet"
    "fixture/DeleteRegexPatternSet.yaml"

requestGetSampledRequests :: GetSampledRequests -> TestTree
requestGetSampledRequests =
  req
    "GetSampledRequests"
    "fixture/GetSampledRequests.yaml"

requestCreateSizeConstraintSet :: CreateSizeConstraintSet -> TestTree
requestCreateSizeConstraintSet =
  req
    "CreateSizeConstraintSet"
    "fixture/CreateSizeConstraintSet.yaml"

requestGetRateBasedRule :: GetRateBasedRule -> TestTree
requestGetRateBasedRule =
  req
    "GetRateBasedRule"
    "fixture/GetRateBasedRule.yaml"

requestCreateGeoMatchSet :: CreateGeoMatchSet -> TestTree
requestCreateGeoMatchSet =
  req
    "CreateGeoMatchSet"
    "fixture/CreateGeoMatchSet.yaml"

requestDeleteXSSMatchSet :: DeleteXSSMatchSet -> TestTree
requestDeleteXSSMatchSet =
  req
    "DeleteXSSMatchSet"
    "fixture/DeleteXSSMatchSet.yaml"

requestGetRule :: GetRule -> TestTree
requestGetRule =
  req
    "GetRule"
    "fixture/GetRule.yaml"

requestListRuleGroups :: ListRuleGroups -> TestTree
requestListRuleGroups =
  req
    "ListRuleGroups"
    "fixture/ListRuleGroups.yaml"

requestUpdateXSSMatchSet :: UpdateXSSMatchSet -> TestTree
requestUpdateXSSMatchSet =
  req
    "UpdateXSSMatchSet"
    "fixture/UpdateXSSMatchSet.yaml"

requestGetWebACL :: GetWebACL -> TestTree
requestGetWebACL =
  req
    "GetWebACL"
    "fixture/GetWebACL.yaml"

requestUpdateGeoMatchSet :: UpdateGeoMatchSet -> TestTree
requestUpdateGeoMatchSet =
  req
    "UpdateGeoMatchSet"
    "fixture/UpdateGeoMatchSet.yaml"

requestGetPermissionPolicy :: GetPermissionPolicy -> TestTree
requestGetPermissionPolicy =
  req
    "GetPermissionPolicy"
    "fixture/GetPermissionPolicy.yaml"

requestListGeoMatchSets :: ListGeoMatchSets -> TestTree
requestListGeoMatchSets =
  req
    "ListGeoMatchSets"
    "fixture/ListGeoMatchSets.yaml"

requestGetByteMatchSet :: GetByteMatchSet -> TestTree
requestGetByteMatchSet =
  req
    "GetByteMatchSet"
    "fixture/GetByteMatchSet.yaml"

requestCreateXSSMatchSet :: CreateXSSMatchSet -> TestTree
requestCreateXSSMatchSet =
  req
    "CreateXSSMatchSet"
    "fixture/CreateXSSMatchSet.yaml"

requestGetIPSet :: GetIPSet -> TestTree
requestGetIPSet =
  req
    "GetIPSet"
    "fixture/GetIPSet.yaml"

requestDeleteGeoMatchSet :: DeleteGeoMatchSet -> TestTree
requestDeleteGeoMatchSet =
  req
    "DeleteGeoMatchSet"
    "fixture/DeleteGeoMatchSet.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestUpdateByteMatchSet :: UpdateByteMatchSet -> TestTree
requestUpdateByteMatchSet =
  req
    "UpdateByteMatchSet"
    "fixture/UpdateByteMatchSet.yaml"

requestDeleteByteMatchSet :: DeleteByteMatchSet -> TestTree
requestDeleteByteMatchSet =
  req
    "DeleteByteMatchSet"
    "fixture/DeleteByteMatchSet.yaml"

requestGetRegexMatchSet :: GetRegexMatchSet -> TestTree
requestGetRegexMatchSet =
  req
    "GetRegexMatchSet"
    "fixture/GetRegexMatchSet.yaml"

requestListByteMatchSets :: ListByteMatchSets -> TestTree
requestListByteMatchSets =
  req
    "ListByteMatchSets"
    "fixture/ListByteMatchSets.yaml"

requestDeletePermissionPolicy :: DeletePermissionPolicy -> TestTree
requestDeletePermissionPolicy =
  req
    "DeletePermissionPolicy"
    "fixture/DeletePermissionPolicy.yaml"

requestListIPSets :: ListIPSets -> TestTree
requestListIPSets =
  req
    "ListIPSets"
    "fixture/ListIPSets.yaml"

requestPutLoggingConfiguration :: PutLoggingConfiguration -> TestTree
requestPutLoggingConfiguration =
  req
    "PutLoggingConfiguration"
    "fixture/PutLoggingConfiguration.yaml"

-- Responses

responseDeleteWebACL :: DeleteWebACLResponse -> TestTree
responseDeleteWebACL =
  res
    "DeleteWebACLResponse"
    "fixture/DeleteWebACLResponse.proto"
    waf
    (Proxy :: Proxy DeleteWebACL)

responseGetChangeTokenStatus :: GetChangeTokenStatusResponse -> TestTree
responseGetChangeTokenStatus =
  res
    "GetChangeTokenStatusResponse"
    "fixture/GetChangeTokenStatusResponse.proto"
    waf
    (Proxy :: Proxy GetChangeTokenStatus)

responseUpdateRule :: UpdateRuleResponse -> TestTree
responseUpdateRule =
  res
    "UpdateRuleResponse"
    "fixture/UpdateRuleResponse.proto"
    waf
    (Proxy :: Proxy UpdateRule)

responseGetRuleGroup :: GetRuleGroupResponse -> TestTree
responseGetRuleGroup =
  res
    "GetRuleGroupResponse"
    "fixture/GetRuleGroupResponse.proto"
    waf
    (Proxy :: Proxy GetRuleGroup)

responseDeleteRule :: DeleteRuleResponse -> TestTree
responseDeleteRule =
  res
    "DeleteRuleResponse"
    "fixture/DeleteRuleResponse.proto"
    waf
    (Proxy :: Proxy DeleteRule)

responseUpdateWebACL :: UpdateWebACLResponse -> TestTree
responseUpdateWebACL =
  res
    "UpdateWebACLResponse"
    "fixture/UpdateWebACLResponse.proto"
    waf
    (Proxy :: Proxy UpdateWebACL)

responseListRateBasedRules :: ListRateBasedRulesResponse -> TestTree
responseListRateBasedRules =
  res
    "ListRateBasedRulesResponse"
    "fixture/ListRateBasedRulesResponse.proto"
    waf
    (Proxy :: Proxy ListRateBasedRules)

responseGetSizeConstraintSet :: GetSizeConstraintSetResponse -> TestTree
responseGetSizeConstraintSet =
  res
    "GetSizeConstraintSetResponse"
    "fixture/GetSizeConstraintSetResponse.proto"
    waf
    (Proxy :: Proxy GetSizeConstraintSet)

responseListSqlInjectionMatchSets :: ListSqlInjectionMatchSetsResponse -> TestTree
responseListSqlInjectionMatchSets =
  res
    "ListSqlInjectionMatchSetsResponse"
    "fixture/ListSqlInjectionMatchSetsResponse.proto"
    waf
    (Proxy :: Proxy ListSqlInjectionMatchSets)

responseCreateRateBasedRule :: CreateRateBasedRuleResponse -> TestTree
responseCreateRateBasedRule =
  res
    "CreateRateBasedRuleResponse"
    "fixture/CreateRateBasedRuleResponse.proto"
    waf
    (Proxy :: Proxy CreateRateBasedRule)

responseListRegexPatternSets :: ListRegexPatternSetsResponse -> TestTree
responseListRegexPatternSets =
  res
    "ListRegexPatternSetsResponse"
    "fixture/ListRegexPatternSetsResponse.proto"
    waf
    (Proxy :: Proxy ListRegexPatternSets)

responseGetSqlInjectionMatchSet :: GetSqlInjectionMatchSetResponse -> TestTree
responseGetSqlInjectionMatchSet =
  res
    "GetSqlInjectionMatchSetResponse"
    "fixture/GetSqlInjectionMatchSetResponse.proto"
    waf
    (Proxy :: Proxy GetSqlInjectionMatchSet)

responseCreateRegexPatternSet :: CreateRegexPatternSetResponse -> TestTree
responseCreateRegexPatternSet =
  res
    "CreateRegexPatternSetResponse"
    "fixture/CreateRegexPatternSetResponse.proto"
    waf
    (Proxy :: Proxy CreateRegexPatternSet)

responseUpdateSizeConstraintSet :: UpdateSizeConstraintSetResponse -> TestTree
responseUpdateSizeConstraintSet =
  res
    "UpdateSizeConstraintSetResponse"
    "fixture/UpdateSizeConstraintSetResponse.proto"
    waf
    (Proxy :: Proxy UpdateSizeConstraintSet)

responseGetChangeToken :: GetChangeTokenResponse -> TestTree
responseGetChangeToken =
  res
    "GetChangeTokenResponse"
    "fixture/GetChangeTokenResponse.proto"
    waf
    (Proxy :: Proxy GetChangeToken)

responseListSizeConstraintSets :: ListSizeConstraintSetsResponse -> TestTree
responseListSizeConstraintSets =
  res
    "ListSizeConstraintSetsResponse"
    "fixture/ListSizeConstraintSetsResponse.proto"
    waf
    (Proxy :: Proxy ListSizeConstraintSets)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    waf
    (Proxy :: Proxy UntagResource)

responseDeleteSizeConstraintSet :: DeleteSizeConstraintSetResponse -> TestTree
responseDeleteSizeConstraintSet =
  res
    "DeleteSizeConstraintSetResponse"
    "fixture/DeleteSizeConstraintSetResponse.proto"
    waf
    (Proxy :: Proxy DeleteSizeConstraintSet)

responseListXSSMatchSets :: ListXSSMatchSetsResponse -> TestTree
responseListXSSMatchSets =
  res
    "ListXSSMatchSetsResponse"
    "fixture/ListXSSMatchSetsResponse.proto"
    waf
    (Proxy :: Proxy ListXSSMatchSets)

responseDeleteRuleGroup :: DeleteRuleGroupResponse -> TestTree
responseDeleteRuleGroup =
  res
    "DeleteRuleGroupResponse"
    "fixture/DeleteRuleGroupResponse.proto"
    waf
    (Proxy :: Proxy DeleteRuleGroup)

responseUpdateRuleGroup :: UpdateRuleGroupResponse -> TestTree
responseUpdateRuleGroup =
  res
    "UpdateRuleGroupResponse"
    "fixture/UpdateRuleGroupResponse.proto"
    waf
    (Proxy :: Proxy UpdateRuleGroup)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    waf
    (Proxy :: Proxy TagResource)

responseCreateWebACLMigrationStack :: CreateWebACLMigrationStackResponse -> TestTree
responseCreateWebACLMigrationStack =
  res
    "CreateWebACLMigrationStackResponse"
    "fixture/CreateWebACLMigrationStackResponse.proto"
    waf
    (Proxy :: Proxy CreateWebACLMigrationStack)

responseCreateRegexMatchSet :: CreateRegexMatchSetResponse -> TestTree
responseCreateRegexMatchSet =
  res
    "CreateRegexMatchSetResponse"
    "fixture/CreateRegexMatchSetResponse.proto"
    waf
    (Proxy :: Proxy CreateRegexMatchSet)

responseCreateRuleGroup :: CreateRuleGroupResponse -> TestTree
responseCreateRuleGroup =
  res
    "CreateRuleGroupResponse"
    "fixture/CreateRuleGroupResponse.proto"
    waf
    (Proxy :: Proxy CreateRuleGroup)

responseListRegexMatchSets :: ListRegexMatchSetsResponse -> TestTree
responseListRegexMatchSets =
  res
    "ListRegexMatchSetsResponse"
    "fixture/ListRegexMatchSetsResponse.proto"
    waf
    (Proxy :: Proxy ListRegexMatchSets)

responseUpdateRegexMatchSet :: UpdateRegexMatchSetResponse -> TestTree
responseUpdateRegexMatchSet =
  res
    "UpdateRegexMatchSetResponse"
    "fixture/UpdateRegexMatchSetResponse.proto"
    waf
    (Proxy :: Proxy UpdateRegexMatchSet)

responseDeleteRegexMatchSet :: DeleteRegexMatchSetResponse -> TestTree
responseDeleteRegexMatchSet =
  res
    "DeleteRegexMatchSetResponse"
    "fixture/DeleteRegexMatchSetResponse.proto"
    waf
    (Proxy :: Proxy DeleteRegexMatchSet)

responseGetLoggingConfiguration :: GetLoggingConfigurationResponse -> TestTree
responseGetLoggingConfiguration =
  res
    "GetLoggingConfigurationResponse"
    "fixture/GetLoggingConfigurationResponse.proto"
    waf
    (Proxy :: Proxy GetLoggingConfiguration)

responseDeleteLoggingConfiguration :: DeleteLoggingConfigurationResponse -> TestTree
responseDeleteLoggingConfiguration =
  res
    "DeleteLoggingConfigurationResponse"
    "fixture/DeleteLoggingConfigurationResponse.proto"
    waf
    (Proxy :: Proxy DeleteLoggingConfiguration)

responsePutPermissionPolicy :: PutPermissionPolicyResponse -> TestTree
responsePutPermissionPolicy =
  res
    "PutPermissionPolicyResponse"
    "fixture/PutPermissionPolicyResponse.proto"
    waf
    (Proxy :: Proxy PutPermissionPolicy)

responseDeleteIPSet :: DeleteIPSetResponse -> TestTree
responseDeleteIPSet =
  res
    "DeleteIPSetResponse"
    "fixture/DeleteIPSetResponse.proto"
    waf
    (Proxy :: Proxy DeleteIPSet)

responseCreateRule :: CreateRuleResponse -> TestTree
responseCreateRule =
  res
    "CreateRuleResponse"
    "fixture/CreateRuleResponse.proto"
    waf
    (Proxy :: Proxy CreateRule)

responseListLoggingConfigurations :: ListLoggingConfigurationsResponse -> TestTree
responseListLoggingConfigurations =
  res
    "ListLoggingConfigurationsResponse"
    "fixture/ListLoggingConfigurationsResponse.proto"
    waf
    (Proxy :: Proxy ListLoggingConfigurations)

responseUpdateIPSet :: UpdateIPSetResponse -> TestTree
responseUpdateIPSet =
  res
    "UpdateIPSetResponse"
    "fixture/UpdateIPSetResponse.proto"
    waf
    (Proxy :: Proxy UpdateIPSet)

responseGetRateBasedRuleManagedKeys :: GetRateBasedRuleManagedKeysResponse -> TestTree
responseGetRateBasedRuleManagedKeys =
  res
    "GetRateBasedRuleManagedKeysResponse"
    "fixture/GetRateBasedRuleManagedKeysResponse.proto"
    waf
    (Proxy :: Proxy GetRateBasedRuleManagedKeys)

responseGetGeoMatchSet :: GetGeoMatchSetResponse -> TestTree
responseGetGeoMatchSet =
  res
    "GetGeoMatchSetResponse"
    "fixture/GetGeoMatchSetResponse.proto"
    waf
    (Proxy :: Proxy GetGeoMatchSet)

responseCreateWebACL :: CreateWebACLResponse -> TestTree
responseCreateWebACL =
  res
    "CreateWebACLResponse"
    "fixture/CreateWebACLResponse.proto"
    waf
    (Proxy :: Proxy CreateWebACL)

responseListWebACLs :: ListWebACLsResponse -> TestTree
responseListWebACLs =
  res
    "ListWebACLsResponse"
    "fixture/ListWebACLsResponse.proto"
    waf
    (Proxy :: Proxy ListWebACLs)

responseListRules :: ListRulesResponse -> TestTree
responseListRules =
  res
    "ListRulesResponse"
    "fixture/ListRulesResponse.proto"
    waf
    (Proxy :: Proxy ListRules)

responseCreateByteMatchSet :: CreateByteMatchSetResponse -> TestTree
responseCreateByteMatchSet =
  res
    "CreateByteMatchSetResponse"
    "fixture/CreateByteMatchSetResponse.proto"
    waf
    (Proxy :: Proxy CreateByteMatchSet)

responseGetXSSMatchSet :: GetXSSMatchSetResponse -> TestTree
responseGetXSSMatchSet =
  res
    "GetXSSMatchSetResponse"
    "fixture/GetXSSMatchSetResponse.proto"
    waf
    (Proxy :: Proxy GetXSSMatchSet)

responseCreateIPSet :: CreateIPSetResponse -> TestTree
responseCreateIPSet =
  res
    "CreateIPSetResponse"
    "fixture/CreateIPSetResponse.proto"
    waf
    (Proxy :: Proxy CreateIPSet)

responseListSubscribedRuleGroups :: ListSubscribedRuleGroupsResponse -> TestTree
responseListSubscribedRuleGroups =
  res
    "ListSubscribedRuleGroupsResponse"
    "fixture/ListSubscribedRuleGroupsResponse.proto"
    waf
    (Proxy :: Proxy ListSubscribedRuleGroups)

responseListActivatedRulesInRuleGroup :: ListActivatedRulesInRuleGroupResponse -> TestTree
responseListActivatedRulesInRuleGroup =
  res
    "ListActivatedRulesInRuleGroupResponse"
    "fixture/ListActivatedRulesInRuleGroupResponse.proto"
    waf
    (Proxy :: Proxy ListActivatedRulesInRuleGroup)

responseDeleteRateBasedRule :: DeleteRateBasedRuleResponse -> TestTree
responseDeleteRateBasedRule =
  res
    "DeleteRateBasedRuleResponse"
    "fixture/DeleteRateBasedRuleResponse.proto"
    waf
    (Proxy :: Proxy DeleteRateBasedRule)

responseUpdateRateBasedRule :: UpdateRateBasedRuleResponse -> TestTree
responseUpdateRateBasedRule =
  res
    "UpdateRateBasedRuleResponse"
    "fixture/UpdateRateBasedRuleResponse.proto"
    waf
    (Proxy :: Proxy UpdateRateBasedRule)

responseCreateSqlInjectionMatchSet :: CreateSqlInjectionMatchSetResponse -> TestTree
responseCreateSqlInjectionMatchSet =
  res
    "CreateSqlInjectionMatchSetResponse"
    "fixture/CreateSqlInjectionMatchSetResponse.proto"
    waf
    (Proxy :: Proxy CreateSqlInjectionMatchSet)

responseGetRegexPatternSet :: GetRegexPatternSetResponse -> TestTree
responseGetRegexPatternSet =
  res
    "GetRegexPatternSetResponse"
    "fixture/GetRegexPatternSetResponse.proto"
    waf
    (Proxy :: Proxy GetRegexPatternSet)

responseUpdateSqlInjectionMatchSet :: UpdateSqlInjectionMatchSetResponse -> TestTree
responseUpdateSqlInjectionMatchSet =
  res
    "UpdateSqlInjectionMatchSetResponse"
    "fixture/UpdateSqlInjectionMatchSetResponse.proto"
    waf
    (Proxy :: Proxy UpdateSqlInjectionMatchSet)

responseDeleteSqlInjectionMatchSet :: DeleteSqlInjectionMatchSetResponse -> TestTree
responseDeleteSqlInjectionMatchSet =
  res
    "DeleteSqlInjectionMatchSetResponse"
    "fixture/DeleteSqlInjectionMatchSetResponse.proto"
    waf
    (Proxy :: Proxy DeleteSqlInjectionMatchSet)

responseUpdateRegexPatternSet :: UpdateRegexPatternSetResponse -> TestTree
responseUpdateRegexPatternSet =
  res
    "UpdateRegexPatternSetResponse"
    "fixture/UpdateRegexPatternSetResponse.proto"
    waf
    (Proxy :: Proxy UpdateRegexPatternSet)

responseDeleteRegexPatternSet :: DeleteRegexPatternSetResponse -> TestTree
responseDeleteRegexPatternSet =
  res
    "DeleteRegexPatternSetResponse"
    "fixture/DeleteRegexPatternSetResponse.proto"
    waf
    (Proxy :: Proxy DeleteRegexPatternSet)

responseGetSampledRequests :: GetSampledRequestsResponse -> TestTree
responseGetSampledRequests =
  res
    "GetSampledRequestsResponse"
    "fixture/GetSampledRequestsResponse.proto"
    waf
    (Proxy :: Proxy GetSampledRequests)

responseCreateSizeConstraintSet :: CreateSizeConstraintSetResponse -> TestTree
responseCreateSizeConstraintSet =
  res
    "CreateSizeConstraintSetResponse"
    "fixture/CreateSizeConstraintSetResponse.proto"
    waf
    (Proxy :: Proxy CreateSizeConstraintSet)

responseGetRateBasedRule :: GetRateBasedRuleResponse -> TestTree
responseGetRateBasedRule =
  res
    "GetRateBasedRuleResponse"
    "fixture/GetRateBasedRuleResponse.proto"
    waf
    (Proxy :: Proxy GetRateBasedRule)

responseCreateGeoMatchSet :: CreateGeoMatchSetResponse -> TestTree
responseCreateGeoMatchSet =
  res
    "CreateGeoMatchSetResponse"
    "fixture/CreateGeoMatchSetResponse.proto"
    waf
    (Proxy :: Proxy CreateGeoMatchSet)

responseDeleteXSSMatchSet :: DeleteXSSMatchSetResponse -> TestTree
responseDeleteXSSMatchSet =
  res
    "DeleteXSSMatchSetResponse"
    "fixture/DeleteXSSMatchSetResponse.proto"
    waf
    (Proxy :: Proxy DeleteXSSMatchSet)

responseGetRule :: GetRuleResponse -> TestTree
responseGetRule =
  res
    "GetRuleResponse"
    "fixture/GetRuleResponse.proto"
    waf
    (Proxy :: Proxy GetRule)

responseListRuleGroups :: ListRuleGroupsResponse -> TestTree
responseListRuleGroups =
  res
    "ListRuleGroupsResponse"
    "fixture/ListRuleGroupsResponse.proto"
    waf
    (Proxy :: Proxy ListRuleGroups)

responseUpdateXSSMatchSet :: UpdateXSSMatchSetResponse -> TestTree
responseUpdateXSSMatchSet =
  res
    "UpdateXSSMatchSetResponse"
    "fixture/UpdateXSSMatchSetResponse.proto"
    waf
    (Proxy :: Proxy UpdateXSSMatchSet)

responseGetWebACL :: GetWebACLResponse -> TestTree
responseGetWebACL =
  res
    "GetWebACLResponse"
    "fixture/GetWebACLResponse.proto"
    waf
    (Proxy :: Proxy GetWebACL)

responseUpdateGeoMatchSet :: UpdateGeoMatchSetResponse -> TestTree
responseUpdateGeoMatchSet =
  res
    "UpdateGeoMatchSetResponse"
    "fixture/UpdateGeoMatchSetResponse.proto"
    waf
    (Proxy :: Proxy UpdateGeoMatchSet)

responseGetPermissionPolicy :: GetPermissionPolicyResponse -> TestTree
responseGetPermissionPolicy =
  res
    "GetPermissionPolicyResponse"
    "fixture/GetPermissionPolicyResponse.proto"
    waf
    (Proxy :: Proxy GetPermissionPolicy)

responseListGeoMatchSets :: ListGeoMatchSetsResponse -> TestTree
responseListGeoMatchSets =
  res
    "ListGeoMatchSetsResponse"
    "fixture/ListGeoMatchSetsResponse.proto"
    waf
    (Proxy :: Proxy ListGeoMatchSets)

responseGetByteMatchSet :: GetByteMatchSetResponse -> TestTree
responseGetByteMatchSet =
  res
    "GetByteMatchSetResponse"
    "fixture/GetByteMatchSetResponse.proto"
    waf
    (Proxy :: Proxy GetByteMatchSet)

responseCreateXSSMatchSet :: CreateXSSMatchSetResponse -> TestTree
responseCreateXSSMatchSet =
  res
    "CreateXSSMatchSetResponse"
    "fixture/CreateXSSMatchSetResponse.proto"
    waf
    (Proxy :: Proxy CreateXSSMatchSet)

responseGetIPSet :: GetIPSetResponse -> TestTree
responseGetIPSet =
  res
    "GetIPSetResponse"
    "fixture/GetIPSetResponse.proto"
    waf
    (Proxy :: Proxy GetIPSet)

responseDeleteGeoMatchSet :: DeleteGeoMatchSetResponse -> TestTree
responseDeleteGeoMatchSet =
  res
    "DeleteGeoMatchSetResponse"
    "fixture/DeleteGeoMatchSetResponse.proto"
    waf
    (Proxy :: Proxy DeleteGeoMatchSet)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    waf
    (Proxy :: Proxy ListTagsForResource)

responseUpdateByteMatchSet :: UpdateByteMatchSetResponse -> TestTree
responseUpdateByteMatchSet =
  res
    "UpdateByteMatchSetResponse"
    "fixture/UpdateByteMatchSetResponse.proto"
    waf
    (Proxy :: Proxy UpdateByteMatchSet)

responseDeleteByteMatchSet :: DeleteByteMatchSetResponse -> TestTree
responseDeleteByteMatchSet =
  res
    "DeleteByteMatchSetResponse"
    "fixture/DeleteByteMatchSetResponse.proto"
    waf
    (Proxy :: Proxy DeleteByteMatchSet)

responseGetRegexMatchSet :: GetRegexMatchSetResponse -> TestTree
responseGetRegexMatchSet =
  res
    "GetRegexMatchSetResponse"
    "fixture/GetRegexMatchSetResponse.proto"
    waf
    (Proxy :: Proxy GetRegexMatchSet)

responseListByteMatchSets :: ListByteMatchSetsResponse -> TestTree
responseListByteMatchSets =
  res
    "ListByteMatchSetsResponse"
    "fixture/ListByteMatchSetsResponse.proto"
    waf
    (Proxy :: Proxy ListByteMatchSets)

responseDeletePermissionPolicy :: DeletePermissionPolicyResponse -> TestTree
responseDeletePermissionPolicy =
  res
    "DeletePermissionPolicyResponse"
    "fixture/DeletePermissionPolicyResponse.proto"
    waf
    (Proxy :: Proxy DeletePermissionPolicy)

responseListIPSets :: ListIPSetsResponse -> TestTree
responseListIPSets =
  res
    "ListIPSetsResponse"
    "fixture/ListIPSetsResponse.proto"
    waf
    (Proxy :: Proxy ListIPSets)

responsePutLoggingConfiguration :: PutLoggingConfigurationResponse -> TestTree
responsePutLoggingConfiguration =
  res
    "PutLoggingConfigurationResponse"
    "fixture/PutLoggingConfigurationResponse.proto"
    waf
    (Proxy :: Proxy PutLoggingConfiguration)
