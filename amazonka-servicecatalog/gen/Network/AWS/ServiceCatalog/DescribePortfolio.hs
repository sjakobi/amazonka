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
-- Module      : Network.AWS.ServiceCatalog.DescribePortfolio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified portfolio.
--
--
-- A delegated admin is authorized to invoke this command.
module Network.AWS.ServiceCatalog.DescribePortfolio
  ( -- * Creating a Request
    describePortfolio,
    DescribePortfolio,

    -- * Request Lenses
    dpAcceptLanguage,
    dpId,

    -- * Destructuring the Response
    describePortfolioResponse,
    DescribePortfolioResponse,

    -- * Response Lenses
    dprrsTags,
    dprrsBudgets,
    dprrsPortfolioDetail,
    dprrsTagOptions,
    dprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'describePortfolio' smart constructor.
data DescribePortfolio = DescribePortfolio'
  { _dpAcceptLanguage ::
      !(Maybe Text),
    _dpId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribePortfolio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'dpId' - The portfolio identifier.
describePortfolio ::
  -- | 'dpId'
  Text ->
  DescribePortfolio
describePortfolio pId_ =
  DescribePortfolio'
    { _dpAcceptLanguage = Nothing,
      _dpId = pId_
    }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
dpAcceptLanguage :: Lens' DescribePortfolio (Maybe Text)
dpAcceptLanguage = lens _dpAcceptLanguage (\s a -> s {_dpAcceptLanguage = a})

-- | The portfolio identifier.
dpId :: Lens' DescribePortfolio Text
dpId = lens _dpId (\s a -> s {_dpId = a})

instance AWSRequest DescribePortfolio where
  type Rs DescribePortfolio = DescribePortfolioResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          DescribePortfolioResponse'
            <$> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "Budgets" .!@ mempty)
            <*> (x .?> "PortfolioDetail")
            <*> (x .?> "TagOptions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePortfolio

instance NFData DescribePortfolio

instance ToHeaders DescribePortfolio where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DescribePortfolio" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePortfolio where
  toJSON DescribePortfolio' {..} =
    object
      ( catMaybes
          [ ("AcceptLanguage" .=) <$> _dpAcceptLanguage,
            Just ("Id" .= _dpId)
          ]
      )

instance ToPath DescribePortfolio where
  toPath = const "/"

instance ToQuery DescribePortfolio where
  toQuery = const mempty

-- | /See:/ 'describePortfolioResponse' smart constructor.
data DescribePortfolioResponse = DescribePortfolioResponse'
  { _dprrsTags ::
      !(Maybe [Tag]),
    _dprrsBudgets ::
      !( Maybe
           [BudgetDetail]
       ),
    _dprrsPortfolioDetail ::
      !( Maybe
           PortfolioDetail
       ),
    _dprrsTagOptions ::
      !( Maybe
           [TagOptionDetail]
       ),
    _dprrsResponseStatus ::
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

-- | Creates a value of 'DescribePortfolioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprrsTags' - Information about the tags associated with the portfolio.
--
-- * 'dprrsBudgets' - Information about the associated budgets.
--
-- * 'dprrsPortfolioDetail' - Information about the portfolio.
--
-- * 'dprrsTagOptions' - Information about the TagOptions associated with the portfolio.
--
-- * 'dprrsResponseStatus' - -- | The response status code.
describePortfolioResponse ::
  -- | 'dprrsResponseStatus'
  Int ->
  DescribePortfolioResponse
describePortfolioResponse pResponseStatus_ =
  DescribePortfolioResponse'
    { _dprrsTags = Nothing,
      _dprrsBudgets = Nothing,
      _dprrsPortfolioDetail = Nothing,
      _dprrsTagOptions = Nothing,
      _dprrsResponseStatus = pResponseStatus_
    }

-- | Information about the tags associated with the portfolio.
dprrsTags :: Lens' DescribePortfolioResponse [Tag]
dprrsTags = lens _dprrsTags (\s a -> s {_dprrsTags = a}) . _Default . _Coerce

-- | Information about the associated budgets.
dprrsBudgets :: Lens' DescribePortfolioResponse [BudgetDetail]
dprrsBudgets = lens _dprrsBudgets (\s a -> s {_dprrsBudgets = a}) . _Default . _Coerce

-- | Information about the portfolio.
dprrsPortfolioDetail :: Lens' DescribePortfolioResponse (Maybe PortfolioDetail)
dprrsPortfolioDetail = lens _dprrsPortfolioDetail (\s a -> s {_dprrsPortfolioDetail = a})

-- | Information about the TagOptions associated with the portfolio.
dprrsTagOptions :: Lens' DescribePortfolioResponse [TagOptionDetail]
dprrsTagOptions = lens _dprrsTagOptions (\s a -> s {_dprrsTagOptions = a}) . _Default . _Coerce

-- | -- | The response status code.
dprrsResponseStatus :: Lens' DescribePortfolioResponse Int
dprrsResponseStatus = lens _dprrsResponseStatus (\s a -> s {_dprrsResponseStatus = a})

instance NFData DescribePortfolioResponse
