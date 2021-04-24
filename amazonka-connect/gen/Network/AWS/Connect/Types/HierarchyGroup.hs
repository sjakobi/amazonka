{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.HierarchyGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.HierarchyGroup where

import Network.AWS.Connect.Types.HierarchyPath
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a hierarchy group.
--
--
--
-- /See:/ 'hierarchyGroup' smart constructor.
data HierarchyGroup = HierarchyGroup'
  { _hgLevelId ::
      !(Maybe Text),
    _hgARN :: !(Maybe Text),
    _hgId :: !(Maybe Text),
    _hgHierarchyPath ::
      !(Maybe HierarchyPath),
    _hgName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HierarchyGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hgLevelId' - The identifier of the level in the hierarchy group.
--
-- * 'hgARN' - The Amazon Resource Name (ARN) of the hierarchy group.
--
-- * 'hgId' - The identifier of the hierarchy group.
--
-- * 'hgHierarchyPath' - Information about the levels in the hierarchy group.
--
-- * 'hgName' - The name of the hierarchy group.
hierarchyGroup ::
  HierarchyGroup
hierarchyGroup =
  HierarchyGroup'
    { _hgLevelId = Nothing,
      _hgARN = Nothing,
      _hgId = Nothing,
      _hgHierarchyPath = Nothing,
      _hgName = Nothing
    }

-- | The identifier of the level in the hierarchy group.
hgLevelId :: Lens' HierarchyGroup (Maybe Text)
hgLevelId = lens _hgLevelId (\s a -> s {_hgLevelId = a})

-- | The Amazon Resource Name (ARN) of the hierarchy group.
hgARN :: Lens' HierarchyGroup (Maybe Text)
hgARN = lens _hgARN (\s a -> s {_hgARN = a})

-- | The identifier of the hierarchy group.
hgId :: Lens' HierarchyGroup (Maybe Text)
hgId = lens _hgId (\s a -> s {_hgId = a})

-- | Information about the levels in the hierarchy group.
hgHierarchyPath :: Lens' HierarchyGroup (Maybe HierarchyPath)
hgHierarchyPath = lens _hgHierarchyPath (\s a -> s {_hgHierarchyPath = a})

-- | The name of the hierarchy group.
hgName :: Lens' HierarchyGroup (Maybe Text)
hgName = lens _hgName (\s a -> s {_hgName = a})

instance FromJSON HierarchyGroup where
  parseJSON =
    withObject
      "HierarchyGroup"
      ( \x ->
          HierarchyGroup'
            <$> (x .:? "LevelId")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "HierarchyPath")
            <*> (x .:? "Name")
      )

instance Hashable HierarchyGroup

instance NFData HierarchyGroup
