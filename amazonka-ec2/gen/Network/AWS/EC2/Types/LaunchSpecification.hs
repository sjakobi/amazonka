{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchSpecification where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.BlockDeviceMapping
import Network.AWS.EC2.Types.GroupIdentifier
import Network.AWS.EC2.Types.IAMInstanceProfileSpecification
import Network.AWS.EC2.Types.InstanceNetworkInterfaceSpecification
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.RunInstancesMonitoringEnabled
import Network.AWS.EC2.Types.SpotPlacement
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the launch specification for an instance.
--
--
--
-- /See:/ 'launchSpecification' smart constructor.
data LaunchSpecification = LaunchSpecification'
  { _lsInstanceType ::
      !(Maybe InstanceType),
    _lsEBSOptimized ::
      !(Maybe Bool),
    _lsUserData :: !(Maybe Text),
    _lsPlacement ::
      !(Maybe SpotPlacement),
    _lsAddressingType ::
      !(Maybe Text),
    _lsRAMDiskId :: !(Maybe Text),
    _lsImageId :: !(Maybe Text),
    _lsSecurityGroups ::
      !(Maybe [GroupIdentifier]),
    _lsIAMInstanceProfile ::
      !( Maybe
           IAMInstanceProfileSpecification
       ),
    _lsMonitoring ::
      !( Maybe
           RunInstancesMonitoringEnabled
       ),
    _lsBlockDeviceMappings ::
      !(Maybe [BlockDeviceMapping]),
    _lsSubnetId :: !(Maybe Text),
    _lsKernelId :: !(Maybe Text),
    _lsKeyName :: !(Maybe Text),
    _lsNetworkInterfaces ::
      !( Maybe
           [InstanceNetworkInterfaceSpecification]
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LaunchSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsInstanceType' - The instance type.
--
-- * 'lsEBSOptimized' - Indicates whether the instance is optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance. Default: @false@
--
-- * 'lsUserData' - The Base64-encoded user data for the instance.
--
-- * 'lsPlacement' - The placement information for the instance.
--
-- * 'lsAddressingType' - Deprecated.
--
-- * 'lsRAMDiskId' - The ID of the RAM disk.
--
-- * 'lsImageId' - The ID of the AMI.
--
-- * 'lsSecurityGroups' - One or more security groups. When requesting instances in a VPC, you must specify the IDs of the security groups. When requesting instances in EC2-Classic, you can specify the names or the IDs of the security groups.
--
-- * 'lsIAMInstanceProfile' - The IAM instance profile.
--
-- * 'lsMonitoring' - Undocumented member.
--
-- * 'lsBlockDeviceMappings' - One or more block device mapping entries.
--
-- * 'lsSubnetId' - The ID of the subnet in which to launch the instance.
--
-- * 'lsKernelId' - The ID of the kernel.
--
-- * 'lsKeyName' - The name of the key pair.
--
-- * 'lsNetworkInterfaces' - One or more network interfaces. If you specify a network interface, you must specify subnet IDs and security group IDs using the network interface.
launchSpecification ::
  LaunchSpecification
launchSpecification =
  LaunchSpecification'
    { _lsInstanceType = Nothing,
      _lsEBSOptimized = Nothing,
      _lsUserData = Nothing,
      _lsPlacement = Nothing,
      _lsAddressingType = Nothing,
      _lsRAMDiskId = Nothing,
      _lsImageId = Nothing,
      _lsSecurityGroups = Nothing,
      _lsIAMInstanceProfile = Nothing,
      _lsMonitoring = Nothing,
      _lsBlockDeviceMappings = Nothing,
      _lsSubnetId = Nothing,
      _lsKernelId = Nothing,
      _lsKeyName = Nothing,
      _lsNetworkInterfaces = Nothing
    }

-- | The instance type.
lsInstanceType :: Lens' LaunchSpecification (Maybe InstanceType)
lsInstanceType = lens _lsInstanceType (\s a -> s {_lsInstanceType = a})

-- | Indicates whether the instance is optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance. Default: @false@
lsEBSOptimized :: Lens' LaunchSpecification (Maybe Bool)
lsEBSOptimized = lens _lsEBSOptimized (\s a -> s {_lsEBSOptimized = a})

-- | The Base64-encoded user data for the instance.
lsUserData :: Lens' LaunchSpecification (Maybe Text)
lsUserData = lens _lsUserData (\s a -> s {_lsUserData = a})

-- | The placement information for the instance.
lsPlacement :: Lens' LaunchSpecification (Maybe SpotPlacement)
lsPlacement = lens _lsPlacement (\s a -> s {_lsPlacement = a})

-- | Deprecated.
lsAddressingType :: Lens' LaunchSpecification (Maybe Text)
lsAddressingType = lens _lsAddressingType (\s a -> s {_lsAddressingType = a})

-- | The ID of the RAM disk.
lsRAMDiskId :: Lens' LaunchSpecification (Maybe Text)
lsRAMDiskId = lens _lsRAMDiskId (\s a -> s {_lsRAMDiskId = a})

-- | The ID of the AMI.
lsImageId :: Lens' LaunchSpecification (Maybe Text)
lsImageId = lens _lsImageId (\s a -> s {_lsImageId = a})

-- | One or more security groups. When requesting instances in a VPC, you must specify the IDs of the security groups. When requesting instances in EC2-Classic, you can specify the names or the IDs of the security groups.
lsSecurityGroups :: Lens' LaunchSpecification [GroupIdentifier]
lsSecurityGroups = lens _lsSecurityGroups (\s a -> s {_lsSecurityGroups = a}) . _Default . _Coerce

-- | The IAM instance profile.
lsIAMInstanceProfile :: Lens' LaunchSpecification (Maybe IAMInstanceProfileSpecification)
lsIAMInstanceProfile = lens _lsIAMInstanceProfile (\s a -> s {_lsIAMInstanceProfile = a})

-- | Undocumented member.
lsMonitoring :: Lens' LaunchSpecification (Maybe RunInstancesMonitoringEnabled)
lsMonitoring = lens _lsMonitoring (\s a -> s {_lsMonitoring = a})

-- | One or more block device mapping entries.
lsBlockDeviceMappings :: Lens' LaunchSpecification [BlockDeviceMapping]
lsBlockDeviceMappings = lens _lsBlockDeviceMappings (\s a -> s {_lsBlockDeviceMappings = a}) . _Default . _Coerce

-- | The ID of the subnet in which to launch the instance.
lsSubnetId :: Lens' LaunchSpecification (Maybe Text)
lsSubnetId = lens _lsSubnetId (\s a -> s {_lsSubnetId = a})

-- | The ID of the kernel.
lsKernelId :: Lens' LaunchSpecification (Maybe Text)
lsKernelId = lens _lsKernelId (\s a -> s {_lsKernelId = a})

-- | The name of the key pair.
lsKeyName :: Lens' LaunchSpecification (Maybe Text)
lsKeyName = lens _lsKeyName (\s a -> s {_lsKeyName = a})

-- | One or more network interfaces. If you specify a network interface, you must specify subnet IDs and security group IDs using the network interface.
lsNetworkInterfaces :: Lens' LaunchSpecification [InstanceNetworkInterfaceSpecification]
lsNetworkInterfaces = lens _lsNetworkInterfaces (\s a -> s {_lsNetworkInterfaces = a}) . _Default . _Coerce

instance FromXML LaunchSpecification where
  parseXML x =
    LaunchSpecification'
      <$> (x .@? "instanceType")
      <*> (x .@? "ebsOptimized")
      <*> (x .@? "userData")
      <*> (x .@? "placement")
      <*> (x .@? "addressingType")
      <*> (x .@? "ramdiskId")
      <*> (x .@? "imageId")
      <*> ( x .@? "groupSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "iamInstanceProfile")
      <*> (x .@? "monitoring")
      <*> ( x .@? "blockDeviceMapping" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "subnetId")
      <*> (x .@? "kernelId")
      <*> (x .@? "keyName")
      <*> ( x .@? "networkInterfaceSet" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable LaunchSpecification

instance NFData LaunchSpecification
