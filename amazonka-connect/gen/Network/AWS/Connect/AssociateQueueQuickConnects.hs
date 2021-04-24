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
-- Module      : Network.AWS.Connect.AssociateQueueQuickConnects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Associates a set of quick connects with a queue.
module Network.AWS.Connect.AssociateQueueQuickConnects
  ( -- * Creating a Request
    associateQueueQuickConnects,
    AssociateQueueQuickConnects,

    -- * Request Lenses
    aqqcInstanceId,
    aqqcQueueId,
    aqqcQuickConnectIds,

    -- * Destructuring the Response
    associateQueueQuickConnectsResponse,
    AssociateQueueQuickConnectsResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateQueueQuickConnects' smart constructor.
data AssociateQueueQuickConnects = AssociateQueueQuickConnects'
  { _aqqcInstanceId ::
      !Text,
    _aqqcQueueId ::
      !Text,
    _aqqcQuickConnectIds ::
      !(List1 Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AssociateQueueQuickConnects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aqqcInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'aqqcQueueId' - The identifier for the queue.
--
-- * 'aqqcQuickConnectIds' - The quick connects to associate with this queue.
associateQueueQuickConnects ::
  -- | 'aqqcInstanceId'
  Text ->
  -- | 'aqqcQueueId'
  Text ->
  -- | 'aqqcQuickConnectIds'
  NonEmpty Text ->
  AssociateQueueQuickConnects
associateQueueQuickConnects
  pInstanceId_
  pQueueId_
  pQuickConnectIds_ =
    AssociateQueueQuickConnects'
      { _aqqcInstanceId =
          pInstanceId_,
        _aqqcQueueId = pQueueId_,
        _aqqcQuickConnectIds =
          _List1 # pQuickConnectIds_
      }

-- | The identifier of the Amazon Connect instance.
aqqcInstanceId :: Lens' AssociateQueueQuickConnects Text
aqqcInstanceId = lens _aqqcInstanceId (\s a -> s {_aqqcInstanceId = a})

-- | The identifier for the queue.
aqqcQueueId :: Lens' AssociateQueueQuickConnects Text
aqqcQueueId = lens _aqqcQueueId (\s a -> s {_aqqcQueueId = a})

-- | The quick connects to associate with this queue.
aqqcQuickConnectIds :: Lens' AssociateQueueQuickConnects (NonEmpty Text)
aqqcQuickConnectIds = lens _aqqcQuickConnectIds (\s a -> s {_aqqcQuickConnectIds = a}) . _List1

instance AWSRequest AssociateQueueQuickConnects where
  type
    Rs AssociateQueueQuickConnects =
      AssociateQueueQuickConnectsResponse
  request = postJSON connect
  response =
    receiveNull AssociateQueueQuickConnectsResponse'

instance Hashable AssociateQueueQuickConnects

instance NFData AssociateQueueQuickConnects

instance ToHeaders AssociateQueueQuickConnects where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AssociateQueueQuickConnects where
  toJSON AssociateQueueQuickConnects' {..} =
    object
      ( catMaybes
          [Just ("QuickConnectIds" .= _aqqcQuickConnectIds)]
      )

instance ToPath AssociateQueueQuickConnects where
  toPath AssociateQueueQuickConnects' {..} =
    mconcat
      [ "/queues/",
        toBS _aqqcInstanceId,
        "/",
        toBS _aqqcQueueId,
        "/associate-quick-connects"
      ]

instance ToQuery AssociateQueueQuickConnects where
  toQuery = const mempty

-- | /See:/ 'associateQueueQuickConnectsResponse' smart constructor.
data AssociateQueueQuickConnectsResponse = AssociateQueueQuickConnectsResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AssociateQueueQuickConnectsResponse' with the minimum fields required to make a request.
associateQueueQuickConnectsResponse ::
  AssociateQueueQuickConnectsResponse
associateQueueQuickConnectsResponse =
  AssociateQueueQuickConnectsResponse'

instance NFData AssociateQueueQuickConnectsResponse
