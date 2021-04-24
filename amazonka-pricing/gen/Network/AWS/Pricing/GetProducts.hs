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
-- Module      : Network.AWS.Pricing.GetProducts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all products that match the filter criteria.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Pricing.GetProducts
  ( -- * Creating a Request
    getProducts,
    GetProducts,

    -- * Request Lenses
    gpNextToken,
    gpMaxResults,
    gpServiceCode,
    gpFormatVersion,
    gpFilters,

    -- * Destructuring the Response
    getProductsResponse,
    GetProductsResponse,

    -- * Response Lenses
    gprrsPriceList,
    gprrsNextToken,
    gprrsFormatVersion,
    gprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Pricing.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getProducts' smart constructor.
data GetProducts = GetProducts'
  { _gpNextToken ::
      !(Maybe Text),
    _gpMaxResults :: !(Maybe Nat),
    _gpServiceCode :: !(Maybe Text),
    _gpFormatVersion :: !(Maybe Text),
    _gpFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetProducts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpNextToken' - The pagination token that indicates the next set of results that you want to retrieve.
--
-- * 'gpMaxResults' - The maximum number of results to return in the response.
--
-- * 'gpServiceCode' - The code for the service whose products you want to retrieve.
--
-- * 'gpFormatVersion' - The format version that you want the response to be in. Valid values are: @aws_v1@
--
-- * 'gpFilters' - The list of filters that limit the returned products. only products that match all filters are returned.
getProducts ::
  GetProducts
getProducts =
  GetProducts'
    { _gpNextToken = Nothing,
      _gpMaxResults = Nothing,
      _gpServiceCode = Nothing,
      _gpFormatVersion = Nothing,
      _gpFilters = Nothing
    }

-- | The pagination token that indicates the next set of results that you want to retrieve.
gpNextToken :: Lens' GetProducts (Maybe Text)
gpNextToken = lens _gpNextToken (\s a -> s {_gpNextToken = a})

-- | The maximum number of results to return in the response.
gpMaxResults :: Lens' GetProducts (Maybe Natural)
gpMaxResults = lens _gpMaxResults (\s a -> s {_gpMaxResults = a}) . mapping _Nat

-- | The code for the service whose products you want to retrieve.
gpServiceCode :: Lens' GetProducts (Maybe Text)
gpServiceCode = lens _gpServiceCode (\s a -> s {_gpServiceCode = a})

-- | The format version that you want the response to be in. Valid values are: @aws_v1@
gpFormatVersion :: Lens' GetProducts (Maybe Text)
gpFormatVersion = lens _gpFormatVersion (\s a -> s {_gpFormatVersion = a})

-- | The list of filters that limit the returned products. only products that match all filters are returned.
gpFilters :: Lens' GetProducts [Filter]
gpFilters = lens _gpFilters (\s a -> s {_gpFilters = a}) . _Default . _Coerce

instance AWSPager GetProducts where
  page rq rs
    | stop (rs ^. gprrsNextToken) = Nothing
    | stop (rs ^. gprrsPriceList) = Nothing
    | otherwise =
      Just $ rq & gpNextToken .~ rs ^. gprrsNextToken

instance AWSRequest GetProducts where
  type Rs GetProducts = GetProductsResponse
  request = postJSON pricing
  response =
    receiveJSON
      ( \s h x ->
          GetProductsResponse'
            <$> (x .?> "PriceList" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (x .?> "FormatVersion")
            <*> (pure (fromEnum s))
      )

instance Hashable GetProducts

instance NFData GetProducts

instance ToHeaders GetProducts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSPriceListService.GetProducts" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetProducts where
  toJSON GetProducts' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gpNextToken,
            ("MaxResults" .=) <$> _gpMaxResults,
            ("ServiceCode" .=) <$> _gpServiceCode,
            ("FormatVersion" .=) <$> _gpFormatVersion,
            ("Filters" .=) <$> _gpFilters
          ]
      )

instance ToPath GetProducts where
  toPath = const "/"

instance ToQuery GetProducts where
  toQuery = const mempty

-- | /See:/ 'getProductsResponse' smart constructor.
data GetProductsResponse = GetProductsResponse'
  { _gprrsPriceList ::
      !(Maybe [Text]),
    _gprrsNextToken ::
      !(Maybe Text),
    _gprrsFormatVersion ::
      !(Maybe Text),
    _gprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetProductsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gprrsPriceList' - The list of products that match your filters. The list contains both the product metadata and the price information.
--
-- * 'gprrsNextToken' - The pagination token that indicates the next set of results to retrieve.
--
-- * 'gprrsFormatVersion' - The format version of the response. For example, aws_v1.
--
-- * 'gprrsResponseStatus' - -- | The response status code.
getProductsResponse ::
  -- | 'gprrsResponseStatus'
  Int ->
  GetProductsResponse
getProductsResponse pResponseStatus_ =
  GetProductsResponse'
    { _gprrsPriceList = Nothing,
      _gprrsNextToken = Nothing,
      _gprrsFormatVersion = Nothing,
      _gprrsResponseStatus = pResponseStatus_
    }

-- | The list of products that match your filters. The list contains both the product metadata and the price information.
gprrsPriceList :: Lens' GetProductsResponse [Text]
gprrsPriceList = lens _gprrsPriceList (\s a -> s {_gprrsPriceList = a}) . _Default . _Coerce

-- | The pagination token that indicates the next set of results to retrieve.
gprrsNextToken :: Lens' GetProductsResponse (Maybe Text)
gprrsNextToken = lens _gprrsNextToken (\s a -> s {_gprrsNextToken = a})

-- | The format version of the response. For example, aws_v1.
gprrsFormatVersion :: Lens' GetProductsResponse (Maybe Text)
gprrsFormatVersion = lens _gprrsFormatVersion (\s a -> s {_gprrsFormatVersion = a})

-- | -- | The response status code.
gprrsResponseStatus :: Lens' GetProductsResponse Int
gprrsResponseStatus = lens _gprrsResponseStatus (\s a -> s {_gprrsResponseStatus = a})

instance NFData GetProductsResponse
