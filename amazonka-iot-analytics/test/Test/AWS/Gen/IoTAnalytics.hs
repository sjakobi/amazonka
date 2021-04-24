{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.IoTAnalytics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.IoTAnalytics where

import Data.Proxy
import Network.AWS.IoTAnalytics
import Test.AWS.Fixture
import Test.AWS.IoTAnalytics.Internal
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
--         , requestDescribePipeline $
--             describePipeline
--
--         , requestBatchPutMessage $
--             batchPutMessage
--
--         , requestDescribeLoggingOptions $
--             describeLoggingOptions
--
--         , requestDeleteDatastore $
--             deleteDatastore
--
--         , requestUpdateDatastore $
--             updateDatastore
--
--         , requestCreatePipeline $
--             createPipeline
--
--         , requestCreateDataset $
--             createDataset
--
--         , requestUpdatePipeline $
--             updatePipeline
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDeletePipeline $
--             deletePipeline
--
--         , requestCancelPipelineReprocessing $
--             cancelPipelineReprocessing
--
--         , requestTagResource $
--             tagResource
--
--         , requestSampleChannelData $
--             sampleChannelData
--
--         , requestDescribeDatastore $
--             describeDatastore
--
--         , requestListChannels $
--             listChannels
--
--         , requestDescribeDataset $
--             describeDataset
--
--         , requestCreateDatasetContent $
--             createDatasetContent
--
--         , requestDescribeChannel $
--             describeChannel
--
--         , requestListDatastores $
--             listDatastores
--
--         , requestStartPipelineReprocessing $
--             startPipelineReprocessing
--
--         , requestRunPipelineActivity $
--             runPipelineActivity
--
--         , requestDeleteDataset $
--             deleteDataset
--
--         , requestListDatasets $
--             listDatasets
--
--         , requestCreateDatastore $
--             createDatastore
--
--         , requestListPipelines $
--             listPipelines
--
--         , requestUpdateDataset $
--             updateDataset
--
--         , requestGetDatasetContent $
--             getDatasetContent
--
--         , requestListDatasetContents $
--             listDatasetContents
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
--         , requestPutLoggingOptions $
--             putLoggingOptions
--
--         , requestDeleteDatasetContent $
--             deleteDatasetContent
--
--           ]

--     , testGroup "response"
--         [ responseCreateChannel $
--             createChannelResponse
--
--         , responseDescribePipeline $
--             describePipelineResponse
--
--         , responseBatchPutMessage $
--             batchPutMessageResponse
--
--         , responseDescribeLoggingOptions $
--             describeLoggingOptionsResponse
--
--         , responseDeleteDatastore $
--             deleteDatastoreResponse
--
--         , responseUpdateDatastore $
--             updateDatastoreResponse
--
--         , responseCreatePipeline $
--             createPipelineResponse
--
--         , responseCreateDataset $
--             createDatasetResponse
--
--         , responseUpdatePipeline $
--             updatePipelineResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDeletePipeline $
--             deletePipelineResponse
--
--         , responseCancelPipelineReprocessing $
--             cancelPipelineReprocessingResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseSampleChannelData $
--             sampleChannelDataResponse
--
--         , responseDescribeDatastore $
--             describeDatastoreResponse
--
--         , responseListChannels $
--             listChannelsResponse
--
--         , responseDescribeDataset $
--             describeDatasetResponse
--
--         , responseCreateDatasetContent $
--             createDatasetContentResponse
--
--         , responseDescribeChannel $
--             describeChannelResponse
--
--         , responseListDatastores $
--             listDatastoresResponse
--
--         , responseStartPipelineReprocessing $
--             startPipelineReprocessingResponse
--
--         , responseRunPipelineActivity $
--             runPipelineActivityResponse
--
--         , responseDeleteDataset $
--             deleteDatasetResponse
--
--         , responseListDatasets $
--             listDatasetsResponse
--
--         , responseCreateDatastore $
--             createDatastoreResponse
--
--         , responseListPipelines $
--             listPipelinesResponse
--
--         , responseUpdateDataset $
--             updateDatasetResponse
--
--         , responseGetDatasetContent $
--             getDatasetContentResponse
--
--         , responseListDatasetContents $
--             listDatasetContentsResponse
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
--         , responsePutLoggingOptions $
--             putLoggingOptionsResponse
--
--         , responseDeleteDatasetContent $
--             deleteDatasetContentResponse
--
--           ]
--     ]

