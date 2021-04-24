{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType
  ( TransitGatewayAttachmentResourceType
      ( ..,
        TGARTConnect,
        TGARTDirectConnectGateway,
        TGARTPeering,
        TGARTTgwPeering,
        TGARTVPC,
        TGARTVPN
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TransitGatewayAttachmentResourceType
  = TransitGatewayAttachmentResourceType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TGARTConnect :: TransitGatewayAttachmentResourceType
pattern TGARTConnect = TransitGatewayAttachmentResourceType' "connect"

pattern TGARTDirectConnectGateway :: TransitGatewayAttachmentResourceType
pattern TGARTDirectConnectGateway = TransitGatewayAttachmentResourceType' "direct-connect-gateway"

pattern TGARTPeering :: TransitGatewayAttachmentResourceType
pattern TGARTPeering = TransitGatewayAttachmentResourceType' "peering"

pattern TGARTTgwPeering :: TransitGatewayAttachmentResourceType
pattern TGARTTgwPeering = TransitGatewayAttachmentResourceType' "tgw-peering"

pattern TGARTVPC :: TransitGatewayAttachmentResourceType
pattern TGARTVPC = TransitGatewayAttachmentResourceType' "vpc"

pattern TGARTVPN :: TransitGatewayAttachmentResourceType
pattern TGARTVPN = TransitGatewayAttachmentResourceType' "vpn"

{-# COMPLETE
  TGARTConnect,
  TGARTDirectConnectGateway,
  TGARTPeering,
  TGARTTgwPeering,
  TGARTVPC,
  TGARTVPN,
  TransitGatewayAttachmentResourceType'
  #-}

instance FromText TransitGatewayAttachmentResourceType where
  parser = (TransitGatewayAttachmentResourceType' . mk) <$> takeText

instance ToText TransitGatewayAttachmentResourceType where
  toText (TransitGatewayAttachmentResourceType' ci) = original ci

instance Hashable TransitGatewayAttachmentResourceType

instance NFData TransitGatewayAttachmentResourceType

instance ToByteString TransitGatewayAttachmentResourceType

instance ToQuery TransitGatewayAttachmentResourceType

instance ToHeader TransitGatewayAttachmentResourceType

instance FromXML TransitGatewayAttachmentResourceType where
  parseXML = parseXMLText "TransitGatewayAttachmentResourceType"
