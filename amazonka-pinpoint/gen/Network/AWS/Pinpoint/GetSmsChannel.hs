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
-- Module      : Network.AWS.Pinpoint.GetSmsChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of the SMS channel for an application.
module Network.AWS.Pinpoint.GetSmsChannel
  ( -- * Creating a Request
    getSmsChannel,
    GetSmsChannel,

    -- * Request Lenses
    gscApplicationId,

    -- * Destructuring the Response
    getSmsChannelResponse,
    GetSmsChannelResponse,

    -- * Response Lenses
    gscrrsResponseStatus,
    gscrrsSMSChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSmsChannel' smart constructor.
newtype GetSmsChannel = GetSmsChannel'
  { _gscApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSmsChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gscApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getSmsChannel ::
  -- | 'gscApplicationId'
  Text ->
  GetSmsChannel
getSmsChannel pApplicationId_ =
  GetSmsChannel' {_gscApplicationId = pApplicationId_}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gscApplicationId :: Lens' GetSmsChannel Text
gscApplicationId = lens _gscApplicationId (\s a -> s {_gscApplicationId = a})

instance AWSRequest GetSmsChannel where
  type Rs GetSmsChannel = GetSmsChannelResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetSmsChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetSmsChannel

instance NFData GetSmsChannel

instance ToHeaders GetSmsChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSmsChannel where
  toPath GetSmsChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gscApplicationId,
        "/channels/sms"
      ]

instance ToQuery GetSmsChannel where
  toQuery = const mempty

-- | /See:/ 'getSmsChannelResponse' smart constructor.
data GetSmsChannelResponse = GetSmsChannelResponse'
  { _gscrrsResponseStatus ::
      !Int,
    _gscrrsSMSChannelResponse ::
      !SMSChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSmsChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gscrrsResponseStatus' - -- | The response status code.
--
-- * 'gscrrsSMSChannelResponse' - Undocumented member.
getSmsChannelResponse ::
  -- | 'gscrrsResponseStatus'
  Int ->
  -- | 'gscrrsSMSChannelResponse'
  SMSChannelResponse ->
  GetSmsChannelResponse
getSmsChannelResponse
  pResponseStatus_
  pSMSChannelResponse_ =
    GetSmsChannelResponse'
      { _gscrrsResponseStatus =
          pResponseStatus_,
        _gscrrsSMSChannelResponse = pSMSChannelResponse_
      }

-- | -- | The response status code.
gscrrsResponseStatus :: Lens' GetSmsChannelResponse Int
gscrrsResponseStatus = lens _gscrrsResponseStatus (\s a -> s {_gscrrsResponseStatus = a})

-- | Undocumented member.
gscrrsSMSChannelResponse :: Lens' GetSmsChannelResponse SMSChannelResponse
gscrrsSMSChannelResponse = lens _gscrrsSMSChannelResponse (\s a -> s {_gscrrsSMSChannelResponse = a})

instance NFData GetSmsChannelResponse
