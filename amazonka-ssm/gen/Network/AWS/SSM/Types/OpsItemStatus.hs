{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsItemStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemStatus
  ( OpsItemStatus
      ( ..,
        OISApproved,
        OISCancelled,
        OISCancelling,
        OISChangeCalendarOverrideApproved,
        OISChangeCalendarOverrideRejected,
        OISCompletedWithFailure,
        OISCompletedWithSuccess,
        OISFailed,
        OISInProgress,
        OISOpen,
        OISPending,
        OISPendingApproval,
        OISPendingChangeCalendarOverride,
        OISRejected,
        OISResolved,
        OISRunbookInProgress,
        OISScheduled,
        OISTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OpsItemStatus = OpsItemStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OISApproved :: OpsItemStatus
pattern OISApproved = OpsItemStatus' "Approved"

pattern OISCancelled :: OpsItemStatus
pattern OISCancelled = OpsItemStatus' "Cancelled"

pattern OISCancelling :: OpsItemStatus
pattern OISCancelling = OpsItemStatus' "Cancelling"

pattern OISChangeCalendarOverrideApproved :: OpsItemStatus
pattern OISChangeCalendarOverrideApproved = OpsItemStatus' "ChangeCalendarOverrideApproved"

pattern OISChangeCalendarOverrideRejected :: OpsItemStatus
pattern OISChangeCalendarOverrideRejected = OpsItemStatus' "ChangeCalendarOverrideRejected"

pattern OISCompletedWithFailure :: OpsItemStatus
pattern OISCompletedWithFailure = OpsItemStatus' "CompletedWithFailure"

pattern OISCompletedWithSuccess :: OpsItemStatus
pattern OISCompletedWithSuccess = OpsItemStatus' "CompletedWithSuccess"

pattern OISFailed :: OpsItemStatus
pattern OISFailed = OpsItemStatus' "Failed"

pattern OISInProgress :: OpsItemStatus
pattern OISInProgress = OpsItemStatus' "InProgress"

pattern OISOpen :: OpsItemStatus
pattern OISOpen = OpsItemStatus' "Open"

pattern OISPending :: OpsItemStatus
pattern OISPending = OpsItemStatus' "Pending"

pattern OISPendingApproval :: OpsItemStatus
pattern OISPendingApproval = OpsItemStatus' "PendingApproval"

pattern OISPendingChangeCalendarOverride :: OpsItemStatus
pattern OISPendingChangeCalendarOverride = OpsItemStatus' "PendingChangeCalendarOverride"

pattern OISRejected :: OpsItemStatus
pattern OISRejected = OpsItemStatus' "Rejected"

pattern OISResolved :: OpsItemStatus
pattern OISResolved = OpsItemStatus' "Resolved"

pattern OISRunbookInProgress :: OpsItemStatus
pattern OISRunbookInProgress = OpsItemStatus' "RunbookInProgress"

pattern OISScheduled :: OpsItemStatus
pattern OISScheduled = OpsItemStatus' "Scheduled"

pattern OISTimedOut :: OpsItemStatus
pattern OISTimedOut = OpsItemStatus' "TimedOut"

{-# COMPLETE
  OISApproved,
  OISCancelled,
  OISCancelling,
  OISChangeCalendarOverrideApproved,
  OISChangeCalendarOverrideRejected,
  OISCompletedWithFailure,
  OISCompletedWithSuccess,
  OISFailed,
  OISInProgress,
  OISOpen,
  OISPending,
  OISPendingApproval,
  OISPendingChangeCalendarOverride,
  OISRejected,
  OISResolved,
  OISRunbookInProgress,
  OISScheduled,
  OISTimedOut,
  OpsItemStatus'
  #-}

instance FromText OpsItemStatus where
  parser = (OpsItemStatus' . mk) <$> takeText

instance ToText OpsItemStatus where
  toText (OpsItemStatus' ci) = original ci

instance Hashable OpsItemStatus

instance NFData OpsItemStatus

instance ToByteString OpsItemStatus

instance ToQuery OpsItemStatus

instance ToHeader OpsItemStatus

instance ToJSON OpsItemStatus where
  toJSON = toJSONText

instance FromJSON OpsItemStatus where
  parseJSON = parseJSONText "OpsItemStatus"
