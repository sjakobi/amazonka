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
-- Module      : Network.AWS.Connect.ListRoutingProfileQueues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the queues associated with a routing profile.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListRoutingProfileQueues
  ( -- * Creating a Request
    listRoutingProfileQueues,
    ListRoutingProfileQueues,

    -- * Request Lenses
    lrpqNextToken,
    lrpqMaxResults,
    lrpqInstanceId,
    lrpqRoutingProfileId,

    -- * Destructuring the Response
    listRoutingProfileQueuesResponse,
    ListRoutingProfileQueuesResponse,

    -- * Response Lenses
    lrpqrrsNextToken,
    lrpqrrsRoutingProfileQueueConfigSummaryList,
    lrpqrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listRoutingProfileQueues' smart constructor.
data ListRoutingProfileQueues = ListRoutingProfileQueues'
  { _lrpqNextToken ::
      !(Maybe Text),
    _lrpqMaxResults ::
      !(Maybe Nat),
    _lrpqInstanceId ::
      !Text,
    _lrpqRoutingProfileId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListRoutingProfileQueues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrpqNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'lrpqMaxResults' - The maximum number of results to return per page.
--
-- * 'lrpqInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'lrpqRoutingProfileId' - The identifier of the routing profile.
listRoutingProfileQueues ::
  -- | 'lrpqInstanceId'
  Text ->
  -- | 'lrpqRoutingProfileId'
  Text ->
  ListRoutingProfileQueues
listRoutingProfileQueues
  pInstanceId_
  pRoutingProfileId_ =
    ListRoutingProfileQueues'
      { _lrpqNextToken = Nothing,
        _lrpqMaxResults = Nothing,
        _lrpqInstanceId = pInstanceId_,
        _lrpqRoutingProfileId = pRoutingProfileId_
      }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
lrpqNextToken :: Lens' ListRoutingProfileQueues (Maybe Text)
lrpqNextToken = lens _lrpqNextToken (\s a -> s {_lrpqNextToken = a})

-- | The maximum number of results to return per page.
lrpqMaxResults :: Lens' ListRoutingProfileQueues (Maybe Natural)
lrpqMaxResults = lens _lrpqMaxResults (\s a -> s {_lrpqMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
lrpqInstanceId :: Lens' ListRoutingProfileQueues Text
lrpqInstanceId = lens _lrpqInstanceId (\s a -> s {_lrpqInstanceId = a})

-- | The identifier of the routing profile.
lrpqRoutingProfileId :: Lens' ListRoutingProfileQueues Text
lrpqRoutingProfileId = lens _lrpqRoutingProfileId (\s a -> s {_lrpqRoutingProfileId = a})

instance AWSPager ListRoutingProfileQueues where
  page rq rs
    | stop (rs ^. lrpqrrsNextToken) = Nothing
    | stop
        (rs ^. lrpqrrsRoutingProfileQueueConfigSummaryList) =
      Nothing
    | otherwise =
      Just $ rq & lrpqNextToken .~ rs ^. lrpqrrsNextToken

instance AWSRequest ListRoutingProfileQueues where
  type
    Rs ListRoutingProfileQueues =
      ListRoutingProfileQueuesResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListRoutingProfileQueuesResponse'
            <$> (x .?> "NextToken")
            <*> ( x .?> "RoutingProfileQueueConfigSummaryList"
                    .!@ mempty
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListRoutingProfileQueues

instance NFData ListRoutingProfileQueues

instance ToHeaders ListRoutingProfileQueues where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListRoutingProfileQueues where
  toPath ListRoutingProfileQueues' {..} =
    mconcat
      [ "/routing-profiles/",
        toBS _lrpqInstanceId,
        "/",
        toBS _lrpqRoutingProfileId,
        "/queues"
      ]

instance ToQuery ListRoutingProfileQueues where
  toQuery ListRoutingProfileQueues' {..} =
    mconcat
      [ "nextToken" =: _lrpqNextToken,
        "maxResults" =: _lrpqMaxResults
      ]

-- | /See:/ 'listRoutingProfileQueuesResponse' smart constructor.
data ListRoutingProfileQueuesResponse = ListRoutingProfileQueuesResponse'
  { _lrpqrrsNextToken ::
      !( Maybe
           Text
       ),
    _lrpqrrsRoutingProfileQueueConfigSummaryList ::
      !( Maybe
           [RoutingProfileQueueConfigSummary]
       ),
    _lrpqrrsResponseStatus ::
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

-- | Creates a value of 'ListRoutingProfileQueuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrpqrrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'lrpqrrsRoutingProfileQueueConfigSummaryList' - Information about the routing profiles.
--
-- * 'lrpqrrsResponseStatus' - -- | The response status code.
listRoutingProfileQueuesResponse ::
  -- | 'lrpqrrsResponseStatus'
  Int ->
  ListRoutingProfileQueuesResponse
listRoutingProfileQueuesResponse pResponseStatus_ =
  ListRoutingProfileQueuesResponse'
    { _lrpqrrsNextToken =
        Nothing,
      _lrpqrrsRoutingProfileQueueConfigSummaryList =
        Nothing,
      _lrpqrrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
lrpqrrsNextToken :: Lens' ListRoutingProfileQueuesResponse (Maybe Text)
lrpqrrsNextToken = lens _lrpqrrsNextToken (\s a -> s {_lrpqrrsNextToken = a})

-- | Information about the routing profiles.
lrpqrrsRoutingProfileQueueConfigSummaryList :: Lens' ListRoutingProfileQueuesResponse [RoutingProfileQueueConfigSummary]
lrpqrrsRoutingProfileQueueConfigSummaryList = lens _lrpqrrsRoutingProfileQueueConfigSummaryList (\s a -> s {_lrpqrrsRoutingProfileQueueConfigSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lrpqrrsResponseStatus :: Lens' ListRoutingProfileQueuesResponse Int
lrpqrrsResponseStatus = lens _lrpqrrsResponseStatus (\s a -> s {_lrpqrrsResponseStatus = a})

instance NFData ListRoutingProfileQueuesResponse
