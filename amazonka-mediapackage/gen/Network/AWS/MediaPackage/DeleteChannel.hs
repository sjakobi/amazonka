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
-- Module      : Network.AWS.MediaPackage.DeleteChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing Channel.
module Network.AWS.MediaPackage.DeleteChannel
  ( -- * Creating a Request
    deleteChannel,
    DeleteChannel,

    -- * Request Lenses
    delId,

    -- * Destructuring the Response
    deleteChannelResponse,
    DeleteChannelResponse,

    -- * Response Lenses
    drsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteChannel' smart constructor.
newtype DeleteChannel = DeleteChannel'
  { _delId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delId' - The ID of the Channel to delete.
deleteChannel ::
  -- | 'delId'
  Text ->
  DeleteChannel
deleteChannel pId_ = DeleteChannel' {_delId = pId_}

-- | The ID of the Channel to delete.
delId :: Lens' DeleteChannel Text
delId = lens _delId (\s a -> s {_delId = a})

instance AWSRequest DeleteChannel where
  type Rs DeleteChannel = DeleteChannelResponse
  request = delete mediaPackage
  response =
    receiveEmpty
      ( \s h x ->
          DeleteChannelResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteChannel

instance NFData DeleteChannel

instance ToHeaders DeleteChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteChannel where
  toPath DeleteChannel' {..} =
    mconcat ["/channels/", toBS _delId]

instance ToQuery DeleteChannel where
  toQuery = const mempty

-- | /See:/ 'deleteChannelResponse' smart constructor.
newtype DeleteChannelResponse = DeleteChannelResponse'
  { _drsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsResponseStatus' - -- | The response status code.
deleteChannelResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DeleteChannelResponse
deleteChannelResponse pResponseStatus_ =
  DeleteChannelResponse'
    { _drsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteChannelResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DeleteChannelResponse
