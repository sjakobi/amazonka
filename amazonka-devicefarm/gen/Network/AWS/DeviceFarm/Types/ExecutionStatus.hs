{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.ExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.ExecutionStatus
  ( ExecutionStatus
      ( ..,
        ESCompleted,
        ESPending,
        ESPendingConcurrency,
        ESPendingDevice,
        ESPreparing,
        ESProcessing,
        ESRunning,
        ESScheduling,
        ESStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutionStatus = ExecutionStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ESCompleted :: ExecutionStatus
pattern ESCompleted = ExecutionStatus' "COMPLETED"

pattern ESPending :: ExecutionStatus
pattern ESPending = ExecutionStatus' "PENDING"

pattern ESPendingConcurrency :: ExecutionStatus
pattern ESPendingConcurrency = ExecutionStatus' "PENDING_CONCURRENCY"

pattern ESPendingDevice :: ExecutionStatus
pattern ESPendingDevice = ExecutionStatus' "PENDING_DEVICE"

pattern ESPreparing :: ExecutionStatus
pattern ESPreparing = ExecutionStatus' "PREPARING"

pattern ESProcessing :: ExecutionStatus
pattern ESProcessing = ExecutionStatus' "PROCESSING"

pattern ESRunning :: ExecutionStatus
pattern ESRunning = ExecutionStatus' "RUNNING"

pattern ESScheduling :: ExecutionStatus
pattern ESScheduling = ExecutionStatus' "SCHEDULING"

pattern ESStopping :: ExecutionStatus
pattern ESStopping = ExecutionStatus' "STOPPING"

{-# COMPLETE
  ESCompleted,
  ESPending,
  ESPendingConcurrency,
  ESPendingDevice,
  ESPreparing,
  ESProcessing,
  ESRunning,
  ESScheduling,
  ESStopping,
  ExecutionStatus'
  #-}

instance FromText ExecutionStatus where
  parser = (ExecutionStatus' . mk) <$> takeText

instance ToText ExecutionStatus where
  toText (ExecutionStatus' ci) = original ci

instance Hashable ExecutionStatus

instance NFData ExecutionStatus

instance ToByteString ExecutionStatus

instance ToQuery ExecutionStatus

instance ToHeader ExecutionStatus

instance FromJSON ExecutionStatus where
  parseJSON = parseJSONText "ExecutionStatus"
