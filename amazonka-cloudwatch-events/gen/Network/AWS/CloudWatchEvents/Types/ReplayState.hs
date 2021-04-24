{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ReplayState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ReplayState
  ( ReplayState
      ( ..,
        Cancelled,
        Cancelling,
        Completed,
        Failed,
        Running,
        Starting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReplayState = ReplayState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Cancelled :: ReplayState
pattern Cancelled = ReplayState' "CANCELLED"

pattern Cancelling :: ReplayState
pattern Cancelling = ReplayState' "CANCELLING"

pattern Completed :: ReplayState
pattern Completed = ReplayState' "COMPLETED"

pattern Failed :: ReplayState
pattern Failed = ReplayState' "FAILED"

pattern Running :: ReplayState
pattern Running = ReplayState' "RUNNING"

pattern Starting :: ReplayState
pattern Starting = ReplayState' "STARTING"

{-# COMPLETE
  Cancelled,
  Cancelling,
  Completed,
  Failed,
  Running,
  Starting,
  ReplayState'
  #-}

instance FromText ReplayState where
  parser = (ReplayState' . mk) <$> takeText

instance ToText ReplayState where
  toText (ReplayState' ci) = original ci

instance Hashable ReplayState

instance NFData ReplayState

instance ToByteString ReplayState

instance ToQuery ReplayState

instance ToHeader ReplayState

instance ToJSON ReplayState where
  toJSON = toJSONText

instance FromJSON ReplayState where
  parseJSON = parseJSONText "ReplayState"
