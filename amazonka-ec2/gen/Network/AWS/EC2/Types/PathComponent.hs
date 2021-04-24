{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.PathComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PathComponent where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AnalysisACLRule
import Network.AWS.EC2.Types.AnalysisComponent
import Network.AWS.EC2.Types.AnalysisPacketHeader
import Network.AWS.EC2.Types.AnalysisRouteTableRoute
import Network.AWS.EC2.Types.AnalysisSecurityGroupRule
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a path component.
--
--
--
-- /See:/ 'pathComponent' smart constructor.
data PathComponent = PathComponent'
  { _pcSecurityGroupRule ::
      !(Maybe AnalysisSecurityGroupRule),
    _pcSequenceNumber :: !(Maybe Int),
    _pcSubnet :: !(Maybe AnalysisComponent),
    _pcSourceVPC :: !(Maybe AnalysisComponent),
    _pcACLRule :: !(Maybe AnalysisACLRule),
    _pcInboundHeader ::
      !(Maybe AnalysisPacketHeader),
    _pcComponent :: !(Maybe AnalysisComponent),
    _pcDestinationVPC ::
      !(Maybe AnalysisComponent),
    _pcRouteTableRoute ::
      !(Maybe AnalysisRouteTableRoute),
    _pcOutboundHeader ::
      !(Maybe AnalysisPacketHeader),
    _pcVPC :: !(Maybe AnalysisComponent)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PathComponent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcSecurityGroupRule' - The security group rule.
--
-- * 'pcSequenceNumber' - The sequence number.
--
-- * 'pcSubnet' - The subnet.
--
-- * 'pcSourceVPC' - The source VPC.
--
-- * 'pcACLRule' - The network ACL rule.
--
-- * 'pcInboundHeader' - The inbound header.
--
-- * 'pcComponent' - The component.
--
-- * 'pcDestinationVPC' - The destination VPC.
--
-- * 'pcRouteTableRoute' - The route table route.
--
-- * 'pcOutboundHeader' - The outbound header.
--
-- * 'pcVPC' - The component VPC.
pathComponent ::
  PathComponent
pathComponent =
  PathComponent'
    { _pcSecurityGroupRule = Nothing,
      _pcSequenceNumber = Nothing,
      _pcSubnet = Nothing,
      _pcSourceVPC = Nothing,
      _pcACLRule = Nothing,
      _pcInboundHeader = Nothing,
      _pcComponent = Nothing,
      _pcDestinationVPC = Nothing,
      _pcRouteTableRoute = Nothing,
      _pcOutboundHeader = Nothing,
      _pcVPC = Nothing
    }

-- | The security group rule.
pcSecurityGroupRule :: Lens' PathComponent (Maybe AnalysisSecurityGroupRule)
pcSecurityGroupRule = lens _pcSecurityGroupRule (\s a -> s {_pcSecurityGroupRule = a})

-- | The sequence number.
pcSequenceNumber :: Lens' PathComponent (Maybe Int)
pcSequenceNumber = lens _pcSequenceNumber (\s a -> s {_pcSequenceNumber = a})

-- | The subnet.
pcSubnet :: Lens' PathComponent (Maybe AnalysisComponent)
pcSubnet = lens _pcSubnet (\s a -> s {_pcSubnet = a})

-- | The source VPC.
pcSourceVPC :: Lens' PathComponent (Maybe AnalysisComponent)
pcSourceVPC = lens _pcSourceVPC (\s a -> s {_pcSourceVPC = a})

-- | The network ACL rule.
pcACLRule :: Lens' PathComponent (Maybe AnalysisACLRule)
pcACLRule = lens _pcACLRule (\s a -> s {_pcACLRule = a})

-- | The inbound header.
pcInboundHeader :: Lens' PathComponent (Maybe AnalysisPacketHeader)
pcInboundHeader = lens _pcInboundHeader (\s a -> s {_pcInboundHeader = a})

-- | The component.
pcComponent :: Lens' PathComponent (Maybe AnalysisComponent)
pcComponent = lens _pcComponent (\s a -> s {_pcComponent = a})

-- | The destination VPC.
pcDestinationVPC :: Lens' PathComponent (Maybe AnalysisComponent)
pcDestinationVPC = lens _pcDestinationVPC (\s a -> s {_pcDestinationVPC = a})

-- | The route table route.
pcRouteTableRoute :: Lens' PathComponent (Maybe AnalysisRouteTableRoute)
pcRouteTableRoute = lens _pcRouteTableRoute (\s a -> s {_pcRouteTableRoute = a})

-- | The outbound header.
pcOutboundHeader :: Lens' PathComponent (Maybe AnalysisPacketHeader)
pcOutboundHeader = lens _pcOutboundHeader (\s a -> s {_pcOutboundHeader = a})

-- | The component VPC.
pcVPC :: Lens' PathComponent (Maybe AnalysisComponent)
pcVPC = lens _pcVPC (\s a -> s {_pcVPC = a})

instance FromXML PathComponent where
  parseXML x =
    PathComponent'
      <$> (x .@? "securityGroupRule")
      <*> (x .@? "sequenceNumber")
      <*> (x .@? "subnet")
      <*> (x .@? "sourceVpc")
      <*> (x .@? "aclRule")
      <*> (x .@? "inboundHeader")
      <*> (x .@? "component")
      <*> (x .@? "destinationVpc")
      <*> (x .@? "routeTableRoute")
      <*> (x .@? "outboundHeader")
      <*> (x .@? "vpc")

instance Hashable PathComponent

instance NFData PathComponent
