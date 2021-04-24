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
-- Module      : Network.AWS.ServiceCatalog.ListAcceptedPortfolioShares
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all portfolios for which sharing was accepted by this account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListAcceptedPortfolioShares
  ( -- * Creating a Request
    listAcceptedPortfolioShares,
    ListAcceptedPortfolioShares,

    -- * Request Lenses
    lapsPortfolioShareType,
    lapsPageSize,
    lapsPageToken,
    lapsAcceptLanguage,

    -- * Destructuring the Response
    listAcceptedPortfolioSharesResponse,
    ListAcceptedPortfolioSharesResponse,

    -- * Response Lenses
    lapsrrsPortfolioDetails,
    lapsrrsNextPageToken,
    lapsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listAcceptedPortfolioShares' smart constructor.
data ListAcceptedPortfolioShares = ListAcceptedPortfolioShares'
  { _lapsPortfolioShareType ::
      !( Maybe
           PortfolioShareType
       ),
    _lapsPageSize ::
      !(Maybe Nat),
    _lapsPageToken ::
      !(Maybe Text),
    _lapsAcceptLanguage ::
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

-- | Creates a value of 'ListAcceptedPortfolioShares' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapsPortfolioShareType' - The type of shared portfolios to list. The default is to list imported portfolios.     * @AWS_ORGANIZATIONS@ - List portfolios shared by the management account of your organization     * @AWS_SERVICECATALOG@ - List default portfolios     * @IMPORTED@ - List imported portfolios
--
-- * 'lapsPageSize' - The maximum number of items to return with this call.
--
-- * 'lapsPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lapsAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
listAcceptedPortfolioShares ::
  ListAcceptedPortfolioShares
listAcceptedPortfolioShares =
  ListAcceptedPortfolioShares'
    { _lapsPortfolioShareType =
        Nothing,
      _lapsPageSize = Nothing,
      _lapsPageToken = Nothing,
      _lapsAcceptLanguage = Nothing
    }

-- | The type of shared portfolios to list. The default is to list imported portfolios.     * @AWS_ORGANIZATIONS@ - List portfolios shared by the management account of your organization     * @AWS_SERVICECATALOG@ - List default portfolios     * @IMPORTED@ - List imported portfolios
lapsPortfolioShareType :: Lens' ListAcceptedPortfolioShares (Maybe PortfolioShareType)
lapsPortfolioShareType = lens _lapsPortfolioShareType (\s a -> s {_lapsPortfolioShareType = a})

-- | The maximum number of items to return with this call.
lapsPageSize :: Lens' ListAcceptedPortfolioShares (Maybe Natural)
lapsPageSize = lens _lapsPageSize (\s a -> s {_lapsPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lapsPageToken :: Lens' ListAcceptedPortfolioShares (Maybe Text)
lapsPageToken = lens _lapsPageToken (\s a -> s {_lapsPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lapsAcceptLanguage :: Lens' ListAcceptedPortfolioShares (Maybe Text)
lapsAcceptLanguage = lens _lapsAcceptLanguage (\s a -> s {_lapsAcceptLanguage = a})

instance AWSPager ListAcceptedPortfolioShares where
  page rq rs
    | stop (rs ^. lapsrrsNextPageToken) = Nothing
    | stop (rs ^. lapsrrsPortfolioDetails) = Nothing
    | otherwise =
      Just $
        rq
          & lapsPageToken .~ rs ^. lapsrrsNextPageToken

instance AWSRequest ListAcceptedPortfolioShares where
  type
    Rs ListAcceptedPortfolioShares =
      ListAcceptedPortfolioSharesResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListAcceptedPortfolioSharesResponse'
            <$> (x .?> "PortfolioDetails" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListAcceptedPortfolioShares

instance NFData ListAcceptedPortfolioShares

instance ToHeaders ListAcceptedPortfolioShares where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListAcceptedPortfolioShares" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAcceptedPortfolioShares where
  toJSON ListAcceptedPortfolioShares' {..} =
    object
      ( catMaybes
          [ ("PortfolioShareType" .=)
              <$> _lapsPortfolioShareType,
            ("PageSize" .=) <$> _lapsPageSize,
            ("PageToken" .=) <$> _lapsPageToken,
            ("AcceptLanguage" .=) <$> _lapsAcceptLanguage
          ]
      )

instance ToPath ListAcceptedPortfolioShares where
  toPath = const "/"

instance ToQuery ListAcceptedPortfolioShares where
  toQuery = const mempty

-- | /See:/ 'listAcceptedPortfolioSharesResponse' smart constructor.
data ListAcceptedPortfolioSharesResponse = ListAcceptedPortfolioSharesResponse'
  { _lapsrrsPortfolioDetails ::
      !( Maybe
           [PortfolioDetail]
       ),
    _lapsrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _lapsrrsResponseStatus ::
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

-- | Creates a value of 'ListAcceptedPortfolioSharesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapsrrsPortfolioDetails' - Information about the portfolios.
--
-- * 'lapsrrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lapsrrsResponseStatus' - -- | The response status code.
listAcceptedPortfolioSharesResponse ::
  -- | 'lapsrrsResponseStatus'
  Int ->
  ListAcceptedPortfolioSharesResponse
listAcceptedPortfolioSharesResponse pResponseStatus_ =
  ListAcceptedPortfolioSharesResponse'
    { _lapsrrsPortfolioDetails =
        Nothing,
      _lapsrrsNextPageToken = Nothing,
      _lapsrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the portfolios.
lapsrrsPortfolioDetails :: Lens' ListAcceptedPortfolioSharesResponse [PortfolioDetail]
lapsrrsPortfolioDetails = lens _lapsrrsPortfolioDetails (\s a -> s {_lapsrrsPortfolioDetails = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lapsrrsNextPageToken :: Lens' ListAcceptedPortfolioSharesResponse (Maybe Text)
lapsrrsNextPageToken = lens _lapsrrsNextPageToken (\s a -> s {_lapsrrsNextPageToken = a})

-- | -- | The response status code.
lapsrrsResponseStatus :: Lens' ListAcceptedPortfolioSharesResponse Int
lapsrrsResponseStatus = lens _lapsrrsResponseStatus (\s a -> s {_lapsrrsResponseStatus = a})

instance NFData ListAcceptedPortfolioSharesResponse
