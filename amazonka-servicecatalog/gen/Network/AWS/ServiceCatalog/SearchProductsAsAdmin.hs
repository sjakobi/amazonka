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
-- Module      : Network.AWS.ServiceCatalog.SearchProductsAsAdmin
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the products for the specified portfolio or all products.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.SearchProductsAsAdmin
  ( -- * Creating a Request
    searchProductsAsAdmin,
    SearchProductsAsAdmin,

    -- * Request Lenses
    spaaSortOrder,
    spaaPageSize,
    spaaPageToken,
    spaaPortfolioId,
    spaaSortBy,
    spaaProductSource,
    spaaFilters,
    spaaAcceptLanguage,

    -- * Destructuring the Response
    searchProductsAsAdminResponse,
    SearchProductsAsAdminResponse,

    -- * Response Lenses
    spaarrsNextPageToken,
    spaarrsProductViewDetails,
    spaarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'searchProductsAsAdmin' smart constructor.
data SearchProductsAsAdmin = SearchProductsAsAdmin'
  { _spaaSortOrder ::
      !(Maybe SortOrder),
    _spaaPageSize ::
      !(Maybe Nat),
    _spaaPageToken ::
      !(Maybe Text),
    _spaaPortfolioId ::
      !(Maybe Text),
    _spaaSortBy ::
      !(Maybe ProductViewSortBy),
    _spaaProductSource ::
      !(Maybe ProductSource),
    _spaaFilters ::
      !( Maybe
           ( Map
               ProductViewFilterBy
               [Text]
           )
       ),
    _spaaAcceptLanguage ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SearchProductsAsAdmin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spaaSortOrder' - The sort order. If no value is specified, the results are not sorted.
--
-- * 'spaaPageSize' - The maximum number of items to return with this call.
--
-- * 'spaaPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'spaaPortfolioId' - The portfolio identifier.
--
-- * 'spaaSortBy' - The sort field. If no value is specified, the results are not sorted.
--
-- * 'spaaProductSource' - Access level of the source of the product.
--
-- * 'spaaFilters' - The search filters. If no search filters are specified, the output includes all products to which the administrator has access.
--
-- * 'spaaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
searchProductsAsAdmin ::
  SearchProductsAsAdmin
searchProductsAsAdmin =
  SearchProductsAsAdmin'
    { _spaaSortOrder = Nothing,
      _spaaPageSize = Nothing,
      _spaaPageToken = Nothing,
      _spaaPortfolioId = Nothing,
      _spaaSortBy = Nothing,
      _spaaProductSource = Nothing,
      _spaaFilters = Nothing,
      _spaaAcceptLanguage = Nothing
    }

-- | The sort order. If no value is specified, the results are not sorted.
spaaSortOrder :: Lens' SearchProductsAsAdmin (Maybe SortOrder)
spaaSortOrder = lens _spaaSortOrder (\s a -> s {_spaaSortOrder = a})

-- | The maximum number of items to return with this call.
spaaPageSize :: Lens' SearchProductsAsAdmin (Maybe Natural)
spaaPageSize = lens _spaaPageSize (\s a -> s {_spaaPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
spaaPageToken :: Lens' SearchProductsAsAdmin (Maybe Text)
spaaPageToken = lens _spaaPageToken (\s a -> s {_spaaPageToken = a})

-- | The portfolio identifier.
spaaPortfolioId :: Lens' SearchProductsAsAdmin (Maybe Text)
spaaPortfolioId = lens _spaaPortfolioId (\s a -> s {_spaaPortfolioId = a})

-- | The sort field. If no value is specified, the results are not sorted.
spaaSortBy :: Lens' SearchProductsAsAdmin (Maybe ProductViewSortBy)
spaaSortBy = lens _spaaSortBy (\s a -> s {_spaaSortBy = a})

-- | Access level of the source of the product.
spaaProductSource :: Lens' SearchProductsAsAdmin (Maybe ProductSource)
spaaProductSource = lens _spaaProductSource (\s a -> s {_spaaProductSource = a})

-- | The search filters. If no search filters are specified, the output includes all products to which the administrator has access.
spaaFilters :: Lens' SearchProductsAsAdmin (HashMap ProductViewFilterBy [Text])
spaaFilters = lens _spaaFilters (\s a -> s {_spaaFilters = a}) . _Default . _Map

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
spaaAcceptLanguage :: Lens' SearchProductsAsAdmin (Maybe Text)
spaaAcceptLanguage = lens _spaaAcceptLanguage (\s a -> s {_spaaAcceptLanguage = a})

instance AWSPager SearchProductsAsAdmin where
  page rq rs
    | stop (rs ^. spaarrsNextPageToken) = Nothing
    | stop (rs ^. spaarrsProductViewDetails) = Nothing
    | otherwise =
      Just $
        rq
          & spaaPageToken .~ rs ^. spaarrsNextPageToken

instance AWSRequest SearchProductsAsAdmin where
  type
    Rs SearchProductsAsAdmin =
      SearchProductsAsAdminResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          SearchProductsAsAdminResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "ProductViewDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable SearchProductsAsAdmin

instance NFData SearchProductsAsAdmin

instance ToHeaders SearchProductsAsAdmin where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.SearchProductsAsAdmin" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchProductsAsAdmin where
  toJSON SearchProductsAsAdmin' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _spaaSortOrder,
            ("PageSize" .=) <$> _spaaPageSize,
            ("PageToken" .=) <$> _spaaPageToken,
            ("PortfolioId" .=) <$> _spaaPortfolioId,
            ("SortBy" .=) <$> _spaaSortBy,
            ("ProductSource" .=) <$> _spaaProductSource,
            ("Filters" .=) <$> _spaaFilters,
            ("AcceptLanguage" .=) <$> _spaaAcceptLanguage
          ]
      )

instance ToPath SearchProductsAsAdmin where
  toPath = const "/"

instance ToQuery SearchProductsAsAdmin where
  toQuery = const mempty

-- | /See:/ 'searchProductsAsAdminResponse' smart constructor.
data SearchProductsAsAdminResponse = SearchProductsAsAdminResponse'
  { _spaarrsNextPageToken ::
      !( Maybe
           Text
       ),
    _spaarrsProductViewDetails ::
      !( Maybe
           [ProductViewDetail]
       ),
    _spaarrsResponseStatus ::
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

-- | Creates a value of 'SearchProductsAsAdminResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spaarrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'spaarrsProductViewDetails' - Information about the product views.
--
-- * 'spaarrsResponseStatus' - -- | The response status code.
searchProductsAsAdminResponse ::
  -- | 'spaarrsResponseStatus'
  Int ->
  SearchProductsAsAdminResponse
searchProductsAsAdminResponse pResponseStatus_ =
  SearchProductsAsAdminResponse'
    { _spaarrsNextPageToken =
        Nothing,
      _spaarrsProductViewDetails = Nothing,
      _spaarrsResponseStatus = pResponseStatus_
    }

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
spaarrsNextPageToken :: Lens' SearchProductsAsAdminResponse (Maybe Text)
spaarrsNextPageToken = lens _spaarrsNextPageToken (\s a -> s {_spaarrsNextPageToken = a})

-- | Information about the product views.
spaarrsProductViewDetails :: Lens' SearchProductsAsAdminResponse [ProductViewDetail]
spaarrsProductViewDetails = lens _spaarrsProductViewDetails (\s a -> s {_spaarrsProductViewDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
spaarrsResponseStatus :: Lens' SearchProductsAsAdminResponse Int
spaarrsResponseStatus = lens _spaarrsResponseStatus (\s a -> s {_spaarrsResponseStatus = a})

instance NFData SearchProductsAsAdminResponse
