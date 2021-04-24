{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.FleetState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.FleetState
  ( FleetState
      ( ..,
        FSRunning,
        FSStarting,
        FSStopped,
        FSStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FleetState = FleetState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FSRunning :: FleetState
pattern FSRunning = FleetState' "RUNNING"

pattern FSStarting :: FleetState
pattern FSStarting = FleetState' "STARTING"

pattern FSStopped :: FleetState
pattern FSStopped = FleetState' "STOPPED"

pattern FSStopping :: FleetState
pattern FSStopping = FleetState' "STOPPING"

{-# COMPLETE
  FSRunning,
  FSStarting,
  FSStopped,
  FSStopping,
  FleetState'
  #-}

instance FromText FleetState where
  parser = (FleetState' . mk) <$> takeText

instance ToText FleetState where
  toText (FleetState' ci) = original ci

instance Hashable FleetState

instance NFData FleetState

instance ToByteString FleetState

instance ToQuery FleetState

instance ToHeader FleetState

instance FromJSON FleetState where
  parseJSON = parseJSONText "FleetState"
