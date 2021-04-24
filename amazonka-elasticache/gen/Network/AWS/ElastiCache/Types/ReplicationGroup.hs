{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.ReplicationGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.ReplicationGroup where

import Network.AWS.ElastiCache.Types.AutomaticFailoverStatus
import Network.AWS.ElastiCache.Types.Endpoint
import Network.AWS.ElastiCache.Types.GlobalReplicationGroupInfo
import Network.AWS.ElastiCache.Types.MultiAZStatus
import Network.AWS.ElastiCache.Types.NodeGroup
import Network.AWS.ElastiCache.Types.ReplicationGroupPendingModifiedValues
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains all of the attributes of a specific Redis replication group.
--
--
--
-- /See:/ 'replicationGroup' smart constructor.
data ReplicationGroup = ReplicationGroup'
  { _rgClusterEnabled ::
      !(Maybe Bool),
    _rgStatus :: !(Maybe Text),
    _rgNodeGroups :: !(Maybe [NodeGroup]),
    _rgAutomaticFailover ::
      !(Maybe AutomaticFailoverStatus),
    _rgMemberClustersOutpostARNs ::
      !(Maybe [Text]),
    _rgMemberClusters :: !(Maybe [Text]),
    _rgGlobalReplicationGroupInfo ::
      !(Maybe GlobalReplicationGroupInfo),
    _rgReplicationGroupId ::
      !(Maybe Text),
    _rgUserGroupIds :: !(Maybe [Text]),
    _rgSnapshotWindow :: !(Maybe Text),
    _rgARN :: !(Maybe Text),
    _rgSnapshotRetentionLimit ::
      !(Maybe Int),
    _rgMultiAZ :: !(Maybe MultiAZStatus),
    _rgAtRestEncryptionEnabled ::
      !(Maybe Bool),
    _rgKMSKeyId :: !(Maybe Text),
    _rgSnapshottingClusterId ::
      !(Maybe Text),
    _rgCacheNodeType :: !(Maybe Text),
    _rgAuthTokenLastModifiedDate ::
      !(Maybe ISO8601),
    _rgAuthTokenEnabled :: !(Maybe Bool),
    _rgDescription :: !(Maybe Text),
    _rgPendingModifiedValues ::
      !( Maybe
           ReplicationGroupPendingModifiedValues
       ),
    _rgConfigurationEndpoint ::
      !(Maybe Endpoint),
    _rgTransitEncryptionEnabled ::
      !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplicationGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgClusterEnabled' - A flag indicating whether or not this replication group is cluster enabled; i.e., whether its data can be partitioned across multiple shards (API/CLI: node groups). Valid values: @true@ | @false@
--
-- * 'rgStatus' - The current state of this replication group - @creating@ , @available@ , @modifying@ , @deleting@ , @create-failed@ , @snapshotting@ .
--
-- * 'rgNodeGroups' - A list of node groups in this replication group. For Redis (cluster mode disabled) replication groups, this is a single-element list. For Redis (cluster mode enabled) replication groups, the list contains an entry for each node group (shard).
--
-- * 'rgAutomaticFailover' - Indicates the status of automatic failover for this Redis replication group.
--
-- * 'rgMemberClustersOutpostARNs' - The outpost ARNs of the replication group's member clusters.
--
-- * 'rgMemberClusters' - The names of all the cache clusters that are part of this replication group.
--
-- * 'rgGlobalReplicationGroupInfo' - The name of the Global Datastore and role of this replication group in the Global Datastore.
--
-- * 'rgReplicationGroupId' - The identifier for the replication group.
--
-- * 'rgUserGroupIds' - The list of user group IDs that have access to the replication group.
--
-- * 'rgSnapshotWindow' - The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard). Example: @05:00-09:00@  If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.
--
-- * 'rgARN' - The ARN (Amazon Resource Name) of the replication group.
--
-- * 'rgSnapshotRetentionLimit' - The number of days for which ElastiCache retains automatic cluster snapshots before deleting them. For example, if you set @SnapshotRetentionLimit@ to 5, a snapshot that was taken today is retained for 5 days before being deleted. /Important:/ If the value of @SnapshotRetentionLimit@ is set to zero (0), backups are turned off.
--
-- * 'rgMultiAZ' - A flag indicating if you have Multi-AZ enabled to enhance fault tolerance. For more information, see <http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html Minimizing Downtime: Multi-AZ>
--
-- * 'rgAtRestEncryptionEnabled' - A flag that enables encryption at-rest when set to @true@ . You cannot modify the value of @AtRestEncryptionEnabled@ after the cluster is created. To enable encryption at-rest on a cluster you must set @AtRestEncryptionEnabled@ to @true@ when you create a cluster. __Required:__ Only available when creating a replication group in an Amazon VPC using redis version @3.2.6@ , @4.x@ or later. Default: @false@
--
-- * 'rgKMSKeyId' - The ID of the KMS key used to encrypt the disk in the cluster.
--
-- * 'rgSnapshottingClusterId' - The cluster ID that is used as the daily snapshot source for the replication group.
--
-- * 'rgCacheNodeType' - The name of the compute and memory capacity node type for each node in the replication group.
--
-- * 'rgAuthTokenLastModifiedDate' - The date the auth token was last modified
--
-- * 'rgAuthTokenEnabled' - A flag that enables using an @AuthToken@ (password) when issuing Redis commands. Default: @false@
--
-- * 'rgDescription' - The user supplied description of the replication group.
--
-- * 'rgPendingModifiedValues' - A group of settings to be applied to the replication group, either immediately or during the next maintenance window.
--
-- * 'rgConfigurationEndpoint' - The configuration endpoint for this replication group. Use the configuration endpoint to connect to this replication group.
--
-- * 'rgTransitEncryptionEnabled' - A flag that enables in-transit encryption when set to @true@ . You cannot modify the value of @TransitEncryptionEnabled@ after the cluster is created. To enable in-transit encryption on a cluster you must set @TransitEncryptionEnabled@ to @true@ when you create a cluster. __Required:__ Only available when creating a replication group in an Amazon VPC using redis version @3.2.6@ , @4.x@ or later. Default: @false@
replicationGroup ::
  ReplicationGroup
replicationGroup =
  ReplicationGroup'
    { _rgClusterEnabled = Nothing,
      _rgStatus = Nothing,
      _rgNodeGroups = Nothing,
      _rgAutomaticFailover = Nothing,
      _rgMemberClustersOutpostARNs = Nothing,
      _rgMemberClusters = Nothing,
      _rgGlobalReplicationGroupInfo = Nothing,
      _rgReplicationGroupId = Nothing,
      _rgUserGroupIds = Nothing,
      _rgSnapshotWindow = Nothing,
      _rgARN = Nothing,
      _rgSnapshotRetentionLimit = Nothing,
      _rgMultiAZ = Nothing,
      _rgAtRestEncryptionEnabled = Nothing,
      _rgKMSKeyId = Nothing,
      _rgSnapshottingClusterId = Nothing,
      _rgCacheNodeType = Nothing,
      _rgAuthTokenLastModifiedDate = Nothing,
      _rgAuthTokenEnabled = Nothing,
      _rgDescription = Nothing,
      _rgPendingModifiedValues = Nothing,
      _rgConfigurationEndpoint = Nothing,
      _rgTransitEncryptionEnabled = Nothing
    }

-- | A flag indicating whether or not this replication group is cluster enabled; i.e., whether its data can be partitioned across multiple shards (API/CLI: node groups). Valid values: @true@ | @false@
rgClusterEnabled :: Lens' ReplicationGroup (Maybe Bool)
rgClusterEnabled = lens _rgClusterEnabled (\s a -> s {_rgClusterEnabled = a})

-- | The current state of this replication group - @creating@ , @available@ , @modifying@ , @deleting@ , @create-failed@ , @snapshotting@ .
rgStatus :: Lens' ReplicationGroup (Maybe Text)
rgStatus = lens _rgStatus (\s a -> s {_rgStatus = a})

-- | A list of node groups in this replication group. For Redis (cluster mode disabled) replication groups, this is a single-element list. For Redis (cluster mode enabled) replication groups, the list contains an entry for each node group (shard).
rgNodeGroups :: Lens' ReplicationGroup [NodeGroup]
rgNodeGroups = lens _rgNodeGroups (\s a -> s {_rgNodeGroups = a}) . _Default . _Coerce

-- | Indicates the status of automatic failover for this Redis replication group.
rgAutomaticFailover :: Lens' ReplicationGroup (Maybe AutomaticFailoverStatus)
rgAutomaticFailover = lens _rgAutomaticFailover (\s a -> s {_rgAutomaticFailover = a})

-- | The outpost ARNs of the replication group's member clusters.
rgMemberClustersOutpostARNs :: Lens' ReplicationGroup [Text]
rgMemberClustersOutpostARNs = lens _rgMemberClustersOutpostARNs (\s a -> s {_rgMemberClustersOutpostARNs = a}) . _Default . _Coerce

-- | The names of all the cache clusters that are part of this replication group.
rgMemberClusters :: Lens' ReplicationGroup [Text]
rgMemberClusters = lens _rgMemberClusters (\s a -> s {_rgMemberClusters = a}) . _Default . _Coerce

-- | The name of the Global Datastore and role of this replication group in the Global Datastore.
rgGlobalReplicationGroupInfo :: Lens' ReplicationGroup (Maybe GlobalReplicationGroupInfo)
rgGlobalReplicationGroupInfo = lens _rgGlobalReplicationGroupInfo (\s a -> s {_rgGlobalReplicationGroupInfo = a})

-- | The identifier for the replication group.
rgReplicationGroupId :: Lens' ReplicationGroup (Maybe Text)
rgReplicationGroupId = lens _rgReplicationGroupId (\s a -> s {_rgReplicationGroupId = a})

-- | The list of user group IDs that have access to the replication group.
rgUserGroupIds :: Lens' ReplicationGroup [Text]
rgUserGroupIds = lens _rgUserGroupIds (\s a -> s {_rgUserGroupIds = a}) . _Default . _Coerce

-- | The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard). Example: @05:00-09:00@  If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.
rgSnapshotWindow :: Lens' ReplicationGroup (Maybe Text)
rgSnapshotWindow = lens _rgSnapshotWindow (\s a -> s {_rgSnapshotWindow = a})

