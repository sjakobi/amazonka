{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AutomationExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AutomationExecutionStatus
  ( AutomationExecutionStatus
      ( ..,
        AESApproved,
        AESCancelled,
        AESCancelling,
        AESChangeCalendarOverrideApproved,
        AESChangeCalendarOverrideRejected,
        AESCompletedWithFailure,
        AESCompletedWithSuccess,
        AESFailed,
        AESInProgress,
        AESPending,
        AESPendingApproval,
        AESPendingChangeCalendarOverride,
        AESRejected,
        AESRunbookInProgress,
        AESScheduled,
        AESSuccess,
        AESTimedOut,
        AESWaiting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutomationExecutionStatus
  = AutomationExecutionStatus'
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

pattern AESApproved :: AutomationExecutionStatus
pattern AESApproved = AutomationExecutionStatus' "Approved"

pattern AESCancelled :: AutomationExecutionStatus
pattern AESCancelled = AutomationExecutionStatus' "Cancelled"

pattern AESCancelling :: AutomationExecutionStatus
pattern AESCancelling = AutomationExecutionStatus' "Cancelling"

pattern AESChangeCalendarOverrideApproved :: AutomationExecutionStatus
pattern AESChangeCalendarOverrideApproved = AutomationExecutionStatus' "ChangeCalendarOverrideApproved"

pattern AESChangeCalendarOverrideRejected :: AutomationExecutionStatus
pattern AESChangeCalendarOverrideRejected = AutomationExecutionStatus' "ChangeCalendarOverrideRejected"

pattern AESCompletedWithFailure :: AutomationExecutionStatus
pattern AESCompletedWithFailure = AutomationExecutionStatus' "CompletedWithFailure"

pattern AESCompletedWithSuccess :: AutomationExecutionStatus
pattern AESCompletedWithSuccess = AutomationExecutionStatus' "CompletedWithSuccess"

pattern AESFailed :: AutomationExecutionStatus
pattern AESFailed = AutomationExecutionStatus' "Failed"

pattern AESInProgress :: AutomationExecutionStatus
pattern AESInProgress = AutomationExecutionStatus' "InProgress"

pattern AESPending :: AutomationExecutionStatus
pattern AESPending = AutomationExecutionStatus' "Pending"

pattern AESPendingApproval :: AutomationExecutionStatus
pattern AESPendingApproval = AutomationExecutionStatus' "PendingApproval"

pattern AESPendingChangeCalendarOverride :: AutomationExecutionStatus
pattern AESPendingChangeCalendarOverride = AutomationExecutionStatus' "PendingChangeCalendarOverride"

pattern AESRejected :: AutomationExecutionStatus
pattern AESRejected = AutomationExecutionStatus' "Rejected"

pattern AESRunbookInProgress :: AutomationExecutionStatus
pattern AESRunbookInProgress = AutomationExecutionStatus' "RunbookInProgress"

pattern AESScheduled :: AutomationExecutionStatus
pattern AESScheduled = AutomationExecutionStatus' "Scheduled"

pattern AESSuccess :: AutomationExecutionStatus
pattern AESSuccess = AutomationExecutionStatus' "Success"

pattern AESTimedOut :: AutomationExecutionStatus
pattern AESTimedOut = AutomationExecutionStatus' "TimedOut"

pattern AESWaiting :: AutomationExecutionStatus
pattern AESWaiting = AutomationExecutionStatus' "Waiting"

{-# COMPLETE
  AESApproved,
  AESCancelled,
  AESCancelling,
  AESChangeCalendarOverrideApproved,
  AESChangeCalendarOverrideRejected,
  AESCompletedWithFailure,
  AESCompletedWithSuccess,
  AESFailed,
  AESInProgress,
  AESPending,
  AESPendingApproval,
  AESPendingChangeCalendarOverride,
  AESRejected,
  AESRunbookInProgress,
  AESScheduled,
  AESSuccess,
  AESTimedOut,
  AESWaiting,
  AutomationExecutionStatus'
  #-}

instance FromText AutomationExecutionStatus where
  parser = (AutomationExecutionStatus' . mk) <$> takeText

instance ToText AutomationExecutionStatus where
  toText (AutomationExecutionStatus' ci) = original ci

instance Hashable AutomationExecutionStatus

instance NFData AutomationExecutionStatus

instance ToByteString AutomationExecutionStatus

instance ToQuery AutomationExecutionStatus

instance ToHeader AutomationExecutionStatus

instance FromJSON AutomationExecutionStatus where
  parseJSON = parseJSONText "AutomationExecutionStatus"
