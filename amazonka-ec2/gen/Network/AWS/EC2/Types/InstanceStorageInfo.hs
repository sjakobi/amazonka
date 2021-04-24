{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceStorageInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceStorageInfo where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.DiskInfo
import Network.AWS.EC2.Types.EphemeralNvmeSupport
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the disks that are available for the instance type.
--
--
--
-- /See:/ 'instanceStorageInfo' smart constructor.
data InstanceStorageInfo = InstanceStorageInfo'
  { _isiNvmeSupport ::
      !(Maybe EphemeralNvmeSupport),
    _isiTotalSizeInGB ::
      !(Maybe Integer),
    _isiDisks ::
      !(Maybe [DiskInfo])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceStorageInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isiNvmeSupport' - Indicates whether non-volatile memory express (NVMe) is supported for instance store.
--
-- * 'isiTotalSizeInGB' - The total size of the disks, in GB.
--
-- * 'isiDisks' - Describes the disks that are available for the instance type.
instanceStorageInfo ::
  InstanceStorageInfo
instanceStorageInfo =
  InstanceStorageInfo'
    { _isiNvmeSupport = Nothing,
      _isiTotalSizeInGB = Nothing,
      _isiDisks = Nothing
    }

-- | Indicates whether non-volatile memory express (NVMe) is supported for instance store.
isiNvmeSupport :: Lens' InstanceStorageInfo (Maybe EphemeralNvmeSupport)
isiNvmeSupport = lens _isiNvmeSupport (\s a -> s {_isiNvmeSupport = a})

-- | The total size of the disks, in GB.
isiTotalSizeInGB :: Lens' InstanceStorageInfo (Maybe Integer)
isiTotalSizeInGB = lens _isiTotalSizeInGB (\s a -> s {_isiTotalSizeInGB = a})

-- | Describes the disks that are available for the instance type.
isiDisks :: Lens' InstanceStorageInfo [DiskInfo]
isiDisks = lens _isiDisks (\s a -> s {_isiDisks = a}) . _Default . _Coerce

instance FromXML InstanceStorageInfo where
  parseXML x =
    InstanceStorageInfo'
      <$> (x .@? "nvmeSupport")
      <*> (x .@? "totalSizeInGB")
      <*> ( x .@? "disks" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable InstanceStorageInfo

instance NFData InstanceStorageInfo
