{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.HealthStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.HealthStatus
  ( HealthStatus
      ( ..,
        Healthy,
        Unhealthy,
        Unknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HealthStatus = HealthStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Healthy :: HealthStatus
pattern Healthy = HealthStatus' "HEALTHY"

pattern Unhealthy :: HealthStatus
pattern Unhealthy = HealthStatus' "UNHEALTHY"

pattern Unknown :: HealthStatus
pattern Unknown = HealthStatus' "UNKNOWN"

{-# COMPLETE
  Healthy,
  Unhealthy,
  Unknown,
  HealthStatus'
  #-}

instance FromText HealthStatus where
  parser = (HealthStatus' . mk) <$> takeText

instance ToText HealthStatus where
  toText (HealthStatus' ci) = original ci

instance Hashable HealthStatus

instance NFData HealthStatus

instance ToByteString HealthStatus

instance ToQuery HealthStatus

instance ToHeader HealthStatus

instance FromJSON HealthStatus where
  parseJSON = parseJSONText "HealthStatus"
