{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayConnectPeerConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayConnectPeerConfiguration where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ProtocolValue
import Network.AWS.EC2.Types.TransitGatewayAttachmentBGPConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the Connect peer details.
--
--
--
-- /See:/ 'transitGatewayConnectPeerConfiguration' smart constructor.
data TransitGatewayConnectPeerConfiguration = TransitGatewayConnectPeerConfiguration'
  { _tgcpcPeerAddress ::
      !( Maybe
           Text
       ),
    _tgcpcTransitGatewayAddress ::
      !( Maybe
           Text
       ),
    _tgcpcBGPConfigurations ::
      !( Maybe
           [TransitGatewayAttachmentBGPConfiguration]
       ),
    _tgcpcProtocol ::
      !( Maybe
           ProtocolValue
       ),
    _tgcpcInsideCidrBlocks ::
      !( Maybe
           [Text]
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

-- | Creates a value of 'TransitGatewayConnectPeerConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgcpcPeerAddress' - The Connect peer IP address on the appliance side of the tunnel.
--
-- * 'tgcpcTransitGatewayAddress' - The Connect peer IP address on the transit gateway side of the tunnel.
--
-- * 'tgcpcBGPConfigurations' - The BGP configuration details.
--
-- * 'tgcpcProtocol' - The tunnel protocol.
--
-- * 'tgcpcInsideCidrBlocks' - The range of interior BGP peer IP addresses.
transitGatewayConnectPeerConfiguration ::
  TransitGatewayConnectPeerConfiguration
transitGatewayConnectPeerConfiguration =
  TransitGatewayConnectPeerConfiguration'
    { _tgcpcPeerAddress =
        Nothing,
      _tgcpcTransitGatewayAddress =
        Nothing,
      _tgcpcBGPConfigurations = Nothing,
      _tgcpcProtocol = Nothing,
      _tgcpcInsideCidrBlocks = Nothing
    }

-- | The Connect peer IP address on the appliance side of the tunnel.
tgcpcPeerAddress :: Lens' TransitGatewayConnectPeerConfiguration (Maybe Text)
tgcpcPeerAddress = lens _tgcpcPeerAddress (\s a -> s {_tgcpcPeerAddress = a})

-- | The Connect peer IP address on the transit gateway side of the tunnel.
tgcpcTransitGatewayAddress :: Lens' TransitGatewayConnectPeerConfiguration (Maybe Text)
tgcpcTransitGatewayAddress = lens _tgcpcTransitGatewayAddress (\s a -> s {_tgcpcTransitGatewayAddress = a})

-- | The BGP configuration details.
tgcpcBGPConfigurations :: Lens' TransitGatewayConnectPeerConfiguration [TransitGatewayAttachmentBGPConfiguration]
tgcpcBGPConfigurations = lens _tgcpcBGPConfigurations (\s a -> s {_tgcpcBGPConfigurations = a}) . _Default . _Coerce

-- | The tunnel protocol.
tgcpcProtocol :: Lens' TransitGatewayConnectPeerConfiguration (Maybe ProtocolValue)
tgcpcProtocol = lens _tgcpcProtocol (\s a -> s {_tgcpcProtocol = a})

-- | The range of interior BGP peer IP addresses.
tgcpcInsideCidrBlocks :: Lens' TransitGatewayConnectPeerConfiguration [Text]
tgcpcInsideCidrBlocks = lens _tgcpcInsideCidrBlocks (\s a -> s {_tgcpcInsideCidrBlocks = a}) . _Default . _Coerce

instance
  FromXML
    TransitGatewayConnectPeerConfiguration
  where
  parseXML x =
    TransitGatewayConnectPeerConfiguration'
      <$> (x .@? "peerAddress")
      <*> (x .@? "transitGatewayAddress")
      <*> ( x .@? "bgpConfigurations" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "protocol")
      <*> ( x .@? "insideCidrBlocks" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance
  Hashable
    TransitGatewayConnectPeerConfiguration

instance
  NFData
    TransitGatewayConnectPeerConfiguration
