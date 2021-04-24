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
-- Module      : Network.AWS.SageMaker.DisableSagemakerServicecatalogPortfolio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables using Service Catalog in SageMaker. Service Catalog is used to create SageMaker projects.
module Network.AWS.SageMaker.DisableSagemakerServicecatalogPortfolio
  ( -- * Creating a Request
    disableSagemakerServicecatalogPortfolio,
    DisableSagemakerServicecatalogPortfolio,

    -- * Destructuring the Response
    disableSagemakerServicecatalogPortfolioResponse,
    DisableSagemakerServicecatalogPortfolioResponse,

    -- * Response Lenses
    dssprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'disableSagemakerServicecatalogPortfolio' smart constructor.
data DisableSagemakerServicecatalogPortfolio = DisableSagemakerServicecatalogPortfolio'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisableSagemakerServicecatalogPortfolio' with the minimum fields required to make a request.
disableSagemakerServicecatalogPortfolio ::
  DisableSagemakerServicecatalogPortfolio
disableSagemakerServicecatalogPortfolio =
  DisableSagemakerServicecatalogPortfolio'

instance
  AWSRequest
    DisableSagemakerServicecatalogPortfolio
  where
  type
    Rs DisableSagemakerServicecatalogPortfolio =
      DisableSagemakerServicecatalogPortfolioResponse
  request = postJSON sageMaker
  response =
    receiveEmpty
      ( \s h x ->
          DisableSagemakerServicecatalogPortfolioResponse'
            <$> (pure (fromEnum s))
      )

instance
  Hashable
    DisableSagemakerServicecatalogPortfolio

instance
  NFData
    DisableSagemakerServicecatalogPortfolio

instance
  ToHeaders
    DisableSagemakerServicecatalogPortfolio
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DisableSagemakerServicecatalogPortfolio" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DisableSagemakerServicecatalogPortfolio
  where
  toJSON = const (Object mempty)

instance
  ToPath
    DisableSagemakerServicecatalogPortfolio
  where
  toPath = const "/"

instance
  ToQuery
    DisableSagemakerServicecatalogPortfolio
  where
  toQuery = const mempty

-- | /See:/ 'disableSagemakerServicecatalogPortfolioResponse' smart constructor.
newtype DisableSagemakerServicecatalogPortfolioResponse = DisableSagemakerServicecatalogPortfolioResponse'
  { _dssprrsResponseStatus ::
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

-- | Creates a value of 'DisableSagemakerServicecatalogPortfolioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssprrsResponseStatus' - -- | The response status code.
disableSagemakerServicecatalogPortfolioResponse ::
  -- | 'dssprrsResponseStatus'
  Int ->
  DisableSagemakerServicecatalogPortfolioResponse
disableSagemakerServicecatalogPortfolioResponse
  pResponseStatus_ =
    DisableSagemakerServicecatalogPortfolioResponse'
      { _dssprrsResponseStatus =
          pResponseStatus_
      }

-- | -- | The response status code.
dssprrsResponseStatus :: Lens' DisableSagemakerServicecatalogPortfolioResponse Int
dssprrsResponseStatus = lens _dssprrsResponseStatus (\s a -> s {_dssprrsResponseStatus = a})

instance
  NFData
    DisableSagemakerServicecatalogPortfolioResponse
