{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayPropagation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayPropagation where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType
import Network.AWS.EC2.Types.TransitGatewayPropagationState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes route propagation.
--
--
--
-- /See:/ 'transitGatewayPropagation' smart constructor.
data TransitGatewayPropagation = TransitGatewayPropagation'
  { _tgpResourceId ::
      !(Maybe Text),
    _tgpResourceType ::
      !( Maybe
           TransitGatewayAttachmentResourceType
       ),
    _tgpState ::
      !( Maybe
           TransitGatewayPropagationState
       ),
    _tgpTransitGatewayAttachmentId ::
      !(Maybe Text),
    _tgpTransitGatewayRouteTableId ::
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

-- | Creates a value of 'TransitGatewayPropagation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgpResourceId' - The ID of the resource.
--
-- * 'tgpResourceType' - The resource type. Note that the @tgw-peering@ resource type has been deprecated.
--
-- * 'tgpState' - The state.
--
-- * 'tgpTransitGatewayAttachmentId' - The ID of the attachment.
--
-- * 'tgpTransitGatewayRouteTableId' - The ID of the transit gateway route table.
transitGatewayPropagation ::
  TransitGatewayPropagation
transitGatewayPropagation =
  TransitGatewayPropagation'
    { _tgpResourceId =
        Nothing,
      _tgpResourceType = Nothing,
      _tgpState = Nothing,
      _tgpTransitGatewayAttachmentId = Nothing,
      _tgpTransitGatewayRouteTableId = Nothing
    }

-- | The ID of the resource.
tgpResourceId :: Lens' TransitGatewayPropagation (Maybe Text)
tgpResourceId = lens _tgpResourceId (\s a -> s {_tgpResourceId = a})

-- | The resource type. Note that the @tgw-peering@ resource type has been deprecated.
tgpResourceType :: Lens' TransitGatewayPropagation (Maybe TransitGatewayAttachmentResourceType)
tgpResourceType = lens _tgpResourceType (\s a -> s {_tgpResourceType = a})

-- | The state.
tgpState :: Lens' TransitGatewayPropagation (Maybe TransitGatewayPropagationState)
tgpState = lens _tgpState (\s a -> s {_tgpState = a})

-- | The ID of the attachment.
tgpTransitGatewayAttachmentId :: Lens' TransitGatewayPropagation (Maybe Text)
tgpTransitGatewayAttachmentId = lens _tgpTransitGatewayAttachmentId (\s a -> s {_tgpTransitGatewayAttachmentId = a})

-- | The ID of the transit gateway route table.
tgpTransitGatewayRouteTableId :: Lens' TransitGatewayPropagation (Maybe Text)
tgpTransitGatewayRouteTableId = lens _tgpTransitGatewayRouteTableId (\s a -> s {_tgpTransitGatewayRouteTableId = a})

instance FromXML TransitGatewayPropagation where
  parseXML x =
    TransitGatewayPropagation'
      <$> (x .@? "resourceId")
      <*> (x .@? "resourceType")
      <*> (x .@? "state")
      <*> (x .@? "transitGatewayAttachmentId")
      <*> (x .@? "transitGatewayRouteTableId")

instance Hashable TransitGatewayPropagation

instance NFData TransitGatewayPropagation
