{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DiskImageVolumeDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DiskImageVolumeDescription where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a disk image volume.
--
--
--
-- /See:/ 'diskImageVolumeDescription' smart constructor.
data DiskImageVolumeDescription = DiskImageVolumeDescription'
  { _divdId ::
      !(Maybe Text),
    _divdSize ::
      !(Maybe Integer)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DiskImageVolumeDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'divdId' - The volume identifier.
--
-- * 'divdSize' - The size of the volume, in GiB.
diskImageVolumeDescription ::
  DiskImageVolumeDescription
diskImageVolumeDescription =
  DiskImageVolumeDescription'
    { _divdId = Nothing,
      _divdSize = Nothing
    }

-- | The volume identifier.
divdId :: Lens' DiskImageVolumeDescription (Maybe Text)
divdId = lens _divdId (\s a -> s {_divdId = a})

-- | The size of the volume, in GiB.
divdSize :: Lens' DiskImageVolumeDescription (Maybe Integer)
divdSize = lens _divdSize (\s a -> s {_divdSize = a})

instance FromXML DiskImageVolumeDescription where
  parseXML x =
    DiskImageVolumeDescription'
      <$> (x .@? "id") <*> (x .@? "size")

instance Hashable DiskImageVolumeDescription

instance NFData DiskImageVolumeDescription
