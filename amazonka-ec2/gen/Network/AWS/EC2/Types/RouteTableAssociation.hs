{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.RouteTableAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RouteTableAssociation where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.RouteTableAssociationState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an association between a route table and a subnet or gateway.
--
--
--
-- /See:/ 'routeTableAssociation' smart constructor.
data RouteTableAssociation = RouteTableAssociation'
  { _rtaAssociationState ::
      !( Maybe
           RouteTableAssociationState
       ),
    _rtaMain :: !(Maybe Bool),
    _rtaRouteTableId ::
      !(Maybe Text),
    _rtaSubnetId ::
      !(Maybe Text),
    _rtaRouteTableAssociationId ::
      !(Maybe Text),
    _rtaGatewayId ::
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

-- | Creates a value of 'RouteTableAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtaAssociationState' - The state of the association.
--
-- * 'rtaMain' - Indicates whether this is the main route table.
--
-- * 'rtaRouteTableId' - The ID of the route table.
--
-- * 'rtaSubnetId' - The ID of the subnet. A subnet ID is not returned for an implicit association.
--
-- * 'rtaRouteTableAssociationId' - The ID of the association.
--
-- * 'rtaGatewayId' - The ID of the internet gateway or virtual private gateway.
routeTableAssociation ::
  RouteTableAssociation
routeTableAssociation =
  RouteTableAssociation'
    { _rtaAssociationState =
        Nothing,
      _rtaMain = Nothing,
      _rtaRouteTableId = Nothing,
      _rtaSubnetId = Nothing,
      _rtaRouteTableAssociationId = Nothing,
      _rtaGatewayId = Nothing
    }

-- | The state of the association.
rtaAssociationState :: Lens' RouteTableAssociation (Maybe RouteTableAssociationState)
rtaAssociationState = lens _rtaAssociationState (\s a -> s {_rtaAssociationState = a})

-- | Indicates whether this is the main route table.
rtaMain :: Lens' RouteTableAssociation (Maybe Bool)
rtaMain = lens _rtaMain (\s a -> s {_rtaMain = a})

-- | The ID of the route table.
rtaRouteTableId :: Lens' RouteTableAssociation (Maybe Text)
rtaRouteTableId = lens _rtaRouteTableId (\s a -> s {_rtaRouteTableId = a})

-- | The ID of the subnet. A subnet ID is not returned for an implicit association.
rtaSubnetId :: Lens' RouteTableAssociation (Maybe Text)
rtaSubnetId = lens _rtaSubnetId (\s a -> s {_rtaSubnetId = a})

-- | The ID of the association.
rtaRouteTableAssociationId :: Lens' RouteTableAssociation (Maybe Text)
rtaRouteTableAssociationId = lens _rtaRouteTableAssociationId (\s a -> s {_rtaRouteTableAssociationId = a})

-- | The ID of the internet gateway or virtual private gateway.
rtaGatewayId :: Lens' RouteTableAssociation (Maybe Text)
rtaGatewayId = lens _rtaGatewayId (\s a -> s {_rtaGatewayId = a})

instance FromXML RouteTableAssociation where
  parseXML x =
    RouteTableAssociation'
      <$> (x .@? "associationState")
      <*> (x .@? "main")
      <*> (x .@? "routeTableId")
      <*> (x .@? "subnetId")
      <*> (x .@? "routeTableAssociationId")
      <*> (x .@? "gatewayId")

instance Hashable RouteTableAssociation

instance NFData RouteTableAssociation
