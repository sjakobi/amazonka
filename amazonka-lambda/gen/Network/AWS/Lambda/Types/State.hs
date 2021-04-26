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
-- Module      : Network.AWS.Lambda.Types.State
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.State
  ( State
      ( ..,
        StateActive,
        StateFailed,
        StateInactive,
        StatePending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype State = State' {fromState :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern StateActive :: State
pattern StateActive = State' "Active"

pattern StateFailed :: State
pattern StateFailed = State' "Failed"

pattern StateInactive :: State
pattern StateInactive = State' "Inactive"

pattern StatePending :: State
pattern StatePending = State' "Pending"

{-# COMPLETE
  StateActive,
  StateFailed,
  StateInactive,
  StatePending,
  State'
  #-}

instance Prelude.FromText State where
  parser = State' Prelude.<$> Prelude.takeText

instance Prelude.ToText State where
  toText (State' x) = x

instance Prelude.Hashable State

instance Prelude.NFData State

instance Prelude.ToByteString State

instance Prelude.ToQuery State

instance Prelude.ToHeader State

instance Prelude.FromJSON State where
  parseJSON = Prelude.parseJSONText "State"
