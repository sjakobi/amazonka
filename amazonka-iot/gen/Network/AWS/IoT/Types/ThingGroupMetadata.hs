{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ThingGroupMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ThingGroupMetadata where

import Network.AWS.IoT.Types.GroupNameAndARN
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Thing group metadata.
--
--
--
-- /See:/ 'thingGroupMetadata' smart constructor.
data ThingGroupMetadata = ThingGroupMetadata'
  { _tgmParentGroupName ::
      !(Maybe Text),
    _tgmCreationDate ::
      !(Maybe POSIX),
    _tgmRootToParentThingGroups ::
      !(Maybe [GroupNameAndARN])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ThingGroupMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgmParentGroupName' - The parent thing group name.
--
-- * 'tgmCreationDate' - The UNIX timestamp of when the thing group was created.
--
-- * 'tgmRootToParentThingGroups' - The root parent thing group.
thingGroupMetadata ::
  ThingGroupMetadata
thingGroupMetadata =
  ThingGroupMetadata'
    { _tgmParentGroupName = Nothing,
      _tgmCreationDate = Nothing,
      _tgmRootToParentThingGroups = Nothing
    }

-- | The parent thing group name.
tgmParentGroupName :: Lens' ThingGroupMetadata (Maybe Text)
tgmParentGroupName = lens _tgmParentGroupName (\s a -> s {_tgmParentGroupName = a})

-- | The UNIX timestamp of when the thing group was created.
tgmCreationDate :: Lens' ThingGroupMetadata (Maybe UTCTime)
tgmCreationDate = lens _tgmCreationDate (\s a -> s {_tgmCreationDate = a}) . mapping _Time

-- | The root parent thing group.
tgmRootToParentThingGroups :: Lens' ThingGroupMetadata [GroupNameAndARN]
tgmRootToParentThingGroups = lens _tgmRootToParentThingGroups (\s a -> s {_tgmRootToParentThingGroups = a}) . _Default . _Coerce

instance FromJSON ThingGroupMetadata where
  parseJSON =
    withObject
      "ThingGroupMetadata"
      ( \x ->
          ThingGroupMetadata'
            <$> (x .:? "parentGroupName")
            <*> (x .:? "creationDate")
            <*> (x .:? "rootToParentThingGroups" .!= mempty)
      )

instance Hashable ThingGroupMetadata

instance NFData ThingGroupMetadata
