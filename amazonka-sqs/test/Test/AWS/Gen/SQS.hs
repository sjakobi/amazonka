{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.SQS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.SQS where

import Data.Proxy
import Network.AWS.SQS
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.SQS.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestChangeMessageVisibilityBatch $
--             changeMessageVisibilityBatch
--
--         , requestPurgeQueue $
--             purgeQueue
--
--         , requestChangeMessageVisibility $
--             changeMessageVisibility
--
--         , requestTagQueue $
--             tagQueue
--
--         , requestListQueues $
--             listQueues
--
--         , requestReceiveMessage $
--             receiveMessage
--
--         , requestGetQueueAttributes $
--             getQueueAttributes
--
--         , requestDeleteMessage $
--             deleteMessage
--
--         , requestAddPermission $
--             addPermission
--
--         , requestListQueueTags $
--             listQueueTags
--
--         , requestSendMessage $
--             sendMessage
--
--         , requestListDeadLetterSourceQueues $
--             listDeadLetterSourceQueues
--
--         , requestGetQueueURL $
--             getQueueURL
--
--         , requestSetQueueAttributes $
--             setQueueAttributes
--
--         , requestDeleteMessageBatch $
--             deleteMessageBatch
--
--         , requestSendMessageBatch $
--             sendMessageBatch
--
--         , requestUntagQueue $
--             untagQueue
--
--         , requestDeleteQueue $
--             deleteQueue
--
--         , requestCreateQueue $
--             createQueue
--
--         , requestRemovePermission $
--             removePermission
--
--           ]

--     , testGroup "response"
--         [ responseChangeMessageVisibilityBatch $
--             changeMessageVisibilityBatchResponse
--
--         , responsePurgeQueue $
--             purgeQueueResponse
--
--         , responseChangeMessageVisibility $
--             changeMessageVisibilityResponse
--
--         , responseTagQueue $
--             tagQueueResponse
--
--         , responseListQueues $
--             listQueuesResponse
--
--         , responseReceiveMessage $
--             receiveMessageResponse
--
--         , responseGetQueueAttributes $
--             getQueueAttributesResponse
--
--         , responseDeleteMessage $
--             deleteMessageResponse
--
--         , responseAddPermission $
--             addPermissionResponse
--
--         , responseListQueueTags $
--             listQueueTagsResponse
--
--         , responseSendMessage $
--             sendMessageResponse
--
--         , responseListDeadLetterSourceQueues $
--             listDeadLetterSourceQueuesResponse
--
--         , responseGetQueueURL $
--             getQueueURLResponse
--
--         , responseSetQueueAttributes $
--             setQueueAttributesResponse
--
--         , responseDeleteMessageBatch $
--             deleteMessageBatchResponse
--
--         , responseSendMessageBatch $
--             sendMessageBatchResponse
--
--         , responseUntagQueue $
--             untagQueueResponse
--
--         , responseDeleteQueue $
--             deleteQueueResponse
--
--         , responseCreateQueue $
--             createQueueResponse
--
--         , responseRemovePermission $
--             removePermissionResponse
--
--           ]
--     ]

-- Requests

requestChangeMessageVisibilityBatch :: ChangeMessageVisibilityBatch -> TestTree
requestChangeMessageVisibilityBatch =
  req
    "ChangeMessageVisibilityBatch"
    "fixture/ChangeMessageVisibilityBatch.yaml"

requestPurgeQueue :: PurgeQueue -> TestTree
requestPurgeQueue =
  req
    "PurgeQueue"
    "fixture/PurgeQueue.yaml"

requestChangeMessageVisibility :: ChangeMessageVisibility -> TestTree
requestChangeMessageVisibility =
  req
    "ChangeMessageVisibility"
    "fixture/ChangeMessageVisibility.yaml"

requestTagQueue :: TagQueue -> TestTree
requestTagQueue =
  req
    "TagQueue"
    "fixture/TagQueue.yaml"

requestListQueues :: ListQueues -> TestTree
requestListQueues =
  req
    "ListQueues"
    "fixture/ListQueues.yaml"

