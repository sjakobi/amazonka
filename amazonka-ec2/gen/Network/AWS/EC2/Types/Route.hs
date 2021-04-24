{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Route
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Route where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.RouteOrigin
import Network.AWS.EC2.Types.RouteState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a route in a route table.
--
--
--
-- /See:/ 'route' smart constructor.
data Route = Route'
  { _rInstanceId :: !(Maybe Text),
    _rOrigin :: !(Maybe RouteOrigin),
    _rVPCPeeringConnectionId :: !(Maybe Text),
    _rDestinationPrefixListId :: !(Maybe Text),
    _rDestinationIPv6CidrBlock :: !(Maybe Text),
    _rLocalGatewayId :: !(Maybe Text),
    _rState :: !(Maybe RouteState),
    _rEgressOnlyInternetGatewayId :: !(Maybe Text),
    _rCarrierGatewayId :: !(Maybe Text),
    _rDestinationCidrBlock :: !(Maybe Text),
    _rNetworkInterfaceId :: !(Maybe Text),
    _rNatGatewayId :: !(Maybe Text),
    _rInstanceOwnerId :: !(Maybe Text),
    _rGatewayId :: !(Maybe Text),
    _rTransitGatewayId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Route' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rInstanceId' - The ID of a NAT instance in your VPC.
--
-- * 'rOrigin' - Describes how the route was created.     * @CreateRouteTable@ - The route was automatically created when the route table was created.     * @CreateRoute@ - The route was manually added to the route table.     * @EnableVgwRoutePropagation@ - The route was propagated by route propagation.
--
-- * 'rVPCPeeringConnectionId' - The ID of a VPC peering connection.
--
-- * 'rDestinationPrefixListId' - The prefix of the AWS service.
--
-- * 'rDestinationIPv6CidrBlock' - The IPv6 CIDR block used for the destination match.
--
-- * 'rLocalGatewayId' - The ID of the local gateway.
--
-- * 'rState' - The state of the route. The @blackhole@ state indicates that the route's target isn't available (for example, the specified gateway isn't attached to the VPC, or the specified NAT instance has been terminated).
--
-- * 'rEgressOnlyInternetGatewayId' - The ID of the egress-only internet gateway.
--
-- * 'rCarrierGatewayId' - The ID of the carrier gateway.
--
-- * 'rDestinationCidrBlock' - The IPv4 CIDR block used for the destination match.
--
-- * 'rNetworkInterfaceId' - The ID of the network interface.
--
-- * 'rNatGatewayId' - The ID of a NAT gateway.
--
-- * 'rInstanceOwnerId' - The AWS account ID of the owner of the instance.
--
-- * 'rGatewayId' - The ID of a gateway attached to your VPC.
--
-- * 'rTransitGatewayId' - The ID of a transit gateway.
route ::
  Route
route =
  Route'
    { _rInstanceId = Nothing,
      _rOrigin = Nothing,
      _rVPCPeeringConnectionId = Nothing,
      _rDestinationPrefixListId = Nothing,
      _rDestinationIPv6CidrBlock = Nothing,
      _rLocalGatewayId = Nothing,
      _rState = Nothing,
      _rEgressOnlyInternetGatewayId = Nothing,
      _rCarrierGatewayId = Nothing,
      _rDestinationCidrBlock = Nothing,
      _rNetworkInterfaceId = Nothing,
      _rNatGatewayId = Nothing,
      _rInstanceOwnerId = Nothing,
      _rGatewayId = Nothing,
      _rTransitGatewayId = Nothing
    }

-- | The ID of a NAT instance in your VPC.
rInstanceId :: Lens' Route (Maybe Text)
rInstanceId = lens _rInstanceId (\s a -> s {_rInstanceId = a})

-- | Describes how the route was created.     * @CreateRouteTable@ - The route was automatically created when the route table was created.     * @CreateRoute@ - The route was manually added to the route table.     * @EnableVgwRoutePropagation@ - The route was propagated by route propagation.
rOrigin :: Lens' Route (Maybe RouteOrigin)
rOrigin = lens _rOrigin (\s a -> s {_rOrigin = a})

-- | The ID of a VPC peering connection.
rVPCPeeringConnectionId :: Lens' Route (Maybe Text)
rVPCPeeringConnectionId = lens _rVPCPeeringConnectionId (\s a -> s {_rVPCPeeringConnectionId = a})

-- | The prefix of the AWS service.
rDestinationPrefixListId :: Lens' Route (Maybe Text)
rDestinationPrefixListId = lens _rDestinationPrefixListId (\s a -> s {_rDestinationPrefixListId = a})

-- | The IPv6 CIDR block used for the destination match.
rDestinationIPv6CidrBlock :: Lens' Route (Maybe Text)
rDestinationIPv6CidrBlock = lens _rDestinationIPv6CidrBlock (\s a -> s {_rDestinationIPv6CidrBlock = a})

-- | The ID of the local gateway.
rLocalGatewayId :: Lens' Route (Maybe Text)
rLocalGatewayId = lens _rLocalGatewayId (\s a -> s {_rLocalGatewayId = a})

-- | The state of the route. The @blackhole@ state indicates that the route's target isn't available (for example, the specified gateway isn't attached to the VPC, or the specified NAT instance has been terminated).
rState :: Lens' Route (Maybe RouteState)
rState = lens _rState (\s a -> s {_rState = a})

-- | The ID of the egress-only internet gateway.
rEgressOnlyInternetGatewayId :: Lens' Route (Maybe Text)
rEgressOnlyInternetGatewayId = lens _rEgressOnlyInternetGatewayId (\s a -> s {_rEgressOnlyInternetGatewayId = a})

-- | The ID of the carrier gateway.
rCarrierGatewayId :: Lens' Route (Maybe Text)
rCarrierGatewayId = lens _rCarrierGatewayId (\s a -> s {_rCarrierGatewayId = a})

-- | The IPv4 CIDR block used for the destination match.
rDestinationCidrBlock :: Lens' Route (Maybe Text)
rDestinationCidrBlock = lens _rDestinationCidrBlock (\s a -> s {_rDestinationCidrBlock = a})

-- | The ID of the network interface.
rNetworkInterfaceId :: Lens' Route (Maybe Text)
rNetworkInterfaceId = lens _rNetworkInterfaceId (\s a -> s {_rNetworkInterfaceId = a})

-- | The ID of a NAT gateway.
rNatGatewayId :: Lens' Route (Maybe Text)
rNatGatewayId = lens _rNatGatewayId (\s a -> s {_rNatGatewayId = a})

-- | The AWS account ID of the owner of the instance.
rInstanceOwnerId :: Lens' Route (Maybe Text)
rInstanceOwnerId = lens _rInstanceOwnerId (\s a -> s {_rInstanceOwnerId = a})

-- | The ID of a gateway attached to your VPC.
rGatewayId :: Lens' Route (Maybe Text)
rGatewayId = lens _rGatewayId (\s a -> s {_rGatewayId = a})

-- | The ID of a transit gateway.
rTransitGatewayId :: Lens' Route (Maybe Text)
rTransitGatewayId = lens _rTransitGatewayId (\s a -> s {_rTransitGatewayId = a})

instance FromXML Route where
  parseXML x =
    Route'
      <$> (x .@? "instanceId")
      <*> (x .@? "origin")
      <*> (x .@? "vpcPeeringConnectionId")
      <*> (x .@? "destinationPrefixListId")
      <*> (x .@? "destinationIpv6CidrBlock")
      <*> (x .@? "localGatewayId")
      <*> (x .@? "state")
      <*> (x .@? "egressOnlyInternetGatewayId")
      <*> (x .@? "carrierGatewayId")
      <*> (x .@? "destinationCidrBlock")
      <*> (x .@? "networkInterfaceId")
      <*> (x .@? "natGatewayId")
      <*> (x .@? "instanceOwnerId")
      <*> (x .@? "gatewayId")
      <*> (x .@? "transitGatewayId")

instance Hashable Route

instance NFData Route
