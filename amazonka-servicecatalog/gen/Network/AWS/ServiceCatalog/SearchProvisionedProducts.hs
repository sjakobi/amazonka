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
-- Module      : Network.AWS.ServiceCatalog.SearchProvisionedProducts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the provisioned products that meet the specified criteria.
module Network.AWS.ServiceCatalog.SearchProvisionedProducts
  ( -- * Creating a Request
    searchProvisionedProducts,
    SearchProvisionedProducts,

    -- * Request Lenses
    sSortOrder,
    sPageSize,
    sPageToken,
    sAccessLevelFilter,
    sSortBy,
    sFilters,
    sAcceptLanguage,

    -- * Destructuring the Response
    searchProvisionedProductsResponse,
    SearchProvisionedProductsResponse,

    -- * Response Lenses
    srsTotalResultsCount,
    srsProvisionedProducts,
    srsNextPageToken,
    srsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'searchProvisionedProducts' smart constructor.
data SearchProvisionedProducts = SearchProvisionedProducts'
  { _sSortOrder ::
      !(Maybe SortOrder),
    _sPageSize ::
      !(Maybe Nat),
    _sPageToken ::
      !(Maybe Text),
    _sAccessLevelFilter ::
      !( Maybe
           AccessLevelFilter
       ),
    _sSortBy ::
      !(Maybe Text),
    _sFilters ::
      !( Maybe
           ( Map
               ProvisionedProductViewFilterBy
               [Text]
           )
       ),
    _sAcceptLanguage ::
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

-- | Creates a value of 'SearchProvisionedProducts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSortOrder' - The sort order. If no value is specified, the results are not sorted.
--
-- * 'sPageSize' - The maximum number of items to return with this call.
--
-- * 'sPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'sAccessLevelFilter' - The access level to use to obtain results. The default is @User@ .
--
-- * 'sSortBy' - The sort field. If no value is specified, the results are not sorted. The valid values are @arn@ , @id@ , @name@ , and @lastRecordId@ .
--
-- * 'sFilters' - The search filters. When the key is @SearchQuery@ , the searchable fields are @arn@ , @createdTime@ , @id@ , @lastRecordId@ , @idempotencyToken@ , @name@ , @physicalId@ , @productId@ , @provisioningArtifact@ , @type@ , @status@ , @tags@ , @userArn@ , @userArnSession@ , @lastProvisioningRecordId@ , @lastSuccessfulProvisioningRecordId@ , @productName@ , and @provisioningArtifactName@ . Example: @"SearchQuery":["status:AVAILABLE"]@
--
-- * 'sAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
searchProvisionedProducts ::
  SearchProvisionedProducts
searchProvisionedProducts =
  SearchProvisionedProducts'
    { _sSortOrder = Nothing,
      _sPageSize = Nothing,
      _sPageToken = Nothing,
      _sAccessLevelFilter = Nothing,
      _sSortBy = Nothing,
      _sFilters = Nothing,
      _sAcceptLanguage = Nothing
    }

-- | The sort order. If no value is specified, the results are not sorted.
sSortOrder :: Lens' SearchProvisionedProducts (Maybe SortOrder)
sSortOrder = lens _sSortOrder (\s a -> s {_sSortOrder = a})

-- | The maximum number of items to return with this call.
sPageSize :: Lens' SearchProvisionedProducts (Maybe Natural)
sPageSize = lens _sPageSize (\s a -> s {_sPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
sPageToken :: Lens' SearchProvisionedProducts (Maybe Text)
sPageToken = lens _sPageToken (\s a -> s {_sPageToken = a})

-- | The access level to use to obtain results. The default is @User@ .
sAccessLevelFilter :: Lens' SearchProvisionedProducts (Maybe AccessLevelFilter)
sAccessLevelFilter = lens _sAccessLevelFilter (\s a -> s {_sAccessLevelFilter = a})

-- | The sort field. If no value is specified, the results are not sorted. The valid values are @arn@ , @id@ , @name@ , and @lastRecordId@ .
sSortBy :: Lens' SearchProvisionedProducts (Maybe Text)
sSortBy = lens _sSortBy (\s a -> s {_sSortBy = a})

-- | The search filters. When the key is @SearchQuery@ , the searchable fields are @arn@ , @createdTime@ , @id@ , @lastRecordId@ , @idempotencyToken@ , @name@ , @physicalId@ , @productId@ , @provisioningArtifact@ , @type@ , @status@ , @tags@ , @userArn@ , @userArnSession@ , @lastProvisioningRecordId@ , @lastSuccessfulProvisioningRecordId@ , @productName@ , and @provisioningArtifactName@ . Example: @"SearchQuery":["status:AVAILABLE"]@
sFilters :: Lens' SearchProvisionedProducts (HashMap ProvisionedProductViewFilterBy [Text])
sFilters = lens _sFilters (\s a -> s {_sFilters = a}) . _Default . _Map

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
sAcceptLanguage :: Lens' SearchProvisionedProducts (Maybe Text)
sAcceptLanguage = lens _sAcceptLanguage (\s a -> s {_sAcceptLanguage = a})

instance AWSRequest SearchProvisionedProducts where
  type
    Rs SearchProvisionedProducts =
      SearchProvisionedProductsResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          SearchProvisionedProductsResponse'
            <$> (x .?> "TotalResultsCount")
            <*> (x .?> "ProvisionedProducts" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable SearchProvisionedProducts

instance NFData SearchProvisionedProducts

instance ToHeaders SearchProvisionedProducts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.SearchProvisionedProducts" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchProvisionedProducts where
  toJSON SearchProvisionedProducts' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _sSortOrder,
            ("PageSize" .=) <$> _sPageSize,
            ("PageToken" .=) <$> _sPageToken,
            ("AccessLevelFilter" .=) <$> _sAccessLevelFilter,
            ("SortBy" .=) <$> _sSortBy,
            ("Filters" .=) <$> _sFilters,
            ("AcceptLanguage" .=) <$> _sAcceptLanguage
          ]
      )

instance ToPath SearchProvisionedProducts where
  toPath = const "/"

instance ToQuery SearchProvisionedProducts where
  toQuery = const mempty

-- | /See:/ 'searchProvisionedProductsResponse' smart constructor.
data SearchProvisionedProductsResponse = SearchProvisionedProductsResponse'
  { _srsTotalResultsCount ::
      !( Maybe
           Int
       ),
    _srsProvisionedProducts ::
      !( Maybe
           [ProvisionedProductAttribute]
       ),
    _srsNextPageToken ::
      !( Maybe
           Text
       ),
    _srsResponseStatus ::
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

-- | Creates a value of 'SearchProvisionedProductsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsTotalResultsCount' - The number of provisioned products found.
--
-- * 'srsProvisionedProducts' - Information about the provisioned products.
--
-- * 'srsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'srsResponseStatus' - -- | The response status code.
searchProvisionedProductsResponse ::
  -- | 'srsResponseStatus'
  Int ->
  SearchProvisionedProductsResponse
searchProvisionedProductsResponse pResponseStatus_ =
  SearchProvisionedProductsResponse'
    { _srsTotalResultsCount =
        Nothing,
      _srsProvisionedProducts = Nothing,
      _srsNextPageToken = Nothing,
      _srsResponseStatus = pResponseStatus_
    }

-- | The number of provisioned products found.
srsTotalResultsCount :: Lens' SearchProvisionedProductsResponse (Maybe Int)
srsTotalResultsCount = lens _srsTotalResultsCount (\s a -> s {_srsTotalResultsCount = a})

-- | Information about the provisioned products.
srsProvisionedProducts :: Lens' SearchProvisionedProductsResponse [ProvisionedProductAttribute]
srsProvisionedProducts = lens _srsProvisionedProducts (\s a -> s {_srsProvisionedProducts = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
srsNextPageToken :: Lens' SearchProvisionedProductsResponse (Maybe Text)
srsNextPageToken = lens _srsNextPageToken (\s a -> s {_srsNextPageToken = a})

-- | -- | The response status code.
srsResponseStatus :: Lens' SearchProvisionedProductsResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData SearchProvisionedProductsResponse
