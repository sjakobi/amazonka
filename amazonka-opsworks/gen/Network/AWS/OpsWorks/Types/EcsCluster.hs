{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.EcsCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.EcsCluster where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a registered Amazon ECS cluster.
--
--
--
-- /See:/ 'ecsCluster' smart constructor.
data EcsCluster = EcsCluster'
  { _ecStackId ::
      !(Maybe Text),
    _ecEcsClusterName :: !(Maybe Text),
    _ecRegisteredAt :: !(Maybe Text),
    _ecEcsClusterARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EcsCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecStackId' - The stack ID.
--
-- * 'ecEcsClusterName' - The cluster name.
--
-- * 'ecRegisteredAt' - The time and date that the cluster was registered with the stack.
--
-- * 'ecEcsClusterARN' - The cluster's ARN.
ecsCluster ::
  EcsCluster
ecsCluster =
  EcsCluster'
    { _ecStackId = Nothing,
      _ecEcsClusterName = Nothing,
      _ecRegisteredAt = Nothing,
      _ecEcsClusterARN = Nothing
    }

-- | The stack ID.
ecStackId :: Lens' EcsCluster (Maybe Text)
ecStackId = lens _ecStackId (\s a -> s {_ecStackId = a})

-- | The cluster name.
ecEcsClusterName :: Lens' EcsCluster (Maybe Text)
ecEcsClusterName = lens _ecEcsClusterName (\s a -> s {_ecEcsClusterName = a})

-- | The time and date that the cluster was registered with the stack.
ecRegisteredAt :: Lens' EcsCluster (Maybe Text)
ecRegisteredAt = lens _ecRegisteredAt (\s a -> s {_ecRegisteredAt = a})

-- | The cluster's ARN.
ecEcsClusterARN :: Lens' EcsCluster (Maybe Text)
ecEcsClusterARN = lens _ecEcsClusterARN (\s a -> s {_ecEcsClusterARN = a})

instance FromJSON EcsCluster where
  parseJSON =
    withObject
      "EcsCluster"
      ( \x ->
          EcsCluster'
            <$> (x .:? "StackId")
            <*> (x .:? "EcsClusterName")
            <*> (x .:? "RegisteredAt")
            <*> (x .:? "EcsClusterArn")
      )

instance Hashable EcsCluster

instance NFData EcsCluster