-- | The ARN (Amazon Resource Name) of the replication group.
rgARN :: Lens' ReplicationGroup (Maybe Text)
rgARN = lens _rgARN (\s a -> s {_rgARN = a})

-- | The number of days for which ElastiCache retains automatic cluster snapshots before deleting them. For example, if you set @SnapshotRetentionLimit@ to 5, a snapshot that was taken today is retained for 5 days before being deleted. /Important:/ If the value of @SnapshotRetentionLimit@ is set to zero (0), backups are turned off.
rgSnapshotRetentionLimit :: Lens' ReplicationGroup (Maybe Int)
rgSnapshotRetentionLimit = lens _rgSnapshotRetentionLimit (\s a -> s {_rgSnapshotRetentionLimit = a})

-- | A flag indicating if you have Multi-AZ enabled to enhance fault tolerance. For more information, see <http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html Minimizing Downtime: Multi-AZ>
rgMultiAZ :: Lens' ReplicationGroup (Maybe MultiAZStatus)
rgMultiAZ = lens _rgMultiAZ (\s a -> s {_rgMultiAZ = a})

-- | A flag that enables encryption at-rest when set to @true@ . You cannot modify the value of @AtRestEncryptionEnabled@ after the cluster is created. To enable encryption at-rest on a cluster you must set @AtRestEncryptionEnabled@ to @true@ when you create a cluster. __Required:__ Only available when creating a replication group in an Amazon VPC using redis version @3.2.6@ , @4.x@ or later. Default: @false@
rgAtRestEncryptionEnabled :: Lens' ReplicationGroup (Maybe Bool)
rgAtRestEncryptionEnabled = lens _rgAtRestEncryptionEnabled (\s a -> s {_rgAtRestEncryptionEnabled = a})

