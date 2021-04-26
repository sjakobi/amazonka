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
-- Module      : Network.AWS.DirectConnect.Types.LagState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.LagState
  ( LagState
      ( ..,
        LagStateAvailable,
        LagStateDeleted,
        LagStateDeleting,
        LagStateDown,
        LagStatePending,
        LagStateRequested,
        LagStateUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LagState = LagState'
  { fromLagState ::
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

pattern LagStateAvailable :: LagState
pattern LagStateAvailable = LagState' "available"

pattern LagStateDeleted :: LagState
pattern LagStateDeleted = LagState' "deleted"

pattern LagStateDeleting :: LagState
pattern LagStateDeleting = LagState' "deleting"

pattern LagStateDown :: LagState
pattern LagStateDown = LagState' "down"

pattern LagStatePending :: LagState
pattern LagStatePending = LagState' "pending"

pattern LagStateRequested :: LagState
pattern LagStateRequested = LagState' "requested"

pattern LagStateUnknown :: LagState
pattern LagStateUnknown = LagState' "unknown"

{-# COMPLETE
  LagStateAvailable,
  LagStateDeleted,
  LagStateDeleting,
  LagStateDown,
  LagStatePending,
  LagStateRequested,
  LagStateUnknown,
  LagState'
  #-}

instance Prelude.FromText LagState where
  parser = LagState' Prelude.<$> Prelude.takeText

instance Prelude.ToText LagState where
  toText (LagState' x) = x

instance Prelude.Hashable LagState

instance Prelude.NFData LagState

instance Prelude.ToByteString LagState

instance Prelude.ToQuery LagState

instance Prelude.ToHeader LagState

instance Prelude.FromJSON LagState where
  parseJSON = Prelude.parseJSONText "LagState"
