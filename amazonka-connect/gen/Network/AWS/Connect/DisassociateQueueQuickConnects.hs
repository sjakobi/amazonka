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
-- Module      : Network.AWS.Connect.DisassociateQueueQuickConnects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Disassociates a set of quick connects from a queue.
module Network.AWS.Connect.DisassociateQueueQuickConnects
  ( -- * Creating a Request
    disassociateQueueQuickConnects,
    DisassociateQueueQuickConnects,

    -- * Request Lenses
    dqqcInstanceId,
    dqqcQueueId,
    dqqcQuickConnectIds,

    -- * Destructuring the Response
    disassociateQueueQuickConnectsResponse,
    DisassociateQueueQuickConnectsResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disassociateQueueQuickConnects' smart constructor.
data DisassociateQueueQuickConnects = DisassociateQueueQuickConnects'
  { _dqqcInstanceId ::
      !Text,
    _dqqcQueueId ::
      !Text,
    _dqqcQuickConnectIds ::
      !( List1
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisassociateQueueQuickConnects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqqcInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'dqqcQueueId' - The identifier for the queue.
--
-- * 'dqqcQuickConnectIds' - The quick connects to disassociate from the queue.
disassociateQueueQuickConnects ::
  -- | 'dqqcInstanceId'
  Text ->
  -- | 'dqqcQueueId'
  Text ->
  -- | 'dqqcQuickConnectIds'
  NonEmpty Text ->
  DisassociateQueueQuickConnects
disassociateQueueQuickConnects
  pInstanceId_
  pQueueId_
  pQuickConnectIds_ =
    DisassociateQueueQuickConnects'
      { _dqqcInstanceId =
          pInstanceId_,
        _dqqcQueueId = pQueueId_,
        _dqqcQuickConnectIds =
          _List1 # pQuickConnectIds_
      }

-- | The identifier of the Amazon Connect instance.
dqqcInstanceId :: Lens' DisassociateQueueQuickConnects Text
dqqcInstanceId = lens _dqqcInstanceId (\s a -> s {_dqqcInstanceId = a})

-- | The identifier for the queue.
dqqcQueueId :: Lens' DisassociateQueueQuickConnects Text
dqqcQueueId = lens _dqqcQueueId (\s a -> s {_dqqcQueueId = a})

-- | The quick connects to disassociate from the queue.
dqqcQuickConnectIds :: Lens' DisassociateQueueQuickConnects (NonEmpty Text)
dqqcQuickConnectIds = lens _dqqcQuickConnectIds (\s a -> s {_dqqcQuickConnectIds = a}) . _List1

instance AWSRequest DisassociateQueueQuickConnects where
  type
    Rs DisassociateQueueQuickConnects =
      DisassociateQueueQuickConnectsResponse
  request = postJSON connect
  response =
    receiveNull DisassociateQueueQuickConnectsResponse'

instance Hashable DisassociateQueueQuickConnects

instance NFData DisassociateQueueQuickConnects

instance ToHeaders DisassociateQueueQuickConnects where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisassociateQueueQuickConnects where
  toJSON DisassociateQueueQuickConnects' {..} =
    object
      ( catMaybes
          [Just ("QuickConnectIds" .= _dqqcQuickConnectIds)]
      )

instance ToPath DisassociateQueueQuickConnects where
  toPath DisassociateQueueQuickConnects' {..} =
    mconcat
      [ "/queues/",
        toBS _dqqcInstanceId,
        "/",
        toBS _dqqcQueueId,
        "/disassociate-quick-connects"
      ]

instance ToQuery DisassociateQueueQuickConnects where
  toQuery = const mempty

-- | /See:/ 'disassociateQueueQuickConnectsResponse' smart constructor.
data DisassociateQueueQuickConnectsResponse = DisassociateQueueQuickConnectsResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisassociateQueueQuickConnectsResponse' with the minimum fields required to make a request.
disassociateQueueQuickConnectsResponse ::
  DisassociateQueueQuickConnectsResponse
disassociateQueueQuickConnectsResponse =
  DisassociateQueueQuickConnectsResponse'

instance
  NFData
    DisassociateQueueQuickConnectsResponse
