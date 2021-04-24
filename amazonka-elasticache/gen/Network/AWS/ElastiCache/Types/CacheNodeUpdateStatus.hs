{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.CacheNodeUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.CacheNodeUpdateStatus where

import Network.AWS.ElastiCache.Types.NodeUpdateInitiatedBy
import Network.AWS.ElastiCache.Types.NodeUpdateStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The status of the service update on the cache node
--
--
--
-- /See:/ 'cacheNodeUpdateStatus' smart constructor.
data CacheNodeUpdateStatus = CacheNodeUpdateStatus'
  { _cnusNodeUpdateStatusModifiedDate ::
      !(Maybe ISO8601),
    _cnusNodeUpdateStatus ::
      !(Maybe NodeUpdateStatus),
    _cnusNodeUpdateInitiatedBy ::
      !( Maybe
           NodeUpdateInitiatedBy
       ),
    _cnusNodeUpdateInitiatedDate ::
      !(Maybe ISO8601),
    _cnusCacheNodeId ::
      !(Maybe Text),
    _cnusNodeDeletionDate ::
      !(Maybe ISO8601),
    _cnusNodeUpdateStartDate ::
      !(Maybe ISO8601),
    _cnusNodeUpdateEndDate ::
      !(Maybe ISO8601)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CacheNodeUpdateStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnusNodeUpdateStatusModifiedDate' - The date when the NodeUpdateStatus was last modified>
--
-- * 'cnusNodeUpdateStatus' - The update status of the node
--
-- * 'cnusNodeUpdateInitiatedBy' - Reflects whether the update was initiated by the customer or automatically applied
--
-- * 'cnusNodeUpdateInitiatedDate' - The date when the update is triggered
--
-- * 'cnusCacheNodeId' - The node ID of the cache cluster
--
-- * 'cnusNodeDeletionDate' - The deletion date of the node
--
-- * 'cnusNodeUpdateStartDate' - The start date of the update for a node
--
-- * 'cnusNodeUpdateEndDate' - The end date of the update for a node
cacheNodeUpdateStatus ::
  CacheNodeUpdateStatus
cacheNodeUpdateStatus =
  CacheNodeUpdateStatus'
    { _cnusNodeUpdateStatusModifiedDate =
        Nothing,
      _cnusNodeUpdateStatus = Nothing,
      _cnusNodeUpdateInitiatedBy = Nothing,
      _cnusNodeUpdateInitiatedDate = Nothing,
      _cnusCacheNodeId = Nothing,
      _cnusNodeDeletionDate = Nothing,
      _cnusNodeUpdateStartDate = Nothing,
      _cnusNodeUpdateEndDate = Nothing
    }

-- | The date when the NodeUpdateStatus was last modified>
cnusNodeUpdateStatusModifiedDate :: Lens' CacheNodeUpdateStatus (Maybe UTCTime)
cnusNodeUpdateStatusModifiedDate = lens _cnusNodeUpdateStatusModifiedDate (\s a -> s {_cnusNodeUpdateStatusModifiedDate = a}) . mapping _Time

-- | The update status of the node
cnusNodeUpdateStatus :: Lens' CacheNodeUpdateStatus (Maybe NodeUpdateStatus)
cnusNodeUpdateStatus = lens _cnusNodeUpdateStatus (\s a -> s {_cnusNodeUpdateStatus = a})

-- | Reflects whether the update was initiated by the customer or automatically applied
cnusNodeUpdateInitiatedBy :: Lens' CacheNodeUpdateStatus (Maybe NodeUpdateInitiatedBy)
cnusNodeUpdateInitiatedBy = lens _cnusNodeUpdateInitiatedBy (\s a -> s {_cnusNodeUpdateInitiatedBy = a})

-- | The date when the update is triggered
cnusNodeUpdateInitiatedDate :: Lens' CacheNodeUpdateStatus (Maybe UTCTime)
cnusNodeUpdateInitiatedDate = lens _cnusNodeUpdateInitiatedDate (\s a -> s {_cnusNodeUpdateInitiatedDate = a}) . mapping _Time

-- | The node ID of the cache cluster
cnusCacheNodeId :: Lens' CacheNodeUpdateStatus (Maybe Text)
cnusCacheNodeId = lens _cnusCacheNodeId (\s a -> s {_cnusCacheNodeId = a})

-- | The deletion date of the node
cnusNodeDeletionDate :: Lens' CacheNodeUpdateStatus (Maybe UTCTime)
cnusNodeDeletionDate = lens _cnusNodeDeletionDate (\s a -> s {_cnusNodeDeletionDate = a}) . mapping _Time

-- | The start date of the update for a node
cnusNodeUpdateStartDate :: Lens' CacheNodeUpdateStatus (Maybe UTCTime)
cnusNodeUpdateStartDate = lens _cnusNodeUpdateStartDate (\s a -> s {_cnusNodeUpdateStartDate = a}) . mapping _Time

-- | The end date of the update for a node
cnusNodeUpdateEndDate :: Lens' CacheNodeUpdateStatus (Maybe UTCTime)
cnusNodeUpdateEndDate = lens _cnusNodeUpdateEndDate (\s a -> s {_cnusNodeUpdateEndDate = a}) . mapping _Time

instance FromXML CacheNodeUpdateStatus where
  parseXML x =
    CacheNodeUpdateStatus'
      <$> (x .@? "NodeUpdateStatusModifiedDate")
      <*> (x .@? "NodeUpdateStatus")
      <*> (x .@? "NodeUpdateInitiatedBy")
      <*> (x .@? "NodeUpdateInitiatedDate")
      <*> (x .@? "CacheNodeId")
      <*> (x .@? "NodeDeletionDate")
      <*> (x .@? "NodeUpdateStartDate")
      <*> (x .@? "NodeUpdateEndDate")

instance Hashable CacheNodeUpdateStatus

instance NFData CacheNodeUpdateStatus
