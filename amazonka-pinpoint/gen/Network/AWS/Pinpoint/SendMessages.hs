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
-- Module      : Network.AWS.Pinpoint.SendMessages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and sends a direct message.
module Network.AWS.Pinpoint.SendMessages
  ( -- * Creating a Request
    sendMessages,
    SendMessages,

    -- * Request Lenses
    smApplicationId,
    smMessageRequest,

    -- * Destructuring the Response
    sendMessagesResponse,
    SendMessagesResponse,

    -- * Response Lenses
    smrrsResponseStatus,
    smrrsMessageResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'sendMessages' smart constructor.
data SendMessages = SendMessages'
  { _smApplicationId ::
      !Text,
    _smMessageRequest :: !MessageRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SendMessages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'smMessageRequest' - Undocumented member.
sendMessages ::
  -- | 'smApplicationId'
  Text ->
  -- | 'smMessageRequest'
  MessageRequest ->
  SendMessages
sendMessages pApplicationId_ pMessageRequest_ =
  SendMessages'
    { _smApplicationId = pApplicationId_,
      _smMessageRequest = pMessageRequest_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
smApplicationId :: Lens' SendMessages Text
smApplicationId = lens _smApplicationId (\s a -> s {_smApplicationId = a})

-- | Undocumented member.
smMessageRequest :: Lens' SendMessages MessageRequest
smMessageRequest = lens _smMessageRequest (\s a -> s {_smMessageRequest = a})

instance AWSRequest SendMessages where
  type Rs SendMessages = SendMessagesResponse
  request = postJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          SendMessagesResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable SendMessages

instance NFData SendMessages

instance ToHeaders SendMessages where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SendMessages where
  toJSON SendMessages' {..} =
    object
      ( catMaybes
          [Just ("MessageRequest" .= _smMessageRequest)]
      )

instance ToPath SendMessages where
  toPath SendMessages' {..} =
    mconcat
      ["/v1/apps/", toBS _smApplicationId, "/messages"]

instance ToQuery SendMessages where
  toQuery = const mempty

-- | /See:/ 'sendMessagesResponse' smart constructor.
data SendMessagesResponse = SendMessagesResponse'
  { _smrrsResponseStatus ::
      !Int,
    _smrrsMessageResponse ::
      !MessageResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SendMessagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smrrsResponseStatus' - -- | The response status code.
--
-- * 'smrrsMessageResponse' - Undocumented member.
sendMessagesResponse ::
  -- | 'smrrsResponseStatus'
  Int ->
  -- | 'smrrsMessageResponse'
  MessageResponse ->
  SendMessagesResponse
sendMessagesResponse
  pResponseStatus_
  pMessageResponse_ =
    SendMessagesResponse'
      { _smrrsResponseStatus =
          pResponseStatus_,
        _smrrsMessageResponse = pMessageResponse_
      }

-- | -- | The response status code.
smrrsResponseStatus :: Lens' SendMessagesResponse Int
smrrsResponseStatus = lens _smrrsResponseStatus (\s a -> s {_smrrsResponseStatus = a})

-- | Undocumented member.
smrrsMessageResponse :: Lens' SendMessagesResponse MessageResponse
smrrsMessageResponse = lens _smrrsMessageResponse (\s a -> s {_smrrsMessageResponse = a})

instance NFData SendMessagesResponse
