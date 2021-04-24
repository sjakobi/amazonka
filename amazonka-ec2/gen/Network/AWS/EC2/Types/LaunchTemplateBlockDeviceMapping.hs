{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateBlockDeviceMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateBlockDeviceMapping where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.LaunchTemplateEBSBlockDevice
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a block device mapping.
--
--
--
-- /See:/ 'launchTemplateBlockDeviceMapping' smart constructor.
data LaunchTemplateBlockDeviceMapping = LaunchTemplateBlockDeviceMapping'
  { _ltbdmEBS ::
      !( Maybe
           LaunchTemplateEBSBlockDevice
       ),
    _ltbdmNoDevice ::
      !( Maybe
           Text
       ),
    _ltbdmVirtualName ::
      !( Maybe
           Text
       ),
    _ltbdmDeviceName ::
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

-- | Creates a value of 'LaunchTemplateBlockDeviceMapping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltbdmEBS' - Information about the block device for an EBS volume.
--
-- * 'ltbdmNoDevice' - To omit the device from the block device mapping, specify an empty string.
--
-- * 'ltbdmVirtualName' - The virtual device name (ephemeralN).
--
-- * 'ltbdmDeviceName' - The device name.
launchTemplateBlockDeviceMapping ::
  LaunchTemplateBlockDeviceMapping
launchTemplateBlockDeviceMapping =
  LaunchTemplateBlockDeviceMapping'
    { _ltbdmEBS =
        Nothing,
      _ltbdmNoDevice = Nothing,
      _ltbdmVirtualName = Nothing,
      _ltbdmDeviceName = Nothing
    }

-- | Information about the block device for an EBS volume.
ltbdmEBS :: Lens' LaunchTemplateBlockDeviceMapping (Maybe LaunchTemplateEBSBlockDevice)
ltbdmEBS = lens _ltbdmEBS (\s a -> s {_ltbdmEBS = a})

-- | To omit the device from the block device mapping, specify an empty string.
ltbdmNoDevice :: Lens' LaunchTemplateBlockDeviceMapping (Maybe Text)
ltbdmNoDevice = lens _ltbdmNoDevice (\s a -> s {_ltbdmNoDevice = a})

-- | The virtual device name (ephemeralN).
ltbdmVirtualName :: Lens' LaunchTemplateBlockDeviceMapping (Maybe Text)
ltbdmVirtualName = lens _ltbdmVirtualName (\s a -> s {_ltbdmVirtualName = a})

-- | The device name.
ltbdmDeviceName :: Lens' LaunchTemplateBlockDeviceMapping (Maybe Text)
ltbdmDeviceName = lens _ltbdmDeviceName (\s a -> s {_ltbdmDeviceName = a})

instance FromXML LaunchTemplateBlockDeviceMapping where
  parseXML x =
    LaunchTemplateBlockDeviceMapping'
      <$> (x .@? "ebs")
      <*> (x .@? "noDevice")
      <*> (x .@? "virtualName")
      <*> (x .@? "deviceName")

instance Hashable LaunchTemplateBlockDeviceMapping

instance NFData LaunchTemplateBlockDeviceMapping
