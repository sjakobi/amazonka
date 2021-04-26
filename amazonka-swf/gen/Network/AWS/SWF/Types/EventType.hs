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
-- Module      : Network.AWS.SWF.Types.EventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.EventType
  ( EventType
      ( ..,
        EventTypeActivityTaskCancelRequested,
        EventTypeActivityTaskCanceled,
        EventTypeActivityTaskCompleted,
        EventTypeActivityTaskFailed,
        EventTypeActivityTaskScheduled,
        EventTypeActivityTaskStarted,
        EventTypeActivityTaskTimedOut,
        EventTypeCancelTimerFailed,
        EventTypeCancelWorkflowExecutionFailed,
        EventTypeChildWorkflowExecutionCanceled,
        EventTypeChildWorkflowExecutionCompleted,
        EventTypeChildWorkflowExecutionFailed,
        EventTypeChildWorkflowExecutionStarted,
        EventTypeChildWorkflowExecutionTerminated,
        EventTypeChildWorkflowExecutionTimedOut,
        EventTypeCompleteWorkflowExecutionFailed,
        EventTypeContinueAsNewWorkflowExecutionFailed,
        EventTypeDecisionTaskCompleted,
        EventTypeDecisionTaskScheduled,
        EventTypeDecisionTaskStarted,
        EventTypeDecisionTaskTimedOut,
        EventTypeExternalWorkflowExecutionCancelRequested,
        EventTypeExternalWorkflowExecutionSignaled,
        EventTypeFailWorkflowExecutionFailed,
        EventTypeLambdaFunctionCompleted,
        EventTypeLambdaFunctionFailed,
        EventTypeLambdaFunctionScheduled,
        EventTypeLambdaFunctionStarted,
        EventTypeLambdaFunctionTimedOut,
        EventTypeMarkerRecorded,
        EventTypeRecordMarkerFailed,
        EventTypeRequestCancelActivityTaskFailed,
        EventTypeRequestCancelExternalWorkflowExecutionFailed,
        EventTypeRequestCancelExternalWorkflowExecutionInitiated,
        EventTypeScheduleActivityTaskFailed,
        EventTypeScheduleLambdaFunctionFailed,
        EventTypeSignalExternalWorkflowExecutionFailed,
        EventTypeSignalExternalWorkflowExecutionInitiated,
        EventTypeStartChildWorkflowExecutionFailed,
        EventTypeStartChildWorkflowExecutionInitiated,
        EventTypeStartLambdaFunctionFailed,
        EventTypeStartTimerFailed,
        EventTypeTimerCanceled,
        EventTypeTimerFired,
        EventTypeTimerStarted,
        EventTypeWorkflowExecutionCancelRequested,
        EventTypeWorkflowExecutionCanceled,
        EventTypeWorkflowExecutionCompleted,
        EventTypeWorkflowExecutionContinuedAsNew,
        EventTypeWorkflowExecutionFailed,
        EventTypeWorkflowExecutionSignaled,
        EventTypeWorkflowExecutionStarted,
        EventTypeWorkflowExecutionTerminated,
        EventTypeWorkflowExecutionTimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventType = EventType'
  { fromEventType ::
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

pattern EventTypeActivityTaskCancelRequested :: EventType
pattern EventTypeActivityTaskCancelRequested = EventType' "ActivityTaskCancelRequested"

pattern EventTypeActivityTaskCanceled :: EventType
pattern EventTypeActivityTaskCanceled = EventType' "ActivityTaskCanceled"

pattern EventTypeActivityTaskCompleted :: EventType
pattern EventTypeActivityTaskCompleted = EventType' "ActivityTaskCompleted"

pattern EventTypeActivityTaskFailed :: EventType
pattern EventTypeActivityTaskFailed = EventType' "ActivityTaskFailed"

pattern EventTypeActivityTaskScheduled :: EventType
pattern EventTypeActivityTaskScheduled = EventType' "ActivityTaskScheduled"

pattern EventTypeActivityTaskStarted :: EventType
pattern EventTypeActivityTaskStarted = EventType' "ActivityTaskStarted"

pattern EventTypeActivityTaskTimedOut :: EventType
pattern EventTypeActivityTaskTimedOut = EventType' "ActivityTaskTimedOut"

pattern EventTypeCancelTimerFailed :: EventType
pattern EventTypeCancelTimerFailed = EventType' "CancelTimerFailed"

pattern EventTypeCancelWorkflowExecutionFailed :: EventType
pattern EventTypeCancelWorkflowExecutionFailed = EventType' "CancelWorkflowExecutionFailed"

pattern EventTypeChildWorkflowExecutionCanceled :: EventType
pattern EventTypeChildWorkflowExecutionCanceled = EventType' "ChildWorkflowExecutionCanceled"

pattern EventTypeChildWorkflowExecutionCompleted :: EventType
pattern EventTypeChildWorkflowExecutionCompleted = EventType' "ChildWorkflowExecutionCompleted"

pattern EventTypeChildWorkflowExecutionFailed :: EventType
pattern EventTypeChildWorkflowExecutionFailed = EventType' "ChildWorkflowExecutionFailed"

pattern EventTypeChildWorkflowExecutionStarted :: EventType
pattern EventTypeChildWorkflowExecutionStarted = EventType' "ChildWorkflowExecutionStarted"

pattern EventTypeChildWorkflowExecutionTerminated :: EventType
pattern EventTypeChildWorkflowExecutionTerminated = EventType' "ChildWorkflowExecutionTerminated"

pattern EventTypeChildWorkflowExecutionTimedOut :: EventType
pattern EventTypeChildWorkflowExecutionTimedOut = EventType' "ChildWorkflowExecutionTimedOut"

pattern EventTypeCompleteWorkflowExecutionFailed :: EventType
pattern EventTypeCompleteWorkflowExecutionFailed = EventType' "CompleteWorkflowExecutionFailed"

pattern EventTypeContinueAsNewWorkflowExecutionFailed :: EventType
pattern EventTypeContinueAsNewWorkflowExecutionFailed = EventType' "ContinueAsNewWorkflowExecutionFailed"

pattern EventTypeDecisionTaskCompleted :: EventType
pattern EventTypeDecisionTaskCompleted = EventType' "DecisionTaskCompleted"

pattern EventTypeDecisionTaskScheduled :: EventType
pattern EventTypeDecisionTaskScheduled = EventType' "DecisionTaskScheduled"

pattern EventTypeDecisionTaskStarted :: EventType
pattern EventTypeDecisionTaskStarted = EventType' "DecisionTaskStarted"

pattern EventTypeDecisionTaskTimedOut :: EventType
pattern EventTypeDecisionTaskTimedOut = EventType' "DecisionTaskTimedOut"

pattern EventTypeExternalWorkflowExecutionCancelRequested :: EventType
pattern EventTypeExternalWorkflowExecutionCancelRequested = EventType' "ExternalWorkflowExecutionCancelRequested"

pattern EventTypeExternalWorkflowExecutionSignaled :: EventType
pattern EventTypeExternalWorkflowExecutionSignaled = EventType' "ExternalWorkflowExecutionSignaled"

pattern EventTypeFailWorkflowExecutionFailed :: EventType
pattern EventTypeFailWorkflowExecutionFailed = EventType' "FailWorkflowExecutionFailed"

pattern EventTypeLambdaFunctionCompleted :: EventType
pattern EventTypeLambdaFunctionCompleted = EventType' "LambdaFunctionCompleted"

pattern EventTypeLambdaFunctionFailed :: EventType
pattern EventTypeLambdaFunctionFailed = EventType' "LambdaFunctionFailed"

pattern EventTypeLambdaFunctionScheduled :: EventType
pattern EventTypeLambdaFunctionScheduled = EventType' "LambdaFunctionScheduled"

pattern EventTypeLambdaFunctionStarted :: EventType
pattern EventTypeLambdaFunctionStarted = EventType' "LambdaFunctionStarted"

pattern EventTypeLambdaFunctionTimedOut :: EventType
pattern EventTypeLambdaFunctionTimedOut = EventType' "LambdaFunctionTimedOut"

pattern EventTypeMarkerRecorded :: EventType
pattern EventTypeMarkerRecorded = EventType' "MarkerRecorded"

pattern EventTypeRecordMarkerFailed :: EventType
pattern EventTypeRecordMarkerFailed = EventType' "RecordMarkerFailed"

pattern EventTypeRequestCancelActivityTaskFailed :: EventType
pattern EventTypeRequestCancelActivityTaskFailed = EventType' "RequestCancelActivityTaskFailed"

pattern EventTypeRequestCancelExternalWorkflowExecutionFailed :: EventType
pattern EventTypeRequestCancelExternalWorkflowExecutionFailed = EventType' "RequestCancelExternalWorkflowExecutionFailed"

pattern EventTypeRequestCancelExternalWorkflowExecutionInitiated :: EventType
pattern EventTypeRequestCancelExternalWorkflowExecutionInitiated = EventType' "RequestCancelExternalWorkflowExecutionInitiated"

pattern EventTypeScheduleActivityTaskFailed :: EventType
pattern EventTypeScheduleActivityTaskFailed = EventType' "ScheduleActivityTaskFailed"

pattern EventTypeScheduleLambdaFunctionFailed :: EventType
pattern EventTypeScheduleLambdaFunctionFailed = EventType' "ScheduleLambdaFunctionFailed"

pattern EventTypeSignalExternalWorkflowExecutionFailed :: EventType
pattern EventTypeSignalExternalWorkflowExecutionFailed = EventType' "SignalExternalWorkflowExecutionFailed"

pattern EventTypeSignalExternalWorkflowExecutionInitiated :: EventType
pattern EventTypeSignalExternalWorkflowExecutionInitiated = EventType' "SignalExternalWorkflowExecutionInitiated"

pattern EventTypeStartChildWorkflowExecutionFailed :: EventType
pattern EventTypeStartChildWorkflowExecutionFailed = EventType' "StartChildWorkflowExecutionFailed"

pattern EventTypeStartChildWorkflowExecutionInitiated :: EventType
pattern EventTypeStartChildWorkflowExecutionInitiated = EventType' "StartChildWorkflowExecutionInitiated"

pattern EventTypeStartLambdaFunctionFailed :: EventType
pattern EventTypeStartLambdaFunctionFailed = EventType' "StartLambdaFunctionFailed"

pattern EventTypeStartTimerFailed :: EventType
pattern EventTypeStartTimerFailed = EventType' "StartTimerFailed"

pattern EventTypeTimerCanceled :: EventType
pattern EventTypeTimerCanceled = EventType' "TimerCanceled"

pattern EventTypeTimerFired :: EventType
pattern EventTypeTimerFired = EventType' "TimerFired"

pattern EventTypeTimerStarted :: EventType
pattern EventTypeTimerStarted = EventType' "TimerStarted"

pattern EventTypeWorkflowExecutionCancelRequested :: EventType
pattern EventTypeWorkflowExecutionCancelRequested = EventType' "WorkflowExecutionCancelRequested"

pattern EventTypeWorkflowExecutionCanceled :: EventType
pattern EventTypeWorkflowExecutionCanceled = EventType' "WorkflowExecutionCanceled"

pattern EventTypeWorkflowExecutionCompleted :: EventType
pattern EventTypeWorkflowExecutionCompleted = EventType' "WorkflowExecutionCompleted"

pattern EventTypeWorkflowExecutionContinuedAsNew :: EventType
pattern EventTypeWorkflowExecutionContinuedAsNew = EventType' "WorkflowExecutionContinuedAsNew"

pattern EventTypeWorkflowExecutionFailed :: EventType
pattern EventTypeWorkflowExecutionFailed = EventType' "WorkflowExecutionFailed"

pattern EventTypeWorkflowExecutionSignaled :: EventType
pattern EventTypeWorkflowExecutionSignaled = EventType' "WorkflowExecutionSignaled"

pattern EventTypeWorkflowExecutionStarted :: EventType
pattern EventTypeWorkflowExecutionStarted = EventType' "WorkflowExecutionStarted"

pattern EventTypeWorkflowExecutionTerminated :: EventType
pattern EventTypeWorkflowExecutionTerminated = EventType' "WorkflowExecutionTerminated"

pattern EventTypeWorkflowExecutionTimedOut :: EventType
pattern EventTypeWorkflowExecutionTimedOut = EventType' "WorkflowExecutionTimedOut"

{-# COMPLETE
  EventTypeActivityTaskCancelRequested,
  EventTypeActivityTaskCanceled,
  EventTypeActivityTaskCompleted,
  EventTypeActivityTaskFailed,
  EventTypeActivityTaskScheduled,
  EventTypeActivityTaskStarted,
  EventTypeActivityTaskTimedOut,
  EventTypeCancelTimerFailed,
  EventTypeCancelWorkflowExecutionFailed,
  EventTypeChildWorkflowExecutionCanceled,
  EventTypeChildWorkflowExecutionCompleted,
  EventTypeChildWorkflowExecutionFailed,
  EventTypeChildWorkflowExecutionStarted,
  EventTypeChildWorkflowExecutionTerminated,
  EventTypeChildWorkflowExecutionTimedOut,
  EventTypeCompleteWorkflowExecutionFailed,
  EventTypeContinueAsNewWorkflowExecutionFailed,
  EventTypeDecisionTaskCompleted,
  EventTypeDecisionTaskScheduled,
  EventTypeDecisionTaskStarted,
  EventTypeDecisionTaskTimedOut,
  EventTypeExternalWorkflowExecutionCancelRequested,
  EventTypeExternalWorkflowExecutionSignaled,
  EventTypeFailWorkflowExecutionFailed,
  EventTypeLambdaFunctionCompleted,
  EventTypeLambdaFunctionFailed,
  EventTypeLambdaFunctionScheduled,
  EventTypeLambdaFunctionStarted,
  EventTypeLambdaFunctionTimedOut,
  EventTypeMarkerRecorded,
  EventTypeRecordMarkerFailed,
  EventTypeRequestCancelActivityTaskFailed,
  EventTypeRequestCancelExternalWorkflowExecutionFailed,
  EventTypeRequestCancelExternalWorkflowExecutionInitiated,
  EventTypeScheduleActivityTaskFailed,
  EventTypeScheduleLambdaFunctionFailed,
  EventTypeSignalExternalWorkflowExecutionFailed,
  EventTypeSignalExternalWorkflowExecutionInitiated,
  EventTypeStartChildWorkflowExecutionFailed,
  EventTypeStartChildWorkflowExecutionInitiated,
  EventTypeStartLambdaFunctionFailed,
  EventTypeStartTimerFailed,
  EventTypeTimerCanceled,
  EventTypeTimerFired,
  EventTypeTimerStarted,
  EventTypeWorkflowExecutionCancelRequested,
  EventTypeWorkflowExecutionCanceled,
  EventTypeWorkflowExecutionCompleted,
  EventTypeWorkflowExecutionContinuedAsNew,
  EventTypeWorkflowExecutionFailed,
  EventTypeWorkflowExecutionSignaled,
  EventTypeWorkflowExecutionStarted,
  EventTypeWorkflowExecutionTerminated,
  EventTypeWorkflowExecutionTimedOut,
  EventType'
  #-}

instance Prelude.FromText EventType where
  parser = EventType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventType where
  toText (EventType' x) = x

instance Prelude.Hashable EventType

instance Prelude.NFData EventType

instance Prelude.ToByteString EventType

instance Prelude.ToQuery EventType

instance Prelude.ToHeader EventType

instance Prelude.FromJSON EventType where
  parseJSON = Prelude.parseJSONText "EventType"
