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
-- Module      : Network.AWS.SageMaker.EnableSagemakerServicecatalogPortfolio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables using Service Catalog in SageMaker. Service Catalog is used to create SageMaker projects.
module Network.AWS.SageMaker.EnableSagemakerServicecatalogPortfolio
  ( -- * Creating a Request
    enableSagemakerServicecatalogPortfolio,
    EnableSagemakerServicecatalogPortfolio,

    -- * Destructuring the Response
    enableSagemakerServicecatalogPortfolioResponse,
    EnableSagemakerServicecatalogPortfolioResponse,

    -- * Response Lenses
    essprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'enableSagemakerServicecatalogPortfolio' smart constructor.
data EnableSagemakerServicecatalogPortfolio = EnableSagemakerServicecatalogPortfolio'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'EnableSagemakerServicecatalogPortfolio' with the minimum fields required to make a request.
enableSagemakerServicecatalogPortfolio ::
  EnableSagemakerServicecatalogPortfolio
enableSagemakerServicecatalogPortfolio =
  EnableSagemakerServicecatalogPortfolio'

instance
  AWSRequest
    EnableSagemakerServicecatalogPortfolio
  where
  type
    Rs EnableSagemakerServicecatalogPortfolio =
      EnableSagemakerServicecatalogPortfolioResponse
  request = postJSON sageMaker
  response =
    receiveEmpty
      ( \s h x ->
          EnableSagemakerServicecatalogPortfolioResponse'
            <$> (pure (fromEnum s))
      )

instance
  Hashable
    EnableSagemakerServicecatalogPortfolio

instance
  NFData
    EnableSagemakerServicecatalogPortfolio

instance
  ToHeaders
    EnableSagemakerServicecatalogPortfolio
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.EnableSagemakerServicecatalogPortfolio" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    EnableSagemakerServicecatalogPortfolio
  where
  toJSON = const (Object mempty)

instance
  ToPath
    EnableSagemakerServicecatalogPortfolio
  where
  toPath = const "/"

instance
  ToQuery
    EnableSagemakerServicecatalogPortfolio
  where
  toQuery = const mempty

-- | /See:/ 'enableSagemakerServicecatalogPortfolioResponse' smart constructor.
newtype EnableSagemakerServicecatalogPortfolioResponse = EnableSagemakerServicecatalogPortfolioResponse'
  { _essprrsResponseStatus ::
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

-- | Creates a value of 'EnableSagemakerServicecatalogPortfolioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'essprrsResponseStatus' - -- | The response status code.
enableSagemakerServicecatalogPortfolioResponse ::
  -- | 'essprrsResponseStatus'
  Int ->
  EnableSagemakerServicecatalogPortfolioResponse
enableSagemakerServicecatalogPortfolioResponse
  pResponseStatus_ =
    EnableSagemakerServicecatalogPortfolioResponse'
      { _essprrsResponseStatus =
          pResponseStatus_
      }

-- | -- | The response status code.
essprrsResponseStatus :: Lens' EnableSagemakerServicecatalogPortfolioResponse Int
essprrsResponseStatus = lens _essprrsResponseStatus (\s a -> s {_essprrsResponseStatus = a})

instance
  NFData
    EnableSagemakerServicecatalogPortfolioResponse
