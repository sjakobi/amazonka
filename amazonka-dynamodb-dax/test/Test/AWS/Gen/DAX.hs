{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.DAX
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.DAX where

import Data.Proxy
import Network.AWS.DAX
import Test.AWS.DAX.Internal
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
--         [ requestDescribeParameters $
--             describeParameters
--
--         , requestDescribeDefaultParameters $
--             describeDefaultParameters
--
--         , requestDescribeClusters $
--             describeClusters
--
--         , requestCreateCluster $
--             createCluster
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDecreaseReplicationFactor $
--             decreaseReplicationFactor
--
--         , requestDescribeParameterGroups $
--             describeParameterGroups
--
--         , requestTagResource $
--             tagResource
--
--         , requestIncreaseReplicationFactor $
--             increaseReplicationFactor
--
--         , requestDescribeEvents $
--             describeEvents
--
--         , requestDeleteParameterGroup $
--             deleteParameterGroup
--
--         , requestUpdateParameterGroup $
--             updateParameterGroup
--
--         , requestRebootNode $
--             rebootNode
--
--         , requestDeleteCluster $
--             deleteCluster
--
--         , requestUpdateCluster $
--             updateCluster
--
--         , requestListTags $
--             listTags
--
--         , requestCreateSubnetGroup $
--             createSubnetGroup
--
--         , requestUpdateSubnetGroup $
--             updateSubnetGroup
--
--         , requestDeleteSubnetGroup $
--             deleteSubnetGroup
--
--         , requestDescribeSubnetGroups $
--             describeSubnetGroups
--
--         , requestCreateParameterGroup $
--             createParameterGroup
--
--           ]

--     , testGroup "response"
--         [ responseDescribeParameters $
--             describeParametersResponse
--
--         , responseDescribeDefaultParameters $
--             describeDefaultParametersResponse
--
--         , responseDescribeClusters $
--             describeClustersResponse
--
--         , responseCreateCluster $
--             createClusterResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDecreaseReplicationFactor $
--             decreaseReplicationFactorResponse
--
--         , responseDescribeParameterGroups $
--             describeParameterGroupsResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseIncreaseReplicationFactor $
--             increaseReplicationFactorResponse
--
--         , responseDescribeEvents $
--             describeEventsResponse
--
--         , responseDeleteParameterGroup $
--             deleteParameterGroupResponse
--
--         , responseUpdateParameterGroup $
--             updateParameterGroupResponse
--
--         , responseRebootNode $
--             rebootNodeResponse
--
--         , responseDeleteCluster $
--             deleteClusterResponse
--
--         , responseUpdateCluster $
--             updateClusterResponse
--
--         , responseListTags $
--             listTagsResponse
--
--         , responseCreateSubnetGroup $
--             createSubnetGroupResponse
--
--         , responseUpdateSubnetGroup $
--             updateSubnetGroupResponse
--
--         , responseDeleteSubnetGroup $
--             deleteSubnetGroupResponse
--
--         , responseDescribeSubnetGroups $
--             describeSubnetGroupsResponse
--
--         , responseCreateParameterGroup $
--             createParameterGroupResponse
--
--           ]
--     ]

-- Requests

requestDescribeParameters :: DescribeParameters -> TestTree
requestDescribeParameters =
  req
    "DescribeParameters"
    "fixture/DescribeParameters.yaml"

requestDescribeDefaultParameters :: DescribeDefaultParameters -> TestTree
requestDescribeDefaultParameters =
  req
    "DescribeDefaultParameters"
    "fixture/DescribeDefaultParameters.yaml"

requestDescribeClusters :: DescribeClusters -> TestTree
requestDescribeClusters =
  req
    "DescribeClusters"
    "fixture/DescribeClusters.yaml"

requestCreateCluster :: CreateCluster -> TestTree
requestCreateCluster =
  req
    "CreateCluster"
    "fixture/CreateCluster.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDecreaseReplicationFactor :: DecreaseReplicationFactor -> TestTree
requestDecreaseReplicationFactor =
  req
    "DecreaseReplicationFactor"
    "fixture/DecreaseReplicationFactor.yaml"

