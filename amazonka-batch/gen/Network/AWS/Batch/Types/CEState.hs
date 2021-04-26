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
-- Module      : Network.AWS.Batch.Types.CEState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.CEState
  ( CEState
      ( ..,
        CEStateDISABLED,
        CEStateENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CEState = CEState'
  { fromCEState ::
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

pattern CEStateDISABLED :: CEState
pattern CEStateDISABLED = CEState' "DISABLED"

pattern CEStateENABLED :: CEState
pattern CEStateENABLED = CEState' "ENABLED"

{-# COMPLETE
  CEStateDISABLED,
  CEStateENABLED,
  CEState'
  #-}

instance Prelude.FromText CEState where
  parser = CEState' Prelude.<$> Prelude.takeText

instance Prelude.ToText CEState where
  toText (CEState' x) = x

instance Prelude.Hashable CEState

instance Prelude.NFData CEState

instance Prelude.ToByteString CEState

instance Prelude.ToQuery CEState

instance Prelude.ToHeader CEState

instance Prelude.ToJSON CEState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CEState where
  parseJSON = Prelude.parseJSONText "CEState"
