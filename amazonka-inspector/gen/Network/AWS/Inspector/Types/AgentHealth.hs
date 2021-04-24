{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.AgentHealth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AgentHealth
  ( AgentHealth
      ( ..,
        Healthy,
        Unhealthy,
        Unknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AgentHealth = AgentHealth' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Healthy :: AgentHealth
pattern Healthy = AgentHealth' "HEALTHY"

pattern Unhealthy :: AgentHealth
pattern Unhealthy = AgentHealth' "UNHEALTHY"

pattern Unknown :: AgentHealth
pattern Unknown = AgentHealth' "UNKNOWN"

{-# COMPLETE
  Healthy,
  Unhealthy,
  Unknown,
  AgentHealth'
  #-}

instance FromText AgentHealth where
  parser = (AgentHealth' . mk) <$> takeText

instance ToText AgentHealth where
  toText (AgentHealth' ci) = original ci

instance Hashable AgentHealth

instance NFData AgentHealth

instance ToByteString AgentHealth

instance ToQuery AgentHealth

instance ToHeader AgentHealth

instance ToJSON AgentHealth where
  toJSON = toJSONText

instance FromJSON AgentHealth where
  parseJSON = parseJSONText "AgentHealth"
