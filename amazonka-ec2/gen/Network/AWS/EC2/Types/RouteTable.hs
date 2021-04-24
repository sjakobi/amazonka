{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.RouteTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RouteTable where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.PropagatingVGW
import Network.AWS.EC2.Types.Route
import Network.AWS.EC2.Types.RouteTableAssociation
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a route table.
--
--
--
-- /See:/ 'routeTable' smart constructor.
data RouteTable = RouteTable'
  { _rtOwnerId ::
      !(Maybe Text),
    _rtRouteTableId :: !(Maybe Text),
    _rtRoutes :: !(Maybe [Route]),
    _rtTags :: !(Maybe [Tag]),
    _rtPropagatingVGWs :: !(Maybe [PropagatingVGW]),
    _rtVPCId :: !(Maybe Text),
    _rtAssociations ::
      !(Maybe [RouteTableAssociation])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RouteTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtOwnerId' - The ID of the AWS account that owns the route table.
--
-- * 'rtRouteTableId' - The ID of the route table.
--
-- * 'rtRoutes' - The routes in the route table.
--
-- * 'rtTags' - Any tags assigned to the route table.
--
-- * 'rtPropagatingVGWs' - Any virtual private gateway (VGW) propagating routes.
--
-- * 'rtVPCId' - The ID of the VPC.
--
-- * 'rtAssociations' - The associations between the route table and one or more subnets or a gateway.
routeTable ::
  RouteTable
routeTable =
  RouteTable'
    { _rtOwnerId = Nothing,
      _rtRouteTableId = Nothing,
      _rtRoutes = Nothing,
      _rtTags = Nothing,
      _rtPropagatingVGWs = Nothing,
      _rtVPCId = Nothing,
      _rtAssociations = Nothing
    }

-- | The ID of the AWS account that owns the route table.
rtOwnerId :: Lens' RouteTable (Maybe Text)
rtOwnerId = lens _rtOwnerId (\s a -> s {_rtOwnerId = a})

-- | The ID of the route table.
rtRouteTableId :: Lens' RouteTable (Maybe Text)
rtRouteTableId = lens _rtRouteTableId (\s a -> s {_rtRouteTableId = a})

-- | The routes in the route table.
rtRoutes :: Lens' RouteTable [Route]
rtRoutes = lens _rtRoutes (\s a -> s {_rtRoutes = a}) . _Default . _Coerce

-- | Any tags assigned to the route table.
rtTags :: Lens' RouteTable [Tag]
rtTags = lens _rtTags (\s a -> s {_rtTags = a}) . _Default . _Coerce

-- | Any virtual private gateway (VGW) propagating routes.
rtPropagatingVGWs :: Lens' RouteTable [PropagatingVGW]
rtPropagatingVGWs = lens _rtPropagatingVGWs (\s a -> s {_rtPropagatingVGWs = a}) . _Default . _Coerce

-- | The ID of the VPC.
rtVPCId :: Lens' RouteTable (Maybe Text)
rtVPCId = lens _rtVPCId (\s a -> s {_rtVPCId = a})

-- | The associations between the route table and one or more subnets or a gateway.
rtAssociations :: Lens' RouteTable [RouteTableAssociation]
rtAssociations = lens _rtAssociations (\s a -> s {_rtAssociations = a}) . _Default . _Coerce

instance FromXML RouteTable where
  parseXML x =
    RouteTable'
      <$> (x .@? "ownerId")
      <*> (x .@? "routeTableId")
      <*> ( x .@? "routeSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "propagatingVgwSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "vpcId")
      <*> ( x .@? "associationSet" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable RouteTable

instance NFData RouteTable
