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
-- Module      : Network.AWS.ServiceCatalog.DisassociatePrincipalFromPortfolio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a previously associated principal ARN from a specified portfolio.
module Network.AWS.ServiceCatalog.DisassociatePrincipalFromPortfolio
  ( -- * Creating a Request
    disassociatePrincipalFromPortfolio,
    DisassociatePrincipalFromPortfolio,

    -- * Request Lenses
    dpfpAcceptLanguage,
    dpfpPortfolioId,
    dpfpPrincipalARN,

    -- * Destructuring the Response
    disassociatePrincipalFromPortfolioResponse,
    DisassociatePrincipalFromPortfolioResponse,

    -- * Response Lenses
    disrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'disassociatePrincipalFromPortfolio' smart constructor.
data DisassociatePrincipalFromPortfolio = DisassociatePrincipalFromPortfolio'
  { _dpfpAcceptLanguage ::
      !( Maybe
           Text
       ),
    _dpfpPortfolioId ::
      !Text,
    _dpfpPrincipalARN ::
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

-- | Creates a value of 'DisassociatePrincipalFromPortfolio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpfpAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'dpfpPortfolioId' - The portfolio identifier.
--
-- * 'dpfpPrincipalARN' - The ARN of the principal (IAM user, role, or group).
disassociatePrincipalFromPortfolio ::
  -- | 'dpfpPortfolioId'
  Text ->
  -- | 'dpfpPrincipalARN'
  Text ->
  DisassociatePrincipalFromPortfolio
disassociatePrincipalFromPortfolio
  pPortfolioId_
  pPrincipalARN_ =
    DisassociatePrincipalFromPortfolio'
      { _dpfpAcceptLanguage =
          Nothing,
        _dpfpPortfolioId = pPortfolioId_,
        _dpfpPrincipalARN = pPrincipalARN_
      }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
dpfpAcceptLanguage :: Lens' DisassociatePrincipalFromPortfolio (Maybe Text)
dpfpAcceptLanguage = lens _dpfpAcceptLanguage (\s a -> s {_dpfpAcceptLanguage = a})

-- | The portfolio identifier.
dpfpPortfolioId :: Lens' DisassociatePrincipalFromPortfolio Text
dpfpPortfolioId = lens _dpfpPortfolioId (\s a -> s {_dpfpPortfolioId = a})

-- | The ARN of the principal (IAM user, role, or group).
dpfpPrincipalARN :: Lens' DisassociatePrincipalFromPortfolio Text
dpfpPrincipalARN = lens _dpfpPrincipalARN (\s a -> s {_dpfpPrincipalARN = a})

instance
  AWSRequest
    DisassociatePrincipalFromPortfolio
  where
  type
    Rs DisassociatePrincipalFromPortfolio =
      DisassociatePrincipalFromPortfolioResponse
  request = postJSON serviceCatalog
  response =
    receiveEmpty
      ( \s h x ->
          DisassociatePrincipalFromPortfolioResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DisassociatePrincipalFromPortfolio

instance NFData DisassociatePrincipalFromPortfolio

instance ToHeaders DisassociatePrincipalFromPortfolio where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DisassociatePrincipalFromPortfolio" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisassociatePrincipalFromPortfolio where
  toJSON DisassociatePrincipalFromPortfolio' {..} =
    object
      ( catMaybes
          [ ("AcceptLanguage" .=) <$> _dpfpAcceptLanguage,
            Just ("PortfolioId" .= _dpfpPortfolioId),
            Just ("PrincipalARN" .= _dpfpPrincipalARN)
          ]
      )

instance ToPath DisassociatePrincipalFromPortfolio where
  toPath = const "/"

instance ToQuery DisassociatePrincipalFromPortfolio where
  toQuery = const mempty

-- | /See:/ 'disassociatePrincipalFromPortfolioResponse' smart constructor.
newtype DisassociatePrincipalFromPortfolioResponse = DisassociatePrincipalFromPortfolioResponse'
  { _disrsResponseStatus ::
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

-- | Creates a value of 'DisassociatePrincipalFromPortfolioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disrsResponseStatus' - -- | The response status code.
disassociatePrincipalFromPortfolioResponse ::
  -- | 'disrsResponseStatus'
  Int ->
  DisassociatePrincipalFromPortfolioResponse
disassociatePrincipalFromPortfolioResponse
  pResponseStatus_ =
    DisassociatePrincipalFromPortfolioResponse'
      { _disrsResponseStatus =
          pResponseStatus_
      }

-- | -- | The response status code.
disrsResponseStatus :: Lens' DisassociatePrincipalFromPortfolioResponse Int
disrsResponseStatus = lens _disrsResponseStatus (\s a -> s {_disrsResponseStatus = a})

instance
  NFData
    DisassociatePrincipalFromPortfolioResponse
