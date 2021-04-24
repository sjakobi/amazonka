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
-- Module      : Network.AWS.Pinpoint.GetAPNSChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of the APNs channel for an application.
module Network.AWS.Pinpoint.GetAPNSChannel
  ( -- * Creating a Request
    getAPNSChannel,
    GetAPNSChannel,

    -- * Request Lenses
    gacApplicationId,

    -- * Destructuring the Response
    getAPNSChannelResponse,
    GetAPNSChannelResponse,

    -- * Response Lenses
    gacrrsResponseStatus,
    gacrrsAPNSChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAPNSChannel' smart constructor.
newtype GetAPNSChannel = GetAPNSChannel'
  { _gacApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAPNSChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getAPNSChannel ::
  -- | 'gacApplicationId'
  Text ->
  GetAPNSChannel
getAPNSChannel pApplicationId_ =
  GetAPNSChannel'
    { _gacApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gacApplicationId :: Lens' GetAPNSChannel Text
gacApplicationId = lens _gacApplicationId (\s a -> s {_gacApplicationId = a})

instance AWSRequest GetAPNSChannel where
  type Rs GetAPNSChannel = GetAPNSChannelResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetAPNSChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetAPNSChannel

instance NFData GetAPNSChannel

instance ToHeaders GetAPNSChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetAPNSChannel where
  toPath GetAPNSChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gacApplicationId,
        "/channels/apns"
      ]

instance ToQuery GetAPNSChannel where
  toQuery = const mempty

-- | /See:/ 'getAPNSChannelResponse' smart constructor.
data GetAPNSChannelResponse = GetAPNSChannelResponse'
  { _gacrrsResponseStatus ::
      !Int,
    _gacrrsAPNSChannelResponse ::
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

-- | Creates a value of 'GetAPNSChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacrrsResponseStatus' - -- | The response status code.
--
-- * 'gacrrsAPNSChannelResponse' - Undocumented member.
getAPNSChannelResponse ::
  -- | 'gacrrsResponseStatus'
  Int ->
  -- | 'gacrrsAPNSChannelResponse'
  APNSChannelResponse ->
  GetAPNSChannelResponse
getAPNSChannelResponse
  pResponseStatus_
  pAPNSChannelResponse_ =
    GetAPNSChannelResponse'
      { _gacrrsResponseStatus =
          pResponseStatus_,
        _gacrrsAPNSChannelResponse = pAPNSChannelResponse_
      }

-- | -- | The response status code.
gacrrsResponseStatus :: Lens' GetAPNSChannelResponse Int
gacrrsResponseStatus = lens _gacrrsResponseStatus (\s a -> s {_gacrrsResponseStatus = a})

-- | Undocumented member.
gacrrsAPNSChannelResponse :: Lens' GetAPNSChannelResponse APNSChannelResponse
gacrrsAPNSChannelResponse = lens _gacrrsAPNSChannelResponse (\s a -> s {_gacrrsAPNSChannelResponse = a})

instance NFData GetAPNSChannelResponse
