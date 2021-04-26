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
-- Module      : Network.AWS.DirectConnect.Types.InterconnectState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.InterconnectState
  ( InterconnectState
      ( ..,
        InterconnectStateAvailable,
        InterconnectStateDeleted,
        InterconnectStateDeleting,
        InterconnectStateDown,
        InterconnectStatePending,
        InterconnectStateRequested,
        InterconnectStateUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InterconnectState = InterconnectState'
  { fromInterconnectState ::
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

pattern InterconnectStateAvailable :: InterconnectState
pattern InterconnectStateAvailable = InterconnectState' "available"

pattern InterconnectStateDeleted :: InterconnectState
pattern InterconnectStateDeleted = InterconnectState' "deleted"

pattern InterconnectStateDeleting :: InterconnectState
pattern InterconnectStateDeleting = InterconnectState' "deleting"

pattern InterconnectStateDown :: InterconnectState
pattern InterconnectStateDown = InterconnectState' "down"

pattern InterconnectStatePending :: InterconnectState
pattern InterconnectStatePending = InterconnectState' "pending"

pattern InterconnectStateRequested :: InterconnectState
pattern InterconnectStateRequested = InterconnectState' "requested"

pattern InterconnectStateUnknown :: InterconnectState
pattern InterconnectStateUnknown = InterconnectState' "unknown"

{-# COMPLETE
  InterconnectStateAvailable,
  InterconnectStateDeleted,
  InterconnectStateDeleting,
  InterconnectStateDown,
  InterconnectStatePending,
  InterconnectStateRequested,
  InterconnectStateUnknown,
  InterconnectState'
  #-}

instance Prelude.FromText InterconnectState where
  parser = InterconnectState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InterconnectState where
  toText (InterconnectState' x) = x

instance Prelude.Hashable InterconnectState

instance Prelude.NFData InterconnectState

instance Prelude.ToByteString InterconnectState

instance Prelude.ToQuery InterconnectState

instance Prelude.ToHeader InterconnectState

instance Prelude.FromJSON InterconnectState where
  parseJSON = Prelude.parseJSONText "InterconnectState"
