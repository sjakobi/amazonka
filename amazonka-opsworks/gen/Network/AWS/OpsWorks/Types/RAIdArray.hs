{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.RAIdArray
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.RAIdArray where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an instance's RAID array.
--
--
--
-- /See:/ 'rAIdArray' smart constructor.
data RAIdArray = RAIdArray'
  { _raiaNumberOfDisks ::
      !(Maybe Int),
    _raiaInstanceId :: !(Maybe Text),
    _raiaStackId :: !(Maybe Text),
    _raiaDevice :: !(Maybe Text),
    _raiaCreatedAt :: !(Maybe Text),
    _raiaRAIdArrayId :: !(Maybe Text),
    _raiaAvailabilityZone :: !(Maybe Text),
    _raiaName :: !(Maybe Text),
    _raiaMountPoint :: !(Maybe Text),
    _raiaVolumeType :: !(Maybe Text),
    _raiaRAIdLevel :: !(Maybe Int),
    _raiaIOPS :: !(Maybe Int),
    _raiaSize :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RAIdArray' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raiaNumberOfDisks' - The number of disks in the array.
--
-- * 'raiaInstanceId' - The instance ID.
--
-- * 'raiaStackId' - The stack ID.
--
-- * 'raiaDevice' - The array's Linux device. For example /dev/mdadm0.
--
-- * 'raiaCreatedAt' - When the RAID array was created.
--
-- * 'raiaRAIdArrayId' - The array ID.
--
-- * 'raiaAvailabilityZone' - The array's Availability Zone. For more information, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
--
-- * 'raiaName' - The array name.
--
-- * 'raiaMountPoint' - The array's mount point.
--
-- * 'raiaVolumeType' - The volume type, standard or PIOPS.
--
-- * 'raiaRAIdLevel' - The <http://en.wikipedia.org/wiki/Standard_RAID_levels RAID level> .
--
-- * 'raiaIOPS' - For PIOPS volumes, the IOPS per disk.
--
-- * 'raiaSize' - The array's size.
rAIdArray ::
  RAIdArray
rAIdArray =
  RAIdArray'
    { _raiaNumberOfDisks = Nothing,
      _raiaInstanceId = Nothing,
      _raiaStackId = Nothing,
      _raiaDevice = Nothing,
      _raiaCreatedAt = Nothing,
      _raiaRAIdArrayId = Nothing,
      _raiaAvailabilityZone = Nothing,
      _raiaName = Nothing,
      _raiaMountPoint = Nothing,
      _raiaVolumeType = Nothing,
      _raiaRAIdLevel = Nothing,
      _raiaIOPS = Nothing,
      _raiaSize = Nothing
    }

-- | The number of disks in the array.
raiaNumberOfDisks :: Lens' RAIdArray (Maybe Int)
raiaNumberOfDisks = lens _raiaNumberOfDisks (\s a -> s {_raiaNumberOfDisks = a})

-- | The instance ID.
raiaInstanceId :: Lens' RAIdArray (Maybe Text)
raiaInstanceId = lens _raiaInstanceId (\s a -> s {_raiaInstanceId = a})

-- | The stack ID.
raiaStackId :: Lens' RAIdArray (Maybe Text)
raiaStackId = lens _raiaStackId (\s a -> s {_raiaStackId = a})

-- | The array's Linux device. For example /dev/mdadm0.
raiaDevice :: Lens' RAIdArray (Maybe Text)
raiaDevice = lens _raiaDevice (\s a -> s {_raiaDevice = a})

-- | When the RAID array was created.
raiaCreatedAt :: Lens' RAIdArray (Maybe Text)
raiaCreatedAt = lens _raiaCreatedAt (\s a -> s {_raiaCreatedAt = a})

-- | The array ID.
raiaRAIdArrayId :: Lens' RAIdArray (Maybe Text)
raiaRAIdArrayId = lens _raiaRAIdArrayId (\s a -> s {_raiaRAIdArrayId = a})

-- | The array's Availability Zone. For more information, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
raiaAvailabilityZone :: Lens' RAIdArray (Maybe Text)
raiaAvailabilityZone = lens _raiaAvailabilityZone (\s a -> s {_raiaAvailabilityZone = a})

-- | The array name.
raiaName :: Lens' RAIdArray (Maybe Text)
raiaName = lens _raiaName (\s a -> s {_raiaName = a})

-- | The array's mount point.
raiaMountPoint :: Lens' RAIdArray (Maybe Text)
raiaMountPoint = lens _raiaMountPoint (\s a -> s {_raiaMountPoint = a})

-- | The volume type, standard or PIOPS.
raiaVolumeType :: Lens' RAIdArray (Maybe Text)
raiaVolumeType = lens _raiaVolumeType (\s a -> s {_raiaVolumeType = a})

-- | The <http://en.wikipedia.org/wiki/Standard_RAID_levels RAID level> .
raiaRAIdLevel :: Lens' RAIdArray (Maybe Int)
raiaRAIdLevel = lens _raiaRAIdLevel (\s a -> s {_raiaRAIdLevel = a})

-- | For PIOPS volumes, the IOPS per disk.
raiaIOPS :: Lens' RAIdArray (Maybe Int)
raiaIOPS = lens _raiaIOPS (\s a -> s {_raiaIOPS = a})

-- | The array's size.
raiaSize :: Lens' RAIdArray (Maybe Int)
raiaSize = lens _raiaSize (\s a -> s {_raiaSize = a})

instance FromJSON RAIdArray where
  parseJSON =
    withObject
      "RAIdArray"
      ( \x ->
          RAIdArray'
            <$> (x .:? "NumberOfDisks")
            <*> (x .:? "InstanceId")
            <*> (x .:? "StackId")
            <*> (x .:? "Device")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "RaidArrayId")
            <*> (x .:? "AvailabilityZone")
            <*> (x .:? "Name")
            <*> (x .:? "MountPoint")
            <*> (x .:? "VolumeType")
            <*> (x .:? "RaidLevel")
            <*> (x .:? "Iops")
            <*> (x .:? "Size")
      )

instance Hashable RAIdArray

instance NFData RAIdArray
