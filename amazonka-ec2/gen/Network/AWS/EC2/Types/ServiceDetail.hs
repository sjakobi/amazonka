{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ServiceDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ServiceDetail where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.DNSNameState
import Network.AWS.EC2.Types.PrivateDNSDetails
import Network.AWS.EC2.Types.ServiceTypeDetail
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a VPC endpoint service.
--
--
--
-- /See:/ 'serviceDetail' smart constructor.
data ServiceDetail = ServiceDetail'
  { _sdManagesVPCEndpoints ::
      !(Maybe Bool),
    _sdAvailabilityZones :: !(Maybe [Text]),
    _sdBaseEndpointDNSNames :: !(Maybe [Text]),
    _sdServiceId :: !(Maybe Text),
    _sdVPCEndpointPolicySupported ::
      !(Maybe Bool),
    _sdPrivateDNSNames ::
      !(Maybe [PrivateDNSDetails]),
    _sdPrivateDNSNameVerificationState ::
      !(Maybe DNSNameState),
    _sdServiceName :: !(Maybe Text),
    _sdTags :: !(Maybe [Tag]),
    _sdOwner :: !(Maybe Text),
    _sdPrivateDNSName :: !(Maybe Text),
    _sdAcceptanceRequired :: !(Maybe Bool),
    _sdServiceType ::
      !(Maybe [ServiceTypeDetail])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdManagesVPCEndpoints' - Indicates whether the service manages its VPC endpoints. Management of the service VPC endpoints using the VPC endpoint API is restricted.
--
-- * 'sdAvailabilityZones' - The Availability Zones in which the service is available.
--
-- * 'sdBaseEndpointDNSNames' - The DNS names for the service.
--
-- * 'sdServiceId' - The ID of the endpoint service.
--
-- * 'sdVPCEndpointPolicySupported' - Indicates whether the service supports endpoint policies.
--
-- * 'sdPrivateDNSNames' - The private DNS names assigned to the VPC endpoint service.
--
-- * 'sdPrivateDNSNameVerificationState' - The verification state of the VPC endpoint service. Consumers of the endpoint service cannot use the private name when the state is not @verified@ .
--
-- * 'sdServiceName' - The Amazon Resource Name (ARN) of the service.
--
-- * 'sdTags' - Any tags assigned to the service.
--
-- * 'sdOwner' - The AWS account ID of the service owner.
--
-- * 'sdPrivateDNSName' - The private DNS name for the service.
--
-- * 'sdAcceptanceRequired' - Indicates whether VPC endpoint connection requests to the service must be accepted by the service owner.
--
-- * 'sdServiceType' - The type of service.
serviceDetail ::
  ServiceDetail
serviceDetail =
  ServiceDetail'
    { _sdManagesVPCEndpoints = Nothing,
      _sdAvailabilityZones = Nothing,
      _sdBaseEndpointDNSNames = Nothing,
      _sdServiceId = Nothing,
      _sdVPCEndpointPolicySupported = Nothing,
      _sdPrivateDNSNames = Nothing,
      _sdPrivateDNSNameVerificationState = Nothing,
      _sdServiceName = Nothing,
      _sdTags = Nothing,
      _sdOwner = Nothing,
      _sdPrivateDNSName = Nothing,
      _sdAcceptanceRequired = Nothing,
      _sdServiceType = Nothing
    }

-- | Indicates whether the service manages its VPC endpoints. Management of the service VPC endpoints using the VPC endpoint API is restricted.
sdManagesVPCEndpoints :: Lens' ServiceDetail (Maybe Bool)
sdManagesVPCEndpoints = lens _sdManagesVPCEndpoints (\s a -> s {_sdManagesVPCEndpoints = a})

-- | The Availability Zones in which the service is available.
sdAvailabilityZones :: Lens' ServiceDetail [Text]
sdAvailabilityZones = lens _sdAvailabilityZones (\s a -> s {_sdAvailabilityZones = a}) . _Default . _Coerce

-- | The DNS names for the service.
sdBaseEndpointDNSNames :: Lens' ServiceDetail [Text]
sdBaseEndpointDNSNames = lens _sdBaseEndpointDNSNames (\s a -> s {_sdBaseEndpointDNSNames = a}) . _Default . _Coerce

-- | The ID of the endpoint service.
sdServiceId :: Lens' ServiceDetail (Maybe Text)
sdServiceId = lens _sdServiceId (\s a -> s {_sdServiceId = a})

-- | Indicates whether the service supports endpoint policies.
sdVPCEndpointPolicySupported :: Lens' ServiceDetail (Maybe Bool)
sdVPCEndpointPolicySupported = lens _sdVPCEndpointPolicySupported (\s a -> s {_sdVPCEndpointPolicySupported = a})

-- | The private DNS names assigned to the VPC endpoint service.
sdPrivateDNSNames :: Lens' ServiceDetail [PrivateDNSDetails]
sdPrivateDNSNames = lens _sdPrivateDNSNames (\s a -> s {_sdPrivateDNSNames = a}) . _Default . _Coerce

-- | The verification state of the VPC endpoint service. Consumers of the endpoint service cannot use the private name when the state is not @verified@ .
sdPrivateDNSNameVerificationState :: Lens' ServiceDetail (Maybe DNSNameState)
sdPrivateDNSNameVerificationState = lens _sdPrivateDNSNameVerificationState (\s a -> s {_sdPrivateDNSNameVerificationState = a})

-- | The Amazon Resource Name (ARN) of the service.
sdServiceName :: Lens' ServiceDetail (Maybe Text)
sdServiceName = lens _sdServiceName (\s a -> s {_sdServiceName = a})

-- | Any tags assigned to the service.
sdTags :: Lens' ServiceDetail [Tag]
sdTags = lens _sdTags (\s a -> s {_sdTags = a}) . _Default . _Coerce

-- | The AWS account ID of the service owner.
sdOwner :: Lens' ServiceDetail (Maybe Text)
sdOwner = lens _sdOwner (\s a -> s {_sdOwner = a})

-- | The private DNS name for the service.
sdPrivateDNSName :: Lens' ServiceDetail (Maybe Text)
sdPrivateDNSName = lens _sdPrivateDNSName (\s a -> s {_sdPrivateDNSName = a})

-- | Indicates whether VPC endpoint connection requests to the service must be accepted by the service owner.
sdAcceptanceRequired :: Lens' ServiceDetail (Maybe Bool)
sdAcceptanceRequired = lens _sdAcceptanceRequired (\s a -> s {_sdAcceptanceRequired = a})

-- | The type of service.
sdServiceType :: Lens' ServiceDetail [ServiceTypeDetail]
sdServiceType = lens _sdServiceType (\s a -> s {_sdServiceType = a}) . _Default . _Coerce

instance FromXML ServiceDetail where
  parseXML x =
    ServiceDetail'
      <$> (x .@? "managesVpcEndpoints")
      <*> ( x .@? "availabilityZoneSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "baseEndpointDnsNameSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "serviceId")
      <*> (x .@? "vpcEndpointPolicySupported")
      <*> ( x .@? "privateDnsNameSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "privateDnsNameVerificationState")
      <*> (x .@? "serviceName")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "owner")
      <*> (x .@? "privateDnsName")
      <*> (x .@? "acceptanceRequired")
      <*> ( x .@? "serviceType" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable ServiceDetail

instance NFData ServiceDetail
