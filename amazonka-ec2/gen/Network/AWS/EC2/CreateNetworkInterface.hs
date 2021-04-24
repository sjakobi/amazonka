{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.CreateNetworkInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a network interface in the specified subnet.
--
--
-- For more information about network interfaces, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html Elastic Network Interfaces> in the /Amazon Virtual Private Cloud User Guide/ .
module Network.AWS.EC2.CreateNetworkInterface
  ( -- * Creating a Request
    createNetworkInterface,
    CreateNetworkInterface,

    -- * Request Lenses
    cniGroups,
    cniTagSpecifications,
    cniPrivateIPAddresses,
    cniIPv6Addresses,
    cniDryRun,
    cniInterfaceType,
    cniIPv6AddressCount,
    cniDescription,
    cniSecondaryPrivateIPAddressCount,
    cniPrivateIPAddress,
    cniSubnetId,

    -- * Destructuring the Response
    createNetworkInterfaceResponse,
    CreateNetworkInterfaceResponse,

    -- * Response Lenses
    cnirrsNetworkInterface,
    cnirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for CreateNetworkInterface.
--
--
--
-- /See:/ 'createNetworkInterface' smart constructor.
data CreateNetworkInterface = CreateNetworkInterface'
  { _cniGroups ::
      !(Maybe [Text]),
    _cniTagSpecifications ::
      !( Maybe
           [TagSpecification]
       ),
    _cniPrivateIPAddresses ::
      !( Maybe
           [PrivateIPAddressSpecification]
       ),
    _cniIPv6Addresses ::
      !( Maybe
           [InstanceIPv6Address]
       ),
    _cniDryRun ::
      !(Maybe Bool),
    _cniInterfaceType ::
      !( Maybe
           NetworkInterfaceCreationType
       ),
    _cniIPv6AddressCount ::
      !(Maybe Int),
    _cniDescription ::
      !(Maybe Text),
    _cniSecondaryPrivateIPAddressCount ::
      !(Maybe Int),
    _cniPrivateIPAddress ::
      !(Maybe Text),
    _cniSubnetId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateNetworkInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cniGroups' - The IDs of one or more security groups.
--
-- * 'cniTagSpecifications' - The tags to apply to the new network interface.
--
-- * 'cniPrivateIPAddresses' - One or more private IPv4 addresses.
--
-- * 'cniIPv6Addresses' - One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. You can't use this option if you're specifying a number of IPv6 addresses.
--
-- * 'cniDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cniInterfaceType' - Indicates the type of network interface. To create an Elastic Fabric Adapter (EFA), specify @efa@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/efa.html Elastic Fabric Adapter> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'cniIPv6AddressCount' - The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can't use this option if specifying specific IPv6 addresses. If your subnet has the @AssignIpv6AddressOnCreation@ attribute set to @true@ , you can specify @0@ to override this setting.
--
-- * 'cniDescription' - A description for the network interface.
--
-- * 'cniSecondaryPrivateIPAddressCount' - The number of secondary private IPv4 addresses to assign to a network interface. When you specify a number of secondary IPv4 addresses, Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR range. You can't specify this option and specify more than one private IP address using @privateIpAddresses@ . The number of IP addresses you can assign to a network interface varies by instance type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI IP Addresses Per ENI Per Instance Type> in the /Amazon Virtual Private Cloud User Guide/ .
--
-- * 'cniPrivateIPAddress' - The primary private IPv4 address of the network interface. If you don't specify an IPv4 address, Amazon EC2 selects one for you from the subnet's IPv4 CIDR range. If you specify an IP address, you cannot indicate any IP addresses specified in @privateIpAddresses@ as primary (only one IP address can be designated as primary).
--
-- * 'cniSubnetId' - The ID of the subnet to associate with the network interface.
createNetworkInterface ::
  -- | 'cniSubnetId'
  Text ->
  CreateNetworkInterface
createNetworkInterface pSubnetId_ =
  CreateNetworkInterface'
    { _cniGroups = Nothing,
      _cniTagSpecifications = Nothing,
      _cniPrivateIPAddresses = Nothing,
      _cniIPv6Addresses = Nothing,
      _cniDryRun = Nothing,
      _cniInterfaceType = Nothing,
      _cniIPv6AddressCount = Nothing,
      _cniDescription = Nothing,
      _cniSecondaryPrivateIPAddressCount = Nothing,
      _cniPrivateIPAddress = Nothing,
      _cniSubnetId = pSubnetId_
    }

-- | The IDs of one or more security groups.
cniGroups :: Lens' CreateNetworkInterface [Text]
cniGroups = lens _cniGroups (\s a -> s {_cniGroups = a}) . _Default . _Coerce

-- | The tags to apply to the new network interface.
cniTagSpecifications :: Lens' CreateNetworkInterface [TagSpecification]
cniTagSpecifications = lens _cniTagSpecifications (\s a -> s {_cniTagSpecifications = a}) . _Default . _Coerce

-- | One or more private IPv4 addresses.
cniPrivateIPAddresses :: Lens' CreateNetworkInterface [PrivateIPAddressSpecification]
cniPrivateIPAddresses = lens _cniPrivateIPAddresses (\s a -> s {_cniPrivateIPAddresses = a}) . _Default . _Coerce

-- | One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. You can't use this option if you're specifying a number of IPv6 addresses.
cniIPv6Addresses :: Lens' CreateNetworkInterface [InstanceIPv6Address]
cniIPv6Addresses = lens _cniIPv6Addresses (\s a -> s {_cniIPv6Addresses = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cniDryRun :: Lens' CreateNetworkInterface (Maybe Bool)
cniDryRun = lens _cniDryRun (\s a -> s {_cniDryRun = a})

-- | Indicates the type of network interface. To create an Elastic Fabric Adapter (EFA), specify @efa@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/efa.html Elastic Fabric Adapter> in the /Amazon Elastic Compute Cloud User Guide/ .
cniInterfaceType :: Lens' CreateNetworkInterface (Maybe NetworkInterfaceCreationType)
cniInterfaceType = lens _cniInterfaceType (\s a -> s {_cniInterfaceType = a})

-- | The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can't use this option if specifying specific IPv6 addresses. If your subnet has the @AssignIpv6AddressOnCreation@ attribute set to @true@ , you can specify @0@ to override this setting.
cniIPv6AddressCount :: Lens' CreateNetworkInterface (Maybe Int)
cniIPv6AddressCount = lens _cniIPv6AddressCount (\s a -> s {_cniIPv6AddressCount = a})

-- | A description for the network interface.
cniDescription :: Lens' CreateNetworkInterface (Maybe Text)
cniDescription = lens _cniDescription (\s a -> s {_cniDescription = a})

-- | The number of secondary private IPv4 addresses to assign to a network interface. When you specify a number of secondary IPv4 addresses, Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR range. You can't specify this option and specify more than one private IP address using @privateIpAddresses@ . The number of IP addresses you can assign to a network interface varies by instance type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI IP Addresses Per ENI Per Instance Type> in the /Amazon Virtual Private Cloud User Guide/ .
cniSecondaryPrivateIPAddressCount :: Lens' CreateNetworkInterface (Maybe Int)
cniSecondaryPrivateIPAddressCount = lens _cniSecondaryPrivateIPAddressCount (\s a -> s {_cniSecondaryPrivateIPAddressCount = a})

-- | The primary private IPv4 address of the network interface. If you don't specify an IPv4 address, Amazon EC2 selects one for you from the subnet's IPv4 CIDR range. If you specify an IP address, you cannot indicate any IP addresses specified in @privateIpAddresses@ as primary (only one IP address can be designated as primary).
cniPrivateIPAddress :: Lens' CreateNetworkInterface (Maybe Text)
cniPrivateIPAddress = lens _cniPrivateIPAddress (\s a -> s {_cniPrivateIPAddress = a})

-- | The ID of the subnet to associate with the network interface.
cniSubnetId :: Lens' CreateNetworkInterface Text
cniSubnetId = lens _cniSubnetId (\s a -> s {_cniSubnetId = a})

instance AWSRequest CreateNetworkInterface where
  type
    Rs CreateNetworkInterface =
      CreateNetworkInterfaceResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateNetworkInterfaceResponse'
            <$> (x .@? "networkInterface") <*> (pure (fromEnum s))
      )

instance Hashable CreateNetworkInterface

instance NFData CreateNetworkInterface

instance ToHeaders CreateNetworkInterface where
  toHeaders = const mempty

instance ToPath CreateNetworkInterface where
  toPath = const "/"

instance ToQuery CreateNetworkInterface where
  toQuery CreateNetworkInterface' {..} =
    mconcat
      [ "Action"
          =: ("CreateNetworkInterface" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          (toQueryList "SecurityGroupId" <$> _cniGroups),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _cniTagSpecifications
          ),
        toQuery
          ( toQueryList "PrivateIpAddresses"
              <$> _cniPrivateIPAddresses
          ),
        toQuery
          (toQueryList "Ipv6Addresses" <$> _cniIPv6Addresses),
        "DryRun" =: _cniDryRun,
        "InterfaceType" =: _cniInterfaceType,
        "Ipv6AddressCount" =: _cniIPv6AddressCount,
        "Description" =: _cniDescription,
        "SecondaryPrivateIpAddressCount"
          =: _cniSecondaryPrivateIPAddressCount,
        "PrivateIpAddress" =: _cniPrivateIPAddress,
        "SubnetId" =: _cniSubnetId
      ]

-- | Contains the output of CreateNetworkInterface.
--
--
--
-- /See:/ 'createNetworkInterfaceResponse' smart constructor.
data CreateNetworkInterfaceResponse = CreateNetworkInterfaceResponse'
  { _cnirrsNetworkInterface ::
      !( Maybe
           NetworkInterface
       ),
    _cnirrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateNetworkInterfaceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnirrsNetworkInterface' - Information about the network interface.
--
-- * 'cnirrsResponseStatus' - -- | The response status code.
createNetworkInterfaceResponse ::
  -- | 'cnirrsResponseStatus'
  Int ->
  CreateNetworkInterfaceResponse
createNetworkInterfaceResponse pResponseStatus_ =
  CreateNetworkInterfaceResponse'
    { _cnirrsNetworkInterface =
        Nothing,
      _cnirrsResponseStatus = pResponseStatus_
    }

-- | Information about the network interface.
cnirrsNetworkInterface :: Lens' CreateNetworkInterfaceResponse (Maybe NetworkInterface)
cnirrsNetworkInterface = lens _cnirrsNetworkInterface (\s a -> s {_cnirrsNetworkInterface = a})

-- | -- | The response status code.
cnirrsResponseStatus :: Lens' CreateNetworkInterfaceResponse Int
cnirrsResponseStatus = lens _cnirrsResponseStatus (\s a -> s {_cnirrsResponseStatus = a})

instance NFData CreateNetworkInterfaceResponse
