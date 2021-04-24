{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.BlockDeviceMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.BlockDeviceMapping where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.EBSBlockDevice
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a block device mapping.
--
--
--
-- /See:/ 'blockDeviceMapping' smart constructor.
data BlockDeviceMapping = BlockDeviceMapping'
  { _bdmEBS ::
      !(Maybe EBSBlockDevice),
    _bdmNoDevice :: !(Maybe Text),
    _bdmVirtualName :: !(Maybe Text),
    _bdmDeviceName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BlockDeviceMapping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdmEBS' - Parameters used to automatically set up EBS volumes when the instance is launched.
--
-- * 'bdmNoDevice' - To omit the device from the block device mapping, specify an empty string.
--
-- * 'bdmVirtualName' - The virtual device name (@ephemeral@ N). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for @ephemeral0@ and @ephemeral1@ . The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume. NVMe instance store volumes are automatically enumerated and assigned a device name. Including them in your block device mapping has no effect. Constraints: For M3 instances, you must specify instance store volumes in the block device mapping for the instance. When you launch an M3 instance, we ignore any instance store volumes specified in the block device mapping for the AMI.
--
-- * 'bdmDeviceName' - The device name (for example, @/dev/sdh@ or @xvdh@ ).
blockDeviceMapping ::
  -- | 'bdmDeviceName'
  Text ->
  BlockDeviceMapping
blockDeviceMapping pDeviceName_ =
  BlockDeviceMapping'
    { _bdmEBS = Nothing,
      _bdmNoDevice = Nothing,
      _bdmVirtualName = Nothing,
      _bdmDeviceName = pDeviceName_
    }

-- | Parameters used to automatically set up EBS volumes when the instance is launched.
bdmEBS :: Lens' BlockDeviceMapping (Maybe EBSBlockDevice)
bdmEBS = lens _bdmEBS (\s a -> s {_bdmEBS = a})

-- | To omit the device from the block device mapping, specify an empty string.
bdmNoDevice :: Lens' BlockDeviceMapping (Maybe Text)
bdmNoDevice = lens _bdmNoDevice (\s a -> s {_bdmNoDevice = a})

-- | The virtual device name (@ephemeral@ N). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for @ephemeral0@ and @ephemeral1@ . The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume. NVMe instance store volumes are automatically enumerated and assigned a device name. Including them in your block device mapping has no effect. Constraints: For M3 instances, you must specify instance store volumes in the block device mapping for the instance. When you launch an M3 instance, we ignore any instance store volumes specified in the block device mapping for the AMI.
bdmVirtualName :: Lens' BlockDeviceMapping (Maybe Text)
bdmVirtualName = lens _bdmVirtualName (\s a -> s {_bdmVirtualName = a})

-- | The device name (for example, @/dev/sdh@ or @xvdh@ ).
bdmDeviceName :: Lens' BlockDeviceMapping Text
bdmDeviceName = lens _bdmDeviceName (\s a -> s {_bdmDeviceName = a})

instance FromXML BlockDeviceMapping where
  parseXML x =
    BlockDeviceMapping'
      <$> (x .@? "ebs")
      <*> (x .@? "noDevice")
      <*> (x .@? "virtualName")
      <*> (x .@ "deviceName")

instance Hashable BlockDeviceMapping

instance NFData BlockDeviceMapping

instance ToQuery BlockDeviceMapping where
  toQuery BlockDeviceMapping' {..} =
    mconcat
      [ "Ebs" =: _bdmEBS,
        "NoDevice" =: _bdmNoDevice,
        "VirtualName" =: _bdmVirtualName,
        "DeviceName" =: _bdmDeviceName
      ]
