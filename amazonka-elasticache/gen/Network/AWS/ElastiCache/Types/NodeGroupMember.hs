{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.NodeGroupMember
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.NodeGroupMember where

import Network.AWS.ElastiCache.Types.Endpoint
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a single node within a node group (shard).
--
--
--
-- /See:/ 'nodeGroupMember' smart constructor.
data NodeGroupMember = NodeGroupMember'
  { _ngmCacheClusterId ::
      !(Maybe Text),
    _ngmPreferredAvailabilityZone ::
      !(Maybe Text),
    _ngmReadEndpoint :: !(Maybe Endpoint),
    _ngmCacheNodeId :: !(Maybe Text),
    _ngmPreferredOutpostARN ::
      !(Maybe Text),
    _ngmCurrentRole :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NodeGroupMember' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngmCacheClusterId' - The ID of the cluster to which the node belongs.
--
-- * 'ngmPreferredAvailabilityZone' - The name of the Availability Zone in which the node is located.
--
-- * 'ngmReadEndpoint' - The information required for client programs to connect to a node for read operations. The read endpoint is only applicable on Redis (cluster mode disabled) clusters.
--
-- * 'ngmCacheNodeId' - The ID of the node within its cluster. A node ID is a numeric identifier (0001, 0002, etc.).
--
-- * 'ngmPreferredOutpostARN' - The outpost ARN of the node group member.
--
-- * 'ngmCurrentRole' - The role that is currently assigned to the node - @primary@ or @replica@ . This member is only applicable for Redis (cluster mode disabled) replication groups.
nodeGroupMember ::
  NodeGroupMember
nodeGroupMember =
  NodeGroupMember'
    { _ngmCacheClusterId = Nothing,
      _ngmPreferredAvailabilityZone = Nothing,
      _ngmReadEndpoint = Nothing,
      _ngmCacheNodeId = Nothing,
      _ngmPreferredOutpostARN = Nothing,
      _ngmCurrentRole = Nothing
    }

-- | The ID of the cluster to which the node belongs.
ngmCacheClusterId :: Lens' NodeGroupMember (Maybe Text)
ngmCacheClusterId = lens _ngmCacheClusterId (\s a -> s {_ngmCacheClusterId = a})

-- | The name of the Availability Zone in which the node is located.
ngmPreferredAvailabilityZone :: Lens' NodeGroupMember (Maybe Text)
ngmPreferredAvailabilityZone = lens _ngmPreferredAvailabilityZone (\s a -> s {_ngmPreferredAvailabilityZone = a})

-- | The information required for client programs to connect to a node for read operations. The read endpoint is only applicable on Redis (cluster mode disabled) clusters.
ngmReadEndpoint :: Lens' NodeGroupMember (Maybe Endpoint)
ngmReadEndpoint = lens _ngmReadEndpoint (\s a -> s {_ngmReadEndpoint = a})

-- | The ID of the node within its cluster. A node ID is a numeric identifier (0001, 0002, etc.).
ngmCacheNodeId :: Lens' NodeGroupMember (Maybe Text)
ngmCacheNodeId = lens _ngmCacheNodeId (\s a -> s {_ngmCacheNodeId = a})

-- | The outpost ARN of the node group member.
ngmPreferredOutpostARN :: Lens' NodeGroupMember (Maybe Text)
ngmPreferredOutpostARN = lens _ngmPreferredOutpostARN (\s a -> s {_ngmPreferredOutpostARN = a})

-- | The role that is currently assigned to the node - @primary@ or @replica@ . This member is only applicable for Redis (cluster mode disabled) replication groups.
ngmCurrentRole :: Lens' NodeGroupMember (Maybe Text)
ngmCurrentRole = lens _ngmCurrentRole (\s a -> s {_ngmCurrentRole = a})

instance FromXML NodeGroupMember where
  parseXML x =
    NodeGroupMember'
      <$> (x .@? "CacheClusterId")
      <*> (x .@? "PreferredAvailabilityZone")
      <*> (x .@? "ReadEndpoint")
      <*> (x .@? "CacheNodeId")
      <*> (x .@? "PreferredOutpostArn")
      <*> (x .@? "CurrentRole")

instance Hashable NodeGroupMember

instance NFData NodeGroupMember
