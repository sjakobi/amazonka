{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NetworkInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterface where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.GroupIdentifier
import Network.AWS.EC2.Types.NetworkInterfaceAssociation
import Network.AWS.EC2.Types.NetworkInterfaceAttachment
import Network.AWS.EC2.Types.NetworkInterfaceIPv6Address
import Network.AWS.EC2.Types.NetworkInterfacePrivateIPAddress
import Network.AWS.EC2.Types.NetworkInterfaceStatus
import Network.AWS.EC2.Types.NetworkInterfaceType
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a network interface.
--
--
--
-- /See:/ 'networkInterface' smart constructor.
data NetworkInterface = NetworkInterface'
  { _niGroups ::
      !(Maybe [GroupIdentifier]),
    _niStatus ::
      !(Maybe NetworkInterfaceStatus),
    _niOwnerId :: !(Maybe Text),
    _niPrivateIPAddresses ::
      !( Maybe
           [NetworkInterfacePrivateIPAddress]
       ),
    _niAttachment ::
      !(Maybe NetworkInterfaceAttachment),
    _niMACAddress :: !(Maybe Text),
    _niAssociation ::
      !(Maybe NetworkInterfaceAssociation),
    _niIPv6Addresses ::
      !( Maybe
           [NetworkInterfaceIPv6Address]
       ),
    _niRequesterManaged :: !(Maybe Bool),
    _niRequesterId :: !(Maybe Text),
    _niOutpostARN :: !(Maybe Text),
    _niTagSet :: !(Maybe [Tag]),
    _niInterfaceType ::
      !(Maybe NetworkInterfaceType),
    _niSourceDestCheck :: !(Maybe Bool),
    _niAvailabilityZone :: !(Maybe Text),
    _niNetworkInterfaceId ::
      !(Maybe Text),
    _niSubnetId :: !(Maybe Text),
    _niDescription :: !(Maybe Text),
    _niPrivateDNSName :: !(Maybe Text),
    _niVPCId :: !(Maybe Text),
    _niPrivateIPAddress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NetworkInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niGroups' - Any security groups for the network interface.
--
-- * 'niStatus' - The status of the network interface.
--
-- * 'niOwnerId' - The AWS account ID of the owner of the network interface.
--
-- * 'niPrivateIPAddresses' - The private IPv4 addresses associated with the network interface.
--
-- * 'niAttachment' - The network interface attachment.
--
-- * 'niMACAddress' - The MAC address.
--
-- * 'niAssociation' - The association information for an Elastic IP address (IPv4) associated with the network interface.
--
-- * 'niIPv6Addresses' - The IPv6 addresses associated with the network interface.
--
-- * 'niRequesterManaged' - Indicates whether the network interface is being managed by AWS.
--
-- * 'niRequesterId' - The alias or AWS account ID of the principal or service that created the network interface.
--
-- * 'niOutpostARN' - The Amazon Resource Name (ARN) of the Outpost.
--
-- * 'niTagSet' - Any tags assigned to the network interface.
--
-- * 'niInterfaceType' - The type of network interface.
--
-- * 'niSourceDestCheck' - Indicates whether traffic to or from the instance is validated.
--
-- * 'niAvailabilityZone' - The Availability Zone.
--
-- * 'niNetworkInterfaceId' - The ID of the network interface.
--
-- * 'niSubnetId' - The ID of the subnet.
--
-- * 'niDescription' - A description.
--
-- * 'niPrivateDNSName' - The private DNS name.
--
-- * 'niVPCId' - The ID of the VPC.
--
-- * 'niPrivateIPAddress' - The IPv4 address of the network interface within the subnet.
networkInterface ::
  NetworkInterface
networkInterface =
  NetworkInterface'
    { _niGroups = Nothing,
      _niStatus = Nothing,
      _niOwnerId = Nothing,
      _niPrivateIPAddresses = Nothing,
      _niAttachment = Nothing,
      _niMACAddress = Nothing,
      _niAssociation = Nothing,
      _niIPv6Addresses = Nothing,
      _niRequesterManaged = Nothing,
      _niRequesterId = Nothing,
      _niOutpostARN = Nothing,
      _niTagSet = Nothing,
      _niInterfaceType = Nothing,
      _niSourceDestCheck = Nothing,
      _niAvailabilityZone = Nothing,
      _niNetworkInterfaceId = Nothing,
      _niSubnetId = Nothing,
      _niDescription = Nothing,
      _niPrivateDNSName = Nothing,
      _niVPCId = Nothing,
      _niPrivateIPAddress = Nothing
    }

-- | Any security groups for the network interface.
niGroups :: Lens' NetworkInterface [GroupIdentifier]
niGroups = lens _niGroups (\s a -> s {_niGroups = a}) . _Default . _Coerce

-- | The status of the network interface.
niStatus :: Lens' NetworkInterface (Maybe NetworkInterfaceStatus)
niStatus = lens _niStatus (\s a -> s {_niStatus = a})

-- | The AWS account ID of the owner of the network interface.
niOwnerId :: Lens' NetworkInterface (Maybe Text)
niOwnerId = lens _niOwnerId (\s a -> s {_niOwnerId = a})

-- | The private IPv4 addresses associated with the network interface.
niPrivateIPAddresses :: Lens' NetworkInterface [NetworkInterfacePrivateIPAddress]
niPrivateIPAddresses = lens _niPrivateIPAddresses (\s a -> s {_niPrivateIPAddresses = a}) . _Default . _Coerce

-- | The network interface attachment.
niAttachment :: Lens' NetworkInterface (Maybe NetworkInterfaceAttachment)
niAttachment = lens _niAttachment (\s a -> s {_niAttachment = a})

-- | The MAC address.
niMACAddress :: Lens' NetworkInterface (Maybe Text)
niMACAddress = lens _niMACAddress (\s a -> s {_niMACAddress = a})

-- | The association information for an Elastic IP address (IPv4) associated with the network interface.
niAssociation :: Lens' NetworkInterface (Maybe NetworkInterfaceAssociation)
niAssociation = lens _niAssociation (\s a -> s {_niAssociation = a})

-- | The IPv6 addresses associated with the network interface.
niIPv6Addresses :: Lens' NetworkInterface [NetworkInterfaceIPv6Address]
niIPv6Addresses = lens _niIPv6Addresses (\s a -> s {_niIPv6Addresses = a}) . _Default . _Coerce

-- | Indicates whether the network interface is being managed by AWS.
niRequesterManaged :: Lens' NetworkInterface (Maybe Bool)
niRequesterManaged = lens _niRequesterManaged (\s a -> s {_niRequesterManaged = a})

-- | The alias or AWS account ID of the principal or service that created the network interface.
niRequesterId :: Lens' NetworkInterface (Maybe Text)
niRequesterId = lens _niRequesterId (\s a -> s {_niRequesterId = a})

-- | The Amazon Resource Name (ARN) of the Outpost.
niOutpostARN :: Lens' NetworkInterface (Maybe Text)
niOutpostARN = lens _niOutpostARN (\s a -> s {_niOutpostARN = a})

-- | Any tags assigned to the network interface.
niTagSet :: Lens' NetworkInterface [Tag]
niTagSet = lens _niTagSet (\s a -> s {_niTagSet = a}) . _Default . _Coerce

-- | The type of network interface.
niInterfaceType :: Lens' NetworkInterface (Maybe NetworkInterfaceType)
niInterfaceType = lens _niInterfaceType (\s a -> s {_niInterfaceType = a})

-- | Indicates whether traffic to or from the instance is validated.
niSourceDestCheck :: Lens' NetworkInterface (Maybe Bool)
niSourceDestCheck = lens _niSourceDestCheck (\s a -> s {_niSourceDestCheck = a})

-- | The Availability Zone.
niAvailabilityZone :: Lens' NetworkInterface (Maybe Text)
niAvailabilityZone = lens _niAvailabilityZone (\s a -> s {_niAvailabilityZone = a})

-- | The ID of the network interface.
niNetworkInterfaceId :: Lens' NetworkInterface (Maybe Text)
niNetworkInterfaceId = lens _niNetworkInterfaceId (\s a -> s {_niNetworkInterfaceId = a})

-- | The ID of the subnet.
niSubnetId :: Lens' NetworkInterface (Maybe Text)
niSubnetId = lens _niSubnetId (\s a -> s {_niSubnetId = a})

-- | A description.
niDescription :: Lens' NetworkInterface (Maybe Text)
niDescription = lens _niDescription (\s a -> s {_niDescription = a})

-- | The private DNS name.
niPrivateDNSName :: Lens' NetworkInterface (Maybe Text)
niPrivateDNSName = lens _niPrivateDNSName (\s a -> s {_niPrivateDNSName = a})

-- | The ID of the VPC.
niVPCId :: Lens' NetworkInterface (Maybe Text)
niVPCId = lens _niVPCId (\s a -> s {_niVPCId = a})

-- | The IPv4 address of the network interface within the subnet.
niPrivateIPAddress :: Lens' NetworkInterface (Maybe Text)
niPrivateIPAddress = lens _niPrivateIPAddress (\s a -> s {_niPrivateIPAddress = a})

instance FromXML NetworkInterface where
  parseXML x =
    NetworkInterface'
      <$> ( x .@? "groupSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "status")
      <*> (x .@? "ownerId")
      <*> ( x .@? "privateIpAddressesSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "attachment")
      <*> (x .@? "macAddress")
      <*> (x .@? "association")
      <*> ( x .@? "ipv6AddressesSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "requesterManaged")
      <*> (x .@? "requesterId")
      <*> (x .@? "outpostArn")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "interfaceType")
      <*> (x .@? "sourceDestCheck")
      <*> (x .@? "availabilityZone")
      <*> (x .@? "networkInterfaceId")
      <*> (x .@? "subnetId")
      <*> (x .@? "description")
      <*> (x .@? "privateDnsName")
      <*> (x .@? "vpcId")
      <*> (x .@? "privateIpAddress")

instance Hashable NetworkInterface

instance NFData NetworkInterface
