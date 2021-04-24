{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Kinesis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Kinesis where

import Data.Proxy
import Network.AWS.Kinesis
import Test.AWS.Fixture
import Test.AWS.Kinesis.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestSubscribeToShard $
--             subscribeToShard
--
--         , requestAddTagsToStream $
--             addTagsToStream
--
--         , requestListTagsForStream $
--             listTagsForStream
--
--         , requestIncreaseStreamRetentionPeriod $
--             increaseStreamRetentionPeriod
--
--         , requestDisableEnhancedMonitoring $
--             disableEnhancedMonitoring
--
--         , requestSplitShard $
--             splitShard
--
--         , requestListStreamConsumers $
--             listStreamConsumers
--
--         , requestDescribeLimits $
--             describeLimits
--
--         , requestStopStreamEncryption $
--             stopStreamEncryption
--
--         , requestRegisterStreamConsumer $
--             registerStreamConsumer
--
--         , requestStartStreamEncryption $
--             startStreamEncryption
--
--         , requestEnableEnhancedMonitoring $
--             enableEnhancedMonitoring
--
--         , requestGetRecords $
--             getRecords
--
--         , requestGetShardIterator $
--             getShardIterator
--
--         , requestListShards $
--             listShards
--
--         , requestDeleteStream $
--             deleteStream
--
--         , requestRemoveTagsFromStream $
--             removeTagsFromStream
--
--         , requestDescribeStreamSummary $
--             describeStreamSummary
--
--         , requestDeregisterStreamConsumer $
--             deregisterStreamConsumer
--
--         , requestPutRecords $
--             putRecords
--
--         , requestMergeShards $
--             mergeShards
--
--         , requestDescribeStreamConsumer $
--             describeStreamConsumer
--
--         , requestDecreaseStreamRetentionPeriod $
--             decreaseStreamRetentionPeriod
--
--         , requestPutRecord $
--             putRecord
--
--         , requestDescribeStream $
--             describeStream
--
--         , requestUpdateShardCount $
--             updateShardCount
--
--         , requestCreateStream $
--             createStream
--
--         , requestListStreams $
--             listStreams
--
--           ]

--     , testGroup "response"
--         [ responseSubscribeToShard $
--             subscribeToShardResponse
--
--         , responseAddTagsToStream $
--             addTagsToStreamResponse
--
--         , responseListTagsForStream $
--             listTagsForStreamResponse
--
--         , responseIncreaseStreamRetentionPeriod $
--             increaseStreamRetentionPeriodResponse
--
--         , responseDisableEnhancedMonitoring $
--             enhancedMonitoringOutput
--
--         , responseSplitShard $
--             splitShardResponse
--
--         , responseListStreamConsumers $
--             listStreamConsumersResponse
--
--         , responseDescribeLimits $
--             describeLimitsResponse
--
--         , responseStopStreamEncryption $
--             stopStreamEncryptionResponse
--
--         , responseRegisterStreamConsumer $
--             registerStreamConsumerResponse
--
--         , responseStartStreamEncryption $
--             startStreamEncryptionResponse
--
--         , responseEnableEnhancedMonitoring $
--             enhancedMonitoringOutput
--
--         , responseGetRecords $
--             getRecordsResponse
--
--         , responseGetShardIterator $
--             getShardIteratorResponse
--
--         , responseListShards $
--             listShardsResponse
--
--         , responseDeleteStream $
--             deleteStreamResponse
--
--         , responseRemoveTagsFromStream $
--             removeTagsFromStreamResponse
--
--         , responseDescribeStreamSummary $
--             describeStreamSummaryResponse
--
--         , responseDeregisterStreamConsumer $
--             deregisterStreamConsumerResponse
--
--         , responsePutRecords $
--             putRecordsResponse
--
--         , responseMergeShards $
--             mergeShardsResponse
--
--         , responseDescribeStreamConsumer $
--             describeStreamConsumerResponse
--
--         , responseDecreaseStreamRetentionPeriod $
--             decreaseStreamRetentionPeriodResponse
--
--         , responsePutRecord $
--             putRecordResponse
--
--         , responseDescribeStream $
--             describeStreamResponse
--
--         , responseUpdateShardCount $
--             updateShardCountResponse
--
--         , responseCreateStream $
--             createStreamResponse
--
--         , responseListStreams $
--             listStreamsResponse
--
--           ]
--     ]

-- Requests

