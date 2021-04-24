{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.FleetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.FleetStatus
  ( FleetStatus
      ( ..,
        FSActivating,
        FSActive,
        FSBuilding,
        FSDeleting,
        FSDownloading,
        FSError',
        FSNew,
        FSTerminated,
        FSValidating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FleetStatus = FleetStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FSActivating :: FleetStatus
pattern FSActivating = FleetStatus' "ACTIVATING"

pattern FSActive :: FleetStatus
pattern FSActive = FleetStatus' "ACTIVE"

pattern FSBuilding :: FleetStatus
pattern FSBuilding = FleetStatus' "BUILDING"

pattern FSDeleting :: FleetStatus
pattern FSDeleting = FleetStatus' "DELETING"

pattern FSDownloading :: FleetStatus
pattern FSDownloading = FleetStatus' "DOWNLOADING"

pattern FSError' :: FleetStatus
pattern FSError' = FleetStatus' "ERROR"

pattern FSNew :: FleetStatus
pattern FSNew = FleetStatus' "NEW"

pattern FSTerminated :: FleetStatus
pattern FSTerminated = FleetStatus' "TERMINATED"

pattern FSValidating :: FleetStatus
pattern FSValidating = FleetStatus' "VALIDATING"

{-# COMPLETE
  FSActivating,
  FSActive,
  FSBuilding,
  FSDeleting,
  FSDownloading,
  FSError',
  FSNew,
  FSTerminated,
  FSValidating,
  FleetStatus'
  #-}

instance FromText FleetStatus where
  parser = (FleetStatus' . mk) <$> takeText

instance ToText FleetStatus where
  toText (FleetStatus' ci) = original ci

instance Hashable FleetStatus

instance NFData FleetStatus

instance ToByteString FleetStatus

instance ToQuery FleetStatus

instance ToHeader FleetStatus

instance FromJSON FleetStatus where
  parseJSON = parseJSONText "FleetStatus"
