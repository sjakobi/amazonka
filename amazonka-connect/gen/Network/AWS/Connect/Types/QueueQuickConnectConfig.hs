{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.QueueQuickConnectConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.QueueQuickConnectConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a queue for a quick connect. The contact flow must be of type Transfer to Queue.
--
--
--
-- /See:/ 'queueQuickConnectConfig' smart constructor.
data QueueQuickConnectConfig = QueueQuickConnectConfig'
  { _qqccQueueId ::
      !Text,
    _qqccContactFlowId ::
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

-- | Creates a value of 'QueueQuickConnectConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qqccQueueId' - The identifier for the queue.
--
-- * 'qqccContactFlowId' - The identifier of the contact flow.
queueQuickConnectConfig ::
  -- | 'qqccQueueId'
  Text ->
  -- | 'qqccContactFlowId'
  Text ->
  QueueQuickConnectConfig
queueQuickConnectConfig pQueueId_ pContactFlowId_ =
  QueueQuickConnectConfig'
    { _qqccQueueId = pQueueId_,
      _qqccContactFlowId = pContactFlowId_
    }

-- | The identifier for the queue.
qqccQueueId :: Lens' QueueQuickConnectConfig Text
qqccQueueId = lens _qqccQueueId (\s a -> s {_qqccQueueId = a})

-- | The identifier of the contact flow.
qqccContactFlowId :: Lens' QueueQuickConnectConfig Text
qqccContactFlowId = lens _qqccContactFlowId (\s a -> s {_qqccContactFlowId = a})

instance FromJSON QueueQuickConnectConfig where
  parseJSON =
    withObject
      "QueueQuickConnectConfig"
      ( \x ->
          QueueQuickConnectConfig'
            <$> (x .: "QueueId") <*> (x .: "ContactFlowId")
      )

instance Hashable QueueQuickConnectConfig

instance NFData QueueQuickConnectConfig

instance ToJSON QueueQuickConnectConfig where
  toJSON QueueQuickConnectConfig' {..} =
    object
      ( catMaybes
          [ Just ("QueueId" .= _qqccQueueId),
            Just ("ContactFlowId" .= _qqccContactFlowId)
          ]
      )
