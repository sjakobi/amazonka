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
-- Module      : Network.AWS.MediaLive.Types.AvailBlankingState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AvailBlankingState
  ( AvailBlankingState
      ( ..,
        AvailBlankingStateDISABLED,
        AvailBlankingStateENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Avail Blanking State
newtype AvailBlankingState = AvailBlankingState'
  { fromAvailBlankingState ::
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

pattern AvailBlankingStateDISABLED :: AvailBlankingState
pattern AvailBlankingStateDISABLED = AvailBlankingState' "DISABLED"

pattern AvailBlankingStateENABLED :: AvailBlankingState
pattern AvailBlankingStateENABLED = AvailBlankingState' "ENABLED"

{-# COMPLETE
  AvailBlankingStateDISABLED,
  AvailBlankingStateENABLED,
  AvailBlankingState'
  #-}

instance Prelude.FromText AvailBlankingState where
  parser = AvailBlankingState' Prelude.<$> Prelude.takeText

instance Prelude.ToText AvailBlankingState where
  toText (AvailBlankingState' x) = x

instance Prelude.Hashable AvailBlankingState

instance Prelude.NFData AvailBlankingState

instance Prelude.ToByteString AvailBlankingState

instance Prelude.ToQuery AvailBlankingState

instance Prelude.ToHeader AvailBlankingState

instance Prelude.ToJSON AvailBlankingState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AvailBlankingState where
  parseJSON = Prelude.parseJSONText "AvailBlankingState"
