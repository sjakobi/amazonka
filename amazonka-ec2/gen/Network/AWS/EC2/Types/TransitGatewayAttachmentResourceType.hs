{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        TransitGatewayAttachmentResourceTypeConnect,
        TransitGatewayAttachmentResourceTypeDirectConnectGateway,
        TransitGatewayAttachmentResourceTypePeering,
        TransitGatewayAttachmentResourceTypeTgwPeering,
        TransitGatewayAttachmentResourceTypeVpc,
        TransitGatewayAttachmentResourceTypeVpn
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayAttachmentResourceType = TransitGatewayAttachmentResourceType'
  { fromTransitGatewayAttachmentResourceType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern TransitGatewayAttachmentResourceTypeConnect :: TransitGatewayAttachmentResourceType
pattern TransitGatewayAttachmentResourceTypeConnect = TransitGatewayAttachmentResourceType' "connect"

pattern TransitGatewayAttachmentResourceTypeDirectConnectGateway :: TransitGatewayAttachmentResourceType
pattern TransitGatewayAttachmentResourceTypeDirectConnectGateway = TransitGatewayAttachmentResourceType' "direct-connect-gateway"

pattern TransitGatewayAttachmentResourceTypePeering :: TransitGatewayAttachmentResourceType
pattern TransitGatewayAttachmentResourceTypePeering = TransitGatewayAttachmentResourceType' "peering"

pattern TransitGatewayAttachmentResourceTypeTgwPeering :: TransitGatewayAttachmentResourceType
pattern TransitGatewayAttachmentResourceTypeTgwPeering = TransitGatewayAttachmentResourceType' "tgw-peering"

pattern TransitGatewayAttachmentResourceTypeVpc :: TransitGatewayAttachmentResourceType
pattern TransitGatewayAttachmentResourceTypeVpc = TransitGatewayAttachmentResourceType' "vpc"

pattern TransitGatewayAttachmentResourceTypeVpn :: TransitGatewayAttachmentResourceType
pattern TransitGatewayAttachmentResourceTypeVpn = TransitGatewayAttachmentResourceType' "vpn"

{-# COMPLETE
  TransitGatewayAttachmentResourceTypeConnect,
  TransitGatewayAttachmentResourceTypeDirectConnectGateway,
  TransitGatewayAttachmentResourceTypePeering,
  TransitGatewayAttachmentResourceTypeTgwPeering,
  TransitGatewayAttachmentResourceTypeVpc,
  TransitGatewayAttachmentResourceTypeVpn,
  TransitGatewayAttachmentResourceType'
  #-}

instance Prelude.FromText TransitGatewayAttachmentResourceType where
  parser = TransitGatewayAttachmentResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayAttachmentResourceType where
  toText (TransitGatewayAttachmentResourceType' x) = x

instance Prelude.Hashable TransitGatewayAttachmentResourceType

instance Prelude.NFData TransitGatewayAttachmentResourceType

instance Prelude.ToByteString TransitGatewayAttachmentResourceType

instance Prelude.ToQuery TransitGatewayAttachmentResourceType

instance Prelude.ToHeader TransitGatewayAttachmentResourceType

instance Prelude.FromXML TransitGatewayAttachmentResourceType where
  parseXML = Prelude.parseXMLText "TransitGatewayAttachmentResourceType"
