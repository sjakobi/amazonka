{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.Types.LoadBalancerDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.LoadBalancerDescription where

import Network.AWS.ELB.Internal
import Network.AWS.ELB.Types.BackendServerDescription
import Network.AWS.ELB.Types.HealthCheck
import Network.AWS.ELB.Types.Instance
import Network.AWS.ELB.Types.ListenerDescription
import Network.AWS.ELB.Types.Policies
import Network.AWS.ELB.Types.SourceSecurityGroup
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a load balancer.
--
--
--
-- /See:/ 'loadBalancerDescription' smart constructor.
data LoadBalancerDescription = LoadBalancerDescription'
  { _lbdCanonicalHostedZoneNameId ::
      !(Maybe Text),
    _lbdBackendServerDescriptions ::
      !( Maybe
           [BackendServerDescription]
       ),
    _lbdAvailabilityZones ::
      !(Maybe [Text]),
    _lbdPolicies ::
      !(Maybe Policies),
    _lbdScheme ::
      !(Maybe Text),
    _lbdCreatedTime ::
      !(Maybe ISO8601),
    _lbdInstances ::
      !(Maybe [Instance]),
    _lbdSecurityGroups ::
      !(Maybe [Text]),
    _lbdSourceSecurityGroup ::
      !( Maybe
           SourceSecurityGroup
       ),
    _lbdDNSName ::
      !(Maybe Text),
    _lbdListenerDescriptions ::
      !( Maybe
           [ListenerDescription]
       ),
    _lbdSubnets ::
      !(Maybe [Text]),
    _lbdVPCId ::
      !(Maybe Text),
    _lbdLoadBalancerName ::
      !(Maybe Text),
    _lbdHealthCheck ::
      !(Maybe HealthCheck),
    _lbdCanonicalHostedZoneName ::
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

-- | Creates a value of 'LoadBalancerDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbdCanonicalHostedZoneNameId' - The ID of the Amazon Route 53 hosted zone for the load balancer.
--
-- * 'lbdBackendServerDescriptions' - Information about your EC2 instances.
--
-- * 'lbdAvailabilityZones' - The Availability Zones for the load balancer.
--
-- * 'lbdPolicies' - The policies defined for the load balancer.
--
-- * 'lbdScheme' - The type of load balancer. Valid only for load balancers in a VPC. If @Scheme@ is @internet-facing@ , the load balancer has a public DNS name that resolves to a public IP address. If @Scheme@ is @internal@ , the load balancer has a public DNS name that resolves to a private IP address.
--
-- * 'lbdCreatedTime' - The date and time the load balancer was created.
--
-- * 'lbdInstances' - The IDs of the instances for the load balancer.
--
-- * 'lbdSecurityGroups' - The security groups for the load balancer. Valid only for load balancers in a VPC.
--
-- * 'lbdSourceSecurityGroup' - The security group for the load balancer, which you can use as part of your inbound rules for your registered instances. To only allow traffic from load balancers, add a security group rule that specifies this source security group as the inbound source.
--
-- * 'lbdDNSName' - The DNS name of the load balancer.
--
-- * 'lbdListenerDescriptions' - The listeners for the load balancer.
--
-- * 'lbdSubnets' - The IDs of the subnets for the load balancer.
--
-- * 'lbdVPCId' - The ID of the VPC for the load balancer.
--
-- * 'lbdLoadBalancerName' - The name of the load balancer.
--
-- * 'lbdHealthCheck' - Information about the health checks conducted on the load balancer.
--
-- * 'lbdCanonicalHostedZoneName' - The DNS name of the load balancer. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/using-domain-names-with-elb.html Configure a Custom Domain Name> in the /Classic Load Balancers Guide/ .
loadBalancerDescription ::
  LoadBalancerDescription
loadBalancerDescription =
  LoadBalancerDescription'
    { _lbdCanonicalHostedZoneNameId =
        Nothing,
      _lbdBackendServerDescriptions = Nothing,
      _lbdAvailabilityZones = Nothing,
      _lbdPolicies = Nothing,
      _lbdScheme = Nothing,
      _lbdCreatedTime = Nothing,
      _lbdInstances = Nothing,
      _lbdSecurityGroups = Nothing,
      _lbdSourceSecurityGroup = Nothing,
      _lbdDNSName = Nothing,
      _lbdListenerDescriptions = Nothing,
      _lbdSubnets = Nothing,
      _lbdVPCId = Nothing,
      _lbdLoadBalancerName = Nothing,
      _lbdHealthCheck = Nothing,
      _lbdCanonicalHostedZoneName = Nothing
    }

-- | The ID of the Amazon Route 53 hosted zone for the load balancer.
lbdCanonicalHostedZoneNameId :: Lens' LoadBalancerDescription (Maybe Text)
lbdCanonicalHostedZoneNameId = lens _lbdCanonicalHostedZoneNameId (\s a -> s {_lbdCanonicalHostedZoneNameId = a})

-- | Information about your EC2 instances.
lbdBackendServerDescriptions :: Lens' LoadBalancerDescription [BackendServerDescription]
lbdBackendServerDescriptions = lens _lbdBackendServerDescriptions (\s a -> s {_lbdBackendServerDescriptions = a}) . _Default . _Coerce

-- | The Availability Zones for the load balancer.
lbdAvailabilityZones :: Lens' LoadBalancerDescription [Text]
lbdAvailabilityZones = lens _lbdAvailabilityZones (\s a -> s {_lbdAvailabilityZones = a}) . _Default . _Coerce

-- | The policies defined for the load balancer.
lbdPolicies :: Lens' LoadBalancerDescription (Maybe Policies)
lbdPolicies = lens _lbdPolicies (\s a -> s {_lbdPolicies = a})

-- | The type of load balancer. Valid only for load balancers in a VPC. If @Scheme@ is @internet-facing@ , the load balancer has a public DNS name that resolves to a public IP address. If @Scheme@ is @internal@ , the load balancer has a public DNS name that resolves to a private IP address.
lbdScheme :: Lens' LoadBalancerDescription (Maybe Text)
lbdScheme = lens _lbdScheme (\s a -> s {_lbdScheme = a})

-- | The date and time the load balancer was created.
lbdCreatedTime :: Lens' LoadBalancerDescription (Maybe UTCTime)
lbdCreatedTime = lens _lbdCreatedTime (\s a -> s {_lbdCreatedTime = a}) . mapping _Time

-- | The IDs of the instances for the load balancer.
lbdInstances :: Lens' LoadBalancerDescription [Instance]
lbdInstances = lens _lbdInstances (\s a -> s {_lbdInstances = a}) . _Default . _Coerce

-- | The security groups for the load balancer. Valid only for load balancers in a VPC.
lbdSecurityGroups :: Lens' LoadBalancerDescription [Text]
lbdSecurityGroups = lens _lbdSecurityGroups (\s a -> s {_lbdSecurityGroups = a}) . _Default . _Coerce

-- | The security group for the load balancer, which you can use as part of your inbound rules for your registered instances. To only allow traffic from load balancers, add a security group rule that specifies this source security group as the inbound source.
lbdSourceSecurityGroup :: Lens' LoadBalancerDescription (Maybe SourceSecurityGroup)
lbdSourceSecurityGroup = lens _lbdSourceSecurityGroup (\s a -> s {_lbdSourceSecurityGroup = a})

-- | The DNS name of the load balancer.
lbdDNSName :: Lens' LoadBalancerDescription (Maybe Text)
lbdDNSName = lens _lbdDNSName (\s a -> s {_lbdDNSName = a})

-- | The listeners for the load balancer.
lbdListenerDescriptions :: Lens' LoadBalancerDescription [ListenerDescription]
lbdListenerDescriptions = lens _lbdListenerDescriptions (\s a -> s {_lbdListenerDescriptions = a}) . _Default . _Coerce

-- | The IDs of the subnets for the load balancer.
lbdSubnets :: Lens' LoadBalancerDescription [Text]
lbdSubnets = lens _lbdSubnets (\s a -> s {_lbdSubnets = a}) . _Default . _Coerce

-- | The ID of the VPC for the load balancer.
lbdVPCId :: Lens' LoadBalancerDescription (Maybe Text)
lbdVPCId = lens _lbdVPCId (\s a -> s {_lbdVPCId = a})

-- | The name of the load balancer.
lbdLoadBalancerName :: Lens' LoadBalancerDescription (Maybe Text)
lbdLoadBalancerName = lens _lbdLoadBalancerName (\s a -> s {_lbdLoadBalancerName = a})

-- | Information about the health checks conducted on the load balancer.
lbdHealthCheck :: Lens' LoadBalancerDescription (Maybe HealthCheck)
lbdHealthCheck = lens _lbdHealthCheck (\s a -> s {_lbdHealthCheck = a})

-- | The DNS name of the load balancer. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/using-domain-names-with-elb.html Configure a Custom Domain Name> in the /Classic Load Balancers Guide/ .
lbdCanonicalHostedZoneName :: Lens' LoadBalancerDescription (Maybe Text)
lbdCanonicalHostedZoneName = lens _lbdCanonicalHostedZoneName (\s a -> s {_lbdCanonicalHostedZoneName = a})

instance FromXML LoadBalancerDescription where
  parseXML x =
    LoadBalancerDescription'
      <$> (x .@? "CanonicalHostedZoneNameID")
      <*> ( x .@? "BackendServerDescriptions" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> ( x .@? "AvailabilityZones" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Policies")
      <*> (x .@? "Scheme")
      <*> (x .@? "CreatedTime")
      <*> ( x .@? "Instances" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> ( x .@? "SecurityGroups" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "SourceSecurityGroup")
      <*> (x .@? "DNSName")
      <*> ( x .@? "ListenerDescriptions" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> ( x .@? "Subnets" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "VPCId")
      <*> (x .@? "LoadBalancerName")
      <*> (x .@? "HealthCheck")
      <*> (x .@? "CanonicalHostedZoneName")

instance Hashable LoadBalancerDescription

instance NFData LoadBalancerDescription
