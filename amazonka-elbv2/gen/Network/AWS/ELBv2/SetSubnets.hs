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
-- Module      : Network.AWS.ELBv2.SetSubnets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables the Availability Zones for the specified public subnets for the specified Application Load Balancer or Network Load Balancer. The specified subnets replace the previously enabled subnets.
--
--
-- When you specify subnets for a Network Load Balancer, you must include all subnets that were enabled previously, with their existing configurations, plus any additional subnets.
module Network.AWS.ELBv2.SetSubnets
  ( -- * Creating a Request
    setSubnets,
    SetSubnets,

    -- * Request Lenses
    ssIPAddressType,
    ssSubnetMappings,
    ssSubnets,
    ssLoadBalancerARN,

    -- * Destructuring the Response
    setSubnetsResponse,
    SetSubnetsResponse,

    -- * Response Lenses
    ssrrsIPAddressType,
    ssrrsAvailabilityZones,
    ssrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setSubnets' smart constructor.
data SetSubnets = SetSubnets'
  { _ssIPAddressType ::
      !(Maybe IPAddressType),
    _ssSubnetMappings :: !(Maybe [SubnetMapping]),
    _ssSubnets :: !(Maybe [Text]),
    _ssLoadBalancerARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetSubnets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssIPAddressType' - [Network Load Balancers] The type of IP addresses used by the subnets for your load balancer. The possible values are @ipv4@ (for IPv4 addresses) and @dualstack@ (for IPv4 and IPv6 addresses). You can’t specify @dualstack@ for a load balancer with a UDP or TCP_UDP listener. Internal load balancers must use @ipv4@ .
--
-- * 'ssSubnetMappings' - The IDs of the public subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings. [Application Load Balancers] You must specify subnets from at least two Availability Zones. You cannot specify Elastic IP addresses for your subnets. [Application Load Balancers on Outposts] You must specify one Outpost subnet. [Application Load Balancers on Local Zones] You can specify subnets from one or more Local Zones. [Network Load Balancers] You can specify subnets from one or more Availability Zones. You can specify one Elastic IP address per subnet if you need static IP addresses for your internet-facing load balancer. For internal load balancers, you can specify one private IP address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you can specify one IPv6 address per subnet.
--
-- * 'ssSubnets' - The IDs of the public subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings. [Application Load Balancers] You must specify subnets from at least two Availability Zones. [Application Load Balancers on Outposts] You must specify one Outpost subnet. [Application Load Balancers on Local Zones] You can specify subnets from one or more Local Zones. [Network Load Balancers] You can specify subnets from one or more Availability Zones.
--
-- * 'ssLoadBalancerARN' - The Amazon Resource Name (ARN) of the load balancer.
setSubnets ::
  -- | 'ssLoadBalancerARN'
  Text ->
  SetSubnets
setSubnets pLoadBalancerARN_ =
  SetSubnets'
    { _ssIPAddressType = Nothing,
      _ssSubnetMappings = Nothing,
      _ssSubnets = Nothing,
      _ssLoadBalancerARN = pLoadBalancerARN_
    }

-- | [Network Load Balancers] The type of IP addresses used by the subnets for your load balancer. The possible values are @ipv4@ (for IPv4 addresses) and @dualstack@ (for IPv4 and IPv6 addresses). You can’t specify @dualstack@ for a load balancer with a UDP or TCP_UDP listener. Internal load balancers must use @ipv4@ .
ssIPAddressType :: Lens' SetSubnets (Maybe IPAddressType)
ssIPAddressType = lens _ssIPAddressType (\s a -> s {_ssIPAddressType = a})

-- | The IDs of the public subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings. [Application Load Balancers] You must specify subnets from at least two Availability Zones. You cannot specify Elastic IP addresses for your subnets. [Application Load Balancers on Outposts] You must specify one Outpost subnet. [Application Load Balancers on Local Zones] You can specify subnets from one or more Local Zones. [Network Load Balancers] You can specify subnets from one or more Availability Zones. You can specify one Elastic IP address per subnet if you need static IP addresses for your internet-facing load balancer. For internal load balancers, you can specify one private IP address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you can specify one IPv6 address per subnet.
ssSubnetMappings :: Lens' SetSubnets [SubnetMapping]
ssSubnetMappings = lens _ssSubnetMappings (\s a -> s {_ssSubnetMappings = a}) . _Default . _Coerce

-- | The IDs of the public subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings. [Application Load Balancers] You must specify subnets from at least two Availability Zones. [Application Load Balancers on Outposts] You must specify one Outpost subnet. [Application Load Balancers on Local Zones] You can specify subnets from one or more Local Zones. [Network Load Balancers] You can specify subnets from one or more Availability Zones.
ssSubnets :: Lens' SetSubnets [Text]
ssSubnets = lens _ssSubnets (\s a -> s {_ssSubnets = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the load balancer.
ssLoadBalancerARN :: Lens' SetSubnets Text
ssLoadBalancerARN = lens _ssLoadBalancerARN (\s a -> s {_ssLoadBalancerARN = a})

instance AWSRequest SetSubnets where
  type Rs SetSubnets = SetSubnetsResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "SetSubnetsResult"
      ( \s h x ->
          SetSubnetsResponse'
            <$> (x .@? "IpAddressType")
            <*> ( x .@? "AvailabilityZones" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable SetSubnets

instance NFData SetSubnets

instance ToHeaders SetSubnets where
  toHeaders = const mempty

instance ToPath SetSubnets where
  toPath = const "/"

instance ToQuery SetSubnets where
  toQuery SetSubnets' {..} =
    mconcat
      [ "Action" =: ("SetSubnets" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "IpAddressType" =: _ssIPAddressType,
        "SubnetMappings"
          =: toQuery (toQueryList "member" <$> _ssSubnetMappings),
        "Subnets"
          =: toQuery (toQueryList "member" <$> _ssSubnets),
        "LoadBalancerArn" =: _ssLoadBalancerARN
      ]

-- | /See:/ 'setSubnetsResponse' smart constructor.
data SetSubnetsResponse = SetSubnetsResponse'
  { _ssrrsIPAddressType ::
      !(Maybe IPAddressType),
    _ssrrsAvailabilityZones ::
      !(Maybe [AvailabilityZone]),
    _ssrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetSubnetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrrsIPAddressType' - [Network Load Balancers] The IP address type.
--
-- * 'ssrrsAvailabilityZones' - Information about the subnets.
--
-- * 'ssrrsResponseStatus' - -- | The response status code.
setSubnetsResponse ::
  -- | 'ssrrsResponseStatus'
  Int ->
  SetSubnetsResponse
setSubnetsResponse pResponseStatus_ =
  SetSubnetsResponse'
    { _ssrrsIPAddressType = Nothing,
      _ssrrsAvailabilityZones = Nothing,
      _ssrrsResponseStatus = pResponseStatus_
    }

-- | [Network Load Balancers] The IP address type.
ssrrsIPAddressType :: Lens' SetSubnetsResponse (Maybe IPAddressType)
ssrrsIPAddressType = lens _ssrrsIPAddressType (\s a -> s {_ssrrsIPAddressType = a})

-- | Information about the subnets.
ssrrsAvailabilityZones :: Lens' SetSubnetsResponse [AvailabilityZone]
ssrrsAvailabilityZones = lens _ssrrsAvailabilityZones (\s a -> s {_ssrrsAvailabilityZones = a}) . _Default . _Coerce

-- | -- | The response status code.
ssrrsResponseStatus :: Lens' SetSubnetsResponse Int
ssrrsResponseStatus = lens _ssrrsResponseStatus (\s a -> s {_ssrrsResponseStatus = a})

instance NFData SetSubnetsResponse
