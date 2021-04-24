{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.AttachedDisk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.AttachedDisk where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a block storage disk that is attached to an instance, and is included in an automatic snapshot.
--
--
--
-- /See:/ 'attachedDisk' smart constructor.
data AttachedDisk = AttachedDisk'
  { _adSizeInGb ::
      !(Maybe Int),
    _adPath :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AttachedDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adSizeInGb' - The size of the disk in GB.
--
-- * 'adPath' - The path of the disk (e.g., @/dev/xvdf@ ).
attachedDisk ::
  AttachedDisk
attachedDisk =
  AttachedDisk'
    { _adSizeInGb = Nothing,
      _adPath = Nothing
    }

-- | The size of the disk in GB.
adSizeInGb :: Lens' AttachedDisk (Maybe Int)
adSizeInGb = lens _adSizeInGb (\s a -> s {_adSizeInGb = a})

-- | The path of the disk (e.g., @/dev/xvdf@ ).
adPath :: Lens' AttachedDisk (Maybe Text)
adPath = lens _adPath (\s a -> s {_adPath = a})

instance FromJSON AttachedDisk where
  parseJSON =
    withObject
      "AttachedDisk"
      ( \x ->
          AttachedDisk'
            <$> (x .:? "sizeInGb") <*> (x .:? "path")
      )

instance Hashable AttachedDisk

instance NFData AttachedDisk
