{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.LoadBalancer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.LoadBalancer where

import Network.AWS.ELBv2.Types.AvailabilityZone
import Network.AWS.ELBv2.Types.IPAddressType
import Network.AWS.ELBv2.Types.LoadBalancerSchemeEnum
import Network.AWS.ELBv2.Types.LoadBalancerState
import Network.AWS.ELBv2.Types.LoadBalancerTypeEnum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a load balancer.
--
--
--
-- /See:/ 'loadBalancer' smart constructor.
data LoadBalancer = LoadBalancer'
  { _lbIPAddressType ::
      !(Maybe IPAddressType),
    _lbLoadBalancerARN :: !(Maybe Text),
    _lbCustomerOwnedIPv4Pool :: !(Maybe Text),
    _lbAvailabilityZones ::
      !(Maybe [AvailabilityZone]),
    _lbScheme :: !(Maybe LoadBalancerSchemeEnum),
    _lbCreatedTime :: !(Maybe ISO8601),
    _lbSecurityGroups :: !(Maybe [Text]),
    _lbState :: !(Maybe LoadBalancerState),
    _lbDNSName :: !(Maybe Text),
    _lbType :: !(Maybe LoadBalancerTypeEnum),
    _lbCanonicalHostedZoneId :: !(Maybe Text),
    _lbVPCId :: !(Maybe Text),
    _lbLoadBalancerName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LoadBalancer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbIPAddressType' - The type of IP addresses used by the subnets for your load balancer. The possible values are @ipv4@ (for IPv4 addresses) and @dualstack@ (for IPv4 and IPv6 addresses).
--
-- * 'lbLoadBalancerARN' - The Amazon Resource Name (ARN) of the load balancer.
--
-- * 'lbCustomerOwnedIPv4Pool' - [Application Load Balancers on Outposts] The ID of the customer-owned address pool.
--
-- * 'lbAvailabilityZones' - The subnets for the load balancer.
--
-- * 'lbScheme' - The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes. Therefore, Internet-facing load balancers can route requests from clients over the internet. The nodes of an internal load balancer have only private IP addresses. The DNS name of an internal load balancer is publicly resolvable to the private IP addresses of the nodes. Therefore, internal load balancers can route requests only from clients with access to the VPC for the load balancer.
--
-- * 'lbCreatedTime' - The date and time the load balancer was created.
--
-- * 'lbSecurityGroups' - The IDs of the security groups for the load balancer.
--
-- * 'lbState' - The state of the load balancer.
--
-- * 'lbDNSName' - The public DNS name of the load balancer.
--
-- * 'lbType' - The type of load balancer.
--
-- * 'lbCanonicalHostedZoneId' - The ID of the Amazon Route 53 hosted zone associated with the load balancer.
--
-- * 'lbVPCId' - The ID of the VPC for the load balancer.
--
-- * 'lbLoadBalancerName' - The name of the load balancer.
loadBalancer ::
  LoadBalancer
loadBalancer =
  LoadBalancer'
    { _lbIPAddressType = Nothing,
      _lbLoadBalancerARN = Nothing,
      _lbCustomerOwnedIPv4Pool = Nothing,
      _lbAvailabilityZones = Nothing,
      _lbScheme = Nothing,
      _lbCreatedTime = Nothing,
      _lbSecurityGroups = Nothing,
      _lbState = Nothing,
      _lbDNSName = Nothing,
      _lbType = Nothing,
      _lbCanonicalHostedZoneId = Nothing,
      _lbVPCId = Nothing,
      _lbLoadBalancerName = Nothing
    }

-- | The type of IP addresses used by the subnets for your load balancer. The possible values are @ipv4@ (for IPv4 addresses) and @dualstack@ (for IPv4 and IPv6 addresses).
lbIPAddressType :: Lens' LoadBalancer (Maybe IPAddressType)
lbIPAddressType = lens _lbIPAddressType (\s a -> s {_lbIPAddressType = a})

-- | The Amazon Resource Name (ARN) of the load balancer.
lbLoadBalancerARN :: Lens' LoadBalancer (Maybe Text)
lbLoadBalancerARN = lens _lbLoadBalancerARN (\s a -> s {_lbLoadBalancerARN = a})

-- | [Application Load Balancers on Outposts] The ID of the customer-owned address pool.
lbCustomerOwnedIPv4Pool :: Lens' LoadBalancer (Maybe Text)
lbCustomerOwnedIPv4Pool = lens _lbCustomerOwnedIPv4Pool (\s a -> s {_lbCustomerOwnedIPv4Pool = a})

-- | The subnets for the load balancer.
lbAvailabilityZones :: Lens' LoadBalancer [AvailabilityZone]
lbAvailabilityZones = lens _lbAvailabilityZones (\s a -> s {_lbAvailabilityZones = a}) . _Default . _Coerce

-- | The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes. Therefore, Internet-facing load balancers can route requests from clients over the internet. The nodes of an internal load balancer have only private IP addresses. The DNS name of an internal load balancer is publicly resolvable to the private IP addresses of the nodes. Therefore, internal load balancers can route requests only from clients with access to the VPC for the load balancer.
lbScheme :: Lens' LoadBalancer (Maybe LoadBalancerSchemeEnum)
lbScheme = lens _lbScheme (\s a -> s {_lbScheme = a})

-- | The date and time the load balancer was created.
lbCreatedTime :: Lens' LoadBalancer (Maybe UTCTime)
lbCreatedTime = lens _lbCreatedTime (\s a -> s {_lbCreatedTime = a}) . mapping _Time

-- | The IDs of the security groups for the load balancer.
lbSecurityGroups :: Lens' LoadBalancer [Text]
lbSecurityGroups = lens _lbSecurityGroups (\s a -> s {_lbSecurityGroups = a}) . _Default . _Coerce

-- | The state of the load balancer.
lbState :: Lens' LoadBalancer (Maybe LoadBalancerState)
lbState = lens _lbState (\s a -> s {_lbState = a})

-- | The public DNS name of the load balancer.
lbDNSName :: Lens' LoadBalancer (Maybe Text)
lbDNSName = lens _lbDNSName (\s a -> s {_lbDNSName = a})

-- | The type of load balancer.
lbType :: Lens' LoadBalancer (Maybe LoadBalancerTypeEnum)
lbType = lens _lbType (\s a -> s {_lbType = a})

-- | The ID of the Amazon Route 53 hosted zone associated with the load balancer.
lbCanonicalHostedZoneId :: Lens' LoadBalancer (Maybe Text)
lbCanonicalHostedZoneId = lens _lbCanonicalHostedZoneId (\s a -> s {_lbCanonicalHostedZoneId = a})

-- | The ID of the VPC for the load balancer.
lbVPCId :: Lens' LoadBalancer (Maybe Text)
lbVPCId = lens _lbVPCId (\s a -> s {_lbVPCId = a})

-- | The name of the load balancer.
lbLoadBalancerName :: Lens' LoadBalancer (Maybe Text)
lbLoadBalancerName = lens _lbLoadBalancerName (\s a -> s {_lbLoadBalancerName = a})

instance FromXML LoadBalancer where
  parseXML x =
    LoadBalancer'
      <$> (x .@? "IpAddressType")
      <*> (x .@? "LoadBalancerArn")
      <*> (x .@? "CustomerOwnedIpv4Pool")
      <*> ( x .@? "AvailabilityZones" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Scheme")
      <*> (x .@? "CreatedTime")
      <*> ( x .@? "SecurityGroups" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "State")
      <*> (x .@? "DNSName")
      <*> (x .@? "Type")
      <*> (x .@? "CanonicalHostedZoneId")
      <*> (x .@? "VpcId")
      <*> (x .@? "LoadBalancerName")

instance Hashable LoadBalancer

instance NFData LoadBalancer
