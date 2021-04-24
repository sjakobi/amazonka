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
-- Module      : Network.AWS.ServiceCatalog.ListPrincipalsForPortfolio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all principal ARNs associated with the specified portfolio.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListPrincipalsForPortfolio
  ( -- * Creating a Request
    listPrincipalsForPortfolio,
    ListPrincipalsForPortfolio,

    -- * Request Lenses
    lisPageSize,
    lisPageToken,
    lisAcceptLanguage,
    lisPortfolioId,

    -- * Destructuring the Response
    listPrincipalsForPortfolioResponse,
    ListPrincipalsForPortfolioResponse,

    -- * Response Lenses
    lpfprrsPrincipals,
    lpfprrsNextPageToken,
    lpfprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listPrincipalsForPortfolio' smart constructor.
data ListPrincipalsForPortfolio = ListPrincipalsForPortfolio'
  { _lisPageSize ::
      !(Maybe Nat),
    _lisPageToken ::
      !(Maybe Text),
    _lisAcceptLanguage ::
      !(Maybe Text),
    _lisPortfolioId ::
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

-- | Creates a value of 'ListPrincipalsForPortfolio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisPageSize' - The maximum number of items to return with this call.
--
-- * 'lisPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lisAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'lisPortfolioId' - The portfolio identifier.
listPrincipalsForPortfolio ::
  -- | 'lisPortfolioId'
  Text ->
  ListPrincipalsForPortfolio
listPrincipalsForPortfolio pPortfolioId_ =
  ListPrincipalsForPortfolio'
    { _lisPageSize = Nothing,
      _lisPageToken = Nothing,
      _lisAcceptLanguage = Nothing,
      _lisPortfolioId = pPortfolioId_
    }

-- | The maximum number of items to return with this call.
lisPageSize :: Lens' ListPrincipalsForPortfolio (Maybe Natural)
lisPageSize = lens _lisPageSize (\s a -> s {_lisPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lisPageToken :: Lens' ListPrincipalsForPortfolio (Maybe Text)
lisPageToken = lens _lisPageToken (\s a -> s {_lisPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lisAcceptLanguage :: Lens' ListPrincipalsForPortfolio (Maybe Text)
lisAcceptLanguage = lens _lisAcceptLanguage (\s a -> s {_lisAcceptLanguage = a})

-- | The portfolio identifier.
lisPortfolioId :: Lens' ListPrincipalsForPortfolio Text
lisPortfolioId = lens _lisPortfolioId (\s a -> s {_lisPortfolioId = a})

instance AWSPager ListPrincipalsForPortfolio where
  page rq rs
    | stop (rs ^. lpfprrsNextPageToken) = Nothing
    | stop (rs ^. lpfprrsPrincipals) = Nothing
    | otherwise =
      Just $
        rq
          & lisPageToken .~ rs ^. lpfprrsNextPageToken

instance AWSRequest ListPrincipalsForPortfolio where
  type
    Rs ListPrincipalsForPortfolio =
      ListPrincipalsForPortfolioResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListPrincipalsForPortfolioResponse'
            <$> (x .?> "Principals" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListPrincipalsForPortfolio

instance NFData ListPrincipalsForPortfolio

instance ToHeaders ListPrincipalsForPortfolio where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListPrincipalsForPortfolio" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPrincipalsForPortfolio where
  toJSON ListPrincipalsForPortfolio' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lisPageSize,
            ("PageToken" .=) <$> _lisPageToken,
            ("AcceptLanguage" .=) <$> _lisAcceptLanguage,
            Just ("PortfolioId" .= _lisPortfolioId)
          ]
      )

instance ToPath ListPrincipalsForPortfolio where
  toPath = const "/"

instance ToQuery ListPrincipalsForPortfolio where
  toQuery = const mempty

-- | /See:/ 'listPrincipalsForPortfolioResponse' smart constructor.
data ListPrincipalsForPortfolioResponse = ListPrincipalsForPortfolioResponse'
  { _lpfprrsPrincipals ::
      !( Maybe
           [Principal]
       ),
    _lpfprrsNextPageToken ::
      !( Maybe
           Text
       ),
    _lpfprrsResponseStatus ::
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

-- | Creates a value of 'ListPrincipalsForPortfolioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpfprrsPrincipals' - The IAM principals (users or roles) associated with the portfolio.
--
-- * 'lpfprrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lpfprrsResponseStatus' - -- | The response status code.
listPrincipalsForPortfolioResponse ::
  -- | 'lpfprrsResponseStatus'
  Int ->
  ListPrincipalsForPortfolioResponse
listPrincipalsForPortfolioResponse pResponseStatus_ =
  ListPrincipalsForPortfolioResponse'
    { _lpfprrsPrincipals =
        Nothing,
      _lpfprrsNextPageToken = Nothing,
      _lpfprrsResponseStatus =
        pResponseStatus_
    }

-- | The IAM principals (users or roles) associated with the portfolio.
lpfprrsPrincipals :: Lens' ListPrincipalsForPortfolioResponse [Principal]
lpfprrsPrincipals = lens _lpfprrsPrincipals (\s a -> s {_lpfprrsPrincipals = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lpfprrsNextPageToken :: Lens' ListPrincipalsForPortfolioResponse (Maybe Text)
lpfprrsNextPageToken = lens _lpfprrsNextPageToken (\s a -> s {_lpfprrsNextPageToken = a})

-- | -- | The response status code.
lpfprrsResponseStatus :: Lens' ListPrincipalsForPortfolioResponse Int
lpfprrsResponseStatus = lens _lpfprrsResponseStatus (\s a -> s {_lpfprrsResponseStatus = a})

instance NFData ListPrincipalsForPortfolioResponse
