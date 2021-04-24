{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.MediaPackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.MediaPackage where

import Data.Proxy
import Network.AWS.MediaPackage
import Test.AWS.Fixture
import Test.AWS.MediaPackage.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCreateChannel $
--             createChannel
--
--         , requestCreateHarvestJob $
--             createHarvestJob
--
--         , requestUpdateOriginEndpoint $
--             updateOriginEndpoint
--
--         , requestDeleteOriginEndpoint $
--             deleteOriginEndpoint
--
--         , requestListOriginEndpoints $
--             listOriginEndpoints
--
--         , requestCreateOriginEndpoint $
--             createOriginEndpoint
--
--         , requestUntagResource $
--             untagResource
--
--         , requestTagResource $
--             tagResource
--
--         , requestDescribeOriginEndpoint $
--             describeOriginEndpoint
--
--         , requestListChannels $
--             listChannels
--
--         , requestConfigureLogs $
--             configureLogs
--
--         , requestListHarvestJobs $
--             listHarvestJobs
--
--         , requestDescribeChannel $
--             describeChannel
--
--         , requestRotateIngestEndpointCredentials $
--             rotateIngestEndpointCredentials
--
--         , requestDescribeHarvestJob $
--             describeHarvestJob
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDeleteChannel $
--             deleteChannel
--
--         , requestUpdateChannel $
--             updateChannel
--
--           ]

--     , testGroup "response"
--         [ responseCreateChannel $
--             createChannelResponse
--
--         , responseCreateHarvestJob $
--             createHarvestJobResponse
--
--         , responseUpdateOriginEndpoint $
--             updateOriginEndpointResponse
--
--         , responseDeleteOriginEndpoint $
--             deleteOriginEndpointResponse
--
--         , responseListOriginEndpoints $
--             listOriginEndpointsResponse
--
--         , responseCreateOriginEndpoint $
--             createOriginEndpointResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseDescribeOriginEndpoint $
--             describeOriginEndpointResponse
--
--         , responseListChannels $
--             listChannelsResponse
--
--         , responseConfigureLogs $
--             configureLogsResponse
--
--         , responseListHarvestJobs $
--             listHarvestJobsResponse
--
--         , responseDescribeChannel $
--             describeChannelResponse
--
--         , responseRotateIngestEndpointCredentials $
--             rotateIngestEndpointCredentialsResponse
--
--         , responseDescribeHarvestJob $
--             describeHarvestJobResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDeleteChannel $
--             deleteChannelResponse
--
--         , responseUpdateChannel $
--             updateChannelResponse
--
--           ]
--     ]

-- Requests

requestCreateChannel :: CreateChannel -> TestTree
requestCreateChannel =
  req
    "CreateChannel"
    "fixture/CreateChannel.yaml"

requestCreateHarvestJob :: CreateHarvestJob -> TestTree
requestCreateHarvestJob =
  req
    "CreateHarvestJob"
    "fixture/CreateHarvestJob.yaml"

requestUpdateOriginEndpoint :: UpdateOriginEndpoint -> TestTree
requestUpdateOriginEndpoint =
  req
    "UpdateOriginEndpoint"
    "fixture/UpdateOriginEndpoint.yaml"

requestDeleteOriginEndpoint :: DeleteOriginEndpoint -> TestTree
requestDeleteOriginEndpoint =
  req
    "DeleteOriginEndpoint"
    "fixture/DeleteOriginEndpoint.yaml"

requestListOriginEndpoints :: ListOriginEndpoints -> TestTree
requestListOriginEndpoints =
  req
    "ListOriginEndpoints"
    "fixture/ListOriginEndpoints.yaml"

requestCreateOriginEndpoint :: CreateOriginEndpoint -> TestTree
requestCreateOriginEndpoint =
  req
    "CreateOriginEndpoint"
    "fixture/CreateOriginEndpoint.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestDescribeOriginEndpoint :: DescribeOriginEndpoint -> TestTree
requestDescribeOriginEndpoint =
  req
    "DescribeOriginEndpoint"
    "fixture/DescribeOriginEndpoint.yaml"

requestListChannels :: ListChannels -> TestTree
requestListChannels =
  req
    "ListChannels"
    "fixture/ListChannels.yaml"

requestConfigureLogs :: ConfigureLogs -> TestTree
requestConfigureLogs =
  req
    "ConfigureLogs"
    "fixture/ConfigureLogs.yaml"

requestListHarvestJobs :: ListHarvestJobs -> TestTree
requestListHarvestJobs =
  req
    "ListHarvestJobs"
    "fixture/ListHarvestJobs.yaml"

requestDescribeChannel :: DescribeChannel -> TestTree
requestDescribeChannel =
  req
    "DescribeChannel"
    "fixture/DescribeChannel.yaml"

requestRotateIngestEndpointCredentials :: RotateIngestEndpointCredentials -> TestTree
requestRotateIngestEndpointCredentials =
  req
    "RotateIngestEndpointCredentials"
    "fixture/RotateIngestEndpointCredentials.yaml"

