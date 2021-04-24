{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.ProcessedUpdateAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.ProcessedUpdateAction where

import Network.AWS.ElastiCache.Types.UpdateActionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Update action that has been processed for the corresponding apply/stop request
--
--
--
-- /See:/ 'processedUpdateAction' smart constructor.
data ProcessedUpdateAction = ProcessedUpdateAction'
  { _puaReplicationGroupId ::
      !(Maybe Text),
    _puaUpdateActionStatus ::
      !(Maybe UpdateActionStatus),
    _puaCacheClusterId ::
      !(Maybe Text),
    _puaServiceUpdateName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ProcessedUpdateAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puaReplicationGroupId' - The ID of the replication group
--
-- * 'puaUpdateActionStatus' - The status of the update action on the Redis cluster
--
-- * 'puaCacheClusterId' - The ID of the cache cluster
--
-- * 'puaServiceUpdateName' - The unique ID of the service update
processedUpdateAction ::
  ProcessedUpdateAction
processedUpdateAction =
  ProcessedUpdateAction'
    { _puaReplicationGroupId =
        Nothing,
      _puaUpdateActionStatus = Nothing,
      _puaCacheClusterId = Nothing,
      _puaServiceUpdateName = Nothing
    }

-- | The ID of the replication group
puaReplicationGroupId :: Lens' ProcessedUpdateAction (Maybe Text)
puaReplicationGroupId = lens _puaReplicationGroupId (\s a -> s {_puaReplicationGroupId = a})

-- | The status of the update action on the Redis cluster
puaUpdateActionStatus :: Lens' ProcessedUpdateAction (Maybe UpdateActionStatus)
puaUpdateActionStatus = lens _puaUpdateActionStatus (\s a -> s {_puaUpdateActionStatus = a})

-- | The ID of the cache cluster
puaCacheClusterId :: Lens' ProcessedUpdateAction (Maybe Text)
puaCacheClusterId = lens _puaCacheClusterId (\s a -> s {_puaCacheClusterId = a})

-- | The unique ID of the service update
puaServiceUpdateName :: Lens' ProcessedUpdateAction (Maybe Text)
puaServiceUpdateName = lens _puaServiceUpdateName (\s a -> s {_puaServiceUpdateName = a})

instance FromXML ProcessedUpdateAction where
  parseXML x =
    ProcessedUpdateAction'
      <$> (x .@? "ReplicationGroupId")
      <*> (x .@? "UpdateActionStatus")
      <*> (x .@? "CacheClusterId")
      <*> (x .@? "ServiceUpdateName")

instance Hashable ProcessedUpdateAction

instance NFData ProcessedUpdateAction