-- | The ID of the KMS key used to encrypt the disk in the cluster.
rgKMSKeyId :: Lens' ReplicationGroup (Maybe Text)
rgKMSKeyId = lens _rgKMSKeyId (\s a -> s {_rgKMSKeyId = a})

-- | The cluster ID that is used as the daily snapshot source for the replication group.
rgSnapshottingClusterId :: Lens' ReplicationGroup (Maybe Text)
rgSnapshottingClusterId = lens _rgSnapshottingClusterId (\s a -> s {_rgSnapshottingClusterId = a})

-- | The name of the compute and memory capacity node type for each node in the replication group.
rgCacheNodeType :: Lens' ReplicationGroup (Maybe Text)
rgCacheNodeType = lens _rgCacheNodeType (\s a -> s {_rgCacheNodeType = a})

-- | The date the auth token was last modified
rgAuthTokenLastModifiedDate :: Lens' ReplicationGroup (Maybe UTCTime)
rgAuthTokenLastModifiedDate = lens _rgAuthTokenLastModifiedDate (\s a -> s {_rgAuthTokenLastModifiedDate = a}) . mapping _Time

-- | A flag that enables using an @AuthToken@ (password) when issuing Redis commands. Default: @false@
rgAuthTokenEnabled :: Lens' ReplicationGroup (Maybe Bool)
rgAuthTokenEnabled = lens _rgAuthTokenEnabled (\s a -> s {_rgAuthTokenEnabled = a})

