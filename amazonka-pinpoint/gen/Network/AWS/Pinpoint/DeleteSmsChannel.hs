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
-- Module      : Network.AWS.Pinpoint.DeleteSmsChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the SMS channel for an application and deletes any existing settings for the channel.
module Network.AWS.Pinpoint.DeleteSmsChannel
  ( -- * Creating a Request
    deleteSmsChannel,
    DeleteSmsChannel,

    -- * Request Lenses
    dscApplicationId,

    -- * Destructuring the Response
    deleteSmsChannelResponse,
    DeleteSmsChannelResponse,

    -- * Response Lenses
    dscrrsResponseStatus,
    dscrrsSMSChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteSmsChannel' smart constructor.
newtype DeleteSmsChannel = DeleteSmsChannel'
  { _dscApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSmsChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
deleteSmsChannel ::
  -- | 'dscApplicationId'
  Text ->
  DeleteSmsChannel
deleteSmsChannel pApplicationId_ =
  DeleteSmsChannel'
    { _dscApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
dscApplicationId :: Lens' DeleteSmsChannel Text
dscApplicationId = lens _dscApplicationId (\s a -> s {_dscApplicationId = a})

instance AWSRequest DeleteSmsChannel where
  type Rs DeleteSmsChannel = DeleteSmsChannelResponse
  request = delete pinpoint
  response =
    receiveJSON
      ( \s h x ->
          DeleteSmsChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable DeleteSmsChannel

instance NFData DeleteSmsChannel

instance ToHeaders DeleteSmsChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteSmsChannel where
  toPath DeleteSmsChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _dscApplicationId,
        "/channels/sms"
      ]

instance ToQuery DeleteSmsChannel where
  toQuery = const mempty

-- | /See:/ 'deleteSmsChannelResponse' smart constructor.
data DeleteSmsChannelResponse = DeleteSmsChannelResponse'
  { _dscrrsResponseStatus ::
      !Int,
    _dscrrsSMSChannelResponse ::
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

-- | Creates a value of 'DeleteSmsChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscrrsResponseStatus' - -- | The response status code.
--
-- * 'dscrrsSMSChannelResponse' - Undocumented member.
deleteSmsChannelResponse ::
  -- | 'dscrrsResponseStatus'
  Int ->
  -- | 'dscrrsSMSChannelResponse'
  SMSChannelResponse ->
  DeleteSmsChannelResponse
deleteSmsChannelResponse
  pResponseStatus_
  pSMSChannelResponse_ =
    DeleteSmsChannelResponse'
      { _dscrrsResponseStatus =
          pResponseStatus_,
        _dscrrsSMSChannelResponse = pSMSChannelResponse_
      }

-- | -- | The response status code.
dscrrsResponseStatus :: Lens' DeleteSmsChannelResponse Int
dscrrsResponseStatus = lens _dscrrsResponseStatus (\s a -> s {_dscrrsResponseStatus = a})

-- | Undocumented member.
dscrrsSMSChannelResponse :: Lens' DeleteSmsChannelResponse SMSChannelResponse
dscrrsSMSChannelResponse = lens _dscrrsSMSChannelResponse (\s a -> s {_dscrrsSMSChannelResponse = a})

instance NFData DeleteSmsChannelResponse
