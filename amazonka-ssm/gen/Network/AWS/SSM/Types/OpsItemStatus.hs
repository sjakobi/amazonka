{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        OpsItemStatusApproved,
        OpsItemStatusCancelled,
        OpsItemStatusCancelling,
        OpsItemStatusChangeCalendarOverrideApproved,
        OpsItemStatusChangeCalendarOverrideRejected,
        OpsItemStatusCompletedWithFailure,
        OpsItemStatusCompletedWithSuccess,
        OpsItemStatusFailed,
        OpsItemStatusInProgress,
        OpsItemStatusOpen,
        OpsItemStatusPending,
        OpsItemStatusPendingApproval,
        OpsItemStatusPendingChangeCalendarOverride,
        OpsItemStatusRejected,
        OpsItemStatusResolved,
        OpsItemStatusRunbookInProgress,
        OpsItemStatusScheduled,
        OpsItemStatusTimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OpsItemStatus = OpsItemStatus'
  { fromOpsItemStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern OpsItemStatusApproved :: OpsItemStatus
pattern OpsItemStatusApproved = OpsItemStatus' "Approved"

pattern OpsItemStatusCancelled :: OpsItemStatus
pattern OpsItemStatusCancelled = OpsItemStatus' "Cancelled"

pattern OpsItemStatusCancelling :: OpsItemStatus
pattern OpsItemStatusCancelling = OpsItemStatus' "Cancelling"

pattern OpsItemStatusChangeCalendarOverrideApproved :: OpsItemStatus
pattern OpsItemStatusChangeCalendarOverrideApproved = OpsItemStatus' "ChangeCalendarOverrideApproved"

pattern OpsItemStatusChangeCalendarOverrideRejected :: OpsItemStatus
pattern OpsItemStatusChangeCalendarOverrideRejected = OpsItemStatus' "ChangeCalendarOverrideRejected"

pattern OpsItemStatusCompletedWithFailure :: OpsItemStatus
pattern OpsItemStatusCompletedWithFailure = OpsItemStatus' "CompletedWithFailure"

pattern OpsItemStatusCompletedWithSuccess :: OpsItemStatus
pattern OpsItemStatusCompletedWithSuccess = OpsItemStatus' "CompletedWithSuccess"

pattern OpsItemStatusFailed :: OpsItemStatus
pattern OpsItemStatusFailed = OpsItemStatus' "Failed"

pattern OpsItemStatusInProgress :: OpsItemStatus
pattern OpsItemStatusInProgress = OpsItemStatus' "InProgress"

pattern OpsItemStatusOpen :: OpsItemStatus
pattern OpsItemStatusOpen = OpsItemStatus' "Open"

pattern OpsItemStatusPending :: OpsItemStatus
pattern OpsItemStatusPending = OpsItemStatus' "Pending"

pattern OpsItemStatusPendingApproval :: OpsItemStatus
pattern OpsItemStatusPendingApproval = OpsItemStatus' "PendingApproval"

pattern OpsItemStatusPendingChangeCalendarOverride :: OpsItemStatus
pattern OpsItemStatusPendingChangeCalendarOverride = OpsItemStatus' "PendingChangeCalendarOverride"

pattern OpsItemStatusRejected :: OpsItemStatus
pattern OpsItemStatusRejected = OpsItemStatus' "Rejected"

pattern OpsItemStatusResolved :: OpsItemStatus
pattern OpsItemStatusResolved = OpsItemStatus' "Resolved"

pattern OpsItemStatusRunbookInProgress :: OpsItemStatus
pattern OpsItemStatusRunbookInProgress = OpsItemStatus' "RunbookInProgress"

pattern OpsItemStatusScheduled :: OpsItemStatus
pattern OpsItemStatusScheduled = OpsItemStatus' "Scheduled"

pattern OpsItemStatusTimedOut :: OpsItemStatus
pattern OpsItemStatusTimedOut = OpsItemStatus' "TimedOut"

{-# COMPLETE
  OpsItemStatusApproved,
  OpsItemStatusCancelled,
  OpsItemStatusCancelling,
  OpsItemStatusChangeCalendarOverrideApproved,
  OpsItemStatusChangeCalendarOverrideRejected,
  OpsItemStatusCompletedWithFailure,
  OpsItemStatusCompletedWithSuccess,
  OpsItemStatusFailed,
  OpsItemStatusInProgress,
  OpsItemStatusOpen,
  OpsItemStatusPending,
  OpsItemStatusPendingApproval,
  OpsItemStatusPendingChangeCalendarOverride,
  OpsItemStatusRejected,
  OpsItemStatusResolved,
  OpsItemStatusRunbookInProgress,
  OpsItemStatusScheduled,
  OpsItemStatusTimedOut,
  OpsItemStatus'
  #-}

instance Prelude.FromText OpsItemStatus where
  parser = OpsItemStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText OpsItemStatus where
  toText (OpsItemStatus' x) = x

instance Prelude.Hashable OpsItemStatus

instance Prelude.NFData OpsItemStatus

instance Prelude.ToByteString OpsItemStatus

instance Prelude.ToQuery OpsItemStatus

instance Prelude.ToHeader OpsItemStatus

instance Prelude.ToJSON OpsItemStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OpsItemStatus where
  parseJSON = Prelude.parseJSONText "OpsItemStatus"
