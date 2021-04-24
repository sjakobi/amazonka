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
-- Module      : Network.AWS.Pinpoint.PutEventStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new event stream for an application or updates the settings of an existing event stream for an application.
module Network.AWS.Pinpoint.PutEventStream
  ( -- * Creating a Request
    putEventStream,
    PutEventStream,

    -- * Request Lenses
    pesApplicationId,
    pesWriteEventStream,

    -- * Destructuring the Response
    putEventStreamResponse,
    PutEventStreamResponse,

    -- * Response Lenses
    pesrrsResponseStatus,
    pesrrsEventStream,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putEventStream' smart constructor.
data PutEventStream = PutEventStream'
  { _pesApplicationId ::
      !Text,
    _pesWriteEventStream :: !WriteEventStream
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutEventStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pesApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'pesWriteEventStream' - Undocumented member.
putEventStream ::
  -- | 'pesApplicationId'
  Text ->
  -- | 'pesWriteEventStream'
  WriteEventStream ->
  PutEventStream
putEventStream pApplicationId_ pWriteEventStream_ =
  PutEventStream'
    { _pesApplicationId =
        pApplicationId_,
      _pesWriteEventStream = pWriteEventStream_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
pesApplicationId :: Lens' PutEventStream Text
pesApplicationId = lens _pesApplicationId (\s a -> s {_pesApplicationId = a})

-- | Undocumented member.
pesWriteEventStream :: Lens' PutEventStream WriteEventStream
pesWriteEventStream = lens _pesWriteEventStream (\s a -> s {_pesWriteEventStream = a})

instance AWSRequest PutEventStream where
  type Rs PutEventStream = PutEventStreamResponse
  request = postJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          PutEventStreamResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable PutEventStream

instance NFData PutEventStream

instance ToHeaders PutEventStream where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutEventStream where
  toJSON PutEventStream' {..} =
    object
      ( catMaybes
          [Just ("WriteEventStream" .= _pesWriteEventStream)]
      )

instance ToPath PutEventStream where
  toPath PutEventStream' {..} =
    mconcat
      ["/v1/apps/", toBS _pesApplicationId, "/eventstream"]

instance ToQuery PutEventStream where
  toQuery = const mempty

-- | /See:/ 'putEventStreamResponse' smart constructor.
data PutEventStreamResponse = PutEventStreamResponse'
  { _pesrrsResponseStatus ::
      !Int,
    _pesrrsEventStream ::
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

-- | Creates a value of 'PutEventStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pesrrsResponseStatus' - -- | The response status code.
--
-- * 'pesrrsEventStream' - Undocumented member.
putEventStreamResponse ::
  -- | 'pesrrsResponseStatus'
  Int ->
  -- | 'pesrrsEventStream'
  EventStream ->
  PutEventStreamResponse
putEventStreamResponse pResponseStatus_ pEventStream_ =
  PutEventStreamResponse'
    { _pesrrsResponseStatus =
        pResponseStatus_,
      _pesrrsEventStream = pEventStream_
    }

-- | -- | The response status code.
pesrrsResponseStatus :: Lens' PutEventStreamResponse Int
pesrrsResponseStatus = lens _pesrrsResponseStatus (\s a -> s {_pesrrsResponseStatus = a})

-- | Undocumented member.
pesrrsEventStream :: Lens' PutEventStreamResponse EventStream
pesrrsEventStream = lens _pesrrsEventStream (\s a -> s {_pesrrsEventStream = a})

instance NFData PutEventStreamResponse
