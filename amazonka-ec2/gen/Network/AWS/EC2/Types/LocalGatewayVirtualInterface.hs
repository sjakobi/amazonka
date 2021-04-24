{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LocalGatewayVirtualInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LocalGatewayVirtualInterface where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a local gateway virtual interface.
--
--
--
-- /See:/ 'localGatewayVirtualInterface' smart constructor.
data LocalGatewayVirtualInterface = LocalGatewayVirtualInterface'
  { _lgviPeerAddress ::
      !(Maybe Text),
    _lgviOwnerId ::
      !(Maybe Text),
    _lgviLocalGatewayVirtualInterfaceId ::
      !(Maybe Text),
    _lgviPeerBGPASN ::
      !(Maybe Int),
    _lgviLocalAddress ::
      !(Maybe Text),
    _lgviLocalGatewayId ::
      !(Maybe Text),
    _lgviLocalBGPASN ::
      !(Maybe Int),
    _lgviTags ::
      !( Maybe
           [Tag]
       ),
    _lgviVLAN ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LocalGatewayVirtualInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgviPeerAddress' - The peer address.
--
-- * 'lgviOwnerId' - The AWS account ID that owns the local gateway virtual interface.
--
-- * 'lgviLocalGatewayVirtualInterfaceId' - The ID of the virtual interface.
--
-- * 'lgviPeerBGPASN' - The peer BGP ASN.
--
-- * 'lgviLocalAddress' - The local address.
--
-- * 'lgviLocalGatewayId' - The ID of the local gateway.
--
-- * 'lgviLocalBGPASN' - The Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the local gateway.
--
-- * 'lgviTags' - The tags assigned to the virtual interface.
--
-- * 'lgviVLAN' - The ID of the VLAN.
localGatewayVirtualInterface ::
  LocalGatewayVirtualInterface
localGatewayVirtualInterface =
  LocalGatewayVirtualInterface'
    { _lgviPeerAddress =
        Nothing,
      _lgviOwnerId = Nothing,
      _lgviLocalGatewayVirtualInterfaceId = Nothing,
      _lgviPeerBGPASN = Nothing,
      _lgviLocalAddress = Nothing,
      _lgviLocalGatewayId = Nothing,
      _lgviLocalBGPASN = Nothing,
      _lgviTags = Nothing,
      _lgviVLAN = Nothing
    }

-- | The peer address.
lgviPeerAddress :: Lens' LocalGatewayVirtualInterface (Maybe Text)
lgviPeerAddress = lens _lgviPeerAddress (\s a -> s {_lgviPeerAddress = a})

-- | The AWS account ID that owns the local gateway virtual interface.
lgviOwnerId :: Lens' LocalGatewayVirtualInterface (Maybe Text)
lgviOwnerId = lens _lgviOwnerId (\s a -> s {_lgviOwnerId = a})

-- | The ID of the virtual interface.
lgviLocalGatewayVirtualInterfaceId :: Lens' LocalGatewayVirtualInterface (Maybe Text)
lgviLocalGatewayVirtualInterfaceId = lens _lgviLocalGatewayVirtualInterfaceId (\s a -> s {_lgviLocalGatewayVirtualInterfaceId = a})

-- | The peer BGP ASN.
lgviPeerBGPASN :: Lens' LocalGatewayVirtualInterface (Maybe Int)
lgviPeerBGPASN = lens _lgviPeerBGPASN (\s a -> s {_lgviPeerBGPASN = a})

-- | The local address.
lgviLocalAddress :: Lens' LocalGatewayVirtualInterface (Maybe Text)
lgviLocalAddress = lens _lgviLocalAddress (\s a -> s {_lgviLocalAddress = a})

-- | The ID of the local gateway.
lgviLocalGatewayId :: Lens' LocalGatewayVirtualInterface (Maybe Text)
lgviLocalGatewayId = lens _lgviLocalGatewayId (\s a -> s {_lgviLocalGatewayId = a})

-- | The Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the local gateway.
lgviLocalBGPASN :: Lens' LocalGatewayVirtualInterface (Maybe Int)
lgviLocalBGPASN = lens _lgviLocalBGPASN (\s a -> s {_lgviLocalBGPASN = a})

-- | The tags assigned to the virtual interface.
lgviTags :: Lens' LocalGatewayVirtualInterface [Tag]
lgviTags = lens _lgviTags (\s a -> s {_lgviTags = a}) . _Default . _Coerce

-- | The ID of the VLAN.
lgviVLAN :: Lens' LocalGatewayVirtualInterface (Maybe Int)
lgviVLAN = lens _lgviVLAN (\s a -> s {_lgviVLAN = a})

instance FromXML LocalGatewayVirtualInterface where
  parseXML x =
    LocalGatewayVirtualInterface'
      <$> (x .@? "peerAddress")
      <*> (x .@? "ownerId")
      <*> (x .@? "localGatewayVirtualInterfaceId")
      <*> (x .@? "peerBgpAsn")
      <*> (x .@? "localAddress")
      <*> (x .@? "localGatewayId")
      <*> (x .@? "localBgpAsn")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "vlan")

instance Hashable LocalGatewayVirtualInterface

instance NFData LocalGatewayVirtualInterface
