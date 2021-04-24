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
-- Module      : Network.AWS.CloudWatchEvents.DeleteAPIdestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified API destination.
module Network.AWS.CloudWatchEvents.DeleteAPIdestination
  ( -- * Creating a Request
    deleteAPIdestination,
    DeleteAPIdestination,

    -- * Request Lenses
    dapiName,

    -- * Destructuring the Response
    deleteAPIdestinationResponse,
    DeleteAPIdestinationResponse,

    -- * Response Lenses
    dapirrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteAPIdestination' smart constructor.
newtype DeleteAPIdestination = DeleteAPIdestination'
  { _dapiName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteAPIdestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dapiName' - The name of the destination to delete.
deleteAPIdestination ::
  -- | 'dapiName'
  Text ->
  DeleteAPIdestination
deleteAPIdestination pName_ =
  DeleteAPIdestination' {_dapiName = pName_}

-- | The name of the destination to delete.
dapiName :: Lens' DeleteAPIdestination Text
dapiName = lens _dapiName (\s a -> s {_dapiName = a})

instance AWSRequest DeleteAPIdestination where
  type
    Rs DeleteAPIdestination =
      DeleteAPIdestinationResponse
  request = postJSON cloudWatchEvents
  response =
    receiveEmpty
      ( \s h x ->
          DeleteAPIdestinationResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteAPIdestination

instance NFData DeleteAPIdestination

instance ToHeaders DeleteAPIdestination where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.DeleteApiDestination" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteAPIdestination where
  toJSON DeleteAPIdestination' {..} =
    object (catMaybes [Just ("Name" .= _dapiName)])

instance ToPath DeleteAPIdestination where
  toPath = const "/"

instance ToQuery DeleteAPIdestination where
  toQuery = const mempty

-- | /See:/ 'deleteAPIdestinationResponse' smart constructor.
newtype DeleteAPIdestinationResponse = DeleteAPIdestinationResponse'
  { _dapirrsResponseStatus ::
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

-- | Creates a value of 'DeleteAPIdestinationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dapirrsResponseStatus' - -- | The response status code.
deleteAPIdestinationResponse ::
  -- | 'dapirrsResponseStatus'
  Int ->
  DeleteAPIdestinationResponse
deleteAPIdestinationResponse pResponseStatus_ =
  DeleteAPIdestinationResponse'
    { _dapirrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dapirrsResponseStatus :: Lens' DeleteAPIdestinationResponse Int
dapirrsResponseStatus = lens _dapirrsResponseStatus (\s a -> s {_dapirrsResponseStatus = a})

instance NFData DeleteAPIdestinationResponse
