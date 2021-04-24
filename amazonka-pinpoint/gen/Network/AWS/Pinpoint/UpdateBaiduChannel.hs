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
-- Module      : Network.AWS.Pinpoint.UpdateBaiduChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables the Baidu channel for an application or updates the status and settings of the Baidu channel for an application.
module Network.AWS.Pinpoint.UpdateBaiduChannel
  ( -- * Creating a Request
    updateBaiduChannel,
    UpdateBaiduChannel,

    -- * Request Lenses
    ubcApplicationId,
    ubcBaiduChannelRequest,

    -- * Destructuring the Response
    updateBaiduChannelResponse,
    UpdateBaiduChannelResponse,

    -- * Response Lenses
    ubcrrsResponseStatus,
    ubcrrsBaiduChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateBaiduChannel' smart constructor.
data UpdateBaiduChannel = UpdateBaiduChannel'
  { _ubcApplicationId ::
      !Text,
    _ubcBaiduChannelRequest ::
      !BaiduChannelRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateBaiduChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'ubcBaiduChannelRequest' - Undocumented member.
updateBaiduChannel ::
  -- | 'ubcApplicationId'
  Text ->
  -- | 'ubcBaiduChannelRequest'
  BaiduChannelRequest ->
  UpdateBaiduChannel
updateBaiduChannel
  pApplicationId_
  pBaiduChannelRequest_ =
    UpdateBaiduChannel'
      { _ubcApplicationId =
          pApplicationId_,
        _ubcBaiduChannelRequest = pBaiduChannelRequest_
      }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
ubcApplicationId :: Lens' UpdateBaiduChannel Text
ubcApplicationId = lens _ubcApplicationId (\s a -> s {_ubcApplicationId = a})

-- | Undocumented member.
ubcBaiduChannelRequest :: Lens' UpdateBaiduChannel BaiduChannelRequest
ubcBaiduChannelRequest = lens _ubcBaiduChannelRequest (\s a -> s {_ubcBaiduChannelRequest = a})

instance AWSRequest UpdateBaiduChannel where
  type
    Rs UpdateBaiduChannel =
      UpdateBaiduChannelResponse
  request = putJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          UpdateBaiduChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable UpdateBaiduChannel

instance NFData UpdateBaiduChannel

instance ToHeaders UpdateBaiduChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateBaiduChannel where
  toJSON UpdateBaiduChannel' {..} =
    object
      ( catMaybes
          [ Just
              ("BaiduChannelRequest" .= _ubcBaiduChannelRequest)
          ]
      )

instance ToPath UpdateBaiduChannel where
  toPath UpdateBaiduChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _ubcApplicationId,
        "/channels/baidu"
      ]

instance ToQuery UpdateBaiduChannel where
  toQuery = const mempty

-- | /See:/ 'updateBaiduChannelResponse' smart constructor.
data UpdateBaiduChannelResponse = UpdateBaiduChannelResponse'
  { _ubcrrsResponseStatus ::
      !Int,
    _ubcrrsBaiduChannelResponse ::
      !BaiduChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateBaiduChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubcrrsResponseStatus' - -- | The response status code.
--
-- * 'ubcrrsBaiduChannelResponse' - Undocumented member.
updateBaiduChannelResponse ::
  -- | 'ubcrrsResponseStatus'
  Int ->
  -- | 'ubcrrsBaiduChannelResponse'
  BaiduChannelResponse ->
  UpdateBaiduChannelResponse
updateBaiduChannelResponse
  pResponseStatus_
  pBaiduChannelResponse_ =
    UpdateBaiduChannelResponse'
      { _ubcrrsResponseStatus =
          pResponseStatus_,
        _ubcrrsBaiduChannelResponse =
          pBaiduChannelResponse_
      }

-- | -- | The response status code.
ubcrrsResponseStatus :: Lens' UpdateBaiduChannelResponse Int
ubcrrsResponseStatus = lens _ubcrrsResponseStatus (\s a -> s {_ubcrrsResponseStatus = a})

-- | Undocumented member.
ubcrrsBaiduChannelResponse :: Lens' UpdateBaiduChannelResponse BaiduChannelResponse
ubcrrsBaiduChannelResponse = lens _ubcrrsBaiduChannelResponse (\s a -> s {_ubcrrsBaiduChannelResponse = a})

instance NFData UpdateBaiduChannelResponse
