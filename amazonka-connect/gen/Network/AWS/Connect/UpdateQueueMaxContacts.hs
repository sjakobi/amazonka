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
-- Module      : Network.AWS.Connect.UpdateQueueMaxContacts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Updates the maximum number of contacts allowed in a queue before it is considered full.
module Network.AWS.Connect.UpdateQueueMaxContacts
  ( -- * Creating a Request
    updateQueueMaxContacts,
    UpdateQueueMaxContacts,

    -- * Request Lenses
    uqmcInstanceId,
    uqmcQueueId,
    uqmcMaxContacts,

    -- * Destructuring the Response
    updateQueueMaxContactsResponse,
    UpdateQueueMaxContactsResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateQueueMaxContacts' smart constructor.
data UpdateQueueMaxContacts = UpdateQueueMaxContacts'
  { _uqmcInstanceId ::
      !Text,
    _uqmcQueueId :: !Text,
    _uqmcMaxContacts :: !Nat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateQueueMaxContacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uqmcInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'uqmcQueueId' - The identifier for the queue.
--
-- * 'uqmcMaxContacts' - The maximum number of contacts that can be in the queue before it is considered full.
updateQueueMaxContacts ::
  -- | 'uqmcInstanceId'
  Text ->
  -- | 'uqmcQueueId'
  Text ->
  -- | 'uqmcMaxContacts'
  Natural ->
  UpdateQueueMaxContacts
updateQueueMaxContacts
  pInstanceId_
  pQueueId_
  pMaxContacts_ =
    UpdateQueueMaxContacts'
      { _uqmcInstanceId =
          pInstanceId_,
        _uqmcQueueId = pQueueId_,
        _uqmcMaxContacts = _Nat # pMaxContacts_
      }

-- | The identifier of the Amazon Connect instance.
uqmcInstanceId :: Lens' UpdateQueueMaxContacts Text
uqmcInstanceId = lens _uqmcInstanceId (\s a -> s {_uqmcInstanceId = a})

-- | The identifier for the queue.
uqmcQueueId :: Lens' UpdateQueueMaxContacts Text
uqmcQueueId = lens _uqmcQueueId (\s a -> s {_uqmcQueueId = a})

-- | The maximum number of contacts that can be in the queue before it is considered full.
uqmcMaxContacts :: Lens' UpdateQueueMaxContacts Natural
uqmcMaxContacts = lens _uqmcMaxContacts (\s a -> s {_uqmcMaxContacts = a}) . _Nat

instance AWSRequest UpdateQueueMaxContacts where
  type
    Rs UpdateQueueMaxContacts =
      UpdateQueueMaxContactsResponse
  request = postJSON connect
  response =
    receiveNull UpdateQueueMaxContactsResponse'

instance Hashable UpdateQueueMaxContacts

instance NFData UpdateQueueMaxContacts

instance ToHeaders UpdateQueueMaxContacts where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateQueueMaxContacts where
  toJSON UpdateQueueMaxContacts' {..} =
    object
      ( catMaybes
          [Just ("MaxContacts" .= _uqmcMaxContacts)]
      )

instance ToPath UpdateQueueMaxContacts where
  toPath UpdateQueueMaxContacts' {..} =
    mconcat
      [ "/queues/",
        toBS _uqmcInstanceId,
        "/",
        toBS _uqmcQueueId,
        "/max-contacts"
      ]

instance ToQuery UpdateQueueMaxContacts where
  toQuery = const mempty

-- | /See:/ 'updateQueueMaxContactsResponse' smart constructor.
data UpdateQueueMaxContactsResponse = UpdateQueueMaxContactsResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateQueueMaxContactsResponse' with the minimum fields required to make a request.
updateQueueMaxContactsResponse ::
  UpdateQueueMaxContactsResponse
updateQueueMaxContactsResponse =
  UpdateQueueMaxContactsResponse'

instance NFData UpdateQueueMaxContactsResponse
