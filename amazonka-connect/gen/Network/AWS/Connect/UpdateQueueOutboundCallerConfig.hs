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
-- Module      : Network.AWS.Connect.UpdateQueueOutboundCallerConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Updates the outbound caller ID name, number, and outbound whisper flow for a specified queue.
module Network.AWS.Connect.UpdateQueueOutboundCallerConfig
  ( -- * Creating a Request
    updateQueueOutboundCallerConfig,
    UpdateQueueOutboundCallerConfig,

    -- * Request Lenses
    uqoccInstanceId,
    uqoccQueueId,
    uqoccOutboundCallerConfig,

    -- * Destructuring the Response
    updateQueueOutboundCallerConfigResponse,
    UpdateQueueOutboundCallerConfigResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateQueueOutboundCallerConfig' smart constructor.
data UpdateQueueOutboundCallerConfig = UpdateQueueOutboundCallerConfig'
  { _uqoccInstanceId ::
      !Text,
    _uqoccQueueId ::
      !Text,
    _uqoccOutboundCallerConfig ::
      !OutboundCallerConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateQueueOutboundCallerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uqoccInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'uqoccQueueId' - The identifier for the queue.
--
-- * 'uqoccOutboundCallerConfig' - The outbound caller ID name, number, and outbound whisper flow.
updateQueueOutboundCallerConfig ::
  -- | 'uqoccInstanceId'
  Text ->
  -- | 'uqoccQueueId'
  Text ->
  -- | 'uqoccOutboundCallerConfig'
  OutboundCallerConfig ->
  UpdateQueueOutboundCallerConfig
updateQueueOutboundCallerConfig
  pInstanceId_
  pQueueId_
  pOutboundCallerConfig_ =
    UpdateQueueOutboundCallerConfig'
      { _uqoccInstanceId =
          pInstanceId_,
        _uqoccQueueId = pQueueId_,
        _uqoccOutboundCallerConfig =
          pOutboundCallerConfig_
      }

-- | The identifier of the Amazon Connect instance.
uqoccInstanceId :: Lens' UpdateQueueOutboundCallerConfig Text
uqoccInstanceId = lens _uqoccInstanceId (\s a -> s {_uqoccInstanceId = a})

-- | The identifier for the queue.
uqoccQueueId :: Lens' UpdateQueueOutboundCallerConfig Text
uqoccQueueId = lens _uqoccQueueId (\s a -> s {_uqoccQueueId = a})

-- | The outbound caller ID name, number, and outbound whisper flow.
uqoccOutboundCallerConfig :: Lens' UpdateQueueOutboundCallerConfig OutboundCallerConfig
uqoccOutboundCallerConfig = lens _uqoccOutboundCallerConfig (\s a -> s {_uqoccOutboundCallerConfig = a})

instance AWSRequest UpdateQueueOutboundCallerConfig where
  type
    Rs UpdateQueueOutboundCallerConfig =
      UpdateQueueOutboundCallerConfigResponse
  request = postJSON connect
  response =
    receiveNull
      UpdateQueueOutboundCallerConfigResponse'

instance Hashable UpdateQueueOutboundCallerConfig

instance NFData UpdateQueueOutboundCallerConfig

instance ToHeaders UpdateQueueOutboundCallerConfig where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateQueueOutboundCallerConfig where
  toJSON UpdateQueueOutboundCallerConfig' {..} =
    object
      ( catMaybes
          [ Just
              ( "OutboundCallerConfig"
                  .= _uqoccOutboundCallerConfig
              )
          ]
      )

instance ToPath UpdateQueueOutboundCallerConfig where
  toPath UpdateQueueOutboundCallerConfig' {..} =
    mconcat
      [ "/queues/",
        toBS _uqoccInstanceId,
        "/",
        toBS _uqoccQueueId,
        "/outbound-caller-config"
      ]

instance ToQuery UpdateQueueOutboundCallerConfig where
  toQuery = const mempty

-- | /See:/ 'updateQueueOutboundCallerConfigResponse' smart constructor.
data UpdateQueueOutboundCallerConfigResponse = UpdateQueueOutboundCallerConfigResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateQueueOutboundCallerConfigResponse' with the minimum fields required to make a request.
updateQueueOutboundCallerConfigResponse ::
  UpdateQueueOutboundCallerConfigResponse
updateQueueOutboundCallerConfigResponse =
  UpdateQueueOutboundCallerConfigResponse'

instance
  NFData
    UpdateQueueOutboundCallerConfigResponse
