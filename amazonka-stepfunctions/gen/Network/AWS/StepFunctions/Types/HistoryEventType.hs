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
-- Module      : Network.AWS.StepFunctions.Types.HistoryEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.HistoryEventType
  ( HistoryEventType
      ( ..,
        HistoryEventTypeActivityFailed,
        HistoryEventTypeActivityScheduleFailed,
        HistoryEventTypeActivityScheduled,
        HistoryEventTypeActivityStarted,
        HistoryEventTypeActivitySucceeded,
        HistoryEventTypeActivityTimedOut,
        HistoryEventTypeChoiceStateEntered,
        HistoryEventTypeChoiceStateExited,
        HistoryEventTypeExecutionAborted,
        HistoryEventTypeExecutionFailed,
        HistoryEventTypeExecutionStarted,
        HistoryEventTypeExecutionSucceeded,
        HistoryEventTypeExecutionTimedOut,
        HistoryEventTypeFailStateEntered,
        HistoryEventTypeLambdaFunctionFailed,
        HistoryEventTypeLambdaFunctionScheduleFailed,
        HistoryEventTypeLambdaFunctionScheduled,
        HistoryEventTypeLambdaFunctionStartFailed,
        HistoryEventTypeLambdaFunctionStarted,
        HistoryEventTypeLambdaFunctionSucceeded,
        HistoryEventTypeLambdaFunctionTimedOut,
        HistoryEventTypeMapIterationAborted,
        HistoryEventTypeMapIterationFailed,
        HistoryEventTypeMapIterationStarted,
        HistoryEventTypeMapIterationSucceeded,
        HistoryEventTypeMapStateAborted,
        HistoryEventTypeMapStateEntered,
        HistoryEventTypeMapStateExited,
        HistoryEventTypeMapStateFailed,
        HistoryEventTypeMapStateStarted,
        HistoryEventTypeMapStateSucceeded,
        HistoryEventTypeParallelStateAborted,
        HistoryEventTypeParallelStateEntered,
        HistoryEventTypeParallelStateExited,
        HistoryEventTypeParallelStateFailed,
        HistoryEventTypeParallelStateStarted,
        HistoryEventTypeParallelStateSucceeded,
        HistoryEventTypePassStateEntered,
        HistoryEventTypePassStateExited,
        HistoryEventTypeSucceedStateEntered,
        HistoryEventTypeSucceedStateExited,
        HistoryEventTypeTaskFailed,
        HistoryEventTypeTaskScheduled,
        HistoryEventTypeTaskStartFailed,
        HistoryEventTypeTaskStarted,
        HistoryEventTypeTaskStateAborted,
        HistoryEventTypeTaskStateEntered,
        HistoryEventTypeTaskStateExited,
        HistoryEventTypeTaskSubmitFailed,
        HistoryEventTypeTaskSubmitted,
        HistoryEventTypeTaskSucceeded,
        HistoryEventTypeTaskTimedOut,
        HistoryEventTypeWaitStateAborted,
        HistoryEventTypeWaitStateEntered,
        HistoryEventTypeWaitStateExited
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HistoryEventType = HistoryEventType'
  { fromHistoryEventType ::
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

pattern HistoryEventTypeActivityFailed :: HistoryEventType
pattern HistoryEventTypeActivityFailed = HistoryEventType' "ActivityFailed"

pattern HistoryEventTypeActivityScheduleFailed :: HistoryEventType
pattern HistoryEventTypeActivityScheduleFailed = HistoryEventType' "ActivityScheduleFailed"

pattern HistoryEventTypeActivityScheduled :: HistoryEventType
pattern HistoryEventTypeActivityScheduled = HistoryEventType' "ActivityScheduled"

pattern HistoryEventTypeActivityStarted :: HistoryEventType
pattern HistoryEventTypeActivityStarted = HistoryEventType' "ActivityStarted"

pattern HistoryEventTypeActivitySucceeded :: HistoryEventType
pattern HistoryEventTypeActivitySucceeded = HistoryEventType' "ActivitySucceeded"

pattern HistoryEventTypeActivityTimedOut :: HistoryEventType
pattern HistoryEventTypeActivityTimedOut = HistoryEventType' "ActivityTimedOut"

pattern HistoryEventTypeChoiceStateEntered :: HistoryEventType
pattern HistoryEventTypeChoiceStateEntered = HistoryEventType' "ChoiceStateEntered"

pattern HistoryEventTypeChoiceStateExited :: HistoryEventType
pattern HistoryEventTypeChoiceStateExited = HistoryEventType' "ChoiceStateExited"

pattern HistoryEventTypeExecutionAborted :: HistoryEventType
pattern HistoryEventTypeExecutionAborted = HistoryEventType' "ExecutionAborted"

pattern HistoryEventTypeExecutionFailed :: HistoryEventType
pattern HistoryEventTypeExecutionFailed = HistoryEventType' "ExecutionFailed"

pattern HistoryEventTypeExecutionStarted :: HistoryEventType
pattern HistoryEventTypeExecutionStarted = HistoryEventType' "ExecutionStarted"

pattern HistoryEventTypeExecutionSucceeded :: HistoryEventType
pattern HistoryEventTypeExecutionSucceeded = HistoryEventType' "ExecutionSucceeded"

pattern HistoryEventTypeExecutionTimedOut :: HistoryEventType
pattern HistoryEventTypeExecutionTimedOut = HistoryEventType' "ExecutionTimedOut"

pattern HistoryEventTypeFailStateEntered :: HistoryEventType
pattern HistoryEventTypeFailStateEntered = HistoryEventType' "FailStateEntered"

pattern HistoryEventTypeLambdaFunctionFailed :: HistoryEventType
pattern HistoryEventTypeLambdaFunctionFailed = HistoryEventType' "LambdaFunctionFailed"

pattern HistoryEventTypeLambdaFunctionScheduleFailed :: HistoryEventType
pattern HistoryEventTypeLambdaFunctionScheduleFailed = HistoryEventType' "LambdaFunctionScheduleFailed"

pattern HistoryEventTypeLambdaFunctionScheduled :: HistoryEventType
pattern HistoryEventTypeLambdaFunctionScheduled = HistoryEventType' "LambdaFunctionScheduled"

pattern HistoryEventTypeLambdaFunctionStartFailed :: HistoryEventType
pattern HistoryEventTypeLambdaFunctionStartFailed = HistoryEventType' "LambdaFunctionStartFailed"

pattern HistoryEventTypeLambdaFunctionStarted :: HistoryEventType
pattern HistoryEventTypeLambdaFunctionStarted = HistoryEventType' "LambdaFunctionStarted"

pattern HistoryEventTypeLambdaFunctionSucceeded :: HistoryEventType
pattern HistoryEventTypeLambdaFunctionSucceeded = HistoryEventType' "LambdaFunctionSucceeded"

pattern HistoryEventTypeLambdaFunctionTimedOut :: HistoryEventType
pattern HistoryEventTypeLambdaFunctionTimedOut = HistoryEventType' "LambdaFunctionTimedOut"

pattern HistoryEventTypeMapIterationAborted :: HistoryEventType
pattern HistoryEventTypeMapIterationAborted = HistoryEventType' "MapIterationAborted"

pattern HistoryEventTypeMapIterationFailed :: HistoryEventType
pattern HistoryEventTypeMapIterationFailed = HistoryEventType' "MapIterationFailed"

pattern HistoryEventTypeMapIterationStarted :: HistoryEventType
pattern HistoryEventTypeMapIterationStarted = HistoryEventType' "MapIterationStarted"

pattern HistoryEventTypeMapIterationSucceeded :: HistoryEventType
pattern HistoryEventTypeMapIterationSucceeded = HistoryEventType' "MapIterationSucceeded"

pattern HistoryEventTypeMapStateAborted :: HistoryEventType
pattern HistoryEventTypeMapStateAborted = HistoryEventType' "MapStateAborted"

pattern HistoryEventTypeMapStateEntered :: HistoryEventType
pattern HistoryEventTypeMapStateEntered = HistoryEventType' "MapStateEntered"

pattern HistoryEventTypeMapStateExited :: HistoryEventType
pattern HistoryEventTypeMapStateExited = HistoryEventType' "MapStateExited"

pattern HistoryEventTypeMapStateFailed :: HistoryEventType
pattern HistoryEventTypeMapStateFailed = HistoryEventType' "MapStateFailed"

pattern HistoryEventTypeMapStateStarted :: HistoryEventType
pattern HistoryEventTypeMapStateStarted = HistoryEventType' "MapStateStarted"

pattern HistoryEventTypeMapStateSucceeded :: HistoryEventType
pattern HistoryEventTypeMapStateSucceeded = HistoryEventType' "MapStateSucceeded"

pattern HistoryEventTypeParallelStateAborted :: HistoryEventType
pattern HistoryEventTypeParallelStateAborted = HistoryEventType' "ParallelStateAborted"

pattern HistoryEventTypeParallelStateEntered :: HistoryEventType
pattern HistoryEventTypeParallelStateEntered = HistoryEventType' "ParallelStateEntered"

pattern HistoryEventTypeParallelStateExited :: HistoryEventType
pattern HistoryEventTypeParallelStateExited = HistoryEventType' "ParallelStateExited"

pattern HistoryEventTypeParallelStateFailed :: HistoryEventType
pattern HistoryEventTypeParallelStateFailed = HistoryEventType' "ParallelStateFailed"

pattern HistoryEventTypeParallelStateStarted :: HistoryEventType
pattern HistoryEventTypeParallelStateStarted = HistoryEventType' "ParallelStateStarted"

pattern HistoryEventTypeParallelStateSucceeded :: HistoryEventType
pattern HistoryEventTypeParallelStateSucceeded = HistoryEventType' "ParallelStateSucceeded"

pattern HistoryEventTypePassStateEntered :: HistoryEventType
pattern HistoryEventTypePassStateEntered = HistoryEventType' "PassStateEntered"

pattern HistoryEventTypePassStateExited :: HistoryEventType
pattern HistoryEventTypePassStateExited = HistoryEventType' "PassStateExited"

pattern HistoryEventTypeSucceedStateEntered :: HistoryEventType
pattern HistoryEventTypeSucceedStateEntered = HistoryEventType' "SucceedStateEntered"

pattern HistoryEventTypeSucceedStateExited :: HistoryEventType
pattern HistoryEventTypeSucceedStateExited = HistoryEventType' "SucceedStateExited"

pattern HistoryEventTypeTaskFailed :: HistoryEventType
pattern HistoryEventTypeTaskFailed = HistoryEventType' "TaskFailed"

pattern HistoryEventTypeTaskScheduled :: HistoryEventType
pattern HistoryEventTypeTaskScheduled = HistoryEventType' "TaskScheduled"

pattern HistoryEventTypeTaskStartFailed :: HistoryEventType
pattern HistoryEventTypeTaskStartFailed = HistoryEventType' "TaskStartFailed"

pattern HistoryEventTypeTaskStarted :: HistoryEventType
pattern HistoryEventTypeTaskStarted = HistoryEventType' "TaskStarted"

pattern HistoryEventTypeTaskStateAborted :: HistoryEventType
pattern HistoryEventTypeTaskStateAborted = HistoryEventType' "TaskStateAborted"

pattern HistoryEventTypeTaskStateEntered :: HistoryEventType
pattern HistoryEventTypeTaskStateEntered = HistoryEventType' "TaskStateEntered"

pattern HistoryEventTypeTaskStateExited :: HistoryEventType
pattern HistoryEventTypeTaskStateExited = HistoryEventType' "TaskStateExited"

pattern HistoryEventTypeTaskSubmitFailed :: HistoryEventType
pattern HistoryEventTypeTaskSubmitFailed = HistoryEventType' "TaskSubmitFailed"

pattern HistoryEventTypeTaskSubmitted :: HistoryEventType
pattern HistoryEventTypeTaskSubmitted = HistoryEventType' "TaskSubmitted"

pattern HistoryEventTypeTaskSucceeded :: HistoryEventType
pattern HistoryEventTypeTaskSucceeded = HistoryEventType' "TaskSucceeded"

pattern HistoryEventTypeTaskTimedOut :: HistoryEventType
pattern HistoryEventTypeTaskTimedOut = HistoryEventType' "TaskTimedOut"

pattern HistoryEventTypeWaitStateAborted :: HistoryEventType
pattern HistoryEventTypeWaitStateAborted = HistoryEventType' "WaitStateAborted"

pattern HistoryEventTypeWaitStateEntered :: HistoryEventType
pattern HistoryEventTypeWaitStateEntered = HistoryEventType' "WaitStateEntered"

pattern HistoryEventTypeWaitStateExited :: HistoryEventType
pattern HistoryEventTypeWaitStateExited = HistoryEventType' "WaitStateExited"

{-# COMPLETE
  HistoryEventTypeActivityFailed,
  HistoryEventTypeActivityScheduleFailed,
  HistoryEventTypeActivityScheduled,
  HistoryEventTypeActivityStarted,
  HistoryEventTypeActivitySucceeded,
  HistoryEventTypeActivityTimedOut,
  HistoryEventTypeChoiceStateEntered,
  HistoryEventTypeChoiceStateExited,
  HistoryEventTypeExecutionAborted,
  HistoryEventTypeExecutionFailed,
  HistoryEventTypeExecutionStarted,
  HistoryEventTypeExecutionSucceeded,
  HistoryEventTypeExecutionTimedOut,
  HistoryEventTypeFailStateEntered,
  HistoryEventTypeLambdaFunctionFailed,
  HistoryEventTypeLambdaFunctionScheduleFailed,
  HistoryEventTypeLambdaFunctionScheduled,
  HistoryEventTypeLambdaFunctionStartFailed,
  HistoryEventTypeLambdaFunctionStarted,
  HistoryEventTypeLambdaFunctionSucceeded,
  HistoryEventTypeLambdaFunctionTimedOut,
  HistoryEventTypeMapIterationAborted,
  HistoryEventTypeMapIterationFailed,
  HistoryEventTypeMapIterationStarted,
  HistoryEventTypeMapIterationSucceeded,
  HistoryEventTypeMapStateAborted,
  HistoryEventTypeMapStateEntered,
  HistoryEventTypeMapStateExited,
  HistoryEventTypeMapStateFailed,
  HistoryEventTypeMapStateStarted,
  HistoryEventTypeMapStateSucceeded,
  HistoryEventTypeParallelStateAborted,
  HistoryEventTypeParallelStateEntered,
  HistoryEventTypeParallelStateExited,
  HistoryEventTypeParallelStateFailed,
  HistoryEventTypeParallelStateStarted,
  HistoryEventTypeParallelStateSucceeded,
  HistoryEventTypePassStateEntered,
  HistoryEventTypePassStateExited,
  HistoryEventTypeSucceedStateEntered,
  HistoryEventTypeSucceedStateExited,
  HistoryEventTypeTaskFailed,
  HistoryEventTypeTaskScheduled,
  HistoryEventTypeTaskStartFailed,
  HistoryEventTypeTaskStarted,
  HistoryEventTypeTaskStateAborted,
  HistoryEventTypeTaskStateEntered,
  HistoryEventTypeTaskStateExited,
  HistoryEventTypeTaskSubmitFailed,
  HistoryEventTypeTaskSubmitted,
  HistoryEventTypeTaskSucceeded,
  HistoryEventTypeTaskTimedOut,
  HistoryEventTypeWaitStateAborted,
  HistoryEventTypeWaitStateEntered,
  HistoryEventTypeWaitStateExited,
  HistoryEventType'
  #-}

instance Prelude.FromText HistoryEventType where
  parser = HistoryEventType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HistoryEventType where
  toText (HistoryEventType' x) = x

instance Prelude.Hashable HistoryEventType

instance Prelude.NFData HistoryEventType

instance Prelude.ToByteString HistoryEventType

instance Prelude.ToQuery HistoryEventType

instance Prelude.ToHeader HistoryEventType

instance Prelude.FromJSON HistoryEventType where
  parseJSON = Prelude.parseJSONText "HistoryEventType"
