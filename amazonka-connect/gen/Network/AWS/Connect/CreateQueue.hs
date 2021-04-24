{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.CreateQueue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Creates a new queue for the specified Amazon Connect instance.
module Network.AWS.Connect.CreateQueue
  ( -- * Creating a Request
    createQueue,
    CreateQueue,

    -- * Request Lenses
    cqMaxContacts,
    cqTags,
    cqDescription,
    cqOutboundCallerConfig,
    cqQuickConnectIds,
    cqInstanceId,
    cqName,
    cqHoursOfOperationId,

    -- * Destructuring the Response
    createQueueResponse,
    CreateQueueResponse,

    -- * Response Lenses
    cqrrsQueueId,
    cqrrsQueueARN,
    cqrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createQueue' smart constructor.
data CreateQueue = CreateQueue'
  { _cqMaxContacts ::
      !(Maybe Nat),
    _cqTags :: !(Maybe (Map Text Text)),
    _cqDescription :: !(Maybe Text),
    _cqOutboundCallerConfig ::
      !(Maybe OutboundCallerConfig),
    _cqQuickConnectIds :: !(Maybe (List1 Text)),
    _cqInstanceId :: !Text,
    _cqName :: !Text,
    _cqHoursOfOperationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateQueue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cqMaxContacts' - The maximum number of contacts that can be in the queue before it is considered full.
--
-- * 'cqTags' - One or more tags.
--
-- * 'cqDescription' - The description of the queue.
--
-- * 'cqOutboundCallerConfig' - The outbound caller ID name, number, and outbound whisper flow.
--
-- * 'cqQuickConnectIds' - The quick connects available to agents who are working the queue.
--
-- * 'cqInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'cqName' - The name of the queue.
--
-- * 'cqHoursOfOperationId' - The identifier for the hours of operation.
createQueue ::
  -- | 'cqInstanceId'
  Text ->
  -- | 'cqName'
  Text ->
  -- | 'cqHoursOfOperationId'
  Text ->
  CreateQueue
createQueue pInstanceId_ pName_ pHoursOfOperationId_ =
  CreateQueue'
    { _cqMaxContacts = Nothing,
      _cqTags = Nothing,
      _cqDescription = Nothing,
      _cqOutboundCallerConfig = Nothing,
      _cqQuickConnectIds = Nothing,
      _cqInstanceId = pInstanceId_,
      _cqName = pName_,
      _cqHoursOfOperationId = pHoursOfOperationId_
    }

-- | The maximum number of contacts that can be in the queue before it is considered full.
cqMaxContacts :: Lens' CreateQueue (Maybe Natural)
cqMaxContacts = lens _cqMaxContacts (\s a -> s {_cqMaxContacts = a}) . mapping _Nat

-- | One or more tags.
cqTags :: Lens' CreateQueue (HashMap Text Text)
cqTags = lens _cqTags (\s a -> s {_cqTags = a}) . _Default . _Map

-- | The description of the queue.
cqDescription :: Lens' CreateQueue (Maybe Text)
cqDescription = lens _cqDescription (\s a -> s {_cqDescription = a})

-- | The outbound caller ID name, number, and outbound whisper flow.
cqOutboundCallerConfig :: Lens' CreateQueue (Maybe OutboundCallerConfig)
cqOutboundCallerConfig = lens _cqOutboundCallerConfig (\s a -> s {_cqOutboundCallerConfig = a})

-- | The quick connects available to agents who are working the queue.
cqQuickConnectIds :: Lens' CreateQueue (Maybe (NonEmpty Text))
cqQuickConnectIds = lens _cqQuickConnectIds (\s a -> s {_cqQuickConnectIds = a}) . mapping _List1

-- | The identifier of the Amazon Connect instance.
cqInstanceId :: Lens' CreateQueue Text
cqInstanceId = lens _cqInstanceId (\s a -> s {_cqInstanceId = a})

-- | The name of the queue.
cqName :: Lens' CreateQueue Text
cqName = lens _cqName (\s a -> s {_cqName = a})

-- | The identifier for the hours of operation.
cqHoursOfOperationId :: Lens' CreateQueue Text
cqHoursOfOperationId = lens _cqHoursOfOperationId (\s a -> s {_cqHoursOfOperationId = a})

instance AWSRequest CreateQueue where
  type Rs CreateQueue = CreateQueueResponse
  request = putJSON connect
  response =
    receiveJSON
      ( \s h x ->
          CreateQueueResponse'
            <$> (x .?> "QueueId")
            <*> (x .?> "QueueArn")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateQueue

instance NFData CreateQueue

instance ToHeaders CreateQueue where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateQueue where
  toJSON CreateQueue' {..} =
    object
      ( catMaybes
          [ ("MaxContacts" .=) <$> _cqMaxContacts,
            ("Tags" .=) <$> _cqTags,
            ("Description" .=) <$> _cqDescription,
            ("OutboundCallerConfig" .=)
              <$> _cqOutboundCallerConfig,
            ("QuickConnectIds" .=) <$> _cqQuickConnectIds,
            Just ("Name" .= _cqName),
            Just
              ("HoursOfOperationId" .= _cqHoursOfOperationId)
          ]
      )

instance ToPath CreateQueue where
  toPath CreateQueue' {..} =
    mconcat ["/queues/", toBS _cqInstanceId]

instance ToQuery CreateQueue where
  toQuery = const mempty

-- | /See:/ 'createQueueResponse' smart constructor.
data CreateQueueResponse = CreateQueueResponse'
  { _cqrrsQueueId ::
      !(Maybe Text),
    _cqrrsQueueARN :: !(Maybe Text),
    _cqrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateQueueResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cqrrsQueueId' - The identifier for the queue.
--
-- * 'cqrrsQueueARN' - The Amazon Resource Name (ARN) of the queue.
--
-- * 'cqrrsResponseStatus' - -- | The response status code.
createQueueResponse ::
  -- | 'cqrrsResponseStatus'
  Int ->
  CreateQueueResponse
createQueueResponse pResponseStatus_ =
  CreateQueueResponse'
    { _cqrrsQueueId = Nothing,
      _cqrrsQueueARN = Nothing,
      _cqrrsResponseStatus = pResponseStatus_
    }

-- | The identifier for the queue.
cqrrsQueueId :: Lens' CreateQueueResponse (Maybe Text)
cqrrsQueueId = lens _cqrrsQueueId (\s a -> s {_cqrrsQueueId = a})

-- | The Amazon Resource Name (ARN) of the queue.
cqrrsQueueARN :: Lens' CreateQueueResponse (Maybe Text)
cqrrsQueueARN = lens _cqrrsQueueARN (\s a -> s {_cqrrsQueueARN = a})

-- | -- | The response status code.
cqrrsResponseStatus :: Lens' CreateQueueResponse Int
cqrrsResponseStatus = lens _cqrrsResponseStatus (\s a -> s {_cqrrsResponseStatus = a})

instance NFData CreateQueueResponse
