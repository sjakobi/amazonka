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
-- Module      : Network.AWS.Pinpoint.DeleteAPNSSandboxChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the APNs sandbox channel for an application and deletes any existing settings for the channel.
module Network.AWS.Pinpoint.DeleteAPNSSandboxChannel
  ( -- * Creating a Request
    deleteAPNSSandboxChannel,
    DeleteAPNSSandboxChannel,

    -- * Request Lenses
    dascApplicationId,

    -- * Destructuring the Response
    deleteAPNSSandboxChannelResponse,
    DeleteAPNSSandboxChannelResponse,

    -- * Response Lenses
    dascrrsResponseStatus,
    dascrrsAPNSSandboxChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteAPNSSandboxChannel' smart constructor.
newtype DeleteAPNSSandboxChannel = DeleteAPNSSandboxChannel'
  { _dascApplicationId ::
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

-- | Creates a value of 'DeleteAPNSSandboxChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dascApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
deleteAPNSSandboxChannel ::
  -- | 'dascApplicationId'
  Text ->
  DeleteAPNSSandboxChannel
deleteAPNSSandboxChannel pApplicationId_ =
  DeleteAPNSSandboxChannel'
    { _dascApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
dascApplicationId :: Lens' DeleteAPNSSandboxChannel Text
dascApplicationId = lens _dascApplicationId (\s a -> s {_dascApplicationId = a})

instance AWSRequest DeleteAPNSSandboxChannel where
  type
    Rs DeleteAPNSSandboxChannel =
      DeleteAPNSSandboxChannelResponse
  request = delete pinpoint
  response =
    receiveJSON
      ( \s h x ->
          DeleteAPNSSandboxChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable DeleteAPNSSandboxChannel

instance NFData DeleteAPNSSandboxChannel

instance ToHeaders DeleteAPNSSandboxChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteAPNSSandboxChannel where
  toPath DeleteAPNSSandboxChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _dascApplicationId,
        "/channels/apns_sandbox"
      ]

instance ToQuery DeleteAPNSSandboxChannel where
  toQuery = const mempty

-- | /See:/ 'deleteAPNSSandboxChannelResponse' smart constructor.
data DeleteAPNSSandboxChannelResponse = DeleteAPNSSandboxChannelResponse'
  { _dascrrsResponseStatus ::
      !Int,
    _dascrrsAPNSSandboxChannelResponse ::
      !APNSSandboxChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteAPNSSandboxChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dascrrsResponseStatus' - -- | The response status code.
--
-- * 'dascrrsAPNSSandboxChannelResponse' - Undocumented member.
deleteAPNSSandboxChannelResponse ::
  -- | 'dascrrsResponseStatus'
  Int ->
  -- | 'dascrrsAPNSSandboxChannelResponse'
  APNSSandboxChannelResponse ->
  DeleteAPNSSandboxChannelResponse
deleteAPNSSandboxChannelResponse
  pResponseStatus_
  pAPNSSandboxChannelResponse_ =
    DeleteAPNSSandboxChannelResponse'
      { _dascrrsResponseStatus =
          pResponseStatus_,
        _dascrrsAPNSSandboxChannelResponse =
          pAPNSSandboxChannelResponse_
      }

-- | -- | The response status code.
dascrrsResponseStatus :: Lens' DeleteAPNSSandboxChannelResponse Int
dascrrsResponseStatus = lens _dascrrsResponseStatus (\s a -> s {_dascrrsResponseStatus = a})

-- | Undocumented member.
dascrrsAPNSSandboxChannelResponse :: Lens' DeleteAPNSSandboxChannelResponse APNSSandboxChannelResponse
dascrrsAPNSSandboxChannelResponse = lens _dascrrsAPNSSandboxChannelResponse (\s a -> s {_dascrrsAPNSSandboxChannelResponse = a})

instance NFData DeleteAPNSSandboxChannelResponse
