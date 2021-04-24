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
-- Module      : Network.AWS.Pinpoint.SendUsersMessages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and sends a message to a list of users.
module Network.AWS.Pinpoint.SendUsersMessages
  ( -- * Creating a Request
    sendUsersMessages,
    SendUsersMessages,

    -- * Request Lenses
    sumApplicationId,
    sumSendUsersMessageRequest,

    -- * Destructuring the Response
    sendUsersMessagesResponse,
    SendUsersMessagesResponse,

    -- * Response Lenses
    sumrrsResponseStatus,
    sumrrsSendUsersMessageResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'sendUsersMessages' smart constructor.
data SendUsersMessages = SendUsersMessages'
  { _sumApplicationId ::
      !Text,
    _sumSendUsersMessageRequest ::
      !SendUsersMessageRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SendUsersMessages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sumApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'sumSendUsersMessageRequest' - Undocumented member.
sendUsersMessages ::
  -- | 'sumApplicationId'
  Text ->
  -- | 'sumSendUsersMessageRequest'
  SendUsersMessageRequest ->
  SendUsersMessages
sendUsersMessages
  pApplicationId_
  pSendUsersMessageRequest_ =
    SendUsersMessages'
      { _sumApplicationId =
          pApplicationId_,
        _sumSendUsersMessageRequest =
          pSendUsersMessageRequest_
      }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
sumApplicationId :: Lens' SendUsersMessages Text
sumApplicationId = lens _sumApplicationId (\s a -> s {_sumApplicationId = a})

-- | Undocumented member.
sumSendUsersMessageRequest :: Lens' SendUsersMessages SendUsersMessageRequest
sumSendUsersMessageRequest = lens _sumSendUsersMessageRequest (\s a -> s {_sumSendUsersMessageRequest = a})

instance AWSRequest SendUsersMessages where
  type Rs SendUsersMessages = SendUsersMessagesResponse
  request = postJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          SendUsersMessagesResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable SendUsersMessages

instance NFData SendUsersMessages

instance ToHeaders SendUsersMessages where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SendUsersMessages where
  toJSON SendUsersMessages' {..} =
    object
      ( catMaybes
          [ Just
              ( "SendUsersMessageRequest"
                  .= _sumSendUsersMessageRequest
              )
          ]
      )

instance ToPath SendUsersMessages where
  toPath SendUsersMessages' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _sumApplicationId,
        "/users-messages"
      ]

instance ToQuery SendUsersMessages where
  toQuery = const mempty

-- | /See:/ 'sendUsersMessagesResponse' smart constructor.
data SendUsersMessagesResponse = SendUsersMessagesResponse'
  { _sumrrsResponseStatus ::
      !Int,
    _sumrrsSendUsersMessageResponse ::
      !SendUsersMessageResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SendUsersMessagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sumrrsResponseStatus' - -- | The response status code.
--
-- * 'sumrrsSendUsersMessageResponse' - Undocumented member.
sendUsersMessagesResponse ::
  -- | 'sumrrsResponseStatus'
  Int ->
  -- | 'sumrrsSendUsersMessageResponse'
  SendUsersMessageResponse ->
  SendUsersMessagesResponse
sendUsersMessagesResponse
  pResponseStatus_
  pSendUsersMessageResponse_ =
    SendUsersMessagesResponse'
      { _sumrrsResponseStatus =
          pResponseStatus_,
        _sumrrsSendUsersMessageResponse =
          pSendUsersMessageResponse_
      }

-- | -- | The response status code.
sumrrsResponseStatus :: Lens' SendUsersMessagesResponse Int
sumrrsResponseStatus = lens _sumrrsResponseStatus (\s a -> s {_sumrrsResponseStatus = a})

-- | Undocumented member.
sumrrsSendUsersMessageResponse :: Lens' SendUsersMessagesResponse SendUsersMessageResponse
sumrrsSendUsersMessageResponse = lens _sumrrsSendUsersMessageResponse (\s a -> s {_sumrrsSendUsersMessageResponse = a})

instance NFData SendUsersMessagesResponse
