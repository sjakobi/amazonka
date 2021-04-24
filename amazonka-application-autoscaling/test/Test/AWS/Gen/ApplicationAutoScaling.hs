{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.ApplicationAutoScaling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.ApplicationAutoScaling where

import Data.Proxy
import Network.AWS.ApplicationAutoScaling
import Test.AWS.ApplicationAutoScaling.Internal
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
--         [ requestRegisterScalableTarget $
--             registerScalableTarget
--
--         , requestPutScalingPolicy $
--             putScalingPolicy
--
--         , requestDescribeScheduledActions $
--             describeScheduledActions
--
--         , requestDescribeScalingPolicies $
--             describeScalingPolicies
--
--         , requestDeregisterScalableTarget $
--             deregisterScalableTarget
--
--         , requestDeleteScheduledAction $
--             deleteScheduledAction
--
--         , requestDescribeScalingActivities $
--             describeScalingActivities
--
--         , requestDescribeScalableTargets $
--             describeScalableTargets
--
--         , requestDeleteScalingPolicy $
--             deleteScalingPolicy
--
--         , requestPutScheduledAction $
--             putScheduledAction
--
--           ]

--     , testGroup "response"
--         [ responseRegisterScalableTarget $
--             registerScalableTargetResponse
--
--         , responsePutScalingPolicy $
--             putScalingPolicyResponse
--
--         , responseDescribeScheduledActions $
--             describeScheduledActionsResponse
--
--         , responseDescribeScalingPolicies $
--             describeScalingPoliciesResponse
--
--         , responseDeregisterScalableTarget $
--             deregisterScalableTargetResponse
--
--         , responseDeleteScheduledAction $
--             deleteScheduledActionResponse
--
--         , responseDescribeScalingActivities $
--             describeScalingActivitiesResponse
--
--         , responseDescribeScalableTargets $
--             describeScalableTargetsResponse
--
--         , responseDeleteScalingPolicy $
--             deleteScalingPolicyResponse
--
--         , responsePutScheduledAction $
--             putScheduledActionResponse
--
--           ]
--     ]

-- Requests

requestRegisterScalableTarget :: RegisterScalableTarget -> TestTree
requestRegisterScalableTarget =
  req
    "RegisterScalableTarget"
    "fixture/RegisterScalableTarget.yaml"

requestPutScalingPolicy :: PutScalingPolicy -> TestTree
requestPutScalingPolicy =
  req
    "PutScalingPolicy"
    "fixture/PutScalingPolicy.yaml"

requestDescribeScheduledActions :: DescribeScheduledActions -> TestTree
requestDescribeScheduledActions =
  req
    "DescribeScheduledActions"
    "fixture/DescribeScheduledActions.yaml"

requestDescribeScalingPolicies :: DescribeScalingPolicies -> TestTree
requestDescribeScalingPolicies =
  req
    "DescribeScalingPolicies"
    "fixture/DescribeScalingPolicies.yaml"

requestDeregisterScalableTarget :: DeregisterScalableTarget -> TestTree
requestDeregisterScalableTarget =
  req
    "DeregisterScalableTarget"
    "fixture/DeregisterScalableTarget.yaml"

requestDeleteScheduledAction :: DeleteScheduledAction -> TestTree
requestDeleteScheduledAction =
  req
    "DeleteScheduledAction"
    "fixture/DeleteScheduledAction.yaml"

requestDescribeScalingActivities :: DescribeScalingActivities -> TestTree
requestDescribeScalingActivities =
  req
    "DescribeScalingActivities"
    "fixture/DescribeScalingActivities.yaml"

requestDescribeScalableTargets :: DescribeScalableTargets -> TestTree
requestDescribeScalableTargets =
  req
    "DescribeScalableTargets"
    "fixture/DescribeScalableTargets.yaml"

requestDeleteScalingPolicy :: DeleteScalingPolicy -> TestTree
requestDeleteScalingPolicy =
  req
    "DeleteScalingPolicy"
    "fixture/DeleteScalingPolicy.yaml"

requestPutScheduledAction :: PutScheduledAction -> TestTree
requestPutScheduledAction =
  req
    "PutScheduledAction"
    "fixture/PutScheduledAction.yaml"

-- Responses

responseRegisterScalableTarget :: RegisterScalableTargetResponse -> TestTree
responseRegisterScalableTarget =
  res
    "RegisterScalableTargetResponse"
    "fixture/RegisterScalableTargetResponse.proto"
    applicationAutoScaling
    (Proxy :: Proxy RegisterScalableTarget)

responsePutScalingPolicy :: PutScalingPolicyResponse -> TestTree
responsePutScalingPolicy =
  res
    "PutScalingPolicyResponse"
    "fixture/PutScalingPolicyResponse.proto"
    applicationAutoScaling
    (Proxy :: Proxy PutScalingPolicy)

responseDescribeScheduledActions :: DescribeScheduledActionsResponse -> TestTree
responseDescribeScheduledActions =
  res
    "DescribeScheduledActionsResponse"
    "fixture/DescribeScheduledActionsResponse.proto"
    applicationAutoScaling
    (Proxy :: Proxy DescribeScheduledActions)

responseDescribeScalingPolicies :: DescribeScalingPoliciesResponse -> TestTree
responseDescribeScalingPolicies =
  res
    "DescribeScalingPoliciesResponse"
    "fixture/DescribeScalingPoliciesResponse.proto"
    applicationAutoScaling
    (Proxy :: Proxy DescribeScalingPolicies)

responseDeregisterScalableTarget :: DeregisterScalableTargetResponse -> TestTree
responseDeregisterScalableTarget =
  res
    "DeregisterScalableTargetResponse"
    "fixture/DeregisterScalableTargetResponse.proto"
    applicationAutoScaling
    (Proxy :: Proxy DeregisterScalableTarget)

responseDeleteScheduledAction :: DeleteScheduledActionResponse -> TestTree
responseDeleteScheduledAction =
  res
    "DeleteScheduledActionResponse"
    "fixture/DeleteScheduledActionResponse.proto"
    applicationAutoScaling
    (Proxy :: Proxy DeleteScheduledAction)

responseDescribeScalingActivities :: DescribeScalingActivitiesResponse -> TestTree
responseDescribeScalingActivities =
  res
    "DescribeScalingActivitiesResponse"
    "fixture/DescribeScalingActivitiesResponse.proto"
    applicationAutoScaling
    (Proxy :: Proxy DescribeScalingActivities)

responseDescribeScalableTargets :: DescribeScalableTargetsResponse -> TestTree
responseDescribeScalableTargets =
  res
    "DescribeScalableTargetsResponse"
    "fixture/DescribeScalableTargetsResponse.proto"
    applicationAutoScaling
    (Proxy :: Proxy DescribeScalableTargets)

responseDeleteScalingPolicy :: DeleteScalingPolicyResponse -> TestTree
responseDeleteScalingPolicy =
  res
    "DeleteScalingPolicyResponse"
    "fixture/DeleteScalingPolicyResponse.proto"
    applicationAutoScaling
    (Proxy :: Proxy DeleteScalingPolicy)

responsePutScheduledAction :: PutScheduledActionResponse -> TestTree
responsePutScheduledAction =
  res
    "PutScheduledActionResponse"
    "fixture/PutScheduledActionResponse.proto"
    applicationAutoScaling
    (Proxy :: Proxy PutScheduledAction)
