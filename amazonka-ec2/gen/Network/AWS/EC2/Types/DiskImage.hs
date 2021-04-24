{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DiskImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DiskImage where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.DiskImageDetail
import Network.AWS.EC2.Types.VolumeDetail
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a disk image.
--
--
--
-- /See:/ 'diskImage' smart constructor.
data DiskImage = DiskImage'
  { _diVolume ::
      !(Maybe VolumeDetail),
    _diImage :: !(Maybe DiskImageDetail),
    _diDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DiskImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diVolume' - Information about the volume.
--
-- * 'diImage' - Information about the disk image.
--
-- * 'diDescription' - A description of the disk image.
diskImage ::
  DiskImage
diskImage =
  DiskImage'
    { _diVolume = Nothing,
      _diImage = Nothing,
      _diDescription = Nothing
    }

-- | Information about the volume.
diVolume :: Lens' DiskImage (Maybe VolumeDetail)
diVolume = lens _diVolume (\s a -> s {_diVolume = a})

-- | Information about the disk image.
diImage :: Lens' DiskImage (Maybe DiskImageDetail)
diImage = lens _diImage (\s a -> s {_diImage = a})

-- | A description of the disk image.
diDescription :: Lens' DiskImage (Maybe Text)
diDescription = lens _diDescription (\s a -> s {_diDescription = a})

instance Hashable DiskImage

instance NFData DiskImage

instance ToQuery DiskImage where
  toQuery DiskImage' {..} =
    mconcat
      [ "Volume" =: _diVolume,
        "Image" =: _diImage,
        "Description" =: _diDescription
      ]
