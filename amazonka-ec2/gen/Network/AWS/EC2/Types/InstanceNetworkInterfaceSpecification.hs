{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceNetworkInterfaceSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceNetworkInterfaceSpecification where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceIPv6Address
import Network.AWS.EC2.Types.PrivateIPAddressSpecification
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a network interface.
--
--
--
-- /See:/ 'instanceNetworkInterfaceSpecification' smart constructor.
data InstanceNetworkInterfaceSpecification = InstanceNetworkInterfaceSpecification'
  { _inisGroups ::
      !( Maybe
           [Text]
       ),
    _inisPrivateIPAddresses ::
      !( Maybe
           [PrivateIPAddressSpecification]
       ),
    _inisIPv6Addresses ::
      !( Maybe
           [InstanceIPv6Address]
       ),
    _inisInterfaceType ::
      !( Maybe
           Text
       ),
    _inisAssociatePublicIPAddress ::
      !( Maybe
           Bool
       ),
    _inisAssociateCarrierIPAddress ::
      !( Maybe
           Bool
       ),
    _inisIPv6AddressCount ::
      !( Maybe
           Int
       ),
    _inisNetworkCardIndex ::
      !( Maybe
           Int
       ),
    _inisDeleteOnTermination ::
      !( Maybe
           Bool
       ),
    _inisNetworkInterfaceId ::
      !( Maybe
           Text
       ),
    _inisSubnetId ::
      !( Maybe
           Text
       ),
    _inisDescription ::
      !( Maybe
           Text
       ),
    _inisDeviceIndex ::
      !( Maybe
           Int
       ),
    _inisSecondaryPrivateIPAddressCount ::
      !( Maybe
           Int
       ),
    _inisPrivateIPAddress ::
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

-- | Creates a value of 'InstanceNetworkInterfaceSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'inisGroups' - The IDs of the security groups for the network interface. Applies only if creating a network interface when launching an instance.
--
-- * 'inisPrivateIPAddresses' - One or more private IPv4 addresses to assign to the network interface. Only one private IPv4 address can be designated as primary. You cannot specify this option if you're launching more than one instance in a <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html RunInstances> request.
--
-- * 'inisIPv6Addresses' - One or more IPv6 addresses to assign to the network interface. You cannot specify this option and the option to assign a number of IPv6 addresses in the same request. You cannot specify this option if you've specified a minimum number of instances to launch.
--
-- * 'inisInterfaceType' - The type of network interface. To create an Elastic Fabric Adapter (EFA), specify @efa@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/efa.html Elastic Fabric Adapter> in the /Amazon Elastic Compute Cloud User Guide/ . If you are not creating an EFA, specify @interface@ or omit this parameter. Valid values: @interface@ | @efa@
--
-- * 'inisAssociatePublicIPAddress' - Indicates whether to assign a public IPv4 address to an instance you launch in a VPC. The public IP address can only be assigned to a network interface for eth0, and can only be assigned to a new network interface, not an existing one. You cannot specify more than one network interface in the request. If launching into a default subnet, the default value is @true@ .
--
-- * 'inisAssociateCarrierIPAddress' - Indicates whether to assign a carrier IP address to the network interface. You can only assign a carrier IP address to a network interface that is in a subnet in a Wavelength Zone. For more information about carrier IP addresses, see Carrier IP addresses in the AWS Wavelength Developer Guide.
--
-- * 'inisIPv6AddressCount' - A number of IPv6 addresses to assign to the network interface. Amazon EC2 chooses the IPv6 addresses from the range of the subnet. You cannot specify this option and the option to assign specific IPv6 addresses in the same request. You can specify this option if you've specified a minimum number of instances to launch.
--
-- * 'inisNetworkCardIndex' - The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
--
-- * 'inisDeleteOnTermination' - If set to @true@ , the interface is deleted when the instance is terminated. You can specify @true@ only if creating a new network interface when launching an instance.
--
-- * 'inisNetworkInterfaceId' - The ID of the network interface. If you are creating a Spot Fleet, omit this parameter because you can’t specify a network interface ID in a launch specification.
--
-- * 'inisSubnetId' - The ID of the subnet associated with the network interface. Applies only if creating a network interface when launching an instance.
--
-- * 'inisDescription' - The description of the network interface. Applies only if creating a network interface when launching an instance.
--
-- * 'inisDeviceIndex' - The position of the network interface in the attachment order. A primary network interface has a device index of 0. If you specify a network interface when launching an instance, you must specify the device index.
--
-- * 'inisSecondaryPrivateIPAddressCount' - The number of secondary private IPv4 addresses. You can't specify this option and specify more than one private IP address using the private IP addresses option. You cannot specify this option if you're launching more than one instance in a <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html RunInstances> request.
--
-- * 'inisPrivateIPAddress' - The private IPv4 address of the network interface. Applies only if creating a network interface when launching an instance. You cannot specify this option if you're launching more than one instance in a <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html RunInstances> request.
instanceNetworkInterfaceSpecification ::
  InstanceNetworkInterfaceSpecification
instanceNetworkInterfaceSpecification =
  InstanceNetworkInterfaceSpecification'
    { _inisGroups =
        Nothing,
      _inisPrivateIPAddresses = Nothing,
      _inisIPv6Addresses = Nothing,
      _inisInterfaceType = Nothing,
      _inisAssociatePublicIPAddress =
        Nothing,
      _inisAssociateCarrierIPAddress =
        Nothing,
      _inisIPv6AddressCount = Nothing,
      _inisNetworkCardIndex = Nothing,
      _inisDeleteOnTermination = Nothing,
      _inisNetworkInterfaceId = Nothing,
      _inisSubnetId = Nothing,
      _inisDescription = Nothing,
      _inisDeviceIndex = Nothing,
      _inisSecondaryPrivateIPAddressCount =
        Nothing,
      _inisPrivateIPAddress = Nothing
    }

-- | The IDs of the security groups for the network interface. Applies only if creating a network interface when launching an instance.
inisGroups :: Lens' InstanceNetworkInterfaceSpecification [Text]
inisGroups = lens _inisGroups (\s a -> s {_inisGroups = a}) . _Default . _Coerce

-- | One or more private IPv4 addresses to assign to the network interface. Only one private IPv4 address can be designated as primary. You cannot specify this option if you're launching more than one instance in a <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html RunInstances> request.
inisPrivateIPAddresses :: Lens' InstanceNetworkInterfaceSpecification [PrivateIPAddressSpecification]
inisPrivateIPAddresses = lens _inisPrivateIPAddresses (\s a -> s {_inisPrivateIPAddresses = a}) . _Default . _Coerce

-- | One or more IPv6 addresses to assign to the network interface. You cannot specify this option and the option to assign a number of IPv6 addresses in the same request. You cannot specify this option if you've specified a minimum number of instances to launch.
inisIPv6Addresses :: Lens' InstanceNetworkInterfaceSpecification [InstanceIPv6Address]
inisIPv6Addresses = lens _inisIPv6Addresses (\s a -> s {_inisIPv6Addresses = a}) . _Default . _Coerce

-- | The type of network interface. To create an Elastic Fabric Adapter (EFA), specify @efa@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/efa.html Elastic Fabric Adapter> in the /Amazon Elastic Compute Cloud User Guide/ . If you are not creating an EFA, specify @interface@ or omit this parameter. Valid values: @interface@ | @efa@
inisInterfaceType :: Lens' InstanceNetworkInterfaceSpecification (Maybe Text)
inisInterfaceType = lens _inisInterfaceType (\s a -> s {_inisInterfaceType = a})

-- | Indicates whether to assign a public IPv4 address to an instance you launch in a VPC. The public IP address can only be assigned to a network interface for eth0, and can only be assigned to a new network interface, not an existing one. You cannot specify more than one network interface in the request. If launching into a default subnet, the default value is @true@ .
inisAssociatePublicIPAddress :: Lens' InstanceNetworkInterfaceSpecification (Maybe Bool)
inisAssociatePublicIPAddress = lens _inisAssociatePublicIPAddress (\s a -> s {_inisAssociatePublicIPAddress = a})

-- | Indicates whether to assign a carrier IP address to the network interface. You can only assign a carrier IP address to a network interface that is in a subnet in a Wavelength Zone. For more information about carrier IP addresses, see Carrier IP addresses in the AWS Wavelength Developer Guide.
inisAssociateCarrierIPAddress :: Lens' InstanceNetworkInterfaceSpecification (Maybe Bool)
inisAssociateCarrierIPAddress = lens _inisAssociateCarrierIPAddress (\s a -> s {_inisAssociateCarrierIPAddress = a})

-- | A number of IPv6 addresses to assign to the network interface. Amazon EC2 chooses the IPv6 addresses from the range of the subnet. You cannot specify this option and the option to assign specific IPv6 addresses in the same request. You can specify this option if you've specified a minimum number of instances to launch.
inisIPv6AddressCount :: Lens' InstanceNetworkInterfaceSpecification (Maybe Int)
inisIPv6AddressCount = lens _inisIPv6AddressCount (\s a -> s {_inisIPv6AddressCount = a})

-- | The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
inisNetworkCardIndex :: Lens' InstanceNetworkInterfaceSpecification (Maybe Int)
inisNetworkCardIndex = lens _inisNetworkCardIndex (\s a -> s {_inisNetworkCardIndex = a})

-- | If set to @true@ , the interface is deleted when the instance is terminated. You can specify @true@ only if creating a new network interface when launching an instance.
inisDeleteOnTermination :: Lens' InstanceNetworkInterfaceSpecification (Maybe Bool)
inisDeleteOnTermination = lens _inisDeleteOnTermination (\s a -> s {_inisDeleteOnTermination = a})

-- | The ID of the network interface. If you are creating a Spot Fleet, omit this parameter because you can’t specify a network interface ID in a launch specification.
inisNetworkInterfaceId :: Lens' InstanceNetworkInterfaceSpecification (Maybe Text)
inisNetworkInterfaceId = lens _inisNetworkInterfaceId (\s a -> s {_inisNetworkInterfaceId = a})

-- | The ID of the subnet associated with the network interface. Applies only if creating a network interface when launching an instance.
inisSubnetId :: Lens' InstanceNetworkInterfaceSpecification (Maybe Text)
inisSubnetId = lens _inisSubnetId (\s a -> s {_inisSubnetId = a})

-- | The description of the network interface. Applies only if creating a network interface when launching an instance.
inisDescription :: Lens' InstanceNetworkInterfaceSpecification (Maybe Text)
inisDescription = lens _inisDescription (\s a -> s {_inisDescription = a})

-- | The position of the network interface in the attachment order. A primary network interface has a device index of 0. If you specify a network interface when launching an instance, you must specify the device index.
inisDeviceIndex :: Lens' InstanceNetworkInterfaceSpecification (Maybe Int)
inisDeviceIndex = lens _inisDeviceIndex (\s a -> s {_inisDeviceIndex = a})

-- | The number of secondary private IPv4 addresses. You can't specify this option and specify more than one private IP address using the private IP addresses option. You cannot specify this option if you're launching more than one instance in a <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html RunInstances> request.
inisSecondaryPrivateIPAddressCount :: Lens' InstanceNetworkInterfaceSpecification (Maybe Int)
inisSecondaryPrivateIPAddressCount = lens _inisSecondaryPrivateIPAddressCount (\s a -> s {_inisSecondaryPrivateIPAddressCount = a})

-- | The private IPv4 address of the network interface. Applies only if creating a network interface when launching an instance. You cannot specify this option if you're launching more than one instance in a <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html RunInstances> request.
inisPrivateIPAddress :: Lens' InstanceNetworkInterfaceSpecification (Maybe Text)
inisPrivateIPAddress = lens _inisPrivateIPAddress (\s a -> s {_inisPrivateIPAddress = a})

instance
  FromXML
    InstanceNetworkInterfaceSpecification
  where
  parseXML x =
    InstanceNetworkInterfaceSpecification'
      <$> ( x .@? "SecurityGroupId" .!@ mempty
              >>= may (parseXMLList "SecurityGroupId")
          )
      <*> ( x .@? "privateIpAddressesSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "ipv6AddressesSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "InterfaceType")
      <*> (x .@? "associatePublicIpAddress")
      <*> (x .@? "AssociateCarrierIpAddress")
      <*> (x .@? "ipv6AddressCount")
      <*> (x .@? "NetworkCardIndex")
      <*> (x .@? "deleteOnTermination")
      <*> (x .@? "networkInterfaceId")
      <*> (x .@? "subnetId")
      <*> (x .@? "description")
      <*> (x .@? "deviceIndex")
      <*> (x .@? "secondaryPrivateIpAddressCount")
      <*> (x .@? "privateIpAddress")

instance
  Hashable
    InstanceNetworkInterfaceSpecification

instance NFData InstanceNetworkInterfaceSpecification

instance
  ToQuery
    InstanceNetworkInterfaceSpecification
  where
  toQuery InstanceNetworkInterfaceSpecification' {..} =
    mconcat
      [ toQuery
          (toQueryList "SecurityGroupId" <$> _inisGroups),
        toQuery
          ( toQueryList "PrivateIpAddresses"
              <$> _inisPrivateIPAddresses
          ),
        toQuery
          (toQueryList "Ipv6Addresses" <$> _inisIPv6Addresses),
        "InterfaceType" =: _inisInterfaceType,
        "AssociatePublicIpAddress"
          =: _inisAssociatePublicIPAddress,
        "AssociateCarrierIpAddress"
          =: _inisAssociateCarrierIPAddress,
        "Ipv6AddressCount" =: _inisIPv6AddressCount,
        "NetworkCardIndex" =: _inisNetworkCardIndex,
        "DeleteOnTermination" =: _inisDeleteOnTermination,
        "NetworkInterfaceId" =: _inisNetworkInterfaceId,
        "SubnetId" =: _inisSubnetId,
        "Description" =: _inisDescription,
        "DeviceIndex" =: _inisDeviceIndex,
        "SecondaryPrivateIpAddressCount"
          =: _inisSecondaryPrivateIPAddressCount,
        "PrivateIpAddress" =: _inisPrivateIPAddress
      ]
