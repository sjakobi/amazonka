{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ClusterSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ClusterSetting where

import Network.AWS.ECS.Types.ClusterSettingName
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The settings to use when creating a cluster. This parameter is used to enable CloudWatch Container Insights for a cluster.
--
--
--
-- /See:/ 'clusterSetting' smart constructor.
data ClusterSetting = ClusterSetting'
  { _csName ::
      !(Maybe ClusterSettingName),
    _csValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ClusterSetting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csName' - The name of the cluster setting. The only supported value is @containerInsights@ .
--
-- * 'csValue' - The value to set for the cluster setting. The supported values are @enabled@ and @disabled@ . If @enabled@ is specified, CloudWatch Container Insights will be enabled for the cluster, otherwise it will be disabled unless the @containerInsights@ account setting is enabled. If a cluster value is specified, it will override the @containerInsights@ value set with 'PutAccountSetting' or 'PutAccountSettingDefault' .
clusterSetting ::
  ClusterSetting
clusterSetting =
  ClusterSetting'
    { _csName = Nothing,
      _csValue = Nothing
    }

-- | The name of the cluster setting. The only supported value is @containerInsights@ .
csName :: Lens' ClusterSetting (Maybe ClusterSettingName)
csName = lens _csName (\s a -> s {_csName = a})

-- | The value to set for the cluster setting. The supported values are @enabled@ and @disabled@ . If @enabled@ is specified, CloudWatch Container Insights will be enabled for the cluster, otherwise it will be disabled unless the @containerInsights@ account setting is enabled. If a cluster value is specified, it will override the @containerInsights@ value set with 'PutAccountSetting' or 'PutAccountSettingDefault' .
csValue :: Lens' ClusterSetting (Maybe Text)
csValue = lens _csValue (\s a -> s {_csValue = a})

instance FromJSON ClusterSetting where
  parseJSON =
    withObject
      "ClusterSetting"
      ( \x ->
          ClusterSetting'
            <$> (x .:? "name") <*> (x .:? "value")
      )

instance Hashable ClusterSetting

instance NFData ClusterSetting

instance ToJSON ClusterSetting where
  toJSON ClusterSetting' {..} =
    object
      ( catMaybes
          [("name" .=) <$> _csName, ("value" .=) <$> _csValue]
      )
