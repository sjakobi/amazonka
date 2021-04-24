{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.RealtimeEndpointStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.RealtimeEndpointStatus
  ( RealtimeEndpointStatus
      ( ..,
        RESFailed,
        RESNone,
        RESReady,
        RESUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RealtimeEndpointStatus
  = RealtimeEndpointStatus'
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

pattern RESFailed :: RealtimeEndpointStatus
pattern RESFailed = RealtimeEndpointStatus' "FAILED"

pattern RESNone :: RealtimeEndpointStatus
pattern RESNone = RealtimeEndpointStatus' "NONE"

pattern RESReady :: RealtimeEndpointStatus
pattern RESReady = RealtimeEndpointStatus' "READY"

pattern RESUpdating :: RealtimeEndpointStatus
pattern RESUpdating = RealtimeEndpointStatus' "UPDATING"

{-# COMPLETE
  RESFailed,
  RESNone,
  RESReady,
  RESUpdating,
  RealtimeEndpointStatus'
  #-}

instance FromText RealtimeEndpointStatus where
  parser = (RealtimeEndpointStatus' . mk) <$> takeText

instance ToText RealtimeEndpointStatus where
  toText (RealtimeEndpointStatus' ci) = original ci

instance Hashable RealtimeEndpointStatus

instance NFData RealtimeEndpointStatus

instance ToByteString RealtimeEndpointStatus

instance ToQuery RealtimeEndpointStatus

instance ToHeader RealtimeEndpointStatus

instance FromJSON RealtimeEndpointStatus where
  parseJSON = parseJSONText "RealtimeEndpointStatus"
