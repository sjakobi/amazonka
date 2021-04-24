{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.ELBv2
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.ELBv2 where

import Data.Proxy
import Network.AWS.ELBv2
import Test.AWS.ELBv2.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDescribeSSLPolicies $
--             describeSSLPolicies
--
--         , requestRemoveTags $
--             removeTags
--
--         , requestDeleteRule $
--             deleteRule
--
--         , requestDescribeTags $
--             describeTags
--
--         , requestDescribeTargetGroupAttributes $
--             describeTargetGroupAttributes
--
--         , requestAddListenerCertificates $
--             addListenerCertificates
--
--         , requestCreateLoadBalancer $
--             createLoadBalancer
--
--         , requestRemoveListenerCertificates $
--             removeListenerCertificates
--
--         , requestModifyRule $
--             modifyRule
--
--         , requestModifyTargetGroup $
--             modifyTargetGroup
--
--         , requestDeleteLoadBalancer $
--             deleteLoadBalancer
--
--         , requestDescribeListeners $
--             describeListeners
--
--         , requestAddTags $
--             addTags
--
--         , requestDescribeTargetGroups $
--             describeTargetGroups
--
--         , requestSetIPAddressType $
--             setIPAddressType
--
--         , requestModifyLoadBalancerAttributes $
--             modifyLoadBalancerAttributes
--
--         , requestDescribeAccountLimits $
--             describeAccountLimits
--
--         , requestCreateRule $
--             createRule
--
--         , requestCreateTargetGroup $
--             createTargetGroup
--
--         , requestSetSubnets $
--             setSubnets
--
--         , requestDeregisterTargets $
--             deregisterTargets
--
--         , requestDeleteListener $
--             deleteListener
--
--         , requestDeleteTargetGroup $
--             deleteTargetGroup
--
--         , requestDescribeLoadBalancers $
--             describeLoadBalancers
--
--         , requestModifyTargetGroupAttributes $
--             modifyTargetGroupAttributes
--
--         , requestModifyListener $
--             modifyListener
--
--         , requestRegisterTargets $
--             registerTargets
--
--         , requestDescribeTargetHealth $
--             describeTargetHealth
--
--         , requestSetRulePriorities $
--             setRulePriorities
--
--         , requestDescribeRules $
--             describeRules
--
--         , requestSetSecurityGroups $
--             setSecurityGroups
--
--         , requestDescribeLoadBalancerAttributes $
--             describeLoadBalancerAttributes
--
--         , requestDescribeListenerCertificates $
--             describeListenerCertificates
--
--         , requestCreateListener $
--             createListener
--
--           ]

--     , testGroup "response"
--         [ responseDescribeSSLPolicies $
--             describeSSLPoliciesResponse
--
--         , responseRemoveTags $
--             removeTagsResponse
--
--         , responseDeleteRule $
--             deleteRuleResponse
--
--         , responseDescribeTags $
--             describeTagsResponse
--
--         , responseDescribeTargetGroupAttributes $
--             describeTargetGroupAttributesResponse
--
--         , responseAddListenerCertificates $
--             addListenerCertificatesResponse
--
--         , responseCreateLoadBalancer $
--             createLoadBalancerResponse
--
--         , responseRemoveListenerCertificates $
--             removeListenerCertificatesResponse
--
--         , responseModifyRule $
--             modifyRuleResponse
--
--         , responseModifyTargetGroup $
--             modifyTargetGroupResponse
--
--         , responseDeleteLoadBalancer $
--             deleteLoadBalancerResponse
--
--         , responseDescribeListeners $
--             describeListenersResponse
--
--         , responseAddTags $
--             addTagsResponse
--
--         , responseDescribeTargetGroups $
--             describeTargetGroupsResponse
--
--         , responseSetIPAddressType $
--             setIPAddressTypeResponse
--
--         , responseModifyLoadBalancerAttributes $
--             modifyLoadBalancerAttributesResponse
--
--         , responseDescribeAccountLimits $
--             describeAccountLimitsResponse
--
--         , responseCreateRule $
--             createRuleResponse
--
--         , responseCreateTargetGroup $
--             createTargetGroupResponse
--
--         , responseSetSubnets $
--             setSubnetsResponse
--
--         , responseDeregisterTargets $
--             deregisterTargetsResponse
--
--         , responseDeleteListener $
--             deleteListenerResponse
--
--         , responseDeleteTargetGroup $
--             deleteTargetGroupResponse
--
--         , responseDescribeLoadBalancers $
--             describeLoadBalancersResponse
--
--         , responseModifyTargetGroupAttributes $
--             modifyTargetGroupAttributesResponse
--
--         , responseModifyListener $
--             modifyListenerResponse
--
--         , responseRegisterTargets $
--             registerTargetsResponse
--
--         , responseDescribeTargetHealth $
--             describeTargetHealthResponse
--
--         , responseSetRulePriorities $
--             setRulePrioritiesResponse
--
--         , responseDescribeRules $
--             describeRulesResponse
--
--         , responseSetSecurityGroups $
--             setSecurityGroupsResponse
--
--         , responseDescribeLoadBalancerAttributes $
--             describeLoadBalancerAttributesResponse
--
--         , responseDescribeListenerCertificates $
--             describeListenerCertificatesResponse
--
--         , responseCreateListener $
--             createListenerResponse
--
--           ]
--     ]

