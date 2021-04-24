{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ModifyTransitGatewayOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ModifyTransitGatewayOptions where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AutoAcceptSharedAttachmentsValue
import Network.AWS.EC2.Types.DNSSupportValue
import Network.AWS.EC2.Types.DefaultRouteTableAssociationValue
import Network.AWS.EC2.Types.DefaultRouteTablePropagationValue
import Network.AWS.EC2.Types.VPNEcmpSupportValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The transit gateway options.
--
--
--
-- /See:/ 'modifyTransitGatewayOptions' smart constructor.
data ModifyTransitGatewayOptions = ModifyTransitGatewayOptions'
  { _mtgoRemoveTransitGatewayCidrBlocks ::
      !(Maybe [Text]),
    _mtgoPropagationDefaultRouteTableId ::
      !(Maybe Text),
    _mtgoVPNEcmpSupport ::
      !( Maybe
           VPNEcmpSupportValue
       ),
    _mtgoDNSSupport ::
      !( Maybe
           DNSSupportValue
       ),
    _mtgoAddTransitGatewayCidrBlocks ::
      !(Maybe [Text]),
    _mtgoAssociationDefaultRouteTableId ::
      !(Maybe Text),
    _mtgoAutoAcceptSharedAttachments ::
      !( Maybe
           AutoAcceptSharedAttachmentsValue
       ),
    _mtgoDefaultRouteTableAssociation ::
      !( Maybe
           DefaultRouteTableAssociationValue
       ),
    _mtgoDefaultRouteTablePropagation ::
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

-- | Creates a value of 'ModifyTransitGatewayOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtgoRemoveTransitGatewayCidrBlocks' - Removes CIDR blocks for the transit gateway.
--
-- * 'mtgoPropagationDefaultRouteTableId' - The ID of the default propagation route table.
--
-- * 'mtgoVPNEcmpSupport' - Enable or disable Equal Cost Multipath Protocol support.
--
-- * 'mtgoDNSSupport' - Enable or disable DNS support.
--
-- * 'mtgoAddTransitGatewayCidrBlocks' - Adds IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
--
-- * 'mtgoAssociationDefaultRouteTableId' - The ID of the default association route table.
--
-- * 'mtgoAutoAcceptSharedAttachments' - Enable or disable automatic acceptance of attachment requests.
--
-- * 'mtgoDefaultRouteTableAssociation' - Enable or disable automatic association with the default association route table.
--
-- * 'mtgoDefaultRouteTablePropagation' - Enable or disable automatic propagation of routes to the default propagation route table.
modifyTransitGatewayOptions ::
  ModifyTransitGatewayOptions
modifyTransitGatewayOptions =
  ModifyTransitGatewayOptions'
    { _mtgoRemoveTransitGatewayCidrBlocks =
        Nothing,
      _mtgoPropagationDefaultRouteTableId = Nothing,
      _mtgoVPNEcmpSupport = Nothing,
      _mtgoDNSSupport = Nothing,
      _mtgoAddTransitGatewayCidrBlocks = Nothing,
      _mtgoAssociationDefaultRouteTableId = Nothing,
      _mtgoAutoAcceptSharedAttachments = Nothing,
      _mtgoDefaultRouteTableAssociation = Nothing,
      _mtgoDefaultRouteTablePropagation = Nothing
    }

-- | Removes CIDR blocks for the transit gateway.
mtgoRemoveTransitGatewayCidrBlocks :: Lens' ModifyTransitGatewayOptions [Text]
mtgoRemoveTransitGatewayCidrBlocks = lens _mtgoRemoveTransitGatewayCidrBlocks (\s a -> s {_mtgoRemoveTransitGatewayCidrBlocks = a}) . _Default . _Coerce

-- | The ID of the default propagation route table.
mtgoPropagationDefaultRouteTableId :: Lens' ModifyTransitGatewayOptions (Maybe Text)
mtgoPropagationDefaultRouteTableId = lens _mtgoPropagationDefaultRouteTableId (\s a -> s {_mtgoPropagationDefaultRouteTableId = a})

-- | Enable or disable Equal Cost Multipath Protocol support.
mtgoVPNEcmpSupport :: Lens' ModifyTransitGatewayOptions (Maybe VPNEcmpSupportValue)
mtgoVPNEcmpSupport = lens _mtgoVPNEcmpSupport (\s a -> s {_mtgoVPNEcmpSupport = a})

-- | Enable or disable DNS support.
mtgoDNSSupport :: Lens' ModifyTransitGatewayOptions (Maybe DNSSupportValue)
mtgoDNSSupport = lens _mtgoDNSSupport (\s a -> s {_mtgoDNSSupport = a})

-- | Adds IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
mtgoAddTransitGatewayCidrBlocks :: Lens' ModifyTransitGatewayOptions [Text]
mtgoAddTransitGatewayCidrBlocks = lens _mtgoAddTransitGatewayCidrBlocks (\s a -> s {_mtgoAddTransitGatewayCidrBlocks = a}) . _Default . _Coerce

-- | The ID of the default association route table.
mtgoAssociationDefaultRouteTableId :: Lens' ModifyTransitGatewayOptions (Maybe Text)
mtgoAssociationDefaultRouteTableId = lens _mtgoAssociationDefaultRouteTableId (\s a -> s {_mtgoAssociationDefaultRouteTableId = a})

-- | Enable or disable automatic acceptance of attachment requests.
mtgoAutoAcceptSharedAttachments :: Lens' ModifyTransitGatewayOptions (Maybe AutoAcceptSharedAttachmentsValue)
mtgoAutoAcceptSharedAttachments = lens _mtgoAutoAcceptSharedAttachments (\s a -> s {_mtgoAutoAcceptSharedAttachments = a})

-- | Enable or disable automatic association with the default association route table.
mtgoDefaultRouteTableAssociation :: Lens' ModifyTransitGatewayOptions (Maybe DefaultRouteTableAssociationValue)
mtgoDefaultRouteTableAssociation = lens _mtgoDefaultRouteTableAssociation (\s a -> s {_mtgoDefaultRouteTableAssociation = a})

-- | Enable or disable automatic propagation of routes to the default propagation route table.
mtgoDefaultRouteTablePropagation :: Lens' ModifyTransitGatewayOptions (Maybe DefaultRouteTablePropagationValue)
mtgoDefaultRouteTablePropagation = lens _mtgoDefaultRouteTablePropagation (\s a -> s {_mtgoDefaultRouteTablePropagation = a})

instance Hashable ModifyTransitGatewayOptions

instance NFData ModifyTransitGatewayOptions

instance ToQuery ModifyTransitGatewayOptions where
  toQuery ModifyTransitGatewayOptions' {..} =
    mconcat
      [ toQuery
          ( toQueryList "RemoveTransitGatewayCidrBlocks"
              <$> _mtgoRemoveTransitGatewayCidrBlocks
          ),
        "PropagationDefaultRouteTableId"
          =: _mtgoPropagationDefaultRouteTableId,
        "VpnEcmpSupport" =: _mtgoVPNEcmpSupport,
        "DnsSupport" =: _mtgoDNSSupport,
        toQuery
          ( toQueryList "AddTransitGatewayCidrBlocks"
              <$> _mtgoAddTransitGatewayCidrBlocks
          ),
        "AssociationDefaultRouteTableId"
          =: _mtgoAssociationDefaultRouteTableId,
        "AutoAcceptSharedAttachments"
          =: _mtgoAutoAcceptSharedAttachments,
        "DefaultRouteTableAssociation"
          =: _mtgoDefaultRouteTableAssociation,
        "DefaultRouteTablePropagation"
          =: _mtgoDefaultRouteTablePropagation
      ]
