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
-- Module      : Network.AWS.Pinpoint.DeleteEventStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the event stream for an application.
module Network.AWS.Pinpoint.DeleteEventStream
  ( -- * Creating a Request
    deleteEventStream,
    DeleteEventStream,

    -- * Request Lenses
    desApplicationId,

    -- * Destructuring the Response
    deleteEventStreamResponse,
    DeleteEventStreamResponse,

    -- * Response Lenses
    desrrsResponseStatus,
    desrrsEventStream,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteEventStream' smart constructor.
newtype DeleteEventStream = DeleteEventStream'
  { _desApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteEventStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
deleteEventStream ::
  -- | 'desApplicationId'
  Text ->
  DeleteEventStream
deleteEventStream pApplicationId_ =
  DeleteEventStream'
    { _desApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
desApplicationId :: Lens' DeleteEventStream Text
desApplicationId = lens _desApplicationId (\s a -> s {_desApplicationId = a})

instance AWSRequest DeleteEventStream where
  type Rs DeleteEventStream = DeleteEventStreamResponse
  request = delete pinpoint
  response =
    receiveJSON
      ( \s h x ->
          DeleteEventStreamResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable DeleteEventStream

instance NFData DeleteEventStream

instance ToHeaders DeleteEventStream where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteEventStream where
  toPath DeleteEventStream' {..} =
    mconcat
      ["/v1/apps/", toBS _desApplicationId, "/eventstream"]

instance ToQuery DeleteEventStream where
  toQuery = const mempty

-- | /See:/ 'deleteEventStreamResponse' smart constructor.
data DeleteEventStreamResponse = DeleteEventStreamResponse'
  { _desrrsResponseStatus ::
      !Int,
    _desrrsEventStream ::
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

-- | Creates a value of 'DeleteEventStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrrsResponseStatus' - -- | The response status code.
--
-- * 'desrrsEventStream' - Undocumented member.
deleteEventStreamResponse ::
  -- | 'desrrsResponseStatus'
  Int ->
  -- | 'desrrsEventStream'
  EventStream ->
  DeleteEventStreamResponse
deleteEventStreamResponse
  pResponseStatus_
  pEventStream_ =
    DeleteEventStreamResponse'
      { _desrrsResponseStatus =
          pResponseStatus_,
        _desrrsEventStream = pEventStream_
      }

-- | -- | The response status code.
desrrsResponseStatus :: Lens' DeleteEventStreamResponse Int
desrrsResponseStatus = lens _desrrsResponseStatus (\s a -> s {_desrrsResponseStatus = a})

-- | Undocumented member.
desrrsEventStream :: Lens' DeleteEventStreamResponse EventStream
desrrsEventStream = lens _desrrsEventStream (\s a -> s {_desrrsEventStream = a})

instance NFData DeleteEventStreamResponse