-- Requests

requestDescribeSSLPolicies :: DescribeSSLPolicies -> TestTree
requestDescribeSSLPolicies =
  req
    "DescribeSSLPolicies"
    "fixture/DescribeSSLPolicies.yaml"

requestRemoveTags :: RemoveTags -> TestTree
requestRemoveTags =
  req
    "RemoveTags"
    "fixture/RemoveTags.yaml"

requestDeleteRule :: DeleteRule -> TestTree
requestDeleteRule =
  req
    "DeleteRule"
    "fixture/DeleteRule.yaml"

requestDescribeTags :: DescribeTags -> TestTree
requestDescribeTags =
  req
    "DescribeTags"
    "fixture/DescribeTags.yaml"

requestDescribeTargetGroupAttributes :: DescribeTargetGroupAttributes -> TestTree
requestDescribeTargetGroupAttributes =
  req
    "DescribeTargetGroupAttributes"
    "fixture/DescribeTargetGroupAttributes.yaml"

requestAddListenerCertificates :: AddListenerCertificates -> TestTree
requestAddListenerCertificates =
  req
    "AddListenerCertificates"
    "fixture/AddListenerCertificates.yaml"

requestCreateLoadBalancer :: CreateLoadBalancer -> TestTree
requestCreateLoadBalancer =
  req
    "CreateLoadBalancer"
    "fixture/CreateLoadBalancer.yaml"

requestRemoveListenerCertificates :: RemoveListenerCertificates -> TestTree
requestRemoveListenerCertificates =
  req
    "RemoveListenerCertificates"
    "fixture/RemoveListenerCertificates.yaml"

requestModifyRule :: ModifyRule -> TestTree
requestModifyRule =
  req
    "ModifyRule"
    "fixture/ModifyRule.yaml"

requestModifyTargetGroup :: ModifyTargetGroup -> TestTree
requestModifyTargetGroup =
  req
    "ModifyTargetGroup"
    "fixture/ModifyTargetGroup.yaml"

requestDeleteLoadBalancer :: DeleteLoadBalancer -> TestTree
requestDeleteLoadBalancer =
  req
    "DeleteLoadBalancer"
    "fixture/DeleteLoadBalancer.yaml"

requestDescribeListeners :: DescribeListeners -> TestTree
requestDescribeListeners =
  req
    "DescribeListeners"
    "fixture/DescribeListeners.yaml"

requestAddTags :: AddTags -> TestTree
requestAddTags =
  req
    "AddTags"
    "fixture/AddTags.yaml"

requestDescribeTargetGroups :: DescribeTargetGroups -> TestTree
requestDescribeTargetGroups =
  req
    "DescribeTargetGroups"
    "fixture/DescribeTargetGroups.yaml"

requestSetIPAddressType :: SetIPAddressType -> TestTree
requestSetIPAddressType =
  req
    "SetIPAddressType"
    "fixture/SetIPAddressType.yaml"

requestModifyLoadBalancerAttributes :: ModifyLoadBalancerAttributes -> TestTree
requestModifyLoadBalancerAttributes =
  req
    "ModifyLoadBalancerAttributes"
    "fixture/ModifyLoadBalancerAttributes.yaml"

requestDescribeAccountLimits :: DescribeAccountLimits -> TestTree
requestDescribeAccountLimits =
  req
    "DescribeAccountLimits"
    "fixture/DescribeAccountLimits.yaml"

requestCreateRule :: CreateRule -> TestTree
requestCreateRule =
  req
    "CreateRule"
    "fixture/CreateRule.yaml"

