{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.PendingModifiedValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.PendingModifiedValues where

import Network.AWS.ElastiCache.Types.AuthTokenUpdateStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A group of settings that are applied to the cluster in the future, or that are currently being applied.
--
--
--
-- /See:/ 'pendingModifiedValues' smart constructor.
data PendingModifiedValues = PendingModifiedValues'
  { _pmvNumCacheNodes ::
      !(Maybe Int),
    _pmvCacheNodeIdsToRemove ::
      !(Maybe [Text]),
    _pmvAuthTokenStatus ::
      !( Maybe
           AuthTokenUpdateStatus
       ),
    _pmvEngineVersion ::
      !(Maybe Text),
    _pmvCacheNodeType ::
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

-- | Creates a value of 'PendingModifiedValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmvNumCacheNodes' - The new number of cache nodes for the cluster. For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.
--
-- * 'pmvCacheNodeIdsToRemove' - A list of cache node IDs that are being removed (or will be removed) from the cluster. A node ID is a 4-digit numeric identifier (0001, 0002, etc.).
--
-- * 'pmvAuthTokenStatus' - The auth token status
--
-- * 'pmvEngineVersion' - The new cache engine version that the cluster runs.
--
-- * 'pmvCacheNodeType' - The cache node type that this cluster or replication group is scaled to.
pendingModifiedValues ::
  PendingModifiedValues
pendingModifiedValues =
  PendingModifiedValues'
    { _pmvNumCacheNodes = Nothing,
      _pmvCacheNodeIdsToRemove = Nothing,
      _pmvAuthTokenStatus = Nothing,
      _pmvEngineVersion = Nothing,
      _pmvCacheNodeType = Nothing
    }

-- | The new number of cache nodes for the cluster. For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.
pmvNumCacheNodes :: Lens' PendingModifiedValues (Maybe Int)
pmvNumCacheNodes = lens _pmvNumCacheNodes (\s a -> s {_pmvNumCacheNodes = a})

-- | A list of cache node IDs that are being removed (or will be removed) from the cluster. A node ID is a 4-digit numeric identifier (0001, 0002, etc.).
pmvCacheNodeIdsToRemove :: Lens' PendingModifiedValues [Text]
pmvCacheNodeIdsToRemove = lens _pmvCacheNodeIdsToRemove (\s a -> s {_pmvCacheNodeIdsToRemove = a}) . _Default . _Coerce

-- | The auth token status
pmvAuthTokenStatus :: Lens' PendingModifiedValues (Maybe AuthTokenUpdateStatus)
pmvAuthTokenStatus = lens _pmvAuthTokenStatus (\s a -> s {_pmvAuthTokenStatus = a})

-- | The new cache engine version that the cluster runs.
pmvEngineVersion :: Lens' PendingModifiedValues (Maybe Text)
pmvEngineVersion = lens _pmvEngineVersion (\s a -> s {_pmvEngineVersion = a})

-- | The cache node type that this cluster or replication group is scaled to.
pmvCacheNodeType :: Lens' PendingModifiedValues (Maybe Text)
pmvCacheNodeType = lens _pmvCacheNodeType (\s a -> s {_pmvCacheNodeType = a})

instance FromXML PendingModifiedValues where
  parseXML x =
    PendingModifiedValues'
      <$> (x .@? "NumCacheNodes")
      <*> ( x .@? "CacheNodeIdsToRemove" .!@ mempty
              >>= may (parseXMLList "CacheNodeId")
          )
      <*> (x .@? "AuthTokenStatus")
      <*> (x .@? "EngineVersion")
      <*> (x .@? "CacheNodeType")

instance Hashable PendingModifiedValues

instance NFData PendingModifiedValues
