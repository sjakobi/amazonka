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
-- Module      : Network.AWS.MediaPackage.ListChannels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a collection of Channels.
--
-- This operation returns paginated results.
module Network.AWS.MediaPackage.ListChannels
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
    lcrrsChannels,
    lcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
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
-- * 'lcNextToken' - A token used to resume pagination from the end of a previous request.
--
-- * 'lcMaxResults' - Upper bound on number of records to return.
listChannels ::
  ListChannels
listChannels =
  ListChannels'
    { _lcNextToken = Nothing,
      _lcMaxResults = Nothing
    }

-- | A token used to resume pagination from the end of a previous request.
lcNextToken :: Lens' ListChannels (Maybe Text)
lcNextToken = lens _lcNextToken (\s a -> s {_lcNextToken = a})

-- | Upper bound on number of records to return.
lcMaxResults :: Lens' ListChannels (Maybe Natural)
lcMaxResults = lens _lcMaxResults (\s a -> s {_lcMaxResults = a}) . mapping _Nat

instance AWSPager ListChannels where
  page rq rs
    | stop (rs ^. lcrrsNextToken) = Nothing
    | stop (rs ^. lcrrsChannels) = Nothing
    | otherwise =
      Just $ rq & lcNextToken .~ rs ^. lcrrsNextToken

instance AWSRequest ListChannels where
  type Rs ListChannels = ListChannelsResponse
  request = get mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          ListChannelsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "channels" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListChannels

instance NFData ListChannels

instance ToHeaders ListChannels where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

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
    _lcrrsChannels ::
      !(Maybe [Channel]),
    _lcrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListChannelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrrsNextToken' - A token that can be used to resume pagination from the end of the collection.
--
-- * 'lcrrsChannels' - A list of Channel records.
--
-- * 'lcrrsResponseStatus' - -- | The response status code.
listChannelsResponse ::
  -- | 'lcrrsResponseStatus'
  Int ->
  ListChannelsResponse
listChannelsResponse pResponseStatus_ =
  ListChannelsResponse'
    { _lcrrsNextToken = Nothing,
      _lcrrsChannels = Nothing,
      _lcrrsResponseStatus = pResponseStatus_
    }

-- | A token that can be used to resume pagination from the end of the collection.
lcrrsNextToken :: Lens' ListChannelsResponse (Maybe Text)
lcrrsNextToken = lens _lcrrsNextToken (\s a -> s {_lcrrsNextToken = a})

-- | A list of Channel records.
lcrrsChannels :: Lens' ListChannelsResponse [Channel]
lcrrsChannels = lens _lcrrsChannels (\s a -> s {_lcrrsChannels = a}) . _Default . _Coerce

-- | -- | The response status code.
lcrrsResponseStatus :: Lens' ListChannelsResponse Int
lcrrsResponseStatus = lens _lcrrsResponseStatus (\s a -> s {_lcrrsResponseStatus = a})

instance NFData ListChannelsResponse
