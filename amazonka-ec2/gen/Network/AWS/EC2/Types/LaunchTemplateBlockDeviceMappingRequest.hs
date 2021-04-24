{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateBlockDeviceMappingRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateBlockDeviceMappingRequest where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.LaunchTemplateEBSBlockDeviceRequest
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a block device mapping.
--
--
--
-- /See:/ 'launchTemplateBlockDeviceMappingRequest' smart constructor.
data LaunchTemplateBlockDeviceMappingRequest = LaunchTemplateBlockDeviceMappingRequest'
  { _ltbdmrEBS ::
      !( Maybe
           LaunchTemplateEBSBlockDeviceRequest
       ),
    _ltbdmrNoDevice ::
      !( Maybe
           Text
       ),
    _ltbdmrVirtualName ::
      !( Maybe
           Text
       ),
    _ltbdmrDeviceName ::
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

-- | Creates a value of 'LaunchTemplateBlockDeviceMappingRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltbdmrEBS' - Parameters used to automatically set up EBS volumes when the instance is launched.
--
-- * 'ltbdmrNoDevice' - To omit the device from the block device mapping, specify an empty string.
--
-- * 'ltbdmrVirtualName' - The virtual device name (ephemeralN). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for ephemeral0 and ephemeral1. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.
--
-- * 'ltbdmrDeviceName' - The device name (for example, /dev/sdh or xvdh).
launchTemplateBlockDeviceMappingRequest ::
  LaunchTemplateBlockDeviceMappingRequest
launchTemplateBlockDeviceMappingRequest =
  LaunchTemplateBlockDeviceMappingRequest'
    { _ltbdmrEBS =
        Nothing,
      _ltbdmrNoDevice = Nothing,
      _ltbdmrVirtualName = Nothing,
      _ltbdmrDeviceName = Nothing
    }

-- | Parameters used to automatically set up EBS volumes when the instance is launched.
ltbdmrEBS :: Lens' LaunchTemplateBlockDeviceMappingRequest (Maybe LaunchTemplateEBSBlockDeviceRequest)
ltbdmrEBS = lens _ltbdmrEBS (\s a -> s {_ltbdmrEBS = a})

-- | To omit the device from the block device mapping, specify an empty string.
ltbdmrNoDevice :: Lens' LaunchTemplateBlockDeviceMappingRequest (Maybe Text)
ltbdmrNoDevice = lens _ltbdmrNoDevice (\s a -> s {_ltbdmrNoDevice = a})

-- | The virtual device name (ephemeralN). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for ephemeral0 and ephemeral1. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.
ltbdmrVirtualName :: Lens' LaunchTemplateBlockDeviceMappingRequest (Maybe Text)
ltbdmrVirtualName = lens _ltbdmrVirtualName (\s a -> s {_ltbdmrVirtualName = a})

-- | The device name (for example, /dev/sdh or xvdh).
ltbdmrDeviceName :: Lens' LaunchTemplateBlockDeviceMappingRequest (Maybe Text)
ltbdmrDeviceName = lens _ltbdmrDeviceName (\s a -> s {_ltbdmrDeviceName = a})

instance
  Hashable
    LaunchTemplateBlockDeviceMappingRequest

instance
  NFData
    LaunchTemplateBlockDeviceMappingRequest

instance
  ToQuery
    LaunchTemplateBlockDeviceMappingRequest
  where
  toQuery LaunchTemplateBlockDeviceMappingRequest' {..} =
    mconcat
      [ "Ebs" =: _ltbdmrEBS,
        "NoDevice" =: _ltbdmrNoDevice,
        "VirtualName" =: _ltbdmrVirtualName,
        "DeviceName" =: _ltbdmrDeviceName
      ]
