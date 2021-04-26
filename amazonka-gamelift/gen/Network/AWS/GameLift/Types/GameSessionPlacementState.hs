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
-- Module      : Network.AWS.GameLift.Types.GameSessionPlacementState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameSessionPlacementState
  ( GameSessionPlacementState
      ( ..,
        GameSessionPlacementStateCANCELLED,
        GameSessionPlacementStateFAILED,
        GameSessionPlacementStateFULFILLED,
        GameSessionPlacementStatePENDING,
        GameSessionPlacementStateTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameSessionPlacementState = GameSessionPlacementState'
  { fromGameSessionPlacementState ::
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

pattern GameSessionPlacementStateCANCELLED :: GameSessionPlacementState
pattern GameSessionPlacementStateCANCELLED = GameSessionPlacementState' "CANCELLED"

pattern GameSessionPlacementStateFAILED :: GameSessionPlacementState
pattern GameSessionPlacementStateFAILED = GameSessionPlacementState' "FAILED"

pattern GameSessionPlacementStateFULFILLED :: GameSessionPlacementState
pattern GameSessionPlacementStateFULFILLED = GameSessionPlacementState' "FULFILLED"

pattern GameSessionPlacementStatePENDING :: GameSessionPlacementState
pattern GameSessionPlacementStatePENDING = GameSessionPlacementState' "PENDING"

pattern GameSessionPlacementStateTIMEDOUT :: GameSessionPlacementState
pattern GameSessionPlacementStateTIMEDOUT = GameSessionPlacementState' "TIMED_OUT"

{-# COMPLETE
  GameSessionPlacementStateCANCELLED,
  GameSessionPlacementStateFAILED,
  GameSessionPlacementStateFULFILLED,
  GameSessionPlacementStatePENDING,
  GameSessionPlacementStateTIMEDOUT,
  GameSessionPlacementState'
  #-}

instance Prelude.FromText GameSessionPlacementState where
  parser = GameSessionPlacementState' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameSessionPlacementState where
  toText (GameSessionPlacementState' x) = x

instance Prelude.Hashable GameSessionPlacementState

instance Prelude.NFData GameSessionPlacementState

instance Prelude.ToByteString GameSessionPlacementState

instance Prelude.ToQuery GameSessionPlacementState

instance Prelude.ToHeader GameSessionPlacementState

instance Prelude.FromJSON GameSessionPlacementState where
  parseJSON = Prelude.parseJSONText "GameSessionPlacementState"
