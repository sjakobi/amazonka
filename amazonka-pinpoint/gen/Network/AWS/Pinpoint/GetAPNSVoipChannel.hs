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
-- Module      : Network.AWS.Pinpoint.GetAPNSVoipChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of the APNs VoIP channel for an application.
module Network.AWS.Pinpoint.GetAPNSVoipChannel
  ( -- * Creating a Request
    getAPNSVoipChannel,
    GetAPNSVoipChannel,

    -- * Request Lenses
    gavcApplicationId,

    -- * Destructuring the Response
    getAPNSVoipChannelResponse,
    GetAPNSVoipChannelResponse,

    -- * Response Lenses
    gavcrrsResponseStatus,
    gavcrrsAPNSVoipChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAPNSVoipChannel' smart constructor.
newtype GetAPNSVoipChannel = GetAPNSVoipChannel'
  { _gavcApplicationId ::
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

-- | Creates a value of 'GetAPNSVoipChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gavcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getAPNSVoipChannel ::
  -- | 'gavcApplicationId'
  Text ->
  GetAPNSVoipChannel
getAPNSVoipChannel pApplicationId_ =
  GetAPNSVoipChannel'
    { _gavcApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gavcApplicationId :: Lens' GetAPNSVoipChannel Text
gavcApplicationId = lens _gavcApplicationId (\s a -> s {_gavcApplicationId = a})

instance AWSRequest GetAPNSVoipChannel where
  type
    Rs GetAPNSVoipChannel =
      GetAPNSVoipChannelResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetAPNSVoipChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetAPNSVoipChannel

instance NFData GetAPNSVoipChannel

instance ToHeaders GetAPNSVoipChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetAPNSVoipChannel where
  toPath GetAPNSVoipChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gavcApplicationId,
        "/channels/apns_voip"
      ]

instance ToQuery GetAPNSVoipChannel where
  toQuery = const mempty

-- | /See:/ 'getAPNSVoipChannelResponse' smart constructor.
data GetAPNSVoipChannelResponse = GetAPNSVoipChannelResponse'
  { _gavcrrsResponseStatus ::
      !Int,
    _gavcrrsAPNSVoipChannelResponse ::
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

-- | Creates a value of 'GetAPNSVoipChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gavcrrsResponseStatus' - -- | The response status code.
--
-- * 'gavcrrsAPNSVoipChannelResponse' - Undocumented member.
getAPNSVoipChannelResponse ::
  -- | 'gavcrrsResponseStatus'
  Int ->
  -- | 'gavcrrsAPNSVoipChannelResponse'
  APNSVoipChannelResponse ->
  GetAPNSVoipChannelResponse
getAPNSVoipChannelResponse
  pResponseStatus_
  pAPNSVoipChannelResponse_ =
    GetAPNSVoipChannelResponse'
      { _gavcrrsResponseStatus =
          pResponseStatus_,
        _gavcrrsAPNSVoipChannelResponse =
          pAPNSVoipChannelResponse_
      }

-- | -- | The response status code.
gavcrrsResponseStatus :: Lens' GetAPNSVoipChannelResponse Int
gavcrrsResponseStatus = lens _gavcrrsResponseStatus (\s a -> s {_gavcrrsResponseStatus = a})

-- | Undocumented member.
gavcrrsAPNSVoipChannelResponse :: Lens' GetAPNSVoipChannelResponse APNSVoipChannelResponse
gavcrrsAPNSVoipChannelResponse = lens _gavcrrsAPNSVoipChannelResponse (\s a -> s {_gavcrrsAPNSVoipChannelResponse = a})

instance NFData GetAPNSVoipChannelResponse
