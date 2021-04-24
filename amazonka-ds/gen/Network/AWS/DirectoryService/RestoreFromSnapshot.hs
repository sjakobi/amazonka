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
-- Module      : Network.AWS.DirectoryService.RestoreFromSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a directory using an existing directory snapshot.
--
--
-- When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten.
--
-- This action returns as soon as the restore operation is initiated. You can monitor the progress of the restore operation by calling the 'DescribeDirectories' operation with the directory identifier. When the __DirectoryDescription.Stage__ value changes to @Active@ , the restore operation is complete.
module Network.AWS.DirectoryService.RestoreFromSnapshot
  ( -- * Creating a Request
    restoreFromSnapshot,
    RestoreFromSnapshot,

    -- * Request Lenses
    rfsSnapshotId,

    -- * Destructuring the Response
    restoreFromSnapshotResponse,
    RestoreFromSnapshotResponse,

    -- * Response Lenses
    rfsrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | An object representing the inputs for the 'RestoreFromSnapshot' operation.
--
--
--
-- /See:/ 'restoreFromSnapshot' smart constructor.
newtype RestoreFromSnapshot = RestoreFromSnapshot'
  { _rfsSnapshotId ::
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

-- | Creates a value of 'RestoreFromSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfsSnapshotId' - The identifier of the snapshot to restore from.
restoreFromSnapshot ::
  -- | 'rfsSnapshotId'
  Text ->
  RestoreFromSnapshot
restoreFromSnapshot pSnapshotId_ =
  RestoreFromSnapshot' {_rfsSnapshotId = pSnapshotId_}

-- | The identifier of the snapshot to restore from.
rfsSnapshotId :: Lens' RestoreFromSnapshot Text
rfsSnapshotId = lens _rfsSnapshotId (\s a -> s {_rfsSnapshotId = a})

instance AWSRequest RestoreFromSnapshot where
  type
    Rs RestoreFromSnapshot =
      RestoreFromSnapshotResponse
  request = postJSON directoryService
  response =
    receiveEmpty
      ( \s h x ->
          RestoreFromSnapshotResponse' <$> (pure (fromEnum s))
      )

instance Hashable RestoreFromSnapshot

instance NFData RestoreFromSnapshot

instance ToHeaders RestoreFromSnapshot where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.RestoreFromSnapshot" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RestoreFromSnapshot where
  toJSON RestoreFromSnapshot' {..} =
    object
      (catMaybes [Just ("SnapshotId" .= _rfsSnapshotId)])

instance ToPath RestoreFromSnapshot where
  toPath = const "/"

instance ToQuery RestoreFromSnapshot where
  toQuery = const mempty

-- | Contains the results of the 'RestoreFromSnapshot' operation.
--
--
--
-- /See:/ 'restoreFromSnapshotResponse' smart constructor.
newtype RestoreFromSnapshotResponse = RestoreFromSnapshotResponse'
  { _rfsrrsResponseStatus ::
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

-- | Creates a value of 'RestoreFromSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfsrrsResponseStatus' - -- | The response status code.
restoreFromSnapshotResponse ::
  -- | 'rfsrrsResponseStatus'
  Int ->
  RestoreFromSnapshotResponse
restoreFromSnapshotResponse pResponseStatus_ =
  RestoreFromSnapshotResponse'
    { _rfsrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
rfsrrsResponseStatus :: Lens' RestoreFromSnapshotResponse Int
rfsrrsResponseStatus = lens _rfsrrsResponseStatus (\s a -> s {_rfsrrsResponseStatus = a})

instance NFData RestoreFromSnapshotResponse
