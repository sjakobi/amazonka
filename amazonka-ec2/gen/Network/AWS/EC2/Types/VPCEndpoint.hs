{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPCEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPCEndpoint where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.DNSEntry
import Network.AWS.EC2.Types.LastError
import Network.AWS.EC2.Types.SecurityGroupIdentifier
import Network.AWS.EC2.Types.State
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.VPCEndpointType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a VPC endpoint.
--
--
--
-- /See:/ 'vpcEndpoint' smart constructor.
data VPCEndpoint = VPCEndpoint'
  { _veCreationTimestamp ::
      !(Maybe ISO8601),
    _vePolicyDocument :: !(Maybe Text),
    _veGroups :: !(Maybe [SecurityGroupIdentifier]),
    _veOwnerId :: !(Maybe Text),
    _veRouteTableIds :: !(Maybe [Text]),
    _veVPCEndpointType :: !(Maybe VPCEndpointType),
    _veRequesterManaged :: !(Maybe Bool),
    _veDNSEntries :: !(Maybe [DNSEntry]),
    _veVPCEndpointId :: !(Maybe Text),
    _veSubnetIds :: !(Maybe [Text]),
    _veNetworkInterfaceIds :: !(Maybe [Text]),
    _veServiceName :: !(Maybe Text),
    _veLastError :: !(Maybe LastError),
    _veState :: !(Maybe State),
    _vePrivateDNSEnabled :: !(Maybe Bool),
    _veTags :: !(Maybe [Tag]),
    _veVPCId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPCEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'veCreationTimestamp' - The date and time that the VPC endpoint was created.
--
-- * 'vePolicyDocument' - The policy document associated with the endpoint, if applicable.
--
-- * 'veGroups' - (Interface endpoint) Information about the security groups that are associated with the network interface.
--
-- * 'veOwnerId' - The ID of the AWS account that owns the VPC endpoint.
--
-- * 'veRouteTableIds' - (Gateway endpoint) One or more route tables associated with the endpoint.
--
-- * 'veVPCEndpointType' - The type of endpoint.
--
-- * 'veRequesterManaged' - Indicates whether the VPC endpoint is being managed by its service.
--
-- * 'veDNSEntries' - (Interface endpoint) The DNS entries for the endpoint.
--
-- * 'veVPCEndpointId' - The ID of the VPC endpoint.
--
-- * 'veSubnetIds' - (Interface endpoint) One or more subnets in which the endpoint is located.
--
-- * 'veNetworkInterfaceIds' - (Interface endpoint) One or more network interfaces for the endpoint.
--
-- * 'veServiceName' - The name of the service to which the endpoint is associated.
--
-- * 'veLastError' - The last error that occurred for VPC endpoint.
--
-- * 'veState' - The state of the VPC endpoint.
--
-- * 'vePrivateDNSEnabled' - (Interface endpoint) Indicates whether the VPC is associated with a private hosted zone.
--
-- * 'veTags' - Any tags assigned to the VPC endpoint.
--
-- * 'veVPCId' - The ID of the VPC to which the endpoint is associated.
vpcEndpoint ::
  VPCEndpoint
vpcEndpoint =
  VPCEndpoint'
    { _veCreationTimestamp = Nothing,
      _vePolicyDocument = Nothing,
      _veGroups = Nothing,
      _veOwnerId = Nothing,
      _veRouteTableIds = Nothing,
      _veVPCEndpointType = Nothing,
      _veRequesterManaged = Nothing,
      _veDNSEntries = Nothing,
      _veVPCEndpointId = Nothing,
      _veSubnetIds = Nothing,
      _veNetworkInterfaceIds = Nothing,
      _veServiceName = Nothing,
      _veLastError = Nothing,
      _veState = Nothing,
      _vePrivateDNSEnabled = Nothing,
      _veTags = Nothing,
      _veVPCId = Nothing
    }

-- | The date and time that the VPC endpoint was created.
veCreationTimestamp :: Lens' VPCEndpoint (Maybe UTCTime)
veCreationTimestamp = lens _veCreationTimestamp (\s a -> s {_veCreationTimestamp = a}) . mapping _Time

-- | The policy document associated with the endpoint, if applicable.
vePolicyDocument :: Lens' VPCEndpoint (Maybe Text)
vePolicyDocument = lens _vePolicyDocument (\s a -> s {_vePolicyDocument = a})

-- | (Interface endpoint) Information about the security groups that are associated with the network interface.
veGroups :: Lens' VPCEndpoint [SecurityGroupIdentifier]
veGroups = lens _veGroups (\s a -> s {_veGroups = a}) . _Default . _Coerce

-- | The ID of the AWS account that owns the VPC endpoint.
veOwnerId :: Lens' VPCEndpoint (Maybe Text)
veOwnerId = lens _veOwnerId (\s a -> s {_veOwnerId = a})

-- | (Gateway endpoint) One or more route tables associated with the endpoint.
veRouteTableIds :: Lens' VPCEndpoint [Text]
veRouteTableIds = lens _veRouteTableIds (\s a -> s {_veRouteTableIds = a}) . _Default . _Coerce

-- | The type of endpoint.
veVPCEndpointType :: Lens' VPCEndpoint (Maybe VPCEndpointType)
veVPCEndpointType = lens _veVPCEndpointType (\s a -> s {_veVPCEndpointType = a})

-- | Indicates whether the VPC endpoint is being managed by its service.
veRequesterManaged :: Lens' VPCEndpoint (Maybe Bool)
veRequesterManaged = lens _veRequesterManaged (\s a -> s {_veRequesterManaged = a})

-- | (Interface endpoint) The DNS entries for the endpoint.
veDNSEntries :: Lens' VPCEndpoint [DNSEntry]
veDNSEntries = lens _veDNSEntries (\s a -> s {_veDNSEntries = a}) . _Default . _Coerce

-- | The ID of the VPC endpoint.
veVPCEndpointId :: Lens' VPCEndpoint (Maybe Text)
veVPCEndpointId = lens _veVPCEndpointId (\s a -> s {_veVPCEndpointId = a})

-- | (Interface endpoint) One or more subnets in which the endpoint is located.
veSubnetIds :: Lens' VPCEndpoint [Text]
veSubnetIds = lens _veSubnetIds (\s a -> s {_veSubnetIds = a}) . _Default . _Coerce

-- | (Interface endpoint) One or more network interfaces for the endpoint.
veNetworkInterfaceIds :: Lens' VPCEndpoint [Text]
veNetworkInterfaceIds = lens _veNetworkInterfaceIds (\s a -> s {_veNetworkInterfaceIds = a}) . _Default . _Coerce

-- | The name of the service to which the endpoint is associated.
veServiceName :: Lens' VPCEndpoint (Maybe Text)
veServiceName = lens _veServiceName (\s a -> s {_veServiceName = a})

-- | The last error that occurred for VPC endpoint.
veLastError :: Lens' VPCEndpoint (Maybe LastError)
veLastError = lens _veLastError (\s a -> s {_veLastError = a})

-- | The state of the VPC endpoint.
veState :: Lens' VPCEndpoint (Maybe State)
veState = lens _veState (\s a -> s {_veState = a})

-- | (Interface endpoint) Indicates whether the VPC is associated with a private hosted zone.
vePrivateDNSEnabled :: Lens' VPCEndpoint (Maybe Bool)
vePrivateDNSEnabled = lens _vePrivateDNSEnabled (\s a -> s {_vePrivateDNSEnabled = a})

-- | Any tags assigned to the VPC endpoint.
veTags :: Lens' VPCEndpoint [Tag]
veTags = lens _veTags (\s a -> s {_veTags = a}) . _Default . _Coerce

-- | The ID of the VPC to which the endpoint is associated.
veVPCId :: Lens' VPCEndpoint (Maybe Text)
veVPCId = lens _veVPCId (\s a -> s {_veVPCId = a})

instance FromXML VPCEndpoint where
  parseXML x =
    VPCEndpoint'
      <$> (x .@? "creationTimestamp")
      <*> (x .@? "policyDocument")
      <*> ( x .@? "groupSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "ownerId")
      <*> ( x .@? "routeTableIdSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "vpcEndpointType")
      <*> (x .@? "requesterManaged")
      <*> ( x .@? "dnsEntrySet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "vpcEndpointId")
      <*> ( x .@? "subnetIdSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "networkInterfaceIdSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "serviceName")
      <*> (x .@? "lastError")
      <*> (x .@? "state")
      <*> (x .@? "privateDnsEnabled")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "vpcId")

instance Hashable VPCEndpoint

instance NFData VPCEndpoint
