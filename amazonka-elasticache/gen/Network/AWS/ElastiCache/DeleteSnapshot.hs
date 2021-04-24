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
-- Module      : Network.AWS.ElastiCache.DeleteSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing snapshot. When you receive a successful response from this operation, ElastiCache immediately begins deleting the snapshot; you cannot cancel or revert this operation.
module Network.AWS.ElastiCache.DeleteSnapshot
  ( -- * Creating a Request
    deleteSnapshot,
    DeleteSnapshot,

    -- * Request Lenses
    dsSnapshotName,

    -- * Destructuring the Response
    deleteSnapshotResponse,
    DeleteSnapshotResponse,

    -- * Response Lenses
    delrsSnapshot,
    delrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DeleteSnapshot@ operation.
--
--
--
-- /See:/ 'deleteSnapshot' smart constructor.
newtype DeleteSnapshot = DeleteSnapshot'
  { _dsSnapshotName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsSnapshotName' - The name of the snapshot to be deleted.
deleteSnapshot ::
  -- | 'dsSnapshotName'
  Text ->
  DeleteSnapshot
deleteSnapshot pSnapshotName_ =
  DeleteSnapshot' {_dsSnapshotName = pSnapshotName_}

-- | The name of the snapshot to be deleted.
dsSnapshotName :: Lens' DeleteSnapshot Text
dsSnapshotName = lens _dsSnapshotName (\s a -> s {_dsSnapshotName = a})

instance AWSRequest DeleteSnapshot where
  type Rs DeleteSnapshot = DeleteSnapshotResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DeleteSnapshotResult"
      ( \s h x ->
          DeleteSnapshotResponse'
            <$> (x .@? "Snapshot") <*> (pure (fromEnum s))
      )

instance Hashable DeleteSnapshot

instance NFData DeleteSnapshot

instance ToHeaders DeleteSnapshot where
  toHeaders = const mempty

instance ToPath DeleteSnapshot where
  toPath = const "/"

instance ToQuery DeleteSnapshot where
  toQuery DeleteSnapshot' {..} =
    mconcat
      [ "Action" =: ("DeleteSnapshot" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "SnapshotName" =: _dsSnapshotName
      ]

-- | /See:/ 'deleteSnapshotResponse' smart constructor.
data DeleteSnapshotResponse = DeleteSnapshotResponse'
  { _delrsSnapshot ::
      !(Maybe Snapshot),
    _delrsResponseStatus ::
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
-- * 'delrsSnapshot' - Undocumented member.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteSnapshotResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteSnapshotResponse
deleteSnapshotResponse pResponseStatus_ =
  DeleteSnapshotResponse'
    { _delrsSnapshot = Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
delrsSnapshot :: Lens' DeleteSnapshotResponse (Maybe Snapshot)
delrsSnapshot = lens _delrsSnapshot (\s a -> s {_delrsSnapshot = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteSnapshotResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteSnapshotResponse
