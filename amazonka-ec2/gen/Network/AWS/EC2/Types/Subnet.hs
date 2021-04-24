{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Subnet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Subnet where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.SubnetIPv6CidrBlockAssociation
import Network.AWS.EC2.Types.SubnetState
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a subnet.
--
--
--
-- /See:/ 'subnet' smart constructor.
data Subnet = Subnet'
  { _sOwnerId :: !(Maybe Text),
    _sCustomerOwnedIPv4Pool :: !(Maybe Text),
    _sSubnetARN :: !(Maybe Text),
    _sAssignIPv6AddressOnCreation :: !(Maybe Bool),
    _sOutpostARN :: !(Maybe Text),
    _sMapPublicIPOnLaunch :: !(Maybe Bool),
    _sAvailabilityZoneId :: !(Maybe Text),
    _sIPv6CidrBlockAssociationSet ::
      !(Maybe [SubnetIPv6CidrBlockAssociation]),
    _sTags :: !(Maybe [Tag]),
    _sDefaultForAz :: !(Maybe Bool),
    _sMapCustomerOwnedIPOnLaunch :: !(Maybe Bool),
    _sAvailabilityZone :: !Text,
    _sAvailableIPAddressCount :: !Int,
    _sCidrBlock :: !Text,
    _sState :: !SubnetState,
    _sSubnetId :: !Text,
    _sVPCId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Subnet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sOwnerId' - The ID of the AWS account that owns the subnet.
--
-- * 'sCustomerOwnedIPv4Pool' - The customer-owned IPv4 address pool associated with the subnet.
--
-- * 'sSubnetARN' - The Amazon Resource Name (ARN) of the subnet.
--
-- * 'sAssignIPv6AddressOnCreation' - Indicates whether a network interface created in this subnet (including a network interface created by 'RunInstances' ) receives an IPv6 address.
--
-- * 'sOutpostARN' - The Amazon Resource Name (ARN) of the Outpost.
--
-- * 'sMapPublicIPOnLaunch' - Indicates whether instances launched in this subnet receive a public IPv4 address.
--
-- * 'sAvailabilityZoneId' - The AZ ID of the subnet.
--
-- * 'sIPv6CidrBlockAssociationSet' - Information about the IPv6 CIDR blocks associated with the subnet.
--
-- * 'sTags' - Any tags assigned to the subnet.
--
-- * 'sDefaultForAz' - Indicates whether this is the default subnet for the Availability Zone.
--
-- * 'sMapCustomerOwnedIPOnLaunch' - Indicates whether a network interface created in this subnet (including a network interface created by 'RunInstances' ) receives a customer-owned IPv4 address.
--
-- * 'sAvailabilityZone' - The Availability Zone of the subnet.
--
-- * 'sAvailableIPAddressCount' - The number of unused private IPv4 addresses in the subnet. The IPv4 addresses for any stopped instances are considered unavailable.
--
-- * 'sCidrBlock' - The IPv4 CIDR block assigned to the subnet.
--
-- * 'sState' - The current state of the subnet.
--
-- * 'sSubnetId' - The ID of the subnet.
--
-- * 'sVPCId' - The ID of the VPC the subnet is in.
subnet ::
  -- | 'sAvailabilityZone'
  Text ->
  -- | 'sAvailableIPAddressCount'
  Int ->
  -- | 'sCidrBlock'
  Text ->
  -- | 'sState'
  SubnetState ->
  -- | 'sSubnetId'
  Text ->
  -- | 'sVPCId'
  Text ->
  Subnet
subnet
  pAvailabilityZone_
  pAvailableIPAddressCount_
  pCidrBlock_
  pState_
  pSubnetId_
  pVPCId_ =
    Subnet'
      { _sOwnerId = Nothing,
        _sCustomerOwnedIPv4Pool = Nothing,
        _sSubnetARN = Nothing,
        _sAssignIPv6AddressOnCreation = Nothing,
        _sOutpostARN = Nothing,
        _sMapPublicIPOnLaunch = Nothing,
        _sAvailabilityZoneId = Nothing,
        _sIPv6CidrBlockAssociationSet = Nothing,
        _sTags = Nothing,
        _sDefaultForAz = Nothing,
        _sMapCustomerOwnedIPOnLaunch = Nothing,
        _sAvailabilityZone = pAvailabilityZone_,
        _sAvailableIPAddressCount =
          pAvailableIPAddressCount_,
        _sCidrBlock = pCidrBlock_,
        _sState = pState_,
        _sSubnetId = pSubnetId_,
        _sVPCId = pVPCId_
      }

-- | The ID of the AWS account that owns the subnet.
sOwnerId :: Lens' Subnet (Maybe Text)
sOwnerId = lens _sOwnerId (\s a -> s {_sOwnerId = a})

-- | The customer-owned IPv4 address pool associated with the subnet.
sCustomerOwnedIPv4Pool :: Lens' Subnet (Maybe Text)
sCustomerOwnedIPv4Pool = lens _sCustomerOwnedIPv4Pool (\s a -> s {_sCustomerOwnedIPv4Pool = a})

-- | The Amazon Resource Name (ARN) of the subnet.
sSubnetARN :: Lens' Subnet (Maybe Text)
sSubnetARN = lens _sSubnetARN (\s a -> s {_sSubnetARN = a})

-- | Indicates whether a network interface created in this subnet (including a network interface created by 'RunInstances' ) receives an IPv6 address.
sAssignIPv6AddressOnCreation :: Lens' Subnet (Maybe Bool)
sAssignIPv6AddressOnCreation = lens _sAssignIPv6AddressOnCreation (\s a -> s {_sAssignIPv6AddressOnCreation = a})

-- | The Amazon Resource Name (ARN) of the Outpost.
sOutpostARN :: Lens' Subnet (Maybe Text)
sOutpostARN = lens _sOutpostARN (\s a -> s {_sOutpostARN = a})

-- | Indicates whether instances launched in this subnet receive a public IPv4 address.
sMapPublicIPOnLaunch :: Lens' Subnet (Maybe Bool)
sMapPublicIPOnLaunch = lens _sMapPublicIPOnLaunch (\s a -> s {_sMapPublicIPOnLaunch = a})

-- | The AZ ID of the subnet.
sAvailabilityZoneId :: Lens' Subnet (Maybe Text)
sAvailabilityZoneId = lens _sAvailabilityZoneId (\s a -> s {_sAvailabilityZoneId = a})

-- | Information about the IPv6 CIDR blocks associated with the subnet.
sIPv6CidrBlockAssociationSet :: Lens' Subnet [SubnetIPv6CidrBlockAssociation]
sIPv6CidrBlockAssociationSet = lens _sIPv6CidrBlockAssociationSet (\s a -> s {_sIPv6CidrBlockAssociationSet = a}) . _Default . _Coerce

-- | Any tags assigned to the subnet.
sTags :: Lens' Subnet [Tag]
sTags = lens _sTags (\s a -> s {_sTags = a}) . _Default . _Coerce

-- | Indicates whether this is the default subnet for the Availability Zone.
sDefaultForAz :: Lens' Subnet (Maybe Bool)
sDefaultForAz = lens _sDefaultForAz (\s a -> s {_sDefaultForAz = a})

-- | Indicates whether a network interface created in this subnet (including a network interface created by 'RunInstances' ) receives a customer-owned IPv4 address.
sMapCustomerOwnedIPOnLaunch :: Lens' Subnet (Maybe Bool)
sMapCustomerOwnedIPOnLaunch = lens _sMapCustomerOwnedIPOnLaunch (\s a -> s {_sMapCustomerOwnedIPOnLaunch = a})

-- | The Availability Zone of the subnet.
sAvailabilityZone :: Lens' Subnet Text
sAvailabilityZone = lens _sAvailabilityZone (\s a -> s {_sAvailabilityZone = a})

-- | The number of unused private IPv4 addresses in the subnet. The IPv4 addresses for any stopped instances are considered unavailable.
sAvailableIPAddressCount :: Lens' Subnet Int
sAvailableIPAddressCount = lens _sAvailableIPAddressCount (\s a -> s {_sAvailableIPAddressCount = a})

-- | The IPv4 CIDR block assigned to the subnet.
sCidrBlock :: Lens' Subnet Text
sCidrBlock = lens _sCidrBlock (\s a -> s {_sCidrBlock = a})

-- | The current state of the subnet.
sState :: Lens' Subnet SubnetState
sState = lens _sState (\s a -> s {_sState = a})

-- | The ID of the subnet.
sSubnetId :: Lens' Subnet Text
sSubnetId = lens _sSubnetId (\s a -> s {_sSubnetId = a})

-- | The ID of the VPC the subnet is in.
sVPCId :: Lens' Subnet Text
sVPCId = lens _sVPCId (\s a -> s {_sVPCId = a})

instance FromXML Subnet where
  parseXML x =
    Subnet'
      <$> (x .@? "ownerId")
      <*> (x .@? "customerOwnedIpv4Pool")
      <*> (x .@? "subnetArn")
      <*> (x .@? "assignIpv6AddressOnCreation")
      <*> (x .@? "outpostArn")
      <*> (x .@? "mapPublicIpOnLaunch")
      <*> (x .@? "availabilityZoneId")
      <*> ( x .@? "ipv6CidrBlockAssociationSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "defaultForAz")
      <*> (x .@? "mapCustomerOwnedIpOnLaunch")
      <*> (x .@ "availabilityZone")
      <*> (x .@ "availableIpAddressCount")
      <*> (x .@ "cidrBlock")
      <*> (x .@ "state")
      <*> (x .@ "subnetId")
      <*> (x .@ "vpcId")

instance Hashable Subnet

instance NFData Subnet
