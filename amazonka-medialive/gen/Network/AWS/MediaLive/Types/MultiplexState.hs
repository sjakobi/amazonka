{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.MultiplexState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MultiplexState
  ( MultiplexState
      ( ..,
        MSCreateFailed,
        MSCreating,
        MSDeleted,
        MSDeleting,
        MSIdle,
        MSRecovering,
        MSRunning,
        MSStarting,
        MSStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The current state of the multiplex.
data MultiplexState = MultiplexState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MSCreateFailed :: MultiplexState
pattern MSCreateFailed = MultiplexState' "CREATE_FAILED"

pattern MSCreating :: MultiplexState
pattern MSCreating = MultiplexState' "CREATING"

pattern MSDeleted :: MultiplexState
pattern MSDeleted = MultiplexState' "DELETED"

pattern MSDeleting :: MultiplexState
pattern MSDeleting = MultiplexState' "DELETING"

pattern MSIdle :: MultiplexState
pattern MSIdle = MultiplexState' "IDLE"

pattern MSRecovering :: MultiplexState
pattern MSRecovering = MultiplexState' "RECOVERING"

pattern MSRunning :: MultiplexState
pattern MSRunning = MultiplexState' "RUNNING"

pattern MSStarting :: MultiplexState
pattern MSStarting = MultiplexState' "STARTING"

pattern MSStopping :: MultiplexState
pattern MSStopping = MultiplexState' "STOPPING"

{-# COMPLETE
  MSCreateFailed,
  MSCreating,
  MSDeleted,
  MSDeleting,
  MSIdle,
  MSRecovering,
  MSRunning,
  MSStarting,
  MSStopping,
  MultiplexState'
  #-}

instance FromText MultiplexState where
  parser = (MultiplexState' . mk) <$> takeText

instance ToText MultiplexState where
  toText (MultiplexState' ci) = original ci

instance Hashable MultiplexState

instance NFData MultiplexState

instance ToByteString MultiplexState

instance ToQuery MultiplexState

instance ToHeader MultiplexState

instance FromJSON MultiplexState where
  parseJSON = parseJSONText "MultiplexState"