requestDescribeParameterGroups :: DescribeParameterGroups -> TestTree
requestDescribeParameterGroups =
  req
    "DescribeParameterGroups"
    "fixture/DescribeParameterGroups.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestIncreaseReplicationFactor :: IncreaseReplicationFactor -> TestTree
requestIncreaseReplicationFactor =
  req
    "IncreaseReplicationFactor"
    "fixture/IncreaseReplicationFactor.yaml"

requestDescribeEvents :: DescribeEvents -> TestTree
requestDescribeEvents =
  req
    "DescribeEvents"
    "fixture/DescribeEvents.yaml"

requestDeleteParameterGroup :: DeleteParameterGroup -> TestTree
requestDeleteParameterGroup =
  req
    "DeleteParameterGroup"
    "fixture/DeleteParameterGroup.yaml"

requestUpdateParameterGroup :: UpdateParameterGroup -> TestTree
requestUpdateParameterGroup =
  req
    "UpdateParameterGroup"
    "fixture/UpdateParameterGroup.yaml"

requestRebootNode :: RebootNode -> TestTree
requestRebootNode =
  req
    "RebootNode"
    "fixture/RebootNode.yaml"

requestDeleteCluster :: DeleteCluster -> TestTree
requestDeleteCluster =
  req
    "DeleteCluster"
    "fixture/DeleteCluster.yaml"

requestUpdateCluster :: UpdateCluster -> TestTree
requestUpdateCluster =
  req
    "UpdateCluster"
    "fixture/UpdateCluster.yaml"

requestListTags :: ListTags -> TestTree
requestListTags =
  req
    "ListTags"
    "fixture/ListTags.yaml"

requestCreateSubnetGroup :: CreateSubnetGroup -> TestTree
requestCreateSubnetGroup =
  req
    "CreateSubnetGroup"
    "fixture/CreateSubnetGroup.yaml"

requestUpdateSubnetGroup :: UpdateSubnetGroup -> TestTree
requestUpdateSubnetGroup =
  req
    "UpdateSubnetGroup"
    "fixture/UpdateSubnetGroup.yaml"

requestDeleteSubnetGroup :: DeleteSubnetGroup -> TestTree
requestDeleteSubnetGroup =
  req
    "DeleteSubnetGroup"
    "fixture/DeleteSubnetGroup.yaml"

requestDescribeSubnetGroups :: DescribeSubnetGroups -> TestTree
requestDescribeSubnetGroups =
  req
    "DescribeSubnetGroups"
    "fixture/DescribeSubnetGroups.yaml"

requestCreateParameterGroup :: CreateParameterGroup -> TestTree
requestCreateParameterGroup =
  req
    "CreateParameterGroup"
    "fixture/CreateParameterGroup.yaml"

-- Responses

responseDescribeParameters :: DescribeParametersResponse -> TestTree
responseDescribeParameters =
  res
    "DescribeParametersResponse"
    "fixture/DescribeParametersResponse.proto"
    dax
    (Proxy :: Proxy DescribeParameters)

responseDescribeDefaultParameters :: DescribeDefaultParametersResponse -> TestTree
responseDescribeDefaultParameters =
  res
    "DescribeDefaultParametersResponse"
    "fixture/DescribeDefaultParametersResponse.proto"
    dax
    (Proxy :: Proxy DescribeDefaultParameters)

responseDescribeClusters :: DescribeClustersResponse -> TestTree
responseDescribeClusters =
  res
    "DescribeClustersResponse"
    "fixture/DescribeClustersResponse.proto"
    dax
    (Proxy :: Proxy DescribeClusters)

responseCreateCluster :: CreateClusterResponse -> TestTree
responseCreateCluster =
  res
    "CreateClusterResponse"
    "fixture/CreateClusterResponse.proto"
    dax
    (Proxy :: Proxy CreateCluster)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    dax
    (Proxy :: Proxy UntagResource)

responseDecreaseReplicationFactor :: DecreaseReplicationFactorResponse -> TestTree
responseDecreaseReplicationFactor =
  res
    "DecreaseReplicationFactorResponse"
    "fixture/DecreaseReplicationFactorResponse.proto"
    dax
    (Proxy :: Proxy DecreaseReplicationFactor)