requestCreateTargetGroup :: CreateTargetGroup -> TestTree
requestCreateTargetGroup =
  req
    "CreateTargetGroup"
    "fixture/CreateTargetGroup.yaml"

requestSetSubnets :: SetSubnets -> TestTree
requestSetSubnets =
  req
    "SetSubnets"
    "fixture/SetSubnets.yaml"

requestDeregisterTargets :: DeregisterTargets -> TestTree
requestDeregisterTargets =
  req
    "DeregisterTargets"
    "fixture/DeregisterTargets.yaml"

requestDeleteListener :: DeleteListener -> TestTree
requestDeleteListener =
  req
    "DeleteListener"
    "fixture/DeleteListener.yaml"

requestDeleteTargetGroup :: DeleteTargetGroup -> TestTree
requestDeleteTargetGroup =
  req
    "DeleteTargetGroup"
    "fixture/DeleteTargetGroup.yaml"

requestDescribeLoadBalancers :: DescribeLoadBalancers -> TestTree
requestDescribeLoadBalancers =
  req
    "DescribeLoadBalancers"
    "fixture/DescribeLoadBalancers.yaml"

requestModifyTargetGroupAttributes :: ModifyTargetGroupAttributes -> TestTree
requestModifyTargetGroupAttributes =
  req
    "ModifyTargetGroupAttributes"
    "fixture/ModifyTargetGroupAttributes.yaml"

requestModifyListener :: ModifyListener -> TestTree
requestModifyListener =
  req
    "ModifyListener"
    "fixture/ModifyListener.yaml"

requestRegisterTargets :: RegisterTargets -> TestTree
requestRegisterTargets =
  req
    "RegisterTargets"
    "fixture/RegisterTargets.yaml"

requestDescribeTargetHealth :: DescribeTargetHealth -> TestTree
requestDescribeTargetHealth =
  req
    "DescribeTargetHealth"
    "fixture/DescribeTargetHealth.yaml"

requestSetRulePriorities :: SetRulePriorities -> TestTree
requestSetRulePriorities =
  req
    "SetRulePriorities"
    "fixture/SetRulePriorities.yaml"

requestDescribeRules :: DescribeRules -> TestTree
requestDescribeRules =
  req
    "DescribeRules"
    "fixture/DescribeRules.yaml"

requestSetSecurityGroups :: SetSecurityGroups -> TestTree
requestSetSecurityGroups =
  req
    "SetSecurityGroups"
    "fixture/SetSecurityGroups.yaml"

requestDescribeLoadBalancerAttributes :: DescribeLoadBalancerAttributes -> TestTree
requestDescribeLoadBalancerAttributes =
  req
    "DescribeLoadBalancerAttributes"
    "fixture/DescribeLoadBalancerAttributes.yaml"

requestDescribeListenerCertificates :: DescribeListenerCertificates -> TestTree
requestDescribeListenerCertificates =
  req
    "DescribeListenerCertificates"
    "fixture/DescribeListenerCertificates.yaml"

requestCreateListener :: CreateListener -> TestTree
requestCreateListener =
  req
    "CreateListener"
    "fixture/CreateListener.yaml"

-- Responses

responseDescribeSSLPolicies :: DescribeSSLPoliciesResponse -> TestTree
responseDescribeSSLPolicies =
  res
    "DescribeSSLPoliciesResponse"
    "fixture/DescribeSSLPoliciesResponse.proto"
    eLBv2
    (Proxy :: Proxy DescribeSSLPolicies)

responseRemoveTags :: RemoveTagsResponse -> TestTree
responseRemoveTags =
  res
    "RemoveTagsResponse"
    "fixture/RemoveTagsResponse.proto"
    eLBv2
    (Proxy :: Proxy RemoveTags)

responseDeleteRule :: DeleteRuleResponse -> TestTree
responseDeleteRule =
  res
    "DeleteRuleResponse"
    "fixture/DeleteRuleResponse.proto"
    eLBv2
    (Proxy :: Proxy DeleteRule)

responseDescribeTags :: DescribeTagsResponse -> TestTree
responseDescribeTags =
  res
    "DescribeTagsResponse"
    "fixture/DescribeTagsResponse.proto"
    eLBv2
    (Proxy :: Proxy DescribeTags)