-- Requests

requestCreateChannel :: CreateChannel -> TestTree
requestCreateChannel =
  req
    "CreateChannel"
    "fixture/CreateChannel.yaml"

requestDescribePipeline :: DescribePipeline -> TestTree
requestDescribePipeline =
  req
    "DescribePipeline"
    "fixture/DescribePipeline.yaml"

requestBatchPutMessage :: BatchPutMessage -> TestTree
requestBatchPutMessage =
  req
    "BatchPutMessage"
    "fixture/BatchPutMessage.yaml"

requestDescribeLoggingOptions :: DescribeLoggingOptions -> TestTree
requestDescribeLoggingOptions =
  req
    "DescribeLoggingOptions"
    "fixture/DescribeLoggingOptions.yaml"

requestDeleteDatastore :: DeleteDatastore -> TestTree
requestDeleteDatastore =
  req
    "DeleteDatastore"
    "fixture/DeleteDatastore.yaml"

requestUpdateDatastore :: UpdateDatastore -> TestTree
requestUpdateDatastore =
  req
    "UpdateDatastore"
    "fixture/UpdateDatastore.yaml"

requestCreatePipeline :: CreatePipeline -> TestTree
requestCreatePipeline =
  req
    "CreatePipeline"
    "fixture/CreatePipeline.yaml"

requestCreateDataset :: CreateDataset -> TestTree
requestCreateDataset =
  req
    "CreateDataset"
    "fixture/CreateDataset.yaml"

requestUpdatePipeline :: UpdatePipeline -> TestTree
requestUpdatePipeline =
  req
    "UpdatePipeline"
    "fixture/UpdatePipeline.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDeletePipeline :: DeletePipeline -> TestTree
requestDeletePipeline =
  req
    "DeletePipeline"
    "fixture/DeletePipeline.yaml"

requestCancelPipelineReprocessing :: CancelPipelineReprocessing -> TestTree
requestCancelPipelineReprocessing =
  req
    "CancelPipelineReprocessing"
    "fixture/CancelPipelineReprocessing.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestSampleChannelData :: SampleChannelData -> TestTree
requestSampleChannelData =
  req
    "SampleChannelData"
    "fixture/SampleChannelData.yaml"

requestDescribeDatastore :: DescribeDatastore -> TestTree
requestDescribeDatastore =
  req
    "DescribeDatastore"
    "fixture/DescribeDatastore.yaml"

requestListChannels :: ListChannels -> TestTree
requestListChannels =
  req
    "ListChannels"
    "fixture/ListChannels.yaml"

requestDescribeDataset :: DescribeDataset -> TestTree
requestDescribeDataset =
  req
    "DescribeDataset"
    "fixture/DescribeDataset.yaml"

requestCreateDatasetContent :: CreateDatasetContent -> TestTree
requestCreateDatasetContent =
  req
    "CreateDatasetContent"
    "fixture/CreateDatasetContent.yaml"

requestDescribeChannel :: DescribeChannel -> TestTree
requestDescribeChannel =
  req
    "DescribeChannel"
    "fixture/DescribeChannel.yaml"

requestListDatastores :: ListDatastores -> TestTree
requestListDatastores =
  req
    "ListDatastores"
    "fixture/ListDatastores.yaml"

requestStartPipelineReprocessing :: StartPipelineReprocessing -> TestTree
requestStartPipelineReprocessing =
  req
    "StartPipelineReprocessing"
    "fixture/StartPipelineReprocessing.yaml"

requestRunPipelineActivity :: RunPipelineActivity -> TestTree
requestRunPipelineActivity =
  req
    "RunPipelineActivity"
    "fixture/RunPipelineActivity.yaml"

requestDeleteDataset :: DeleteDataset -> TestTree
requestDeleteDataset =
  req
    "DeleteDataset"
    "fixture/DeleteDataset.yaml"

