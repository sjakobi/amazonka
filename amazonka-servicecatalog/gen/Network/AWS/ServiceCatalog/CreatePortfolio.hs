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
-- Module      : Network.AWS.ServiceCatalog.CreatePortfolio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a portfolio.
--
--
-- A delegated admin is authorized to invoke this command.
module Network.AWS.ServiceCatalog.CreatePortfolio
  ( -- * Creating a Request
    createPortfolio,
    CreatePortfolio,

    -- * Request Lenses
    creTags,
    creDescription,
    creAcceptLanguage,
    creDisplayName,
    creProviderName,
    creIdempotencyToken,

    -- * Destructuring the Response
    createPortfolioResponse,
    CreatePortfolioResponse,

    -- * Response Lenses
    cprrsTags,
    cprrsPortfolioDetail,
    cprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'createPortfolio' smart constructor.
data CreatePortfolio = CreatePortfolio'
  { _creTags ::
      !(Maybe [Tag]),
    _creDescription :: !(Maybe Text),
    _creAcceptLanguage :: !(Maybe Text),
    _creDisplayName :: !Text,
    _creProviderName :: !Text,
    _creIdempotencyToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePortfolio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creTags' - One or more tags.
--
-- * 'creDescription' - The description of the portfolio.
--
-- * 'creAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'creDisplayName' - The name to use for display purposes.
--
-- * 'creProviderName' - The name of the portfolio provider.
--
-- * 'creIdempotencyToken' - A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
createPortfolio ::
  -- | 'creDisplayName'
  Text ->
  -- | 'creProviderName'
  Text ->
  -- | 'creIdempotencyToken'
  Text ->
  CreatePortfolio
createPortfolio
  pDisplayName_
  pProviderName_
  pIdempotencyToken_ =
    CreatePortfolio'
      { _creTags = Nothing,
        _creDescription = Nothing,
        _creAcceptLanguage = Nothing,
        _creDisplayName = pDisplayName_,
        _creProviderName = pProviderName_,
        _creIdempotencyToken = pIdempotencyToken_
      }

-- | One or more tags.
creTags :: Lens' CreatePortfolio [Tag]
creTags = lens _creTags (\s a -> s {_creTags = a}) . _Default . _Coerce

-- | The description of the portfolio.
creDescription :: Lens' CreatePortfolio (Maybe Text)
creDescription = lens _creDescription (\s a -> s {_creDescription = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
creAcceptLanguage :: Lens' CreatePortfolio (Maybe Text)
creAcceptLanguage = lens _creAcceptLanguage (\s a -> s {_creAcceptLanguage = a})

-- | The name to use for display purposes.
creDisplayName :: Lens' CreatePortfolio Text
creDisplayName = lens _creDisplayName (\s a -> s {_creDisplayName = a})

-- | The name of the portfolio provider.
creProviderName :: Lens' CreatePortfolio Text
creProviderName = lens _creProviderName (\s a -> s {_creProviderName = a})

-- | A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
creIdempotencyToken :: Lens' CreatePortfolio Text
creIdempotencyToken = lens _creIdempotencyToken (\s a -> s {_creIdempotencyToken = a})

instance AWSRequest CreatePortfolio where
  type Rs CreatePortfolio = CreatePortfolioResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          CreatePortfolioResponse'
            <$> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "PortfolioDetail")
            <*> (pure (fromEnum s))
      )

instance Hashable CreatePortfolio

instance NFData CreatePortfolio

instance ToHeaders CreatePortfolio where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.CreatePortfolio" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePortfolio where
  toJSON CreatePortfolio' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _creTags,
            ("Description" .=) <$> _creDescription,
            ("AcceptLanguage" .=) <$> _creAcceptLanguage,
            Just ("DisplayName" .= _creDisplayName),
            Just ("ProviderName" .= _creProviderName),
            Just ("IdempotencyToken" .= _creIdempotencyToken)
          ]
      )

instance ToPath CreatePortfolio where
  toPath = const "/"

instance ToQuery CreatePortfolio where
  toQuery = const mempty

-- | /See:/ 'createPortfolioResponse' smart constructor.
data CreatePortfolioResponse = CreatePortfolioResponse'
  { _cprrsTags ::
      !(Maybe [Tag]),
    _cprrsPortfolioDetail ::
      !( Maybe
           PortfolioDetail
       ),
    _cprrsResponseStatus ::
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

-- | Creates a value of 'CreatePortfolioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprrsTags' - Information about the tags associated with the portfolio.
--
-- * 'cprrsPortfolioDetail' - Information about the portfolio.
--
-- * 'cprrsResponseStatus' - -- | The response status code.
createPortfolioResponse ::
  -- | 'cprrsResponseStatus'
  Int ->
  CreatePortfolioResponse
createPortfolioResponse pResponseStatus_ =
  CreatePortfolioResponse'
    { _cprrsTags = Nothing,
      _cprrsPortfolioDetail = Nothing,
      _cprrsResponseStatus = pResponseStatus_
    }

-- | Information about the tags associated with the portfolio.
cprrsTags :: Lens' CreatePortfolioResponse [Tag]
cprrsTags = lens _cprrsTags (\s a -> s {_cprrsTags = a}) . _Default . _Coerce

-- | Information about the portfolio.
cprrsPortfolioDetail :: Lens' CreatePortfolioResponse (Maybe PortfolioDetail)
cprrsPortfolioDetail = lens _cprrsPortfolioDetail (\s a -> s {_cprrsPortfolioDetail = a})

-- | -- | The response status code.
cprrsResponseStatus :: Lens' CreatePortfolioResponse Int
cprrsResponseStatus = lens _cprrsResponseStatus (\s a -> s {_cprrsResponseStatus = a})

instance NFData CreatePortfolioResponse
