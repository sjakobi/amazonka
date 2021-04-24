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
-- Module      : Network.AWS.Pinpoint.DeleteVoiceChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the voice channel for an application and deletes any existing settings for the channel.
module Network.AWS.Pinpoint.DeleteVoiceChannel
  ( -- * Creating a Request
    deleteVoiceChannel,
    DeleteVoiceChannel,

    -- * Request Lenses
    dvcApplicationId,

    -- * Destructuring the Response
    deleteVoiceChannelResponse,
    DeleteVoiceChannelResponse,

    -- * Response Lenses
    dvcrrsResponseStatus,
    dvcrrsVoiceChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteVoiceChannel' smart constructor.
newtype DeleteVoiceChannel = DeleteVoiceChannel'
  { _dvcApplicationId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteVoiceChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
deleteVoiceChannel ::
  -- | 'dvcApplicationId'
  Text ->
  DeleteVoiceChannel
deleteVoiceChannel pApplicationId_ =
  DeleteVoiceChannel'
    { _dvcApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
dvcApplicationId :: Lens' DeleteVoiceChannel Text
dvcApplicationId = lens _dvcApplicationId (\s a -> s {_dvcApplicationId = a})

instance AWSRequest DeleteVoiceChannel where
  type
    Rs DeleteVoiceChannel =
      DeleteVoiceChannelResponse
  request = delete pinpoint
  response =
    receiveJSON
      ( \s h x ->
          DeleteVoiceChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable DeleteVoiceChannel

instance NFData DeleteVoiceChannel

instance ToHeaders DeleteVoiceChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteVoiceChannel where
  toPath DeleteVoiceChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _dvcApplicationId,
        "/channels/voice"
      ]

instance ToQuery DeleteVoiceChannel where
  toQuery = const mempty

-- | /See:/ 'deleteVoiceChannelResponse' smart constructor.
data DeleteVoiceChannelResponse = DeleteVoiceChannelResponse'
  { _dvcrrsResponseStatus ::
      !Int,
    _dvcrrsVoiceChannelResponse ::
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

-- | Creates a value of 'DeleteVoiceChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvcrrsResponseStatus' - -- | The response status code.
--
-- * 'dvcrrsVoiceChannelResponse' - Undocumented member.
deleteVoiceChannelResponse ::
  -- | 'dvcrrsResponseStatus'
  Int ->
  -- | 'dvcrrsVoiceChannelResponse'
  VoiceChannelResponse ->
  DeleteVoiceChannelResponse
deleteVoiceChannelResponse
  pResponseStatus_
  pVoiceChannelResponse_ =
    DeleteVoiceChannelResponse'
      { _dvcrrsResponseStatus =
          pResponseStatus_,
        _dvcrrsVoiceChannelResponse =
          pVoiceChannelResponse_
      }

-- | -- | The response status code.
dvcrrsResponseStatus :: Lens' DeleteVoiceChannelResponse Int
dvcrrsResponseStatus = lens _dvcrrsResponseStatus (\s a -> s {_dvcrrsResponseStatus = a})

-- | Undocumented member.
dvcrrsVoiceChannelResponse :: Lens' DeleteVoiceChannelResponse VoiceChannelResponse
dvcrrsVoiceChannelResponse = lens _dvcrrsVoiceChannelResponse (\s a -> s {_dvcrrsVoiceChannelResponse = a})

instance NFData DeleteVoiceChannelResponse