requestReceiveMessage :: ReceiveMessage -> TestTree
requestReceiveMessage =
  req
    "ReceiveMessage"
    "fixture/ReceiveMessage.yaml"

requestGetQueueAttributes :: GetQueueAttributes -> TestTree
requestGetQueueAttributes =
  req
    "GetQueueAttributes"
    "fixture/GetQueueAttributes.yaml"

requestDeleteMessage :: DeleteMessage -> TestTree
requestDeleteMessage =
  req
    "DeleteMessage"
    "fixture/DeleteMessage.yaml"

requestAddPermission :: AddPermission -> TestTree
requestAddPermission =
  req
    "AddPermission"
    "fixture/AddPermission.yaml"

requestListQueueTags :: ListQueueTags -> TestTree
requestListQueueTags =
  req
    "ListQueueTags"
    "fixture/ListQueueTags.yaml"

requestSendMessage :: SendMessage -> TestTree
requestSendMessage =
  req
    "SendMessage"
    "fixture/SendMessage.yaml"

requestListDeadLetterSourceQueues :: ListDeadLetterSourceQueues -> TestTree
requestListDeadLetterSourceQueues =
  req
    "ListDeadLetterSourceQueues"
    "fixture/ListDeadLetterSourceQueues.yaml"

requestGetQueueURL :: GetQueueURL -> TestTree
requestGetQueueURL =
  req
    "GetQueueURL"
    "fixture/GetQueueURL.yaml"

requestSetQueueAttributes :: SetQueueAttributes -> TestTree
requestSetQueueAttributes =
  req
    "SetQueueAttributes"
    "fixture/SetQueueAttributes.yaml"

requestDeleteMessageBatch :: DeleteMessageBatch -> TestTree
requestDeleteMessageBatch =
  req
    "DeleteMessageBatch"
    "fixture/DeleteMessageBatch.yaml"

requestSendMessageBatch :: SendMessageBatch -> TestTree
requestSendMessageBatch =
  req
    "SendMessageBatch"
    "fixture/SendMessageBatch.yaml"

requestUntagQueue :: UntagQueue -> TestTree
requestUntagQueue =
  req
    "UntagQueue"
    "fixture/UntagQueue.yaml"

requestDeleteQueue :: DeleteQueue -> TestTree
requestDeleteQueue =
  req
    "DeleteQueue"
    "fixture/DeleteQueue.yaml"

requestCreateQueue :: CreateQueue -> TestTree
requestCreateQueue =
  req
    "CreateQueue"
    "fixture/CreateQueue.yaml"

requestRemovePermission :: RemovePermission -> TestTree
requestRemovePermission =
  req
    "RemovePermission"
    "fixture/RemovePermission.yaml"

-- Responses

responseChangeMessageVisibilityBatch :: ChangeMessageVisibilityBatchResponse -> TestTree
responseChangeMessageVisibilityBatch =
  res
    "ChangeMessageVisibilityBatchResponse"
    "fixture/ChangeMessageVisibilityBatchResponse.proto"
    sqs
    (Proxy :: Proxy ChangeMessageVisibilityBatch)

responsePurgeQueue :: PurgeQueueResponse -> TestTree
responsePurgeQueue =
  res
    "PurgeQueueResponse"
    "fixture/PurgeQueueResponse.proto"
    sqs
    (Proxy :: Proxy PurgeQueue)

responseChangeMessageVisibility :: ChangeMessageVisibilityResponse -> TestTree
responseChangeMessageVisibility =
  res
    "ChangeMessageVisibilityResponse"
    "fixture/ChangeMessageVisibilityResponse.proto"
    sqs
    (Proxy :: Proxy ChangeMessageVisibility)

responseTagQueue :: TagQueueResponse -> TestTree
responseTagQueue =
  res
    "TagQueueResponse"
    "fixture/TagQueueResponse.proto"
    sqs
    (Proxy :: Proxy TagQueue)

responseListQueues :: ListQueuesResponse -> TestTree
responseListQueues =
  res
    "ListQueuesResponse"
    "fixture/ListQueuesResponse.proto"
    sqs
    (Proxy :: Proxy ListQueues)