requestSubscribeToShard :: SubscribeToShard -> TestTree
requestSubscribeToShard =
  req
    "SubscribeToShard"
    "fixture/SubscribeToShard.yaml"

requestAddTagsToStream :: AddTagsToStream -> TestTree
requestAddTagsToStream =
  req
    "AddTagsToStream"
    "fixture/AddTagsToStream.yaml"

requestListTagsForStream :: ListTagsForStream -> TestTree
requestListTagsForStream =
  req
    "ListTagsForStream"
    "fixture/ListTagsForStream.yaml"

requestIncreaseStreamRetentionPeriod :: IncreaseStreamRetentionPeriod -> TestTree
requestIncreaseStreamRetentionPeriod =
  req
    "IncreaseStreamRetentionPeriod"
    "fixture/IncreaseStreamRetentionPeriod.yaml"

requestDisableEnhancedMonitoring :: DisableEnhancedMonitoring -> TestTree
requestDisableEnhancedMonitoring =
  req
    "DisableEnhancedMonitoring"
    "fixture/DisableEnhancedMonitoring.yaml"

requestSplitShard :: SplitShard -> TestTree
requestSplitShard =
  req
    "SplitShard"
    "fixture/SplitShard.yaml"

requestListStreamConsumers :: ListStreamConsumers -> TestTree
requestListStreamConsumers =
  req
    "ListStreamConsumers"
    "fixture/ListStreamConsumers.yaml"

requestDescribeLimits :: DescribeLimits -> TestTree
requestDescribeLimits =
  req
    "DescribeLimits"
    "fixture/DescribeLimits.yaml"

requestStopStreamEncryption :: StopStreamEncryption -> TestTree
requestStopStreamEncryption =
  req
    "StopStreamEncryption"
    "fixture/StopStreamEncryption.yaml"

requestRegisterStreamConsumer :: RegisterStreamConsumer -> TestTree
requestRegisterStreamConsumer =
  req
    "RegisterStreamConsumer"
    "fixture/RegisterStreamConsumer.yaml"

requestStartStreamEncryption :: StartStreamEncryption -> TestTree
requestStartStreamEncryption =
  req
    "StartStreamEncryption"
    "fixture/StartStreamEncryption.yaml"

requestEnableEnhancedMonitoring :: EnableEnhancedMonitoring -> TestTree
requestEnableEnhancedMonitoring =
  req
    "EnableEnhancedMonitoring"
    "fixture/EnableEnhancedMonitoring.yaml"

requestGetRecords :: GetRecords -> TestTree
requestGetRecords =
  req
    "GetRecords"
    "fixture/GetRecords.yaml"

requestGetShardIterator :: GetShardIterator -> TestTree
requestGetShardIterator =
  req
    "GetShardIterator"
    "fixture/GetShardIterator.yaml"

requestListShards :: ListShards -> TestTree
requestListShards =
  req
    "ListShards"
    "fixture/ListShards.yaml"

requestDeleteStream :: DeleteStream -> TestTree
requestDeleteStream =
  req
    "DeleteStream"
    "fixture/DeleteStream.yaml"

requestRemoveTagsFromStream :: RemoveTagsFromStream -> TestTree
requestRemoveTagsFromStream =
  req
    "RemoveTagsFromStream"
    "fixture/RemoveTagsFromStream.yaml"

requestDescribeStreamSummary :: DescribeStreamSummary -> TestTree
requestDescribeStreamSummary =
  req
    "DescribeStreamSummary"
    "fixture/DescribeStreamSummary.yaml"

requestDeregisterStreamConsumer :: DeregisterStreamConsumer -> TestTree
requestDeregisterStreamConsumer =
  req
    "DeregisterStreamConsumer"
    "fixture/DeregisterStreamConsumer.yaml"

requestPutRecords :: PutRecords -> TestTree
requestPutRecords =
  req
    "PutRecords"
    "fixture/PutRecords.yaml"

requestMergeShards :: MergeShards -> TestTree
requestMergeShards =
  req
    "MergeShards"
    "fixture/MergeShards.yaml"

requestDescribeStreamConsumer :: DescribeStreamConsumer -> TestTree
requestDescribeStreamConsumer =
  req
    "DescribeStreamConsumer"
    "fixture/DescribeStreamConsumer.yaml"

requestDecreaseStreamRetentionPeriod :: DecreaseStreamRetentionPeriod -> TestTree
requestDecreaseStreamRetentionPeriod =
  req
    "DecreaseStreamRetentionPeriod"
    "fixture/DecreaseStreamRetentionPeriod.yaml"

