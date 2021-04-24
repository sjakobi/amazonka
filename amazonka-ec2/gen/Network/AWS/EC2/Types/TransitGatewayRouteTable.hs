{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayRouteTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayRouteTable where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.TransitGatewayRouteTableState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a transit gateway route table.
--
--
--
-- /See:/ 'transitGatewayRouteTable' smart constructor.
data TransitGatewayRouteTable = TransitGatewayRouteTable'
  { _tgrtCreationTime ::
      !(Maybe ISO8601),
    _tgrtDefaultAssociationRouteTable ::
      !(Maybe Bool),
    _tgrtDefaultPropagationRouteTable ::
      !(Maybe Bool),
    _tgrtState ::
      !( Maybe
           TransitGatewayRouteTableState
       ),
    _tgrtTags ::
      !(Maybe [Tag]),
    _tgrtTransitGatewayRouteTableId ::
      !(Maybe Text),
    _tgrtTransitGatewayId ::
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

-- | Creates a value of 'TransitGatewayRouteTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgrtCreationTime' - The creation time.
--
-- * 'tgrtDefaultAssociationRouteTable' - Indicates whether this is the default association route table for the transit gateway.
--
-- * 'tgrtDefaultPropagationRouteTable' - Indicates whether this is the default propagation route table for the transit gateway.
--
-- * 'tgrtState' - The state of the transit gateway route table.
--
-- * 'tgrtTags' - Any tags assigned to the route table.
--
-- * 'tgrtTransitGatewayRouteTableId' - The ID of the transit gateway route table.
--
-- * 'tgrtTransitGatewayId' - The ID of the transit gateway.
transitGatewayRouteTable ::
  TransitGatewayRouteTable
transitGatewayRouteTable =
  TransitGatewayRouteTable'
    { _tgrtCreationTime =
        Nothing,
      _tgrtDefaultAssociationRouteTable = Nothing,
      _tgrtDefaultPropagationRouteTable = Nothing,
      _tgrtState = Nothing,
      _tgrtTags = Nothing,
      _tgrtTransitGatewayRouteTableId = Nothing,
      _tgrtTransitGatewayId = Nothing
    }

-- | The creation time.
tgrtCreationTime :: Lens' TransitGatewayRouteTable (Maybe UTCTime)
tgrtCreationTime = lens _tgrtCreationTime (\s a -> s {_tgrtCreationTime = a}) . mapping _Time

-- | Indicates whether this is the default association route table for the transit gateway.
tgrtDefaultAssociationRouteTable :: Lens' TransitGatewayRouteTable (Maybe Bool)
tgrtDefaultAssociationRouteTable = lens _tgrtDefaultAssociationRouteTable (\s a -> s {_tgrtDefaultAssociationRouteTable = a})

-- | Indicates whether this is the default propagation route table for the transit gateway.
tgrtDefaultPropagationRouteTable :: Lens' TransitGatewayRouteTable (Maybe Bool)
tgrtDefaultPropagationRouteTable = lens _tgrtDefaultPropagationRouteTable (\s a -> s {_tgrtDefaultPropagationRouteTable = a})

-- | The state of the transit gateway route table.
tgrtState :: Lens' TransitGatewayRouteTable (Maybe TransitGatewayRouteTableState)
tgrtState = lens _tgrtState (\s a -> s {_tgrtState = a})

-- | Any tags assigned to the route table.
tgrtTags :: Lens' TransitGatewayRouteTable [Tag]
tgrtTags = lens _tgrtTags (\s a -> s {_tgrtTags = a}) . _Default . _Coerce

-- | The ID of the transit gateway route table.
tgrtTransitGatewayRouteTableId :: Lens' TransitGatewayRouteTable (Maybe Text)
tgrtTransitGatewayRouteTableId = lens _tgrtTransitGatewayRouteTableId (\s a -> s {_tgrtTransitGatewayRouteTableId = a})

-- | The ID of the transit gateway.
tgrtTransitGatewayId :: Lens' TransitGatewayRouteTable (Maybe Text)
tgrtTransitGatewayId = lens _tgrtTransitGatewayId (\s a -> s {_tgrtTransitGatewayId = a})

instance FromXML TransitGatewayRouteTable where
  parseXML x =
    TransitGatewayRouteTable'
      <$> (x .@? "creationTime")
      <*> (x .@? "defaultAssociationRouteTable")
      <*> (x .@? "defaultPropagationRouteTable")
      <*> (x .@? "state")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "transitGatewayRouteTableId")
      <*> (x .@? "transitGatewayId")

instance Hashable TransitGatewayRouteTable

instance NFData TransitGatewayRouteTable
