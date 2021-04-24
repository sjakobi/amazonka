{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPNGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPNGateway where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.GatewayType
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.VPCAttachment
import Network.AWS.EC2.Types.VPNState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a virtual private gateway.
--
--
--
-- /See:/ 'vpnGateway' smart constructor.
data VPNGateway = VPNGateway'
  { _vgVPCAttachments ::
      !(Maybe [VPCAttachment]),
    _vgState :: !(Maybe VPNState),
    _vgAvailabilityZone :: !(Maybe Text),
    _vgAmazonSideASN :: !(Maybe Integer),
    _vgTags :: !(Maybe [Tag]),
    _vgType :: !(Maybe GatewayType),
    _vgVPNGatewayId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPNGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgVPCAttachments' - Any VPCs attached to the virtual private gateway.
--
-- * 'vgState' - The current state of the virtual private gateway.
--
-- * 'vgAvailabilityZone' - The Availability Zone where the virtual private gateway was created, if applicable. This field may be empty or not returned.
--
-- * 'vgAmazonSideASN' - The private Autonomous System Number (ASN) for the Amazon side of a BGP session.
--
-- * 'vgTags' - Any tags assigned to the virtual private gateway.
--
-- * 'vgType' - The type of VPN connection the virtual private gateway supports.
--
-- * 'vgVPNGatewayId' - The ID of the virtual private gateway.
vpnGateway ::
  VPNGateway
vpnGateway =
  VPNGateway'
    { _vgVPCAttachments = Nothing,
      _vgState = Nothing,
      _vgAvailabilityZone = Nothing,
      _vgAmazonSideASN = Nothing,
      _vgTags = Nothing,
      _vgType = Nothing,
      _vgVPNGatewayId = Nothing
    }

-- | Any VPCs attached to the virtual private gateway.
vgVPCAttachments :: Lens' VPNGateway [VPCAttachment]
vgVPCAttachments = lens _vgVPCAttachments (\s a -> s {_vgVPCAttachments = a}) . _Default . _Coerce

-- | The current state of the virtual private gateway.
vgState :: Lens' VPNGateway (Maybe VPNState)
vgState = lens _vgState (\s a -> s {_vgState = a})

-- | The Availability Zone where the virtual private gateway was created, if applicable. This field may be empty or not returned.
vgAvailabilityZone :: Lens' VPNGateway (Maybe Text)
vgAvailabilityZone = lens _vgAvailabilityZone (\s a -> s {_vgAvailabilityZone = a})

-- | The private Autonomous System Number (ASN) for the Amazon side of a BGP session.
vgAmazonSideASN :: Lens' VPNGateway (Maybe Integer)
vgAmazonSideASN = lens _vgAmazonSideASN (\s a -> s {_vgAmazonSideASN = a})

-- | Any tags assigned to the virtual private gateway.
vgTags :: Lens' VPNGateway [Tag]
vgTags = lens _vgTags (\s a -> s {_vgTags = a}) . _Default . _Coerce

-- | The type of VPN connection the virtual private gateway supports.
vgType :: Lens' VPNGateway (Maybe GatewayType)
vgType = lens _vgType (\s a -> s {_vgType = a})

-- | The ID of the virtual private gateway.
vgVPNGatewayId :: Lens' VPNGateway (Maybe Text)
vgVPNGatewayId = lens _vgVPNGatewayId (\s a -> s {_vgVPNGatewayId = a})

instance FromXML VPNGateway where
  parseXML x =
    VPNGateway'
      <$> ( x .@? "attachments" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "state")
      <*> (x .@? "availabilityZone")
      <*> (x .@? "amazonSideAsn")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "type")
      <*> (x .@? "vpnGatewayId")

instance Hashable VPNGateway

instance NFData VPNGateway