requestPutRecord :: PutRecord -> TestTree
requestPutRecord =
  req
    "PutRecord"
    "fixture/PutRecord.yaml"

requestDescribeStream :: DescribeStream -> TestTree
requestDescribeStream =
  req
    "DescribeStream"
    "fixture/DescribeStream.yaml"

requestUpdateShardCount :: UpdateShardCount -> TestTree
requestUpdateShardCount =
  req
    "UpdateShardCount"
    "fixture/UpdateShardCount.yaml"

requestCreateStream :: CreateStream -> TestTree
requestCreateStream =
  req
    "CreateStream"
    "fixture/CreateStream.yaml"

requestListStreams :: ListStreams -> TestTree
requestListStreams =
  req
    "ListStreams"
    "fixture/ListStreams.yaml"

-- Responses

responseSubscribeToShard :: SubscribeToShardResponse -> TestTree
responseSubscribeToShard =
  res
    "SubscribeToShardResponse"
    "fixture/SubscribeToShardResponse.proto"
    kinesis
    (Proxy :: Proxy SubscribeToShard)

responseAddTagsToStream :: AddTagsToStreamResponse -> TestTree
responseAddTagsToStream =
  res
    "AddTagsToStreamResponse"
    "fixture/AddTagsToStreamResponse.proto"
    kinesis
    (Proxy :: Proxy AddTagsToStream)

responseListTagsForStream :: ListTagsForStreamResponse -> TestTree
responseListTagsForStream =
  res
    "ListTagsForStreamResponse"
    "fixture/ListTagsForStreamResponse.proto"
    kinesis
    (Proxy :: Proxy ListTagsForStream)

responseIncreaseStreamRetentionPeriod :: IncreaseStreamRetentionPeriodResponse -> TestTree
responseIncreaseStreamRetentionPeriod =
  res
    "IncreaseStreamRetentionPeriodResponse"
    "fixture/IncreaseStreamRetentionPeriodResponse.proto"
    kinesis
    (Proxy :: Proxy IncreaseStreamRetentionPeriod)

responseDisableEnhancedMonitoring :: EnhancedMonitoringOutput -> TestTree
responseDisableEnhancedMonitoring =
  res
    "DisableEnhancedMonitoringResponse"
    "fixture/DisableEnhancedMonitoringResponse.proto"
    kinesis
    (Proxy :: Proxy DisableEnhancedMonitoring)

responseSplitShard :: SplitShardResponse -> TestTree
responseSplitShard =
  res
    "SplitShardResponse"
    "fixture/SplitShardResponse.proto"
    kinesis
    (Proxy :: Proxy SplitShard)

responseListStreamConsumers :: ListStreamConsumersResponse -> TestTree
responseListStreamConsumers =
  res
    "ListStreamConsumersResponse"
    "fixture/ListStreamConsumersResponse.proto"
    kinesis
    (Proxy :: Proxy ListStreamConsumers)

responseDescribeLimits :: DescribeLimitsResponse -> TestTree
responseDescribeLimits =
  res
    "DescribeLimitsResponse"
    "fixture/DescribeLimitsResponse.proto"
    kinesis
    (Proxy :: Proxy DescribeLimits)

responseStopStreamEncryption :: StopStreamEncryptionResponse -> TestTree
responseStopStreamEncryption =
  res
    "StopStreamEncryptionResponse"
    "fixture/StopStreamEncryptionResponse.proto"
    kinesis
    (Proxy :: Proxy StopStreamEncryption)

responseRegisterStreamConsumer :: RegisterStreamConsumerResponse -> TestTree
responseRegisterStreamConsumer =
  res
    "RegisterStreamConsumerResponse"
    "fixture/RegisterStreamConsumerResponse.proto"
    kinesis
    (Proxy :: Proxy RegisterStreamConsumer)

responseStartStreamEncryption :: StartStreamEncryptionResponse -> TestTree
responseStartStreamEncryption =
  res
    "StartStreamEncryptionResponse"
    "fixture/StartStreamEncryptionResponse.proto"
    kinesis
    (Proxy :: Proxy StartStreamEncryption)

responseEnableEnhancedMonitoring :: EnhancedMonitoringOutput -> TestTree
responseEnableEnhancedMonitoring =
  res
    "EnableEnhancedMonitoringResponse"
    "fixture/EnableEnhancedMonitoringResponse.proto"
    kinesis
    (Proxy :: Proxy EnableEnhancedMonitoring)

