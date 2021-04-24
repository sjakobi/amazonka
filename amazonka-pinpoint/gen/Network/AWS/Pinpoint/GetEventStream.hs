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
-- Module      : Network.AWS.Pinpoint.GetEventStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the event stream settings for an application.
module Network.AWS.Pinpoint.GetEventStream
  ( -- * Creating a Request
    getEventStream,
    GetEventStream,

    -- * Request Lenses
    gesApplicationId,

    -- * Destructuring the Response
    getEventStreamResponse,
    GetEventStreamResponse,

    -- * Response Lenses
    gesrrsResponseStatus,
    gesrrsEventStream,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getEventStream' smart constructor.
newtype GetEventStream = GetEventStream'
  { _gesApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetEventStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gesApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getEventStream ::
  -- | 'gesApplicationId'
  Text ->
  GetEventStream
getEventStream pApplicationId_ =
  GetEventStream'
    { _gesApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gesApplicationId :: Lens' GetEventStream Text
gesApplicationId = lens _gesApplicationId (\s a -> s {_gesApplicationId = a})

instance AWSRequest GetEventStream where
  type Rs GetEventStream = GetEventStreamResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetEventStreamResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetEventStream

instance NFData GetEventStream

instance ToHeaders GetEventStream where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetEventStream where
  toPath GetEventStream' {..} =
    mconcat
      ["/v1/apps/", toBS _gesApplicationId, "/eventstream"]

instance ToQuery GetEventStream where
  toQuery = const mempty

-- | /See:/ 'getEventStreamResponse' smart constructor.
data GetEventStreamResponse = GetEventStreamResponse'
  { _gesrrsResponseStatus ::
      !Int,
    _gesrrsEventStream ::
      !EventStream
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetEventStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gesrrsResponseStatus' - -- | The response status code.
--
-- * 'gesrrsEventStream' - Undocumented member.
getEventStreamResponse ::
  -- | 'gesrrsResponseStatus'
  Int ->
  -- | 'gesrrsEventStream'
  EventStream ->
  GetEventStreamResponse
getEventStreamResponse pResponseStatus_ pEventStream_ =
  GetEventStreamResponse'
    { _gesrrsResponseStatus =
        pResponseStatus_,
      _gesrrsEventStream = pEventStream_
    }

-- | -- | The response status code.
gesrrsResponseStatus :: Lens' GetEventStreamResponse Int
gesrrsResponseStatus = lens _gesrrsResponseStatus (\s a -> s {_gesrrsResponseStatus = a})

-- | Undocumented member.
gesrrsEventStream :: Lens' GetEventStreamResponse EventStream
gesrrsEventStream = lens _gesrrsEventStream (\s a -> s {_gesrrsEventStream = a})

instance NFData GetEventStreamResponse
