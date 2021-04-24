{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        GSPSCancelled,
        GSPSFailed,
        GSPSFulfilled,
        GSPSPending,
        GSPSTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GameSessionPlacementState
  = GameSessionPlacementState'
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

pattern GSPSCancelled :: GameSessionPlacementState
pattern GSPSCancelled = GameSessionPlacementState' "CANCELLED"

pattern GSPSFailed :: GameSessionPlacementState
pattern GSPSFailed = GameSessionPlacementState' "FAILED"

pattern GSPSFulfilled :: GameSessionPlacementState
pattern GSPSFulfilled = GameSessionPlacementState' "FULFILLED"

pattern GSPSPending :: GameSessionPlacementState
pattern GSPSPending = GameSessionPlacementState' "PENDING"

pattern GSPSTimedOut :: GameSessionPlacementState
pattern GSPSTimedOut = GameSessionPlacementState' "TIMED_OUT"

{-# COMPLETE
  GSPSCancelled,
  GSPSFailed,
  GSPSFulfilled,
  GSPSPending,
  GSPSTimedOut,
  GameSessionPlacementState'
  #-}

instance FromText GameSessionPlacementState where
  parser = (GameSessionPlacementState' . mk) <$> takeText

instance ToText GameSessionPlacementState where
  toText (GameSessionPlacementState' ci) = original ci

instance Hashable GameSessionPlacementState

instance NFData GameSessionPlacementState

instance ToByteString GameSessionPlacementState

instance ToQuery GameSessionPlacementState

instance ToHeader GameSessionPlacementState

instance FromJSON GameSessionPlacementState where
  parseJSON = parseJSONText "GameSessionPlacementState"
