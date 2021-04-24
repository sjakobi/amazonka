{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.NetworkInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.NetworkInterface where

import Network.AWS.Inspector.Types.PrivateIP
import Network.AWS.Inspector.Types.SecurityGroup
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the network interfaces interacting with an EC2 instance. This data type is used as one of the elements of the 'AssetAttributes' data type.
--
--
--
-- /See:/ 'networkInterface' smart constructor.
data NetworkInterface = NetworkInterface'
  { _niPrivateIPAddresses ::
      !(Maybe [PrivateIP]),
    _niIpv6Addresses :: !(Maybe [Text]),
    _niSecurityGroups ::
      !(Maybe [SecurityGroup]),
    _niPublicDNSName :: !(Maybe Text),
    _niSubnetId :: !(Maybe Text),
    _niNetworkInterfaceId ::
      !(Maybe Text),
    _niPrivateDNSName :: !(Maybe Text),
    _niVpcId :: !(Maybe Text),
    _niPublicIP :: !(Maybe Text),
    _niPrivateIPAddress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NetworkInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niPrivateIPAddresses' - A list of the private IP addresses associated with the network interface. Includes the privateDnsName and privateIpAddress.
--
-- * 'niIpv6Addresses' - The IP addresses associated with the network interface.
--
-- * 'niSecurityGroups' - A list of the security groups associated with the network interface. Includes the groupId and groupName.
--
-- * 'niPublicDNSName' - The name of a public DNS associated with the network interface.
--
-- * 'niSubnetId' - The ID of a subnet associated with the network interface.
--
-- * 'niNetworkInterfaceId' - The ID of the network interface.
--
-- * 'niPrivateDNSName' - The name of a private DNS associated with the network interface.
--
-- * 'niVpcId' - The ID of a VPC associated with the network interface.
--
-- * 'niPublicIP' - The public IP address from which the network interface is reachable.
--
-- * 'niPrivateIPAddress' - The private IP address associated with the network interface.
networkInterface ::
  NetworkInterface
networkInterface =
  NetworkInterface'
    { _niPrivateIPAddresses = Nothing,
      _niIpv6Addresses = Nothing,
      _niSecurityGroups = Nothing,
      _niPublicDNSName = Nothing,
      _niSubnetId = Nothing,
      _niNetworkInterfaceId = Nothing,
      _niPrivateDNSName = Nothing,
      _niVpcId = Nothing,
      _niPublicIP = Nothing,
      _niPrivateIPAddress = Nothing
    }

-- | A list of the private IP addresses associated with the network interface. Includes the privateDnsName and privateIpAddress.
niPrivateIPAddresses :: Lens' NetworkInterface [PrivateIP]
niPrivateIPAddresses = lens _niPrivateIPAddresses (\s a -> s {_niPrivateIPAddresses = a}) . _Default . _Coerce

-- | The IP addresses associated with the network interface.
niIpv6Addresses :: Lens' NetworkInterface [Text]
niIpv6Addresses = lens _niIpv6Addresses (\s a -> s {_niIpv6Addresses = a}) . _Default . _Coerce

-- | A list of the security groups associated with the network interface. Includes the groupId and groupName.
niSecurityGroups :: Lens' NetworkInterface [SecurityGroup]
niSecurityGroups = lens _niSecurityGroups (\s a -> s {_niSecurityGroups = a}) . _Default . _Coerce

-- | The name of a public DNS associated with the network interface.
niPublicDNSName :: Lens' NetworkInterface (Maybe Text)
niPublicDNSName = lens _niPublicDNSName (\s a -> s {_niPublicDNSName = a})

-- | The ID of a subnet associated with the network interface.
niSubnetId :: Lens' NetworkInterface (Maybe Text)
niSubnetId = lens _niSubnetId (\s a -> s {_niSubnetId = a})

-- | The ID of the network interface.
niNetworkInterfaceId :: Lens' NetworkInterface (Maybe Text)
niNetworkInterfaceId = lens _niNetworkInterfaceId (\s a -> s {_niNetworkInterfaceId = a})

-- | The name of a private DNS associated with the network interface.
niPrivateDNSName :: Lens' NetworkInterface (Maybe Text)
niPrivateDNSName = lens _niPrivateDNSName (\s a -> s {_niPrivateDNSName = a})

-- | The ID of a VPC associated with the network interface.
niVpcId :: Lens' NetworkInterface (Maybe Text)
niVpcId = lens _niVpcId (\s a -> s {_niVpcId = a})

-- | The public IP address from which the network interface is reachable.
niPublicIP :: Lens' NetworkInterface (Maybe Text)
niPublicIP = lens _niPublicIP (\s a -> s {_niPublicIP = a})

-- | The private IP address associated with the network interface.
niPrivateIPAddress :: Lens' NetworkInterface (Maybe Text)
niPrivateIPAddress = lens _niPrivateIPAddress (\s a -> s {_niPrivateIPAddress = a})

instance FromJSON NetworkInterface where
  parseJSON =
    withObject
      "NetworkInterface"
      ( \x ->
          NetworkInterface'
            <$> (x .:? "privateIpAddresses" .!= mempty)
            <*> (x .:? "ipv6Addresses" .!= mempty)
            <*> (x .:? "securityGroups" .!= mempty)
            <*> (x .:? "publicDnsName")
            <*> (x .:? "subnetId")
            <*> (x .:? "networkInterfaceId")
            <*> (x .:? "privateDnsName")
            <*> (x .:? "vpcId")
            <*> (x .:? "publicIp")
            <*> (x .:? "privateIpAddress")
      )

instance Hashable NetworkInterface

instance NFData NetworkInterface
