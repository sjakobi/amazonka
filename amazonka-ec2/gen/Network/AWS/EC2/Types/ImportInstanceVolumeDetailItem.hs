{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ImportInstanceVolumeDetailItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ImportInstanceVolumeDetailItem where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.DiskImageDescription
import Network.AWS.EC2.Types.DiskImageVolumeDescription
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an import volume task.
--
--
--
-- /See:/ 'importInstanceVolumeDetailItem' smart constructor.
data ImportInstanceVolumeDetailItem = ImportInstanceVolumeDetailItem'
  { _iivdiStatusMessage ::
      !( Maybe
           Text
       ),
    _iivdiBytesConverted ::
      !( Maybe
           Integer
       ),
    _iivdiStatus ::
      !( Maybe
           Text
       ),
    _iivdiVolume ::
      !( Maybe
           DiskImageVolumeDescription
       ),
    _iivdiImage ::
      !( Maybe
           DiskImageDescription
       ),
    _iivdiAvailabilityZone ::
      !( Maybe
           Text
       ),
    _iivdiDescription ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ImportInstanceVolumeDetailItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iivdiStatusMessage' - The status information or errors related to the disk image.
--
-- * 'iivdiBytesConverted' - The number of bytes converted so far.
--
-- * 'iivdiStatus' - The status of the import of this particular disk image.
--
-- * 'iivdiVolume' - The volume.
--
-- * 'iivdiImage' - The image.
--
-- * 'iivdiAvailabilityZone' - The Availability Zone where the resulting instance will reside.
--
-- * 'iivdiDescription' - A description of the task.
importInstanceVolumeDetailItem ::
  ImportInstanceVolumeDetailItem
importInstanceVolumeDetailItem =
  ImportInstanceVolumeDetailItem'
    { _iivdiStatusMessage =
        Nothing,
      _iivdiBytesConverted = Nothing,
      _iivdiStatus = Nothing,
      _iivdiVolume = Nothing,
      _iivdiImage = Nothing,
      _iivdiAvailabilityZone = Nothing,
      _iivdiDescription = Nothing
    }

-- | The status information or errors related to the disk image.
iivdiStatusMessage :: Lens' ImportInstanceVolumeDetailItem (Maybe Text)
iivdiStatusMessage = lens _iivdiStatusMessage (\s a -> s {_iivdiStatusMessage = a})

-- | The number of bytes converted so far.
iivdiBytesConverted :: Lens' ImportInstanceVolumeDetailItem (Maybe Integer)
iivdiBytesConverted = lens _iivdiBytesConverted (\s a -> s {_iivdiBytesConverted = a})

-- | The status of the import of this particular disk image.
iivdiStatus :: Lens' ImportInstanceVolumeDetailItem (Maybe Text)
iivdiStatus = lens _iivdiStatus (\s a -> s {_iivdiStatus = a})

-- | The volume.
iivdiVolume :: Lens' ImportInstanceVolumeDetailItem (Maybe DiskImageVolumeDescription)
iivdiVolume = lens _iivdiVolume (\s a -> s {_iivdiVolume = a})

-- | The image.
iivdiImage :: Lens' ImportInstanceVolumeDetailItem (Maybe DiskImageDescription)
iivdiImage = lens _iivdiImage (\s a -> s {_iivdiImage = a})

-- | The Availability Zone where the resulting instance will reside.
iivdiAvailabilityZone :: Lens' ImportInstanceVolumeDetailItem (Maybe Text)
iivdiAvailabilityZone = lens _iivdiAvailabilityZone (\s a -> s {_iivdiAvailabilityZone = a})

-- | A description of the task.
iivdiDescription :: Lens' ImportInstanceVolumeDetailItem (Maybe Text)
iivdiDescription = lens _iivdiDescription (\s a -> s {_iivdiDescription = a})

instance FromXML ImportInstanceVolumeDetailItem where
  parseXML x =
    ImportInstanceVolumeDetailItem'
      <$> (x .@? "statusMessage")
      <*> (x .@? "bytesConverted")
      <*> (x .@? "status")
      <*> (x .@? "volume")
      <*> (x .@? "image")
      <*> (x .@? "availabilityZone")
      <*> (x .@? "description")

instance Hashable ImportInstanceVolumeDetailItem

instance NFData ImportInstanceVolumeDetailItem
