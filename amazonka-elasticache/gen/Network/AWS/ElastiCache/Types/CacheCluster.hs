{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.CacheCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.CacheCluster where

import Network.AWS.ElastiCache.Types.CacheNode
import Network.AWS.ElastiCache.Types.CacheParameterGroupStatus
import Network.AWS.ElastiCache.Types.CacheSecurityGroupMembership
import Network.AWS.ElastiCache.Types.Endpoint
import Network.AWS.ElastiCache.Types.NotificationConfiguration
import Network.AWS.ElastiCache.Types.PendingModifiedValues
import Network.AWS.ElastiCache.Types.SecurityGroupMembership
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains all of the attributes of a specific cluster.
--
--
--
-- /See:/ 'cacheCluster' smart constructor.
data CacheCluster = CacheCluster'
  { _ccCacheNodes ::
      !(Maybe [CacheNode]),
    _ccCacheClusterCreateTime :: !(Maybe ISO8601),
    _ccNumCacheNodes :: !(Maybe Int),
    _ccCacheSecurityGroups ::
      !(Maybe [CacheSecurityGroupMembership]),
    _ccReplicationGroupId :: !(Maybe Text),
    _ccCacheClusterId :: !(Maybe Text),
    _ccSnapshotWindow :: !(Maybe Text),
    _ccARN :: !(Maybe Text),
    _ccNotificationConfiguration ::
      !(Maybe NotificationConfiguration),
    _ccSnapshotRetentionLimit :: !(Maybe Int),
    _ccCacheParameterGroup ::
      !(Maybe CacheParameterGroupStatus),
    _ccSecurityGroups ::
      !(Maybe [SecurityGroupMembership]),
    _ccPreferredAvailabilityZone :: !(Maybe Text),
    _ccAtRestEncryptionEnabled :: !(Maybe Bool),
    _ccCacheSubnetGroupName :: !(Maybe Text),
    _ccEngineVersion :: !(Maybe Text),
    _ccPreferredMaintenanceWindow ::
      !(Maybe Text),
    _ccCacheNodeType :: !(Maybe Text),
    _ccAuthTokenLastModifiedDate ::
      !(Maybe ISO8601),
    _ccClientDownloadLandingPage :: !(Maybe Text),
    _ccEngine :: !(Maybe Text),
    _ccPreferredOutpostARN :: !(Maybe Text),
    _ccAuthTokenEnabled :: !(Maybe Bool),
    _ccPendingModifiedValues ::
      !(Maybe PendingModifiedValues),
    _ccConfigurationEndpoint :: !(Maybe Endpoint),
    _ccTransitEncryptionEnabled :: !(Maybe Bool),
    _ccAutoMinorVersionUpgrade :: !(Maybe Bool),
    _ccCacheClusterStatus :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CacheCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccCacheNodes' - A list of cache nodes that are members of the cluster.
--
-- * 'ccCacheClusterCreateTime' - The date and time when the cluster was created.
--
-- * 'ccNumCacheNodes' - The number of cache nodes in the cluster. For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.
--
-- * 'ccCacheSecurityGroups' - A list of cache security group elements, composed of name and status sub-elements.
--
-- * 'ccReplicationGroupId' - The replication group to which this cluster belongs. If this field is empty, the cluster is not associated with any replication group.
--
-- * 'ccCacheClusterId' - The user-supplied identifier of the cluster. This identifier is a unique key that identifies a cluster.
--
-- * 'ccSnapshotWindow' - The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your cluster. Example: @05:00-09:00@
--
-- * 'ccARN' - The ARN (Amazon Resource Name) of the cache cluster.
--
-- * 'ccNotificationConfiguration' - Describes a notification topic and its status. Notification topics are used for publishing ElastiCache events to subscribers using Amazon Simple Notification Service (SNS).
--
-- * 'ccSnapshotRetentionLimit' - The number of days for which ElastiCache retains automatic cluster snapshots before deleting them. For example, if you set @SnapshotRetentionLimit@ to 5, a snapshot that was taken today is retained for 5 days before being deleted. /Important:/ If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.
--
-- * 'ccCacheParameterGroup' - Status of the cache parameter group.
--
-- * 'ccSecurityGroups' - A list of VPC Security Groups associated with the cluster.
--
-- * 'ccPreferredAvailabilityZone' - The name of the Availability Zone in which the cluster is located or "Multiple" if the cache nodes are located in different Availability Zones.
--
-- * 'ccAtRestEncryptionEnabled' - A flag that enables encryption at-rest when set to @true@ . You cannot modify the value of @AtRestEncryptionEnabled@ after the cluster is created. To enable at-rest encryption on a cluster you must set @AtRestEncryptionEnabled@ to @true@ when you create a cluster. __Required:__ Only available when creating a replication group in an Amazon VPC using redis version @3.2.6@ , @4.x@ or later. Default: @false@
--
-- * 'ccCacheSubnetGroupName' - The name of the cache subnet group associated with the cluster.
--
-- * 'ccEngineVersion' - The version of the cache engine that is used in this cluster.
--
-- * 'ccPreferredMaintenanceWindow' - Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for @ddd@ are:     * @sun@      * @mon@      * @tue@      * @wed@      * @thu@      * @fri@      * @sat@  Example: @sun:23:00-mon:01:30@
--
-- * 'ccCacheNodeType' - The name of the compute and memory capacity node type for the cluster. The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.     * General purpose:     * Current generation:  __M6g node types__ (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward). @cache.m6g.large@ , @cache.m6g.xlarge@ , @cache.m6g.2xlarge@ , @cache.m6g.4xlarge@ , @cache.m6g.8xlarge@ , @cache.m6g.12xlarge@ , @cache.m6g.16xlarge@  __M5 node types:__ @cache.m5.large@ , @cache.m5.xlarge@ , @cache.m5.2xlarge@ , @cache.m5.4xlarge@ , @cache.m5.12xlarge@ , @cache.m5.24xlarge@  __M4 node types:__ @cache.m4.large@ , @cache.m4.xlarge@ , @cache.m4.2xlarge@ , @cache.m4.4xlarge@ , @cache.m4.10xlarge@  __T3 node types:__ @cache.t3.micro@ , @cache.t3.small@ , @cache.t3.medium@  __T2 node types:__ @cache.t2.micro@ , @cache.t2.small@ , @cache.t2.medium@      * Previous generation: (not recommended) __T1 node types:__ @cache.t1.micro@  __M1 node types:__ @cache.m1.small@ , @cache.m1.medium@ , @cache.m1.large@ , @cache.m1.xlarge@  __M3 node types:__ @cache.m3.medium@ , @cache.m3.large@ , @cache.m3.xlarge@ , @cache.m3.2xlarge@      * Compute optimized:     * Previous generation: (not recommended) __C1 node types:__ @cache.c1.xlarge@      * Memory optimized:     * Current generation:  __R6g node types__ (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward). @cache.r6g.large@ , @cache.r6g.xlarge@ , @cache.r6g.2xlarge@ , @cache.r6g.4xlarge@ , @cache.r6g.8xlarge@ , @cache.r6g.12xlarge@ , @cache.r6g.16xlarge@  __R5 node types:__ @cache.r5.large@ , @cache.r5.xlarge@ , @cache.r5.2xlarge@ , @cache.r5.4xlarge@ , @cache.r5.12xlarge@ , @cache.r5.24xlarge@  __R4 node types:__ @cache.r4.large@ , @cache.r4.xlarge@ , @cache.r4.2xlarge@ , @cache.r4.4xlarge@ , @cache.r4.8xlarge@ , @cache.r4.16xlarge@      * Previous generation: (not recommended) __M2 node types:__ @cache.m2.xlarge@ , @cache.m2.2xlarge@ , @cache.m2.4xlarge@  __R3 node types:__ @cache.r3.large@ , @cache.r3.xlarge@ , @cache.r3.2xlarge@ , @cache.r3.4xlarge@ , @cache.r3.8xlarge@  __Additional node type info__      * All current generation instance types are created in Amazon VPC by default.     * Redis append-only files (AOF) are not supported for T1 or T2 instances.     * Redis Multi-AZ with automatic failover is not supported on T1 instances.     * Redis configuration variables @appendonly@ and @appendfsync@ are not supported on Redis version 2.8.22 and later.
--
-- * 'ccAuthTokenLastModifiedDate' - The date the auth token was last modified
--
-- * 'ccClientDownloadLandingPage' - The URL of the web page where you can download the latest ElastiCache client library.
--
-- * 'ccEngine' - The name of the cache engine (@memcached@ or @redis@ ) to be used for this cluster.
--
-- * 'ccPreferredOutpostARN' - The outpost ARN in which the cache cluster is created.
--
-- * 'ccAuthTokenEnabled' - A flag that enables using an @AuthToken@ (password) when issuing Redis commands. Default: @false@
--
-- * 'ccPendingModifiedValues' - Undocumented member.
--
-- * 'ccConfigurationEndpoint' - Represents a Memcached cluster endpoint which can be used by an application to connect to any node in the cluster. The configuration endpoint will always have @.cfg@ in it. Example: @mem-3.9dvc4r/.cfg/ .usw2.cache.amazonaws.com:11211@
--
-- * 'ccTransitEncryptionEnabled' - A flag that enables in-transit encryption when set to @true@ . You cannot modify the value of @TransitEncryptionEnabled@ after the cluster is created. To enable in-transit encryption on a cluster you must set @TransitEncryptionEnabled@ to @true@ when you create a cluster. __Required:__ Only available when creating a replication group in an Amazon VPC using redis version @3.2.6@ , @4.x@ or later. Default: @false@
--
-- * 'ccAutoMinorVersionUpgrade' - This parameter is currently disabled.
--
-- * 'ccCacheClusterStatus' - The current state of this cluster, one of the following values: @available@ , @creating@ , @deleted@ , @deleting@ , @incompatible-network@ , @modifying@ , @rebooting cluster nodes@ , @restore-failed@ , or @snapshotting@ .
cacheCluster ::
  CacheCluster
cacheCluster =
  CacheCluster'
    { _ccCacheNodes = Nothing,
      _ccCacheClusterCreateTime = Nothing,
      _ccNumCacheNodes = Nothing,
      _ccCacheSecurityGroups = Nothing,
      _ccReplicationGroupId = Nothing,
      _ccCacheClusterId = Nothing,
      _ccSnapshotWindow = Nothing,
      _ccARN = Nothing,
      _ccNotificationConfiguration = Nothing,
      _ccSnapshotRetentionLimit = Nothing,
      _ccCacheParameterGroup = Nothing,
      _ccSecurityGroups = Nothing,
      _ccPreferredAvailabilityZone = Nothing,
      _ccAtRestEncryptionEnabled = Nothing,
      _ccCacheSubnetGroupName = Nothing,
      _ccEngineVersion = Nothing,
      _ccPreferredMaintenanceWindow = Nothing,
      _ccCacheNodeType = Nothing,
      _ccAuthTokenLastModifiedDate = Nothing,
      _ccClientDownloadLandingPage = Nothing,
      _ccEngine = Nothing,
      _ccPreferredOutpostARN = Nothing,
      _ccAuthTokenEnabled = Nothing,
      _ccPendingModifiedValues = Nothing,
      _ccConfigurationEndpoint = Nothing,
      _ccTransitEncryptionEnabled = Nothing,
      _ccAutoMinorVersionUpgrade = Nothing,
      _ccCacheClusterStatus = Nothing
    }

-- | A list of cache nodes that are members of the cluster.
ccCacheNodes :: Lens' CacheCluster [CacheNode]
ccCacheNodes = lens _ccCacheNodes (\s a -> s {_ccCacheNodes = a}) . _Default . _Coerce

-- | The date and time when the cluster was created.
ccCacheClusterCreateTime :: Lens' CacheCluster (Maybe UTCTime)
ccCacheClusterCreateTime = lens _ccCacheClusterCreateTime (\s a -> s {_ccCacheClusterCreateTime = a}) . mapping _Time

-- | The number of cache nodes in the cluster. For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.
ccNumCacheNodes :: Lens' CacheCluster (Maybe Int)
ccNumCacheNodes = lens _ccNumCacheNodes (\s a -> s {_ccNumCacheNodes = a})

-- | A list of cache security group elements, composed of name and status sub-elements.
ccCacheSecurityGroups :: Lens' CacheCluster [CacheSecurityGroupMembership]
ccCacheSecurityGroups = lens _ccCacheSecurityGroups (\s a -> s {_ccCacheSecurityGroups = a}) . _Default . _Coerce

-- | The replication group to which this cluster belongs. If this field is empty, the cluster is not associated with any replication group.
ccReplicationGroupId :: Lens' CacheCluster (Maybe Text)
ccReplicationGroupId = lens _ccReplicationGroupId (\s a -> s {_ccReplicationGroupId = a})

-- | The user-supplied identifier of the cluster. This identifier is a unique key that identifies a cluster.
ccCacheClusterId :: Lens' CacheCluster (Maybe Text)
ccCacheClusterId = lens _ccCacheClusterId (\s a -> s {_ccCacheClusterId = a})

-- | The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your cluster. Example: @05:00-09:00@
ccSnapshotWindow :: Lens' CacheCluster (Maybe Text)
ccSnapshotWindow = lens _ccSnapshotWindow (\s a -> s {_ccSnapshotWindow = a})

-- | The ARN (Amazon Resource Name) of the cache cluster.
ccARN :: Lens' CacheCluster (Maybe Text)
ccARN = lens _ccARN (\s a -> s {_ccARN = a})

-- | Describes a notification topic and its status. Notification topics are used for publishing ElastiCache events to subscribers using Amazon Simple Notification Service (SNS).
ccNotificationConfiguration :: Lens' CacheCluster (Maybe NotificationConfiguration)
ccNotificationConfiguration = lens _ccNotificationConfiguration (\s a -> s {_ccNotificationConfiguration = a})

-- | The number of days for which ElastiCache retains automatic cluster snapshots before deleting them. For example, if you set @SnapshotRetentionLimit@ to 5, a snapshot that was taken today is retained for 5 days before being deleted. /Important:/ If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.
ccSnapshotRetentionLimit :: Lens' CacheCluster (Maybe Int)
ccSnapshotRetentionLimit = lens _ccSnapshotRetentionLimit (\s a -> s {_ccSnapshotRetentionLimit = a})

-- | Status of the cache parameter group.
ccCacheParameterGroup :: Lens' CacheCluster (Maybe CacheParameterGroupStatus)
ccCacheParameterGroup = lens _ccCacheParameterGroup (\s a -> s {_ccCacheParameterGroup = a})

-- | A list of VPC Security Groups associated with the cluster.
ccSecurityGroups :: Lens' CacheCluster [SecurityGroupMembership]
ccSecurityGroups = lens _ccSecurityGroups (\s a -> s {_ccSecurityGroups = a}) . _Default . _Coerce

-- | The name of the Availability Zone in which the cluster is located or "Multiple" if the cache nodes are located in different Availability Zones.
ccPreferredAvailabilityZone :: Lens' CacheCluster (Maybe Text)
ccPreferredAvailabilityZone = lens _ccPreferredAvailabilityZone (\s a -> s {_ccPreferredAvailabilityZone = a})

-- | A flag that enables encryption at-rest when set to @true@ . You cannot modify the value of @AtRestEncryptionEnabled@ after the cluster is created. To enable at-rest encryption on a cluster you must set @AtRestEncryptionEnabled@ to @true@ when you create a cluster. __Required:__ Only available when creating a replication group in an Amazon VPC using redis version @3.2.6@ , @4.x@ or later. Default: @false@
ccAtRestEncryptionEnabled :: Lens' CacheCluster (Maybe Bool)
ccAtRestEncryptionEnabled = lens _ccAtRestEncryptionEnabled (\s a -> s {_ccAtRestEncryptionEnabled = a})

-- | The name of the cache subnet group associated with the cluster.
ccCacheSubnetGroupName :: Lens' CacheCluster (Maybe Text)
ccCacheSubnetGroupName = lens _ccCacheSubnetGroupName (\s a -> s {_ccCacheSubnetGroupName = a})

-- | The version of the cache engine that is used in this cluster.
ccEngineVersion :: Lens' CacheCluster (Maybe Text)
ccEngineVersion = lens _ccEngineVersion (\s a -> s {_ccEngineVersion = a})

-- | Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for @ddd@ are:     * @sun@      * @mon@      * @tue@      * @wed@      * @thu@      * @fri@      * @sat@  Example: @sun:23:00-mon:01:30@
ccPreferredMaintenanceWindow :: Lens' CacheCluster (Maybe Text)
ccPreferredMaintenanceWindow = lens _ccPreferredMaintenanceWindow (\s a -> s {_ccPreferredMaintenanceWindow = a})

-- | The name of the compute and memory capacity node type for the cluster. The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.     * General purpose:     * Current generation:  __M6g node types__ (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward). @cache.m6g.large@ , @cache.m6g.xlarge@ , @cache.m6g.2xlarge@ , @cache.m6g.4xlarge@ , @cache.m6g.8xlarge@ , @cache.m6g.12xlarge@ , @cache.m6g.16xlarge@  __M5 node types:__ @cache.m5.large@ , @cache.m5.xlarge@ , @cache.m5.2xlarge@ , @cache.m5.4xlarge@ , @cache.m5.12xlarge@ , @cache.m5.24xlarge@  __M4 node types:__ @cache.m4.large@ , @cache.m4.xlarge@ , @cache.m4.2xlarge@ , @cache.m4.4xlarge@ , @cache.m4.10xlarge@  __T3 node types:__ @cache.t3.micro@ , @cache.t3.small@ , @cache.t3.medium@  __T2 node types:__ @cache.t2.micro@ , @cache.t2.small@ , @cache.t2.medium@      * Previous generation: (not recommended) __T1 node types:__ @cache.t1.micro@  __M1 node types:__ @cache.m1.small@ , @cache.m1.medium@ , @cache.m1.large@ , @cache.m1.xlarge@  __M3 node types:__ @cache.m3.medium@ , @cache.m3.large@ , @cache.m3.xlarge@ , @cache.m3.2xlarge@      * Compute optimized:     * Previous generation: (not recommended) __C1 node types:__ @cache.c1.xlarge@      * Memory optimized:     * Current generation:  __R6g node types__ (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward). @cache.r6g.large@ , @cache.r6g.xlarge@ , @cache.r6g.2xlarge@ , @cache.r6g.4xlarge@ , @cache.r6g.8xlarge@ , @cache.r6g.12xlarge@ , @cache.r6g.16xlarge@  __R5 node types:__ @cache.r5.large@ , @cache.r5.xlarge@ , @cache.r5.2xlarge@ , @cache.r5.4xlarge@ , @cache.r5.12xlarge@ , @cache.r5.24xlarge@  __R4 node types:__ @cache.r4.large@ , @cache.r4.xlarge@ , @cache.r4.2xlarge@ , @cache.r4.4xlarge@ , @cache.r4.8xlarge@ , @cache.r4.16xlarge@      * Previous generation: (not recommended) __M2 node types:__ @cache.m2.xlarge@ , @cache.m2.2xlarge@ , @cache.m2.4xlarge@  __R3 node types:__ @cache.r3.large@ , @cache.r3.xlarge@ , @cache.r3.2xlarge@ , @cache.r3.4xlarge@ , @cache.r3.8xlarge@  __Additional node type info__      * All current generation instance types are created in Amazon VPC by default.     * Redis append-only files (AOF) are not supported for T1 or T2 instances.     * Redis Multi-AZ with automatic failover is not supported on T1 instances.     * Redis configuration variables @appendonly@ and @appendfsync@ are not supported on Redis version 2.8.22 and later.
ccCacheNodeType :: Lens' CacheCluster (Maybe Text)
ccCacheNodeType = lens _ccCacheNodeType (\s a -> s {_ccCacheNodeType = a})

-- | The date the auth token was last modified
ccAuthTokenLastModifiedDate :: Lens' CacheCluster (Maybe UTCTime)
ccAuthTokenLastModifiedDate = lens _ccAuthTokenLastModifiedDate (\s a -> s {_ccAuthTokenLastModifiedDate = a}) . mapping _Time

-- | The URL of the web page where you can download the latest ElastiCache client library.
ccClientDownloadLandingPage :: Lens' CacheCluster (Maybe Text)
ccClientDownloadLandingPage = lens _ccClientDownloadLandingPage (\s a -> s {_ccClientDownloadLandingPage = a})

-- | The name of the cache engine (@memcached@ or @redis@ ) to be used for this cluster.
ccEngine :: Lens' CacheCluster (Maybe Text)
ccEngine = lens _ccEngine (\s a -> s {_ccEngine = a})

-- | The outpost ARN in which the cache cluster is created.
ccPreferredOutpostARN :: Lens' CacheCluster (Maybe Text)
ccPreferredOutpostARN = lens _ccPreferredOutpostARN (\s a -> s {_ccPreferredOutpostARN = a})

-- | A flag that enables using an @AuthToken@ (password) when issuing Redis commands. Default: @false@
ccAuthTokenEnabled :: Lens' CacheCluster (Maybe Bool)
ccAuthTokenEnabled = lens _ccAuthTokenEnabled (\s a -> s {_ccAuthTokenEnabled = a})

-- | Undocumented member.
ccPendingModifiedValues :: Lens' CacheCluster (Maybe PendingModifiedValues)
ccPendingModifiedValues = lens _ccPendingModifiedValues (\s a -> s {_ccPendingModifiedValues = a})

-- | Represents a Memcached cluster endpoint which can be used by an application to connect to any node in the cluster. The configuration endpoint will always have @.cfg@ in it. Example: @mem-3.9dvc4r/.cfg/ .usw2.cache.amazonaws.com:11211@
ccConfigurationEndpoint :: Lens' CacheCluster (Maybe Endpoint)
ccConfigurationEndpoint = lens _ccConfigurationEndpoint (\s a -> s {_ccConfigurationEndpoint = a})

-- | A flag that enables in-transit encryption when set to @true@ . You cannot modify the value of @TransitEncryptionEnabled@ after the cluster is created. To enable in-transit encryption on a cluster you must set @TransitEncryptionEnabled@ to @true@ when you create a cluster. __Required:__ Only available when creating a replication group in an Amazon VPC using redis version @3.2.6@ , @4.x@ or later. Default: @false@
ccTransitEncryptionEnabled :: Lens' CacheCluster (Maybe Bool)
ccTransitEncryptionEnabled = lens _ccTransitEncryptionEnabled (\s a -> s {_ccTransitEncryptionEnabled = a})

-- | This parameter is currently disabled.
ccAutoMinorVersionUpgrade :: Lens' CacheCluster (Maybe Bool)
ccAutoMinorVersionUpgrade = lens _ccAutoMinorVersionUpgrade (\s a -> s {_ccAutoMinorVersionUpgrade = a})

-- | The current state of this cluster, one of the following values: @available@ , @creating@ , @deleted@ , @deleting@ , @incompatible-network@ , @modifying@ , @rebooting cluster nodes@ , @restore-failed@ , or @snapshotting@ .
ccCacheClusterStatus :: Lens' CacheCluster (Maybe Text)
ccCacheClusterStatus = lens _ccCacheClusterStatus (\s a -> s {_ccCacheClusterStatus = a})

instance FromXML CacheCluster where
  parseXML x =
    CacheCluster'
      <$> ( x .@? "CacheNodes" .!@ mempty
              >>= may (parseXMLList "CacheNode")
          )
      <*> (x .@? "CacheClusterCreateTime")
      <*> (x .@? "NumCacheNodes")
      <*> ( x .@? "CacheSecurityGroups" .!@ mempty
              >>= may (parseXMLList "CacheSecurityGroup")
          )
      <*> (x .@? "ReplicationGroupId")
      <*> (x .@? "CacheClusterId")
      <*> (x .@? "SnapshotWindow")
      <*> (x .@? "ARN")
      <*> (x .@? "NotificationConfiguration")
      <*> (x .@? "SnapshotRetentionLimit")
      <*> (x .@? "CacheParameterGroup")
      <*> ( x .@? "SecurityGroups" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "PreferredAvailabilityZone")
      <*> (x .@? "AtRestEncryptionEnabled")
      <*> (x .@? "CacheSubnetGroupName")
      <*> (x .@? "EngineVersion")
      <*> (x .@? "PreferredMaintenanceWindow")
      <*> (x .@? "CacheNodeType")
      <*> (x .@? "AuthTokenLastModifiedDate")
      <*> (x .@? "ClientDownloadLandingPage")
      <*> (x .@? "Engine")
      <*> (x .@? "PreferredOutpostArn")
      <*> (x .@? "AuthTokenEnabled")
      <*> (x .@? "PendingModifiedValues")
      <*> (x .@? "ConfigurationEndpoint")
      <*> (x .@? "TransitEncryptionEnabled")
      <*> (x .@? "AutoMinorVersionUpgrade")
      <*> (x .@? "CacheClusterStatus")

instance Hashable CacheCluster

instance NFData CacheCluster
