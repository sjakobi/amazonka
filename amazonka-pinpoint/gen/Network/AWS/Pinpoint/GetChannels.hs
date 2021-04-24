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
-- Module      : Network.AWS.Pinpoint.GetChannels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the history and status of each channel for an application.
module Network.AWS.Pinpoint.GetChannels
  ( -- * Creating a Request
    getChannels,
    GetChannels,

    -- * Request Lenses
    gcApplicationId,

    -- * Destructuring the Response
    getChannelsResponse,
    GetChannelsResponse,

    -- * Response Lenses
    ggrsResponseStatus,
    ggrsChannelsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getChannels' smart constructor.
newtype GetChannels = GetChannels'
  { _gcApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetChannels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getChannels ::
  -- | 'gcApplicationId'
  Text ->
  GetChannels
getChannels pApplicationId_ =
  GetChannels' {_gcApplicationId = pApplicationId_}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gcApplicationId :: Lens' GetChannels Text
gcApplicationId = lens _gcApplicationId (\s a -> s {_gcApplicationId = a})

instance AWSRequest GetChannels where
  type Rs GetChannels = GetChannelsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetChannelsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetChannels

instance NFData GetChannels

instance ToHeaders GetChannels where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetChannels where
  toPath GetChannels' {..} =
    mconcat
      ["/v1/apps/", toBS _gcApplicationId, "/channels"]

instance ToQuery GetChannels where
  toQuery = const mempty

-- | /See:/ 'getChannelsResponse' smart constructor.
data GetChannelsResponse = GetChannelsResponse'
  { _ggrsResponseStatus ::
      !Int,
    _ggrsChannelsResponse ::
      !ChannelsResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetChannelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggrsResponseStatus' - -- | The response status code.
--
-- * 'ggrsChannelsResponse' - Undocumented member.
getChannelsResponse ::
  -- | 'ggrsResponseStatus'
  Int ->
  -- | 'ggrsChannelsResponse'
  ChannelsResponse ->
  GetChannelsResponse
getChannelsResponse
  pResponseStatus_
  pChannelsResponse_ =
    GetChannelsResponse'
      { _ggrsResponseStatus =
          pResponseStatus_,
        _ggrsChannelsResponse = pChannelsResponse_
      }

-- | -- | The response status code.
ggrsResponseStatus :: Lens' GetChannelsResponse Int
ggrsResponseStatus = lens _ggrsResponseStatus (\s a -> s {_ggrsResponseStatus = a})

-- | Undocumented member.
ggrsChannelsResponse :: Lens' GetChannelsResponse ChannelsResponse
ggrsChannelsResponse = lens _ggrsChannelsResponse (\s a -> s {_ggrsChannelsResponse = a})

instance NFData GetChannelsResponse
