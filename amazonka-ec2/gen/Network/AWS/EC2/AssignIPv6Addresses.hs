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
-- Module      : Network.AWS.EC2.AssignIPv6Addresses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Assigns one or more IPv6 addresses to the specified network interface. You can specify one or more specific IPv6 addresses, or you can specify the number of IPv6 addresses to be automatically assigned from within the subnet's IPv6 CIDR block range. You can assign as many IPv6 addresses to a network interface as you can assign private IPv4 addresses, and the limit varies per instance type. For information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI IP Addresses Per Network Interface Per Instance Type> in the /Amazon Elastic Compute Cloud User Guide/ .
--
--
-- You must specify either the IPv6 addresses or the IPv6 address count in the request.
module Network.AWS.EC2.AssignIPv6Addresses
  ( -- * Creating a Request
    assignIPv6Addresses,
    AssignIPv6Addresses,

    -- * Request Lenses
    aiaIPv6Addresses,
    aiaIPv6AddressCount,
    aiaNetworkInterfaceId,

    -- * Destructuring the Response
    assignIPv6AddressesResponse,
    AssignIPv6AddressesResponse,

    -- * Response Lenses
    aiarrsAssignedIPv6Addresses,
    aiarrsNetworkInterfaceId,
    aiarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'assignIPv6Addresses' smart constructor.
data AssignIPv6Addresses = AssignIPv6Addresses'
  { _aiaIPv6Addresses ::
      !(Maybe [Text]),
    _aiaIPv6AddressCount ::
      !(Maybe Int),
    _aiaNetworkInterfaceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssignIPv6Addresses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiaIPv6Addresses' - One or more specific IPv6 addresses to be assigned to the network interface. You can't use this option if you're specifying a number of IPv6 addresses.
--
-- * 'aiaIPv6AddressCount' - The number of additional IPv6 addresses to assign to the network interface. The specified number of IPv6 addresses are assigned in addition to the existing IPv6 addresses that are already assigned to the network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can't use this option if specifying specific IPv6 addresses.
--
-- * 'aiaNetworkInterfaceId' - The ID of the network interface.
assignIPv6Addresses ::
  -- | 'aiaNetworkInterfaceId'
  Text ->
  AssignIPv6Addresses
assignIPv6Addresses pNetworkInterfaceId_ =
  AssignIPv6Addresses'
    { _aiaIPv6Addresses = Nothing,
      _aiaIPv6AddressCount = Nothing,
      _aiaNetworkInterfaceId = pNetworkInterfaceId_
    }

-- | One or more specific IPv6 addresses to be assigned to the network interface. You can't use this option if you're specifying a number of IPv6 addresses.
aiaIPv6Addresses :: Lens' AssignIPv6Addresses [Text]
aiaIPv6Addresses = lens _aiaIPv6Addresses (\s a -> s {_aiaIPv6Addresses = a}) . _Default . _Coerce

-- | The number of additional IPv6 addresses to assign to the network interface. The specified number of IPv6 addresses are assigned in addition to the existing IPv6 addresses that are already assigned to the network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can't use this option if specifying specific IPv6 addresses.
aiaIPv6AddressCount :: Lens' AssignIPv6Addresses (Maybe Int)
aiaIPv6AddressCount = lens _aiaIPv6AddressCount (\s a -> s {_aiaIPv6AddressCount = a})

-- | The ID of the network interface.
aiaNetworkInterfaceId :: Lens' AssignIPv6Addresses Text
aiaNetworkInterfaceId = lens _aiaNetworkInterfaceId (\s a -> s {_aiaNetworkInterfaceId = a})

instance AWSRequest AssignIPv6Addresses where
  type
    Rs AssignIPv6Addresses =
      AssignIPv6AddressesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          AssignIPv6AddressesResponse'
            <$> ( x .@? "assignedIpv6Addresses" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "networkInterfaceId")
            <*> (pure (fromEnum s))
      )

instance Hashable AssignIPv6Addresses

instance NFData AssignIPv6Addresses

instance ToHeaders AssignIPv6Addresses where
  toHeaders = const mempty

instance ToPath AssignIPv6Addresses where
  toPath = const "/"

instance ToQuery AssignIPv6Addresses where
  toQuery AssignIPv6Addresses' {..} =
    mconcat
      [ "Action" =: ("AssignIpv6Addresses" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          (toQueryList "Ipv6Addresses" <$> _aiaIPv6Addresses),
        "Ipv6AddressCount" =: _aiaIPv6AddressCount,
        "NetworkInterfaceId" =: _aiaNetworkInterfaceId
      ]

-- | /See:/ 'assignIPv6AddressesResponse' smart constructor.
data AssignIPv6AddressesResponse = AssignIPv6AddressesResponse'
  { _aiarrsAssignedIPv6Addresses ::
      !(Maybe [Text]),
    _aiarrsNetworkInterfaceId ::
      !(Maybe Text),
    _aiarrsResponseStatus ::
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

-- | Creates a value of 'AssignIPv6AddressesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiarrsAssignedIPv6Addresses' - The new IPv6 addresses assigned to the network interface. Existing IPv6 addresses that were assigned to the network interface before the request are not included.
--
-- * 'aiarrsNetworkInterfaceId' - The ID of the network interface.
--
-- * 'aiarrsResponseStatus' - -- | The response status code.
assignIPv6AddressesResponse ::
  -- | 'aiarrsResponseStatus'
  Int ->
  AssignIPv6AddressesResponse
assignIPv6AddressesResponse pResponseStatus_ =
  AssignIPv6AddressesResponse'
    { _aiarrsAssignedIPv6Addresses =
        Nothing,
      _aiarrsNetworkInterfaceId = Nothing,
      _aiarrsResponseStatus = pResponseStatus_
    }

-- | The new IPv6 addresses assigned to the network interface. Existing IPv6 addresses that were assigned to the network interface before the request are not included.
aiarrsAssignedIPv6Addresses :: Lens' AssignIPv6AddressesResponse [Text]
aiarrsAssignedIPv6Addresses = lens _aiarrsAssignedIPv6Addresses (\s a -> s {_aiarrsAssignedIPv6Addresses = a}) . _Default . _Coerce

-- | The ID of the network interface.
aiarrsNetworkInterfaceId :: Lens' AssignIPv6AddressesResponse (Maybe Text)
aiarrsNetworkInterfaceId = lens _aiarrsNetworkInterfaceId (\s a -> s {_aiarrsNetworkInterfaceId = a})

-- | -- | The response status code.
aiarrsResponseStatus :: Lens' AssignIPv6AddressesResponse Int
aiarrsResponseStatus = lens _aiarrsResponseStatus (\s a -> s {_aiarrsResponseStatus = a})

instance NFData AssignIPv6AddressesResponse
