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
-- Module      : Network.AWS.ElastiCache.DeleteCacheCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a previously provisioned cluster. @DeleteCacheCluster@ deletes all associated cache nodes, node endpoints and the cluster itself. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the cluster; you cannot cancel or revert this operation.
--
--
-- This operation is not valid for:
--
--     * Redis (cluster mode enabled) clusters
--
--     * Redis (cluster mode disabled) clusters
--
--     * A cluster that is the last read replica of a replication group
--
--     * A cluster that is the primary node of a replication group
--
--     * A node group (shard) that has Multi-AZ mode enabled
--
--     * A cluster from a Redis (cluster mode enabled) replication group
--
--     * A cluster that is not in the @available@ state
module Network.AWS.ElastiCache.DeleteCacheCluster
  ( -- * Creating a Request
    deleteCacheCluster,
    DeleteCacheCluster,

    -- * Request Lenses
    dccFinalSnapshotIdentifier,
    dccCacheClusterId,

    -- * Destructuring the Response
    deleteCacheClusterResponse,
    DeleteCacheClusterResponse,

    -- * Response Lenses
    dccrrsCacheCluster,
    dccrrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DeleteCacheCluster@ operation.
--
--
--
-- /See:/ 'deleteCacheCluster' smart constructor.
data DeleteCacheCluster = DeleteCacheCluster'
  { _dccFinalSnapshotIdentifier ::
      !(Maybe Text),
    _dccCacheClusterId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteCacheCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccFinalSnapshotIdentifier' - The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot. ElastiCache creates the snapshot, and then deletes the cluster immediately afterward.
--
-- * 'dccCacheClusterId' - The cluster identifier for the cluster to be deleted. This parameter is not case sensitive.
deleteCacheCluster ::
  -- | 'dccCacheClusterId'
  Text ->
  DeleteCacheCluster
deleteCacheCluster pCacheClusterId_ =
  DeleteCacheCluster'
    { _dccFinalSnapshotIdentifier =
        Nothing,
      _dccCacheClusterId = pCacheClusterId_
    }

-- | The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot. ElastiCache creates the snapshot, and then deletes the cluster immediately afterward.
dccFinalSnapshotIdentifier :: Lens' DeleteCacheCluster (Maybe Text)
dccFinalSnapshotIdentifier = lens _dccFinalSnapshotIdentifier (\s a -> s {_dccFinalSnapshotIdentifier = a})

-- | The cluster identifier for the cluster to be deleted. This parameter is not case sensitive.
dccCacheClusterId :: Lens' DeleteCacheCluster Text
dccCacheClusterId = lens _dccCacheClusterId (\s a -> s {_dccCacheClusterId = a})

instance AWSRequest DeleteCacheCluster where
  type
    Rs DeleteCacheCluster =
      DeleteCacheClusterResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DeleteCacheClusterResult"
      ( \s h x ->
          DeleteCacheClusterResponse'
            <$> (x .@? "CacheCluster") <*> (pure (fromEnum s))
      )

instance Hashable DeleteCacheCluster

instance NFData DeleteCacheCluster

instance ToHeaders DeleteCacheCluster where
  toHeaders = const mempty

instance ToPath DeleteCacheCluster where
  toPath = const "/"

instance ToQuery DeleteCacheCluster where
  toQuery DeleteCacheCluster' {..} =
    mconcat
      [ "Action" =: ("DeleteCacheCluster" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "FinalSnapshotIdentifier"
          =: _dccFinalSnapshotIdentifier,
        "CacheClusterId" =: _dccCacheClusterId
      ]

-- | /See:/ 'deleteCacheClusterResponse' smart constructor.
data DeleteCacheClusterResponse = DeleteCacheClusterResponse'
  { _dccrrsCacheCluster ::
      !( Maybe
           CacheCluster
       ),
    _dccrrsResponseStatus ::
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

-- | Creates a value of 'DeleteCacheClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccrrsCacheCluster' - Undocumented member.
--
-- * 'dccrrsResponseStatus' - -- | The response status code.
deleteCacheClusterResponse ::
  -- | 'dccrrsResponseStatus'
  Int ->
  DeleteCacheClusterResponse
deleteCacheClusterResponse pResponseStatus_ =
  DeleteCacheClusterResponse'
    { _dccrrsCacheCluster =
        Nothing,
      _dccrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dccrrsCacheCluster :: Lens' DeleteCacheClusterResponse (Maybe CacheCluster)
dccrrsCacheCluster = lens _dccrrsCacheCluster (\s a -> s {_dccrrsCacheCluster = a})

-- | -- | The response status code.
dccrrsResponseStatus :: Lens' DeleteCacheClusterResponse Int
dccrrsResponseStatus = lens _dccrrsResponseStatus (\s a -> s {_dccrrsResponseStatus = a})

instance NFData DeleteCacheClusterResponse
