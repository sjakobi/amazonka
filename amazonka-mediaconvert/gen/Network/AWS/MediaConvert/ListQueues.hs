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
-- Module      : Network.AWS.MediaConvert.ListQueues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
--
-- This operation returns paginated results.
module Network.AWS.MediaConvert.ListQueues
  ( -- * Creating a Request
    listQueues,
    ListQueues,

    -- * Request Lenses
    lqNextToken,
    lqListBy,
    lqMaxResults,
    lqOrder,

    -- * Destructuring the Response
    listQueuesResponse,
    ListQueuesResponse,

    -- * Response Lenses
    lqrrsNextToken,
    lqrrsQueues,
    lqrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listQueues' smart constructor.
data ListQueues = ListQueues'
  { _lqNextToken ::
      !(Maybe Text),
    _lqListBy :: !(Maybe QueueListBy),
    _lqMaxResults :: !(Maybe Nat),
    _lqOrder :: !(Maybe Order)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListQueues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqNextToken' - Use this string, provided with the response to a previous request, to request the next batch of queues.
--
-- * 'lqListBy' - Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.
--
-- * 'lqMaxResults' - Optional. Number of queues, up to twenty, that will be returned at one time.
--
-- * 'lqOrder' - Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
listQueues ::
  ListQueues
listQueues =
  ListQueues'
    { _lqNextToken = Nothing,
      _lqListBy = Nothing,
      _lqMaxResults = Nothing,
      _lqOrder = Nothing
    }

-- | Use this string, provided with the response to a previous request, to request the next batch of queues.
lqNextToken :: Lens' ListQueues (Maybe Text)
lqNextToken = lens _lqNextToken (\s a -> s {_lqNextToken = a})

-- | Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.
lqListBy :: Lens' ListQueues (Maybe QueueListBy)
lqListBy = lens _lqListBy (\s a -> s {_lqListBy = a})

-- | Optional. Number of queues, up to twenty, that will be returned at one time.
lqMaxResults :: Lens' ListQueues (Maybe Natural)
lqMaxResults = lens _lqMaxResults (\s a -> s {_lqMaxResults = a}) . mapping _Nat

-- | Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
lqOrder :: Lens' ListQueues (Maybe Order)
lqOrder = lens _lqOrder (\s a -> s {_lqOrder = a})

instance AWSPager ListQueues where
  page rq rs
    | stop (rs ^. lqrrsNextToken) = Nothing
    | stop (rs ^. lqrrsQueues) = Nothing
    | otherwise =
      Just $ rq & lqNextToken .~ rs ^. lqrrsNextToken

instance AWSRequest ListQueues where
  type Rs ListQueues = ListQueuesResponse
  request = get mediaConvert
  response =
    receiveJSON
      ( \s h x ->
          ListQueuesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "queues" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListQueues

instance NFData ListQueues

instance ToHeaders ListQueues where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListQueues where
  toPath = const "/2017-08-29/queues"

instance ToQuery ListQueues where
  toQuery ListQueues' {..} =
    mconcat
      [ "nextToken" =: _lqNextToken,
        "listBy" =: _lqListBy,
        "maxResults" =: _lqMaxResults,
        "order" =: _lqOrder
      ]

-- | /See:/ 'listQueuesResponse' smart constructor.
data ListQueuesResponse = ListQueuesResponse'
  { _lqrrsNextToken ::
      !(Maybe Text),
    _lqrrsQueues :: !(Maybe [Queue]),
    _lqrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListQueuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqrrsNextToken' - Use this string to request the next batch of queues.
--
-- * 'lqrrsQueues' - List of queues.
--
-- * 'lqrrsResponseStatus' - -- | The response status code.
listQueuesResponse ::
  -- | 'lqrrsResponseStatus'
  Int ->
  ListQueuesResponse
listQueuesResponse pResponseStatus_ =
  ListQueuesResponse'
    { _lqrrsNextToken = Nothing,
      _lqrrsQueues = Nothing,
      _lqrrsResponseStatus = pResponseStatus_
    }

-- | Use this string to request the next batch of queues.
lqrrsNextToken :: Lens' ListQueuesResponse (Maybe Text)
lqrrsNextToken = lens _lqrrsNextToken (\s a -> s {_lqrrsNextToken = a})

-- | List of queues.
lqrrsQueues :: Lens' ListQueuesResponse [Queue]
lqrrsQueues = lens _lqrrsQueues (\s a -> s {_lqrrsQueues = a}) . _Default . _Coerce

-- | -- | The response status code.
lqrrsResponseStatus :: Lens' ListQueuesResponse Int
lqrrsResponseStatus = lens _lqrrsResponseStatus (\s a -> s {_lqrrsResponseStatus = a})

instance NFData ListQueuesResponse
