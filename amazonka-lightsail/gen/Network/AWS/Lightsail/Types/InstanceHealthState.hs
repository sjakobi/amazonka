{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.InstanceHealthState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceHealthState
  ( InstanceHealthState
      ( ..,
        Draining,
        Healthy,
        Initial,
        Unavailable,
        Unhealthy,
        Unused
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceHealthState
  = InstanceHealthState'
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

pattern Draining :: InstanceHealthState
pattern Draining = InstanceHealthState' "draining"

pattern Healthy :: InstanceHealthState
pattern Healthy = InstanceHealthState' "healthy"

pattern Initial :: InstanceHealthState
pattern Initial = InstanceHealthState' "initial"

pattern Unavailable :: InstanceHealthState
pattern Unavailable = InstanceHealthState' "unavailable"

pattern Unhealthy :: InstanceHealthState
pattern Unhealthy = InstanceHealthState' "unhealthy"

pattern Unused :: InstanceHealthState
pattern Unused = InstanceHealthState' "unused"

{-# COMPLETE
  Draining,
  Healthy,
  Initial,
  Unavailable,
  Unhealthy,
  Unused,
  InstanceHealthState'
  #-}

instance FromText InstanceHealthState where
  parser = (InstanceHealthState' . mk) <$> takeText

instance ToText InstanceHealthState where
  toText (InstanceHealthState' ci) = original ci

instance Hashable InstanceHealthState

instance NFData InstanceHealthState

instance ToByteString InstanceHealthState

instance ToQuery InstanceHealthState

instance ToHeader InstanceHealthState

instance FromJSON InstanceHealthState where
  parseJSON = parseJSONText "InstanceHealthState"