requestListDatasets :: ListDatasets -> TestTree
requestListDatasets =
  req
    "ListDatasets"
    "fixture/ListDatasets.yaml"

requestCreateDatastore :: CreateDatastore -> TestTree
requestCreateDatastore =
  req
    "CreateDatastore"
    "fixture/CreateDatastore.yaml"

requestListPipelines :: ListPipelines -> TestTree
requestListPipelines =
  req
    "ListPipelines"
    "fixture/ListPipelines.yaml"

requestUpdateDataset :: UpdateDataset -> TestTree
requestUpdateDataset =
  req
    "UpdateDataset"
    "fixture/UpdateDataset.yaml"

requestGetDatasetContent :: GetDatasetContent -> TestTree
requestGetDatasetContent =
  req
    "GetDatasetContent"
    "fixture/GetDatasetContent.yaml"

requestListDatasetContents :: ListDatasetContents -> TestTree
requestListDatasetContents =
  req
    "ListDatasetContents"
    "fixture/ListDatasetContents.yaml"

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

requestPutLoggingOptions :: PutLoggingOptions -> TestTree
requestPutLoggingOptions =
  req
    "PutLoggingOptions"
    "fixture/PutLoggingOptions.yaml"

requestDeleteDatasetContent :: DeleteDatasetContent -> TestTree
requestDeleteDatasetContent =
  req
    "DeleteDatasetContent"
    "fixture/DeleteDatasetContent.yaml"

-- Responses

responseCreateChannel :: CreateChannelResponse -> TestTree
responseCreateChannel =
  res
    "CreateChannelResponse"
    "fixture/CreateChannelResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy CreateChannel)

responseDescribePipeline :: DescribePipelineResponse -> TestTree
responseDescribePipeline =
  res
    "DescribePipelineResponse"
    "fixture/DescribePipelineResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy DescribePipeline)

responseBatchPutMessage :: BatchPutMessageResponse -> TestTree
responseBatchPutMessage =
  res
    "BatchPutMessageResponse"
    "fixture/BatchPutMessageResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy BatchPutMessage)

responseDescribeLoggingOptions :: DescribeLoggingOptionsResponse -> TestTree
responseDescribeLoggingOptions =
  res
    "DescribeLoggingOptionsResponse"
    "fixture/DescribeLoggingOptionsResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy DescribeLoggingOptions)

responseDeleteDatastore :: DeleteDatastoreResponse -> TestTree
responseDeleteDatastore =
  res
    "DeleteDatastoreResponse"
    "fixture/DeleteDatastoreResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy DeleteDatastore)

responseUpdateDatastore :: UpdateDatastoreResponse -> TestTree
responseUpdateDatastore =
  res
    "UpdateDatastoreResponse"
    "fixture/UpdateDatastoreResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy UpdateDatastore)

responseCreatePipeline :: CreatePipelineResponse -> TestTree
responseCreatePipeline =
  res
    "CreatePipelineResponse"
    "fixture/CreatePipelineResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy CreatePipeline)

responseCreateDataset :: CreateDatasetResponse -> TestTree
responseCreateDataset =
  res
    "CreateDatasetResponse"
    "fixture/CreateDatasetResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy CreateDataset)

responseUpdatePipeline :: UpdatePipelineResponse -> TestTree
responseUpdatePipeline =
  res
    "UpdatePipelineResponse"
    "fixture/UpdatePipelineResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy UpdatePipeline)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy UntagResource)

responseDeletePipeline :: DeletePipelineResponse -> TestTree
responseDeletePipeline =
  res
    "DeletePipelineResponse"
    "fixture/DeletePipelineResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy DeletePipeline)

responseCancelPipelineReprocessing :: CancelPipelineReprocessingResponse -> TestTree
responseCancelPipelineReprocessing =
  res
    "CancelPipelineReprocessingResponse"
    "fixture/CancelPipelineReprocessingResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy CancelPipelineReprocessing)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy TagResource)

responseSampleChannelData :: SampleChannelDataResponse -> TestTree
responseSampleChannelData =
  res
    "SampleChannelDataResponse"
    "fixture/SampleChannelDataResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy SampleChannelData)

