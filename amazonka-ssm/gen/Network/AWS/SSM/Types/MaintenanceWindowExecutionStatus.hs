{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.MaintenanceWindowExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.MaintenanceWindowExecutionStatus
  ( MaintenanceWindowExecutionStatus
      ( ..,
        MWESCancelled,
        MWESCancelling,
        MWESFailed,
        MWESInProgress,
        MWESPending,
        MWESSkippedOverlapping,
        MWESSuccess,
        MWESTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MaintenanceWindowExecutionStatus
  = MaintenanceWindowExecutionStatus'
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

pattern MWESCancelled :: MaintenanceWindowExecutionStatus
pattern MWESCancelled = MaintenanceWindowExecutionStatus' "CANCELLED"

pattern MWESCancelling :: MaintenanceWindowExecutionStatus
pattern MWESCancelling = MaintenanceWindowExecutionStatus' "CANCELLING"

pattern MWESFailed :: MaintenanceWindowExecutionStatus
pattern MWESFailed = MaintenanceWindowExecutionStatus' "FAILED"

pattern MWESInProgress :: MaintenanceWindowExecutionStatus
pattern MWESInProgress = MaintenanceWindowExecutionStatus' "IN_PROGRESS"

pattern MWESPending :: MaintenanceWindowExecutionStatus
pattern MWESPending = MaintenanceWindowExecutionStatus' "PENDING"

pattern MWESSkippedOverlapping :: MaintenanceWindowExecutionStatus
pattern MWESSkippedOverlapping = MaintenanceWindowExecutionStatus' "SKIPPED_OVERLAPPING"

pattern MWESSuccess :: MaintenanceWindowExecutionStatus
pattern MWESSuccess = MaintenanceWindowExecutionStatus' "SUCCESS"

pattern MWESTimedOut :: MaintenanceWindowExecutionStatus
pattern MWESTimedOut = MaintenanceWindowExecutionStatus' "TIMED_OUT"

{-# COMPLETE
  MWESCancelled,
  MWESCancelling,
  MWESFailed,
  MWESInProgress,
  MWESPending,
  MWESSkippedOverlapping,
  MWESSuccess,
  MWESTimedOut,
  MaintenanceWindowExecutionStatus'
  #-}

instance FromText MaintenanceWindowExecutionStatus where
  parser = (MaintenanceWindowExecutionStatus' . mk) <$> takeText

instance ToText MaintenanceWindowExecutionStatus where
  toText (MaintenanceWindowExecutionStatus' ci) = original ci

instance Hashable MaintenanceWindowExecutionStatus

instance NFData MaintenanceWindowExecutionStatus

instance ToByteString MaintenanceWindowExecutionStatus

instance ToQuery MaintenanceWindowExecutionStatus

instance ToHeader MaintenanceWindowExecutionStatus

instance FromJSON MaintenanceWindowExecutionStatus where
  parseJSON = parseJSONText "MaintenanceWindowExecutionStatus"
