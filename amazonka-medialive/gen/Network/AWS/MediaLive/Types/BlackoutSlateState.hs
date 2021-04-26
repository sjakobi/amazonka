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
-- Module      : Network.AWS.MediaLive.Types.BlackoutSlateState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BlackoutSlateState
  ( BlackoutSlateState
      ( ..,
        BlackoutSlateStateDISABLED,
        BlackoutSlateStateENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Blackout Slate State
newtype BlackoutSlateState = BlackoutSlateState'
  { fromBlackoutSlateState ::
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

pattern BlackoutSlateStateDISABLED :: BlackoutSlateState
pattern BlackoutSlateStateDISABLED = BlackoutSlateState' "DISABLED"

pattern BlackoutSlateStateENABLED :: BlackoutSlateState
pattern BlackoutSlateStateENABLED = BlackoutSlateState' "ENABLED"

{-# COMPLETE
  BlackoutSlateStateDISABLED,
  BlackoutSlateStateENABLED,
  BlackoutSlateState'
  #-}

instance Prelude.FromText BlackoutSlateState where
  parser = BlackoutSlateState' Prelude.<$> Prelude.takeText

instance Prelude.ToText BlackoutSlateState where
  toText (BlackoutSlateState' x) = x

instance Prelude.Hashable BlackoutSlateState

instance Prelude.NFData BlackoutSlateState

instance Prelude.ToByteString BlackoutSlateState

instance Prelude.ToQuery BlackoutSlateState

instance Prelude.ToHeader BlackoutSlateState

instance Prelude.ToJSON BlackoutSlateState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BlackoutSlateState where
  parseJSON = Prelude.parseJSONText "BlackoutSlateState"
