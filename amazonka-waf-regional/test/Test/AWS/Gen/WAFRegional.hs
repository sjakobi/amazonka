{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.WAFRegional
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.WAFRegional where

import Data.Proxy
import Network.AWS.WAFRegional
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.WAFRegional.Internal
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
--         , requestGetWebACLForResource $
--             getWebACLForResource
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
--         , requestAssociateWebACL $
--             associateWebACL
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
--         , requestDisassociateWebACL $
--             disassociateWebACL
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
--         , requestListResourcesForWebACL $
--             listResourcesForWebACL
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
--         , responseGetWebACLForResource $
--             getWebACLForResourceResponse
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
--         , responseAssociateWebACL $
--             associateWebACLResponse
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
--         , responseDisassociateWebACL $
--             disassociateWebACLResponse
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
--         , responseListResourcesForWebACL $
--             listResourcesForWebACLResponse
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

requestGetWebACLForResource :: GetWebACLForResource -> TestTree
requestGetWebACLForResource =
  req
    "GetWebACLForResource"
    "fixture/GetWebACLForResource.yaml"

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

requestAssociateWebACL :: AssociateWebACL -> TestTree
requestAssociateWebACL =
  req
    "AssociateWebACL"
    "fixture/AssociateWebACL.yaml"

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

requestDisassociateWebACL :: DisassociateWebACL -> TestTree
requestDisassociateWebACL =
  req
    "DisassociateWebACL"
    "fixture/DisassociateWebACL.yaml"

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

requestListResourcesForWebACL :: ListResourcesForWebACL -> TestTree
requestListResourcesForWebACL =
  req
    "ListResourcesForWebACL"
    "fixture/ListResourcesForWebACL.yaml"

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
    wAFRegional
    (Proxy :: Proxy DeleteWebACL)

responseGetChangeTokenStatus :: GetChangeTokenStatusResponse -> TestTree
responseGetChangeTokenStatus =
  res
    "GetChangeTokenStatusResponse"
    "fixture/GetChangeTokenStatusResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetChangeTokenStatus)

responseUpdateRule :: UpdateRuleResponse -> TestTree
responseUpdateRule =
  res
    "UpdateRuleResponse"
    "fixture/UpdateRuleResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateRule)

responseGetRuleGroup :: GetRuleGroupResponse -> TestTree
responseGetRuleGroup =
  res
    "GetRuleGroupResponse"
    "fixture/GetRuleGroupResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetRuleGroup)

responseDeleteRule :: DeleteRuleResponse -> TestTree
responseDeleteRule =
  res
    "DeleteRuleResponse"
    "fixture/DeleteRuleResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteRule)

responseUpdateWebACL :: UpdateWebACLResponse -> TestTree
responseUpdateWebACL =
  res
    "UpdateWebACLResponse"
    "fixture/UpdateWebACLResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateWebACL)

responseListRateBasedRules :: ListRateBasedRulesResponse -> TestTree
responseListRateBasedRules =
  res
    "ListRateBasedRulesResponse"
    "fixture/ListRateBasedRulesResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListRateBasedRules)

responseGetSizeConstraintSet :: GetSizeConstraintSetResponse -> TestTree
responseGetSizeConstraintSet =
  res
    "GetSizeConstraintSetResponse"
    "fixture/GetSizeConstraintSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetSizeConstraintSet)

responseGetWebACLForResource :: GetWebACLForResourceResponse -> TestTree
responseGetWebACLForResource =
  res
    "GetWebACLForResourceResponse"
    "fixture/GetWebACLForResourceResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetWebACLForResource)

responseListSqlInjectionMatchSets :: ListSqlInjectionMatchSetsResponse -> TestTree
responseListSqlInjectionMatchSets =
  res
    "ListSqlInjectionMatchSetsResponse"
    "fixture/ListSqlInjectionMatchSetsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListSqlInjectionMatchSets)

responseCreateRateBasedRule :: CreateRateBasedRuleResponse -> TestTree
responseCreateRateBasedRule =
  res
    "CreateRateBasedRuleResponse"
    "fixture/CreateRateBasedRuleResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateRateBasedRule)

responseListRegexPatternSets :: ListRegexPatternSetsResponse -> TestTree
responseListRegexPatternSets =
  res
    "ListRegexPatternSetsResponse"
    "fixture/ListRegexPatternSetsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListRegexPatternSets)

responseGetSqlInjectionMatchSet :: GetSqlInjectionMatchSetResponse -> TestTree
responseGetSqlInjectionMatchSet =
  res
    "GetSqlInjectionMatchSetResponse"
    "fixture/GetSqlInjectionMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetSqlInjectionMatchSet)

responseCreateRegexPatternSet :: CreateRegexPatternSetResponse -> TestTree
responseCreateRegexPatternSet =
  res
    "CreateRegexPatternSetResponse"
    "fixture/CreateRegexPatternSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateRegexPatternSet)

responseUpdateSizeConstraintSet :: UpdateSizeConstraintSetResponse -> TestTree
responseUpdateSizeConstraintSet =
  res
    "UpdateSizeConstraintSetResponse"
    "fixture/UpdateSizeConstraintSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateSizeConstraintSet)

responseGetChangeToken :: GetChangeTokenResponse -> TestTree
responseGetChangeToken =
  res
    "GetChangeTokenResponse"
    "fixture/GetChangeTokenResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetChangeToken)

responseListSizeConstraintSets :: ListSizeConstraintSetsResponse -> TestTree
responseListSizeConstraintSets =
  res
    "ListSizeConstraintSetsResponse"
    "fixture/ListSizeConstraintSetsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListSizeConstraintSets)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    wAFRegional
    (Proxy :: Proxy UntagResource)

responseDeleteSizeConstraintSet :: DeleteSizeConstraintSetResponse -> TestTree
responseDeleteSizeConstraintSet =
  res
    "DeleteSizeConstraintSetResponse"
    "fixture/DeleteSizeConstraintSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteSizeConstraintSet)

responseListXSSMatchSets :: ListXSSMatchSetsResponse -> TestTree
responseListXSSMatchSets =
  res
    "ListXSSMatchSetsResponse"
    "fixture/ListXSSMatchSetsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListXSSMatchSets)

responseDeleteRuleGroup :: DeleteRuleGroupResponse -> TestTree
responseDeleteRuleGroup =
  res
    "DeleteRuleGroupResponse"
    "fixture/DeleteRuleGroupResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteRuleGroup)

responseUpdateRuleGroup :: UpdateRuleGroupResponse -> TestTree
responseUpdateRuleGroup =
  res
    "UpdateRuleGroupResponse"
    "fixture/UpdateRuleGroupResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateRuleGroup)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    wAFRegional
    (Proxy :: Proxy TagResource)

responseCreateWebACLMigrationStack :: CreateWebACLMigrationStackResponse -> TestTree
responseCreateWebACLMigrationStack =
  res
    "CreateWebACLMigrationStackResponse"
    "fixture/CreateWebACLMigrationStackResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateWebACLMigrationStack)

responseCreateRegexMatchSet :: CreateRegexMatchSetResponse -> TestTree
responseCreateRegexMatchSet =
  res
    "CreateRegexMatchSetResponse"
    "fixture/CreateRegexMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateRegexMatchSet)

responseCreateRuleGroup :: CreateRuleGroupResponse -> TestTree
responseCreateRuleGroup =
  res
    "CreateRuleGroupResponse"
    "fixture/CreateRuleGroupResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateRuleGroup)

responseListRegexMatchSets :: ListRegexMatchSetsResponse -> TestTree
responseListRegexMatchSets =
  res
    "ListRegexMatchSetsResponse"
    "fixture/ListRegexMatchSetsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListRegexMatchSets)

responseUpdateRegexMatchSet :: UpdateRegexMatchSetResponse -> TestTree
responseUpdateRegexMatchSet =
  res
    "UpdateRegexMatchSetResponse"
    "fixture/UpdateRegexMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateRegexMatchSet)

responseDeleteRegexMatchSet :: DeleteRegexMatchSetResponse -> TestTree
responseDeleteRegexMatchSet =
  res
    "DeleteRegexMatchSetResponse"
    "fixture/DeleteRegexMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteRegexMatchSet)

responseGetLoggingConfiguration :: GetLoggingConfigurationResponse -> TestTree
responseGetLoggingConfiguration =
  res
    "GetLoggingConfigurationResponse"
    "fixture/GetLoggingConfigurationResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetLoggingConfiguration)

responseAssociateWebACL :: AssociateWebACLResponse -> TestTree
responseAssociateWebACL =
  res
    "AssociateWebACLResponse"
    "fixture/AssociateWebACLResponse.proto"
    wAFRegional
    (Proxy :: Proxy AssociateWebACL)

responseDeleteLoggingConfiguration :: DeleteLoggingConfigurationResponse -> TestTree
responseDeleteLoggingConfiguration =
  res
    "DeleteLoggingConfigurationResponse"
    "fixture/DeleteLoggingConfigurationResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteLoggingConfiguration)

responsePutPermissionPolicy :: PutPermissionPolicyResponse -> TestTree
responsePutPermissionPolicy =
  res
    "PutPermissionPolicyResponse"
    "fixture/PutPermissionPolicyResponse.proto"
    wAFRegional
    (Proxy :: Proxy PutPermissionPolicy)

responseDeleteIPSet :: DeleteIPSetResponse -> TestTree
responseDeleteIPSet =
  res
    "DeleteIPSetResponse"
    "fixture/DeleteIPSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteIPSet)

responseCreateRule :: CreateRuleResponse -> TestTree
responseCreateRule =
  res
    "CreateRuleResponse"
    "fixture/CreateRuleResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateRule)

responseListLoggingConfigurations :: ListLoggingConfigurationsResponse -> TestTree
responseListLoggingConfigurations =
  res
    "ListLoggingConfigurationsResponse"
    "fixture/ListLoggingConfigurationsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListLoggingConfigurations)

responseUpdateIPSet :: UpdateIPSetResponse -> TestTree
responseUpdateIPSet =
  res
    "UpdateIPSetResponse"
    "fixture/UpdateIPSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateIPSet)

responseGetRateBasedRuleManagedKeys :: GetRateBasedRuleManagedKeysResponse -> TestTree
responseGetRateBasedRuleManagedKeys =
  res
    "GetRateBasedRuleManagedKeysResponse"
    "fixture/GetRateBasedRuleManagedKeysResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetRateBasedRuleManagedKeys)

responseGetGeoMatchSet :: GetGeoMatchSetResponse -> TestTree
responseGetGeoMatchSet =
  res
    "GetGeoMatchSetResponse"
    "fixture/GetGeoMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetGeoMatchSet)

responseCreateWebACL :: CreateWebACLResponse -> TestTree
responseCreateWebACL =
  res
    "CreateWebACLResponse"
    "fixture/CreateWebACLResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateWebACL)

responseListWebACLs :: ListWebACLsResponse -> TestTree
responseListWebACLs =
  res
    "ListWebACLsResponse"
    "fixture/ListWebACLsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListWebACLs)

responseListRules :: ListRulesResponse -> TestTree
responseListRules =
  res
    "ListRulesResponse"
    "fixture/ListRulesResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListRules)

responseCreateByteMatchSet :: CreateByteMatchSetResponse -> TestTree
responseCreateByteMatchSet =
  res
    "CreateByteMatchSetResponse"
    "fixture/CreateByteMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateByteMatchSet)

responseGetXSSMatchSet :: GetXSSMatchSetResponse -> TestTree
responseGetXSSMatchSet =
  res
    "GetXSSMatchSetResponse"
    "fixture/GetXSSMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetXSSMatchSet)

responseCreateIPSet :: CreateIPSetResponse -> TestTree
responseCreateIPSet =
  res
    "CreateIPSetResponse"
    "fixture/CreateIPSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateIPSet)

responseListSubscribedRuleGroups :: ListSubscribedRuleGroupsResponse -> TestTree
responseListSubscribedRuleGroups =
  res
    "ListSubscribedRuleGroupsResponse"
    "fixture/ListSubscribedRuleGroupsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListSubscribedRuleGroups)

responseListActivatedRulesInRuleGroup :: ListActivatedRulesInRuleGroupResponse -> TestTree
responseListActivatedRulesInRuleGroup =
  res
    "ListActivatedRulesInRuleGroupResponse"
    "fixture/ListActivatedRulesInRuleGroupResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListActivatedRulesInRuleGroup)

responseDisassociateWebACL :: DisassociateWebACLResponse -> TestTree
responseDisassociateWebACL =
  res
    "DisassociateWebACLResponse"
    "fixture/DisassociateWebACLResponse.proto"
    wAFRegional
    (Proxy :: Proxy DisassociateWebACL)

responseDeleteRateBasedRule :: DeleteRateBasedRuleResponse -> TestTree
responseDeleteRateBasedRule =
  res
    "DeleteRateBasedRuleResponse"
    "fixture/DeleteRateBasedRuleResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteRateBasedRule)

responseUpdateRateBasedRule :: UpdateRateBasedRuleResponse -> TestTree
responseUpdateRateBasedRule =
  res
    "UpdateRateBasedRuleResponse"
    "fixture/UpdateRateBasedRuleResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateRateBasedRule)

responseCreateSqlInjectionMatchSet :: CreateSqlInjectionMatchSetResponse -> TestTree
responseCreateSqlInjectionMatchSet =
  res
    "CreateSqlInjectionMatchSetResponse"
    "fixture/CreateSqlInjectionMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateSqlInjectionMatchSet)

responseGetRegexPatternSet :: GetRegexPatternSetResponse -> TestTree
responseGetRegexPatternSet =
  res
    "GetRegexPatternSetResponse"
    "fixture/GetRegexPatternSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetRegexPatternSet)

responseUpdateSqlInjectionMatchSet :: UpdateSqlInjectionMatchSetResponse -> TestTree
responseUpdateSqlInjectionMatchSet =
  res
    "UpdateSqlInjectionMatchSetResponse"
    "fixture/UpdateSqlInjectionMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateSqlInjectionMatchSet)

responseDeleteSqlInjectionMatchSet :: DeleteSqlInjectionMatchSetResponse -> TestTree
responseDeleteSqlInjectionMatchSet =
  res
    "DeleteSqlInjectionMatchSetResponse"
    "fixture/DeleteSqlInjectionMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteSqlInjectionMatchSet)

responseUpdateRegexPatternSet :: UpdateRegexPatternSetResponse -> TestTree
responseUpdateRegexPatternSet =
  res
    "UpdateRegexPatternSetResponse"
    "fixture/UpdateRegexPatternSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateRegexPatternSet)

responseDeleteRegexPatternSet :: DeleteRegexPatternSetResponse -> TestTree
responseDeleteRegexPatternSet =
  res
    "DeleteRegexPatternSetResponse"
    "fixture/DeleteRegexPatternSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteRegexPatternSet)

responseGetSampledRequests :: GetSampledRequestsResponse -> TestTree
responseGetSampledRequests =
  res
    "GetSampledRequestsResponse"
    "fixture/GetSampledRequestsResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetSampledRequests)

responseListResourcesForWebACL :: ListResourcesForWebACLResponse -> TestTree
responseListResourcesForWebACL =
  res
    "ListResourcesForWebACLResponse"
    "fixture/ListResourcesForWebACLResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListResourcesForWebACL)

responseCreateSizeConstraintSet :: CreateSizeConstraintSetResponse -> TestTree
responseCreateSizeConstraintSet =
  res
    "CreateSizeConstraintSetResponse"
    "fixture/CreateSizeConstraintSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateSizeConstraintSet)

responseGetRateBasedRule :: GetRateBasedRuleResponse -> TestTree
responseGetRateBasedRule =
  res
    "GetRateBasedRuleResponse"
    "fixture/GetRateBasedRuleResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetRateBasedRule)

responseCreateGeoMatchSet :: CreateGeoMatchSetResponse -> TestTree
responseCreateGeoMatchSet =
  res
    "CreateGeoMatchSetResponse"
    "fixture/CreateGeoMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateGeoMatchSet)

responseDeleteXSSMatchSet :: DeleteXSSMatchSetResponse -> TestTree
responseDeleteXSSMatchSet =
  res
    "DeleteXSSMatchSetResponse"
    "fixture/DeleteXSSMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteXSSMatchSet)

responseGetRule :: GetRuleResponse -> TestTree
responseGetRule =
  res
    "GetRuleResponse"
    "fixture/GetRuleResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetRule)

responseListRuleGroups :: ListRuleGroupsResponse -> TestTree
responseListRuleGroups =
  res
    "ListRuleGroupsResponse"
    "fixture/ListRuleGroupsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListRuleGroups)

responseUpdateXSSMatchSet :: UpdateXSSMatchSetResponse -> TestTree
responseUpdateXSSMatchSet =
  res
    "UpdateXSSMatchSetResponse"
    "fixture/UpdateXSSMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateXSSMatchSet)

responseGetWebACL :: GetWebACLResponse -> TestTree
responseGetWebACL =
  res
    "GetWebACLResponse"
    "fixture/GetWebACLResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetWebACL)

responseUpdateGeoMatchSet :: UpdateGeoMatchSetResponse -> TestTree
responseUpdateGeoMatchSet =
  res
    "UpdateGeoMatchSetResponse"
    "fixture/UpdateGeoMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateGeoMatchSet)

responseGetPermissionPolicy :: GetPermissionPolicyResponse -> TestTree
responseGetPermissionPolicy =
  res
    "GetPermissionPolicyResponse"
    "fixture/GetPermissionPolicyResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetPermissionPolicy)

responseListGeoMatchSets :: ListGeoMatchSetsResponse -> TestTree
responseListGeoMatchSets =
  res
    "ListGeoMatchSetsResponse"
    "fixture/ListGeoMatchSetsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListGeoMatchSets)

responseGetByteMatchSet :: GetByteMatchSetResponse -> TestTree
responseGetByteMatchSet =
  res
    "GetByteMatchSetResponse"
    "fixture/GetByteMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetByteMatchSet)

responseCreateXSSMatchSet :: CreateXSSMatchSetResponse -> TestTree
responseCreateXSSMatchSet =
  res
    "CreateXSSMatchSetResponse"
    "fixture/CreateXSSMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy CreateXSSMatchSet)

responseGetIPSet :: GetIPSetResponse -> TestTree
responseGetIPSet =
  res
    "GetIPSetResponse"
    "fixture/GetIPSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetIPSet)

responseDeleteGeoMatchSet :: DeleteGeoMatchSetResponse -> TestTree
responseDeleteGeoMatchSet =
  res
    "DeleteGeoMatchSetResponse"
    "fixture/DeleteGeoMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteGeoMatchSet)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListTagsForResource)

responseUpdateByteMatchSet :: UpdateByteMatchSetResponse -> TestTree
responseUpdateByteMatchSet =
  res
    "UpdateByteMatchSetResponse"
    "fixture/UpdateByteMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy UpdateByteMatchSet)

responseDeleteByteMatchSet :: DeleteByteMatchSetResponse -> TestTree
responseDeleteByteMatchSet =
  res
    "DeleteByteMatchSetResponse"
    "fixture/DeleteByteMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeleteByteMatchSet)

responseGetRegexMatchSet :: GetRegexMatchSetResponse -> TestTree
responseGetRegexMatchSet =
  res
    "GetRegexMatchSetResponse"
    "fixture/GetRegexMatchSetResponse.proto"
    wAFRegional
    (Proxy :: Proxy GetRegexMatchSet)

responseListByteMatchSets :: ListByteMatchSetsResponse -> TestTree
responseListByteMatchSets =
  res
    "ListByteMatchSetsResponse"
    "fixture/ListByteMatchSetsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListByteMatchSets)

responseDeletePermissionPolicy :: DeletePermissionPolicyResponse -> TestTree
responseDeletePermissionPolicy =
  res
    "DeletePermissionPolicyResponse"
    "fixture/DeletePermissionPolicyResponse.proto"
    wAFRegional
    (Proxy :: Proxy DeletePermissionPolicy)

responseListIPSets :: ListIPSetsResponse -> TestTree
responseListIPSets =
  res
    "ListIPSetsResponse"
    "fixture/ListIPSetsResponse.proto"
    wAFRegional
    (Proxy :: Proxy ListIPSets)

responsePutLoggingConfiguration :: PutLoggingConfigurationResponse -> TestTree
responsePutLoggingConfiguration =
  res
    "PutLoggingConfigurationResponse"
    "fixture/PutLoggingConfigurationResponse.proto"
    wAFRegional
    (Proxy :: Proxy PutLoggingConfiguration)
