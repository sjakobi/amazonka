{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPCEndpointConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPCEndpointConnection where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.DNSEntry
import Network.AWS.EC2.Types.State
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a VPC endpoint connection to a service.
--
--
--
-- /See:/ 'vpcEndpointConnection' smart constructor.
data VPCEndpointConnection = VPCEndpointConnection'
  { _vecCreationTimestamp ::
      !(Maybe ISO8601),
    _vecVPCEndpointOwner ::
      !(Maybe Text),
    _vecGatewayLoadBalancerARNs ::
      !(Maybe [Text]),
    _vecVPCEndpointState ::
      !(Maybe State),
    _vecDNSEntries ::
      !(Maybe [DNSEntry]),
    _vecVPCEndpointId ::
      !(Maybe Text),
    _vecServiceId ::
      !(Maybe Text),
    _vecNetworkLoadBalancerARNs ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'VPCEndpointConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vecCreationTimestamp' - The date and time that the VPC endpoint was created.
--
-- * 'vecVPCEndpointOwner' - The AWS account ID of the owner of the VPC endpoint.
--
-- * 'vecGatewayLoadBalancerARNs' - The Amazon Resource Names (ARNs) of the Gateway Load Balancers for the service.
--
-- * 'vecVPCEndpointState' - The state of the VPC endpoint.
--
-- * 'vecDNSEntries' - The DNS entries for the VPC endpoint.
--
-- * 'vecVPCEndpointId' - The ID of the VPC endpoint.
--
-- * 'vecServiceId' - The ID of the service to which the endpoint is connected.
--
-- * 'vecNetworkLoadBalancerARNs' - The Amazon Resource Names (ARNs) of the network load balancers for the service.
vpcEndpointConnection ::
  VPCEndpointConnection
vpcEndpointConnection =
  VPCEndpointConnection'
    { _vecCreationTimestamp =
        Nothing,
      _vecVPCEndpointOwner = Nothing,
      _vecGatewayLoadBalancerARNs = Nothing,
      _vecVPCEndpointState = Nothing,
      _vecDNSEntries = Nothing,
      _vecVPCEndpointId = Nothing,
      _vecServiceId = Nothing,
      _vecNetworkLoadBalancerARNs = Nothing
    }

-- | The date and time that the VPC endpoint was created.
vecCreationTimestamp :: Lens' VPCEndpointConnection (Maybe UTCTime)
vecCreationTimestamp = lens _vecCreationTimestamp (\s a -> s {_vecCreationTimestamp = a}) . mapping _Time

-- | The AWS account ID of the owner of the VPC endpoint.
vecVPCEndpointOwner :: Lens' VPCEndpointConnection (Maybe Text)
vecVPCEndpointOwner = lens _vecVPCEndpointOwner (\s a -> s {_vecVPCEndpointOwner = a})

-- | The Amazon Resource Names (ARNs) of the Gateway Load Balancers for the service.
vecGatewayLoadBalancerARNs :: Lens' VPCEndpointConnection [Text]
vecGatewayLoadBalancerARNs = lens _vecGatewayLoadBalancerARNs (\s a -> s {_vecGatewayLoadBalancerARNs = a}) . _Default . _Coerce

-- | The state of the VPC endpoint.
vecVPCEndpointState :: Lens' VPCEndpointConnection (Maybe State)
vecVPCEndpointState = lens _vecVPCEndpointState (\s a -> s {_vecVPCEndpointState = a})

-- | The DNS entries for the VPC endpoint.
vecDNSEntries :: Lens' VPCEndpointConnection [DNSEntry]
vecDNSEntries = lens _vecDNSEntries (\s a -> s {_vecDNSEntries = a}) . _Default . _Coerce

-- | The ID of the VPC endpoint.
vecVPCEndpointId :: Lens' VPCEndpointConnection (Maybe Text)
vecVPCEndpointId = lens _vecVPCEndpointId (\s a -> s {_vecVPCEndpointId = a})

-- | The ID of the service to which the endpoint is connected.
vecServiceId :: Lens' VPCEndpointConnection (Maybe Text)
vecServiceId = lens _vecServiceId (\s a -> s {_vecServiceId = a})

-- | The Amazon Resource Names (ARNs) of the network load balancers for the service.
vecNetworkLoadBalancerARNs :: Lens' VPCEndpointConnection [Text]
vecNetworkLoadBalancerARNs = lens _vecNetworkLoadBalancerARNs (\s a -> s {_vecNetworkLoadBalancerARNs = a}) . _Default . _Coerce

instance FromXML VPCEndpointConnection where
  parseXML x =
    VPCEndpointConnection'
      <$> (x .@? "creationTimestamp")
      <*> (x .@? "vpcEndpointOwner")
      <*> ( x .@? "gatewayLoadBalancerArnSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "vpcEndpointState")
      <*> ( x .@? "dnsEntrySet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "vpcEndpointId")
      <*> (x .@? "serviceId")
      <*> ( x .@? "networkLoadBalancerArnSet" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable VPCEndpointConnection

instance NFData VPCEndpointConnection
