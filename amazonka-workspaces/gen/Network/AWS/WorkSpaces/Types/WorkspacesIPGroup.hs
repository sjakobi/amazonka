{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.WorkspacesIPGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspacesIPGroup where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkSpaces.Types.IPRuleItem

-- | Describes an IP access control group.
--
--
--
-- /See:/ 'workspacesIPGroup' smart constructor.
data WorkspacesIPGroup = WorkspacesIPGroup'
  { _wigUserRules ::
      !(Maybe [IPRuleItem]),
    _wigGroupDesc :: !(Maybe Text),
    _wigGroupName :: !(Maybe Text),
    _wigGroupId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WorkspacesIPGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wigUserRules' - The rules.
--
-- * 'wigGroupDesc' - The description of the group.
--
-- * 'wigGroupName' - The name of the group.
--
-- * 'wigGroupId' - The identifier of the group.
workspacesIPGroup ::
  WorkspacesIPGroup
workspacesIPGroup =
  WorkspacesIPGroup'
    { _wigUserRules = Nothing,
      _wigGroupDesc = Nothing,
      _wigGroupName = Nothing,
      _wigGroupId = Nothing
    }

-- | The rules.
wigUserRules :: Lens' WorkspacesIPGroup [IPRuleItem]
wigUserRules = lens _wigUserRules (\s a -> s {_wigUserRules = a}) . _Default . _Coerce

-- | The description of the group.
wigGroupDesc :: Lens' WorkspacesIPGroup (Maybe Text)
wigGroupDesc = lens _wigGroupDesc (\s a -> s {_wigGroupDesc = a})

-- | The name of the group.
wigGroupName :: Lens' WorkspacesIPGroup (Maybe Text)
wigGroupName = lens _wigGroupName (\s a -> s {_wigGroupName = a})

-- | The identifier of the group.
wigGroupId :: Lens' WorkspacesIPGroup (Maybe Text)
wigGroupId = lens _wigGroupId (\s a -> s {_wigGroupId = a})

instance FromJSON WorkspacesIPGroup where
  parseJSON =
    withObject
      "WorkspacesIPGroup"
      ( \x ->
          WorkspacesIPGroup'
            <$> (x .:? "userRules" .!= mempty)
            <*> (x .:? "groupDesc")
            <*> (x .:? "groupName")
            <*> (x .:? "groupId")
      )

instance Hashable WorkspacesIPGroup

instance NFData WorkspacesIPGroup
