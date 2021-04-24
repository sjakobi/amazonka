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
-- Module      : Network.AWS.Connect.DeleteQuickConnect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Deletes a quick connect.
module Network.AWS.Connect.DeleteQuickConnect
  ( -- * Creating a Request
    deleteQuickConnect,
    DeleteQuickConnect,

    -- * Request Lenses
    delInstanceId,
    delQuickConnectId,

    -- * Destructuring the Response
    deleteQuickConnectResponse,
    DeleteQuickConnectResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteQuickConnect' smart constructor.
data DeleteQuickConnect = DeleteQuickConnect'
  { _delInstanceId ::
      !Text,
    _delQuickConnectId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteQuickConnect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'delQuickConnectId' - The identifier for the quick connect.
deleteQuickConnect ::
  -- | 'delInstanceId'
  Text ->
  -- | 'delQuickConnectId'
  Text ->
  DeleteQuickConnect
deleteQuickConnect pInstanceId_ pQuickConnectId_ =
  DeleteQuickConnect'
    { _delInstanceId = pInstanceId_,
      _delQuickConnectId = pQuickConnectId_
    }

-- | The identifier of the Amazon Connect instance.
delInstanceId :: Lens' DeleteQuickConnect Text
delInstanceId = lens _delInstanceId (\s a -> s {_delInstanceId = a})

-- | The identifier for the quick connect.
delQuickConnectId :: Lens' DeleteQuickConnect Text
delQuickConnectId = lens _delQuickConnectId (\s a -> s {_delQuickConnectId = a})

instance AWSRequest DeleteQuickConnect where
  type
    Rs DeleteQuickConnect =
      DeleteQuickConnectResponse
  request = delete connect
  response = receiveNull DeleteQuickConnectResponse'

instance Hashable DeleteQuickConnect

instance NFData DeleteQuickConnect

instance ToHeaders DeleteQuickConnect where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteQuickConnect where
  toPath DeleteQuickConnect' {..} =
    mconcat
      [ "/quick-connects/",
        toBS _delInstanceId,
        "/",
        toBS _delQuickConnectId
      ]

instance ToQuery DeleteQuickConnect where
  toQuery = const mempty

-- | /See:/ 'deleteQuickConnectResponse' smart constructor.
data DeleteQuickConnectResponse = DeleteQuickConnectResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteQuickConnectResponse' with the minimum fields required to make a request.
deleteQuickConnectResponse ::
  DeleteQuickConnectResponse
deleteQuickConnectResponse =
  DeleteQuickConnectResponse'

instance NFData DeleteQuickConnectResponse