responseDescribeTargetGroupAttributes :: DescribeTargetGroupAttributesResponse -> TestTree
responseDescribeTargetGroupAttributes =
  res
    "DescribeTargetGroupAttributesResponse"
    "fixture/DescribeTargetGroupAttributesResponse.proto"
    eLBv2
    (Proxy :: Proxy DescribeTargetGroupAttributes)

responseAddListenerCertificates :: AddListenerCertificatesResponse -> TestTree
responseAddListenerCertificates =
  res
    "AddListenerCertificatesResponse"
    "fixture/AddListenerCertificatesResponse.proto"
    eLBv2
    (Proxy :: Proxy AddListenerCertificates)

responseCreateLoadBalancer :: CreateLoadBalancerResponse -> TestTree
responseCreateLoadBalancer =
  res
    "CreateLoadBalancerResponse"
    "fixture/CreateLoadBalancerResponse.proto"
    eLBv2
    (Proxy :: Proxy CreateLoadBalancer)

responseRemoveListenerCertificates :: RemoveListenerCertificatesResponse -> TestTree
responseRemoveListenerCertificates =
  res
    "RemoveListenerCertificatesResponse"
    "fixture/RemoveListenerCertificatesResponse.proto"
    eLBv2
    (Proxy :: Proxy RemoveListenerCertificates)

responseModifyRule :: ModifyRuleResponse -> TestTree
responseModifyRule =
  res
    "ModifyRuleResponse"
    "fixture/ModifyRuleResponse.proto"
    eLBv2
    (Proxy :: Proxy ModifyRule)

responseModifyTargetGroup :: ModifyTargetGroupResponse -> TestTree
responseModifyTargetGroup =
  res
    "ModifyTargetGroupResponse"
    "fixture/ModifyTargetGroupResponse.proto"
    eLBv2
    (Proxy :: Proxy ModifyTargetGroup)

responseDeleteLoadBalancer :: DeleteLoadBalancerResponse -> TestTree
responseDeleteLoadBalancer =
  res
    "DeleteLoadBalancerResponse"
    "fixture/DeleteLoadBalancerResponse.proto"
    eLBv2
    (Proxy :: Proxy DeleteLoadBalancer)

responseDescribeListeners :: DescribeListenersResponse -> TestTree
responseDescribeListeners =
  res
    "DescribeListenersResponse"
    "fixture/DescribeListenersResponse.proto"
    eLBv2
    (Proxy :: Proxy DescribeListeners)

responseAddTags :: AddTagsResponse -> TestTree
responseAddTags =
  res
    "AddTagsResponse"
    "fixture/AddTagsResponse.proto"
    eLBv2
    (Proxy :: Proxy AddTags)

responseDescribeTargetGroups :: DescribeTargetGroupsResponse -> TestTree
responseDescribeTargetGroups =
  res
    "DescribeTargetGroupsResponse"
    "fixture/DescribeTargetGroupsResponse.proto"
    eLBv2
    (Proxy :: Proxy DescribeTargetGroups)

responseSetIPAddressType :: SetIPAddressTypeResponse -> TestTree
responseSetIPAddressType =
  res
    "SetIPAddressTypeResponse"
    "fixture/SetIPAddressTypeResponse.proto"
    eLBv2
    (Proxy :: Proxy SetIPAddressType)

responseModifyLoadBalancerAttributes :: ModifyLoadBalancerAttributesResponse -> TestTree
responseModifyLoadBalancerAttributes =
  res
    "ModifyLoadBalancerAttributesResponse"
    "fixture/ModifyLoadBalancerAttributesResponse.proto"
    eLBv2
    (Proxy :: Proxy ModifyLoadBalancerAttributes)

responseDescribeAccountLimits :: DescribeAccountLimitsResponse -> TestTree
responseDescribeAccountLimits =
  res
    "DescribeAccountLimitsResponse"
    "fixture/DescribeAccountLimitsResponse.proto"
    eLBv2
    (Proxy :: Proxy DescribeAccountLimits)

responseCreateRule :: CreateRuleResponse -> TestTree
responseCreateRule =
  res
    "CreateRuleResponse"
    "fixture/CreateRuleResponse.proto"
    eLBv2
    (Proxy :: Proxy CreateRule)

responseCreateTargetGroup :: CreateTargetGroupResponse -> TestTree
responseCreateTargetGroup =
  res
    "CreateTargetGroupResponse"
    "fixture/CreateTargetGroupResponse.proto"
    eLBv2
    (Proxy :: Proxy CreateTargetGroup)

