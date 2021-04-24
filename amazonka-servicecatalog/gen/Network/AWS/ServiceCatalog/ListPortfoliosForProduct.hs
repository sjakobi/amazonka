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
-- Module      : Network.AWS.ServiceCatalog.ListPortfoliosForProduct
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all portfolios that the specified product is associated with.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListPortfoliosForProduct
  ( -- * Creating a Request
    listPortfoliosForProduct,
    ListPortfoliosForProduct,

    -- * Request Lenses
    lpfpPageSize,
    lpfpPageToken,
    lpfpAcceptLanguage,
    lpfpProductId,

    -- * Destructuring the Response
    listPortfoliosForProductResponse,
    ListPortfoliosForProductResponse,

    -- * Response Lenses
    lrsPortfolioDetails,
    lrsNextPageToken,
    lrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listPortfoliosForProduct' smart constructor.
data ListPortfoliosForProduct = ListPortfoliosForProduct'
  { _lpfpPageSize ::
      !(Maybe Nat),
    _lpfpPageToken ::
      !(Maybe Text),
    _lpfpAcceptLanguage ::
      !(Maybe Text),
    _lpfpProductId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPortfoliosForProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpfpPageSize' - The maximum number of items to return with this call.
--
-- * 'lpfpPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lpfpAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'lpfpProductId' - The product identifier.
listPortfoliosForProduct ::
  -- | 'lpfpProductId'
  Text ->
  ListPortfoliosForProduct
listPortfoliosForProduct pProductId_ =
  ListPortfoliosForProduct'
    { _lpfpPageSize = Nothing,
      _lpfpPageToken = Nothing,
      _lpfpAcceptLanguage = Nothing,
      _lpfpProductId = pProductId_
    }

-- | The maximum number of items to return with this call.
lpfpPageSize :: Lens' ListPortfoliosForProduct (Maybe Natural)
lpfpPageSize = lens _lpfpPageSize (\s a -> s {_lpfpPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lpfpPageToken :: Lens' ListPortfoliosForProduct (Maybe Text)
lpfpPageToken = lens _lpfpPageToken (\s a -> s {_lpfpPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lpfpAcceptLanguage :: Lens' ListPortfoliosForProduct (Maybe Text)
lpfpAcceptLanguage = lens _lpfpAcceptLanguage (\s a -> s {_lpfpAcceptLanguage = a})

-- | The product identifier.
lpfpProductId :: Lens' ListPortfoliosForProduct Text
lpfpProductId = lens _lpfpProductId (\s a -> s {_lpfpProductId = a})

instance AWSPager ListPortfoliosForProduct where
  page rq rs
    | stop (rs ^. lrsNextPageToken) = Nothing
    | stop (rs ^. lrsPortfolioDetails) = Nothing
    | otherwise =
      Just $ rq & lpfpPageToken .~ rs ^. lrsNextPageToken

instance AWSRequest ListPortfoliosForProduct where
  type
    Rs ListPortfoliosForProduct =
      ListPortfoliosForProductResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListPortfoliosForProductResponse'
            <$> (x .?> "PortfolioDetails" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListPortfoliosForProduct

instance NFData ListPortfoliosForProduct

instance ToHeaders ListPortfoliosForProduct where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListPortfoliosForProduct" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPortfoliosForProduct where
  toJSON ListPortfoliosForProduct' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lpfpPageSize,
            ("PageToken" .=) <$> _lpfpPageToken,
            ("AcceptLanguage" .=) <$> _lpfpAcceptLanguage,
            Just ("ProductId" .= _lpfpProductId)
          ]
      )

instance ToPath ListPortfoliosForProduct where
  toPath = const "/"

instance ToQuery ListPortfoliosForProduct where
  toQuery = const mempty

-- | /See:/ 'listPortfoliosForProductResponse' smart constructor.
data ListPortfoliosForProductResponse = ListPortfoliosForProductResponse'
  { _lrsPortfolioDetails ::
      !( Maybe
           [PortfolioDetail]
       ),
    _lrsNextPageToken ::
      !( Maybe
           Text
       ),
    _lrsResponseStatus ::
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

-- | Creates a value of 'ListPortfoliosForProductResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsPortfolioDetails' - Information about the portfolios.
--
-- * 'lrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lrsResponseStatus' - -- | The response status code.
listPortfoliosForProductResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListPortfoliosForProductResponse
listPortfoliosForProductResponse pResponseStatus_ =
  ListPortfoliosForProductResponse'
    { _lrsPortfolioDetails =
        Nothing,
      _lrsNextPageToken = Nothing,
      _lrsResponseStatus = pResponseStatus_
    }

-- | Information about the portfolios.
lrsPortfolioDetails :: Lens' ListPortfoliosForProductResponse [PortfolioDetail]
lrsPortfolioDetails = lens _lrsPortfolioDetails (\s a -> s {_lrsPortfolioDetails = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lrsNextPageToken :: Lens' ListPortfoliosForProductResponse (Maybe Text)
lrsNextPageToken = lens _lrsNextPageToken (\s a -> s {_lrsNextPageToken = a})

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListPortfoliosForProductResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

instance NFData ListPortfoliosForProductResponse