-- | The user supplied description of the replication group.
rgDescription :: Lens' ReplicationGroup (Maybe Text)
rgDescription = lens _rgDescription (\s a -> s {_rgDescription = a})

-- | A group of settings to be applied to the replication group, either immediately or during the next maintenance window.
rgPendingModifiedValues :: Lens' ReplicationGroup (Maybe ReplicationGroupPendingModifiedValues)
rgPendingModifiedValues = lens _rgPendingModifiedValues (\s a -> s {_rgPendingModifiedValues = a})

-- | The configuration endpoint for this replication group. Use the configuration endpoint to connect to this replication group.
rgConfigurationEndpoint :: Lens' ReplicationGroup (Maybe Endpoint)
rgConfigurationEndpoint = lens _rgConfigurationEndpoint (\s a -> s {_rgConfigurationEndpoint = a})

-- | A flag that enables in-transit encryption when set to @true@ . You cannot modify the value of @TransitEncryptionEnabled@ after the cluster is created. To enable in-transit encryption on a cluster you must set @TransitEncryptionEnabled@ to @true@ when you create a cluster. __Required:__ Only available when creating a replication group in an Amazon VPC using redis version @3.2.6@ , @4.x@ or later. Default: @false@
rgTransitEncryptionEnabled :: Lens' ReplicationGroup (Maybe Bool)
rgTransitEncryptionEnabled = lens _rgTransitEncryptionEnabled (\s a -> s {_rgTransitEncryptionEnabled = a})

instance FromXML ReplicationGroup where
  parseXML x =
    ReplicationGroup'
      <$> (x .@? "ClusterEnabled")
      <*> (x .@? "Status")
      <*> ( x .@? "NodeGroups" .!@ mempty
              >>= may (parseXMLList "NodeGroup")
          )
      <*> (x .@? "AutomaticFailover")
      <*> ( x .@? "MemberClustersOutpostArns" .!@ mempty
              >>= may (parseXMLList "ReplicationGroupOutpostArn")
          )
      <*> ( x .@? "MemberClusters" .!@ mempty
              >>= may (parseXMLList "ClusterId")
          )
      <*> (x .@? "GlobalReplicationGroupInfo")
      <*> (x .@? "ReplicationGroupId")
      <*> ( x .@? "UserGroupIds" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "SnapshotWindow")
      <*> (x .@? "ARN")
      <*> (x .@? "SnapshotRetentionLimit")
      <*> (x .@? "MultiAZ")
      <*> (x .@? "AtRestEncryptionEnabled")
      <*> (x .@? "KmsKeyId")
      <*> (x .@? "SnapshottingClusterId")
      <*> (x .@? "CacheNodeType")
      <*> (x .@? "AuthTokenLastModifiedDate")
      <*> (x .@? "AuthTokenEnabled")
      <*> (x .@? "Description")
      <*> (x .@? "PendingModifiedValues")
      <*> (x .@? "ConfigurationEndpoint")
      <*> (x .@? "TransitEncryptionEnabled")

instance Hashable ReplicationGroup

instance NFData ReplicationGroup
