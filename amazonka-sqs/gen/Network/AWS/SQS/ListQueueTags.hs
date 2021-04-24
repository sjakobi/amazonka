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
-- Module      : Network.AWS.SQS.ListQueueTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all cost allocation tags added to the specified Amazon SQS queue. For an overview, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html Tagging Your Amazon SQS Queues> in the /Amazon Simple Queue Service Developer Guide/ .
module Network.AWS.SQS.ListQueueTags
  ( -- * Creating a Request
    listQueueTags,
    ListQueueTags,

    -- * Request Lenses
    lqtQueueURL,

    -- * Destructuring the Response
    listQueueTagsResponse,
    ListQueueTagsResponse,

    -- * Response Lenses
    lqtrrsTags,
    lqtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SQS.Types

-- | /See:/ 'listQueueTags' smart constructor.
newtype ListQueueTags = ListQueueTags'
  { _lqtQueueURL ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListQueueTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqtQueueURL' - The URL of the queue.
listQueueTags ::
  -- | 'lqtQueueURL'
  Text ->
  ListQueueTags
listQueueTags pQueueURL_ =
  ListQueueTags' {_lqtQueueURL = pQueueURL_}

-- | The URL of the queue.
lqtQueueURL :: Lens' ListQueueTags Text
lqtQueueURL = lens _lqtQueueURL (\s a -> s {_lqtQueueURL = a})

instance AWSRequest ListQueueTags where
  type Rs ListQueueTags = ListQueueTagsResponse
  request = postQuery sqs
  response =
    receiveXMLWrapper
      "ListQueueTagsResult"
      ( \s h x ->
          ListQueueTagsResponse'
            <$> (may (parseXMLMap "Tag" "Key" "Value") x)
            <*> (pure (fromEnum s))
      )

instance Hashable ListQueueTags

instance NFData ListQueueTags

instance ToHeaders ListQueueTags where
  toHeaders = const mempty

instance ToPath ListQueueTags where
  toPath = const "/"

instance ToQuery ListQueueTags where
  toQuery ListQueueTags' {..} =
    mconcat
      [ "Action" =: ("ListQueueTags" :: ByteString),
        "Version" =: ("2012-11-05" :: ByteString),
        "QueueUrl" =: _lqtQueueURL
      ]

-- | /See:/ 'listQueueTagsResponse' smart constructor.
data ListQueueTagsResponse = ListQueueTagsResponse'
  { _lqtrrsTags ::
      !(Maybe (Map Text Text)),
    _lqtrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListQueueTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqtrrsTags' - The list of all tags added to the specified queue.
--
-- * 'lqtrrsResponseStatus' - -- | The response status code.
listQueueTagsResponse ::
  -- | 'lqtrrsResponseStatus'
  Int ->
  ListQueueTagsResponse
listQueueTagsResponse pResponseStatus_ =
  ListQueueTagsResponse'
    { _lqtrrsTags = Nothing,
      _lqtrrsResponseStatus = pResponseStatus_
    }

-- | The list of all tags added to the specified queue.
lqtrrsTags :: Lens' ListQueueTagsResponse (HashMap Text Text)
lqtrrsTags = lens _lqtrrsTags (\s a -> s {_lqtrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
lqtrrsResponseStatus :: Lens' ListQueueTagsResponse Int
lqtrrsResponseStatus = lens _lqtrrsResponseStatus (\s a -> s {_lqtrrsResponseStatus = a})

instance NFData ListQueueTagsResponse
