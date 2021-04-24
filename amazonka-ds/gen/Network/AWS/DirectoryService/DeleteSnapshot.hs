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
-- Module      : Network.AWS.DirectoryService.DeleteSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a directory snapshot.
module Network.AWS.DirectoryService.DeleteSnapshot
  ( -- * Creating a Request
    deleteSnapshot,
    DeleteSnapshot,

    -- * Request Lenses
    dsSnapshotId,

    -- * Destructuring the Response
    deleteSnapshotResponse,
    DeleteSnapshotResponse,

    -- * Response Lenses
    dsrsrsSnapshotId,
    dsrsrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the inputs for the 'DeleteSnapshot' operation.
--
--
--
-- /See:/ 'deleteSnapshot' smart constructor.
newtype DeleteSnapshot = DeleteSnapshot'
  { _dsSnapshotId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsSnapshotId' - The identifier of the directory snapshot to be deleted.
deleteSnapshot ::
  -- | 'dsSnapshotId'
  Text ->
  DeleteSnapshot
deleteSnapshot pSnapshotId_ =
  DeleteSnapshot' {_dsSnapshotId = pSnapshotId_}

-- | The identifier of the directory snapshot to be deleted.
dsSnapshotId :: Lens' DeleteSnapshot Text
dsSnapshotId = lens _dsSnapshotId (\s a -> s {_dsSnapshotId = a})

instance AWSRequest DeleteSnapshot where
  type Rs DeleteSnapshot = DeleteSnapshotResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          DeleteSnapshotResponse'
            <$> (x .?> "SnapshotId") <*> (pure (fromEnum s))
      )

instance Hashable DeleteSnapshot

instance NFData DeleteSnapshot

instance ToHeaders DeleteSnapshot where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DeleteSnapshot" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteSnapshot where
  toJSON DeleteSnapshot' {..} =
    object
      (catMaybes [Just ("SnapshotId" .= _dsSnapshotId)])

instance ToPath DeleteSnapshot where
  toPath = const "/"

instance ToQuery DeleteSnapshot where
  toQuery = const mempty

-- | Contains the results of the 'DeleteSnapshot' operation.
--
--
--
-- /See:/ 'deleteSnapshotResponse' smart constructor.
data DeleteSnapshotResponse = DeleteSnapshotResponse'
  { _dsrsrsSnapshotId ::
      !(Maybe Text),
    _dsrsrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrsrsSnapshotId' - The identifier of the directory snapshot that was deleted.
--
-- * 'dsrsrsResponseStatus' - -- | The response status code.
deleteSnapshotResponse ::
  -- | 'dsrsrsResponseStatus'
  Int ->
  DeleteSnapshotResponse
deleteSnapshotResponse pResponseStatus_ =
  DeleteSnapshotResponse'
    { _dsrsrsSnapshotId =
        Nothing,
      _dsrsrsResponseStatus = pResponseStatus_
    }

-- | The identifier of the directory snapshot that was deleted.
dsrsrsSnapshotId :: Lens' DeleteSnapshotResponse (Maybe Text)
dsrsrsSnapshotId = lens _dsrsrsSnapshotId (\s a -> s {_dsrsrsSnapshotId = a})

-- | -- | The response status code.
dsrsrsResponseStatus :: Lens' DeleteSnapshotResponse Int
dsrsrsResponseStatus = lens _dsrsrsResponseStatus (\s a -> s {_dsrsrsResponseStatus = a})

instance NFData DeleteSnapshotResponse
