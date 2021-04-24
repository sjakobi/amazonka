{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LocalGatewayRoute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LocalGatewayRoute where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.LocalGatewayRouteState
import Network.AWS.EC2.Types.LocalGatewayRouteType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a route for a local gateway route table.
--
--
--
-- /See:/ 'localGatewayRoute' smart constructor.
data LocalGatewayRoute = LocalGatewayRoute'
  { _lgrOwnerId ::
      !(Maybe Text),
    _lgrLocalGatewayVirtualInterfaceGroupId ::
      !(Maybe Text),
    _lgrLocalGatewayRouteTableARN ::
      !(Maybe Text),
    _lgrState ::
      !(Maybe LocalGatewayRouteState),
    _lgrLocalGatewayRouteTableId ::
      !(Maybe Text),
    _lgrDestinationCidrBlock ::
      !(Maybe Text),
    _lgrType ::
      !(Maybe LocalGatewayRouteType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LocalGatewayRoute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrOwnerId' - The AWS account ID that owns the local gateway route.
--
-- * 'lgrLocalGatewayVirtualInterfaceGroupId' - The ID of the virtual interface group.
--
-- * 'lgrLocalGatewayRouteTableARN' - The Amazon Resource Name (ARN) of the local gateway route table.
--
-- * 'lgrState' - The state of the route.
--
-- * 'lgrLocalGatewayRouteTableId' - The ID of the local gateway route table.
--
-- * 'lgrDestinationCidrBlock' - The CIDR block used for destination matches.
--
-- * 'lgrType' - The route type.
localGatewayRoute ::
  LocalGatewayRoute
localGatewayRoute =
  LocalGatewayRoute'
    { _lgrOwnerId = Nothing,
      _lgrLocalGatewayVirtualInterfaceGroupId = Nothing,
      _lgrLocalGatewayRouteTableARN = Nothing,
      _lgrState = Nothing,
      _lgrLocalGatewayRouteTableId = Nothing,
      _lgrDestinationCidrBlock = Nothing,
      _lgrType = Nothing
    }

-- | The AWS account ID that owns the local gateway route.
lgrOwnerId :: Lens' LocalGatewayRoute (Maybe Text)
lgrOwnerId = lens _lgrOwnerId (\s a -> s {_lgrOwnerId = a})

-- | The ID of the virtual interface group.
lgrLocalGatewayVirtualInterfaceGroupId :: Lens' LocalGatewayRoute (Maybe Text)
lgrLocalGatewayVirtualInterfaceGroupId = lens _lgrLocalGatewayVirtualInterfaceGroupId (\s a -> s {_lgrLocalGatewayVirtualInterfaceGroupId = a})

-- | The Amazon Resource Name (ARN) of the local gateway route table.
lgrLocalGatewayRouteTableARN :: Lens' LocalGatewayRoute (Maybe Text)
lgrLocalGatewayRouteTableARN = lens _lgrLocalGatewayRouteTableARN (\s a -> s {_lgrLocalGatewayRouteTableARN = a})

-- | The state of the route.
lgrState :: Lens' LocalGatewayRoute (Maybe LocalGatewayRouteState)
lgrState = lens _lgrState (\s a -> s {_lgrState = a})

-- | The ID of the local gateway route table.
lgrLocalGatewayRouteTableId :: Lens' LocalGatewayRoute (Maybe Text)
lgrLocalGatewayRouteTableId = lens _lgrLocalGatewayRouteTableId (\s a -> s {_lgrLocalGatewayRouteTableId = a})

-- | The CIDR block used for destination matches.
lgrDestinationCidrBlock :: Lens' LocalGatewayRoute (Maybe Text)
lgrDestinationCidrBlock = lens _lgrDestinationCidrBlock (\s a -> s {_lgrDestinationCidrBlock = a})

-- | The route type.
lgrType :: Lens' LocalGatewayRoute (Maybe LocalGatewayRouteType)
lgrType = lens _lgrType (\s a -> s {_lgrType = a})

instance FromXML LocalGatewayRoute where
  parseXML x =
    LocalGatewayRoute'
      <$> (x .@? "ownerId")
      <*> (x .@? "localGatewayVirtualInterfaceGroupId")
      <*> (x .@? "localGatewayRouteTableArn")
      <*> (x .@? "state")
      <*> (x .@? "localGatewayRouteTableId")
      <*> (x .@? "destinationCidrBlock")
      <*> (x .@? "type")

instance Hashable LocalGatewayRoute

instance NFData LocalGatewayRoute
