{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AnalysisRouteTableRoute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AnalysisRouteTableRoute where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a route table route.
--
--
--
-- /See:/ 'analysisRouteTableRoute' smart constructor.
data AnalysisRouteTableRoute = AnalysisRouteTableRoute'
  { _artrInstanceId ::
      !(Maybe Text),
    _artrOrigin ::
      !(Maybe Text),
    _artrVPCPeeringConnectionId ::
      !(Maybe Text),
    _artrDestinationPrefixListId ::
      !(Maybe Text),
    _artrDestinationCidr ::
      !(Maybe Text),
    _artrEgressOnlyInternetGatewayId ::
      !(Maybe Text),
    _artrNetworkInterfaceId ::
      !(Maybe Text),
    _artrNatGatewayId ::
      !(Maybe Text),
    _artrGatewayId ::
      !(Maybe Text),
    _artrTransitGatewayId ::
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

-- | Creates a value of 'AnalysisRouteTableRoute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artrInstanceId' - The ID of the instance, such as a NAT instance.
--
-- * 'artrOrigin' - Describes how the route was created. The following are possible values:     * @CreateRouteTable@ - The route was automatically created when the route table was created.     * @CreateRoute@ - The route was manually added to the route table.     * @EnableVgwRoutePropagation@ - The route was propagated by route propagation.
--
-- * 'artrVPCPeeringConnectionId' - The ID of a VPC peering connection.
--
-- * 'artrDestinationPrefixListId' - The prefix of the AWS service.
--
-- * 'artrDestinationCidr' - The destination IPv4 address, in CIDR notation.
--
-- * 'artrEgressOnlyInternetGatewayId' - The ID of an egress-only internet gateway.
--
-- * 'artrNetworkInterfaceId' - The ID of a network interface.
--
-- * 'artrNatGatewayId' - The ID of a NAT gateway.
--
-- * 'artrGatewayId' - The ID of the gateway, such as an internet gateway or virtual private gateway.
--
-- * 'artrTransitGatewayId' - The ID of a transit gateway.
analysisRouteTableRoute ::
  AnalysisRouteTableRoute
analysisRouteTableRoute =
  AnalysisRouteTableRoute'
    { _artrInstanceId = Nothing,
      _artrOrigin = Nothing,
      _artrVPCPeeringConnectionId = Nothing,
      _artrDestinationPrefixListId = Nothing,
      _artrDestinationCidr = Nothing,
      _artrEgressOnlyInternetGatewayId = Nothing,
      _artrNetworkInterfaceId = Nothing,
      _artrNatGatewayId = Nothing,
      _artrGatewayId = Nothing,
      _artrTransitGatewayId = Nothing
    }

-- | The ID of the instance, such as a NAT instance.
artrInstanceId :: Lens' AnalysisRouteTableRoute (Maybe Text)
artrInstanceId = lens _artrInstanceId (\s a -> s {_artrInstanceId = a})

-- | Describes how the route was created. The following are possible values:     * @CreateRouteTable@ - The route was automatically created when the route table was created.     * @CreateRoute@ - The route was manually added to the route table.     * @EnableVgwRoutePropagation@ - The route was propagated by route propagation.
artrOrigin :: Lens' AnalysisRouteTableRoute (Maybe Text)
artrOrigin = lens _artrOrigin (\s a -> s {_artrOrigin = a})

-- | The ID of a VPC peering connection.
artrVPCPeeringConnectionId :: Lens' AnalysisRouteTableRoute (Maybe Text)
artrVPCPeeringConnectionId = lens _artrVPCPeeringConnectionId (\s a -> s {_artrVPCPeeringConnectionId = a})

-- | The prefix of the AWS service.
artrDestinationPrefixListId :: Lens' AnalysisRouteTableRoute (Maybe Text)
artrDestinationPrefixListId = lens _artrDestinationPrefixListId (\s a -> s {_artrDestinationPrefixListId = a})

-- | The destination IPv4 address, in CIDR notation.
artrDestinationCidr :: Lens' AnalysisRouteTableRoute (Maybe Text)
artrDestinationCidr = lens _artrDestinationCidr (\s a -> s {_artrDestinationCidr = a})

-- | The ID of an egress-only internet gateway.
artrEgressOnlyInternetGatewayId :: Lens' AnalysisRouteTableRoute (Maybe Text)
artrEgressOnlyInternetGatewayId = lens _artrEgressOnlyInternetGatewayId (\s a -> s {_artrEgressOnlyInternetGatewayId = a})

-- | The ID of a network interface.
artrNetworkInterfaceId :: Lens' AnalysisRouteTableRoute (Maybe Text)
artrNetworkInterfaceId = lens _artrNetworkInterfaceId (\s a -> s {_artrNetworkInterfaceId = a})

-- | The ID of a NAT gateway.
artrNatGatewayId :: Lens' AnalysisRouteTableRoute (Maybe Text)
artrNatGatewayId = lens _artrNatGatewayId (\s a -> s {_artrNatGatewayId = a})

-- | The ID of the gateway, such as an internet gateway or virtual private gateway.
artrGatewayId :: Lens' AnalysisRouteTableRoute (Maybe Text)
artrGatewayId = lens _artrGatewayId (\s a -> s {_artrGatewayId = a})

-- | The ID of a transit gateway.
artrTransitGatewayId :: Lens' AnalysisRouteTableRoute (Maybe Text)
artrTransitGatewayId = lens _artrTransitGatewayId (\s a -> s {_artrTransitGatewayId = a})

instance FromXML AnalysisRouteTableRoute where
  parseXML x =
    AnalysisRouteTableRoute'
      <$> (x .@? "instanceId")
      <*> (x .@? "origin")
      <*> (x .@? "vpcPeeringConnectionId")
      <*> (x .@? "destinationPrefixListId")
      <*> (x .@? "destinationCidr")
      <*> (x .@? "egressOnlyInternetGatewayId")
      <*> (x .@? "networkInterfaceId")
      <*> (x .@? "natGatewayId")
      <*> (x .@? "gatewayId")
      <*> (x .@? "transitGatewayId")

instance Hashable AnalysisRouteTableRoute

instance NFData AnalysisRouteTableRoute
