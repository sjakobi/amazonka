{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.ElasticsearchClusterConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ElasticsearchClusterConfig where

import Network.AWS.ElasticSearch.Types.ESPartitionInstanceType
import Network.AWS.ElasticSearch.Types.ESWarmPartitionInstanceType
import Network.AWS.ElasticSearch.Types.ZoneAwarenessConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the configuration for the domain cluster, such as the type and number of instances.
--
--
--
-- /See:/ 'elasticsearchClusterConfig' smart constructor.
data ElasticsearchClusterConfig = ElasticsearchClusterConfig'
  { _eccZoneAwarenessConfig ::
      !( Maybe
           ZoneAwarenessConfig
       ),
    _eccDedicatedMasterCount ::
      !(Maybe Int),
    _eccWarmEnabled ::
      !(Maybe Bool),
    _eccInstanceType ::
      !( Maybe
           ESPartitionInstanceType
       ),
    _eccZoneAwarenessEnabled ::
      !(Maybe Bool),
    _eccDedicatedMasterEnabled ::
      !(Maybe Bool),
    _eccWarmCount ::
      !(Maybe Int),
    _eccDedicatedMasterType ::
      !( Maybe
           ESPartitionInstanceType
       ),
    _eccWarmType ::
      !( Maybe
           ESWarmPartitionInstanceType
       ),
    _eccInstanceCount ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ElasticsearchClusterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eccZoneAwarenessConfig' - Specifies the zone awareness configuration for a domain when zone awareness is enabled.
--
-- * 'eccDedicatedMasterCount' - Total number of dedicated master nodes, active and on standby, for the cluster.
--
-- * 'eccWarmEnabled' - True to enable warm storage.
--
-- * 'eccInstanceType' - The instance type for an Elasticsearch cluster. UltraWarm instance types are not supported for data instances.
--
-- * 'eccZoneAwarenessEnabled' - A boolean value to indicate whether zone awareness is enabled. See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness About Zone Awareness> for more information.
--
-- * 'eccDedicatedMasterEnabled' - A boolean value to indicate whether a dedicated master node is enabled. See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-dedicatedmasternodes About Dedicated Master Nodes> for more information.
--
-- * 'eccWarmCount' - The number of warm nodes in the cluster.
--
-- * 'eccDedicatedMasterType' - The instance type for a dedicated master node.
--
-- * 'eccWarmType' - The instance type for the Elasticsearch cluster's warm nodes.
--
-- * 'eccInstanceCount' - The number of instances in the specified domain cluster.
elasticsearchClusterConfig ::
  ElasticsearchClusterConfig
elasticsearchClusterConfig =
  ElasticsearchClusterConfig'
    { _eccZoneAwarenessConfig =
        Nothing,
      _eccDedicatedMasterCount = Nothing,
      _eccWarmEnabled = Nothing,
      _eccInstanceType = Nothing,
      _eccZoneAwarenessEnabled = Nothing,
      _eccDedicatedMasterEnabled = Nothing,
      _eccWarmCount = Nothing,
      _eccDedicatedMasterType = Nothing,
      _eccWarmType = Nothing,
      _eccInstanceCount = Nothing
    }

-- | Specifies the zone awareness configuration for a domain when zone awareness is enabled.
eccZoneAwarenessConfig :: Lens' ElasticsearchClusterConfig (Maybe ZoneAwarenessConfig)
eccZoneAwarenessConfig = lens _eccZoneAwarenessConfig (\s a -> s {_eccZoneAwarenessConfig = a})

-- | Total number of dedicated master nodes, active and on standby, for the cluster.
eccDedicatedMasterCount :: Lens' ElasticsearchClusterConfig (Maybe Int)
eccDedicatedMasterCount = lens _eccDedicatedMasterCount (\s a -> s {_eccDedicatedMasterCount = a})

-- | True to enable warm storage.
eccWarmEnabled :: Lens' ElasticsearchClusterConfig (Maybe Bool)
eccWarmEnabled = lens _eccWarmEnabled (\s a -> s {_eccWarmEnabled = a})

-- | The instance type for an Elasticsearch cluster. UltraWarm instance types are not supported for data instances.
eccInstanceType :: Lens' ElasticsearchClusterConfig (Maybe ESPartitionInstanceType)
eccInstanceType = lens _eccInstanceType (\s a -> s {_eccInstanceType = a})

-- | A boolean value to indicate whether zone awareness is enabled. See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness About Zone Awareness> for more information.
eccZoneAwarenessEnabled :: Lens' ElasticsearchClusterConfig (Maybe Bool)
eccZoneAwarenessEnabled = lens _eccZoneAwarenessEnabled (\s a -> s {_eccZoneAwarenessEnabled = a})

-- | A boolean value to indicate whether a dedicated master node is enabled. See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-dedicatedmasternodes About Dedicated Master Nodes> for more information.
eccDedicatedMasterEnabled :: Lens' ElasticsearchClusterConfig (Maybe Bool)
eccDedicatedMasterEnabled = lens _eccDedicatedMasterEnabled (\s a -> s {_eccDedicatedMasterEnabled = a})

-- | The number of warm nodes in the cluster.
eccWarmCount :: Lens' ElasticsearchClusterConfig (Maybe Int)
eccWarmCount = lens _eccWarmCount (\s a -> s {_eccWarmCount = a})

-- | The instance type for a dedicated master node.
eccDedicatedMasterType :: Lens' ElasticsearchClusterConfig (Maybe ESPartitionInstanceType)
eccDedicatedMasterType = lens _eccDedicatedMasterType (\s a -> s {_eccDedicatedMasterType = a})

-- | The instance type for the Elasticsearch cluster's warm nodes.
eccWarmType :: Lens' ElasticsearchClusterConfig (Maybe ESWarmPartitionInstanceType)
eccWarmType = lens _eccWarmType (\s a -> s {_eccWarmType = a})

-- | The number of instances in the specified domain cluster.
eccInstanceCount :: Lens' ElasticsearchClusterConfig (Maybe Int)
eccInstanceCount = lens _eccInstanceCount (\s a -> s {_eccInstanceCount = a})

instance FromJSON ElasticsearchClusterConfig where
  parseJSON =
    withObject
      "ElasticsearchClusterConfig"
      ( \x ->
          ElasticsearchClusterConfig'
            <$> (x .:? "ZoneAwarenessConfig")
            <*> (x .:? "DedicatedMasterCount")
            <*> (x .:? "WarmEnabled")
            <*> (x .:? "InstanceType")
            <*> (x .:? "ZoneAwarenessEnabled")
            <*> (x .:? "DedicatedMasterEnabled")
            <*> (x .:? "WarmCount")
            <*> (x .:? "DedicatedMasterType")
            <*> (x .:? "WarmType")
            <*> (x .:? "InstanceCount")
      )

instance Hashable ElasticsearchClusterConfig

instance NFData ElasticsearchClusterConfig

instance ToJSON ElasticsearchClusterConfig where
  toJSON ElasticsearchClusterConfig' {..} =
    object
      ( catMaybes
          [ ("ZoneAwarenessConfig" .=)
              <$> _eccZoneAwarenessConfig,
            ("DedicatedMasterCount" .=)
              <$> _eccDedicatedMasterCount,
            ("WarmEnabled" .=) <$> _eccWarmEnabled,
            ("InstanceType" .=) <$> _eccInstanceType,
            ("ZoneAwarenessEnabled" .=)
              <$> _eccZoneAwarenessEnabled,
            ("DedicatedMasterEnabled" .=)
              <$> _eccDedicatedMasterEnabled,
            ("WarmCount" .=) <$> _eccWarmCount,
            ("DedicatedMasterType" .=)
              <$> _eccDedicatedMasterType,
            ("WarmType" .=) <$> _eccWarmType,
            ("InstanceCount" .=) <$> _eccInstanceCount
          ]
      )
