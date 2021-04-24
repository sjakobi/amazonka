{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.VolumeRecoveryPointInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.VolumeRecoveryPointInfo where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a storage volume recovery point object.
--
--
--
-- /See:/ 'volumeRecoveryPointInfo' smart constructor.
data VolumeRecoveryPointInfo = VolumeRecoveryPointInfo'
  { _vrpiVolumeARN ::
      !(Maybe Text),
    _vrpiVolumeSizeInBytes ::
      !(Maybe Integer),
    _vrpiVolumeUsageInBytes ::
      !(Maybe Integer),
    _vrpiVolumeRecoveryPointTime ::
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

-- | Creates a value of 'VolumeRecoveryPointInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrpiVolumeARN' - The Amazon Resource Name (ARN) of the volume target.
--
-- * 'vrpiVolumeSizeInBytes' - The size of the volume in bytes.
--
-- * 'vrpiVolumeUsageInBytes' - The size of the data stored on the volume in bytes.
--
-- * 'vrpiVolumeRecoveryPointTime' - The time the recovery point was taken.
volumeRecoveryPointInfo ::
  VolumeRecoveryPointInfo
volumeRecoveryPointInfo =
  VolumeRecoveryPointInfo'
    { _vrpiVolumeARN = Nothing,
      _vrpiVolumeSizeInBytes = Nothing,
      _vrpiVolumeUsageInBytes = Nothing,
      _vrpiVolumeRecoveryPointTime = Nothing
    }

-- | The Amazon Resource Name (ARN) of the volume target.
vrpiVolumeARN :: Lens' VolumeRecoveryPointInfo (Maybe Text)
vrpiVolumeARN = lens _vrpiVolumeARN (\s a -> s {_vrpiVolumeARN = a})

-- | The size of the volume in bytes.
vrpiVolumeSizeInBytes :: Lens' VolumeRecoveryPointInfo (Maybe Integer)
vrpiVolumeSizeInBytes = lens _vrpiVolumeSizeInBytes (\s a -> s {_vrpiVolumeSizeInBytes = a})

-- | The size of the data stored on the volume in bytes.
vrpiVolumeUsageInBytes :: Lens' VolumeRecoveryPointInfo (Maybe Integer)
vrpiVolumeUsageInBytes = lens _vrpiVolumeUsageInBytes (\s a -> s {_vrpiVolumeUsageInBytes = a})

-- | The time the recovery point was taken.
vrpiVolumeRecoveryPointTime :: Lens' VolumeRecoveryPointInfo (Maybe Text)
vrpiVolumeRecoveryPointTime = lens _vrpiVolumeRecoveryPointTime (\s a -> s {_vrpiVolumeRecoveryPointTime = a})

instance FromJSON VolumeRecoveryPointInfo where
  parseJSON =
    withObject
      "VolumeRecoveryPointInfo"
      ( \x ->
          VolumeRecoveryPointInfo'
            <$> (x .:? "VolumeARN")
            <*> (x .:? "VolumeSizeInBytes")
            <*> (x .:? "VolumeUsageInBytes")
            <*> (x .:? "VolumeRecoveryPointTime")
      )

instance Hashable VolumeRecoveryPointInfo

instance NFData VolumeRecoveryPointInfo
