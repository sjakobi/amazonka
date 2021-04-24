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
-- Module      : Network.AWS.ElastiCache.DeleteReplicationGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing replication group. By default, this operation deletes the entire replication group, including the primary/primaries and all of the read replicas. If the replication group has only one primary, you can optionally delete only the read replicas, while retaining the primary by setting @RetainPrimaryCluster=true@ .
--
--
-- When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources; you cannot cancel or revert this operation.
module Network.AWS.ElastiCache.DeleteReplicationGroup
  ( -- * Creating a Request
    deleteReplicationGroup,
    DeleteReplicationGroup,

    -- * Request Lenses
    drgRetainPrimaryCluster,
    drgFinalSnapshotIdentifier,
    drgReplicationGroupId,

    -- * Destructuring the Response
    deleteReplicationGroupResponse,
    DeleteReplicationGroupResponse,

    -- * Response Lenses
    drgrrsReplicationGroup,
    drgrrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DeleteReplicationGroup@ operation.
--
--
--
-- /See:/ 'deleteReplicationGroup' smart constructor.
data DeleteReplicationGroup = DeleteReplicationGroup'
  { _drgRetainPrimaryCluster ::
      !(Maybe Bool),
    _drgFinalSnapshotIdentifier ::
      !(Maybe Text),
    _drgReplicationGroupId ::
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

-- | Creates a value of 'DeleteReplicationGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drgRetainPrimaryCluster' - If set to @true@ , all of the read replicas are deleted, but the primary node is retained.
--
-- * 'drgFinalSnapshotIdentifier' - The name of a final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster, rather than one of the replicas; this is to ensure that it captures the freshest data. After the final snapshot is taken, the replication group is immediately deleted.
--
-- * 'drgReplicationGroupId' - The identifier for the cluster to be deleted. This parameter is not case sensitive.
deleteReplicationGroup ::
  -- | 'drgReplicationGroupId'
  Text ->
  DeleteReplicationGroup
deleteReplicationGroup pReplicationGroupId_ =
  DeleteReplicationGroup'
    { _drgRetainPrimaryCluster =
        Nothing,
      _drgFinalSnapshotIdentifier = Nothing,
      _drgReplicationGroupId = pReplicationGroupId_
    }

-- | If set to @true@ , all of the read replicas are deleted, but the primary node is retained.
drgRetainPrimaryCluster :: Lens' DeleteReplicationGroup (Maybe Bool)
drgRetainPrimaryCluster = lens _drgRetainPrimaryCluster (\s a -> s {_drgRetainPrimaryCluster = a})

-- | The name of a final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster, rather than one of the replicas; this is to ensure that it captures the freshest data. After the final snapshot is taken, the replication group is immediately deleted.
drgFinalSnapshotIdentifier :: Lens' DeleteReplicationGroup (Maybe Text)
drgFinalSnapshotIdentifier = lens _drgFinalSnapshotIdentifier (\s a -> s {_drgFinalSnapshotIdentifier = a})

-- | The identifier for the cluster to be deleted. This parameter is not case sensitive.
drgReplicationGroupId :: Lens' DeleteReplicationGroup Text
drgReplicationGroupId = lens _drgReplicationGroupId (\s a -> s {_drgReplicationGroupId = a})

instance AWSRequest DeleteReplicationGroup where
  type
    Rs DeleteReplicationGroup =
      DeleteReplicationGroupResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DeleteReplicationGroupResult"
      ( \s h x ->
          DeleteReplicationGroupResponse'
            <$> (x .@? "ReplicationGroup") <*> (pure (fromEnum s))
      )

instance Hashable DeleteReplicationGroup

instance NFData DeleteReplicationGroup

instance ToHeaders DeleteReplicationGroup where
  toHeaders = const mempty

instance ToPath DeleteReplicationGroup where
  toPath = const "/"

instance ToQuery DeleteReplicationGroup where
  toQuery DeleteReplicationGroup' {..} =
    mconcat
      [ "Action"
          =: ("DeleteReplicationGroup" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "RetainPrimaryCluster" =: _drgRetainPrimaryCluster,
        "FinalSnapshotIdentifier"
          =: _drgFinalSnapshotIdentifier,
        "ReplicationGroupId" =: _drgReplicationGroupId
      ]

-- | /See:/ 'deleteReplicationGroupResponse' smart constructor.
data DeleteReplicationGroupResponse = DeleteReplicationGroupResponse'
  { _drgrrsReplicationGroup ::
      !( Maybe
           ReplicationGroup
       ),
    _drgrrsResponseStatus ::
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

-- | Creates a value of 'DeleteReplicationGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drgrrsReplicationGroup' - Undocumented member.
--
-- * 'drgrrsResponseStatus' - -- | The response status code.
deleteReplicationGroupResponse ::
  -- | 'drgrrsResponseStatus'
  Int ->
  DeleteReplicationGroupResponse
deleteReplicationGroupResponse pResponseStatus_ =
  DeleteReplicationGroupResponse'
    { _drgrrsReplicationGroup =
        Nothing,
      _drgrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
drgrrsReplicationGroup :: Lens' DeleteReplicationGroupResponse (Maybe ReplicationGroup)
drgrrsReplicationGroup = lens _drgrrsReplicationGroup (\s a -> s {_drgrrsReplicationGroup = a})

-- | -- | The response status code.
drgrrsResponseStatus :: Lens' DeleteReplicationGroupResponse Int
drgrrsResponseStatus = lens _drgrrsResponseStatus (\s a -> s {_drgrrsResponseStatus = a})

instance NFData DeleteReplicationGroupResponse
