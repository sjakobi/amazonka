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
-- Module      : Network.AWS.Pinpoint.DeleteAPNSVoipChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the APNs VoIP channel for an application and deletes any existing settings for the channel.
module Network.AWS.Pinpoint.DeleteAPNSVoipChannel
  ( -- * Creating a Request
    deleteAPNSVoipChannel,
    DeleteAPNSVoipChannel,

    -- * Request Lenses
    davcApplicationId,

    -- * Destructuring the Response
    deleteAPNSVoipChannelResponse,
    DeleteAPNSVoipChannelResponse,

    -- * Response Lenses
    davcrrsResponseStatus,
    davcrrsAPNSVoipChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteAPNSVoipChannel' smart constructor.
newtype DeleteAPNSVoipChannel = DeleteAPNSVoipChannel'
  { _davcApplicationId ::
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

-- | Creates a value of 'DeleteAPNSVoipChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'davcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
deleteAPNSVoipChannel ::
  -- | 'davcApplicationId'
  Text ->
  DeleteAPNSVoipChannel
deleteAPNSVoipChannel pApplicationId_ =
  DeleteAPNSVoipChannel'
    { _davcApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
davcApplicationId :: Lens' DeleteAPNSVoipChannel Text
davcApplicationId = lens _davcApplicationId (\s a -> s {_davcApplicationId = a})

instance AWSRequest DeleteAPNSVoipChannel where
  type
    Rs DeleteAPNSVoipChannel =
      DeleteAPNSVoipChannelResponse
  request = delete pinpoint
  response =
    receiveJSON
      ( \s h x ->
          DeleteAPNSVoipChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable DeleteAPNSVoipChannel

instance NFData DeleteAPNSVoipChannel

instance ToHeaders DeleteAPNSVoipChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteAPNSVoipChannel where
  toPath DeleteAPNSVoipChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _davcApplicationId,
        "/channels/apns_voip"
      ]

instance ToQuery DeleteAPNSVoipChannel where
  toQuery = const mempty

-- | /See:/ 'deleteAPNSVoipChannelResponse' smart constructor.
data DeleteAPNSVoipChannelResponse = DeleteAPNSVoipChannelResponse'
  { _davcrrsResponseStatus ::
      !Int,
    _davcrrsAPNSVoipChannelResponse ::
      !APNSVoipChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteAPNSVoipChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'davcrrsResponseStatus' - -- | The response status code.
--
-- * 'davcrrsAPNSVoipChannelResponse' - Undocumented member.
deleteAPNSVoipChannelResponse ::
  -- | 'davcrrsResponseStatus'
  Int ->
  -- | 'davcrrsAPNSVoipChannelResponse'
  APNSVoipChannelResponse ->
  DeleteAPNSVoipChannelResponse
deleteAPNSVoipChannelResponse
  pResponseStatus_
  pAPNSVoipChannelResponse_ =
    DeleteAPNSVoipChannelResponse'
      { _davcrrsResponseStatus =
          pResponseStatus_,
        _davcrrsAPNSVoipChannelResponse =
          pAPNSVoipChannelResponse_
      }

-- | -- | The response status code.
davcrrsResponseStatus :: Lens' DeleteAPNSVoipChannelResponse Int
davcrrsResponseStatus = lens _davcrrsResponseStatus (\s a -> s {_davcrrsResponseStatus = a})

-- | Undocumented member.
davcrrsAPNSVoipChannelResponse :: Lens' DeleteAPNSVoipChannelResponse APNSVoipChannelResponse
davcrrsAPNSVoipChannelResponse = lens _davcrrsAPNSVoipChannelResponse (\s a -> s {_davcrrsAPNSVoipChannelResponse = a})

instance NFData DeleteAPNSVoipChannelResponse
