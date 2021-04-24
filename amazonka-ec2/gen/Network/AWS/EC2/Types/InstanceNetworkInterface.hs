{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceNetworkInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceNetworkInterface where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.GroupIdentifier
import Network.AWS.EC2.Types.InstanceIPv6Address
import Network.AWS.EC2.Types.InstanceNetworkInterfaceAssociation
import Network.AWS.EC2.Types.InstanceNetworkInterfaceAttachment
import Network.AWS.EC2.Types.InstancePrivateIPAddress
import Network.AWS.EC2.Types.NetworkInterfaceStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a network interface.
--
--
--
-- /See:/ 'instanceNetworkInterface' smart constructor.
data InstanceNetworkInterface = InstanceNetworkInterface'
  { _iniGroups ::
      !( Maybe
           [GroupIdentifier]
       ),
    _iniStatus ::
      !( Maybe
           NetworkInterfaceStatus
       ),
    _iniOwnerId ::
      !(Maybe Text),
    _iniPrivateIPAddresses ::
      !( Maybe
           [InstancePrivateIPAddress]
       ),
    _iniAttachment ::
      !( Maybe
           InstanceNetworkInterfaceAttachment
       ),
    _iniMACAddress ::
      !(Maybe Text),
    _iniAssociation ::
      !( Maybe
           InstanceNetworkInterfaceAssociation
       ),
    _iniIPv6Addresses ::
      !( Maybe
           [InstanceIPv6Address]
       ),
    _iniInterfaceType ::
      !(Maybe Text),
    _iniSourceDestCheck ::
      !(Maybe Bool),
    _iniNetworkInterfaceId ::
      !(Maybe Text),
    _iniSubnetId ::
      !(Maybe Text),
    _iniDescription ::
      !(Maybe Text),
    _iniPrivateDNSName ::
      !(Maybe Text),
    _iniVPCId ::
      !(Maybe Text),
    _iniPrivateIPAddress ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InstanceNetworkInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iniGroups' - One or more security groups.
--
-- * 'iniStatus' - The status of the network interface.
--
-- * 'iniOwnerId' - The ID of the AWS account that created the network interface.
--
-- * 'iniPrivateIPAddresses' - One or more private IPv4 addresses associated with the network interface.
--
-- * 'iniAttachment' - The network interface attachment.
--
-- * 'iniMACAddress' - The MAC address.
--
-- * 'iniAssociation' - The association information for an Elastic IPv4 associated with the network interface.
--
-- * 'iniIPv6Addresses' - One or more IPv6 addresses associated with the network interface.
--
-- * 'iniInterfaceType' - Describes the type of network interface. Valid values: @interface@ | @efa@
--
-- * 'iniSourceDestCheck' - Indicates whether to validate network traffic to or from this network interface.
--
-- * 'iniNetworkInterfaceId' - The ID of the network interface.
--
-- * 'iniSubnetId' - The ID of the subnet.
--
-- * 'iniDescription' - The description.
--
-- * 'iniPrivateDNSName' - The private DNS name.
--
-- * 'iniVPCId' - The ID of the VPC.
--
-- * 'iniPrivateIPAddress' - The IPv4 address of the network interface within the subnet.
instanceNetworkInterface ::
  InstanceNetworkInterface
instanceNetworkInterface =
  InstanceNetworkInterface'
    { _iniGroups = Nothing,
      _iniStatus = Nothing,
      _iniOwnerId = Nothing,
      _iniPrivateIPAddresses = Nothing,
      _iniAttachment = Nothing,
      _iniMACAddress = Nothing,
      _iniAssociation = Nothing,
      _iniIPv6Addresses = Nothing,
      _iniInterfaceType = Nothing,
      _iniSourceDestCheck = Nothing,
      _iniNetworkInterfaceId = Nothing,
      _iniSubnetId = Nothing,
      _iniDescription = Nothing,
      _iniPrivateDNSName = Nothing,
      _iniVPCId = Nothing,
      _iniPrivateIPAddress = Nothing
    }

-- | One or more security groups.
iniGroups :: Lens' InstanceNetworkInterface [GroupIdentifier]
iniGroups = lens _iniGroups (\s a -> s {_iniGroups = a}) . _Default . _Coerce

-- | The status of the network interface.
iniStatus :: Lens' InstanceNetworkInterface (Maybe NetworkInterfaceStatus)
iniStatus = lens _iniStatus (\s a -> s {_iniStatus = a})

-- | The ID of the AWS account that created the network interface.
iniOwnerId :: Lens' InstanceNetworkInterface (Maybe Text)
iniOwnerId = lens _iniOwnerId (\s a -> s {_iniOwnerId = a})

-- | One or more private IPv4 addresses associated with the network interface.
iniPrivateIPAddresses :: Lens' InstanceNetworkInterface [InstancePrivateIPAddress]
iniPrivateIPAddresses = lens _iniPrivateIPAddresses (\s a -> s {_iniPrivateIPAddresses = a}) . _Default . _Coerce

-- | The network interface attachment.
iniAttachment :: Lens' InstanceNetworkInterface (Maybe InstanceNetworkInterfaceAttachment)
iniAttachment = lens _iniAttachment (\s a -> s {_iniAttachment = a})

-- | The MAC address.
iniMACAddress :: Lens' InstanceNetworkInterface (Maybe Text)
iniMACAddress = lens _iniMACAddress (\s a -> s {_iniMACAddress = a})

-- | The association information for an Elastic IPv4 associated with the network interface.
iniAssociation :: Lens' InstanceNetworkInterface (Maybe InstanceNetworkInterfaceAssociation)
iniAssociation = lens _iniAssociation (\s a -> s {_iniAssociation = a})

-- | One or more IPv6 addresses associated with the network interface.
iniIPv6Addresses :: Lens' InstanceNetworkInterface [InstanceIPv6Address]
iniIPv6Addresses = lens _iniIPv6Addresses (\s a -> s {_iniIPv6Addresses = a}) . _Default . _Coerce

-- | Describes the type of network interface. Valid values: @interface@ | @efa@
iniInterfaceType :: Lens' InstanceNetworkInterface (Maybe Text)
iniInterfaceType = lens _iniInterfaceType (\s a -> s {_iniInterfaceType = a})

-- | Indicates whether to validate network traffic to or from this network interface.
iniSourceDestCheck :: Lens' InstanceNetworkInterface (Maybe Bool)
iniSourceDestCheck = lens _iniSourceDestCheck (\s a -> s {_iniSourceDestCheck = a})

-- | The ID of the network interface.
iniNetworkInterfaceId :: Lens' InstanceNetworkInterface (Maybe Text)
iniNetworkInterfaceId = lens _iniNetworkInterfaceId (\s a -> s {_iniNetworkInterfaceId = a})

-- | The ID of the subnet.
iniSubnetId :: Lens' InstanceNetworkInterface (Maybe Text)
iniSubnetId = lens _iniSubnetId (\s a -> s {_iniSubnetId = a})

-- | The description.
iniDescription :: Lens' InstanceNetworkInterface (Maybe Text)
iniDescription = lens _iniDescription (\s a -> s {_iniDescription = a})

-- | The private DNS name.
iniPrivateDNSName :: Lens' InstanceNetworkInterface (Maybe Text)
iniPrivateDNSName = lens _iniPrivateDNSName (\s a -> s {_iniPrivateDNSName = a})

-- | The ID of the VPC.
iniVPCId :: Lens' InstanceNetworkInterface (Maybe Text)
iniVPCId = lens _iniVPCId (\s a -> s {_iniVPCId = a})

-- | The IPv4 address of the network interface within the subnet.
iniPrivateIPAddress :: Lens' InstanceNetworkInterface (Maybe Text)
iniPrivateIPAddress = lens _iniPrivateIPAddress (\s a -> s {_iniPrivateIPAddress = a})

instance FromXML InstanceNetworkInterface where
  parseXML x =
    InstanceNetworkInterface'
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
      <*> (x .@? "interfaceType")
      <*> (x .@? "sourceDestCheck")
      <*> (x .@? "networkInterfaceId")
      <*> (x .@? "subnetId")
      <*> (x .@? "description")
      <*> (x .@? "privateDnsName")
      <*> (x .@? "vpcId")
      <*> (x .@? "privateIpAddress")

instance Hashable InstanceNetworkInterface

instance NFData InstanceNetworkInterface
