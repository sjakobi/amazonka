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
-- Module      : Network.AWS.ElastiCache.DecreaseReplicaCount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Dynamically decreases the number of replicas in a Redis (cluster mode disabled) replication group or the number of replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group. This operation is performed with no cluster down time.
module Network.AWS.ElastiCache.DecreaseReplicaCount
  ( -- * Creating a Request
    decreaseReplicaCount,
    DecreaseReplicaCount,

    -- * Request Lenses
    drcNewReplicaCount,
    drcReplicasToRemove,
    drcReplicaConfiguration,
    drcReplicationGroupId,
    drcApplyImmediately,

    -- * Destructuring the Response
    decreaseReplicaCountResponse,
    DecreaseReplicaCountResponse,

    -- * Response Lenses
    drcrrsReplicationGroup,
    drcrrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'decreaseReplicaCount' smart constructor.
data DecreaseReplicaCount = DecreaseReplicaCount'
  { _drcNewReplicaCount ::
      !(Maybe Int),
    _drcReplicasToRemove ::
      !(Maybe [Text]),
    _drcReplicaConfiguration ::
      !(Maybe [ConfigureShard]),
    _drcReplicationGroupId ::
      !Text,
    _drcApplyImmediately :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DecreaseReplicaCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drcNewReplicaCount' - The number of read replica nodes you want at the completion of this operation. For Redis (cluster mode disabled) replication groups, this is the number of replica nodes in the replication group. For Redis (cluster mode enabled) replication groups, this is the number of replica nodes in each of the replication group's node groups. The minimum number of replicas in a shard or replication group is:     * Redis (cluster mode disabled)     * If Multi-AZ is enabled: 1     * If Multi-AZ is not enabled: 0     * Redis (cluster mode enabled): 0 (though you will not be able to failover to a replica if your primary node fails)
--
-- * 'drcReplicasToRemove' - A list of the node ids to remove from the replication group or node group (shard).
--
-- * 'drcReplicaConfiguration' - A list of @ConfigureShard@ objects that can be used to configure each shard in a Redis (cluster mode enabled) replication group. The @ConfigureShard@ has three members: @NewReplicaCount@ , @NodeGroupId@ , and @PreferredAvailabilityZones@ .
--
-- * 'drcReplicationGroupId' - The id of the replication group from which you want to remove replica nodes.
--
-- * 'drcApplyImmediately' - If @True@ , the number of replica nodes is decreased immediately. @ApplyImmediately=False@ is not currently supported.
decreaseReplicaCount ::
  -- | 'drcReplicationGroupId'
  Text ->
  -- | 'drcApplyImmediately'
  Bool ->
  DecreaseReplicaCount
decreaseReplicaCount
  pReplicationGroupId_
  pApplyImmediately_ =
    DecreaseReplicaCount'
      { _drcNewReplicaCount =
          Nothing,
        _drcReplicasToRemove = Nothing,
        _drcReplicaConfiguration = Nothing,
        _drcReplicationGroupId = pReplicationGroupId_,
        _drcApplyImmediately = pApplyImmediately_
      }

-- | The number of read replica nodes you want at the completion of this operation. For Redis (cluster mode disabled) replication groups, this is the number of replica nodes in the replication group. For Redis (cluster mode enabled) replication groups, this is the number of replica nodes in each of the replication group's node groups. The minimum number of replicas in a shard or replication group is:     * Redis (cluster mode disabled)     * If Multi-AZ is enabled: 1     * If Multi-AZ is not enabled: 0     * Redis (cluster mode enabled): 0 (though you will not be able to failover to a replica if your primary node fails)
drcNewReplicaCount :: Lens' DecreaseReplicaCount (Maybe Int)
drcNewReplicaCount = lens _drcNewReplicaCount (\s a -> s {_drcNewReplicaCount = a})

-- | A list of the node ids to remove from the replication group or node group (shard).
drcReplicasToRemove :: Lens' DecreaseReplicaCount [Text]
drcReplicasToRemove = lens _drcReplicasToRemove (\s a -> s {_drcReplicasToRemove = a}) . _Default . _Coerce

-- | A list of @ConfigureShard@ objects that can be used to configure each shard in a Redis (cluster mode enabled) replication group. The @ConfigureShard@ has three members: @NewReplicaCount@ , @NodeGroupId@ , and @PreferredAvailabilityZones@ .
drcReplicaConfiguration :: Lens' DecreaseReplicaCount [ConfigureShard]
drcReplicaConfiguration = lens _drcReplicaConfiguration (\s a -> s {_drcReplicaConfiguration = a}) . _Default . _Coerce

-- | The id of the replication group from which you want to remove replica nodes.
drcReplicationGroupId :: Lens' DecreaseReplicaCount Text
drcReplicationGroupId = lens _drcReplicationGroupId (\s a -> s {_drcReplicationGroupId = a})

-- | If @True@ , the number of replica nodes is decreased immediately. @ApplyImmediately=False@ is not currently supported.
drcApplyImmediately :: Lens' DecreaseReplicaCount Bool
drcApplyImmediately = lens _drcApplyImmediately (\s a -> s {_drcApplyImmediately = a})

instance AWSRequest DecreaseReplicaCount where
  type
    Rs DecreaseReplicaCount =
      DecreaseReplicaCountResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DecreaseReplicaCountResult"
      ( \s h x ->
          DecreaseReplicaCountResponse'
            <$> (x .@? "ReplicationGroup") <*> (pure (fromEnum s))
      )

instance Hashable DecreaseReplicaCount

instance NFData DecreaseReplicaCount

instance ToHeaders DecreaseReplicaCount where
  toHeaders = const mempty

instance ToPath DecreaseReplicaCount where
  toPath = const "/"

instance ToQuery DecreaseReplicaCount where
  toQuery DecreaseReplicaCount' {..} =
    mconcat
      [ "Action" =: ("DecreaseReplicaCount" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "NewReplicaCount" =: _drcNewReplicaCount,
        "ReplicasToRemove"
          =: toQuery
            (toQueryList "member" <$> _drcReplicasToRemove),
        "ReplicaConfiguration"
          =: toQuery
            ( toQueryList "ConfigureShard"
                <$> _drcReplicaConfiguration
            ),
        "ReplicationGroupId" =: _drcReplicationGroupId,
        "ApplyImmediately" =: _drcApplyImmediately
      ]

-- | /See:/ 'decreaseReplicaCountResponse' smart constructor.
data DecreaseReplicaCountResponse = DecreaseReplicaCountResponse'
  { _drcrrsReplicationGroup ::
      !( Maybe
           ReplicationGroup
       ),
    _drcrrsResponseStatus ::
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

-- | Creates a value of 'DecreaseReplicaCountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drcrrsReplicationGroup' - Undocumented member.
--
-- * 'drcrrsResponseStatus' - -- | The response status code.
decreaseReplicaCountResponse ::
  -- | 'drcrrsResponseStatus'
  Int ->
  DecreaseReplicaCountResponse
decreaseReplicaCountResponse pResponseStatus_ =
  DecreaseReplicaCountResponse'
    { _drcrrsReplicationGroup =
        Nothing,
      _drcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
drcrrsReplicationGroup :: Lens' DecreaseReplicaCountResponse (Maybe ReplicationGroup)
drcrrsReplicationGroup = lens _drcrrsReplicationGroup (\s a -> s {_drcrrsReplicationGroup = a})

-- | -- | The response status code.
drcrrsResponseStatus :: Lens' DecreaseReplicaCountResponse Int
drcrrsResponseStatus = lens _drcrrsResponseStatus (\s a -> s {_drcrrsResponseStatus = a})

instance NFData DecreaseReplicaCountResponse
