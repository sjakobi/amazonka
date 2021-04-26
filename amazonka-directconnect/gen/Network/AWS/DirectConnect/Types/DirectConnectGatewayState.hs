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
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayState
  ( DirectConnectGatewayState
      ( ..,
        DirectConnectGatewayStateAvailable,
        DirectConnectGatewayStateDeleted,
        DirectConnectGatewayStateDeleting,
        DirectConnectGatewayStatePending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DirectConnectGatewayState = DirectConnectGatewayState'
  { fromDirectConnectGatewayState ::
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

pattern DirectConnectGatewayStateAvailable :: DirectConnectGatewayState
pattern DirectConnectGatewayStateAvailable = DirectConnectGatewayState' "available"

pattern DirectConnectGatewayStateDeleted :: DirectConnectGatewayState
pattern DirectConnectGatewayStateDeleted = DirectConnectGatewayState' "deleted"

pattern DirectConnectGatewayStateDeleting :: DirectConnectGatewayState
pattern DirectConnectGatewayStateDeleting = DirectConnectGatewayState' "deleting"

pattern DirectConnectGatewayStatePending :: DirectConnectGatewayState
pattern DirectConnectGatewayStatePending = DirectConnectGatewayState' "pending"

{-# COMPLETE
  DirectConnectGatewayStateAvailable,
  DirectConnectGatewayStateDeleted,
  DirectConnectGatewayStateDeleting,
  DirectConnectGatewayStatePending,
  DirectConnectGatewayState'
  #-}

instance Prelude.FromText DirectConnectGatewayState where
  parser = DirectConnectGatewayState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DirectConnectGatewayState where
  toText (DirectConnectGatewayState' x) = x

instance Prelude.Hashable DirectConnectGatewayState

instance Prelude.NFData DirectConnectGatewayState

instance Prelude.ToByteString DirectConnectGatewayState

instance Prelude.ToQuery DirectConnectGatewayState

instance Prelude.ToHeader DirectConnectGatewayState

instance Prelude.FromJSON DirectConnectGatewayState where
  parseJSON = Prelude.parseJSONText "DirectConnectGatewayState"
