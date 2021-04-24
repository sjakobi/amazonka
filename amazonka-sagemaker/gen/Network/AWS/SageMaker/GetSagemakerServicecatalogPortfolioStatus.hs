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
-- Module      : Network.AWS.SageMaker.GetSagemakerServicecatalogPortfolioStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of Service Catalog in SageMaker. Service Catalog is used to create SageMaker projects.
module Network.AWS.SageMaker.GetSagemakerServicecatalogPortfolioStatus
  ( -- * Creating a Request
    getSagemakerServicecatalogPortfolioStatus,
    GetSagemakerServicecatalogPortfolioStatus,

    -- * Destructuring the Response
    getSagemakerServicecatalogPortfolioStatusResponse,
    GetSagemakerServicecatalogPortfolioStatusResponse,

    -- * Response Lenses
    gsspsrrsStatus,
    gsspsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'getSagemakerServicecatalogPortfolioStatus' smart constructor.
data GetSagemakerServicecatalogPortfolioStatus = GetSagemakerServicecatalogPortfolioStatus'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSagemakerServicecatalogPortfolioStatus' with the minimum fields required to make a request.
getSagemakerServicecatalogPortfolioStatus ::
  GetSagemakerServicecatalogPortfolioStatus
getSagemakerServicecatalogPortfolioStatus =
  GetSagemakerServicecatalogPortfolioStatus'

instance
  AWSRequest
    GetSagemakerServicecatalogPortfolioStatus
  where
  type
    Rs GetSagemakerServicecatalogPortfolioStatus =
      GetSagemakerServicecatalogPortfolioStatusResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          GetSagemakerServicecatalogPortfolioStatusResponse'
            <$> (x .?> "Status") <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetSagemakerServicecatalogPortfolioStatus

instance
  NFData
    GetSagemakerServicecatalogPortfolioStatus

instance
  ToHeaders
    GetSagemakerServicecatalogPortfolioStatus
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.GetSagemakerServicecatalogPortfolioStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    GetSagemakerServicecatalogPortfolioStatus
  where
  toJSON = const (Object mempty)

instance
  ToPath
    GetSagemakerServicecatalogPortfolioStatus
  where
  toPath = const "/"

instance
  ToQuery
    GetSagemakerServicecatalogPortfolioStatus
  where
  toQuery = const mempty

-- | /See:/ 'getSagemakerServicecatalogPortfolioStatusResponse' smart constructor.
data GetSagemakerServicecatalogPortfolioStatusResponse = GetSagemakerServicecatalogPortfolioStatusResponse'
  { _gsspsrrsStatus ::
      !( Maybe
           SagemakerServicecatalogStatus
       ),
    _gsspsrrsResponseStatus ::
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

-- | Creates a value of 'GetSagemakerServicecatalogPortfolioStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsspsrrsStatus' - Whether Service Catalog is enabled or disabled in SageMaker.
--
-- * 'gsspsrrsResponseStatus' - -- | The response status code.
getSagemakerServicecatalogPortfolioStatusResponse ::
  -- | 'gsspsrrsResponseStatus'
  Int ->
  GetSagemakerServicecatalogPortfolioStatusResponse
getSagemakerServicecatalogPortfolioStatusResponse
  pResponseStatus_ =
    GetSagemakerServicecatalogPortfolioStatusResponse'
      { _gsspsrrsStatus =
          Nothing,
        _gsspsrrsResponseStatus =
          pResponseStatus_
      }

-- | Whether Service Catalog is enabled or disabled in SageMaker.
gsspsrrsStatus :: Lens' GetSagemakerServicecatalogPortfolioStatusResponse (Maybe SagemakerServicecatalogStatus)
gsspsrrsStatus = lens _gsspsrrsStatus (\s a -> s {_gsspsrrsStatus = a})

-- | -- | The response status code.
gsspsrrsResponseStatus :: Lens' GetSagemakerServicecatalogPortfolioStatusResponse Int
gsspsrrsResponseStatus = lens _gsspsrrsResponseStatus (\s a -> s {_gsspsrrsResponseStatus = a})

instance
  NFData
    GetSagemakerServicecatalogPortfolioStatusResponse
