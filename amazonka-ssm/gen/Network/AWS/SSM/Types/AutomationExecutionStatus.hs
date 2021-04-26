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
-- Module      : Network.AWS.SSM.Types.AutomationExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AutomationExecutionStatus
  ( AutomationExecutionStatus
      ( ..,
        AutomationExecutionStatusApproved,
        AutomationExecutionStatusCancelled,
        AutomationExecutionStatusCancelling,
        AutomationExecutionStatusChangeCalendarOverrideApproved,
        AutomationExecutionStatusChangeCalendarOverrideRejected,
        AutomationExecutionStatusCompletedWithFailure,
        AutomationExecutionStatusCompletedWithSuccess,
        AutomationExecutionStatusFailed,
        AutomationExecutionStatusInProgress,
        AutomationExecutionStatusPending,
        AutomationExecutionStatusPendingApproval,
        AutomationExecutionStatusPendingChangeCalendarOverride,
        AutomationExecutionStatusRejected,
        AutomationExecutionStatusRunbookInProgress,
        AutomationExecutionStatusScheduled,
        AutomationExecutionStatusSuccess,
        AutomationExecutionStatusTimedOut,
        AutomationExecutionStatusWaiting
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutomationExecutionStatus = AutomationExecutionStatus'
  { fromAutomationExecutionStatus ::
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

pattern AutomationExecutionStatusApproved :: AutomationExecutionStatus
pattern AutomationExecutionStatusApproved = AutomationExecutionStatus' "Approved"

pattern AutomationExecutionStatusCancelled :: AutomationExecutionStatus
pattern AutomationExecutionStatusCancelled = AutomationExecutionStatus' "Cancelled"

pattern AutomationExecutionStatusCancelling :: AutomationExecutionStatus
pattern AutomationExecutionStatusCancelling = AutomationExecutionStatus' "Cancelling"

pattern AutomationExecutionStatusChangeCalendarOverrideApproved :: AutomationExecutionStatus
pattern AutomationExecutionStatusChangeCalendarOverrideApproved = AutomationExecutionStatus' "ChangeCalendarOverrideApproved"

pattern AutomationExecutionStatusChangeCalendarOverrideRejected :: AutomationExecutionStatus
pattern AutomationExecutionStatusChangeCalendarOverrideRejected = AutomationExecutionStatus' "ChangeCalendarOverrideRejected"

pattern AutomationExecutionStatusCompletedWithFailure :: AutomationExecutionStatus
pattern AutomationExecutionStatusCompletedWithFailure = AutomationExecutionStatus' "CompletedWithFailure"

pattern AutomationExecutionStatusCompletedWithSuccess :: AutomationExecutionStatus
pattern AutomationExecutionStatusCompletedWithSuccess = AutomationExecutionStatus' "CompletedWithSuccess"

pattern AutomationExecutionStatusFailed :: AutomationExecutionStatus
pattern AutomationExecutionStatusFailed = AutomationExecutionStatus' "Failed"

pattern AutomationExecutionStatusInProgress :: AutomationExecutionStatus
pattern AutomationExecutionStatusInProgress = AutomationExecutionStatus' "InProgress"

pattern AutomationExecutionStatusPending :: AutomationExecutionStatus
pattern AutomationExecutionStatusPending = AutomationExecutionStatus' "Pending"

pattern AutomationExecutionStatusPendingApproval :: AutomationExecutionStatus
pattern AutomationExecutionStatusPendingApproval = AutomationExecutionStatus' "PendingApproval"

pattern AutomationExecutionStatusPendingChangeCalendarOverride :: AutomationExecutionStatus
pattern AutomationExecutionStatusPendingChangeCalendarOverride = AutomationExecutionStatus' "PendingChangeCalendarOverride"

pattern AutomationExecutionStatusRejected :: AutomationExecutionStatus
pattern AutomationExecutionStatusRejected = AutomationExecutionStatus' "Rejected"

pattern AutomationExecutionStatusRunbookInProgress :: AutomationExecutionStatus
pattern AutomationExecutionStatusRunbookInProgress = AutomationExecutionStatus' "RunbookInProgress"

pattern AutomationExecutionStatusScheduled :: AutomationExecutionStatus
pattern AutomationExecutionStatusScheduled = AutomationExecutionStatus' "Scheduled"

pattern AutomationExecutionStatusSuccess :: AutomationExecutionStatus
pattern AutomationExecutionStatusSuccess = AutomationExecutionStatus' "Success"

pattern AutomationExecutionStatusTimedOut :: AutomationExecutionStatus
pattern AutomationExecutionStatusTimedOut = AutomationExecutionStatus' "TimedOut"

pattern AutomationExecutionStatusWaiting :: AutomationExecutionStatus
pattern AutomationExecutionStatusWaiting = AutomationExecutionStatus' "Waiting"

{-# COMPLETE
  AutomationExecutionStatusApproved,
  AutomationExecutionStatusCancelled,
  AutomationExecutionStatusCancelling,
  AutomationExecutionStatusChangeCalendarOverrideApproved,
  AutomationExecutionStatusChangeCalendarOverrideRejected,
  AutomationExecutionStatusCompletedWithFailure,
  AutomationExecutionStatusCompletedWithSuccess,
  AutomationExecutionStatusFailed,
  AutomationExecutionStatusInProgress,
  AutomationExecutionStatusPending,
  AutomationExecutionStatusPendingApproval,
  AutomationExecutionStatusPendingChangeCalendarOverride,
  AutomationExecutionStatusRejected,
  AutomationExecutionStatusRunbookInProgress,
  AutomationExecutionStatusScheduled,
  AutomationExecutionStatusSuccess,
  AutomationExecutionStatusTimedOut,
  AutomationExecutionStatusWaiting,
  AutomationExecutionStatus'
  #-}

instance Prelude.FromText AutomationExecutionStatus where
  parser = AutomationExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutomationExecutionStatus where
  toText (AutomationExecutionStatus' x) = x

instance Prelude.Hashable AutomationExecutionStatus

instance Prelude.NFData AutomationExecutionStatus

instance Prelude.ToByteString AutomationExecutionStatus

instance Prelude.ToQuery AutomationExecutionStatus

instance Prelude.ToHeader AutomationExecutionStatus

instance Prelude.FromJSON AutomationExecutionStatus where
  parseJSON = Prelude.parseJSONText "AutomationExecutionStatus"
