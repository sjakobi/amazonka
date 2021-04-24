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
-- Module      : Network.AWS.Connect.ListQueueQuickConnects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Lists the quick connects associated with a queue.
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListQueueQuickConnects
  ( -- * Creating a Request
    listQueueQuickConnects,
    ListQueueQuickConnects,

    -- * Request Lenses
    lqqcNextToken,
    lqqcMaxResults,
    lqqcInstanceId,
    lqqcQueueId,

    -- * Destructuring the Response
    listQueueQuickConnectsResponse,
    ListQueueQuickConnectsResponse,

    -- * Response Lenses
    lqqcrrsNextToken,
    lqqcrrsQuickConnectSummaryList,
    lqqcrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listQueueQuickConnects' smart constructor.
data ListQueueQuickConnects = ListQueueQuickConnects'
  { _lqqcNextToken ::
      !(Maybe Text),
    _lqqcMaxResults ::
      !(Maybe Nat),
    _lqqcInstanceId :: !Text,
    _lqqcQueueId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListQueueQuickConnects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqqcNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'lqqcMaxResults' - The maximum number of results to return per page.
--
-- * 'lqqcInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'lqqcQueueId' - The identifier for the queue.
listQueueQuickConnects ::
  -- | 'lqqcInstanceId'
  Text ->
  -- | 'lqqcQueueId'
  Text ->
  ListQueueQuickConnects
listQueueQuickConnects pInstanceId_ pQueueId_ =
  ListQueueQuickConnects'
    { _lqqcNextToken = Nothing,
      _lqqcMaxResults = Nothing,
      _lqqcInstanceId = pInstanceId_,
      _lqqcQueueId = pQueueId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
lqqcNextToken :: Lens' ListQueueQuickConnects (Maybe Text)
lqqcNextToken = lens _lqqcNextToken (\s a -> s {_lqqcNextToken = a})

-- | The maximum number of results to return per page.
lqqcMaxResults :: Lens' ListQueueQuickConnects (Maybe Natural)
lqqcMaxResults = lens _lqqcMaxResults (\s a -> s {_lqqcMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
lqqcInstanceId :: Lens' ListQueueQuickConnects Text
lqqcInstanceId = lens _lqqcInstanceId (\s a -> s {_lqqcInstanceId = a})

-- | The identifier for the queue.
lqqcQueueId :: Lens' ListQueueQuickConnects Text
lqqcQueueId = lens _lqqcQueueId (\s a -> s {_lqqcQueueId = a})

instance AWSPager ListQueueQuickConnects where
  page rq rs
    | stop (rs ^. lqqcrrsNextToken) = Nothing
    | stop (rs ^. lqqcrrsQuickConnectSummaryList) =
      Nothing
    | otherwise =
      Just $ rq & lqqcNextToken .~ rs ^. lqqcrrsNextToken

instance AWSRequest ListQueueQuickConnects where
  type
    Rs ListQueueQuickConnects =
      ListQueueQuickConnectsResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListQueueQuickConnectsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "QuickConnectSummaryList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListQueueQuickConnects

instance NFData ListQueueQuickConnects

instance ToHeaders ListQueueQuickConnects where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListQueueQuickConnects where
  toPath ListQueueQuickConnects' {..} =
    mconcat
      [ "/queues/",
        toBS _lqqcInstanceId,
        "/",
        toBS _lqqcQueueId,
        "/quick-connects"
      ]

instance ToQuery ListQueueQuickConnects where
  toQuery ListQueueQuickConnects' {..} =
    mconcat
      [ "nextToken" =: _lqqcNextToken,
        "maxResults" =: _lqqcMaxResults
      ]

-- | /See:/ 'listQueueQuickConnectsResponse' smart constructor.
data ListQueueQuickConnectsResponse = ListQueueQuickConnectsResponse'
  { _lqqcrrsNextToken ::
      !( Maybe
           Text
       ),
    _lqqcrrsQuickConnectSummaryList ::
      !( Maybe
           [QuickConnectSummary]
       ),
    _lqqcrrsResponseStatus ::
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

-- | Creates a value of 'ListQueueQuickConnectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqqcrrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'lqqcrrsQuickConnectSummaryList' - Information about the quick connects.
--
-- * 'lqqcrrsResponseStatus' - -- | The response status code.
listQueueQuickConnectsResponse ::
  -- | 'lqqcrrsResponseStatus'
  Int ->
  ListQueueQuickConnectsResponse
listQueueQuickConnectsResponse pResponseStatus_ =
  ListQueueQuickConnectsResponse'
    { _lqqcrrsNextToken =
        Nothing,
      _lqqcrrsQuickConnectSummaryList = Nothing,
      _lqqcrrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
lqqcrrsNextToken :: Lens' ListQueueQuickConnectsResponse (Maybe Text)
lqqcrrsNextToken = lens _lqqcrrsNextToken (\s a -> s {_lqqcrrsNextToken = a})

-- | Information about the quick connects.
lqqcrrsQuickConnectSummaryList :: Lens' ListQueueQuickConnectsResponse [QuickConnectSummary]
lqqcrrsQuickConnectSummaryList = lens _lqqcrrsQuickConnectSummaryList (\s a -> s {_lqqcrrsQuickConnectSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lqqcrrsResponseStatus :: Lens' ListQueueQuickConnectsResponse Int
lqqcrrsResponseStatus = lens _lqqcrrsResponseStatus (\s a -> s {_lqqcrrsResponseStatus = a})

instance NFData ListQueueQuickConnectsResponse
