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
-- Module      : Network.AWS.ServiceCatalog.ListConstraintsForPortfolio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the constraints for the specified portfolio and product.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListConstraintsForPortfolio
  ( -- * Creating a Request
    listConstraintsForPortfolio,
    ListConstraintsForPortfolio,

    -- * Request Lenses
    lcfpPageSize,
    lcfpPageToken,
    lcfpProductId,
    lcfpAcceptLanguage,
    lcfpPortfolioId,

    -- * Destructuring the Response
    listConstraintsForPortfolioResponse,
    ListConstraintsForPortfolioResponse,

    -- * Response Lenses
    lcfprrsConstraintDetails,
    lcfprrsNextPageToken,
    lcfprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listConstraintsForPortfolio' smart constructor.
data ListConstraintsForPortfolio = ListConstraintsForPortfolio'
  { _lcfpPageSize ::
      !(Maybe Nat),
    _lcfpPageToken ::
      !(Maybe Text),
    _lcfpProductId ::
      !(Maybe Text),
    _lcfpAcceptLanguage ::
      !(Maybe Text),
    _lcfpPortfolioId ::
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

-- | Creates a value of 'ListConstraintsForPortfolio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcfpPageSize' - The maximum number of items to return with this call.
--
-- * 'lcfpPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lcfpProductId' - The product identifier.
--
-- * 'lcfpAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'lcfpPortfolioId' - The portfolio identifier.
listConstraintsForPortfolio ::
  -- | 'lcfpPortfolioId'
  Text ->
  ListConstraintsForPortfolio
listConstraintsForPortfolio pPortfolioId_ =
  ListConstraintsForPortfolio'
    { _lcfpPageSize =
        Nothing,
      _lcfpPageToken = Nothing,
      _lcfpProductId = Nothing,
      _lcfpAcceptLanguage = Nothing,
      _lcfpPortfolioId = pPortfolioId_
    }

-- | The maximum number of items to return with this call.
lcfpPageSize :: Lens' ListConstraintsForPortfolio (Maybe Natural)
lcfpPageSize = lens _lcfpPageSize (\s a -> s {_lcfpPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lcfpPageToken :: Lens' ListConstraintsForPortfolio (Maybe Text)
lcfpPageToken = lens _lcfpPageToken (\s a -> s {_lcfpPageToken = a})

-- | The product identifier.
lcfpProductId :: Lens' ListConstraintsForPortfolio (Maybe Text)
lcfpProductId = lens _lcfpProductId (\s a -> s {_lcfpProductId = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lcfpAcceptLanguage :: Lens' ListConstraintsForPortfolio (Maybe Text)
lcfpAcceptLanguage = lens _lcfpAcceptLanguage (\s a -> s {_lcfpAcceptLanguage = a})

-- | The portfolio identifier.
lcfpPortfolioId :: Lens' ListConstraintsForPortfolio Text
lcfpPortfolioId = lens _lcfpPortfolioId (\s a -> s {_lcfpPortfolioId = a})

instance AWSPager ListConstraintsForPortfolio where
  page rq rs
    | stop (rs ^. lcfprrsNextPageToken) = Nothing
    | stop (rs ^. lcfprrsConstraintDetails) = Nothing
    | otherwise =
      Just $
        rq
          & lcfpPageToken .~ rs ^. lcfprrsNextPageToken

instance AWSRequest ListConstraintsForPortfolio where
  type
    Rs ListConstraintsForPortfolio =
      ListConstraintsForPortfolioResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListConstraintsForPortfolioResponse'
            <$> (x .?> "ConstraintDetails" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListConstraintsForPortfolio

instance NFData ListConstraintsForPortfolio

instance ToHeaders ListConstraintsForPortfolio where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListConstraintsForPortfolio" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListConstraintsForPortfolio where
  toJSON ListConstraintsForPortfolio' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lcfpPageSize,
            ("PageToken" .=) <$> _lcfpPageToken,
            ("ProductId" .=) <$> _lcfpProductId,
            ("AcceptLanguage" .=) <$> _lcfpAcceptLanguage,
            Just ("PortfolioId" .= _lcfpPortfolioId)
          ]
      )

instance ToPath ListConstraintsForPortfolio where
  toPath = const "/"

instance ToQuery ListConstraintsForPortfolio where
  toQuery = const mempty

-- | /See:/ 'listConstraintsForPortfolioResponse' smart constructor.
data ListConstraintsForPortfolioResponse = ListConstraintsForPortfolioResponse'
  { _lcfprrsConstraintDetails ::
      !( Maybe
           [ConstraintDetail]
       ),
    _lcfprrsNextPageToken ::
      !( Maybe
           Text
       ),
    _lcfprrsResponseStatus ::
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

-- | Creates a value of 'ListConstraintsForPortfolioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcfprrsConstraintDetails' - Information about the constraints.
--
-- * 'lcfprrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lcfprrsResponseStatus' - -- | The response status code.
listConstraintsForPortfolioResponse ::
  -- | 'lcfprrsResponseStatus'
  Int ->
  ListConstraintsForPortfolioResponse
listConstraintsForPortfolioResponse pResponseStatus_ =
  ListConstraintsForPortfolioResponse'
    { _lcfprrsConstraintDetails =
        Nothing,
      _lcfprrsNextPageToken = Nothing,
      _lcfprrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the constraints.
lcfprrsConstraintDetails :: Lens' ListConstraintsForPortfolioResponse [ConstraintDetail]
lcfprrsConstraintDetails = lens _lcfprrsConstraintDetails (\s a -> s {_lcfprrsConstraintDetails = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lcfprrsNextPageToken :: Lens' ListConstraintsForPortfolioResponse (Maybe Text)
lcfprrsNextPageToken = lens _lcfprrsNextPageToken (\s a -> s {_lcfprrsNextPageToken = a})

-- | -- | The response status code.
lcfprrsResponseStatus :: Lens' ListConstraintsForPortfolioResponse Int
lcfprrsResponseStatus = lens _lcfprrsResponseStatus (\s a -> s {_lcfprrsResponseStatus = a})

instance NFData ListConstraintsForPortfolioResponse