responseDescribeParameterGroups :: DescribeParameterGroupsResponse -> TestTree
responseDescribeParameterGroups =
  res
    "DescribeParameterGroupsResponse"
    "fixture/DescribeParameterGroupsResponse.proto"
    dax
    (Proxy :: Proxy DescribeParameterGroups)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    dax
    (Proxy :: Proxy TagResource)

responseIncreaseReplicationFactor :: IncreaseReplicationFactorResponse -> TestTree
responseIncreaseReplicationFactor =
  res
    "IncreaseReplicationFactorResponse"
    "fixture/IncreaseReplicationFactorResponse.proto"
    dax
    (Proxy :: Proxy IncreaseReplicationFactor)

responseDescribeEvents :: DescribeEventsResponse -> TestTree
responseDescribeEvents =
  res
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse.proto"
    dax
    (Proxy :: Proxy DescribeEvents)

responseDeleteParameterGroup :: DeleteParameterGroupResponse -> TestTree
responseDeleteParameterGroup =
  res
    "DeleteParameterGroupResponse"
    "fixture/DeleteParameterGroupResponse.proto"
    dax
    (Proxy :: Proxy DeleteParameterGroup)

responseUpdateParameterGroup :: UpdateParameterGroupResponse -> TestTree
responseUpdateParameterGroup =
  res
    "UpdateParameterGroupResponse"
    "fixture/UpdateParameterGroupResponse.proto"
    dax
    (Proxy :: Proxy UpdateParameterGroup)

responseRebootNode :: RebootNodeResponse -> TestTree
responseRebootNode =
  res
    "RebootNodeResponse"
    "fixture/RebootNodeResponse.proto"
    dax
    (Proxy :: Proxy RebootNode)

responseDeleteCluster :: DeleteClusterResponse -> TestTree
responseDeleteCluster =
  res
    "DeleteClusterResponse"
    "fixture/DeleteClusterResponse.proto"
    dax
    (Proxy :: Proxy DeleteCluster)

responseUpdateCluster :: UpdateClusterResponse -> TestTree
responseUpdateCluster =
  res
    "UpdateClusterResponse"
    "fixture/UpdateClusterResponse.proto"
    dax
    (Proxy :: Proxy UpdateCluster)

responseListTags :: ListTagsResponse -> TestTree
responseListTags =
  res
    "ListTagsResponse"
    "fixture/ListTagsResponse.proto"
    dax
    (Proxy :: Proxy ListTags)

responseCreateSubnetGroup :: CreateSubnetGroupResponse -> TestTree
responseCreateSubnetGroup =
  res
    "CreateSubnetGroupResponse"
    "fixture/CreateSubnetGroupResponse.proto"
    dax
    (Proxy :: Proxy CreateSubnetGroup)

responseUpdateSubnetGroup :: UpdateSubnetGroupResponse -> TestTree
responseUpdateSubnetGroup =
  res
    "UpdateSubnetGroupResponse"
    "fixture/UpdateSubnetGroupResponse.proto"
    dax
    (Proxy :: Proxy UpdateSubnetGroup)

responseDeleteSubnetGroup :: DeleteSubnetGroupResponse -> TestTree
responseDeleteSubnetGroup =
  res
    "DeleteSubnetGroupResponse"
    "fixture/DeleteSubnetGroupResponse.proto"
    dax
    (Proxy :: Proxy DeleteSubnetGroup)

responseDescribeSubnetGroups :: DescribeSubnetGroupsResponse -> TestTree
responseDescribeSubnetGroups =
  res
    "DescribeSubnetGroupsResponse"
    "fixture/DescribeSubnetGroupsResponse.proto"
    dax
    (Proxy :: Proxy DescribeSubnetGroups)

responseCreateParameterGroup :: CreateParameterGroupResponse -> TestTree
responseCreateParameterGroup =
  res
    "CreateParameterGroupResponse"
    "fixture/CreateParameterGroupResponse.proto"
    dax
    (Proxy :: Proxy CreateParameterGroup)
