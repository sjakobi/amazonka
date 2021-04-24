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
-- Module      : Network.AWS.ServiceCatalog.SearchProducts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the products to which the caller has access.
module Network.AWS.ServiceCatalog.SearchProducts
  ( -- * Creating a Request
    searchProducts,
    SearchProducts,

    -- * Request Lenses
    spSortOrder,
    spPageSize,
    spPageToken,
    spSortBy,
    spFilters,
    spAcceptLanguage,

    -- * Destructuring the Response
    searchProductsResponse,
    SearchProductsResponse,

    -- * Response Lenses
    sprrsNextPageToken,
    sprrsProductViewSummaries,
    sprrsProductViewAggregations,
    sprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'searchProducts' smart constructor.
data SearchProducts = SearchProducts'
  { _spSortOrder ::
      !(Maybe SortOrder),
    _spPageSize :: !(Maybe Nat),
    _spPageToken :: !(Maybe Text),
    _spSortBy :: !(Maybe ProductViewSortBy),
    _spFilters ::
      !(Maybe (Map ProductViewFilterBy [Text])),
    _spAcceptLanguage :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchProducts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spSortOrder' - The sort order. If no value is specified, the results are not sorted.
--
-- * 'spPageSize' - The maximum number of items to return with this call.
--
-- * 'spPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'spSortBy' - The sort field. If no value is specified, the results are not sorted.
--
-- * 'spFilters' - The search filters. If no search filters are specified, the output includes all products to which the caller has access.
--
-- * 'spAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
searchProducts ::
  SearchProducts
searchProducts =
  SearchProducts'
    { _spSortOrder = Nothing,
      _spPageSize = Nothing,
      _spPageToken = Nothing,
      _spSortBy = Nothing,
      _spFilters = Nothing,
      _spAcceptLanguage = Nothing
    }

-- | The sort order. If no value is specified, the results are not sorted.
spSortOrder :: Lens' SearchProducts (Maybe SortOrder)
spSortOrder = lens _spSortOrder (\s a -> s {_spSortOrder = a})

-- | The maximum number of items to return with this call.
spPageSize :: Lens' SearchProducts (Maybe Natural)
spPageSize = lens _spPageSize (\s a -> s {_spPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
spPageToken :: Lens' SearchProducts (Maybe Text)
spPageToken = lens _spPageToken (\s a -> s {_spPageToken = a})

-- | The sort field. If no value is specified, the results are not sorted.
spSortBy :: Lens' SearchProducts (Maybe ProductViewSortBy)
spSortBy = lens _spSortBy (\s a -> s {_spSortBy = a})

-- | The search filters. If no search filters are specified, the output includes all products to which the caller has access.
spFilters :: Lens' SearchProducts (HashMap ProductViewFilterBy [Text])
spFilters = lens _spFilters (\s a -> s {_spFilters = a}) . _Default . _Map

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
spAcceptLanguage :: Lens' SearchProducts (Maybe Text)
spAcceptLanguage = lens _spAcceptLanguage (\s a -> s {_spAcceptLanguage = a})

instance AWSRequest SearchProducts where
  type Rs SearchProducts = SearchProductsResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          SearchProductsResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "ProductViewSummaries" .!@ mempty)
            <*> (x .?> "ProductViewAggregations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable SearchProducts

instance NFData SearchProducts

instance ToHeaders SearchProducts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.SearchProducts" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchProducts where
  toJSON SearchProducts' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _spSortOrder,
            ("PageSize" .=) <$> _spPageSize,
            ("PageToken" .=) <$> _spPageToken,
            ("SortBy" .=) <$> _spSortBy,
            ("Filters" .=) <$> _spFilters,
            ("AcceptLanguage" .=) <$> _spAcceptLanguage
          ]
      )

instance ToPath SearchProducts where
  toPath = const "/"

instance ToQuery SearchProducts where
  toQuery = const mempty

-- | /See:/ 'searchProductsResponse' smart constructor.
data SearchProductsResponse = SearchProductsResponse'
  { _sprrsNextPageToken ::
      !(Maybe Text),
    _sprrsProductViewSummaries ::
      !( Maybe
           [ProductViewSummary]
       ),
    _sprrsProductViewAggregations ::
      !( Maybe
           ( Map
               Text
               [ProductViewAggregationValue]
           )
       ),
    _sprrsResponseStatus ::
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

-- | Creates a value of 'SearchProductsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sprrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'sprrsProductViewSummaries' - Information about the product views.
--
-- * 'sprrsProductViewAggregations' - The product view aggregations.
--
-- * 'sprrsResponseStatus' - -- | The response status code.
searchProductsResponse ::
  -- | 'sprrsResponseStatus'
  Int ->
  SearchProductsResponse
searchProductsResponse pResponseStatus_ =
  SearchProductsResponse'
    { _sprrsNextPageToken =
        Nothing,
      _sprrsProductViewSummaries = Nothing,
      _sprrsProductViewAggregations = Nothing,
      _sprrsResponseStatus = pResponseStatus_
    }

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
sprrsNextPageToken :: Lens' SearchProductsResponse (Maybe Text)
sprrsNextPageToken = lens _sprrsNextPageToken (\s a -> s {_sprrsNextPageToken = a})

-- | Information about the product views.
sprrsProductViewSummaries :: Lens' SearchProductsResponse [ProductViewSummary]
sprrsProductViewSummaries = lens _sprrsProductViewSummaries (\s a -> s {_sprrsProductViewSummaries = a}) . _Default . _Coerce

-- | The product view aggregations.
sprrsProductViewAggregations :: Lens' SearchProductsResponse (HashMap Text [ProductViewAggregationValue])
sprrsProductViewAggregations = lens _sprrsProductViewAggregations (\s a -> s {_sprrsProductViewAggregations = a}) . _Default . _Map

-- | -- | The response status code.
sprrsResponseStatus :: Lens' SearchProductsResponse Int
sprrsResponseStatus = lens _sprrsResponseStatus (\s a -> s {_sprrsResponseStatus = a})

instance NFData SearchProductsResponse
