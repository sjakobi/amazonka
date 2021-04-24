{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.InstanceSnapshotInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceSnapshotInfo where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.DiskInfo
import Network.AWS.Prelude

-- | Describes an instance snapshot.
--
--
--
-- /See:/ 'instanceSnapshotInfo' smart constructor.
data InstanceSnapshotInfo = InstanceSnapshotInfo'
  { _isiFromDiskInfo ::
      !(Maybe [DiskInfo]),
    _isiFromBundleId ::
      !(Maybe Text),
    _isiFromBlueprintId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceSnapshotInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isiFromDiskInfo' - A list of objects describing the disks that were attached to the source instance.
--
-- * 'isiFromBundleId' - The bundle ID from which the source instance was created (e.g., @micro_1_0@ ).
--
-- * 'isiFromBlueprintId' - The blueprint ID from which the source instance (e.g., @os_debian_8_3@ ).
instanceSnapshotInfo ::
  InstanceSnapshotInfo
instanceSnapshotInfo =
  InstanceSnapshotInfo'
    { _isiFromDiskInfo = Nothing,
      _isiFromBundleId = Nothing,
      _isiFromBlueprintId = Nothing
    }

-- | A list of objects describing the disks that were attached to the source instance.
isiFromDiskInfo :: Lens' InstanceSnapshotInfo [DiskInfo]
isiFromDiskInfo = lens _isiFromDiskInfo (\s a -> s {_isiFromDiskInfo = a}) . _Default . _Coerce

-- | The bundle ID from which the source instance was created (e.g., @micro_1_0@ ).
isiFromBundleId :: Lens' InstanceSnapshotInfo (Maybe Text)
isiFromBundleId = lens _isiFromBundleId (\s a -> s {_isiFromBundleId = a})

-- | The blueprint ID from which the source instance (e.g., @os_debian_8_3@ ).
isiFromBlueprintId :: Lens' InstanceSnapshotInfo (Maybe Text)
isiFromBlueprintId = lens _isiFromBlueprintId (\s a -> s {_isiFromBlueprintId = a})

instance FromJSON InstanceSnapshotInfo where
  parseJSON =
    withObject
      "InstanceSnapshotInfo"
      ( \x ->
          InstanceSnapshotInfo'
            <$> (x .:? "fromDiskInfo" .!= mempty)
            <*> (x .:? "fromBundleId")
            <*> (x .:? "fromBlueprintId")
      )

instance Hashable InstanceSnapshotInfo

instance NFData InstanceSnapshotInfo
