{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        VISAvailable,
        VISConfirming,
        VISDeleted,
        VISDeleting,
        VISDown,
        VISPending,
        VISRejected,
        VISUnknown,
        VISVerifying
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VirtualInterfaceState
  = VirtualInterfaceState'
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

pattern VISAvailable :: VirtualInterfaceState
pattern VISAvailable = VirtualInterfaceState' "available"

pattern VISConfirming :: VirtualInterfaceState
pattern VISConfirming = VirtualInterfaceState' "confirming"

pattern VISDeleted :: VirtualInterfaceState
pattern VISDeleted = VirtualInterfaceState' "deleted"

pattern VISDeleting :: VirtualInterfaceState
pattern VISDeleting = VirtualInterfaceState' "deleting"

pattern VISDown :: VirtualInterfaceState
pattern VISDown = VirtualInterfaceState' "down"

pattern VISPending :: VirtualInterfaceState
pattern VISPending = VirtualInterfaceState' "pending"

pattern VISRejected :: VirtualInterfaceState
pattern VISRejected = VirtualInterfaceState' "rejected"

pattern VISUnknown :: VirtualInterfaceState
pattern VISUnknown = VirtualInterfaceState' "unknown"

pattern VISVerifying :: VirtualInterfaceState
pattern VISVerifying = VirtualInterfaceState' "verifying"

{-# COMPLETE
  VISAvailable,
  VISConfirming,
  VISDeleted,
  VISDeleting,
  VISDown,
  VISPending,
  VISRejected,
  VISUnknown,
  VISVerifying,
  VirtualInterfaceState'
  #-}

instance FromText VirtualInterfaceState where
  parser = (VirtualInterfaceState' . mk) <$> takeText

instance ToText VirtualInterfaceState where
  toText (VirtualInterfaceState' ci) = original ci

instance Hashable VirtualInterfaceState

instance NFData VirtualInterfaceState

instance ToByteString VirtualInterfaceState

instance ToQuery VirtualInterfaceState

instance ToHeader VirtualInterfaceState

instance FromJSON VirtualInterfaceState where
  parseJSON = parseJSONText "VirtualInterfaceState"
