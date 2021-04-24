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
-- Module      : Network.AWS.IoTAnalytics.DeleteChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified channel.
module Network.AWS.IoTAnalytics.DeleteChannel
  ( -- * Creating a Request
    deleteChannel,
    DeleteChannel,

    -- * Request Lenses
    dChannelName,

    -- * Destructuring the Response
    deleteChannelResponse,
    DeleteChannelResponse,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteChannel' smart constructor.
newtype DeleteChannel = DeleteChannel'
  { _dChannelName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dChannelName' - The name of the channel to delete.
deleteChannel ::
  -- | 'dChannelName'
  Text ->
  DeleteChannel
deleteChannel pChannelName_ =
  DeleteChannel' {_dChannelName = pChannelName_}

-- | The name of the channel to delete.
dChannelName :: Lens' DeleteChannel Text
dChannelName = lens _dChannelName (\s a -> s {_dChannelName = a})

instance AWSRequest DeleteChannel where
  type Rs DeleteChannel = DeleteChannelResponse
  request = delete ioTAnalytics
  response = receiveNull DeleteChannelResponse'

instance Hashable DeleteChannel

instance NFData DeleteChannel

instance ToHeaders DeleteChannel where
  toHeaders = const mempty

instance ToPath DeleteChannel where
  toPath DeleteChannel' {..} =
    mconcat ["/channels/", toBS _dChannelName]

instance ToQuery DeleteChannel where
  toQuery = const mempty

-- | /See:/ 'deleteChannelResponse' smart constructor.
data DeleteChannelResponse = DeleteChannelResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteChannelResponse' with the minimum fields required to make a request.
deleteChannelResponse ::
  DeleteChannelResponse
deleteChannelResponse = DeleteChannelResponse'

instance NFData DeleteChannelResponse
