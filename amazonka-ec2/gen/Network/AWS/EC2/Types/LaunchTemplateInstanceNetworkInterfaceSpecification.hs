{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateInstanceNetworkInterfaceSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateInstanceNetworkInterfaceSpecification where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceIPv6Address
import Network.AWS.EC2.Types.PrivateIPAddressSpecification
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a network interface.
--
--
--
-- /See:/ 'launchTemplateInstanceNetworkInterfaceSpecification' smart constructor.
data LaunchTemplateInstanceNetworkInterfaceSpecification = LaunchTemplateInstanceNetworkInterfaceSpecification'
  { _ltinisGroups ::
      !( Maybe
           [Text]
       ),
    _ltinisPrivateIPAddresses ::
      !( Maybe
           [PrivateIPAddressSpecification]
       ),
    _ltinisIPv6Addresses ::
      !( Maybe
           [InstanceIPv6Address]
       ),
    _ltinisInterfaceType ::
      !( Maybe
           Text
       ),
    _ltinisAssociatePublicIPAddress ::
      !( Maybe
           Bool
       ),
    _ltinisAssociateCarrierIPAddress ::
      !( Maybe
           Bool
       ),
    _ltinisIPv6AddressCount ::
      !( Maybe
           Int
       ),
    _ltinisNetworkCardIndex ::
      !( Maybe
           Int
       ),
    _ltinisDeleteOnTermination ::
      !( Maybe
           Bool
       ),
    _ltinisNetworkInterfaceId ::
      !( Maybe
           Text
       ),
    _ltinisSubnetId ::
      !( Maybe
           Text
       ),
    _ltinisDescription ::
      !( Maybe
           Text
       ),
    _ltinisDeviceIndex ::
      !( Maybe
           Int
       ),
    _ltinisSecondaryPrivateIPAddressCount ::
      !( Maybe
           Int
       ),
    _ltinisPrivateIPAddress ::
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

-- | Creates a value of 'LaunchTemplateInstanceNetworkInterfaceSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltinisGroups' - The IDs of one or more security groups.
--
-- * 'ltinisPrivateIPAddresses' - One or more private IPv4 addresses.
--
-- * 'ltinisIPv6Addresses' - The IPv6 addresses for the network interface.
--
-- * 'ltinisInterfaceType' - The type of network interface.
--
-- * 'ltinisAssociatePublicIPAddress' - Indicates whether to associate a public IPv4 address with eth0 for a new network interface.
--
-- * 'ltinisAssociateCarrierIPAddress' - Indicates whether to associate a Carrier IP address with eth0 for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. For more information about Carrier IP addresses, see <https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#provider-owned-ip Carrier IP addresses> in the /AWS Wavelength Developer Guide/ .
--
-- * 'ltinisIPv6AddressCount' - The number of IPv6 addresses for the network interface.
--
-- * 'ltinisNetworkCardIndex' - The index of the network card.
--
-- * 'ltinisDeleteOnTermination' - Indicates whether the network interface is deleted when the instance is terminated.
--
-- * 'ltinisNetworkInterfaceId' - The ID of the network interface.
--
-- * 'ltinisSubnetId' - The ID of the subnet for the network interface.
--
-- * 'ltinisDescription' - A description for the network interface.
--
-- * 'ltinisDeviceIndex' - The device index for the network interface attachment.
--
-- * 'ltinisSecondaryPrivateIPAddressCount' - The number of secondary private IPv4 addresses for the network interface.
--
-- * 'ltinisPrivateIPAddress' - The primary private IPv4 address of the network interface.
launchTemplateInstanceNetworkInterfaceSpecification ::
  LaunchTemplateInstanceNetworkInterfaceSpecification
launchTemplateInstanceNetworkInterfaceSpecification =
  LaunchTemplateInstanceNetworkInterfaceSpecification'
    { _ltinisGroups =
        Nothing,
      _ltinisPrivateIPAddresses =
        Nothing,
      _ltinisIPv6Addresses =
        Nothing,
      _ltinisInterfaceType =
        Nothing,
      _ltinisAssociatePublicIPAddress =
        Nothing,
      _ltinisAssociateCarrierIPAddress =
        Nothing,
      _ltinisIPv6AddressCount =
        Nothing,
      _ltinisNetworkCardIndex =
        Nothing,
      _ltinisDeleteOnTermination =
        Nothing,
      _ltinisNetworkInterfaceId =
        Nothing,
      _ltinisSubnetId =
        Nothing,
      _ltinisDescription =
        Nothing,
      _ltinisDeviceIndex =
        Nothing,
      _ltinisSecondaryPrivateIPAddressCount =
        Nothing,
      _ltinisPrivateIPAddress =
        Nothing
    }

-- | The IDs of one or more security groups.
ltinisGroups :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification [Text]
ltinisGroups = lens _ltinisGroups (\s a -> s {_ltinisGroups = a}) . _Default . _Coerce

-- | One or more private IPv4 addresses.
ltinisPrivateIPAddresses :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification [PrivateIPAddressSpecification]
ltinisPrivateIPAddresses = lens _ltinisPrivateIPAddresses (\s a -> s {_ltinisPrivateIPAddresses = a}) . _Default . _Coerce

-- | The IPv6 addresses for the network interface.
ltinisIPv6Addresses :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification [InstanceIPv6Address]
ltinisIPv6Addresses = lens _ltinisIPv6Addresses (\s a -> s {_ltinisIPv6Addresses = a}) . _Default . _Coerce

-- | The type of network interface.
ltinisInterfaceType :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Text)
ltinisInterfaceType = lens _ltinisInterfaceType (\s a -> s {_ltinisInterfaceType = a})

-- | Indicates whether to associate a public IPv4 address with eth0 for a new network interface.
ltinisAssociatePublicIPAddress :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Bool)
ltinisAssociatePublicIPAddress = lens _ltinisAssociatePublicIPAddress (\s a -> s {_ltinisAssociatePublicIPAddress = a})

