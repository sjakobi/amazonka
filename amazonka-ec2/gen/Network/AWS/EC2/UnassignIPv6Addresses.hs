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
-- Module      : Network.AWS.EC2.UnassignIPv6Addresses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unassigns one or more IPv6 addresses from a network interface.
module Network.AWS.EC2.UnassignIPv6Addresses
  ( -- * Creating a Request
    unassignIPv6Addresses,
    UnassignIPv6Addresses,

    -- * Request Lenses
    uiaIPv6Addresses,
    uiaNetworkInterfaceId,

    -- * Destructuring the Response
    unassignIPv6AddressesResponse,
    UnassignIPv6AddressesResponse,

    -- * Response Lenses
    uiarrsUnassignedIPv6Addresses,
    uiarrsNetworkInterfaceId,
    uiarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'unassignIPv6Addresses' smart constructor.
data UnassignIPv6Addresses = UnassignIPv6Addresses'
  { _uiaIPv6Addresses ::
      ![Text],
    _uiaNetworkInterfaceId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UnassignIPv6Addresses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiaIPv6Addresses' - The IPv6 addresses to unassign from the network interface.
--
-- * 'uiaNetworkInterfaceId' - The ID of the network interface.
unassignIPv6Addresses ::
  -- | 'uiaNetworkInterfaceId'
  Text ->
  UnassignIPv6Addresses
unassignIPv6Addresses pNetworkInterfaceId_ =
  UnassignIPv6Addresses'
    { _uiaIPv6Addresses = mempty,
      _uiaNetworkInterfaceId = pNetworkInterfaceId_
    }

-- | The IPv6 addresses to unassign from the network interface.
uiaIPv6Addresses :: Lens' UnassignIPv6Addresses [Text]
uiaIPv6Addresses = lens _uiaIPv6Addresses (\s a -> s {_uiaIPv6Addresses = a}) . _Coerce

-- | The ID of the network interface.
uiaNetworkInterfaceId :: Lens' UnassignIPv6Addresses Text
uiaNetworkInterfaceId = lens _uiaNetworkInterfaceId (\s a -> s {_uiaNetworkInterfaceId = a})

instance AWSRequest UnassignIPv6Addresses where
  type
    Rs UnassignIPv6Addresses =
      UnassignIPv6AddressesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          UnassignIPv6AddressesResponse'
            <$> ( x .@? "unassignedIpv6Addresses" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "networkInterfaceId")
            <*> (pure (fromEnum s))
      )

instance Hashable UnassignIPv6Addresses

instance NFData UnassignIPv6Addresses

instance ToHeaders UnassignIPv6Addresses where
  toHeaders = const mempty

instance ToPath UnassignIPv6Addresses where
  toPath = const "/"

instance ToQuery UnassignIPv6Addresses where
  toQuery UnassignIPv6Addresses' {..} =
    mconcat
      [ "Action" =: ("UnassignIpv6Addresses" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQueryList "Ipv6Addresses" _uiaIPv6Addresses,
        "NetworkInterfaceId" =: _uiaNetworkInterfaceId
      ]

-- | /See:/ 'unassignIPv6AddressesResponse' smart constructor.
data UnassignIPv6AddressesResponse = UnassignIPv6AddressesResponse'
  { _uiarrsUnassignedIPv6Addresses ::
      !( Maybe
           [Text]
       ),
    _uiarrsNetworkInterfaceId ::
      !( Maybe
           Text
       ),
    _uiarrsResponseStatus ::
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

-- | Creates a value of 'UnassignIPv6AddressesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiarrsUnassignedIPv6Addresses' - The IPv6 addresses that have been unassigned from the network interface.
--
-- * 'uiarrsNetworkInterfaceId' - The ID of the network interface.
--
-- * 'uiarrsResponseStatus' - -- | The response status code.
unassignIPv6AddressesResponse ::
  -- | 'uiarrsResponseStatus'
  Int ->
  UnassignIPv6AddressesResponse
unassignIPv6AddressesResponse pResponseStatus_ =
  UnassignIPv6AddressesResponse'
    { _uiarrsUnassignedIPv6Addresses =
        Nothing,
      _uiarrsNetworkInterfaceId = Nothing,
      _uiarrsResponseStatus = pResponseStatus_
    }

-- | The IPv6 addresses that have been unassigned from the network interface.
uiarrsUnassignedIPv6Addresses :: Lens' UnassignIPv6AddressesResponse [Text]
uiarrsUnassignedIPv6Addresses = lens _uiarrsUnassignedIPv6Addresses (\s a -> s {_uiarrsUnassignedIPv6Addresses = a}) . _Default . _Coerce

-- | The ID of the network interface.
uiarrsNetworkInterfaceId :: Lens' UnassignIPv6AddressesResponse (Maybe Text)
uiarrsNetworkInterfaceId = lens _uiarrsNetworkInterfaceId (\s a -> s {_uiarrsNetworkInterfaceId = a})

-- | -- | The response status code.
uiarrsResponseStatus :: Lens' UnassignIPv6AddressesResponse Int
uiarrsResponseStatus = lens _uiarrsResponseStatus (\s a -> s {_uiarrsResponseStatus = a})

instance NFData UnassignIPv6AddressesResponse
