{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.EventSourceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.EventSourceState
  ( EventSourceState
      ( ..,
        Active,
        Deleted,
        Pending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventSourceState = EventSourceState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: EventSourceState
pattern Active = EventSourceState' "ACTIVE"

pattern Deleted :: EventSourceState
pattern Deleted = EventSourceState' "DELETED"

pattern Pending :: EventSourceState
pattern Pending = EventSourceState' "PENDING"

{-# COMPLETE
  Active,
  Deleted,
  Pending,
  EventSourceState'
  #-}

instance FromText EventSourceState where
  parser = (EventSourceState' . mk) <$> takeText

instance ToText EventSourceState where
  toText (EventSourceState' ci) = original ci

instance Hashable EventSourceState

instance NFData EventSourceState

instance ToByteString EventSourceState

instance ToQuery EventSourceState

instance ToHeader EventSourceState

instance FromJSON EventSourceState where
  parseJSON = parseJSONText "EventSourceState"
