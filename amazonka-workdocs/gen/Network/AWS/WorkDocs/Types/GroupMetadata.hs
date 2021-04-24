{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.GroupMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.GroupMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the metadata of a user group.
--
--
--
-- /See:/ 'groupMetadata' smart constructor.
data GroupMetadata = GroupMetadata'
  { _gmId ::
      !(Maybe Text),
    _gmName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmId' - The ID of the user group.
--
-- * 'gmName' - The name of the group.
groupMetadata ::
  GroupMetadata
groupMetadata =
  GroupMetadata' {_gmId = Nothing, _gmName = Nothing}

-- | The ID of the user group.
gmId :: Lens' GroupMetadata (Maybe Text)
gmId = lens _gmId (\s a -> s {_gmId = a})

-- | The name of the group.
gmName :: Lens' GroupMetadata (Maybe Text)
gmName = lens _gmName (\s a -> s {_gmName = a})

instance FromJSON GroupMetadata where
  parseJSON =
    withObject
      "GroupMetadata"
      ( \x ->
          GroupMetadata' <$> (x .:? "Id") <*> (x .:? "Name")
      )

instance Hashable GroupMetadata

instance NFData GroupMetadata
