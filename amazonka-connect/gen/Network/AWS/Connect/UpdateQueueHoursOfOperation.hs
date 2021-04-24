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
-- Module      : Network.AWS.Connect.UpdateQueueHoursOfOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Updates the hours of operation for the specified queue.
module Network.AWS.Connect.UpdateQueueHoursOfOperation
  ( -- * Creating a Request
    updateQueueHoursOfOperation,
    UpdateQueueHoursOfOperation,

    -- * Request Lenses
    uqhooInstanceId,
    uqhooQueueId,
    uqhooHoursOfOperationId,

    -- * Destructuring the Response
    updateQueueHoursOfOperationResponse,
    UpdateQueueHoursOfOperationResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateQueueHoursOfOperation' smart constructor.
data UpdateQueueHoursOfOperation = UpdateQueueHoursOfOperation'
  { _uqhooInstanceId ::
      !Text,
    _uqhooQueueId ::
      !Text,
    _uqhooHoursOfOperationId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateQueueHoursOfOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uqhooInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'uqhooQueueId' - The identifier for the queue.
--
-- * 'uqhooHoursOfOperationId' - The identifier for the hours of operation.
updateQueueHoursOfOperation ::
  -- | 'uqhooInstanceId'
  Text ->
  -- | 'uqhooQueueId'
  Text ->
  -- | 'uqhooHoursOfOperationId'
  Text ->
  UpdateQueueHoursOfOperation
updateQueueHoursOfOperation
  pInstanceId_
  pQueueId_
  pHoursOfOperationId_ =
    UpdateQueueHoursOfOperation'
      { _uqhooInstanceId =
          pInstanceId_,
        _uqhooQueueId = pQueueId_,
        _uqhooHoursOfOperationId =
          pHoursOfOperationId_
      }

-- | The identifier of the Amazon Connect instance.
uqhooInstanceId :: Lens' UpdateQueueHoursOfOperation Text
uqhooInstanceId = lens _uqhooInstanceId (\s a -> s {_uqhooInstanceId = a})

-- | The identifier for the queue.
uqhooQueueId :: Lens' UpdateQueueHoursOfOperation Text
uqhooQueueId = lens _uqhooQueueId (\s a -> s {_uqhooQueueId = a})

-- | The identifier for the hours of operation.
uqhooHoursOfOperationId :: Lens' UpdateQueueHoursOfOperation Text
uqhooHoursOfOperationId = lens _uqhooHoursOfOperationId (\s a -> s {_uqhooHoursOfOperationId = a})

instance AWSRequest UpdateQueueHoursOfOperation where
  type
    Rs UpdateQueueHoursOfOperation =
      UpdateQueueHoursOfOperationResponse
  request = postJSON connect
  response =
    receiveNull UpdateQueueHoursOfOperationResponse'

instance Hashable UpdateQueueHoursOfOperation

instance NFData UpdateQueueHoursOfOperation

instance ToHeaders UpdateQueueHoursOfOperation where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateQueueHoursOfOperation where
  toJSON UpdateQueueHoursOfOperation' {..} =
    object
      ( catMaybes
          [ Just
              ("HoursOfOperationId" .= _uqhooHoursOfOperationId)
          ]
      )

instance ToPath UpdateQueueHoursOfOperation where
  toPath UpdateQueueHoursOfOperation' {..} =
    mconcat
      [ "/queues/",
        toBS _uqhooInstanceId,
        "/",
        toBS _uqhooQueueId,
        "/hours-of-operation"
      ]

instance ToQuery UpdateQueueHoursOfOperation where
  toQuery = const mempty

-- | /See:/ 'updateQueueHoursOfOperationResponse' smart constructor.
data UpdateQueueHoursOfOperationResponse = UpdateQueueHoursOfOperationResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateQueueHoursOfOperationResponse' with the minimum fields required to make a request.
updateQueueHoursOfOperationResponse ::
  UpdateQueueHoursOfOperationResponse
updateQueueHoursOfOperationResponse =
  UpdateQueueHoursOfOperationResponse'

instance NFData UpdateQueueHoursOfOperationResponse
