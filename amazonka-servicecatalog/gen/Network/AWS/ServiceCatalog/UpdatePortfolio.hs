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
-- Module      : Network.AWS.ServiceCatalog.UpdatePortfolio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified portfolio.
--
--
-- You cannot update a product that was shared with you.
module Network.AWS.ServiceCatalog.UpdatePortfolio
  ( -- * Creating a Request
    updatePortfolio,
    UpdatePortfolio,

    -- * Request Lenses
    upRemoveTags,
    upProviderName,
    upAddTags,
    upDescription,
    upDisplayName,
    upAcceptLanguage,
    upId,

    -- * Destructuring the Response
    updatePortfolioResponse,
    UpdatePortfolioResponse,

    -- * Response Lenses
    ursTags,
    ursPortfolioDetail,
    ursResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'updatePortfolio' smart constructor.
data UpdatePortfolio = UpdatePortfolio'
  { _upRemoveTags ::
      !(Maybe [Text]),
    _upProviderName :: !(Maybe Text),
    _upAddTags :: !(Maybe [Tag]),
    _upDescription :: !(Maybe Text),
    _upDisplayName :: !(Maybe Text),
    _upAcceptLanguage :: !(Maybe Text),
    _upId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePortfolio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upRemoveTags' - The tags to remove.
--
-- * 'upProviderName' - The updated name of the portfolio provider.
--
-- * 'upAddTags' - The tags to add.
--
-- * 'upDescription' - The updated description of the portfolio.
--
-- * 'upDisplayName' - The name to use for display purposes.
--
-- * 'upAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'upId' - The portfolio identifier.
updatePortfolio ::
  -- | 'upId'
  Text ->
  UpdatePortfolio
updatePortfolio pId_ =
  UpdatePortfolio'
    { _upRemoveTags = Nothing,
      _upProviderName = Nothing,
      _upAddTags = Nothing,
      _upDescription = Nothing,
      _upDisplayName = Nothing,
      _upAcceptLanguage = Nothing,
      _upId = pId_
    }

-- | The tags to remove.
upRemoveTags :: Lens' UpdatePortfolio [Text]
upRemoveTags = lens _upRemoveTags (\s a -> s {_upRemoveTags = a}) . _Default . _Coerce

-- | The updated name of the portfolio provider.
upProviderName :: Lens' UpdatePortfolio (Maybe Text)
upProviderName = lens _upProviderName (\s a -> s {_upProviderName = a})

-- | The tags to add.
upAddTags :: Lens' UpdatePortfolio [Tag]
upAddTags = lens _upAddTags (\s a -> s {_upAddTags = a}) . _Default . _Coerce

-- | The updated description of the portfolio.
upDescription :: Lens' UpdatePortfolio (Maybe Text)
upDescription = lens _upDescription (\s a -> s {_upDescription = a})

-- | The name to use for display purposes.
upDisplayName :: Lens' UpdatePortfolio (Maybe Text)
upDisplayName = lens _upDisplayName (\s a -> s {_upDisplayName = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
upAcceptLanguage :: Lens' UpdatePortfolio (Maybe Text)
upAcceptLanguage = lens _upAcceptLanguage (\s a -> s {_upAcceptLanguage = a})

-- | The portfolio identifier.
upId :: Lens' UpdatePortfolio Text
upId = lens _upId (\s a -> s {_upId = a})

instance AWSRequest UpdatePortfolio where
  type Rs UpdatePortfolio = UpdatePortfolioResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          UpdatePortfolioResponse'
            <$> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "PortfolioDetail")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdatePortfolio

instance NFData UpdatePortfolio

instance ToHeaders UpdatePortfolio where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.UpdatePortfolio" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdatePortfolio where
  toJSON UpdatePortfolio' {..} =
    object
      ( catMaybes
          [ ("RemoveTags" .=) <$> _upRemoveTags,
            ("ProviderName" .=) <$> _upProviderName,
            ("AddTags" .=) <$> _upAddTags,
            ("Description" .=) <$> _upDescription,
            ("DisplayName" .=) <$> _upDisplayName,
            ("AcceptLanguage" .=) <$> _upAcceptLanguage,
            Just ("Id" .= _upId)
          ]
      )

instance ToPath UpdatePortfolio where
  toPath = const "/"

instance ToQuery UpdatePortfolio where
  toQuery = const mempty

-- | /See:/ 'updatePortfolioResponse' smart constructor.
data UpdatePortfolioResponse = UpdatePortfolioResponse'
  { _ursTags ::
      !(Maybe [Tag]),
    _ursPortfolioDetail ::
      !( Maybe
           PortfolioDetail
       ),
    _ursResponseStatus ::
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

-- | Creates a value of 'UpdatePortfolioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ursTags' - Information about the tags associated with the portfolio.
--
-- * 'ursPortfolioDetail' - Information about the portfolio.
--
-- * 'ursResponseStatus' - -- | The response status code.
updatePortfolioResponse ::
  -- | 'ursResponseStatus'
  Int ->
  UpdatePortfolioResponse
updatePortfolioResponse pResponseStatus_ =
  UpdatePortfolioResponse'
    { _ursTags = Nothing,
      _ursPortfolioDetail = Nothing,
      _ursResponseStatus = pResponseStatus_
    }

-- | Information about the tags associated with the portfolio.
ursTags :: Lens' UpdatePortfolioResponse [Tag]
ursTags = lens _ursTags (\s a -> s {_ursTags = a}) . _Default . _Coerce

-- | Information about the portfolio.
ursPortfolioDetail :: Lens' UpdatePortfolioResponse (Maybe PortfolioDetail)
ursPortfolioDetail = lens _ursPortfolioDetail (\s a -> s {_ursPortfolioDetail = a})

-- | -- | The response status code.
ursResponseStatus :: Lens' UpdatePortfolioResponse Int
ursResponseStatus = lens _ursResponseStatus (\s a -> s {_ursResponseStatus = a})

instance NFData UpdatePortfolioResponse
