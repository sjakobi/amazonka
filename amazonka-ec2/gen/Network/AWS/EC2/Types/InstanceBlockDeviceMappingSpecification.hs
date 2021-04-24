{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceBlockDeviceMappingSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceBlockDeviceMappingSpecification where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.EBSInstanceBlockDeviceSpecification
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a block device mapping entry.
--
--
--
-- /See:/ 'instanceBlockDeviceMappingSpecification' smart constructor.
data InstanceBlockDeviceMappingSpecification = InstanceBlockDeviceMappingSpecification'
  { _ibdmsEBS ::
      !( Maybe
           EBSInstanceBlockDeviceSpecification
       ),
    _ibdmsNoDevice ::
      !( Maybe
           Text
       ),
    _ibdmsVirtualName ::
      !( Maybe
           Text
       ),
    _ibdmsDeviceName ::
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

-- | Creates a value of 'InstanceBlockDeviceMappingSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibdmsEBS' - Parameters used to automatically set up EBS volumes when the instance is launched.
--
-- * 'ibdmsNoDevice' - suppress the specified device included in the block device mapping.
--
-- * 'ibdmsVirtualName' - The virtual device name.
--
-- * 'ibdmsDeviceName' - The device name (for example, @/dev/sdh@ or @xvdh@ ).
instanceBlockDeviceMappingSpecification ::
  InstanceBlockDeviceMappingSpecification
instanceBlockDeviceMappingSpecification =
  InstanceBlockDeviceMappingSpecification'
    { _ibdmsEBS =
        Nothing,
      _ibdmsNoDevice = Nothing,
      _ibdmsVirtualName = Nothing,
      _ibdmsDeviceName = Nothing
    }

-- | Parameters used to automatically set up EBS volumes when the instance is launched.
ibdmsEBS :: Lens' InstanceBlockDeviceMappingSpecification (Maybe EBSInstanceBlockDeviceSpecification)
ibdmsEBS = lens _ibdmsEBS (\s a -> s {_ibdmsEBS = a})

-- | suppress the specified device included in the block device mapping.
ibdmsNoDevice :: Lens' InstanceBlockDeviceMappingSpecification (Maybe Text)
ibdmsNoDevice = lens _ibdmsNoDevice (\s a -> s {_ibdmsNoDevice = a})

-- | The virtual device name.
ibdmsVirtualName :: Lens' InstanceBlockDeviceMappingSpecification (Maybe Text)
ibdmsVirtualName = lens _ibdmsVirtualName (\s a -> s {_ibdmsVirtualName = a})

-- | The device name (for example, @/dev/sdh@ or @xvdh@ ).
ibdmsDeviceName :: Lens' InstanceBlockDeviceMappingSpecification (Maybe Text)
ibdmsDeviceName = lens _ibdmsDeviceName (\s a -> s {_ibdmsDeviceName = a})

instance
  Hashable
    InstanceBlockDeviceMappingSpecification

instance
  NFData
    InstanceBlockDeviceMappingSpecification

instance
  ToQuery
    InstanceBlockDeviceMappingSpecification
  where
  toQuery InstanceBlockDeviceMappingSpecification' {..} =
    mconcat
      [ "Ebs" =: _ibdmsEBS,
        "NoDevice" =: _ibdmsNoDevice,
        "VirtualName" =: _ibdmsVirtualName,
        "DeviceName" =: _ibdmsDeviceName
      ]