-- | Indicates whether to associate a Carrier IP address with eth0 for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. For more information about Carrier IP addresses, see <https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#provider-owned-ip Carrier IP addresses> in the /AWS Wavelength Developer Guide/ .
ltinisAssociateCarrierIPAddress :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Bool)
ltinisAssociateCarrierIPAddress = lens _ltinisAssociateCarrierIPAddress (\s a -> s {_ltinisAssociateCarrierIPAddress = a})

-- | The number of IPv6 addresses for the network interface.
ltinisIPv6AddressCount :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Int)
ltinisIPv6AddressCount = lens _ltinisIPv6AddressCount (\s a -> s {_ltinisIPv6AddressCount = a})

-- | The index of the network card.
ltinisNetworkCardIndex :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Int)
ltinisNetworkCardIndex = lens _ltinisNetworkCardIndex (\s a -> s {_ltinisNetworkCardIndex = a})

-- | Indicates whether the network interface is deleted when the instance is terminated.
ltinisDeleteOnTermination :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Bool)
ltinisDeleteOnTermination = lens _ltinisDeleteOnTermination (\s a -> s {_ltinisDeleteOnTermination = a})

-- | The ID of the network interface.
ltinisNetworkInterfaceId :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Text)
ltinisNetworkInterfaceId = lens _ltinisNetworkInterfaceId (\s a -> s {_ltinisNetworkInterfaceId = a})

-- | The ID of the subnet for the network interface.
ltinisSubnetId :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Text)
ltinisSubnetId = lens _ltinisSubnetId (\s a -> s {_ltinisSubnetId = a})

-- | A description for the network interface.
ltinisDescription :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Text)
ltinisDescription = lens _ltinisDescription (\s a -> s {_ltinisDescription = a})

-- | The device index for the network interface attachment.
ltinisDeviceIndex :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Int)
ltinisDeviceIndex = lens _ltinisDeviceIndex (\s a -> s {_ltinisDeviceIndex = a})

-- | The number of secondary private IPv4 addresses for the network interface.
ltinisSecondaryPrivateIPAddressCount :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Int)
ltinisSecondaryPrivateIPAddressCount = lens _ltinisSecondaryPrivateIPAddressCount (\s a -> s {_ltinisSecondaryPrivateIPAddressCount = a})

-- | The primary private IPv4 address of the network interface.
ltinisPrivateIPAddress :: Lens' LaunchTemplateInstanceNetworkInterfaceSpecification (Maybe Text)
ltinisPrivateIPAddress = lens _ltinisPrivateIPAddress (\s a -> s {_ltinisPrivateIPAddress = a})

instance
  FromXML
    LaunchTemplateInstanceNetworkInterfaceSpecification
  where
  parseXML x =
    LaunchTemplateInstanceNetworkInterfaceSpecification'
      <$> ( x .@? "groupSet" .!@ mempty
              >>= may (parseXMLList "groupId")
          )
        <*> ( x .@? "privateIpAddressesSet" .!@ mempty
                >>= may (parseXMLList "item")
            )
        <*> ( x .@? "ipv6AddressesSet" .!@ mempty
                >>= may (parseXMLList "item")
            )
        <*> (x .@? "interfaceType")
        <*> (x .@? "associatePublicIpAddress")
        <*> (x .@? "associateCarrierIpAddress")
        <*> (x .@? "ipv6AddressCount")
        <*> (x .@? "networkCardIndex")
        <*> (x .@? "deleteOnTermination")
        <*> (x .@? "networkInterfaceId")
        <*> (x .@? "subnetId")
        <*> (x .@? "description")
        <*> (x .@? "deviceIndex")
        <*> (x .@? "secondaryPrivateIpAddressCount")
        <*> (x .@? "privateIpAddress")

instance
  Hashable
    LaunchTemplateInstanceNetworkInterfaceSpecification

instance
  NFData
    LaunchTemplateInstanceNetworkInterfaceSpecification
