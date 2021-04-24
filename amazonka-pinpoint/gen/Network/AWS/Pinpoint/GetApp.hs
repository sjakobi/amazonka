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
-- Module      : Network.AWS.Pinpoint.GetApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about an application.
module Network.AWS.Pinpoint.GetApp
  ( -- * Creating a Request
    getApp,
    GetApp,

    -- * Request Lenses
    gaApplicationId,

    -- * Destructuring the Response
    getAppResponse,
    GetAppResponse,

    -- * Response Lenses
    gararsResponseStatus,
    gararsApplicationResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getApp' smart constructor.
newtype GetApp = GetApp' {_gaApplicationId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getApp ::
  -- | 'gaApplicationId'
  Text ->
  GetApp
getApp pApplicationId_ =
  GetApp' {_gaApplicationId = pApplicationId_}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gaApplicationId :: Lens' GetApp Text
gaApplicationId = lens _gaApplicationId (\s a -> s {_gaApplicationId = a})

instance AWSRequest GetApp where
  type Rs GetApp = GetAppResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetAppResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetApp

instance NFData GetApp

instance ToHeaders GetApp where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetApp where
  toPath GetApp' {..} =
    mconcat ["/v1/apps/", toBS _gaApplicationId]

instance ToQuery GetApp where
  toQuery = const mempty

-- | /See:/ 'getAppResponse' smart constructor.
data GetAppResponse = GetAppResponse'
  { _gararsResponseStatus ::
      !Int,
    _gararsApplicationResponse ::
      !ApplicationResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAppResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gararsResponseStatus' - -- | The response status code.
--
-- * 'gararsApplicationResponse' - Undocumented member.
getAppResponse ::
  -- | 'gararsResponseStatus'
  Int ->
  -- | 'gararsApplicationResponse'
  ApplicationResponse ->
  GetAppResponse
getAppResponse pResponseStatus_ pApplicationResponse_ =
  GetAppResponse'
    { _gararsResponseStatus =
        pResponseStatus_,
      _gararsApplicationResponse = pApplicationResponse_
    }

-- | -- | The response status code.
gararsResponseStatus :: Lens' GetAppResponse Int
gararsResponseStatus = lens _gararsResponseStatus (\s a -> s {_gararsResponseStatus = a})

-- | Undocumented member.
gararsApplicationResponse :: Lens' GetAppResponse ApplicationResponse
gararsApplicationResponse = lens _gararsApplicationResponse (\s a -> s {_gararsApplicationResponse = a})

instance NFData GetAppResponse
