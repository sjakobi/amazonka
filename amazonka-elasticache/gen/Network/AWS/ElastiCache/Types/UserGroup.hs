{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.UserGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.UserGroup where

import Network.AWS.ElastiCache.Types.UserGroupPendingChanges
import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'userGroup' smart constructor.
data UserGroup = UserGroup'
  { _ugStatus ::
      !(Maybe Text),
    _ugReplicationGroups :: !(Maybe [Text]),
    _ugARN :: !(Maybe Text),
    _ugUserIds :: !(Maybe [Text]),
    _ugEngine :: !(Maybe Text),
    _ugUserGroupId :: !(Maybe Text),
    _ugPendingChanges ::
      !(Maybe UserGroupPendingChanges)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugStatus' - Indicates user group status. Can be "creating", "active", "modifying", "deleting".
--
-- * 'ugReplicationGroups' - A list of replication groups that the user group can access.
--
-- * 'ugARN' - The Amazon Resource Name (ARN) of the user group.
--
-- * 'ugUserIds' - The list of user IDs that belong to the user group.
--
-- * 'ugEngine' - The current supported value is Redis.
--
-- * 'ugUserGroupId' - The ID of the user group.
--
-- * 'ugPendingChanges' - A list of updates being applied to the user groups.
userGroup ::
  UserGroup
userGroup =
  UserGroup'
    { _ugStatus = Nothing,
      _ugReplicationGroups = Nothing,
      _ugARN = Nothing,
      _ugUserIds = Nothing,
      _ugEngine = Nothing,
      _ugUserGroupId = Nothing,
      _ugPendingChanges = Nothing
    }

-- | Indicates user group status. Can be "creating", "active", "modifying", "deleting".
ugStatus :: Lens' UserGroup (Maybe Text)
ugStatus = lens _ugStatus (\s a -> s {_ugStatus = a})

-- | A list of replication groups that the user group can access.
ugReplicationGroups :: Lens' UserGroup [Text]
ugReplicationGroups = lens _ugReplicationGroups (\s a -> s {_ugReplicationGroups = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the user group.
ugARN :: Lens' UserGroup (Maybe Text)
ugARN = lens _ugARN (\s a -> s {_ugARN = a})

-- | The list of user IDs that belong to the user group.
ugUserIds :: Lens' UserGroup [Text]
ugUserIds = lens _ugUserIds (\s a -> s {_ugUserIds = a}) . _Default . _Coerce

-- | The current supported value is Redis.
ugEngine :: Lens' UserGroup (Maybe Text)
ugEngine = lens _ugEngine (\s a -> s {_ugEngine = a})

-- | The ID of the user group.
ugUserGroupId :: Lens' UserGroup (Maybe Text)
ugUserGroupId = lens _ugUserGroupId (\s a -> s {_ugUserGroupId = a})

-- | A list of updates being applied to the user groups.
ugPendingChanges :: Lens' UserGroup (Maybe UserGroupPendingChanges)
ugPendingChanges = lens _ugPendingChanges (\s a -> s {_ugPendingChanges = a})

instance FromXML UserGroup where
  parseXML x =
    UserGroup'
      <$> (x .@? "Status")
      <*> ( x .@? "ReplicationGroups" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "ARN")
      <*> ( x .@? "UserIds" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Engine")
      <*> (x .@? "UserGroupId")
      <*> (x .@? "PendingChanges")

instance Hashable UserGroup

instance NFData UserGroup
