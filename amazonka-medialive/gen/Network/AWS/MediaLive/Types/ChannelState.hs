{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ChannelState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ChannelState
  ( ChannelState
      ( ..,
        CSCreateFailed,
        CSCreating,
        CSDeleted,
        CSDeleting,
        CSIdle,
        CSRecovering,
        CSRunning,
        CSStarting,
        CSStopping,
        CSUpdateFailed,
        CSUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Placeholder documentation for ChannelState
data ChannelState = ChannelState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSCreateFailed :: ChannelState
pattern CSCreateFailed = ChannelState' "CREATE_FAILED"

pattern CSCreating :: ChannelState
pattern CSCreating = ChannelState' "CREATING"

pattern CSDeleted :: ChannelState
pattern CSDeleted = ChannelState' "DELETED"

pattern CSDeleting :: ChannelState
pattern CSDeleting = ChannelState' "DELETING"

pattern CSIdle :: ChannelState
pattern CSIdle = ChannelState' "IDLE"

pattern CSRecovering :: ChannelState
pattern CSRecovering = ChannelState' "RECOVERING"

pattern CSRunning :: ChannelState
pattern CSRunning = ChannelState' "RUNNING"

pattern CSStarting :: ChannelState
pattern CSStarting = ChannelState' "STARTING"

pattern CSStopping :: ChannelState
pattern CSStopping = ChannelState' "STOPPING"

pattern CSUpdateFailed :: ChannelState
pattern CSUpdateFailed = ChannelState' "UPDATE_FAILED"

pattern CSUpdating :: ChannelState
pattern CSUpdating = ChannelState' "UPDATING"

{-# COMPLETE
  CSCreateFailed,
  CSCreating,
  CSDeleted,
  CSDeleting,
  CSIdle,
  CSRecovering,
  CSRunning,
  CSStarting,
  CSStopping,
  CSUpdateFailed,
  CSUpdating,
  ChannelState'
  #-}

instance FromText ChannelState where
  parser = (ChannelState' . mk) <$> takeText

instance ToText ChannelState where
  toText (ChannelState' ci) = original ci

instance Hashable ChannelState

instance NFData ChannelState

instance ToByteString ChannelState

instance ToQuery ChannelState

instance ToHeader ChannelState

instance FromJSON ChannelState where
  parseJSON = parseJSONText "ChannelState"
