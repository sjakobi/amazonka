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
-- Module      : Network.AWS.DirectConnect.Types.VirtualInterfaceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.VirtualInterfaceState
  ( VirtualInterfaceState
      ( ..,
        VirtualInterfaceStateAvailable,
        VirtualInterfaceStateConfirming,
        VirtualInterfaceStateDeleted,
        VirtualInterfaceStateDeleting,
        VirtualInterfaceStateDown,
        VirtualInterfaceStatePending,
        VirtualInterfaceStateRejected,
        VirtualInterfaceStateUnknown,
        VirtualInterfaceStateVerifying
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VirtualInterfaceState = VirtualInterfaceState'
  { fromVirtualInterfaceState ::
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

pattern VirtualInterfaceStateAvailable :: VirtualInterfaceState
pattern VirtualInterfaceStateAvailable = VirtualInterfaceState' "available"

pattern VirtualInterfaceStateConfirming :: VirtualInterfaceState
pattern VirtualInterfaceStateConfirming = VirtualInterfaceState' "confirming"

pattern VirtualInterfaceStateDeleted :: VirtualInterfaceState
pattern VirtualInterfaceStateDeleted = VirtualInterfaceState' "deleted"

pattern VirtualInterfaceStateDeleting :: VirtualInterfaceState
pattern VirtualInterfaceStateDeleting = VirtualInterfaceState' "deleting"

pattern VirtualInterfaceStateDown :: VirtualInterfaceState
pattern VirtualInterfaceStateDown = VirtualInterfaceState' "down"

pattern VirtualInterfaceStatePending :: VirtualInterfaceState
pattern VirtualInterfaceStatePending = VirtualInterfaceState' "pending"

pattern VirtualInterfaceStateRejected :: VirtualInterfaceState
pattern VirtualInterfaceStateRejected = VirtualInterfaceState' "rejected"

pattern VirtualInterfaceStateUnknown :: VirtualInterfaceState
pattern VirtualInterfaceStateUnknown = VirtualInterfaceState' "unknown"

pattern VirtualInterfaceStateVerifying :: VirtualInterfaceState
pattern VirtualInterfaceStateVerifying = VirtualInterfaceState' "verifying"

{-# COMPLETE
  VirtualInterfaceStateAvailable,
  VirtualInterfaceStateConfirming,
  VirtualInterfaceStateDeleted,
  VirtualInterfaceStateDeleting,
  VirtualInterfaceStateDown,
  VirtualInterfaceStatePending,
  VirtualInterfaceStateRejected,
  VirtualInterfaceStateUnknown,
  VirtualInterfaceStateVerifying,
  VirtualInterfaceState'
  #-}

instance Prelude.FromText VirtualInterfaceState where
  parser = VirtualInterfaceState' Prelude.<$> Prelude.takeText

instance Prelude.ToText VirtualInterfaceState where
  toText (VirtualInterfaceState' x) = x

instance Prelude.Hashable VirtualInterfaceState

instance Prelude.NFData VirtualInterfaceState

instance Prelude.ToByteString VirtualInterfaceState

instance Prelude.ToQuery VirtualInterfaceState

instance Prelude.ToHeader VirtualInterfaceState

instance Prelude.FromJSON VirtualInterfaceState where
  parseJSON = Prelude.parseJSONText "VirtualInterfaceState"
