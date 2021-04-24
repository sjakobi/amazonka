{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayOptions where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AutoAcceptSharedAttachmentsValue
import Network.AWS.EC2.Types.DNSSupportValue
import Network.AWS.EC2.Types.DefaultRouteTableAssociationValue
import Network.AWS.EC2.Types.DefaultRouteTablePropagationValue
import Network.AWS.EC2.Types.MulticastSupportValue
import Network.AWS.EC2.Types.VPNEcmpSupportValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the options for a transit gateway.
--
--
--
-- /See:/ 'transitGatewayOptions' smart constructor.
data TransitGatewayOptions = TransitGatewayOptions'
  { _tgoPropagationDefaultRouteTableId ::
      !(Maybe Text),
    _tgoVPNEcmpSupport ::
      !( Maybe
           VPNEcmpSupportValue
       ),
    _tgoDNSSupport ::
      !(Maybe DNSSupportValue),
    _tgoAssociationDefaultRouteTableId ::
      !(Maybe Text),
    _tgoAutoAcceptSharedAttachments ::
      !( Maybe
           AutoAcceptSharedAttachmentsValue
       ),
    _tgoAmazonSideASN ::
      !(Maybe Integer),
    _tgoTransitGatewayCidrBlocks ::
      !(Maybe [Text]),
    _tgoMulticastSupport ::
      !( Maybe
           MulticastSupportValue
       ),
    _tgoDefaultRouteTableAssociation ::
      !( Maybe
           DefaultRouteTableAssociationValue
       ),
    _tgoDefaultRouteTablePropagation ::
      !( Maybe
           DefaultRouteTablePropagationValue
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TransitGatewayOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgoPropagationDefaultRouteTableId' - The ID of the default propagation route table.
--
-- * 'tgoVPNEcmpSupport' - Indicates whether Equal Cost Multipath Protocol support is enabled.
--
-- * 'tgoDNSSupport' - Indicates whether DNS support is enabled.
--
-- * 'tgoAssociationDefaultRouteTableId' - The ID of the default association route table.
--
-- * 'tgoAutoAcceptSharedAttachments' - Indicates whether attachment requests are automatically accepted.
--
-- * 'tgoAmazonSideASN' - A private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs.
--
-- * 'tgoTransitGatewayCidrBlocks' - The transit gateway CIDR blocks.
--
-- * 'tgoMulticastSupport' - Indicates whether multicast is enabled on the transit gateway
--
-- * 'tgoDefaultRouteTableAssociation' - Indicates whether resource attachments are automatically associated with the default association route table.
--
-- * 'tgoDefaultRouteTablePropagation' - Indicates whether resource attachments automatically propagate routes to the default propagation route table.
transitGatewayOptions ::
  TransitGatewayOptions
transitGatewayOptions =
  TransitGatewayOptions'
    { _tgoPropagationDefaultRouteTableId =
        Nothing,
      _tgoVPNEcmpSupport = Nothing,
      _tgoDNSSupport = Nothing,
      _tgoAssociationDefaultRouteTableId = Nothing,
      _tgoAutoAcceptSharedAttachments = Nothing,
      _tgoAmazonSideASN = Nothing,
      _tgoTransitGatewayCidrBlocks = Nothing,
      _tgoMulticastSupport = Nothing,
      _tgoDefaultRouteTableAssociation = Nothing,
      _tgoDefaultRouteTablePropagation = Nothing
    }

-- | The ID of the default propagation route table.
tgoPropagationDefaultRouteTableId :: Lens' TransitGatewayOptions (Maybe Text)
tgoPropagationDefaultRouteTableId = lens _tgoPropagationDefaultRouteTableId (\s a -> s {_tgoPropagationDefaultRouteTableId = a})

-- | Indicates whether Equal Cost Multipath Protocol support is enabled.
tgoVPNEcmpSupport :: Lens' TransitGatewayOptions (Maybe VPNEcmpSupportValue)
tgoVPNEcmpSupport = lens _tgoVPNEcmpSupport (\s a -> s {_tgoVPNEcmpSupport = a})

-- | Indicates whether DNS support is enabled.
tgoDNSSupport :: Lens' TransitGatewayOptions (Maybe DNSSupportValue)
tgoDNSSupport = lens _tgoDNSSupport (\s a -> s {_tgoDNSSupport = a})

-- | The ID of the default association route table.
tgoAssociationDefaultRouteTableId :: Lens' TransitGatewayOptions (Maybe Text)
tgoAssociationDefaultRouteTableId = lens _tgoAssociationDefaultRouteTableId (\s a -> s {_tgoAssociationDefaultRouteTableId = a})

-- | Indicates whether attachment requests are automatically accepted.
tgoAutoAcceptSharedAttachments :: Lens' TransitGatewayOptions (Maybe AutoAcceptSharedAttachmentsValue)
tgoAutoAcceptSharedAttachments = lens _tgoAutoAcceptSharedAttachments (\s a -> s {_tgoAutoAcceptSharedAttachments = a})

-- | A private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs.
tgoAmazonSideASN :: Lens' TransitGatewayOptions (Maybe Integer)
tgoAmazonSideASN = lens _tgoAmazonSideASN (\s a -> s {_tgoAmazonSideASN = a})

-- | The transit gateway CIDR blocks.
tgoTransitGatewayCidrBlocks :: Lens' TransitGatewayOptions [Text]
tgoTransitGatewayCidrBlocks = lens _tgoTransitGatewayCidrBlocks (\s a -> s {_tgoTransitGatewayCidrBlocks = a}) . _Default . _Coerce

-- | Indicates whether multicast is enabled on the transit gateway
tgoMulticastSupport :: Lens' TransitGatewayOptions (Maybe MulticastSupportValue)
tgoMulticastSupport = lens _tgoMulticastSupport (\s a -> s {_tgoMulticastSupport = a})

-- | Indicates whether resource attachments are automatically associated with the default association route table.
tgoDefaultRouteTableAssociation :: Lens' TransitGatewayOptions (Maybe DefaultRouteTableAssociationValue)
tgoDefaultRouteTableAssociation = lens _tgoDefaultRouteTableAssociation (\s a -> s {_tgoDefaultRouteTableAssociation = a})

-- | Indicates whether resource attachments automatically propagate routes to the default propagation route table.
tgoDefaultRouteTablePropagation :: Lens' TransitGatewayOptions (Maybe DefaultRouteTablePropagationValue)
tgoDefaultRouteTablePropagation = lens _tgoDefaultRouteTablePropagation (\s a -> s {_tgoDefaultRouteTablePropagation = a})

instance FromXML TransitGatewayOptions where
  parseXML x =
    TransitGatewayOptions'
      <$> (x .@? "propagationDefaultRouteTableId")
      <*> (x .@? "vpnEcmpSupport")
      <*> (x .@? "dnsSupport")
      <*> (x .@? "associationDefaultRouteTableId")
      <*> (x .@? "autoAcceptSharedAttachments")
      <*> (x .@? "amazonSideAsn")
      <*> ( x .@? "transitGatewayCidrBlocks" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "multicastSupport")
      <*> (x .@? "defaultRouteTableAssociation")
      <*> (x .@? "defaultRouteTablePropagation")

instance Hashable TransitGatewayOptions

instance NFData TransitGatewayOptions
