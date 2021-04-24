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
-- Module      : Network.AWS.IoT.ListStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the streams in your AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListStreams
  ( -- * Creating a Request
    listStreams,
    ListStreams,

    -- * Request Lenses
    lsNextToken,
    lsMaxResults,
    lsAscendingOrder,

    -- * Destructuring the Response
    listStreamsResponse,
    ListStreamsResponse,

    -- * Response Lenses
    lsrrsStreams,
    lsrrsNextToken,
    lsrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listStreams' smart constructor.
data ListStreams = ListStreams'
  { _lsNextToken ::
      !(Maybe Text),
    _lsMaxResults :: !(Maybe Nat),
    _lsAscendingOrder :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStreams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsNextToken' - A token used to get the next set of results.
--
-- * 'lsMaxResults' - The maximum number of results to return at a time.
--
-- * 'lsAscendingOrder' - Set to true to return the list of streams in ascending order.
listStreams ::
  ListStreams
listStreams =
  ListStreams'
    { _lsNextToken = Nothing,
      _lsMaxResults = Nothing,
      _lsAscendingOrder = Nothing
    }

-- | A token used to get the next set of results.
lsNextToken :: Lens' ListStreams (Maybe Text)
lsNextToken = lens _lsNextToken (\s a -> s {_lsNextToken = a})

-- | The maximum number of results to return at a time.
lsMaxResults :: Lens' ListStreams (Maybe Natural)
lsMaxResults = lens _lsMaxResults (\s a -> s {_lsMaxResults = a}) . mapping _Nat

-- | Set to true to return the list of streams in ascending order.
lsAscendingOrder :: Lens' ListStreams (Maybe Bool)
lsAscendingOrder = lens _lsAscendingOrder (\s a -> s {_lsAscendingOrder = a})

instance AWSPager ListStreams where
  page rq rs
    | stop (rs ^. lsrrsNextToken) = Nothing
    | stop (rs ^. lsrrsStreams) = Nothing
    | otherwise =
      Just $ rq & lsNextToken .~ rs ^. lsrrsNextToken

instance AWSRequest ListStreams where
  type Rs ListStreams = ListStreamsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListStreamsResponse'
            <$> (x .?> "streams" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListStreams

instance NFData ListStreams

instance ToHeaders ListStreams where
  toHeaders = const mempty

instance ToPath ListStreams where
  toPath = const "/streams"

instance ToQuery ListStreams where
  toQuery ListStreams' {..} =
    mconcat
      [ "nextToken" =: _lsNextToken,
        "maxResults" =: _lsMaxResults,
        "isAscendingOrder" =: _lsAscendingOrder
      ]

-- | /See:/ 'listStreamsResponse' smart constructor.
data ListStreamsResponse = ListStreamsResponse'
  { _lsrrsStreams ::
      !(Maybe [StreamSummary]),
    _lsrrsNextToken ::
      !(Maybe Text),
    _lsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStreamsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsStreams' - A list of streams.
--
-- * 'lsrrsNextToken' - A token used to get the next set of results.
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
listStreamsResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  ListStreamsResponse
listStreamsResponse pResponseStatus_ =
  ListStreamsResponse'
    { _lsrrsStreams = Nothing,
      _lsrrsNextToken = Nothing,
      _lsrrsResponseStatus = pResponseStatus_
    }

-- | A list of streams.
lsrrsStreams :: Lens' ListStreamsResponse [StreamSummary]
lsrrsStreams = lens _lsrrsStreams (\s a -> s {_lsrrsStreams = a}) . _Default . _Coerce

-- | A token used to get the next set of results.
lsrrsNextToken :: Lens' ListStreamsResponse (Maybe Text)
lsrrsNextToken = lens _lsrrsNextToken (\s a -> s {_lsrrsNextToken = a})

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListStreamsResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

instance NFData ListStreamsResponse
