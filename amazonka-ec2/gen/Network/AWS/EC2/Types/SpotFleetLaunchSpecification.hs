{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SpotFleetLaunchSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotFleetLaunchSpecification where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.BlockDeviceMapping
import Network.AWS.EC2.Types.GroupIdentifier
import Network.AWS.EC2.Types.IAMInstanceProfileSpecification
import Network.AWS.EC2.Types.InstanceNetworkInterfaceSpecification
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.SpotFleetMonitoring
import Network.AWS.EC2.Types.SpotFleetTagSpecification
import Network.AWS.EC2.Types.SpotPlacement
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the launch specification for one or more Spot Instances. If you include On-Demand capacity in your fleet request or want to specify an EFA network device, you can't use @SpotFleetLaunchSpecification@ ; you must use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_LaunchTemplateConfig.html LaunchTemplateConfig> .
--
--
--
-- /See:/ 'spotFleetLaunchSpecification' smart constructor.
data SpotFleetLaunchSpecification = SpotFleetLaunchSpecification'
  { _sflsTagSpecifications ::
      !( Maybe
           [SpotFleetTagSpecification]
       ),
    _sflsInstanceType ::
      !( Maybe
           InstanceType
       ),
    _sflsEBSOptimized ::
      !(Maybe Bool),
    _sflsUserData ::
      !(Maybe Text),
    _sflsPlacement ::
      !( Maybe
           SpotPlacement
       ),
    _sflsAddressingType ::
      !(Maybe Text),
    _sflsRAMDiskId ::
      !(Maybe Text),
    _sflsSpotPrice ::
      !(Maybe Text),
    _sflsImageId ::
      !(Maybe Text),
    _sflsSecurityGroups ::
      !( Maybe
           [GroupIdentifier]
       ),
    _sflsIAMInstanceProfile ::
      !( Maybe
           IAMInstanceProfileSpecification
       ),
    _sflsMonitoring ::
      !( Maybe
           SpotFleetMonitoring
       ),
    _sflsBlockDeviceMappings ::
      !( Maybe
           [BlockDeviceMapping]
       ),
    _sflsSubnetId ::
      !(Maybe Text),
    _sflsKernelId ::
      !(Maybe Text),
    _sflsKeyName ::
      !(Maybe Text),
    _sflsNetworkInterfaces ::
      !( Maybe
           [InstanceNetworkInterfaceSpecification]
       ),
    _sflsWeightedCapacity ::
      !( Maybe
           Double
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

-- | Creates a value of 'SpotFleetLaunchSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sflsTagSpecifications' - The tags to apply during creation.
--
-- * 'sflsInstanceType' - The instance type.
--
-- * 'sflsEBSOptimized' - Indicates whether the instances are optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance. Default: @false@
--
-- * 'sflsUserData' - The Base64-encoded user data that instances use when starting up.
--
-- * 'sflsPlacement' - The placement information.
--
-- * 'sflsAddressingType' - Deprecated.
--
-- * 'sflsRAMDiskId' - The ID of the RAM disk. Some kernels require additional drivers at launch. Check the kernel requirements for information about whether you need to specify a RAM disk. To find kernel requirements, refer to the AWS Resource Center and search for the kernel ID.
--
-- * 'sflsSpotPrice' - The maximum price per unit hour that you are willing to pay for a Spot Instance. If this value is not specified, the default is the Spot price specified for the fleet. To determine the Spot price per unit hour, divide the Spot price by the value of @WeightedCapacity@ .
--
-- * 'sflsImageId' - The ID of the AMI.
--
-- * 'sflsSecurityGroups' - One or more security groups. When requesting instances in a VPC, you must specify the IDs of the security groups. When requesting instances in EC2-Classic, you can specify the names or the IDs of the security groups.
--
-- * 'sflsIAMInstanceProfile' - The IAM instance profile.
--
-- * 'sflsMonitoring' - Enable or disable monitoring for the instances.
--
-- * 'sflsBlockDeviceMappings' - One or more block devices that are mapped to the Spot Instances. You can't specify both a snapshot ID and an encryption value. This is because only blank volumes can be encrypted on creation. If a snapshot is the basis for a volume, it is not blank and its encryption status is used for the volume encryption status.
--
-- * 'sflsSubnetId' - The IDs of the subnets in which to launch the instances. To specify multiple subnets, separate them using commas; for example, "subnet-1234abcdeexample1, subnet-0987cdef6example2".
--
-- * 'sflsKernelId' - The ID of the kernel.
--
-- * 'sflsKeyName' - The name of the key pair.
--
-- * 'sflsNetworkInterfaces' - One or more network interfaces. If you specify a network interface, you must specify subnet IDs and security group IDs using the network interface.
--
-- * 'sflsWeightedCapacity' - The number of units provided by the specified instance type. These are the same units that you chose to set the target capacity in terms of instances, or a performance characteristic such as vCPUs, memory, or I/O. If the target capacity divided by this value is not a whole number, Amazon EC2 rounds the number of instances to the next whole number. If this value is not specified, the default is 1.
spotFleetLaunchSpecification ::
  SpotFleetLaunchSpecification
spotFleetLaunchSpecification =
  SpotFleetLaunchSpecification'
    { _sflsTagSpecifications =
        Nothing,
      _sflsInstanceType = Nothing,
      _sflsEBSOptimized = Nothing,
      _sflsUserData = Nothing,
      _sflsPlacement = Nothing,
      _sflsAddressingType = Nothing,
      _sflsRAMDiskId = Nothing,
      _sflsSpotPrice = Nothing,
      _sflsImageId = Nothing,
      _sflsSecurityGroups = Nothing,
      _sflsIAMInstanceProfile = Nothing,
      _sflsMonitoring = Nothing,
      _sflsBlockDeviceMappings = Nothing,
      _sflsSubnetId = Nothing,
      _sflsKernelId = Nothing,
      _sflsKeyName = Nothing,
      _sflsNetworkInterfaces = Nothing,
      _sflsWeightedCapacity = Nothing
    }

-- | The tags to apply during creation.
sflsTagSpecifications :: Lens' SpotFleetLaunchSpecification [SpotFleetTagSpecification]
sflsTagSpecifications = lens _sflsTagSpecifications (\s a -> s {_sflsTagSpecifications = a}) . _Default . _Coerce

-- | The instance type.
sflsInstanceType :: Lens' SpotFleetLaunchSpecification (Maybe InstanceType)
sflsInstanceType = lens _sflsInstanceType (\s a -> s {_sflsInstanceType = a})

-- | Indicates whether the instances are optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance. Default: @false@
sflsEBSOptimized :: Lens' SpotFleetLaunchSpecification (Maybe Bool)
sflsEBSOptimized = lens _sflsEBSOptimized (\s a -> s {_sflsEBSOptimized = a})

-- | The Base64-encoded user data that instances use when starting up.
sflsUserData :: Lens' SpotFleetLaunchSpecification (Maybe Text)
sflsUserData = lens _sflsUserData (\s a -> s {_sflsUserData = a})

-- | The placement information.
sflsPlacement :: Lens' SpotFleetLaunchSpecification (Maybe SpotPlacement)
sflsPlacement = lens _sflsPlacement (\s a -> s {_sflsPlacement = a})

-- | Deprecated.
sflsAddressingType :: Lens' SpotFleetLaunchSpecification (Maybe Text)
sflsAddressingType = lens _sflsAddressingType (\s a -> s {_sflsAddressingType = a})

-- | The ID of the RAM disk. Some kernels require additional drivers at launch. Check the kernel requirements for information about whether you need to specify a RAM disk. To find kernel requirements, refer to the AWS Resource Center and search for the kernel ID.
sflsRAMDiskId :: Lens' SpotFleetLaunchSpecification (Maybe Text)
sflsRAMDiskId = lens _sflsRAMDiskId (\s a -> s {_sflsRAMDiskId = a})

-- | The maximum price per unit hour that you are willing to pay for a Spot Instance. If this value is not specified, the default is the Spot price specified for the fleet. To determine the Spot price per unit hour, divide the Spot price by the value of @WeightedCapacity@ .
sflsSpotPrice :: Lens' SpotFleetLaunchSpecification (Maybe Text)
sflsSpotPrice = lens _sflsSpotPrice (\s a -> s {_sflsSpotPrice = a})

-- | The ID of the AMI.
sflsImageId :: Lens' SpotFleetLaunchSpecification (Maybe Text)
sflsImageId = lens _sflsImageId (\s a -> s {_sflsImageId = a})

-- | One or more security groups. When requesting instances in a VPC, you must specify the IDs of the security groups. When requesting instances in EC2-Classic, you can specify the names or the IDs of the security groups.
sflsSecurityGroups :: Lens' SpotFleetLaunchSpecification [GroupIdentifier]
sflsSecurityGroups = lens _sflsSecurityGroups (\s a -> s {_sflsSecurityGroups = a}) . _Default . _Coerce

-- | The IAM instance profile.
sflsIAMInstanceProfile :: Lens' SpotFleetLaunchSpecification (Maybe IAMInstanceProfileSpecification)
sflsIAMInstanceProfile = lens _sflsIAMInstanceProfile (\s a -> s {_sflsIAMInstanceProfile = a})

-- | Enable or disable monitoring for the instances.
sflsMonitoring :: Lens' SpotFleetLaunchSpecification (Maybe SpotFleetMonitoring)
sflsMonitoring = lens _sflsMonitoring (\s a -> s {_sflsMonitoring = a})

-- | One or more block devices that are mapped to the Spot Instances. You can't specify both a snapshot ID and an encryption value. This is because only blank volumes can be encrypted on creation. If a snapshot is the basis for a volume, it is not blank and its encryption status is used for the volume encryption status.
sflsBlockDeviceMappings :: Lens' SpotFleetLaunchSpecification [BlockDeviceMapping]
sflsBlockDeviceMappings = lens _sflsBlockDeviceMappings (\s a -> s {_sflsBlockDeviceMappings = a}) . _Default . _Coerce

-- | The IDs of the subnets in which to launch the instances. To specify multiple subnets, separate them using commas; for example, "subnet-1234abcdeexample1, subnet-0987cdef6example2".
sflsSubnetId :: Lens' SpotFleetLaunchSpecification (Maybe Text)
sflsSubnetId = lens _sflsSubnetId (\s a -> s {_sflsSubnetId = a})

-- | The ID of the kernel.
sflsKernelId :: Lens' SpotFleetLaunchSpecification (Maybe Text)
sflsKernelId = lens _sflsKernelId (\s a -> s {_sflsKernelId = a})

-- | The name of the key pair.
sflsKeyName :: Lens' SpotFleetLaunchSpecification (Maybe Text)
sflsKeyName = lens _sflsKeyName (\s a -> s {_sflsKeyName = a})

-- | One or more network interfaces. If you specify a network interface, you must specify subnet IDs and security group IDs using the network interface.
sflsNetworkInterfaces :: Lens' SpotFleetLaunchSpecification [InstanceNetworkInterfaceSpecification]
sflsNetworkInterfaces = lens _sflsNetworkInterfaces (\s a -> s {_sflsNetworkInterfaces = a}) . _Default . _Coerce

-- | The number of units provided by the specified instance type. These are the same units that you chose to set the target capacity in terms of instances, or a performance characteristic such as vCPUs, memory, or I/O. If the target capacity divided by this value is not a whole number, Amazon EC2 rounds the number of instances to the next whole number. If this value is not specified, the default is 1.
sflsWeightedCapacity :: Lens' SpotFleetLaunchSpecification (Maybe Double)
sflsWeightedCapacity = lens _sflsWeightedCapacity (\s a -> s {_sflsWeightedCapacity = a})

instance FromXML SpotFleetLaunchSpecification where
  parseXML x =
    SpotFleetLaunchSpecification'
      <$> ( x .@? "tagSpecificationSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "instanceType")
      <*> (x .@? "ebsOptimized")
      <*> (x .@? "userData")
      <*> (x .@? "placement")
      <*> (x .@? "addressingType")
      <*> (x .@? "ramdiskId")
      <*> (x .@? "spotPrice")
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
      <*> (x .@? "weightedCapacity")

instance Hashable SpotFleetLaunchSpecification

instance NFData SpotFleetLaunchSpecification

instance ToQuery SpotFleetLaunchSpecification where
  toQuery SpotFleetLaunchSpecification' {..} =
    mconcat
      [ toQuery
          ( toQueryList "TagSpecificationSet"
              <$> _sflsTagSpecifications
          ),
        "InstanceType" =: _sflsInstanceType,
        "EbsOptimized" =: _sflsEBSOptimized,
        "UserData" =: _sflsUserData,
        "Placement" =: _sflsPlacement,
        "AddressingType" =: _sflsAddressingType,
        "RamdiskId" =: _sflsRAMDiskId,
        "SpotPrice" =: _sflsSpotPrice,
        "ImageId" =: _sflsImageId,
        toQuery
          (toQueryList "GroupSet" <$> _sflsSecurityGroups),
        "IamInstanceProfile" =: _sflsIAMInstanceProfile,
        "Monitoring" =: _sflsMonitoring,
        toQuery
          ( toQueryList "BlockDeviceMapping"
              <$> _sflsBlockDeviceMappings
          ),
        "SubnetId" =: _sflsSubnetId,
        "KernelId" =: _sflsKernelId,
        "KeyName" =: _sflsKeyName,
        toQuery
          ( toQueryList "NetworkInterfaceSet"
              <$> _sflsNetworkInterfaces
          ),
        "WeightedCapacity" =: _sflsWeightedCapacity
      ]
