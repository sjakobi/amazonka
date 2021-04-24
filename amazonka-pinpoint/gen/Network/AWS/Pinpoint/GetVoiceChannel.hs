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
-- Module      : Network.AWS.Pinpoint.GetVoiceChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of the voice channel for an application.
module Network.AWS.Pinpoint.GetVoiceChannel
  ( -- * Creating a Request
    getVoiceChannel,
    GetVoiceChannel,

    -- * Request Lenses
    gvcApplicationId,

    -- * Destructuring the Response
    getVoiceChannelResponse,
    GetVoiceChannelResponse,

    -- * Response Lenses
    gvcrrsResponseStatus,
    gvcrrsVoiceChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getVoiceChannel' smart constructor.
newtype GetVoiceChannel = GetVoiceChannel'
  { _gvcApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetVoiceChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getVoiceChannel ::
  -- | 'gvcApplicationId'
  Text ->
  GetVoiceChannel
getVoiceChannel pApplicationId_ =
  GetVoiceChannel'
    { _gvcApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gvcApplicationId :: Lens' GetVoiceChannel Text
gvcApplicationId = lens _gvcApplicationId (\s a -> s {_gvcApplicationId = a})

instance AWSRequest GetVoiceChannel where
  type Rs GetVoiceChannel = GetVoiceChannelResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetVoiceChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetVoiceChannel

instance NFData GetVoiceChannel

instance ToHeaders GetVoiceChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetVoiceChannel where
  toPath GetVoiceChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gvcApplicationId,
        "/channels/voice"
      ]

instance ToQuery GetVoiceChannel where
  toQuery = const mempty

-- | /See:/ 'getVoiceChannelResponse' smart constructor.
data GetVoiceChannelResponse = GetVoiceChannelResponse'
  { _gvcrrsResponseStatus ::
      !Int,
    _gvcrrsVoiceChannelResponse ::
      !VoiceChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetVoiceChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvcrrsResponseStatus' - -- | The response status code.
--
-- * 'gvcrrsVoiceChannelResponse' - Undocumented member.
getVoiceChannelResponse ::
  -- | 'gvcrrsResponseStatus'
  Int ->
  -- | 'gvcrrsVoiceChannelResponse'
  VoiceChannelResponse ->
  GetVoiceChannelResponse
getVoiceChannelResponse
  pResponseStatus_
  pVoiceChannelResponse_ =
    GetVoiceChannelResponse'
      { _gvcrrsResponseStatus =
          pResponseStatus_,
        _gvcrrsVoiceChannelResponse =
          pVoiceChannelResponse_
      }

-- | -- | The response status code.
gvcrrsResponseStatus :: Lens' GetVoiceChannelResponse Int
gvcrrsResponseStatus = lens _gvcrrsResponseStatus (\s a -> s {_gvcrrsResponseStatus = a})

-- | Undocumented member.
gvcrrsVoiceChannelResponse :: Lens' GetVoiceChannelResponse VoiceChannelResponse
gvcrrsVoiceChannelResponse = lens _gvcrrsVoiceChannelResponse (\s a -> s {_gvcrrsVoiceChannelResponse = a})

instance NFData GetVoiceChannelResponse
