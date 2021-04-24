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
-- Module      : Network.AWS.SageMaker.ListContexts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the contexts in your account and their properties.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListContexts
  ( -- * Creating a Request
    listContexts,
    ListContexts,

    -- * Request Lenses
    lcContextType,
    lcCreatedAfter,
    lcSortOrder,
    lcNextToken,
    lcCreatedBefore,
    lcMaxResults,
    lcSourceURI,
    lcSortBy,

    -- * Destructuring the Response
    listContextsResponse,
    ListContextsResponse,

    -- * Response Lenses
    lcrrsNextToken,
    lcrrsContextSummaries,
    lcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listContexts' smart constructor.
data ListContexts = ListContexts'
  { _lcContextType ::
      !(Maybe Text),
    _lcCreatedAfter :: !(Maybe POSIX),
    _lcSortOrder :: !(Maybe SortOrder),
    _lcNextToken :: !(Maybe Text),
    _lcCreatedBefore :: !(Maybe POSIX),
    _lcMaxResults :: !(Maybe Nat),
    _lcSourceURI :: !(Maybe Text),
    _lcSortBy :: !(Maybe SortContextsBy)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListContexts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcContextType' - A filter that returns only contexts of the specified type.
--
-- * 'lcCreatedAfter' - A filter that returns only contexts created on or after the specified time.
--
-- * 'lcSortOrder' - The sort order. The default value is @Descending@ .
--
-- * 'lcNextToken' - If the previous call to @ListContexts@ didn't return the full set of contexts, the call returns a token for getting the next set of contexts.
--
-- * 'lcCreatedBefore' - A filter that returns only contexts created on or before the specified time.
--
-- * 'lcMaxResults' - The maximum number of contexts to return in the response. The default value is 10.
--
-- * 'lcSourceURI' - A filter that returns only contexts with the specified source URI.
--
-- * 'lcSortBy' - The property used to sort results. The default value is @CreationTime@ .
listContexts ::
  ListContexts
listContexts =
  ListContexts'
    { _lcContextType = Nothing,
      _lcCreatedAfter = Nothing,
      _lcSortOrder = Nothing,
      _lcNextToken = Nothing,
      _lcCreatedBefore = Nothing,
      _lcMaxResults = Nothing,
      _lcSourceURI = Nothing,
      _lcSortBy = Nothing
    }

-- | A filter that returns only contexts of the specified type.
lcContextType :: Lens' ListContexts (Maybe Text)
lcContextType = lens _lcContextType (\s a -> s {_lcContextType = a})

-- | A filter that returns only contexts created on or after the specified time.
lcCreatedAfter :: Lens' ListContexts (Maybe UTCTime)
lcCreatedAfter = lens _lcCreatedAfter (\s a -> s {_lcCreatedAfter = a}) . mapping _Time

-- | The sort order. The default value is @Descending@ .
lcSortOrder :: Lens' ListContexts (Maybe SortOrder)
lcSortOrder = lens _lcSortOrder (\s a -> s {_lcSortOrder = a})

-- | If the previous call to @ListContexts@ didn't return the full set of contexts, the call returns a token for getting the next set of contexts.
lcNextToken :: Lens' ListContexts (Maybe Text)
lcNextToken = lens _lcNextToken (\s a -> s {_lcNextToken = a})

-- | A filter that returns only contexts created on or before the specified time.
lcCreatedBefore :: Lens' ListContexts (Maybe UTCTime)
lcCreatedBefore = lens _lcCreatedBefore (\s a -> s {_lcCreatedBefore = a}) . mapping _Time

-- | The maximum number of contexts to return in the response. The default value is 10.
lcMaxResults :: Lens' ListContexts (Maybe Natural)
lcMaxResults = lens _lcMaxResults (\s a -> s {_lcMaxResults = a}) . mapping _Nat

-- | A filter that returns only contexts with the specified source URI.
lcSourceURI :: Lens' ListContexts (Maybe Text)
lcSourceURI = lens _lcSourceURI (\s a -> s {_lcSourceURI = a})

-- | The property used to sort results. The default value is @CreationTime@ .
lcSortBy :: Lens' ListContexts (Maybe SortContextsBy)
lcSortBy = lens _lcSortBy (\s a -> s {_lcSortBy = a})

instance AWSPager ListContexts where
  page rq rs
    | stop (rs ^. lcrrsNextToken) = Nothing
    | stop (rs ^. lcrrsContextSummaries) = Nothing
    | otherwise =
      Just $ rq & lcNextToken .~ rs ^. lcrrsNextToken

instance AWSRequest ListContexts where
  type Rs ListContexts = ListContextsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListContextsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ContextSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListContexts

instance NFData ListContexts

instance ToHeaders ListContexts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListContexts" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListContexts where
  toJSON ListContexts' {..} =
    object
      ( catMaybes
          [ ("ContextType" .=) <$> _lcContextType,
            ("CreatedAfter" .=) <$> _lcCreatedAfter,
            ("SortOrder" .=) <$> _lcSortOrder,
            ("NextToken" .=) <$> _lcNextToken,
            ("CreatedBefore" .=) <$> _lcCreatedBefore,
            ("MaxResults" .=) <$> _lcMaxResults,
            ("SourceUri" .=) <$> _lcSourceURI,
            ("SortBy" .=) <$> _lcSortBy
          ]
      )

instance ToPath ListContexts where
  toPath = const "/"

instance ToQuery ListContexts where
  toQuery = const mempty

-- | /See:/ 'listContextsResponse' smart constructor.
data ListContextsResponse = ListContextsResponse'
  { _lcrrsNextToken ::
      !(Maybe Text),
    _lcrrsContextSummaries ::
      !(Maybe [ContextSummary]),
    _lcrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListContextsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrrsNextToken' - A token for getting the next set of contexts, if there are any.
--
-- * 'lcrrsContextSummaries' - A list of contexts and their properties.
--
-- * 'lcrrsResponseStatus' - -- | The response status code.
listContextsResponse ::
  -- | 'lcrrsResponseStatus'
  Int ->
  ListContextsResponse
listContextsResponse pResponseStatus_ =
  ListContextsResponse'
    { _lcrrsNextToken = Nothing,
      _lcrrsContextSummaries = Nothing,
      _lcrrsResponseStatus = pResponseStatus_
    }

-- | A token for getting the next set of contexts, if there are any.
lcrrsNextToken :: Lens' ListContextsResponse (Maybe Text)
lcrrsNextToken = lens _lcrrsNextToken (\s a -> s {_lcrrsNextToken = a})

-- | A list of contexts and their properties.
lcrrsContextSummaries :: Lens' ListContextsResponse [ContextSummary]
lcrrsContextSummaries = lens _lcrrsContextSummaries (\s a -> s {_lcrrsContextSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lcrrsResponseStatus :: Lens' ListContextsResponse Int
lcrrsResponseStatus = lens _lcrrsResponseStatus (\s a -> s {_lcrrsResponseStatus = a})

instance NFData ListContextsResponse
