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
-- Module      : Network.AWS.ServiceCatalog.ScanProvisionedProducts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the provisioned products that are available (not terminated).
--
--
-- To use additional filtering, see 'SearchProvisionedProducts' .
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ScanProvisionedProducts
  ( -- * Creating a Request
    scanProvisionedProducts,
    ScanProvisionedProducts,

    -- * Request Lenses
    sppPageSize,
    sppPageToken,
    sppAccessLevelFilter,
    sppAcceptLanguage,

    -- * Destructuring the Response
    scanProvisionedProductsResponse,
    ScanProvisionedProductsResponse,

    -- * Response Lenses
    spprrsProvisionedProducts,
    spprrsNextPageToken,
    spprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'scanProvisionedProducts' smart constructor.
data ScanProvisionedProducts = ScanProvisionedProducts'
  { _sppPageSize ::
      !(Maybe Nat),
    _sppPageToken ::
      !(Maybe Text),
    _sppAccessLevelFilter ::
      !( Maybe
           AccessLevelFilter
       ),
    _sppAcceptLanguage ::
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

-- | Creates a value of 'ScanProvisionedProducts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sppPageSize' - The maximum number of items to return with this call.
--
-- * 'sppPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'sppAccessLevelFilter' - The access level to use to obtain results. The default is @User@ .
--
-- * 'sppAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
scanProvisionedProducts ::
  ScanProvisionedProducts
scanProvisionedProducts =
  ScanProvisionedProducts'
    { _sppPageSize = Nothing,
      _sppPageToken = Nothing,
      _sppAccessLevelFilter = Nothing,
      _sppAcceptLanguage = Nothing
    }

-- | The maximum number of items to return with this call.
sppPageSize :: Lens' ScanProvisionedProducts (Maybe Natural)
sppPageSize = lens _sppPageSize (\s a -> s {_sppPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
sppPageToken :: Lens' ScanProvisionedProducts (Maybe Text)
sppPageToken = lens _sppPageToken (\s a -> s {_sppPageToken = a})

-- | The access level to use to obtain results. The default is @User@ .
sppAccessLevelFilter :: Lens' ScanProvisionedProducts (Maybe AccessLevelFilter)
sppAccessLevelFilter = lens _sppAccessLevelFilter (\s a -> s {_sppAccessLevelFilter = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
sppAcceptLanguage :: Lens' ScanProvisionedProducts (Maybe Text)
sppAcceptLanguage = lens _sppAcceptLanguage (\s a -> s {_sppAcceptLanguage = a})

instance AWSPager ScanProvisionedProducts where
  page rq rs
    | stop (rs ^. spprrsNextPageToken) = Nothing
    | stop (rs ^. spprrsProvisionedProducts) = Nothing
    | otherwise =
      Just $ rq & sppPageToken .~ rs ^. spprrsNextPageToken

instance AWSRequest ScanProvisionedProducts where
  type
    Rs ScanProvisionedProducts =
      ScanProvisionedProductsResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ScanProvisionedProductsResponse'
            <$> (x .?> "ProvisionedProducts" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ScanProvisionedProducts

instance NFData ScanProvisionedProducts

instance ToHeaders ScanProvisionedProducts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ScanProvisionedProducts" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ScanProvisionedProducts where
  toJSON ScanProvisionedProducts' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _sppPageSize,
            ("PageToken" .=) <$> _sppPageToken,
            ("AccessLevelFilter" .=) <$> _sppAccessLevelFilter,
            ("AcceptLanguage" .=) <$> _sppAcceptLanguage
          ]
      )

instance ToPath ScanProvisionedProducts where
  toPath = const "/"

instance ToQuery ScanProvisionedProducts where
  toQuery = const mempty

-- | /See:/ 'scanProvisionedProductsResponse' smart constructor.
data ScanProvisionedProductsResponse = ScanProvisionedProductsResponse'
  { _spprrsProvisionedProducts ::
      !( Maybe
           [ProvisionedProductDetail]
       ),
    _spprrsNextPageToken ::
      !( Maybe
           Text
       ),
    _spprrsResponseStatus ::
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

-- | Creates a value of 'ScanProvisionedProductsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spprrsProvisionedProducts' - Information about the provisioned products.
--
-- * 'spprrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'spprrsResponseStatus' - -- | The response status code.
scanProvisionedProductsResponse ::
  -- | 'spprrsResponseStatus'
  Int ->
  ScanProvisionedProductsResponse
scanProvisionedProductsResponse pResponseStatus_ =
  ScanProvisionedProductsResponse'
    { _spprrsProvisionedProducts =
        Nothing,
      _spprrsNextPageToken = Nothing,
      _spprrsResponseStatus = pResponseStatus_
    }

-- | Information about the provisioned products.
spprrsProvisionedProducts :: Lens' ScanProvisionedProductsResponse [ProvisionedProductDetail]
spprrsProvisionedProducts = lens _spprrsProvisionedProducts (\s a -> s {_spprrsProvisionedProducts = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
spprrsNextPageToken :: Lens' ScanProvisionedProductsResponse (Maybe Text)
spprrsNextPageToken = lens _spprrsNextPageToken (\s a -> s {_spprrsNextPageToken = a})

-- | -- | The response status code.
spprrsResponseStatus :: Lens' ScanProvisionedProductsResponse Int
spprrsResponseStatus = lens _spprrsResponseStatus (\s a -> s {_spprrsResponseStatus = a})

instance NFData ScanProvisionedProductsResponse
