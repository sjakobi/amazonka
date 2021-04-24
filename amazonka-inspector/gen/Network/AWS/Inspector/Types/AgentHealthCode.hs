{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.AgentHealthCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AgentHealthCode
  ( AgentHealthCode
      ( ..,
        AHCIdle,
        AHCRunning,
        AHCShutdown,
        AHCThrottled,
        AHCUnhealthy,
        AHCUnknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AgentHealthCode = AgentHealthCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AHCIdle :: AgentHealthCode
pattern AHCIdle = AgentHealthCode' "IDLE"

pattern AHCRunning :: AgentHealthCode
pattern AHCRunning = AgentHealthCode' "RUNNING"

pattern AHCShutdown :: AgentHealthCode
pattern AHCShutdown = AgentHealthCode' "SHUTDOWN"

pattern AHCThrottled :: AgentHealthCode
pattern AHCThrottled = AgentHealthCode' "THROTTLED"

pattern AHCUnhealthy :: AgentHealthCode
pattern AHCUnhealthy = AgentHealthCode' "UNHEALTHY"

pattern AHCUnknown :: AgentHealthCode
pattern AHCUnknown = AgentHealthCode' "UNKNOWN"

{-# COMPLETE
  AHCIdle,
  AHCRunning,
  AHCShutdown,
  AHCThrottled,
  AHCUnhealthy,
  AHCUnknown,
  AgentHealthCode'
  #-}

instance FromText AgentHealthCode where
  parser = (AgentHealthCode' . mk) <$> takeText

instance ToText AgentHealthCode where
  toText (AgentHealthCode' ci) = original ci

instance Hashable AgentHealthCode

instance NFData AgentHealthCode

instance ToByteString AgentHealthCode

instance ToQuery AgentHealthCode

instance ToHeader AgentHealthCode

instance ToJSON AgentHealthCode where
  toJSON = toJSONText

instance FromJSON AgentHealthCode where
  parseJSON = parseJSONText "AgentHealthCode"