responseSetSubnets :: SetSubnetsResponse -> TestTree
responseSetSubnets =
  res
    "SetSubnetsResponse"
    "fixture/SetSubnetsResponse.proto"
    eLBv2
    (Proxy :: Proxy SetSubnets)

responseDeregisterTargets :: DeregisterTargetsResponse -> TestTree
responseDeregisterTargets =
  res
    "DeregisterTargetsResponse"
    "fixture/DeregisterTargetsResponse.proto"
    eLBv2
    (Proxy :: Proxy DeregisterTargets)

responseDeleteListener :: DeleteListenerResponse -> TestTree
responseDeleteListener =
  res
    "DeleteListenerResponse"
    "fixture/DeleteListenerResponse.proto"
    eLBv2
    (Proxy :: Proxy DeleteListener)

responseDeleteTargetGroup :: DeleteTargetGroupResponse -> TestTree
responseDeleteTargetGroup =
  res
    "DeleteTargetGroupResponse"
    "fixture/DeleteTargetGroupResponse.proto"
    eLBv2
    (Proxy :: Proxy DeleteTargetGroup)

responseDescribeLoadBalancers :: DescribeLoadBalancersResponse -> TestTree
responseDescribeLoadBalancers =
  res
    "DescribeLoadBalancersResponse"
    "fixture/DescribeLoadBalancersResponse.proto"
    eLBv2
    (Proxy :: Proxy DescribeLoadBalancers)

responseModifyTargetGroupAttributes :: ModifyTargetGroupAttributesResponse -> TestTree
responseModifyTargetGroupAttributes =
  res
    "ModifyTargetGroupAttributesResponse"
    "fixture/ModifyTargetGroupAttributesResponse.proto"
    eLBv2
    (Proxy :: Proxy ModifyTargetGroupAttributes)

responseModifyListener :: ModifyListenerResponse -> TestTree
responseModifyListener =
  res
    "ModifyListenerResponse"
    "fixture/ModifyListenerResponse.proto"
    eLBv2
    (Proxy :: Proxy ModifyListener)

responseRegisterTargets :: RegisterTargetsResponse -> TestTree
responseRegisterTargets =
  res
    "RegisterTargetsResponse"
    "fixture/RegisterTargetsResponse.proto"
    eLBv2
    (Proxy :: Proxy RegisterTargets)

responseDescribeTargetHealth :: DescribeTargetHealthResponse -> TestTree
responseDescribeTargetHealth =
  res
    "DescribeTargetHealthResponse"
    "fixture/DescribeTargetHealthResponse.proto"
    eLBv2
    (Proxy :: Proxy DescribeTargetHealth)

responseSetRulePriorities :: SetRulePrioritiesResponse -> TestTree
responseSetRulePriorities =
  res
    "SetRulePrioritiesResponse"
    "fixture/SetRulePrioritiesResponse.proto"
    eLBv2
    (Proxy :: Proxy SetRulePriorities)

responseDescribeRules :: DescribeRulesResponse -> TestTree
responseDescribeRules =
  res
    "DescribeRulesResponse"
    "fixture/DescribeRulesResponse.proto"
    eLBv2
    (Proxy :: Proxy DescribeRules)

responseSetSecurityGroups :: SetSecurityGroupsResponse -> TestTree
responseSetSecurityGroups =
  res
    "SetSecurityGroupsResponse"
    "fixture/SetSecurityGroupsResponse.proto"
    eLBv2
    (Proxy :: Proxy SetSecurityGroups)

responseDescribeLoadBalancerAttributes :: DescribeLoadBalancerAttributesResponse -> TestTree
responseDescribeLoadBalancerAttributes =
  res
    "DescribeLoadBalancerAttributesResponse"
    "fixture/DescribeLoadBalancerAttributesResponse.proto"
    eLBv2
    (Proxy :: Proxy DescribeLoadBalancerAttributes)

responseDescribeListenerCertificates :: DescribeListenerCertificatesResponse -> TestTree
responseDescribeListenerCertificates =
  res
    "DescribeListenerCertificatesResponse"
    "fixture/DescribeListenerCertificatesResponse.proto"
    eLBv2
    (Proxy :: Proxy DescribeListenerCertificates)

responseCreateListener :: CreateListenerResponse -> TestTree
responseCreateListener =
  res
    "CreateListenerResponse"
    "fixture/CreateListenerResponse.proto"
    eLBv2
    (Proxy :: Proxy CreateListener)
