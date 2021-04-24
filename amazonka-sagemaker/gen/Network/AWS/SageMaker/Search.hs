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
-- Module      : Network.AWS.SageMaker.Search
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds Amazon SageMaker resources that match a search query. Matching resources are returned as a list of @SearchRecord@ objects in the response. You can sort the search results by any resource property in a ascending or descending order.
--
--
-- You can query against the following value types: numeric, text, Boolean, and timestamp.
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.Search
  ( -- * Creating a Request
    search,
    Search,

    -- * Request Lenses
    sSortOrder,
    sNextToken,
    sMaxResults,
    sSearchExpression,
    sSortBy,
    sResource,

    -- * Destructuring the Response
    searchResponse,
    SearchResponse,

    -- * Response Lenses
    srrsNextToken,
    srrsResults,
    srrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'search' smart constructor.
data Search = Search'
  { _sSortOrder ::
      !(Maybe SearchSortOrder),
    _sNextToken :: !(Maybe Text),
    _sMaxResults :: !(Maybe Nat),
    _sSearchExpression :: !(Maybe SearchExpression),
    _sSortBy :: !(Maybe Text),
    _sResource :: !ResourceType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Search' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSortOrder' - How @SearchResults@ are ordered. Valid values are @Ascending@ or @Descending@ . The default is @Descending@ .
--
-- * 'sNextToken' - If more than @MaxResults@ resources match the specified @SearchExpression@ , the response includes a @NextToken@ . The @NextToken@ can be passed to the next @SearchRequest@ to continue retrieving results.
--
-- * 'sMaxResults' - The maximum number of results to return.
--
-- * 'sSearchExpression' - A Boolean conditional statement. Resources must satisfy this condition to be included in search results. You must provide at least one subexpression, filter, or nested filter. The maximum number of recursive @SubExpressions@ , @NestedFilters@ , and @Filters@ that can be included in a @SearchExpression@ object is 50.
--
-- * 'sSortBy' - The name of the resource property used to sort the @SearchResults@ . The default is @LastModifiedTime@ .
--
-- * 'sResource' - The name of the Amazon SageMaker resource to search for.
search ::
  -- | 'sResource'
  ResourceType ->
  Search
search pResource_ =
  Search'
    { _sSortOrder = Nothing,
      _sNextToken = Nothing,
      _sMaxResults = Nothing,
      _sSearchExpression = Nothing,
      _sSortBy = Nothing,
      _sResource = pResource_
    }

-- | How @SearchResults@ are ordered. Valid values are @Ascending@ or @Descending@ . The default is @Descending@ .
sSortOrder :: Lens' Search (Maybe SearchSortOrder)
sSortOrder = lens _sSortOrder (\s a -> s {_sSortOrder = a})

-- | If more than @MaxResults@ resources match the specified @SearchExpression@ , the response includes a @NextToken@ . The @NextToken@ can be passed to the next @SearchRequest@ to continue retrieving results.
sNextToken :: Lens' Search (Maybe Text)
sNextToken = lens _sNextToken (\s a -> s {_sNextToken = a})

-- | The maximum number of results to return.
sMaxResults :: Lens' Search (Maybe Natural)
sMaxResults = lens _sMaxResults (\s a -> s {_sMaxResults = a}) . mapping _Nat

-- | A Boolean conditional statement. Resources must satisfy this condition to be included in search results. You must provide at least one subexpression, filter, or nested filter. The maximum number of recursive @SubExpressions@ , @NestedFilters@ , and @Filters@ that can be included in a @SearchExpression@ object is 50.
sSearchExpression :: Lens' Search (Maybe SearchExpression)
sSearchExpression = lens _sSearchExpression (\s a -> s {_sSearchExpression = a})

-- | The name of the resource property used to sort the @SearchResults@ . The default is @LastModifiedTime@ .
sSortBy :: Lens' Search (Maybe Text)
sSortBy = lens _sSortBy (\s a -> s {_sSortBy = a})

-- | The name of the Amazon SageMaker resource to search for.
sResource :: Lens' Search ResourceType
sResource = lens _sResource (\s a -> s {_sResource = a})

instance AWSPager Search where
  page rq rs
    | stop (rs ^. srrsNextToken) = Nothing
    | stop (rs ^. srrsResults) = Nothing
    | otherwise =
      Just $ rq & sNextToken .~ rs ^. srrsNextToken

instance AWSRequest Search where
  type Rs Search = SearchResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          SearchResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Results" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable Search

instance NFData Search

instance ToHeaders Search where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.Search" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON Search where
  toJSON Search' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _sSortOrder,
            ("NextToken" .=) <$> _sNextToken,
            ("MaxResults" .=) <$> _sMaxResults,
            ("SearchExpression" .=) <$> _sSearchExpression,
            ("SortBy" .=) <$> _sSortBy,
            Just ("Resource" .= _sResource)
          ]
      )

instance ToPath Search where
  toPath = const "/"

instance ToQuery Search where
  toQuery = const mempty

-- | /See:/ 'searchResponse' smart constructor.
data SearchResponse = SearchResponse'
  { _srrsNextToken ::
      !(Maybe Text),
    _srrsResults :: !(Maybe [SearchRecord]),
    _srrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrsNextToken' - If the result of the previous @Search@ request was truncated, the response includes a NextToken. To retrieve the next set of results, use the token in the next request.
--
-- * 'srrsResults' - A list of @SearchRecord@ objects.
--
-- * 'srrsResponseStatus' - -- | The response status code.
searchResponse ::
  -- | 'srrsResponseStatus'
  Int ->
  SearchResponse
searchResponse pResponseStatus_ =
  SearchResponse'
    { _srrsNextToken = Nothing,
      _srrsResults = Nothing,
      _srrsResponseStatus = pResponseStatus_
    }

-- | If the result of the previous @Search@ request was truncated, the response includes a NextToken. To retrieve the next set of results, use the token in the next request.
srrsNextToken :: Lens' SearchResponse (Maybe Text)
srrsNextToken = lens _srrsNextToken (\s a -> s {_srrsNextToken = a})

-- | A list of @SearchRecord@ objects.
srrsResults :: Lens' SearchResponse [SearchRecord]
srrsResults = lens _srrsResults (\s a -> s {_srrsResults = a}) . _Default . _Coerce

-- | -- | The response status code.
srrsResponseStatus :: Lens' SearchResponse Int
srrsResponseStatus = lens _srrsResponseStatus (\s a -> s {_srrsResponseStatus = a})

instance NFData SearchResponse
