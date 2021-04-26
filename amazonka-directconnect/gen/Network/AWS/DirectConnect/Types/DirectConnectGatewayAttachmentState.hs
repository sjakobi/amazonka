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
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachmentState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachmentState
  ( DirectConnectGatewayAttachmentState
      ( ..,
        DirectConnectGatewayAttachmentStateAttached,
        DirectConnectGatewayAttachmentStateAttaching,
        DirectConnectGatewayAttachmentStateDetached,
        DirectConnectGatewayAttachmentStateDetaching
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DirectConnectGatewayAttachmentState = DirectConnectGatewayAttachmentState'
  { fromDirectConnectGatewayAttachmentState ::
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

pattern DirectConnectGatewayAttachmentStateAttached :: DirectConnectGatewayAttachmentState
pattern DirectConnectGatewayAttachmentStateAttached = DirectConnectGatewayAttachmentState' "attached"

pattern DirectConnectGatewayAttachmentStateAttaching :: DirectConnectGatewayAttachmentState
pattern DirectConnectGatewayAttachmentStateAttaching = DirectConnectGatewayAttachmentState' "attaching"

pattern DirectConnectGatewayAttachmentStateDetached :: DirectConnectGatewayAttachmentState
pattern DirectConnectGatewayAttachmentStateDetached = DirectConnectGatewayAttachmentState' "detached"

pattern DirectConnectGatewayAttachmentStateDetaching :: DirectConnectGatewayAttachmentState
pattern DirectConnectGatewayAttachmentStateDetaching = DirectConnectGatewayAttachmentState' "detaching"

{-# COMPLETE
  DirectConnectGatewayAttachmentStateAttached,
  DirectConnectGatewayAttachmentStateAttaching,
  DirectConnectGatewayAttachmentStateDetached,
  DirectConnectGatewayAttachmentStateDetaching,
  DirectConnectGatewayAttachmentState'
  #-}

instance Prelude.FromText DirectConnectGatewayAttachmentState where
  parser = DirectConnectGatewayAttachmentState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DirectConnectGatewayAttachmentState where
  toText (DirectConnectGatewayAttachmentState' x) = x

instance Prelude.Hashable DirectConnectGatewayAttachmentState

instance Prelude.NFData DirectConnectGatewayAttachmentState

instance Prelude.ToByteString DirectConnectGatewayAttachmentState

instance Prelude.ToQuery DirectConnectGatewayAttachmentState

instance Prelude.ToHeader DirectConnectGatewayAttachmentState

instance Prelude.FromJSON DirectConnectGatewayAttachmentState where
  parseJSON = Prelude.parseJSONText "DirectConnectGatewayAttachmentState"
