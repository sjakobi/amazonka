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
-- Module      : Network.AWS.Connect.UpdateQueueStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Updates the status of the queue.
module Network.AWS.Connect.UpdateQueueStatus
  ( -- * Creating a Request
    updateQueueStatus,
    UpdateQueueStatus,

    -- * Request Lenses
    uqsInstanceId,
    uqsQueueId,
    uqsStatus,

    -- * Destructuring the Response
    updateQueueStatusResponse,
    UpdateQueueStatusResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateQueueStatus' smart constructor.
data UpdateQueueStatus = UpdateQueueStatus'
  { _uqsInstanceId ::
      !Text,
    _uqsQueueId :: !Text,
    _uqsStatus :: !QueueStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateQueueStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uqsInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'uqsQueueId' - The identifier for the queue.
--
-- * 'uqsStatus' - The status of the queue.
updateQueueStatus ::
  -- | 'uqsInstanceId'
  Text ->
  -- | 'uqsQueueId'
  Text ->
  -- | 'uqsStatus'
  QueueStatus ->
  UpdateQueueStatus
updateQueueStatus pInstanceId_ pQueueId_ pStatus_ =
  UpdateQueueStatus'
    { _uqsInstanceId = pInstanceId_,
      _uqsQueueId = pQueueId_,
      _uqsStatus = pStatus_
    }

-- | The identifier of the Amazon Connect instance.
uqsInstanceId :: Lens' UpdateQueueStatus Text
uqsInstanceId = lens _uqsInstanceId (\s a -> s {_uqsInstanceId = a})

-- | The identifier for the queue.
uqsQueueId :: Lens' UpdateQueueStatus Text
uqsQueueId = lens _uqsQueueId (\s a -> s {_uqsQueueId = a})

-- | The status of the queue.
uqsStatus :: Lens' UpdateQueueStatus QueueStatus
uqsStatus = lens _uqsStatus (\s a -> s {_uqsStatus = a})

instance AWSRequest UpdateQueueStatus where
  type Rs UpdateQueueStatus = UpdateQueueStatusResponse
  request = postJSON connect
  response = receiveNull UpdateQueueStatusResponse'

instance Hashable UpdateQueueStatus

instance NFData UpdateQueueStatus

instance ToHeaders UpdateQueueStatus where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateQueueStatus where
  toJSON UpdateQueueStatus' {..} =
    object (catMaybes [Just ("Status" .= _uqsStatus)])

instance ToPath UpdateQueueStatus where
  toPath UpdateQueueStatus' {..} =
    mconcat
      [ "/queues/",
        toBS _uqsInstanceId,
        "/",
        toBS _uqsQueueId,
        "/status"
      ]

instance ToQuery UpdateQueueStatus where
  toQuery = const mempty

-- | /See:/ 'updateQueueStatusResponse' smart constructor.
data UpdateQueueStatusResponse = UpdateQueueStatusResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateQueueStatusResponse' with the minimum fields required to make a request.
updateQueueStatusResponse ::
  UpdateQueueStatusResponse
updateQueueStatusResponse =
  UpdateQueueStatusResponse'

instance NFData UpdateQueueStatusResponse
