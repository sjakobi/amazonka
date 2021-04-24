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
-- Module      : Network.AWS.IoT.DeleteStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a stream.
module Network.AWS.IoT.DeleteStream
  ( -- * Creating a Request
    deleteStream,
    DeleteStream,

    -- * Request Lenses
    dsStreamId,

    -- * Destructuring the Response
    deleteStreamResponse,
    DeleteStreamResponse,

    -- * Response Lenses
    dsrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteStream' smart constructor.
newtype DeleteStream = DeleteStream'
  { _dsStreamId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsStreamId' - The stream ID.
deleteStream ::
  -- | 'dsStreamId'
  Text ->
  DeleteStream
deleteStream pStreamId_ =
  DeleteStream' {_dsStreamId = pStreamId_}

-- | The stream ID.
dsStreamId :: Lens' DeleteStream Text
dsStreamId = lens _dsStreamId (\s a -> s {_dsStreamId = a})

instance AWSRequest DeleteStream where
  type Rs DeleteStream = DeleteStreamResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DeleteStreamResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteStream

instance NFData DeleteStream

instance ToHeaders DeleteStream where
  toHeaders = const mempty

instance ToPath DeleteStream where
  toPath DeleteStream' {..} =
    mconcat ["/streams/", toBS _dsStreamId]

instance ToQuery DeleteStream where
  toQuery = const mempty

-- | /See:/ 'deleteStreamResponse' smart constructor.
newtype DeleteStreamResponse = DeleteStreamResponse'
  { _dsrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
deleteStreamResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DeleteStreamResponse
deleteStreamResponse pResponseStatus_ =
  DeleteStreamResponse'
    { _dsrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DeleteStreamResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DeleteStreamResponse