responseDescribeDatastore :: DescribeDatastoreResponse -> TestTree
responseDescribeDatastore =
  res
    "DescribeDatastoreResponse"
    "fixture/DescribeDatastoreResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy DescribeDatastore)

responseListChannels :: ListChannelsResponse -> TestTree
responseListChannels =
  res
    "ListChannelsResponse"
    "fixture/ListChannelsResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy ListChannels)

responseDescribeDataset :: DescribeDatasetResponse -> TestTree
responseDescribeDataset =
  res
    "DescribeDatasetResponse"
    "fixture/DescribeDatasetResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy DescribeDataset)

responseCreateDatasetContent :: CreateDatasetContentResponse -> TestTree
responseCreateDatasetContent =
  res
    "CreateDatasetContentResponse"
    "fixture/CreateDatasetContentResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy CreateDatasetContent)

responseDescribeChannel :: DescribeChannelResponse -> TestTree
responseDescribeChannel =
  res
    "DescribeChannelResponse"
    "fixture/DescribeChannelResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy DescribeChannel)

responseListDatastores :: ListDatastoresResponse -> TestTree
responseListDatastores =
  res
    "ListDatastoresResponse"
    "fixture/ListDatastoresResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy ListDatastores)

responseStartPipelineReprocessing :: StartPipelineReprocessingResponse -> TestTree
responseStartPipelineReprocessing =
  res
    "StartPipelineReprocessingResponse"
    "fixture/StartPipelineReprocessingResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy StartPipelineReprocessing)

responseRunPipelineActivity :: RunPipelineActivityResponse -> TestTree
responseRunPipelineActivity =
  res
    "RunPipelineActivityResponse"
    "fixture/RunPipelineActivityResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy RunPipelineActivity)

responseDeleteDataset :: DeleteDatasetResponse -> TestTree
responseDeleteDataset =
  res
    "DeleteDatasetResponse"
    "fixture/DeleteDatasetResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy DeleteDataset)

responseListDatasets :: ListDatasetsResponse -> TestTree
responseListDatasets =
  res
    "ListDatasetsResponse"
    "fixture/ListDatasetsResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy ListDatasets)

responseCreateDatastore :: CreateDatastoreResponse -> TestTree
responseCreateDatastore =
  res
    "CreateDatastoreResponse"
    "fixture/CreateDatastoreResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy CreateDatastore)

responseListPipelines :: ListPipelinesResponse -> TestTree
responseListPipelines =
  res
    "ListPipelinesResponse"
    "fixture/ListPipelinesResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy ListPipelines)

responseUpdateDataset :: UpdateDatasetResponse -> TestTree
responseUpdateDataset =
  res
    "UpdateDatasetResponse"
    "fixture/UpdateDatasetResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy UpdateDataset)

responseGetDatasetContent :: GetDatasetContentResponse -> TestTree
responseGetDatasetContent =
  res
    "GetDatasetContentResponse"
    "fixture/GetDatasetContentResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy GetDatasetContent)

responseListDatasetContents :: ListDatasetContentsResponse -> TestTree
responseListDatasetContents =
  res
    "ListDatasetContentsResponse"
    "fixture/ListDatasetContentsResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy ListDatasetContents)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy ListTagsForResource)

responseDeleteChannel :: DeleteChannelResponse -> TestTree
responseDeleteChannel =
  res
    "DeleteChannelResponse"
    "fixture/DeleteChannelResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy DeleteChannel)

responseUpdateChannel :: UpdateChannelResponse -> TestTree
responseUpdateChannel =
  res
    "UpdateChannelResponse"
    "fixture/UpdateChannelResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy UpdateChannel)

responsePutLoggingOptions :: PutLoggingOptionsResponse -> TestTree
responsePutLoggingOptions =
  res
    "PutLoggingOptionsResponse"
    "fixture/PutLoggingOptionsResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy PutLoggingOptions)

responseDeleteDatasetContent :: DeleteDatasetContentResponse -> TestTree
responseDeleteDatasetContent =
  res
    "DeleteDatasetContentResponse"
    "fixture/DeleteDatasetContentResponse.proto"
    ioTAnalytics
    (Proxy :: Proxy DeleteDatasetContent)
