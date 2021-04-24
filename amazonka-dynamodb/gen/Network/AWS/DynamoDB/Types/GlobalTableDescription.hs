{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.GlobalTableDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.GlobalTableDescription where

import Network.AWS.DynamoDB.Types.GlobalTableStatus
import Network.AWS.DynamoDB.Types.ReplicaDescription
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about the global table.
--
--
--
-- /See:/ 'globalTableDescription' smart constructor.
data GlobalTableDescription = GlobalTableDescription'
  { _gtdGlobalTableName ::
      !(Maybe Text),
    _gtdGlobalTableStatus ::
      !( Maybe
           GlobalTableStatus
       ),
    _gtdReplicationGroup ::
      !( Maybe
           [ReplicaDescription]
       ),
    _gtdCreationDateTime ::
      !(Maybe POSIX),
    _gtdGlobalTableARN ::
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

-- | Creates a value of 'GlobalTableDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtdGlobalTableName' - The global table name.
--
-- * 'gtdGlobalTableStatus' - The current state of the global table:     * @CREATING@ - The global table is being created.     * @UPDATING@ - The global table is being updated.     * @DELETING@ - The global table is being deleted.     * @ACTIVE@ - The global table is ready for use.
--
-- * 'gtdReplicationGroup' - The Regions where the global table has replicas.
--
-- * 'gtdCreationDateTime' - The creation time of the global table.
--
-- * 'gtdGlobalTableARN' - The unique identifier of the global table.
globalTableDescription ::
  GlobalTableDescription
globalTableDescription =
  GlobalTableDescription'
    { _gtdGlobalTableName =
        Nothing,
      _gtdGlobalTableStatus = Nothing,
      _gtdReplicationGroup = Nothing,
      _gtdCreationDateTime = Nothing,
      _gtdGlobalTableARN = Nothing
    }

-- | The global table name.
gtdGlobalTableName :: Lens' GlobalTableDescription (Maybe Text)
gtdGlobalTableName = lens _gtdGlobalTableName (\s a -> s {_gtdGlobalTableName = a})

-- | The current state of the global table:     * @CREATING@ - The global table is being created.     * @UPDATING@ - The global table is being updated.     * @DELETING@ - The global table is being deleted.     * @ACTIVE@ - The global table is ready for use.
gtdGlobalTableStatus :: Lens' GlobalTableDescription (Maybe GlobalTableStatus)
gtdGlobalTableStatus = lens _gtdGlobalTableStatus (\s a -> s {_gtdGlobalTableStatus = a})

-- | The Regions where the global table has replicas.
gtdReplicationGroup :: Lens' GlobalTableDescription [ReplicaDescription]
gtdReplicationGroup = lens _gtdReplicationGroup (\s a -> s {_gtdReplicationGroup = a}) . _Default . _Coerce

-- | The creation time of the global table.
gtdCreationDateTime :: Lens' GlobalTableDescription (Maybe UTCTime)
gtdCreationDateTime = lens _gtdCreationDateTime (\s a -> s {_gtdCreationDateTime = a}) . mapping _Time

-- | The unique identifier of the global table.
gtdGlobalTableARN :: Lens' GlobalTableDescription (Maybe Text)
gtdGlobalTableARN = lens _gtdGlobalTableARN (\s a -> s {_gtdGlobalTableARN = a})

instance FromJSON GlobalTableDescription where
  parseJSON =
    withObject
      "GlobalTableDescription"
      ( \x ->
          GlobalTableDescription'
            <$> (x .:? "GlobalTableName")
            <*> (x .:? "GlobalTableStatus")
            <*> (x .:? "ReplicationGroup" .!= mempty)
            <*> (x .:? "CreationDateTime")
            <*> (x .:? "GlobalTableArn")
      )

instance Hashable GlobalTableDescription

instance NFData GlobalTableDescription
