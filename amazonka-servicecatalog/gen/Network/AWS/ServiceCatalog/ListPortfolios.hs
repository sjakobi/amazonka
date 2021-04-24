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
-- Module      : Network.AWS.ServiceCatalog.ListPortfolios
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all portfolios in the catalog.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListPortfolios
  ( -- * Creating a Request
    listPortfolios,
    ListPortfolios,

    -- * Request Lenses
    lpPageSize,
    lpPageToken,
    lpAcceptLanguage,

    -- * Destructuring the Response
    listPortfoliosResponse,
    ListPortfoliosResponse,

    -- * Response Lenses
    lprrsPortfolioDetails,
    lprrsNextPageToken,
    lprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listPortfolios' smart constructor.
data ListPortfolios = ListPortfolios'
  { _lpPageSize ::
      !(Maybe Nat),
    _lpPageToken :: !(Maybe Text),
    _lpAcceptLanguage :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPortfolios' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpPageSize' - The maximum number of items to return with this call.
--
-- * 'lpPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lpAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
listPortfolios ::
  ListPortfolios
listPortfolios =
  ListPortfolios'
    { _lpPageSize = Nothing,
      _lpPageToken = Nothing,
      _lpAcceptLanguage = Nothing
    }

-- | The maximum number of items to return with this call.
lpPageSize :: Lens' ListPortfolios (Maybe Natural)
lpPageSize = lens _lpPageSize (\s a -> s {_lpPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lpPageToken :: Lens' ListPortfolios (Maybe Text)
lpPageToken = lens _lpPageToken (\s a -> s {_lpPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lpAcceptLanguage :: Lens' ListPortfolios (Maybe Text)
lpAcceptLanguage = lens _lpAcceptLanguage (\s a -> s {_lpAcceptLanguage = a})

instance AWSPager ListPortfolios where
  page rq rs
    | stop (rs ^. lprrsNextPageToken) = Nothing
    | stop (rs ^. lprrsPortfolioDetails) = Nothing
    | otherwise =
      Just $ rq & lpPageToken .~ rs ^. lprrsNextPageToken

instance AWSRequest ListPortfolios where
  type Rs ListPortfolios = ListPortfoliosResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListPortfoliosResponse'
            <$> (x .?> "PortfolioDetails" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListPortfolios

instance NFData ListPortfolios

instance ToHeaders ListPortfolios where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListPortfolios" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPortfolios where
  toJSON ListPortfolios' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lpPageSize,
            ("PageToken" .=) <$> _lpPageToken,
            ("AcceptLanguage" .=) <$> _lpAcceptLanguage
          ]
      )

instance ToPath ListPortfolios where
  toPath = const "/"

instance ToQuery ListPortfolios where
  toQuery = const mempty

-- | /See:/ 'listPortfoliosResponse' smart constructor.
data ListPortfoliosResponse = ListPortfoliosResponse'
  { _lprrsPortfolioDetails ::
      !( Maybe
           [PortfolioDetail]
       ),
    _lprrsNextPageToken ::
      !(Maybe Text),
    _lprrsResponseStatus ::
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

-- | Creates a value of 'ListPortfoliosResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrsPortfolioDetails' - Information about the portfolios.
--
-- * 'lprrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lprrsResponseStatus' - -- | The response status code.
listPortfoliosResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListPortfoliosResponse
listPortfoliosResponse pResponseStatus_ =
  ListPortfoliosResponse'
    { _lprrsPortfolioDetails =
        Nothing,
      _lprrsNextPageToken = Nothing,
      _lprrsResponseStatus = pResponseStatus_
    }

-- | Information about the portfolios.
lprrsPortfolioDetails :: Lens' ListPortfoliosResponse [PortfolioDetail]
lprrsPortfolioDetails = lens _lprrsPortfolioDetails (\s a -> s {_lprrsPortfolioDetails = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lprrsNextPageToken :: Lens' ListPortfoliosResponse (Maybe Text)
lprrsNextPageToken = lens _lprrsNextPageToken (\s a -> s {_lprrsNextPageToken = a})

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListPortfoliosResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

instance NFData ListPortfoliosResponse
