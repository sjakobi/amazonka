{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.UpdateAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.UpdateAction where

import Network.AWS.ElastiCache.Types.CacheNodeUpdateStatus
import Network.AWS.ElastiCache.Types.NodeGroupUpdateStatus
import Network.AWS.ElastiCache.Types.ServiceUpdateSeverity
import Network.AWS.ElastiCache.Types.ServiceUpdateStatus
import Network.AWS.ElastiCache.Types.ServiceUpdateType
import Network.AWS.ElastiCache.Types.SlaMet
import Network.AWS.ElastiCache.Types.UpdateActionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The status of the service update for a specific replication group
--
--
--
-- /See:/ 'updateAction' smart constructor.
data UpdateAction = UpdateAction'
  { _uaServiceUpdateSeverity ::
      !(Maybe ServiceUpdateSeverity),
    _uaServiceUpdateReleaseDate ::
      !(Maybe ISO8601),
    _uaReplicationGroupId :: !(Maybe Text),
    _uaUpdateActionStatus ::
      !(Maybe UpdateActionStatus),
    _uaCacheClusterId :: !(Maybe Text),
    _uaServiceUpdateStatus ::
      !(Maybe ServiceUpdateStatus),
    _uaSlaMet :: !(Maybe SlaMet),
    _uaUpdateActionAvailableDate ::
      !(Maybe ISO8601),
    _uaNodeGroupUpdateStatus ::
      !(Maybe [NodeGroupUpdateStatus]),
    _uaServiceUpdateRecommendedApplyByDate ::
      !(Maybe ISO8601),
    _uaServiceUpdateType ::
      !(Maybe ServiceUpdateType),
    _uaCacheNodeUpdateStatus ::
      !(Maybe [CacheNodeUpdateStatus]),
    _uaNodesUpdated :: !(Maybe Text),
    _uaEstimatedUpdateTime :: !(Maybe Text),
    _uaUpdateActionStatusModifiedDate ::
      !(Maybe ISO8601),
    _uaEngine :: !(Maybe Text),
    _uaServiceUpdateName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaServiceUpdateSeverity' - The severity of the service update
--
-- * 'uaServiceUpdateReleaseDate' - The date the update is first available
--
-- * 'uaReplicationGroupId' - The ID of the replication group
--
-- * 'uaUpdateActionStatus' - The status of the update action
--
-- * 'uaCacheClusterId' - The ID of the cache cluster
--
-- * 'uaServiceUpdateStatus' - The status of the service update
--
-- * 'uaSlaMet' - If yes, all nodes in the replication group have been updated by the recommended apply-by date. If no, at least one node in the replication group have not been updated by the recommended apply-by date. If N/A, the replication group was created after the recommended apply-by date.
--
-- * 'uaUpdateActionAvailableDate' - The date that the service update is available to a replication group
--
-- * 'uaNodeGroupUpdateStatus' - The status of the service update on the node group
--
-- * 'uaServiceUpdateRecommendedApplyByDate' - The recommended date to apply the service update to ensure compliance. For information on compliance, see <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/elasticache-compliance.html#elasticache-compliance-self-service Self-Service Security Updates for Compliance> .
--
-- * 'uaServiceUpdateType' - Reflects the nature of the service update
--
-- * 'uaCacheNodeUpdateStatus' - The status of the service update on the cache node
--
-- * 'uaNodesUpdated' - The progress of the service update on the replication group
--
-- * 'uaEstimatedUpdateTime' - The estimated length of time for the update to complete
--
-- * 'uaUpdateActionStatusModifiedDate' - The date when the UpdateActionStatus was last modified
--
-- * 'uaEngine' - The Elasticache engine to which the update applies. Either Redis or Memcached
--
-- * 'uaServiceUpdateName' - The unique ID of the service update
updateAction ::
  UpdateAction
updateAction =
  UpdateAction'
    { _uaServiceUpdateSeverity = Nothing,
      _uaServiceUpdateReleaseDate = Nothing,
      _uaReplicationGroupId = Nothing,
      _uaUpdateActionStatus = Nothing,
      _uaCacheClusterId = Nothing,
      _uaServiceUpdateStatus = Nothing,
      _uaSlaMet = Nothing,
      _uaUpdateActionAvailableDate = Nothing,
      _uaNodeGroupUpdateStatus = Nothing,
      _uaServiceUpdateRecommendedApplyByDate = Nothing,
      _uaServiceUpdateType = Nothing,
      _uaCacheNodeUpdateStatus = Nothing,
      _uaNodesUpdated = Nothing,
      _uaEstimatedUpdateTime = Nothing,
      _uaUpdateActionStatusModifiedDate = Nothing,
      _uaEngine = Nothing,
      _uaServiceUpdateName = Nothing
    }

-- | The severity of the service update
uaServiceUpdateSeverity :: Lens' UpdateAction (Maybe ServiceUpdateSeverity)
uaServiceUpdateSeverity = lens _uaServiceUpdateSeverity (\s a -> s {_uaServiceUpdateSeverity = a})

-- | The date the update is first available
uaServiceUpdateReleaseDate :: Lens' UpdateAction (Maybe UTCTime)
uaServiceUpdateReleaseDate = lens _uaServiceUpdateReleaseDate (\s a -> s {_uaServiceUpdateReleaseDate = a}) . mapping _Time

-- | The ID of the replication group
uaReplicationGroupId :: Lens' UpdateAction (Maybe Text)
uaReplicationGroupId = lens _uaReplicationGroupId (\s a -> s {_uaReplicationGroupId = a})

-- | The status of the update action
uaUpdateActionStatus :: Lens' UpdateAction (Maybe UpdateActionStatus)
uaUpdateActionStatus = lens _uaUpdateActionStatus (\s a -> s {_uaUpdateActionStatus = a})

-- | The ID of the cache cluster
uaCacheClusterId :: Lens' UpdateAction (Maybe Text)
uaCacheClusterId = lens _uaCacheClusterId (\s a -> s {_uaCacheClusterId = a})

-- | The status of the service update
uaServiceUpdateStatus :: Lens' UpdateAction (Maybe ServiceUpdateStatus)
uaServiceUpdateStatus = lens _uaServiceUpdateStatus (\s a -> s {_uaServiceUpdateStatus = a})

-- | If yes, all nodes in the replication group have been updated by the recommended apply-by date. If no, at least one node in the replication group have not been updated by the recommended apply-by date. If N/A, the replication group was created after the recommended apply-by date.
uaSlaMet :: Lens' UpdateAction (Maybe SlaMet)
uaSlaMet = lens _uaSlaMet (\s a -> s {_uaSlaMet = a})

-- | The date that the service update is available to a replication group
uaUpdateActionAvailableDate :: Lens' UpdateAction (Maybe UTCTime)
uaUpdateActionAvailableDate = lens _uaUpdateActionAvailableDate (\s a -> s {_uaUpdateActionAvailableDate = a}) . mapping _Time

-- | The status of the service update on the node group
uaNodeGroupUpdateStatus :: Lens' UpdateAction [NodeGroupUpdateStatus]
uaNodeGroupUpdateStatus = lens _uaNodeGroupUpdateStatus (\s a -> s {_uaNodeGroupUpdateStatus = a}) . _Default . _Coerce

-- | The recommended date to apply the service update to ensure compliance. For information on compliance, see <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/elasticache-compliance.html#elasticache-compliance-self-service Self-Service Security Updates for Compliance> .
uaServiceUpdateRecommendedApplyByDate :: Lens' UpdateAction (Maybe UTCTime)
uaServiceUpdateRecommendedApplyByDate = lens _uaServiceUpdateRecommendedApplyByDate (\s a -> s {_uaServiceUpdateRecommendedApplyByDate = a}) . mapping _Time

-- | Reflects the nature of the service update
uaServiceUpdateType :: Lens' UpdateAction (Maybe ServiceUpdateType)
uaServiceUpdateType = lens _uaServiceUpdateType (\s a -> s {_uaServiceUpdateType = a})

-- | The status of the service update on the cache node
uaCacheNodeUpdateStatus :: Lens' UpdateAction [CacheNodeUpdateStatus]
uaCacheNodeUpdateStatus = lens _uaCacheNodeUpdateStatus (\s a -> s {_uaCacheNodeUpdateStatus = a}) . _Default . _Coerce

-- | The progress of the service update on the replication group
uaNodesUpdated :: Lens' UpdateAction (Maybe Text)
uaNodesUpdated = lens _uaNodesUpdated (\s a -> s {_uaNodesUpdated = a})

-- | The estimated length of time for the update to complete
uaEstimatedUpdateTime :: Lens' UpdateAction (Maybe Text)
uaEstimatedUpdateTime = lens _uaEstimatedUpdateTime (\s a -> s {_uaEstimatedUpdateTime = a})

-- | The date when the UpdateActionStatus was last modified
uaUpdateActionStatusModifiedDate :: Lens' UpdateAction (Maybe UTCTime)
uaUpdateActionStatusModifiedDate = lens _uaUpdateActionStatusModifiedDate (\s a -> s {_uaUpdateActionStatusModifiedDate = a}) . mapping _Time

-- | The Elasticache engine to which the update applies. Either Redis or Memcached
uaEngine :: Lens' UpdateAction (Maybe Text)
uaEngine = lens _uaEngine (\s a -> s {_uaEngine = a})

-- | The unique ID of the service update
uaServiceUpdateName :: Lens' UpdateAction (Maybe Text)
uaServiceUpdateName = lens _uaServiceUpdateName (\s a -> s {_uaServiceUpdateName = a})

instance FromXML UpdateAction where
  parseXML x =
    UpdateAction'
      <$> (x .@? "ServiceUpdateSeverity")
      <*> (x .@? "ServiceUpdateReleaseDate")
      <*> (x .@? "ReplicationGroupId")
      <*> (x .@? "UpdateActionStatus")
      <*> (x .@? "CacheClusterId")
      <*> (x .@? "ServiceUpdateStatus")
      <*> (x .@? "SlaMet")
      <*> (x .@? "UpdateActionAvailableDate")
      <*> ( x .@? "NodeGroupUpdateStatus" .!@ mempty
              >>= may (parseXMLList "NodeGroupUpdateStatus")
          )
      <*> (x .@? "ServiceUpdateRecommendedApplyByDate")
      <*> (x .@? "ServiceUpdateType")
      <*> ( x .@? "CacheNodeUpdateStatus" .!@ mempty
              >>= may (parseXMLList "CacheNodeUpdateStatus")
          )
      <*> (x .@? "NodesUpdated")
      <*> (x .@? "EstimatedUpdateTime")
      <*> (x .@? "UpdateActionStatusModifiedDate")
      <*> (x .@? "Engine")
      <*> (x .@? "ServiceUpdateName")

instance Hashable UpdateAction

instance NFData UpdateAction
