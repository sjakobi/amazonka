{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayAttachmentBGPConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayAttachmentBGPConfiguration where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.BGPStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The BGP configuration information.
--
--
--
-- /See:/ 'transitGatewayAttachmentBGPConfiguration' smart constructor.
data TransitGatewayAttachmentBGPConfiguration = TransitGatewayAttachmentBGPConfiguration'
  { _tgabcPeerAddress ::
      !( Maybe
           Text
       ),
    _tgabcPeerASN ::
      !( Maybe
           Integer
       ),
    _tgabcBGPStatus ::
      !( Maybe
           BGPStatus
       ),
    _tgabcTransitGatewayAddress ::
      !( Maybe
           Text
       ),
    _tgabcTransitGatewayASN ::
      !( Maybe
           Integer
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

-- | Creates a value of 'TransitGatewayAttachmentBGPConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgabcPeerAddress' - The interior BGP peer IP address for the appliance.
--
-- * 'tgabcPeerASN' - The peer Autonomous System Number (ASN).
--
-- * 'tgabcBGPStatus' - The BGP status.
--
-- * 'tgabcTransitGatewayAddress' - The interior BGP peer IP address for the transit gateway.
--
-- * 'tgabcTransitGatewayASN' - The transit gateway Autonomous System Number (ASN).
transitGatewayAttachmentBGPConfiguration ::
  TransitGatewayAttachmentBGPConfiguration
transitGatewayAttachmentBGPConfiguration =
  TransitGatewayAttachmentBGPConfiguration'
    { _tgabcPeerAddress =
        Nothing,
      _tgabcPeerASN = Nothing,
      _tgabcBGPStatus = Nothing,
      _tgabcTransitGatewayAddress =
        Nothing,
      _tgabcTransitGatewayASN = Nothing
    }

-- | The interior BGP peer IP address for the appliance.
tgabcPeerAddress :: Lens' TransitGatewayAttachmentBGPConfiguration (Maybe Text)
tgabcPeerAddress = lens _tgabcPeerAddress (\s a -> s {_tgabcPeerAddress = a})

-- | The peer Autonomous System Number (ASN).
tgabcPeerASN :: Lens' TransitGatewayAttachmentBGPConfiguration (Maybe Integer)
tgabcPeerASN = lens _tgabcPeerASN (\s a -> s {_tgabcPeerASN = a})

-- | The BGP status.
tgabcBGPStatus :: Lens' TransitGatewayAttachmentBGPConfiguration (Maybe BGPStatus)
tgabcBGPStatus = lens _tgabcBGPStatus (\s a -> s {_tgabcBGPStatus = a})

-- | The interior BGP peer IP address for the transit gateway.
tgabcTransitGatewayAddress :: Lens' TransitGatewayAttachmentBGPConfiguration (Maybe Text)
tgabcTransitGatewayAddress = lens _tgabcTransitGatewayAddress (\s a -> s {_tgabcTransitGatewayAddress = a})

-- | The transit gateway Autonomous System Number (ASN).
tgabcTransitGatewayASN :: Lens' TransitGatewayAttachmentBGPConfiguration (Maybe Integer)
tgabcTransitGatewayASN = lens _tgabcTransitGatewayASN (\s a -> s {_tgabcTransitGatewayASN = a})

instance
  FromXML
    TransitGatewayAttachmentBGPConfiguration
  where
  parseXML x =
    TransitGatewayAttachmentBGPConfiguration'
      <$> (x .@? "peerAddress")
      <*> (x .@? "peerAsn")
      <*> (x .@? "bgpStatus")
      <*> (x .@? "transitGatewayAddress")
      <*> (x .@? "transitGatewayAsn")

instance
  Hashable
    TransitGatewayAttachmentBGPConfiguration

instance
  NFData
    TransitGatewayAttachmentBGPConfiguration
