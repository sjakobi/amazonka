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
-- Module      : Network.AWS.IoTAnalytics.ListChannels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of channels.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoTAnalytics.ListChannels
  ( -- * Creating a Request
    listChannels,
    ListChannels,

    -- * Request Lenses
    lcNextToken,
    lcMaxResults,

    -- * Destructuring the Response
    listChannelsResponse,
    ListChannelsResponse,

    -- * Response Lenses
    lcrrsNextToken,
    lcrrsChannelSummaries,
    lcrrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listChannels' smart constructor.
data ListChannels = ListChannels'
  { _lcNextToken ::
      !(Maybe Text),
    _lcMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListChannels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcNextToken' - The token for the next set of results.
--
-- * 'lcMaxResults' - The maximum number of results to return in this request. The default value is 100.
listChannels ::
  ListChannels
listChannels =
  ListChannels'
    { _lcNextToken = Nothing,
      _lcMaxResults = Nothing
    }

-- | The token for the next set of results.
lcNextToken :: Lens' ListChannels (Maybe Text)
lcNextToken = lens _lcNextToken (\s a -> s {_lcNextToken = a})

-- | The maximum number of results to return in this request. The default value is 100.
lcMaxResults :: Lens' ListChannels (Maybe Natural)
lcMaxResults = lens _lcMaxResults (\s a -> s {_lcMaxResults = a}) . mapping _Nat

instance AWSPager ListChannels where
  page rq rs
    | stop (rs ^. lcrrsNextToken) = Nothing
    | stop (rs ^. lcrrsChannelSummaries) = Nothing
    | otherwise =
      Just $ rq & lcNextToken .~ rs ^. lcrrsNextToken

instance AWSRequest ListChannels where
  type Rs ListChannels = ListChannelsResponse
  request = get ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          ListChannelsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "channelSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListChannels

instance NFData ListChannels

instance ToHeaders ListChannels where
  toHeaders = const mempty

instance ToPath ListChannels where
  toPath = const "/channels"

instance ToQuery ListChannels where
  toQuery ListChannels' {..} =
    mconcat
      [ "nextToken" =: _lcNextToken,
        "maxResults" =: _lcMaxResults
      ]

-- | /See:/ 'listChannelsResponse' smart constructor.
data ListChannelsResponse = ListChannelsResponse'
  { _lcrrsNextToken ::
      !(Maybe Text),
    _lcrrsChannelSummaries ::
      !(Maybe [ChannelSummary]),
    _lcrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListChannelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrrsNextToken' - The token to retrieve the next set of results, or @null@ if there are no more results.
--
-- * 'lcrrsChannelSummaries' - A list of @ChannelSummary@ objects.
--
-- * 'lcrrsResponseStatus' - -- | The response status code.
listChannelsResponse ::
  -- | 'lcrrsResponseStatus'
  Int ->
  ListChannelsResponse
listChannelsResponse pResponseStatus_ =
  ListChannelsResponse'
    { _lcrrsNextToken = Nothing,
      _lcrrsChannelSummaries = Nothing,
      _lcrrsResponseStatus = pResponseStatus_
    }

-- | The token to retrieve the next set of results, or @null@ if there are no more results.
lcrrsNextToken :: Lens' ListChannelsResponse (Maybe Text)
lcrrsNextToken = lens _lcrrsNextToken (\s a -> s {_lcrrsNextToken = a})

-- | A list of @ChannelSummary@ objects.
lcrrsChannelSummaries :: Lens' ListChannelsResponse [ChannelSummary]
lcrrsChannelSummaries = lens _lcrrsChannelSummaries (\s a -> s {_lcrrsChannelSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lcrrsResponseStatus :: Lens' ListChannelsResponse Int
lcrrsResponseStatus = lens _lcrrsResponseStatus (\s a -> s {_lcrrsResponseStatus = a})

instance NFData ListChannelsResponse
