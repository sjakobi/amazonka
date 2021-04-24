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
-- Module      : Network.AWS.Pinpoint.UpdateAPNSVoipSandboxChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables the APNs VoIP sandbox channel for an application or updates the status and settings of the APNs VoIP sandbox channel for an application.
module Network.AWS.Pinpoint.UpdateAPNSVoipSandboxChannel
  ( -- * Creating a Request
    updateAPNSVoipSandboxChannel,
    UpdateAPNSVoipSandboxChannel,

    -- * Request Lenses
    uavscApplicationId,
    uavscAPNSVoipSandboxChannelRequest,

    -- * Destructuring the Response
    updateAPNSVoipSandboxChannelResponse,
    UpdateAPNSVoipSandboxChannelResponse,

    -- * Response Lenses
    uavscrrsResponseStatus,
    uavscrrsAPNSVoipSandboxChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateAPNSVoipSandboxChannel' smart constructor.
data UpdateAPNSVoipSandboxChannel = UpdateAPNSVoipSandboxChannel'
  { _uavscApplicationId ::
      !Text,
    _uavscAPNSVoipSandboxChannelRequest ::
      !APNSVoipSandboxChannelRequest
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateAPNSVoipSandboxChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uavscApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'uavscAPNSVoipSandboxChannelRequest' - Undocumented member.
updateAPNSVoipSandboxChannel ::
  -- | 'uavscApplicationId'
  Text ->
  -- | 'uavscAPNSVoipSandboxChannelRequest'
  APNSVoipSandboxChannelRequest ->
  UpdateAPNSVoipSandboxChannel
updateAPNSVoipSandboxChannel
  pApplicationId_
  pAPNSVoipSandboxChannelRequest_ =
    UpdateAPNSVoipSandboxChannel'
      { _uavscApplicationId =
          pApplicationId_,
        _uavscAPNSVoipSandboxChannelRequest =
          pAPNSVoipSandboxChannelRequest_
      }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
uavscApplicationId :: Lens' UpdateAPNSVoipSandboxChannel Text
uavscApplicationId = lens _uavscApplicationId (\s a -> s {_uavscApplicationId = a})

-- | Undocumented member.
uavscAPNSVoipSandboxChannelRequest :: Lens' UpdateAPNSVoipSandboxChannel APNSVoipSandboxChannelRequest
uavscAPNSVoipSandboxChannelRequest = lens _uavscAPNSVoipSandboxChannelRequest (\s a -> s {_uavscAPNSVoipSandboxChannelRequest = a})

instance AWSRequest UpdateAPNSVoipSandboxChannel where
  type
    Rs UpdateAPNSVoipSandboxChannel =
      UpdateAPNSVoipSandboxChannelResponse
  request = putJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          UpdateAPNSVoipSandboxChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable UpdateAPNSVoipSandboxChannel

instance NFData UpdateAPNSVoipSandboxChannel

instance ToHeaders UpdateAPNSVoipSandboxChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateAPNSVoipSandboxChannel where
  toJSON UpdateAPNSVoipSandboxChannel' {..} =
    object
      ( catMaybes
          [ Just
              ( "APNSVoipSandboxChannelRequest"
                  .= _uavscAPNSVoipSandboxChannelRequest
              )
          ]
      )

instance ToPath UpdateAPNSVoipSandboxChannel where
  toPath UpdateAPNSVoipSandboxChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _uavscApplicationId,
        "/channels/apns_voip_sandbox"
      ]

instance ToQuery UpdateAPNSVoipSandboxChannel where
  toQuery = const mempty

-- | /See:/ 'updateAPNSVoipSandboxChannelResponse' smart constructor.
data UpdateAPNSVoipSandboxChannelResponse = UpdateAPNSVoipSandboxChannelResponse'
  { _uavscrrsResponseStatus ::
      !Int,
    _uavscrrsAPNSVoipSandboxChannelResponse ::
      !APNSVoipSandboxChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateAPNSVoipSandboxChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uavscrrsResponseStatus' - -- | The response status code.
--
-- * 'uavscrrsAPNSVoipSandboxChannelResponse' - Undocumented member.
updateAPNSVoipSandboxChannelResponse ::
  -- | 'uavscrrsResponseStatus'
  Int ->
  -- | 'uavscrrsAPNSVoipSandboxChannelResponse'
  APNSVoipSandboxChannelResponse ->
  UpdateAPNSVoipSandboxChannelResponse
updateAPNSVoipSandboxChannelResponse
  pResponseStatus_
  pAPNSVoipSandboxChannelResponse_ =
    UpdateAPNSVoipSandboxChannelResponse'
      { _uavscrrsResponseStatus =
          pResponseStatus_,
        _uavscrrsAPNSVoipSandboxChannelResponse =
          pAPNSVoipSandboxChannelResponse_
      }

-- | -- | The response status code.
uavscrrsResponseStatus :: Lens' UpdateAPNSVoipSandboxChannelResponse Int
uavscrrsResponseStatus = lens _uavscrrsResponseStatus (\s a -> s {_uavscrrsResponseStatus = a})

-- | Undocumented member.
uavscrrsAPNSVoipSandboxChannelResponse :: Lens' UpdateAPNSVoipSandboxChannelResponse APNSVoipSandboxChannelResponse
uavscrrsAPNSVoipSandboxChannelResponse = lens _uavscrrsAPNSVoipSandboxChannelResponse (\s a -> s {_uavscrrsAPNSVoipSandboxChannelResponse = a})

instance NFData UpdateAPNSVoipSandboxChannelResponse
