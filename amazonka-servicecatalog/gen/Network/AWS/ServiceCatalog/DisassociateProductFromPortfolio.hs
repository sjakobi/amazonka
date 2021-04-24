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
-- Module      : Network.AWS.ServiceCatalog.DisassociateProductFromPortfolio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the specified product from the specified portfolio.
--
--
-- A delegated admin is authorized to invoke this command.
module Network.AWS.ServiceCatalog.DisassociateProductFromPortfolio
  ( -- * Creating a Request
    disassociateProductFromPortfolio,
    DisassociateProductFromPortfolio,

    -- * Request Lenses
    disAcceptLanguage,
    disProductId,
    disPortfolioId,

    -- * Destructuring the Response
    disassociateProductFromPortfolioResponse,
    DisassociateProductFromPortfolioResponse,

    -- * Response Lenses
    dpfprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'disassociateProductFromPortfolio' smart constructor.
data DisassociateProductFromPortfolio = DisassociateProductFromPortfolio'
  { _disAcceptLanguage ::
      !( Maybe
           Text
       ),
    _disProductId ::
      !Text,
    _disPortfolioId ::
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

-- | Creates a value of 'DisassociateProductFromPortfolio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'disProductId' - The product identifier.
--
-- * 'disPortfolioId' - The portfolio identifier.
disassociateProductFromPortfolio ::
  -- | 'disProductId'
  Text ->
  -- | 'disPortfolioId'
  Text ->
  DisassociateProductFromPortfolio
disassociateProductFromPortfolio
  pProductId_
  pPortfolioId_ =
    DisassociateProductFromPortfolio'
      { _disAcceptLanguage =
          Nothing,
        _disProductId = pProductId_,
        _disPortfolioId = pPortfolioId_
      }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
disAcceptLanguage :: Lens' DisassociateProductFromPortfolio (Maybe Text)
disAcceptLanguage = lens _disAcceptLanguage (\s a -> s {_disAcceptLanguage = a})

-- | The product identifier.
disProductId :: Lens' DisassociateProductFromPortfolio Text
disProductId = lens _disProductId (\s a -> s {_disProductId = a})

-- | The portfolio identifier.
disPortfolioId :: Lens' DisassociateProductFromPortfolio Text
disPortfolioId = lens _disPortfolioId (\s a -> s {_disPortfolioId = a})

instance AWSRequest DisassociateProductFromPortfolio where
  type
    Rs DisassociateProductFromPortfolio =
      DisassociateProductFromPortfolioResponse
  request = postJSON serviceCatalog
  response =
    receiveEmpty
      ( \s h x ->
          DisassociateProductFromPortfolioResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DisassociateProductFromPortfolio

instance NFData DisassociateProductFromPortfolio

instance ToHeaders DisassociateProductFromPortfolio where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DisassociateProductFromPortfolio" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisassociateProductFromPortfolio where
  toJSON DisassociateProductFromPortfolio' {..} =
    object
      ( catMaybes
          [ ("AcceptLanguage" .=) <$> _disAcceptLanguage,
            Just ("ProductId" .= _disProductId),
            Just ("PortfolioId" .= _disPortfolioId)
          ]
      )

instance ToPath DisassociateProductFromPortfolio where
  toPath = const "/"

instance ToQuery DisassociateProductFromPortfolio where
  toQuery = const mempty

-- | /See:/ 'disassociateProductFromPortfolioResponse' smart constructor.
newtype DisassociateProductFromPortfolioResponse = DisassociateProductFromPortfolioResponse'
  { _dpfprrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisassociateProductFromPortfolioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpfprrsResponseStatus' - -- | The response status code.
disassociateProductFromPortfolioResponse ::
  -- | 'dpfprrsResponseStatus'
  Int ->
  DisassociateProductFromPortfolioResponse
disassociateProductFromPortfolioResponse
  pResponseStatus_ =
    DisassociateProductFromPortfolioResponse'
      { _dpfprrsResponseStatus =
          pResponseStatus_
      }

-- | -- | The response status code.
dpfprrsResponseStatus :: Lens' DisassociateProductFromPortfolioResponse Int
dpfprrsResponseStatus = lens _dpfprrsResponseStatus (\s a -> s {_dpfprrsResponseStatus = a})

instance
  NFData
    DisassociateProductFromPortfolioResponse