responseReceiveMessage :: ReceiveMessageResponse -> TestTree
responseReceiveMessage =
  res
    "ReceiveMessageResponse"
    "fixture/ReceiveMessageResponse.proto"
    sqs
    (Proxy :: Proxy ReceiveMessage)

responseGetQueueAttributes :: GetQueueAttributesResponse -> TestTree
responseGetQueueAttributes =
  res
    "GetQueueAttributesResponse"
    "fixture/GetQueueAttributesResponse.proto"
    sqs
    (Proxy :: Proxy GetQueueAttributes)

responseDeleteMessage :: DeleteMessageResponse -> TestTree
responseDeleteMessage =
  res
    "DeleteMessageResponse"
    "fixture/DeleteMessageResponse.proto"
    sqs
    (Proxy :: Proxy DeleteMessage)

responseAddPermission :: AddPermissionResponse -> TestTree
responseAddPermission =
  res
    "AddPermissionResponse"
    "fixture/AddPermissionResponse.proto"
    sqs
    (Proxy :: Proxy AddPermission)

responseListQueueTags :: ListQueueTagsResponse -> TestTree
responseListQueueTags =
  res
    "ListQueueTagsResponse"
    "fixture/ListQueueTagsResponse.proto"
    sqs
    (Proxy :: Proxy ListQueueTags)

responseSendMessage :: SendMessageResponse -> TestTree
responseSendMessage =
  res
    "SendMessageResponse"
    "fixture/SendMessageResponse.proto"
    sqs
    (Proxy :: Proxy SendMessage)

responseListDeadLetterSourceQueues :: ListDeadLetterSourceQueuesResponse -> TestTree
responseListDeadLetterSourceQueues =
  res
    "ListDeadLetterSourceQueuesResponse"
    "fixture/ListDeadLetterSourceQueuesResponse.proto"
    sqs
    (Proxy :: Proxy ListDeadLetterSourceQueues)

responseGetQueueURL :: GetQueueURLResponse -> TestTree
responseGetQueueURL =
  res
    "GetQueueURLResponse"
    "fixture/GetQueueURLResponse.proto"
    sqs
    (Proxy :: Proxy GetQueueURL)

responseSetQueueAttributes :: SetQueueAttributesResponse -> TestTree
responseSetQueueAttributes =
  res
    "SetQueueAttributesResponse"
    "fixture/SetQueueAttributesResponse.proto"
    sqs
    (Proxy :: Proxy SetQueueAttributes)

responseDeleteMessageBatch :: DeleteMessageBatchResponse -> TestTree
responseDeleteMessageBatch =
  res
    "DeleteMessageBatchResponse"
    "fixture/DeleteMessageBatchResponse.proto"
    sqs
    (Proxy :: Proxy DeleteMessageBatch)

responseSendMessageBatch :: SendMessageBatchResponse -> TestTree
responseSendMessageBatch =
  res
    "SendMessageBatchResponse"
    "fixture/SendMessageBatchResponse.proto"
    sqs
    (Proxy :: Proxy SendMessageBatch)

responseUntagQueue :: UntagQueueResponse -> TestTree
responseUntagQueue =
  res
    "UntagQueueResponse"
    "fixture/UntagQueueResponse.proto"
    sqs
    (Proxy :: Proxy UntagQueue)

responseDeleteQueue :: DeleteQueueResponse -> TestTree
responseDeleteQueue =
  res
    "DeleteQueueResponse"
    "fixture/DeleteQueueResponse.proto"
    sqs
    (Proxy :: Proxy DeleteQueue)

responseCreateQueue :: CreateQueueResponse -> TestTree
responseCreateQueue =
  res
    "CreateQueueResponse"
    "fixture/CreateQueueResponse.proto"
    sqs
    (Proxy :: Proxy CreateQueue)

responseRemovePermission :: RemovePermissionResponse -> TestTree
responseRemovePermission =
  res
    "RemovePermissionResponse"
    "fixture/RemovePermissionResponse.proto"
    sqs
    (Proxy :: Proxy RemovePermission)
