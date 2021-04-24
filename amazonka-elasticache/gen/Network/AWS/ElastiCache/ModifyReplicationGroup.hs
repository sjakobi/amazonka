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
-- Module      : Network.AWS.ElastiCache.ModifyReplicationGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the settings for a replication group.
--
--
--     * <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/scaling-redis-cluster-mode-enabled.html Scaling for Amazon ElastiCache for Redis (cluster mode enabled)> in the ElastiCache User Guide
--
--     * <https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyReplicationGroupShardConfiguration.html ModifyReplicationGroupShardConfiguration> in the ElastiCache API Reference
module Network.AWS.ElastiCache.ModifyReplicationGroup
  ( -- * Creating a Request
    modifyReplicationGroup,
    ModifyReplicationGroup,

    -- * Request Lenses
    mrgSecurityGroupIds,
    mrgAutomaticFailoverEnabled,
    mrgAuthTokenUpdateStrategy,
    mrgCacheSecurityGroupNames,
    mrgPrimaryClusterId,
    mrgSnapshotWindow,
    mrgNotificationTopicStatus,
    mrgUserGroupIdsToRemove,
    mrgReplicationGroupDescription,
    mrgCacheParameterGroupName,
    mrgSnapshotRetentionLimit,
    mrgNodeGroupId,
    mrgUserGroupIdsToAdd,
    mrgMultiAZEnabled,
    mrgSnapshottingClusterId,
    mrgEngineVersion,
    mrgPreferredMaintenanceWindow,
    mrgCacheNodeType,
    mrgNotificationTopicARN,
    mrgAuthToken,
    mrgRemoveUserGroups,
    mrgApplyImmediately,
    mrgAutoMinorVersionUpgrade,
    mrgReplicationGroupId,

    -- * Destructuring the Response
    modifyReplicationGroupResponse,
    ModifyReplicationGroupResponse,

    -- * Response Lenses
    mrgrrsReplicationGroup,
    mrgrrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @ModifyReplicationGroups@ operation.
--
--
--
-- /See:/ 'modifyReplicationGroup' smart constructor.
data ModifyReplicationGroup = ModifyReplicationGroup'
  { _mrgSecurityGroupIds ::
      !(Maybe [Text]),
    _mrgAutomaticFailoverEnabled ::
      !(Maybe Bool),
    _mrgAuthTokenUpdateStrategy ::
      !( Maybe
           AuthTokenUpdateStrategyType
       ),
    _mrgCacheSecurityGroupNames ::
      !(Maybe [Text]),
    _mrgPrimaryClusterId ::
      !(Maybe Text),
    _mrgSnapshotWindow ::
      !(Maybe Text),
    _mrgNotificationTopicStatus ::
      !(Maybe Text),
    _mrgUserGroupIdsToRemove ::
      !(Maybe [Text]),
    _mrgReplicationGroupDescription ::
      !(Maybe Text),
    _mrgCacheParameterGroupName ::
      !(Maybe Text),
    _mrgSnapshotRetentionLimit ::
      !(Maybe Int),
    _mrgNodeGroupId ::
      !(Maybe Text),
    _mrgUserGroupIdsToAdd ::
      !(Maybe [Text]),
    _mrgMultiAZEnabled ::
      !(Maybe Bool),
    _mrgSnapshottingClusterId ::
      !(Maybe Text),
    _mrgEngineVersion ::
      !(Maybe Text),
    _mrgPreferredMaintenanceWindow ::
      !(Maybe Text),
    _mrgCacheNodeType ::
      !(Maybe Text),
    _mrgNotificationTopicARN ::
      !(Maybe Text),
    _mrgAuthToken ::
      !(Maybe Text),
    _mrgRemoveUserGroups ::
      !(Maybe Bool),
    _mrgApplyImmediately ::
      !(Maybe Bool),
    _mrgAutoMinorVersionUpgrade ::
      !(Maybe Bool),
    _mrgReplicationGroupId ::
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

-- | Creates a value of 'ModifyReplicationGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrgSecurityGroupIds' - Specifies the VPC Security Groups associated with the clusters in the replication group. This parameter can be used only with replication group containing clusters running in an Amazon Virtual Private Cloud (Amazon VPC).
--
-- * 'mrgAutomaticFailoverEnabled' - Determines whether a read replica is automatically promoted to read/write primary if the existing primary encounters a failure. Valid values: @true@ | @false@
--
-- * 'mrgAuthTokenUpdateStrategy' - Specifies the strategy to use to update the AUTH token. This parameter must be specified with the @auth-token@ parameter. Possible values:     * Rotate     * Set For more information, see <http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/auth.html Authenticating Users with Redis AUTH>
--
-- * 'mrgCacheSecurityGroupNames' - A list of cache security group names to authorize for the clusters in this replication group. This change is asynchronously applied as soon as possible. This parameter can be used only with replication group containing clusters running outside of an Amazon Virtual Private Cloud (Amazon VPC). Constraints: Must contain no more than 255 alphanumeric characters. Must not be @Default@ .
--
-- * 'mrgPrimaryClusterId' - For replication groups with a single primary, if this parameter is specified, ElastiCache promotes the specified cluster in the specified replication group to the primary role. The nodes of all other clusters in the replication group are read replicas.
--
-- * 'mrgSnapshotWindow' - The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of the node group (shard) specified by @SnapshottingClusterId@ . Example: @05:00-09:00@  If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.
--
-- * 'mrgNotificationTopicStatus' - The status of the Amazon SNS notification topic for the replication group. Notifications are sent only if the status is @active@ . Valid values: @active@ | @inactive@
--
-- * 'mrgUserGroupIdsToRemove' - A list of users groups to remove, meaning the users in the group no longer can access thereplication group.
--
-- * 'mrgReplicationGroupDescription' - A description for the replication group. Maximum length is 255 characters.
--
-- * 'mrgCacheParameterGroupName' - The name of the cache parameter group to apply to all of the clusters in this replication group. This change is asynchronously applied as soon as possible for parameters when the @ApplyImmediately@ parameter is specified as @true@ for this request.
--
-- * 'mrgSnapshotRetentionLimit' - The number of days for which ElastiCache retains automatic node group (shard) snapshots before deleting them. For example, if you set @SnapshotRetentionLimit@ to 5, a snapshot that was taken today is retained for 5 days before being deleted. __Important__ If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.
--
-- * 'mrgNodeGroupId' - Deprecated. This parameter is not used.
--
-- * 'mrgUserGroupIdsToAdd' - A list of user group IDs.
--
-- * 'mrgMultiAZEnabled' - A flag indicating if you have Multi-AZ enabled to enhance fault tolerance. For more information, see <http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html Minimizing Downtime: Multi-AZ> .
--
-- * 'mrgSnapshottingClusterId' - The cluster ID that is used as the daily snapshot source for the replication group. This parameter cannot be set for Redis (cluster mode enabled) replication groups.
--
-- * 'mrgEngineVersion' - The upgraded version of the cache engine to be run on the clusters in the replication group. __Important:__ You can upgrade to a newer engine version (see <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement Selecting a Cache Engine and Version> ), but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing replication group and create it anew with the earlier engine version.
--
-- * 'mrgPreferredMaintenanceWindow' - Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for @ddd@ are:     * @sun@      * @mon@      * @tue@      * @wed@      * @thu@      * @fri@      * @sat@  Example: @sun:23:00-mon:01:30@
--
-- * 'mrgCacheNodeType' - A valid cache node type that you want to scale this replication group to.
--
-- * 'mrgNotificationTopicARN' - The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.
--
-- * 'mrgAuthToken' - Reserved parameter. The password used to access a password protected server. This parameter must be specified with the @auth-token-update-strategy @ parameter. Password constraints:     * Must be only printable ASCII characters     * Must be at least 16 characters and no more than 128 characters in length     * Cannot contain any of the following characters: '/', '"', or '@', '%' For more information, see AUTH password at <http://redis.io/commands/AUTH AUTH> .
--
-- * 'mrgRemoveUserGroups' - Removes the user groups that can access this replication group.
--
-- * 'mrgApplyImmediately' - If @true@ , this parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible, regardless of the @PreferredMaintenanceWindow@ setting for the replication group. If @false@ , changes to the nodes in the replication group are applied on the next maintenance reboot, or the next failure reboot, whichever occurs first. Valid values: @true@ | @false@  Default: @false@
--
-- * 'mrgAutoMinorVersionUpgrade' - This parameter is currently disabled.
--
-- * 'mrgReplicationGroupId' - The identifier of the replication group to modify.
modifyReplicationGroup ::
  -- | 'mrgReplicationGroupId'
  Text ->
  ModifyReplicationGroup
modifyReplicationGroup pReplicationGroupId_ =
  ModifyReplicationGroup'
    { _mrgSecurityGroupIds =
        Nothing,
      _mrgAutomaticFailoverEnabled = Nothing,
      _mrgAuthTokenUpdateStrategy = Nothing,
      _mrgCacheSecurityGroupNames = Nothing,
      _mrgPrimaryClusterId = Nothing,
      _mrgSnapshotWindow = Nothing,
      _mrgNotificationTopicStatus = Nothing,
      _mrgUserGroupIdsToRemove = Nothing,
      _mrgReplicationGroupDescription = Nothing,
      _mrgCacheParameterGroupName = Nothing,
      _mrgSnapshotRetentionLimit = Nothing,
      _mrgNodeGroupId = Nothing,
      _mrgUserGroupIdsToAdd = Nothing,
      _mrgMultiAZEnabled = Nothing,
      _mrgSnapshottingClusterId = Nothing,
      _mrgEngineVersion = Nothing,
      _mrgPreferredMaintenanceWindow = Nothing,
      _mrgCacheNodeType = Nothing,
      _mrgNotificationTopicARN = Nothing,
      _mrgAuthToken = Nothing,
      _mrgRemoveUserGroups = Nothing,
      _mrgApplyImmediately = Nothing,
      _mrgAutoMinorVersionUpgrade = Nothing,
      _mrgReplicationGroupId = pReplicationGroupId_
    }

-- | Specifies the VPC Security Groups associated with the clusters in the replication group. This parameter can be used only with replication group containing clusters running in an Amazon Virtual Private Cloud (Amazon VPC).
mrgSecurityGroupIds :: Lens' ModifyReplicationGroup [Text]
mrgSecurityGroupIds = lens _mrgSecurityGroupIds (\s a -> s {_mrgSecurityGroupIds = a}) . _Default . _Coerce

-- | Determines whether a read replica is automatically promoted to read/write primary if the existing primary encounters a failure. Valid values: @true@ | @false@
mrgAutomaticFailoverEnabled :: Lens' ModifyReplicationGroup (Maybe Bool)
mrgAutomaticFailoverEnabled = lens _mrgAutomaticFailoverEnabled (\s a -> s {_mrgAutomaticFailoverEnabled = a})

-- | Specifies the strategy to use to update the AUTH token. This parameter must be specified with the @auth-token@ parameter. Possible values:     * Rotate     * Set For more information, see <http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/auth.html Authenticating Users with Redis AUTH>
mrgAuthTokenUpdateStrategy :: Lens' ModifyReplicationGroup (Maybe AuthTokenUpdateStrategyType)
mrgAuthTokenUpdateStrategy = lens _mrgAuthTokenUpdateStrategy (\s a -> s {_mrgAuthTokenUpdateStrategy = a})

-- | A list of cache security group names to authorize for the clusters in this replication group. This change is asynchronously applied as soon as possible. This parameter can be used only with replication group containing clusters running outside of an Amazon Virtual Private Cloud (Amazon VPC). Constraints: Must contain no more than 255 alphanumeric characters. Must not be @Default@ .
mrgCacheSecurityGroupNames :: Lens' ModifyReplicationGroup [Text]
mrgCacheSecurityGroupNames = lens _mrgCacheSecurityGroupNames (\s a -> s {_mrgCacheSecurityGroupNames = a}) . _Default . _Coerce

-- | For replication groups with a single primary, if this parameter is specified, ElastiCache promotes the specified cluster in the specified replication group to the primary role. The nodes of all other clusters in the replication group are read replicas.
mrgPrimaryClusterId :: Lens' ModifyReplicationGroup (Maybe Text)
mrgPrimaryClusterId = lens _mrgPrimaryClusterId (\s a -> s {_mrgPrimaryClusterId = a})

-- | The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of the node group (shard) specified by @SnapshottingClusterId@ . Example: @05:00-09:00@  If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.
mrgSnapshotWindow :: Lens' ModifyReplicationGroup (Maybe Text)
mrgSnapshotWindow = lens _mrgSnapshotWindow (\s a -> s {_mrgSnapshotWindow = a})

-- | The status of the Amazon SNS notification topic for the replication group. Notifications are sent only if the status is @active@ . Valid values: @active@ | @inactive@
mrgNotificationTopicStatus :: Lens' ModifyReplicationGroup (Maybe Text)
mrgNotificationTopicStatus = lens _mrgNotificationTopicStatus (\s a -> s {_mrgNotificationTopicStatus = a})

-- | A list of users groups to remove, meaning the users in the group no longer can access thereplication group.
mrgUserGroupIdsToRemove :: Lens' ModifyReplicationGroup [Text]
mrgUserGroupIdsToRemove = lens _mrgUserGroupIdsToRemove (\s a -> s {_mrgUserGroupIdsToRemove = a}) . _Default . _Coerce

-- | A description for the replication group. Maximum length is 255 characters.
mrgReplicationGroupDescription :: Lens' ModifyReplicationGroup (Maybe Text)
mrgReplicationGroupDescription = lens _mrgReplicationGroupDescription (\s a -> s {_mrgReplicationGroupDescription = a})

-- | The name of the cache parameter group to apply to all of the clusters in this replication group. This change is asynchronously applied as soon as possible for parameters when the @ApplyImmediately@ parameter is specified as @true@ for this request.
mrgCacheParameterGroupName :: Lens' ModifyReplicationGroup (Maybe Text)
mrgCacheParameterGroupName = lens _mrgCacheParameterGroupName (\s a -> s {_mrgCacheParameterGroupName = a})

-- | The number of days for which ElastiCache retains automatic node group (shard) snapshots before deleting them. For example, if you set @SnapshotRetentionLimit@ to 5, a snapshot that was taken today is retained for 5 days before being deleted. __Important__ If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.
mrgSnapshotRetentionLimit :: Lens' ModifyReplicationGroup (Maybe Int)
mrgSnapshotRetentionLimit = lens _mrgSnapshotRetentionLimit (\s a -> s {_mrgSnapshotRetentionLimit = a})

-- | Deprecated. This parameter is not used.
mrgNodeGroupId :: Lens' ModifyReplicationGroup (Maybe Text)
mrgNodeGroupId = lens _mrgNodeGroupId (\s a -> s {_mrgNodeGroupId = a})

-- | A list of user group IDs.
mrgUserGroupIdsToAdd :: Lens' ModifyReplicationGroup [Text]
mrgUserGroupIdsToAdd = lens _mrgUserGroupIdsToAdd (\s a -> s {_mrgUserGroupIdsToAdd = a}) . _Default . _Coerce

-- | A flag indicating if you have Multi-AZ enabled to enhance fault tolerance. For more information, see <http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html Minimizing Downtime: Multi-AZ> .
mrgMultiAZEnabled :: Lens' ModifyReplicationGroup (Maybe Bool)
mrgMultiAZEnabled = lens _mrgMultiAZEnabled (\s a -> s {_mrgMultiAZEnabled = a})

-- | The cluster ID that is used as the daily snapshot source for the replication group. This parameter cannot be set for Redis (cluster mode enabled) replication groups.
mrgSnapshottingClusterId :: Lens' ModifyReplicationGroup (Maybe Text)
mrgSnapshottingClusterId = lens _mrgSnapshottingClusterId (\s a -> s {_mrgSnapshottingClusterId = a})

-- | The upgraded version of the cache engine to be run on the clusters in the replication group. __Important:__ You can upgrade to a newer engine version (see <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement Selecting a Cache Engine and Version> ), but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing replication group and create it anew with the earlier engine version.
mrgEngineVersion :: Lens' ModifyReplicationGroup (Maybe Text)
mrgEngineVersion = lens _mrgEngineVersion (\s a -> s {_mrgEngineVersion = a})

-- | Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for @ddd@ are:     * @sun@      * @mon@      * @tue@      * @wed@      * @thu@      * @fri@      * @sat@  Example: @sun:23:00-mon:01:30@
mrgPreferredMaintenanceWindow :: Lens' ModifyReplicationGroup (Maybe Text)
mrgPreferredMaintenanceWindow = lens _mrgPreferredMaintenanceWindow (\s a -> s {_mrgPreferredMaintenanceWindow = a})

-- | A valid cache node type that you want to scale this replication group to.
mrgCacheNodeType :: Lens' ModifyReplicationGroup (Maybe Text)
mrgCacheNodeType = lens _mrgCacheNodeType (\s a -> s {_mrgCacheNodeType = a})

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.
mrgNotificationTopicARN :: Lens' ModifyReplicationGroup (Maybe Text)
mrgNotificationTopicARN = lens _mrgNotificationTopicARN (\s a -> s {_mrgNotificationTopicARN = a})

-- | Reserved parameter. The password used to access a password protected server. This parameter must be specified with the @auth-token-update-strategy @ parameter. Password constraints:     * Must be only printable ASCII characters     * Must be at least 16 characters and no more than 128 characters in length     * Cannot contain any of the following characters: '/', '"', or '@', '%' For more information, see AUTH password at <http://redis.io/commands/AUTH AUTH> .
mrgAuthToken :: Lens' ModifyReplicationGroup (Maybe Text)
mrgAuthToken = lens _mrgAuthToken (\s a -> s {_mrgAuthToken = a})

-- | Removes the user groups that can access this replication group.
mrgRemoveUserGroups :: Lens' ModifyReplicationGroup (Maybe Bool)
mrgRemoveUserGroups = lens _mrgRemoveUserGroups (\s a -> s {_mrgRemoveUserGroups = a})

-- | If @true@ , this parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible, regardless of the @PreferredMaintenanceWindow@ setting for the replication group. If @false@ , changes to the nodes in the replication group are applied on the next maintenance reboot, or the next failure reboot, whichever occurs first. Valid values: @true@ | @false@  Default: @false@
mrgApplyImmediately :: Lens' ModifyReplicationGroup (Maybe Bool)
mrgApplyImmediately = lens _mrgApplyImmediately (\s a -> s {_mrgApplyImmediately = a})

-- | This parameter is currently disabled.
mrgAutoMinorVersionUpgrade :: Lens' ModifyReplicationGroup (Maybe Bool)
mrgAutoMinorVersionUpgrade = lens _mrgAutoMinorVersionUpgrade (\s a -> s {_mrgAutoMinorVersionUpgrade = a})

-- | The identifier of the replication group to modify.
mrgReplicationGroupId :: Lens' ModifyReplicationGroup Text
mrgReplicationGroupId = lens _mrgReplicationGroupId (\s a -> s {_mrgReplicationGroupId = a})

instance AWSRequest ModifyReplicationGroup where
  type
    Rs ModifyReplicationGroup =
      ModifyReplicationGroupResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "ModifyReplicationGroupResult"
      ( \s h x ->
          ModifyReplicationGroupResponse'
            <$> (x .@? "ReplicationGroup") <*> (pure (fromEnum s))
      )

instance Hashable ModifyReplicationGroup

instance NFData ModifyReplicationGroup

instance ToHeaders ModifyReplicationGroup where
  toHeaders = const mempty

instance ToPath ModifyReplicationGroup where
  toPath = const "/"

instance ToQuery ModifyReplicationGroup where
  toQuery ModifyReplicationGroup' {..} =
    mconcat
      [ "Action"
          =: ("ModifyReplicationGroup" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "SecurityGroupIds"
          =: toQuery
            ( toQueryList "SecurityGroupId"
                <$> _mrgSecurityGroupIds
            ),
        "AutomaticFailoverEnabled"
          =: _mrgAutomaticFailoverEnabled,
        "AuthTokenUpdateStrategy"
          =: _mrgAuthTokenUpdateStrategy,
        "CacheSecurityGroupNames"
          =: toQuery
            ( toQueryList "CacheSecurityGroupName"
                <$> _mrgCacheSecurityGroupNames
            ),
        "PrimaryClusterId" =: _mrgPrimaryClusterId,
        "SnapshotWindow" =: _mrgSnapshotWindow,
        "NotificationTopicStatus"
          =: _mrgNotificationTopicStatus,
        "UserGroupIdsToRemove"
          =: toQuery
            (toQueryList "member" <$> _mrgUserGroupIdsToRemove),
        "ReplicationGroupDescription"
          =: _mrgReplicationGroupDescription,
        "CacheParameterGroupName"
          =: _mrgCacheParameterGroupName,
        "SnapshotRetentionLimit"
          =: _mrgSnapshotRetentionLimit,
        "NodeGroupId" =: _mrgNodeGroupId,
        "UserGroupIdsToAdd"
          =: toQuery
            (toQueryList "member" <$> _mrgUserGroupIdsToAdd),
        "MultiAZEnabled" =: _mrgMultiAZEnabled,
        "SnapshottingClusterId" =: _mrgSnapshottingClusterId,
        "EngineVersion" =: _mrgEngineVersion,
        "PreferredMaintenanceWindow"
          =: _mrgPreferredMaintenanceWindow,
        "CacheNodeType" =: _mrgCacheNodeType,
        "NotificationTopicArn" =: _mrgNotificationTopicARN,
        "AuthToken" =: _mrgAuthToken,
        "RemoveUserGroups" =: _mrgRemoveUserGroups,
        "ApplyImmediately" =: _mrgApplyImmediately,
        "AutoMinorVersionUpgrade"
          =: _mrgAutoMinorVersionUpgrade,
        "ReplicationGroupId" =: _mrgReplicationGroupId
      ]

-- | /See:/ 'modifyReplicationGroupResponse' smart constructor.
data ModifyReplicationGroupResponse = ModifyReplicationGroupResponse'
  { _mrgrrsReplicationGroup ::
      !( Maybe
           ReplicationGroup
       ),
    _mrgrrsResponseStatus ::
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

-- | Creates a value of 'ModifyReplicationGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrgrrsReplicationGroup' - Undocumented member.
--
-- * 'mrgrrsResponseStatus' - -- | The response status code.
modifyReplicationGroupResponse ::
  -- | 'mrgrrsResponseStatus'
  Int ->
  ModifyReplicationGroupResponse
modifyReplicationGroupResponse pResponseStatus_ =
  ModifyReplicationGroupResponse'
    { _mrgrrsReplicationGroup =
        Nothing,
      _mrgrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
mrgrrsReplicationGroup :: Lens' ModifyReplicationGroupResponse (Maybe ReplicationGroup)
mrgrrsReplicationGroup = lens _mrgrrsReplicationGroup (\s a -> s {_mrgrrsReplicationGroup = a})

-- | -- | The response status code.
mrgrrsResponseStatus :: Lens' ModifyReplicationGroupResponse Int
mrgrrsResponseStatus = lens _mrgrrsResponseStatus (\s a -> s {_mrgrrsResponseStatus = a})

instance NFData ModifyReplicationGroupResponse
