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
-- Module      : Network.AWS.IoT.ListIndices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the search indices.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListIndices
  ( -- * Creating a Request
    listIndices,
    ListIndices,

    -- * Request Lenses
    liNextToken,
    liMaxResults,

    -- * Destructuring the Response
    listIndicesResponse,
    ListIndicesResponse,

    -- * Response Lenses
    lirrsNextToken,
    lirrsIndexNames,
    lirrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listIndices' smart constructor.
data ListIndices = ListIndices'
  { _liNextToken ::
      !(Maybe Text),
    _liMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListIndices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liNextToken' - The token used to get the next set of results, or @null@ if there are no additional results.
--
-- * 'liMaxResults' - The maximum number of results to return at one time.
listIndices ::
  ListIndices
listIndices =
  ListIndices'
    { _liNextToken = Nothing,
      _liMaxResults = Nothing
    }

-- | The token used to get the next set of results, or @null@ if there are no additional results.
liNextToken :: Lens' ListIndices (Maybe Text)
liNextToken = lens _liNextToken (\s a -> s {_liNextToken = a})

-- | The maximum number of results to return at one time.
liMaxResults :: Lens' ListIndices (Maybe Natural)
liMaxResults = lens _liMaxResults (\s a -> s {_liMaxResults = a}) . mapping _Nat

instance AWSPager ListIndices where
  page rq rs
    | stop (rs ^. lirrsNextToken) = Nothing
    | stop (rs ^. lirrsIndexNames) = Nothing
    | otherwise =
      Just $ rq & liNextToken .~ rs ^. lirrsNextToken

instance AWSRequest ListIndices where
  type Rs ListIndices = ListIndicesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListIndicesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "indexNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListIndices

instance NFData ListIndices

instance ToHeaders ListIndices where
  toHeaders = const mempty

instance ToPath ListIndices where
  toPath = const "/indices"

instance ToQuery ListIndices where
  toQuery ListIndices' {..} =
    mconcat
      [ "nextToken" =: _liNextToken,
        "maxResults" =: _liMaxResults
      ]

-- | /See:/ 'listIndicesResponse' smart constructor.
data ListIndicesResponse = ListIndicesResponse'
  { _lirrsNextToken ::
      !(Maybe Text),
    _lirrsIndexNames ::
      !(Maybe [Text]),
    _lirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListIndicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrsNextToken' - The token used to get the next set of results, or @null@ if there are no additional results.
--
-- * 'lirrsIndexNames' - The index names.
--
-- * 'lirrsResponseStatus' - -- | The response status code.
listIndicesResponse ::
  -- | 'lirrsResponseStatus'
  Int ->
  ListIndicesResponse
listIndicesResponse pResponseStatus_ =
  ListIndicesResponse'
    { _lirrsNextToken = Nothing,
      _lirrsIndexNames = Nothing,
      _lirrsResponseStatus = pResponseStatus_
    }

-- | The token used to get the next set of results, or @null@ if there are no additional results.
lirrsNextToken :: Lens' ListIndicesResponse (Maybe Text)
lirrsNextToken = lens _lirrsNextToken (\s a -> s {_lirrsNextToken = a})

-- | The index names.
lirrsIndexNames :: Lens' ListIndicesResponse [Text]
lirrsIndexNames = lens _lirrsIndexNames (\s a -> s {_lirrsIndexNames = a}) . _Default . _Coerce

-- | -- | The response status code.
lirrsResponseStatus :: Lens' ListIndicesResponse Int
lirrsResponseStatus = lens _lirrsResponseStatus (\s a -> s {_lirrsResponseStatus = a})

instance NFData ListIndicesResponse
