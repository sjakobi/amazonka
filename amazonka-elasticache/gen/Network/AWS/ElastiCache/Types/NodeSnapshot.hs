{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.NodeSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.NodeSnapshot where

import Network.AWS.ElastiCache.Types.NodeGroupConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents an individual cache node in a snapshot of a cluster.
--
--
--
-- /See:/ 'nodeSnapshot' smart constructor.
data NodeSnapshot = NodeSnapshot'
  { _nsNodeGroupConfiguration ::
      !(Maybe NodeGroupConfiguration),
    _nsCacheSize :: !(Maybe Text),
    _nsCacheClusterId :: !(Maybe Text),
    _nsSnapshotCreateTime :: !(Maybe ISO8601),
    _nsCacheNodeCreateTime :: !(Maybe ISO8601),
    _nsNodeGroupId :: !(Maybe Text),
    _nsCacheNodeId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NodeSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsNodeGroupConfiguration' - The configuration for the source node group (shard).
--
-- * 'nsCacheSize' - The size of the cache on the source cache node.
--
-- * 'nsCacheClusterId' - A unique identifier for the source cluster.
--
-- * 'nsSnapshotCreateTime' - The date and time when the source node's metadata and cache data set was obtained for the snapshot.
--
-- * 'nsCacheNodeCreateTime' - The date and time when the cache node was created in the source cluster.
--
-- * 'nsNodeGroupId' - A unique identifier for the source node group (shard).
--
-- * 'nsCacheNodeId' - The cache node identifier for the node in the source cluster.
nodeSnapshot ::
  NodeSnapshot
nodeSnapshot =
  NodeSnapshot'
    { _nsNodeGroupConfiguration = Nothing,
      _nsCacheSize = Nothing,
      _nsCacheClusterId = Nothing,
      _nsSnapshotCreateTime = Nothing,
      _nsCacheNodeCreateTime = Nothing,
      _nsNodeGroupId = Nothing,
      _nsCacheNodeId = Nothing
    }

-- | The configuration for the source node group (shard).
nsNodeGroupConfiguration :: Lens' NodeSnapshot (Maybe NodeGroupConfiguration)
nsNodeGroupConfiguration = lens _nsNodeGroupConfiguration (\s a -> s {_nsNodeGroupConfiguration = a})

-- | The size of the cache on the source cache node.
nsCacheSize :: Lens' NodeSnapshot (Maybe Text)
nsCacheSize = lens _nsCacheSize (\s a -> s {_nsCacheSize = a})

-- | A unique identifier for the source cluster.
nsCacheClusterId :: Lens' NodeSnapshot (Maybe Text)
nsCacheClusterId = lens _nsCacheClusterId (\s a -> s {_nsCacheClusterId = a})

-- | The date and time when the source node's metadata and cache data set was obtained for the snapshot.
nsSnapshotCreateTime :: Lens' NodeSnapshot (Maybe UTCTime)
nsSnapshotCreateTime = lens _nsSnapshotCreateTime (\s a -> s {_nsSnapshotCreateTime = a}) . mapping _Time

-- | The date and time when the cache node was created in the source cluster.
nsCacheNodeCreateTime :: Lens' NodeSnapshot (Maybe UTCTime)
nsCacheNodeCreateTime = lens _nsCacheNodeCreateTime (\s a -> s {_nsCacheNodeCreateTime = a}) . mapping _Time

-- | A unique identifier for the source node group (shard).
nsNodeGroupId :: Lens' NodeSnapshot (Maybe Text)
nsNodeGroupId = lens _nsNodeGroupId (\s a -> s {_nsNodeGroupId = a})

-- | The cache node identifier for the node in the source cluster.
nsCacheNodeId :: Lens' NodeSnapshot (Maybe Text)
nsCacheNodeId = lens _nsCacheNodeId (\s a -> s {_nsCacheNodeId = a})

instance FromXML NodeSnapshot where
  parseXML x =
    NodeSnapshot'
      <$> (x .@? "NodeGroupConfiguration")
      <*> (x .@? "CacheSize")
      <*> (x .@? "CacheClusterId")
      <*> (x .@? "SnapshotCreateTime")
      <*> (x .@? "CacheNodeCreateTime")
      <*> (x .@? "NodeGroupId")
      <*> (x .@? "CacheNodeId")

instance Hashable NodeSnapshot

instance NFData NodeSnapshot