responseGetRecords :: GetRecordsResponse -> TestTree
responseGetRecords =
  res
    "GetRecordsResponse"
    "fixture/GetRecordsResponse.proto"
    kinesis
    (Proxy :: Proxy GetRecords)

responseGetShardIterator :: GetShardIteratorResponse -> TestTree
responseGetShardIterator =
  res
    "GetShardIteratorResponse"
    "fixture/GetShardIteratorResponse.proto"
    kinesis
    (Proxy :: Proxy GetShardIterator)

responseListShards :: ListShardsResponse -> TestTree
responseListShards =
  res
    "ListShardsResponse"
    "fixture/ListShardsResponse.proto"
    kinesis
    (Proxy :: Proxy ListShards)

responseDeleteStream :: DeleteStreamResponse -> TestTree
responseDeleteStream =
  res
    "DeleteStreamResponse"
    "fixture/DeleteStreamResponse.proto"
    kinesis
    (Proxy :: Proxy DeleteStream)

responseRemoveTagsFromStream :: RemoveTagsFromStreamResponse -> TestTree
responseRemoveTagsFromStream =
  res
    "RemoveTagsFromStreamResponse"
    "fixture/RemoveTagsFromStreamResponse.proto"
    kinesis
    (Proxy :: Proxy RemoveTagsFromStream)

responseDescribeStreamSummary :: DescribeStreamSummaryResponse -> TestTree
responseDescribeStreamSummary =
  res
    "DescribeStreamSummaryResponse"
    "fixture/DescribeStreamSummaryResponse.proto"
    kinesis
    (Proxy :: Proxy DescribeStreamSummary)

responseDeregisterStreamConsumer :: DeregisterStreamConsumerResponse -> TestTree
responseDeregisterStreamConsumer =
  res
    "DeregisterStreamConsumerResponse"
    "fixture/DeregisterStreamConsumerResponse.proto"
    kinesis
    (Proxy :: Proxy DeregisterStreamConsumer)

responsePutRecords :: PutRecordsResponse -> TestTree
responsePutRecords =
  res
    "PutRecordsResponse"
    "fixture/PutRecordsResponse.proto"
    kinesis
    (Proxy :: Proxy PutRecords)

responseMergeShards :: MergeShardsResponse -> TestTree
responseMergeShards =
  res
    "MergeShardsResponse"
    "fixture/MergeShardsResponse.proto"
    kinesis
    (Proxy :: Proxy MergeShards)

responseDescribeStreamConsumer :: DescribeStreamConsumerResponse -> TestTree
responseDescribeStreamConsumer =
  res
    "DescribeStreamConsumerResponse"
    "fixture/DescribeStreamConsumerResponse.proto"
    kinesis
    (Proxy :: Proxy DescribeStreamConsumer)

responseDecreaseStreamRetentionPeriod :: DecreaseStreamRetentionPeriodResponse -> TestTree
responseDecreaseStreamRetentionPeriod =
  res
    "DecreaseStreamRetentionPeriodResponse"
    "fixture/DecreaseStreamRetentionPeriodResponse.proto"
    kinesis
    (Proxy :: Proxy DecreaseStreamRetentionPeriod)

responsePutRecord :: PutRecordResponse -> TestTree
responsePutRecord =
  res
    "PutRecordResponse"
    "fixture/PutRecordResponse.proto"
    kinesis
    (Proxy :: Proxy PutRecord)

responseDescribeStream :: DescribeStreamResponse -> TestTree
responseDescribeStream =
  res
    "DescribeStreamResponse"
    "fixture/DescribeStreamResponse.proto"
    kinesis
    (Proxy :: Proxy DescribeStream)

responseUpdateShardCount :: UpdateShardCountResponse -> TestTree
responseUpdateShardCount =
  res
    "UpdateShardCountResponse"
    "fixture/UpdateShardCountResponse.proto"
    kinesis
    (Proxy :: Proxy UpdateShardCount)

responseCreateStream :: CreateStreamResponse -> TestTree
responseCreateStream =
  res
    "CreateStreamResponse"
    "fixture/CreateStreamResponse.proto"
    kinesis
    (Proxy :: Proxy CreateStream)

responseListStreams :: ListStreamsResponse -> TestTree
responseListStreams =
  res
    "ListStreamsResponse"
    "fixture/ListStreamsResponse.proto"
    kinesis
    (Proxy :: Proxy ListStreams)
