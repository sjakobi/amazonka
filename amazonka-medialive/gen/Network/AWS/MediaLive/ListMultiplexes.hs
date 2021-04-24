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
-- Module      : Network.AWS.MediaLive.ListMultiplexes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a list of the existing multiplexes.
--
-- This operation returns paginated results.
module Network.AWS.MediaLive.ListMultiplexes
  ( -- * Creating a Request
    listMultiplexes,
    ListMultiplexes,

    -- * Request Lenses
    lmNextToken,
    lmMaxResults,

    -- * Destructuring the Response
    listMultiplexesResponse,
    ListMultiplexesResponse,

    -- * Response Lenses
    lmrrsNextToken,
    lmrrsMultiplexes,
    lmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for ListMultiplexesRequest
--
-- /See:/ 'listMultiplexes' smart constructor.
data ListMultiplexes = ListMultiplexes'
  { _lmNextToken ::
      !(Maybe Text),
    _lmMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListMultiplexes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmNextToken' - The token to retrieve the next page of results.
--
-- * 'lmMaxResults' - The maximum number of items to return.
listMultiplexes ::
  ListMultiplexes
listMultiplexes =
  ListMultiplexes'
    { _lmNextToken = Nothing,
      _lmMaxResults = Nothing
    }

-- | The token to retrieve the next page of results.
lmNextToken :: Lens' ListMultiplexes (Maybe Text)
lmNextToken = lens _lmNextToken (\s a -> s {_lmNextToken = a})

-- | The maximum number of items to return.
lmMaxResults :: Lens' ListMultiplexes (Maybe Natural)
lmMaxResults = lens _lmMaxResults (\s a -> s {_lmMaxResults = a}) . mapping _Nat

instance AWSPager ListMultiplexes where
  page rq rs
    | stop (rs ^. lmrrsNextToken) = Nothing
    | stop (rs ^. lmrrsMultiplexes) = Nothing
    | otherwise =
      Just $ rq & lmNextToken .~ rs ^. lmrrsNextToken

instance AWSRequest ListMultiplexes where
  type Rs ListMultiplexes = ListMultiplexesResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          ListMultiplexesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "multiplexes" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListMultiplexes

instance NFData ListMultiplexes

instance ToHeaders ListMultiplexes where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListMultiplexes where
  toPath = const "/prod/multiplexes"

instance ToQuery ListMultiplexes where
  toQuery ListMultiplexes' {..} =
    mconcat
      [ "nextToken" =: _lmNextToken,
        "maxResults" =: _lmMaxResults
      ]

-- | Placeholder documentation for ListMultiplexesResponse
--
-- /See:/ 'listMultiplexesResponse' smart constructor.
data ListMultiplexesResponse = ListMultiplexesResponse'
  { _lmrrsNextToken ::
      !(Maybe Text),
    _lmrrsMultiplexes ::
      !( Maybe
           [MultiplexSummary]
       ),
    _lmrrsResponseStatus ::
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

-- | Creates a value of 'ListMultiplexesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrrsNextToken' - Token for the next ListMultiplexes request.
--
-- * 'lmrrsMultiplexes' - List of multiplexes.
--
-- * 'lmrrsResponseStatus' - -- | The response status code.
listMultiplexesResponse ::
  -- | 'lmrrsResponseStatus'
  Int ->
  ListMultiplexesResponse
listMultiplexesResponse pResponseStatus_ =
  ListMultiplexesResponse'
    { _lmrrsNextToken = Nothing,
      _lmrrsMultiplexes = Nothing,
      _lmrrsResponseStatus = pResponseStatus_
    }

-- | Token for the next ListMultiplexes request.
lmrrsNextToken :: Lens' ListMultiplexesResponse (Maybe Text)
lmrrsNextToken = lens _lmrrsNextToken (\s a -> s {_lmrrsNextToken = a})

-- | List of multiplexes.
lmrrsMultiplexes :: Lens' ListMultiplexesResponse [MultiplexSummary]
lmrrsMultiplexes = lens _lmrrsMultiplexes (\s a -> s {_lmrrsMultiplexes = a}) . _Default . _Coerce

-- | -- | The response status code.
lmrrsResponseStatus :: Lens' ListMultiplexesResponse Int
lmrrsResponseStatus = lens _lmrrsResponseStatus (\s a -> s {_lmrrsResponseStatus = a})

instance NFData ListMultiplexesResponse
