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
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachmentType
  ( DirectConnectGatewayAttachmentType
      ( ..,
        DirectConnectGatewayAttachmentTypePrivateVirtualInterface,
        DirectConnectGatewayAttachmentTypeTransitVirtualInterface
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DirectConnectGatewayAttachmentType = DirectConnectGatewayAttachmentType'
  { fromDirectConnectGatewayAttachmentType ::
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

pattern DirectConnectGatewayAttachmentTypePrivateVirtualInterface :: DirectConnectGatewayAttachmentType
pattern DirectConnectGatewayAttachmentTypePrivateVirtualInterface = DirectConnectGatewayAttachmentType' "PrivateVirtualInterface"

pattern DirectConnectGatewayAttachmentTypeTransitVirtualInterface :: DirectConnectGatewayAttachmentType
pattern DirectConnectGatewayAttachmentTypeTransitVirtualInterface = DirectConnectGatewayAttachmentType' "TransitVirtualInterface"

{-# COMPLETE
  DirectConnectGatewayAttachmentTypePrivateVirtualInterface,
  DirectConnectGatewayAttachmentTypeTransitVirtualInterface,
  DirectConnectGatewayAttachmentType'
  #-}

instance Prelude.FromText DirectConnectGatewayAttachmentType where
  parser = DirectConnectGatewayAttachmentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DirectConnectGatewayAttachmentType where
  toText (DirectConnectGatewayAttachmentType' x) = x

instance Prelude.Hashable DirectConnectGatewayAttachmentType

instance Prelude.NFData DirectConnectGatewayAttachmentType

instance Prelude.ToByteString DirectConnectGatewayAttachmentType

instance Prelude.ToQuery DirectConnectGatewayAttachmentType

instance Prelude.ToHeader DirectConnectGatewayAttachmentType

instance Prelude.FromJSON DirectConnectGatewayAttachmentType where
  parseJSON = Prelude.parseJSONText "DirectConnectGatewayAttachmentType"
