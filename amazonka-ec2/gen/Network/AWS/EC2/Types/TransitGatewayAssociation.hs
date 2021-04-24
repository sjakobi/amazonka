{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayAssociation where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.TransitGatewayAssociationState
import Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an association between a resource attachment and a transit gateway route table.
--
--
--
-- /See:/ 'transitGatewayAssociation' smart constructor.
data TransitGatewayAssociation = TransitGatewayAssociation'
  { _tgaResourceId ::
      !(Maybe Text),
    _tgaResourceType ::
      !( Maybe
           TransitGatewayAttachmentResourceType
       ),
    _tgaState ::
      !( Maybe
           TransitGatewayAssociationState
       ),
    _tgaTransitGatewayAttachmentId ::
      !(Maybe Text),
    _tgaTransitGatewayRouteTableId ::
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

-- | Creates a value of 'TransitGatewayAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgaResourceId' - The ID of the resource.
--
-- * 'tgaResourceType' - The resource type. Note that the @tgw-peering@ resource type has been deprecated.
--
-- * 'tgaState' - The state of the association.
--
-- * 'tgaTransitGatewayAttachmentId' - The ID of the attachment.
--
-- * 'tgaTransitGatewayRouteTableId' - The ID of the transit gateway route table.
transitGatewayAssociation ::
  TransitGatewayAssociation
transitGatewayAssociation =
  TransitGatewayAssociation'
    { _tgaResourceId =
        Nothing,
      _tgaResourceType = Nothing,
      _tgaState = Nothing,
      _tgaTransitGatewayAttachmentId = Nothing,
      _tgaTransitGatewayRouteTableId = Nothing
    }

-- | The ID of the resource.
tgaResourceId :: Lens' TransitGatewayAssociation (Maybe Text)
tgaResourceId = lens _tgaResourceId (\s a -> s {_tgaResourceId = a})

-- | The resource type. Note that the @tgw-peering@ resource type has been deprecated.
tgaResourceType :: Lens' TransitGatewayAssociation (Maybe TransitGatewayAttachmentResourceType)
tgaResourceType = lens _tgaResourceType (\s a -> s {_tgaResourceType = a})

-- | The state of the association.
tgaState :: Lens' TransitGatewayAssociation (Maybe TransitGatewayAssociationState)
tgaState = lens _tgaState (\s a -> s {_tgaState = a})

-- | The ID of the attachment.
tgaTransitGatewayAttachmentId :: Lens' TransitGatewayAssociation (Maybe Text)
tgaTransitGatewayAttachmentId = lens _tgaTransitGatewayAttachmentId (\s a -> s {_tgaTransitGatewayAttachmentId = a})

-- | The ID of the transit gateway route table.
tgaTransitGatewayRouteTableId :: Lens' TransitGatewayAssociation (Maybe Text)
tgaTransitGatewayRouteTableId = lens _tgaTransitGatewayRouteTableId (\s a -> s {_tgaTransitGatewayRouteTableId = a})

instance FromXML TransitGatewayAssociation where
  parseXML x =
    TransitGatewayAssociation'
      <$> (x .@? "resourceId")
      <*> (x .@? "resourceType")
      <*> (x .@? "state")
      <*> (x .@? "transitGatewayAttachmentId")
      <*> (x .@? "transitGatewayRouteTableId")

instance Hashable TransitGatewayAssociation

instance NFData TransitGatewayAssociation