requestDescribeHarvestJob :: DescribeHarvestJob -> TestTree
requestDescribeHarvestJob =
  req
    "DescribeHarvestJob"
    "fixture/DescribeHarvestJob.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteChannel :: DeleteChannel -> TestTree
requestDeleteChannel =
  req
    "DeleteChannel"
    "fixture/DeleteChannel.yaml"

requestUpdateChannel :: UpdateChannel -> TestTree
requestUpdateChannel =
  req
    "UpdateChannel"
    "fixture/UpdateChannel.yaml"

-- Responses

responseCreateChannel :: CreateChannelResponse -> TestTree
responseCreateChannel =
  res
    "CreateChannelResponse"
    "fixture/CreateChannelResponse.proto"
    mediaPackage
    (Proxy :: Proxy CreateChannel)

responseCreateHarvestJob :: CreateHarvestJobResponse -> TestTree
responseCreateHarvestJob =
  res
    "CreateHarvestJobResponse"
    "fixture/CreateHarvestJobResponse.proto"
    mediaPackage
    (Proxy :: Proxy CreateHarvestJob)

responseUpdateOriginEndpoint :: UpdateOriginEndpointResponse -> TestTree
responseUpdateOriginEndpoint =
  res
    "UpdateOriginEndpointResponse"
    "fixture/UpdateOriginEndpointResponse.proto"
    mediaPackage
    (Proxy :: Proxy UpdateOriginEndpoint)

responseDeleteOriginEndpoint :: DeleteOriginEndpointResponse -> TestTree
responseDeleteOriginEndpoint =
  res
    "DeleteOriginEndpointResponse"
    "fixture/DeleteOriginEndpointResponse.proto"
    mediaPackage
    (Proxy :: Proxy DeleteOriginEndpoint)

responseListOriginEndpoints :: ListOriginEndpointsResponse -> TestTree
responseListOriginEndpoints =
  res
    "ListOriginEndpointsResponse"
    "fixture/ListOriginEndpointsResponse.proto"
    mediaPackage
    (Proxy :: Proxy ListOriginEndpoints)

responseCreateOriginEndpoint :: CreateOriginEndpointResponse -> TestTree
responseCreateOriginEndpoint =
  res
    "CreateOriginEndpointResponse"
    "fixture/CreateOriginEndpointResponse.proto"
    mediaPackage
    (Proxy :: Proxy CreateOriginEndpoint)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    mediaPackage
    (Proxy :: Proxy UntagResource)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    mediaPackage
    (Proxy :: Proxy TagResource)

responseDescribeOriginEndpoint :: DescribeOriginEndpointResponse -> TestTree
responseDescribeOriginEndpoint =
  res
    "DescribeOriginEndpointResponse"
    "fixture/DescribeOriginEndpointResponse.proto"
    mediaPackage
    (Proxy :: Proxy DescribeOriginEndpoint)

responseListChannels :: ListChannelsResponse -> TestTree
responseListChannels =
  res
    "ListChannelsResponse"
    "fixture/ListChannelsResponse.proto"
    mediaPackage
    (Proxy :: Proxy ListChannels)

responseConfigureLogs :: ConfigureLogsResponse -> TestTree
responseConfigureLogs =
  res
    "ConfigureLogsResponse"
    "fixture/ConfigureLogsResponse.proto"
    mediaPackage
    (Proxy :: Proxy ConfigureLogs)

responseListHarvestJobs :: ListHarvestJobsResponse -> TestTree
responseListHarvestJobs =
  res
    "ListHarvestJobsResponse"
    "fixture/ListHarvestJobsResponse.proto"
    mediaPackage
    (Proxy :: Proxy ListHarvestJobs)

responseDescribeChannel :: DescribeChannelResponse -> TestTree
responseDescribeChannel =
  res
    "DescribeChannelResponse"
    "fixture/DescribeChannelResponse.proto"
    mediaPackage
    (Proxy :: Proxy DescribeChannel)

responseRotateIngestEndpointCredentials :: RotateIngestEndpointCredentialsResponse -> TestTree
responseRotateIngestEndpointCredentials =
  res
    "RotateIngestEndpointCredentialsResponse"
    "fixture/RotateIngestEndpointCredentialsResponse.proto"
    mediaPackage
    (Proxy :: Proxy RotateIngestEndpointCredentials)

responseDescribeHarvestJob :: DescribeHarvestJobResponse -> TestTree
responseDescribeHarvestJob =
  res
    "DescribeHarvestJobResponse"
    "fixture/DescribeHarvestJobResponse.proto"
    mediaPackage
    (Proxy :: Proxy DescribeHarvestJob)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    mediaPackage
    (Proxy :: Proxy ListTagsForResource)

responseDeleteChannel :: DeleteChannelResponse -> TestTree
responseDeleteChannel =
  res
    "DeleteChannelResponse"
    "fixture/DeleteChannelResponse.proto"
    mediaPackage
    (Proxy :: Proxy DeleteChannel)

responseUpdateChannel :: UpdateChannelResponse -> TestTree
responseUpdateChannel =
  res
    "UpdateChannelResponse"
    "fixture/UpdateChannelResponse.proto"
    mediaPackage
    (Proxy :: Proxy UpdateChannel)
