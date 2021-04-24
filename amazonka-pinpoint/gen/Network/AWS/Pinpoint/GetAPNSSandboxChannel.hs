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
-- Module      : Network.AWS.Pinpoint.GetAPNSSandboxChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of the APNs sandbox channel for an application.
module Network.AWS.Pinpoint.GetAPNSSandboxChannel
  ( -- * Creating a Request
    getAPNSSandboxChannel,
    GetAPNSSandboxChannel,

    -- * Request Lenses
    gascApplicationId,

    -- * Destructuring the Response
    getAPNSSandboxChannelResponse,
    GetAPNSSandboxChannelResponse,

    -- * Response Lenses
    gascrrsResponseStatus,
    gascrrsAPNSSandboxChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAPNSSandboxChannel' smart constructor.
newtype GetAPNSSandboxChannel = GetAPNSSandboxChannel'
  { _gascApplicationId ::
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

-- | Creates a value of 'GetAPNSSandboxChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gascApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getAPNSSandboxChannel ::
  -- | 'gascApplicationId'
  Text ->
  GetAPNSSandboxChannel
getAPNSSandboxChannel pApplicationId_ =
  GetAPNSSandboxChannel'
    { _gascApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gascApplicationId :: Lens' GetAPNSSandboxChannel Text
gascApplicationId = lens _gascApplicationId (\s a -> s {_gascApplicationId = a})

instance AWSRequest GetAPNSSandboxChannel where
  type
    Rs GetAPNSSandboxChannel =
      GetAPNSSandboxChannelResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetAPNSSandboxChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetAPNSSandboxChannel

instance NFData GetAPNSSandboxChannel

instance ToHeaders GetAPNSSandboxChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetAPNSSandboxChannel where
  toPath GetAPNSSandboxChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gascApplicationId,
        "/channels/apns_sandbox"
      ]

instance ToQuery GetAPNSSandboxChannel where
  toQuery = const mempty

-- | /See:/ 'getAPNSSandboxChannelResponse' smart constructor.
data GetAPNSSandboxChannelResponse = GetAPNSSandboxChannelResponse'
  { _gascrrsResponseStatus ::
      !Int,
    _gascrrsAPNSSandboxChannelResponse ::
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

-- | Creates a value of 'GetAPNSSandboxChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gascrrsResponseStatus' - -- | The response status code.
--
-- * 'gascrrsAPNSSandboxChannelResponse' - Undocumented member.
getAPNSSandboxChannelResponse ::
  -- | 'gascrrsResponseStatus'
  Int ->
  -- | 'gascrrsAPNSSandboxChannelResponse'
  APNSSandboxChannelResponse ->
  GetAPNSSandboxChannelResponse
getAPNSSandboxChannelResponse
  pResponseStatus_
  pAPNSSandboxChannelResponse_ =
    GetAPNSSandboxChannelResponse'
      { _gascrrsResponseStatus =
          pResponseStatus_,
        _gascrrsAPNSSandboxChannelResponse =
          pAPNSSandboxChannelResponse_
      }

-- | -- | The response status code.
gascrrsResponseStatus :: Lens' GetAPNSSandboxChannelResponse Int
gascrrsResponseStatus = lens _gascrrsResponseStatus (\s a -> s {_gascrrsResponseStatus = a})

-- | Undocumented member.
gascrrsAPNSSandboxChannelResponse :: Lens' GetAPNSSandboxChannelResponse APNSSandboxChannelResponse
gascrrsAPNSSandboxChannelResponse = lens _gascrrsAPNSSandboxChannelResponse (\s a -> s {_gascrrsAPNSSandboxChannelResponse = a})

instance NFData GetAPNSSandboxChannelResponse
