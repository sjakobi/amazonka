{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayConnectPeer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayConnectPeer where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.TransitGatewayConnectPeerConfiguration
import Network.AWS.EC2.Types.TransitGatewayConnectPeerState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a transit gateway Connect peer.
--
--
--
-- /See:/ 'transitGatewayConnectPeer' smart constructor.
data TransitGatewayConnectPeer = TransitGatewayConnectPeer'
  { _tgcpConnectPeerConfiguration ::
      !( Maybe
           TransitGatewayConnectPeerConfiguration
       ),
    _tgcpCreationTime ::
      !(Maybe ISO8601),
    _tgcpTransitGatewayConnectPeerId ::
      !(Maybe Text),
    _tgcpState ::
      !( Maybe
           TransitGatewayConnectPeerState
       ),
    _tgcpTags ::
      !(Maybe [Tag]),
    _tgcpTransitGatewayAttachmentId ::
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

-- | Creates a value of 'TransitGatewayConnectPeer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgcpConnectPeerConfiguration' - The Connect peer details.
--
-- * 'tgcpCreationTime' - The creation time.
--
-- * 'tgcpTransitGatewayConnectPeerId' - The ID of the Connect peer.
--
-- * 'tgcpState' - The state of the Connect peer.
--
-- * 'tgcpTags' - The tags for the Connect peer.
--
-- * 'tgcpTransitGatewayAttachmentId' - The ID of the Connect attachment.
transitGatewayConnectPeer ::
  TransitGatewayConnectPeer
transitGatewayConnectPeer =
  TransitGatewayConnectPeer'
    { _tgcpConnectPeerConfiguration =
        Nothing,
      _tgcpCreationTime = Nothing,
      _tgcpTransitGatewayConnectPeerId = Nothing,
      _tgcpState = Nothing,
      _tgcpTags = Nothing,
      _tgcpTransitGatewayAttachmentId = Nothing
    }

-- | The Connect peer details.
tgcpConnectPeerConfiguration :: Lens' TransitGatewayConnectPeer (Maybe TransitGatewayConnectPeerConfiguration)
tgcpConnectPeerConfiguration = lens _tgcpConnectPeerConfiguration (\s a -> s {_tgcpConnectPeerConfiguration = a})

-- | The creation time.
tgcpCreationTime :: Lens' TransitGatewayConnectPeer (Maybe UTCTime)
tgcpCreationTime = lens _tgcpCreationTime (\s a -> s {_tgcpCreationTime = a}) . mapping _Time

-- | The ID of the Connect peer.
tgcpTransitGatewayConnectPeerId :: Lens' TransitGatewayConnectPeer (Maybe Text)
tgcpTransitGatewayConnectPeerId = lens _tgcpTransitGatewayConnectPeerId (\s a -> s {_tgcpTransitGatewayConnectPeerId = a})

-- | The state of the Connect peer.
tgcpState :: Lens' TransitGatewayConnectPeer (Maybe TransitGatewayConnectPeerState)
tgcpState = lens _tgcpState (\s a -> s {_tgcpState = a})

-- | The tags for the Connect peer.
tgcpTags :: Lens' TransitGatewayConnectPeer [Tag]
tgcpTags = lens _tgcpTags (\s a -> s {_tgcpTags = a}) . _Default . _Coerce

-- | The ID of the Connect attachment.
tgcpTransitGatewayAttachmentId :: Lens' TransitGatewayConnectPeer (Maybe Text)
tgcpTransitGatewayAttachmentId = lens _tgcpTransitGatewayAttachmentId (\s a -> s {_tgcpTransitGatewayAttachmentId = a})

instance FromXML TransitGatewayConnectPeer where
  parseXML x =
    TransitGatewayConnectPeer'
      <$> (x .@? "connectPeerConfiguration")
      <*> (x .@? "creationTime")
      <*> (x .@? "transitGatewayConnectPeerId")
      <*> (x .@? "state")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "transitGatewayAttachmentId")

instance Hashable TransitGatewayConnectPeer

instance NFData TransitGatewayConnectPeer
