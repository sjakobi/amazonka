{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.Disk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.Disk where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a gateway's local disk.
--
--
--
-- /See:/ 'disk' smart constructor.
data Disk = Disk'
  { _dDiskAllocationResource ::
      !(Maybe Text),
    _dDiskStatus :: !(Maybe Text),
    _dDiskSizeInBytes :: !(Maybe Integer),
    _dDiskAttributeList :: !(Maybe [Text]),
    _dDiskPath :: !(Maybe Text),
    _dDiskId :: !(Maybe Text),
    _dDiskAllocationType :: !(Maybe Text),
    _dDiskNode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Disk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDiskAllocationResource' - The iSCSI qualified name (IQN) that is defined for a disk. This field is not included in the response if the local disk is not defined as an iSCSI target. The format of this field is /targetIqn::LUNNumber::region-volumeId/ .
--
-- * 'dDiskStatus' - A value that represents the status of a local disk.
--
-- * 'dDiskSizeInBytes' - The local disk size in bytes.
--
-- * 'dDiskAttributeList' - Undocumented member.
--
-- * 'dDiskPath' - The path of a local disk in the gateway virtual machine (VM).
--
-- * 'dDiskId' - The unique device ID or other distinguishing data that identifies a local disk.
--
-- * 'dDiskAllocationType' - Undocumented member.
--
-- * 'dDiskNode' - The device node of a local disk as assigned by the virtualization environment.
disk ::
  Disk
disk =
  Disk'
    { _dDiskAllocationResource = Nothing,
      _dDiskStatus = Nothing,
      _dDiskSizeInBytes = Nothing,
      _dDiskAttributeList = Nothing,
      _dDiskPath = Nothing,
      _dDiskId = Nothing,
      _dDiskAllocationType = Nothing,
      _dDiskNode = Nothing
    }

-- | The iSCSI qualified name (IQN) that is defined for a disk. This field is not included in the response if the local disk is not defined as an iSCSI target. The format of this field is /targetIqn::LUNNumber::region-volumeId/ .
dDiskAllocationResource :: Lens' Disk (Maybe Text)
dDiskAllocationResource = lens _dDiskAllocationResource (\s a -> s {_dDiskAllocationResource = a})

-- | A value that represents the status of a local disk.
dDiskStatus :: Lens' Disk (Maybe Text)
dDiskStatus = lens _dDiskStatus (\s a -> s {_dDiskStatus = a})

-- | The local disk size in bytes.
dDiskSizeInBytes :: Lens' Disk (Maybe Integer)
dDiskSizeInBytes = lens _dDiskSizeInBytes (\s a -> s {_dDiskSizeInBytes = a})

-- | Undocumented member.
dDiskAttributeList :: Lens' Disk [Text]
dDiskAttributeList = lens _dDiskAttributeList (\s a -> s {_dDiskAttributeList = a}) . _Default . _Coerce

-- | The path of a local disk in the gateway virtual machine (VM).
dDiskPath :: Lens' Disk (Maybe Text)
dDiskPath = lens _dDiskPath (\s a -> s {_dDiskPath = a})

-- | The unique device ID or other distinguishing data that identifies a local disk.
dDiskId :: Lens' Disk (Maybe Text)
dDiskId = lens _dDiskId (\s a -> s {_dDiskId = a})

-- | Undocumented member.
dDiskAllocationType :: Lens' Disk (Maybe Text)
dDiskAllocationType = lens _dDiskAllocationType (\s a -> s {_dDiskAllocationType = a})

-- | The device node of a local disk as assigned by the virtualization environment.
dDiskNode :: Lens' Disk (Maybe Text)
dDiskNode = lens _dDiskNode (\s a -> s {_dDiskNode = a})

instance FromJSON Disk where
  parseJSON =
    withObject
      "Disk"
      ( \x ->
          Disk'
            <$> (x .:? "DiskAllocationResource")
            <*> (x .:? "DiskStatus")
            <*> (x .:? "DiskSizeInBytes")
            <*> (x .:? "DiskAttributeList" .!= mempty)
            <*> (x .:? "DiskPath")
            <*> (x .:? "DiskId")
            <*> (x .:? "DiskAllocationType")
            <*> (x .:? "DiskNode")
      )

instance Hashable Disk

instance NFData Disk
