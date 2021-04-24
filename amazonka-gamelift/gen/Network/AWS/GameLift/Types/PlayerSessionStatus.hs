{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.PlayerSessionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.PlayerSessionStatus
  ( PlayerSessionStatus
      ( ..,
        PSSActive,
        PSSCompleted,
        PSSReserved,
        PSSTimedout
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PlayerSessionStatus
  = PlayerSessionStatus'
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

pattern PSSActive :: PlayerSessionStatus
pattern PSSActive = PlayerSessionStatus' "ACTIVE"

pattern PSSCompleted :: PlayerSessionStatus
pattern PSSCompleted = PlayerSessionStatus' "COMPLETED"

pattern PSSReserved :: PlayerSessionStatus
pattern PSSReserved = PlayerSessionStatus' "RESERVED"

pattern PSSTimedout :: PlayerSessionStatus
pattern PSSTimedout = PlayerSessionStatus' "TIMEDOUT"

{-# COMPLETE
  PSSActive,
  PSSCompleted,
  PSSReserved,
  PSSTimedout,
  PlayerSessionStatus'
  #-}

instance FromText PlayerSessionStatus where
  parser = (PlayerSessionStatus' . mk) <$> takeText

instance ToText PlayerSessionStatus where
  toText (PlayerSessionStatus' ci) = original ci

instance Hashable PlayerSessionStatus

instance NFData PlayerSessionStatus

instance ToByteString PlayerSessionStatus

instance ToQuery PlayerSessionStatus

instance ToHeader PlayerSessionStatus

instance FromJSON PlayerSessionStatus where
  parseJSON = parseJSONText "PlayerSessionStatus"
