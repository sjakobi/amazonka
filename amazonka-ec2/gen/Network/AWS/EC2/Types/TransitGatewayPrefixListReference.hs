{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayPrefixListReference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayPrefixListReference where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.TransitGatewayPrefixListAttachment
import Network.AWS.EC2.Types.TransitGatewayPrefixListReferenceState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a prefix list reference.
--
--
--
-- /See:/ 'transitGatewayPrefixListReference' smart constructor.
data TransitGatewayPrefixListReference = TransitGatewayPrefixListReference'
  { _tgplrTransitGatewayAttachment ::
      !( Maybe
           TransitGatewayPrefixListAttachment
       ),
    _tgplrPrefixListOwnerId ::
      !( Maybe
           Text
       ),
    _tgplrPrefixListId ::
      !( Maybe
           Text
       ),
    _tgplrState ::
      !( Maybe
           TransitGatewayPrefixListReferenceState
       ),
    _tgplrBlackhole ::
      !( Maybe
           Bool
       ),
    _tgplrTransitGatewayRouteTableId ::
      !( Maybe
           Text
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

-- | Creates a value of 'TransitGatewayPrefixListReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgplrTransitGatewayAttachment' - Information about the transit gateway attachment.
--
-- * 'tgplrPrefixListOwnerId' - The ID of the prefix list owner.
--
-- * 'tgplrPrefixListId' - The ID of the prefix list.
--
-- * 'tgplrState' - The state of the prefix list reference.
--
-- * 'tgplrBlackhole' - Indicates whether traffic that matches this route is dropped.
--
-- * 'tgplrTransitGatewayRouteTableId' - The ID of the transit gateway route table.
transitGatewayPrefixListReference ::
  TransitGatewayPrefixListReference
transitGatewayPrefixListReference =
  TransitGatewayPrefixListReference'
    { _tgplrTransitGatewayAttachment =
        Nothing,
      _tgplrPrefixListOwnerId = Nothing,
      _tgplrPrefixListId = Nothing,
      _tgplrState = Nothing,
      _tgplrBlackhole = Nothing,
      _tgplrTransitGatewayRouteTableId =
        Nothing
    }

-- | Information about the transit gateway attachment.
tgplrTransitGatewayAttachment :: Lens' TransitGatewayPrefixListReference (Maybe TransitGatewayPrefixListAttachment)
tgplrTransitGatewayAttachment = lens _tgplrTransitGatewayAttachment (\s a -> s {_tgplrTransitGatewayAttachment = a})

-- | The ID of the prefix list owner.
tgplrPrefixListOwnerId :: Lens' TransitGatewayPrefixListReference (Maybe Text)
tgplrPrefixListOwnerId = lens _tgplrPrefixListOwnerId (\s a -> s {_tgplrPrefixListOwnerId = a})

-- | The ID of the prefix list.
tgplrPrefixListId :: Lens' TransitGatewayPrefixListReference (Maybe Text)
tgplrPrefixListId = lens _tgplrPrefixListId (\s a -> s {_tgplrPrefixListId = a})

-- | The state of the prefix list reference.
tgplrState :: Lens' TransitGatewayPrefixListReference (Maybe TransitGatewayPrefixListReferenceState)
tgplrState = lens _tgplrState (\s a -> s {_tgplrState = a})

-- | Indicates whether traffic that matches this route is dropped.
tgplrBlackhole :: Lens' TransitGatewayPrefixListReference (Maybe Bool)
tgplrBlackhole = lens _tgplrBlackhole (\s a -> s {_tgplrBlackhole = a})

-- | The ID of the transit gateway route table.
tgplrTransitGatewayRouteTableId :: Lens' TransitGatewayPrefixListReference (Maybe Text)
tgplrTransitGatewayRouteTableId = lens _tgplrTransitGatewayRouteTableId (\s a -> s {_tgplrTransitGatewayRouteTableId = a})

instance FromXML TransitGatewayPrefixListReference where
  parseXML x =
    TransitGatewayPrefixListReference'
      <$> (x .@? "transitGatewayAttachment")
      <*> (x .@? "prefixListOwnerId")
      <*> (x .@? "prefixListId")
      <*> (x .@? "state")
      <*> (x .@? "blackhole")
      <*> (x .@? "transitGatewayRouteTableId")

instance Hashable TransitGatewayPrefixListReference

instance NFData TransitGatewayPrefixListReference
