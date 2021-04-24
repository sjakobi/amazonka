{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayRoute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayRoute where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.TransitGatewayRouteAttachment
import Network.AWS.EC2.Types.TransitGatewayRouteState
import Network.AWS.EC2.Types.TransitGatewayRouteType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a route for a transit gateway route table.
--
--
--
-- /See:/ 'transitGatewayRoute' smart constructor.
data TransitGatewayRoute = TransitGatewayRoute'
  { _tgrPrefixListId ::
      !(Maybe Text),
    _tgrState ::
      !( Maybe
           TransitGatewayRouteState
       ),
    _tgrDestinationCidrBlock ::
      !(Maybe Text),
    _tgrType ::
      !( Maybe
           TransitGatewayRouteType
       ),
    _tgrTransitGatewayAttachments ::
      !( Maybe
           [TransitGatewayRouteAttachment]
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TransitGatewayRoute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgrPrefixListId' - The ID of the prefix list used for destination matches.
--
-- * 'tgrState' - The state of the route.
--
-- * 'tgrDestinationCidrBlock' - The CIDR block used for destination matches.
--
-- * 'tgrType' - The route type.
--
-- * 'tgrTransitGatewayAttachments' - The attachments.
transitGatewayRoute ::
  TransitGatewayRoute
transitGatewayRoute =
  TransitGatewayRoute'
    { _tgrPrefixListId = Nothing,
      _tgrState = Nothing,
      _tgrDestinationCidrBlock = Nothing,
      _tgrType = Nothing,
      _tgrTransitGatewayAttachments = Nothing
    }

-- | The ID of the prefix list used for destination matches.
tgrPrefixListId :: Lens' TransitGatewayRoute (Maybe Text)
tgrPrefixListId = lens _tgrPrefixListId (\s a -> s {_tgrPrefixListId = a})

-- | The state of the route.
tgrState :: Lens' TransitGatewayRoute (Maybe TransitGatewayRouteState)
tgrState = lens _tgrState (\s a -> s {_tgrState = a})

-- | The CIDR block used for destination matches.
tgrDestinationCidrBlock :: Lens' TransitGatewayRoute (Maybe Text)
tgrDestinationCidrBlock = lens _tgrDestinationCidrBlock (\s a -> s {_tgrDestinationCidrBlock = a})

-- | The route type.
tgrType :: Lens' TransitGatewayRoute (Maybe TransitGatewayRouteType)
tgrType = lens _tgrType (\s a -> s {_tgrType = a})

-- | The attachments.
tgrTransitGatewayAttachments :: Lens' TransitGatewayRoute [TransitGatewayRouteAttachment]
tgrTransitGatewayAttachments = lens _tgrTransitGatewayAttachments (\s a -> s {_tgrTransitGatewayAttachments = a}) . _Default . _Coerce

instance FromXML TransitGatewayRoute where
  parseXML x =
    TransitGatewayRoute'
      <$> (x .@? "prefixListId")
      <*> (x .@? "state")
      <*> (x .@? "destinationCidrBlock")
      <*> (x .@? "type")
      <*> ( x .@? "transitGatewayAttachments" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable TransitGatewayRoute

instance NFData TransitGatewayRoute
