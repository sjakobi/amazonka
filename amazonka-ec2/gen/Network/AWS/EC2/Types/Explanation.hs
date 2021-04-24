{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Explanation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Explanation where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AnalysisACLRule
import Network.AWS.EC2.Types.AnalysisComponent
import Network.AWS.EC2.Types.AnalysisLoadBalancerListener
import Network.AWS.EC2.Types.AnalysisLoadBalancerTarget
import Network.AWS.EC2.Types.AnalysisRouteTableRoute
import Network.AWS.EC2.Types.AnalysisSecurityGroupRule
import Network.AWS.EC2.Types.PortRange
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an explanation code for an unreachable path. For more information, see <https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html Reachability Analyzer explanation codes> .
--
--
--
-- /See:/ 'explanation' smart constructor.
data Explanation = Explanation'
  { _eLoadBalancerTargetGroups ::
      !(Maybe [AnalysisComponent]),
    _eLoadBalancerARN :: !(Maybe Text),
    _eSecurityGroupRule ::
      !(Maybe AnalysisSecurityGroupRule),
    _eCustomerGateway :: !(Maybe AnalysisComponent),
    _eAvailabilityZones :: !(Maybe [Text]),
    _eLoadBalancerTargetGroup ::
      !(Maybe AnalysisComponent),
    _eExplanationCode :: !(Maybe Text),
    _eAddress :: !(Maybe Text),
    _eNatGateway :: !(Maybe AnalysisComponent),
    _eLoadBalancerTarget ::
      !(Maybe AnalysisLoadBalancerTarget),
    _eInternetGateway :: !(Maybe AnalysisComponent),
    _eNetworkInterface ::
      !(Maybe AnalysisComponent),
    _eSubnet :: !(Maybe AnalysisComponent),
    _eSourceVPC :: !(Maybe AnalysisComponent),
    _eACLRule :: !(Maybe AnalysisACLRule),
    _eProtocols :: !(Maybe [Text]),
    _eDirection :: !(Maybe Text),
    _eSecurityGroups ::
      !(Maybe [AnalysisComponent]),
    _ePrefixList :: !(Maybe AnalysisComponent),
    _ePacketField :: !(Maybe Text),
    _eCidrs :: !(Maybe [Text]),
    _eComponent :: !(Maybe AnalysisComponent),
    _eState :: !(Maybe Text),
    _eRouteTable :: !(Maybe AnalysisComponent),
    _eDestination :: !(Maybe AnalysisComponent),
    _eSubnetRouteTable ::
      !(Maybe AnalysisComponent),
    _eAttachedTo :: !(Maybe AnalysisComponent),
    _eSecurityGroup :: !(Maybe AnalysisComponent),
    _eVPCPeeringConnection ::
      !(Maybe AnalysisComponent),
    _eDestinationVPC :: !(Maybe AnalysisComponent),
    _eElasticLoadBalancerListener ::
      !(Maybe AnalysisComponent),
    _ePort :: !(Maybe Nat),
    _eACL :: !(Maybe AnalysisComponent),
    _eVPCEndpoint :: !(Maybe AnalysisComponent),
    _eRouteTableRoute ::
      !(Maybe AnalysisRouteTableRoute),
    _eVPNConnection :: !(Maybe AnalysisComponent),
    _eMissingComponent :: !(Maybe Text),
    _eAddresses :: !(Maybe [Text]),
    _eClassicLoadBalancerListener ::
      !(Maybe AnalysisLoadBalancerListener),
    _eIngressRouteTable ::
      !(Maybe AnalysisComponent),
    _eVPNGateway :: !(Maybe AnalysisComponent),
    _ePortRanges :: !(Maybe [PortRange]),
    _eLoadBalancerListenerPort :: !(Maybe Nat),
    _eVPC :: !(Maybe AnalysisComponent),
    _eLoadBalancerTargetPort :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Explanation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLoadBalancerTargetGroups' - The target groups.
--
-- * 'eLoadBalancerARN' - The Amazon Resource Name (ARN) of the load balancer.
--
-- * 'eSecurityGroupRule' - The security group rule.
--
-- * 'eCustomerGateway' - The customer gateway.
--
-- * 'eAvailabilityZones' - The Availability Zones.
--
-- * 'eLoadBalancerTargetGroup' - The target group.
--
-- * 'eExplanationCode' - The explanation code.
--
-- * 'eAddress' - The IPv4 address, in CIDR notation.
--
-- * 'eNatGateway' - The NAT gateway.
--
-- * 'eLoadBalancerTarget' - The target.
--
-- * 'eInternetGateway' - The internet gateway.
--
-- * 'eNetworkInterface' - The network interface.
--
-- * 'eSubnet' - The subnet.
--
-- * 'eSourceVPC' - The source VPC.
--
-- * 'eACLRule' - The network ACL rule.
--
-- * 'eProtocols' - The protocols.
--
-- * 'eDirection' - The direction. The following are possible values:     * egress     * ingress
--
-- * 'eSecurityGroups' - The security groups.
--
-- * 'ePrefixList' - The prefix list.
--
-- * 'ePacketField' - The packet field.
--
-- * 'eCidrs' - The CIDR ranges.
--
-- * 'eComponent' - The component.
--
-- * 'eState' - The state.
--
-- * 'eRouteTable' - The route table.
--
-- * 'eDestination' - The destination.
--
-- * 'eSubnetRouteTable' - The route table for the subnet.
--
-- * 'eAttachedTo' - The resource to which the component is attached.
--
-- * 'eSecurityGroup' - The security group.
--
-- * 'eVPCPeeringConnection' - The VPC peering connection.
--
-- * 'eDestinationVPC' - The destination VPC.
--
-- * 'eElasticLoadBalancerListener' - The load balancer listener.
--
-- * 'ePort' - The port.
--
-- * 'eACL' - The network ACL.
--
-- * 'eVPCEndpoint' - The VPC endpoint.
--
-- * 'eRouteTableRoute' - The route table route.
--
-- * 'eVPNConnection' - The VPN connection.
--
-- * 'eMissingComponent' - The missing component.
--
-- * 'eAddresses' - The IPv4 addresses, in CIDR notation.
--
-- * 'eClassicLoadBalancerListener' - The listener for a Classic Load Balancer.
--
-- * 'eIngressRouteTable' - The route table.
--
-- * 'eVPNGateway' - The VPN gateway.
--
-- * 'ePortRanges' - The port ranges.
--
-- * 'eLoadBalancerListenerPort' - The listener port of the load balancer.
--
-- * 'eVPC' - The component VPC.
--
-- * 'eLoadBalancerTargetPort' - The target port.
explanation ::
  Explanation
explanation =
  Explanation'
    { _eLoadBalancerTargetGroups = Nothing,
      _eLoadBalancerARN = Nothing,
      _eSecurityGroupRule = Nothing,
      _eCustomerGateway = Nothing,
      _eAvailabilityZones = Nothing,
      _eLoadBalancerTargetGroup = Nothing,
      _eExplanationCode = Nothing,
      _eAddress = Nothing,
      _eNatGateway = Nothing,
      _eLoadBalancerTarget = Nothing,
      _eInternetGateway = Nothing,
      _eNetworkInterface = Nothing,
      _eSubnet = Nothing,
      _eSourceVPC = Nothing,
      _eACLRule = Nothing,
      _eProtocols = Nothing,
      _eDirection = Nothing,
      _eSecurityGroups = Nothing,
      _ePrefixList = Nothing,
      _ePacketField = Nothing,
      _eCidrs = Nothing,
      _eComponent = Nothing,
      _eState = Nothing,
      _eRouteTable = Nothing,
      _eDestination = Nothing,
      _eSubnetRouteTable = Nothing,
      _eAttachedTo = Nothing,
      _eSecurityGroup = Nothing,
      _eVPCPeeringConnection = Nothing,
      _eDestinationVPC = Nothing,
      _eElasticLoadBalancerListener = Nothing,
      _ePort = Nothing,
      _eACL = Nothing,
      _eVPCEndpoint = Nothing,
      _eRouteTableRoute = Nothing,
      _eVPNConnection = Nothing,
      _eMissingComponent = Nothing,
      _eAddresses = Nothing,
      _eClassicLoadBalancerListener = Nothing,
      _eIngressRouteTable = Nothing,
      _eVPNGateway = Nothing,
      _ePortRanges = Nothing,
      _eLoadBalancerListenerPort = Nothing,
      _eVPC = Nothing,
      _eLoadBalancerTargetPort = Nothing
    }

-- | The target groups.
eLoadBalancerTargetGroups :: Lens' Explanation [AnalysisComponent]
eLoadBalancerTargetGroups = lens _eLoadBalancerTargetGroups (\s a -> s {_eLoadBalancerTargetGroups = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the load balancer.
eLoadBalancerARN :: Lens' Explanation (Maybe Text)
eLoadBalancerARN = lens _eLoadBalancerARN (\s a -> s {_eLoadBalancerARN = a})

-- | The security group rule.
eSecurityGroupRule :: Lens' Explanation (Maybe AnalysisSecurityGroupRule)
eSecurityGroupRule = lens _eSecurityGroupRule (\s a -> s {_eSecurityGroupRule = a})

-- | The customer gateway.
eCustomerGateway :: Lens' Explanation (Maybe AnalysisComponent)
eCustomerGateway = lens _eCustomerGateway (\s a -> s {_eCustomerGateway = a})

-- | The Availability Zones.
eAvailabilityZones :: Lens' Explanation [Text]
eAvailabilityZones = lens _eAvailabilityZones (\s a -> s {_eAvailabilityZones = a}) . _Default . _Coerce

-- | The target group.
eLoadBalancerTargetGroup :: Lens' Explanation (Maybe AnalysisComponent)
eLoadBalancerTargetGroup = lens _eLoadBalancerTargetGroup (\s a -> s {_eLoadBalancerTargetGroup = a})

-- | The explanation code.
eExplanationCode :: Lens' Explanation (Maybe Text)
eExplanationCode = lens _eExplanationCode (\s a -> s {_eExplanationCode = a})

-- | The IPv4 address, in CIDR notation.
eAddress :: Lens' Explanation (Maybe Text)
eAddress = lens _eAddress (\s a -> s {_eAddress = a})

-- | The NAT gateway.
eNatGateway :: Lens' Explanation (Maybe AnalysisComponent)
eNatGateway = lens _eNatGateway (\s a -> s {_eNatGateway = a})

-- | The target.
eLoadBalancerTarget :: Lens' Explanation (Maybe AnalysisLoadBalancerTarget)
eLoadBalancerTarget = lens _eLoadBalancerTarget (\s a -> s {_eLoadBalancerTarget = a})

-- | The internet gateway.
eInternetGateway :: Lens' Explanation (Maybe AnalysisComponent)
eInternetGateway = lens _eInternetGateway (\s a -> s {_eInternetGateway = a})

-- | The network interface.
eNetworkInterface :: Lens' Explanation (Maybe AnalysisComponent)
eNetworkInterface = lens _eNetworkInterface (\s a -> s {_eNetworkInterface = a})

-- | The subnet.
eSubnet :: Lens' Explanation (Maybe AnalysisComponent)
eSubnet = lens _eSubnet (\s a -> s {_eSubnet = a})

-- | The source VPC.
eSourceVPC :: Lens' Explanation (Maybe AnalysisComponent)
eSourceVPC = lens _eSourceVPC (\s a -> s {_eSourceVPC = a})

-- | The network ACL rule.
eACLRule :: Lens' Explanation (Maybe AnalysisACLRule)
eACLRule = lens _eACLRule (\s a -> s {_eACLRule = a})

-- | The protocols.
eProtocols :: Lens' Explanation [Text]
eProtocols = lens _eProtocols (\s a -> s {_eProtocols = a}) . _Default . _Coerce

-- | The direction. The following are possible values:     * egress     * ingress
eDirection :: Lens' Explanation (Maybe Text)
eDirection = lens _eDirection (\s a -> s {_eDirection = a})

-- | The security groups.
eSecurityGroups :: Lens' Explanation [AnalysisComponent]
eSecurityGroups = lens _eSecurityGroups (\s a -> s {_eSecurityGroups = a}) . _Default . _Coerce

-- | The prefix list.
ePrefixList :: Lens' Explanation (Maybe AnalysisComponent)
ePrefixList = lens _ePrefixList (\s a -> s {_ePrefixList = a})

-- | The packet field.
ePacketField :: Lens' Explanation (Maybe Text)
ePacketField = lens _ePacketField (\s a -> s {_ePacketField = a})

-- | The CIDR ranges.
eCidrs :: Lens' Explanation [Text]
eCidrs = lens _eCidrs (\s a -> s {_eCidrs = a}) . _Default . _Coerce

-- | The component.
eComponent :: Lens' Explanation (Maybe AnalysisComponent)
eComponent = lens _eComponent (\s a -> s {_eComponent = a})

-- | The state.
eState :: Lens' Explanation (Maybe Text)
eState = lens _eState (\s a -> s {_eState = a})

-- | The route table.
eRouteTable :: Lens' Explanation (Maybe AnalysisComponent)
eRouteTable = lens _eRouteTable (\s a -> s {_eRouteTable = a})

-- | The destination.
eDestination :: Lens' Explanation (Maybe AnalysisComponent)
eDestination = lens _eDestination (\s a -> s {_eDestination = a})

-- | The route table for the subnet.
eSubnetRouteTable :: Lens' Explanation (Maybe AnalysisComponent)
eSubnetRouteTable = lens _eSubnetRouteTable (\s a -> s {_eSubnetRouteTable = a})

-- | The resource to which the component is attached.
eAttachedTo :: Lens' Explanation (Maybe AnalysisComponent)
eAttachedTo = lens _eAttachedTo (\s a -> s {_eAttachedTo = a})

-- | The security group.
eSecurityGroup :: Lens' Explanation (Maybe AnalysisComponent)
eSecurityGroup = lens _eSecurityGroup (\s a -> s {_eSecurityGroup = a})

-- | The VPC peering connection.
eVPCPeeringConnection :: Lens' Explanation (Maybe AnalysisComponent)
eVPCPeeringConnection = lens _eVPCPeeringConnection (\s a -> s {_eVPCPeeringConnection = a})

-- | The destination VPC.
eDestinationVPC :: Lens' Explanation (Maybe AnalysisComponent)
eDestinationVPC = lens _eDestinationVPC (\s a -> s {_eDestinationVPC = a})

-- | The load balancer listener.
eElasticLoadBalancerListener :: Lens' Explanation (Maybe AnalysisComponent)
eElasticLoadBalancerListener = lens _eElasticLoadBalancerListener (\s a -> s {_eElasticLoadBalancerListener = a})

-- | The port.
ePort :: Lens' Explanation (Maybe Natural)
ePort = lens _ePort (\s a -> s {_ePort = a}) . mapping _Nat

-- | The network ACL.
eACL :: Lens' Explanation (Maybe AnalysisComponent)
eACL = lens _eACL (\s a -> s {_eACL = a})

-- | The VPC endpoint.
eVPCEndpoint :: Lens' Explanation (Maybe AnalysisComponent)
eVPCEndpoint = lens _eVPCEndpoint (\s a -> s {_eVPCEndpoint = a})

-- | The route table route.
eRouteTableRoute :: Lens' Explanation (Maybe AnalysisRouteTableRoute)
eRouteTableRoute = lens _eRouteTableRoute (\s a -> s {_eRouteTableRoute = a})

-- | The VPN connection.
eVPNConnection :: Lens' Explanation (Maybe AnalysisComponent)
eVPNConnection = lens _eVPNConnection (\s a -> s {_eVPNConnection = a})

-- | The missing component.
eMissingComponent :: Lens' Explanation (Maybe Text)
eMissingComponent = lens _eMissingComponent (\s a -> s {_eMissingComponent = a})

-- | The IPv4 addresses, in CIDR notation.
eAddresses :: Lens' Explanation [Text]
eAddresses = lens _eAddresses (\s a -> s {_eAddresses = a}) . _Default . _Coerce

-- | The listener for a Classic Load Balancer.
eClassicLoadBalancerListener :: Lens' Explanation (Maybe AnalysisLoadBalancerListener)
eClassicLoadBalancerListener = lens _eClassicLoadBalancerListener (\s a -> s {_eClassicLoadBalancerListener = a})

-- | The route table.
eIngressRouteTable :: Lens' Explanation (Maybe AnalysisComponent)
eIngressRouteTable = lens _eIngressRouteTable (\s a -> s {_eIngressRouteTable = a})

-- | The VPN gateway.
eVPNGateway :: Lens' Explanation (Maybe AnalysisComponent)
eVPNGateway = lens _eVPNGateway (\s a -> s {_eVPNGateway = a})

-- | The port ranges.
ePortRanges :: Lens' Explanation [PortRange]
ePortRanges = lens _ePortRanges (\s a -> s {_ePortRanges = a}) . _Default . _Coerce

-- | The listener port of the load balancer.
eLoadBalancerListenerPort :: Lens' Explanation (Maybe Natural)
eLoadBalancerListenerPort = lens _eLoadBalancerListenerPort (\s a -> s {_eLoadBalancerListenerPort = a}) . mapping _Nat

-- | The component VPC.
eVPC :: Lens' Explanation (Maybe AnalysisComponent)
eVPC = lens _eVPC (\s a -> s {_eVPC = a})

-- | The target port.
eLoadBalancerTargetPort :: Lens' Explanation (Maybe Natural)
eLoadBalancerTargetPort = lens _eLoadBalancerTargetPort (\s a -> s {_eLoadBalancerTargetPort = a}) . mapping _Nat

instance FromXML Explanation where
  parseXML x =
    Explanation'
      <$> ( x .@? "loadBalancerTargetGroupSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "loadBalancerArn")
      <*> (x .@? "securityGroupRule")
      <*> (x .@? "customerGateway")
      <*> ( x .@? "availabilityZoneSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "loadBalancerTargetGroup")
      <*> (x .@? "explanationCode")
      <*> (x .@? "address")
      <*> (x .@? "natGateway")
      <*> (x .@? "loadBalancerTarget")
      <*> (x .@? "internetGateway")
      <*> (x .@? "networkInterface")
      <*> (x .@? "subnet")
      <*> (x .@? "sourceVpc")
      <*> (x .@? "aclRule")
      <*> ( x .@? "protocolSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "direction")
      <*> ( x .@? "securityGroupSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "prefixList")
      <*> (x .@? "packetField")
      <*> ( x .@? "cidrSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "component")
      <*> (x .@? "state")
      <*> (x .@? "routeTable")
      <*> (x .@? "destination")
      <*> (x .@? "subnetRouteTable")
      <*> (x .@? "attachedTo")
      <*> (x .@? "securityGroup")
      <*> (x .@? "vpcPeeringConnection")
      <*> (x .@? "destinationVpc")
      <*> (x .@? "elasticLoadBalancerListener")
      <*> (x .@? "port")
      <*> (x .@? "acl")
      <*> (x .@? "vpcEndpoint")
      <*> (x .@? "routeTableRoute")
      <*> (x .@? "vpnConnection")
      <*> (x .@? "missingComponent")
      <*> ( x .@? "addressSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "classicLoadBalancerListener")
      <*> (x .@? "ingressRouteTable")
      <*> (x .@? "vpnGateway")
      <*> ( x .@? "portRangeSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "loadBalancerListenerPort")
      <*> (x .@? "vpc")
      <*> (x .@? "loadBalancerTargetPort")

instance Hashable Explanation

instance NFData Explanation
