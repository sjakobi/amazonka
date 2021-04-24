{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.MatchmakingConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.MatchmakingConfigurationStatus
  ( MatchmakingConfigurationStatus
      ( ..,
        MCSCancelled,
        MCSCompleted,
        MCSFailed,
        MCSPlacing,
        MCSQueued,
        MCSRequiresAcceptance,
        MCSSearching,
        MCSTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MatchmakingConfigurationStatus
  = MatchmakingConfigurationStatus'
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

pattern MCSCancelled :: MatchmakingConfigurationStatus
pattern MCSCancelled = MatchmakingConfigurationStatus' "CANCELLED"

pattern MCSCompleted :: MatchmakingConfigurationStatus
pattern MCSCompleted = MatchmakingConfigurationStatus' "COMPLETED"

pattern MCSFailed :: MatchmakingConfigurationStatus
pattern MCSFailed = MatchmakingConfigurationStatus' "FAILED"

pattern MCSPlacing :: MatchmakingConfigurationStatus
pattern MCSPlacing = MatchmakingConfigurationStatus' "PLACING"

pattern MCSQueued :: MatchmakingConfigurationStatus
pattern MCSQueued = MatchmakingConfigurationStatus' "QUEUED"

pattern MCSRequiresAcceptance :: MatchmakingConfigurationStatus
pattern MCSRequiresAcceptance = MatchmakingConfigurationStatus' "REQUIRES_ACCEPTANCE"

pattern MCSSearching :: MatchmakingConfigurationStatus
pattern MCSSearching = MatchmakingConfigurationStatus' "SEARCHING"

pattern MCSTimedOut :: MatchmakingConfigurationStatus
pattern MCSTimedOut = MatchmakingConfigurationStatus' "TIMED_OUT"

{-# COMPLETE
  MCSCancelled,
  MCSCompleted,
  MCSFailed,
  MCSPlacing,
  MCSQueued,
  MCSRequiresAcceptance,
  MCSSearching,
  MCSTimedOut,
  MatchmakingConfigurationStatus'
  #-}

instance FromText MatchmakingConfigurationStatus where
  parser = (MatchmakingConfigurationStatus' . mk) <$> takeText

instance ToText MatchmakingConfigurationStatus where
  toText (MatchmakingConfigurationStatus' ci) = original ci

instance Hashable MatchmakingConfigurationStatus

instance NFData MatchmakingConfigurationStatus

instance ToByteString MatchmakingConfigurationStatus

instance ToQuery MatchmakingConfigurationStatus

instance ToHeader MatchmakingConfigurationStatus

instance FromJSON MatchmakingConfigurationStatus where
  parseJSON = parseJSONText "MatchmakingConfigurationStatus"
