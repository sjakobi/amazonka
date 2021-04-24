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
-- Module      : Network.AWS.Connect.UpdateQueueName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Updates the name and description of a queue. At least @Name@ or @Description@ must be provided.
module Network.AWS.Connect.UpdateQueueName
  ( -- * Creating a Request
    updateQueueName,
    UpdateQueueName,

    -- * Request Lenses
    uqnName,
    uqnDescription,
    uqnInstanceId,
    uqnQueueId,

    -- * Destructuring the Response
    updateQueueNameResponse,
    UpdateQueueNameResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateQueueName' smart constructor.
data UpdateQueueName = UpdateQueueName'
  { _uqnName ::
      !(Maybe Text),
    _uqnDescription :: !(Maybe Text),
    _uqnInstanceId :: !Text,
    _uqnQueueId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateQueueName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uqnName' - The name of the queue.
--
-- * 'uqnDescription' - The description of the queue.
--
-- * 'uqnInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'uqnQueueId' - The identifier for the queue.
updateQueueName ::
  -- | 'uqnInstanceId'
  Text ->
  -- | 'uqnQueueId'
  Text ->
  UpdateQueueName
updateQueueName pInstanceId_ pQueueId_ =
  UpdateQueueName'
    { _uqnName = Nothing,
      _uqnDescription = Nothing,
      _uqnInstanceId = pInstanceId_,
      _uqnQueueId = pQueueId_
    }

-- | The name of the queue.
uqnName :: Lens' UpdateQueueName (Maybe Text)
uqnName = lens _uqnName (\s a -> s {_uqnName = a})

-- | The description of the queue.
uqnDescription :: Lens' UpdateQueueName (Maybe Text)
uqnDescription = lens _uqnDescription (\s a -> s {_uqnDescription = a})

-- | The identifier of the Amazon Connect instance.
uqnInstanceId :: Lens' UpdateQueueName Text
uqnInstanceId = lens _uqnInstanceId (\s a -> s {_uqnInstanceId = a})

-- | The identifier for the queue.
uqnQueueId :: Lens' UpdateQueueName Text
uqnQueueId = lens _uqnQueueId (\s a -> s {_uqnQueueId = a})

instance AWSRequest UpdateQueueName where
  type Rs UpdateQueueName = UpdateQueueNameResponse
  request = postJSON connect
  response = receiveNull UpdateQueueNameResponse'

instance Hashable UpdateQueueName

instance NFData UpdateQueueName

instance ToHeaders UpdateQueueName where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateQueueName where
  toJSON UpdateQueueName' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _uqnName,
            ("Description" .=) <$> _uqnDescription
          ]
      )

instance ToPath UpdateQueueName where
  toPath UpdateQueueName' {..} =
    mconcat
      [ "/queues/",
        toBS _uqnInstanceId,
        "/",
        toBS _uqnQueueId,
        "/name"
      ]

instance ToQuery UpdateQueueName where
  toQuery = const mempty

-- | /See:/ 'updateQueueNameResponse' smart constructor.
data UpdateQueueNameResponse = UpdateQueueNameResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateQueueNameResponse' with the minimum fields required to make a request.
updateQueueNameResponse ::
  UpdateQueueNameResponse
updateQueueNameResponse = UpdateQueueNameResponse'

instance NFData UpdateQueueNameResponse
