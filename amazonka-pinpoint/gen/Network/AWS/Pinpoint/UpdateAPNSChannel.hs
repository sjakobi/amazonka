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
-- Module      : Network.AWS.Pinpoint.UpdateAPNSChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables the APNs channel for an application or updates the status and settings of the APNs channel for an application.
module Network.AWS.Pinpoint.UpdateAPNSChannel
  ( -- * Creating a Request
    updateAPNSChannel,
    UpdateAPNSChannel,

    -- * Request Lenses
    uacApplicationId,
    uacAPNSChannelRequest,

    -- * Destructuring the Response
    updateAPNSChannelResponse,
    UpdateAPNSChannelResponse,

    -- * Response Lenses
    uacrrsResponseStatus,
    uacrrsAPNSChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateAPNSChannel' smart constructor.
data UpdateAPNSChannel = UpdateAPNSChannel'
  { _uacApplicationId ::
      !Text,
    _uacAPNSChannelRequest ::
      !APNSChannelRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateAPNSChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uacApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'uacAPNSChannelRequest' - Undocumented member.
updateAPNSChannel ::
  -- | 'uacApplicationId'
  Text ->
  -- | 'uacAPNSChannelRequest'
  APNSChannelRequest ->
  UpdateAPNSChannel
updateAPNSChannel
  pApplicationId_
  pAPNSChannelRequest_ =
    UpdateAPNSChannel'
      { _uacApplicationId =
          pApplicationId_,
        _uacAPNSChannelRequest = pAPNSChannelRequest_
      }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
uacApplicationId :: Lens' UpdateAPNSChannel Text
uacApplicationId = lens _uacApplicationId (\s a -> s {_uacApplicationId = a})

-- | Undocumented member.
uacAPNSChannelRequest :: Lens' UpdateAPNSChannel APNSChannelRequest
uacAPNSChannelRequest = lens _uacAPNSChannelRequest (\s a -> s {_uacAPNSChannelRequest = a})

instance AWSRequest UpdateAPNSChannel where
  type Rs UpdateAPNSChannel = UpdateAPNSChannelResponse
  request = putJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          UpdateAPNSChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable UpdateAPNSChannel

instance NFData UpdateAPNSChannel

instance ToHeaders UpdateAPNSChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateAPNSChannel where
  toJSON UpdateAPNSChannel' {..} =
    object
      ( catMaybes
          [ Just
              ("APNSChannelRequest" .= _uacAPNSChannelRequest)
          ]
      )

instance ToPath UpdateAPNSChannel where
  toPath UpdateAPNSChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _uacApplicationId,
        "/channels/apns"
      ]

instance ToQuery UpdateAPNSChannel where
  toQuery = const mempty

-- | /See:/ 'updateAPNSChannelResponse' smart constructor.
data UpdateAPNSChannelResponse = UpdateAPNSChannelResponse'
  { _uacrrsResponseStatus ::
      !Int,
    _uacrrsAPNSChannelResponse ::
      !APNSChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateAPNSChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uacrrsResponseStatus' - -- | The response status code.
--
-- * 'uacrrsAPNSChannelResponse' - Undocumented member.
updateAPNSChannelResponse ::
  -- | 'uacrrsResponseStatus'
  Int ->
  -- | 'uacrrsAPNSChannelResponse'
  APNSChannelResponse ->
  UpdateAPNSChannelResponse
updateAPNSChannelResponse
  pResponseStatus_
  pAPNSChannelResponse_ =
    UpdateAPNSChannelResponse'
      { _uacrrsResponseStatus =
          pResponseStatus_,
        _uacrrsAPNSChannelResponse =
          pAPNSChannelResponse_
      }

-- | -- | The response status code.
uacrrsResponseStatus :: Lens' UpdateAPNSChannelResponse Int
uacrrsResponseStatus = lens _uacrrsResponseStatus (\s a -> s {_uacrrsResponseStatus = a})

-- | Undocumented member.
uacrrsAPNSChannelResponse :: Lens' UpdateAPNSChannelResponse APNSChannelResponse
uacrrsAPNSChannelResponse = lens _uacrrsAPNSChannelResponse (\s a -> s {_uacrrsAPNSChannelResponse = a})

instance NFData UpdateAPNSChannelResponse
