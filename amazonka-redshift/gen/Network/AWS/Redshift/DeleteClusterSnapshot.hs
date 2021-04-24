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
-- Module      : Network.AWS.Redshift.DeleteClusterSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified manual snapshot. The snapshot must be in the @available@ state, with no other users authorized to access the snapshot.
--
--
-- Unlike automated snapshots, manual snapshots are retained even after you delete your cluster. Amazon Redshift does not delete your manual snapshots. You must delete manual snapshot explicitly to avoid getting charged. If other accounts are authorized to access the snapshot, you must revoke all of the authorizations before you can delete the snapshot.
module Network.AWS.Redshift.DeleteClusterSnapshot
  ( -- * Creating a Request
    deleteClusterSnapshot,
    DeleteClusterSnapshot,

    -- * Request Lenses
    dSnapshotClusterIdentifier,
    dSnapshotIdentifier,

    -- * Destructuring the Response
    deleteClusterSnapshotResponse,
    DeleteClusterSnapshotResponse,

    -- * Response Lenses
    drsSnapshot,
    drsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'deleteClusterSnapshot' smart constructor.
data DeleteClusterSnapshot = DeleteClusterSnapshot'
  { _dSnapshotClusterIdentifier ::
      !(Maybe Text),
    _dSnapshotIdentifier ::
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

-- | Creates a value of 'DeleteClusterSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSnapshotClusterIdentifier' - The unique identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name. Constraints: Must be the name of valid cluster.
--
-- * 'dSnapshotIdentifier' - The unique identifier of the manual snapshot to be deleted. Constraints: Must be the name of an existing snapshot that is in the @available@ , @failed@ , or @cancelled@ state.
deleteClusterSnapshot ::
  -- | 'dSnapshotIdentifier'
  Text ->
  DeleteClusterSnapshot
deleteClusterSnapshot pSnapshotIdentifier_ =
  DeleteClusterSnapshot'
    { _dSnapshotClusterIdentifier =
        Nothing,
      _dSnapshotIdentifier = pSnapshotIdentifier_
    }

-- | The unique identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name. Constraints: Must be the name of valid cluster.
dSnapshotClusterIdentifier :: Lens' DeleteClusterSnapshot (Maybe Text)
dSnapshotClusterIdentifier = lens _dSnapshotClusterIdentifier (\s a -> s {_dSnapshotClusterIdentifier = a})

-- | The unique identifier of the manual snapshot to be deleted. Constraints: Must be the name of an existing snapshot that is in the @available@ , @failed@ , or @cancelled@ state.
dSnapshotIdentifier :: Lens' DeleteClusterSnapshot Text
dSnapshotIdentifier = lens _dSnapshotIdentifier (\s a -> s {_dSnapshotIdentifier = a})

instance AWSRequest DeleteClusterSnapshot where
  type
    Rs DeleteClusterSnapshot =
      DeleteClusterSnapshotResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DeleteClusterSnapshotResult"
      ( \s h x ->
          DeleteClusterSnapshotResponse'
            <$> (x .@? "Snapshot") <*> (pure (fromEnum s))
      )

instance Hashable DeleteClusterSnapshot

instance NFData DeleteClusterSnapshot

instance ToHeaders DeleteClusterSnapshot where
  toHeaders = const mempty

instance ToPath DeleteClusterSnapshot where
  toPath = const "/"

instance ToQuery DeleteClusterSnapshot where
  toQuery DeleteClusterSnapshot' {..} =
    mconcat
      [ "Action" =: ("DeleteClusterSnapshot" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "SnapshotClusterIdentifier"
          =: _dSnapshotClusterIdentifier,
        "SnapshotIdentifier" =: _dSnapshotIdentifier
      ]

-- | /See:/ 'deleteClusterSnapshotResponse' smart constructor.
data DeleteClusterSnapshotResponse = DeleteClusterSnapshotResponse'
  { _drsSnapshot ::
      !( Maybe
           Snapshot
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DeleteClusterSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsSnapshot' - Undocumented member.
--
-- * 'drsResponseStatus' - -- | The response status code.
deleteClusterSnapshotResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DeleteClusterSnapshotResponse
deleteClusterSnapshotResponse pResponseStatus_ =
  DeleteClusterSnapshotResponse'
    { _drsSnapshot =
        Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
drsSnapshot :: Lens' DeleteClusterSnapshotResponse (Maybe Snapshot)
drsSnapshot = lens _drsSnapshot (\s a -> s {_drsSnapshot = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteClusterSnapshotResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DeleteClusterSnapshotResponse
