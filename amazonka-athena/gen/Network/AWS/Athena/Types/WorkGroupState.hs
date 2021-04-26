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
-- Module      : Network.AWS.Athena.Types.WorkGroupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.WorkGroupState
  ( WorkGroupState
      ( ..,
        WorkGroupStateDISABLED,
        WorkGroupStateENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkGroupState = WorkGroupState'
  { fromWorkGroupState ::
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

pattern WorkGroupStateDISABLED :: WorkGroupState
pattern WorkGroupStateDISABLED = WorkGroupState' "DISABLED"

pattern WorkGroupStateENABLED :: WorkGroupState
pattern WorkGroupStateENABLED = WorkGroupState' "ENABLED"

{-# COMPLETE
  WorkGroupStateDISABLED,
  WorkGroupStateENABLED,
  WorkGroupState'
  #-}

instance Prelude.FromText WorkGroupState where
  parser = WorkGroupState' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkGroupState where
  toText (WorkGroupState' x) = x

instance Prelude.Hashable WorkGroupState

instance Prelude.NFData WorkGroupState

instance Prelude.ToByteString WorkGroupState

instance Prelude.ToQuery WorkGroupState

instance Prelude.ToHeader WorkGroupState

instance Prelude.ToJSON WorkGroupState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WorkGroupState where
  parseJSON = Prelude.parseJSONText "WorkGroupState"
