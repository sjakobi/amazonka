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
-- Module      : Network.AWS.SWF.Types.DecisionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.DecisionType
  ( DecisionType
      ( ..,
        DecisionTypeCancelTimer,
        DecisionTypeCancelWorkflowExecution,
        DecisionTypeCompleteWorkflowExecution,
        DecisionTypeContinueAsNewWorkflowExecution,
        DecisionTypeFailWorkflowExecution,
        DecisionTypeRecordMarker,
        DecisionTypeRequestCancelActivityTask,
        DecisionTypeRequestCancelExternalWorkflowExecution,
        DecisionTypeScheduleActivityTask,
        DecisionTypeScheduleLambdaFunction,
        DecisionTypeSignalExternalWorkflowExecution,
        DecisionTypeStartChildWorkflowExecution,
        DecisionTypeStartTimer
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DecisionType = DecisionType'
  { fromDecisionType ::
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

pattern DecisionTypeCancelTimer :: DecisionType
pattern DecisionTypeCancelTimer = DecisionType' "CancelTimer"

pattern DecisionTypeCancelWorkflowExecution :: DecisionType
pattern DecisionTypeCancelWorkflowExecution = DecisionType' "CancelWorkflowExecution"

pattern DecisionTypeCompleteWorkflowExecution :: DecisionType
pattern DecisionTypeCompleteWorkflowExecution = DecisionType' "CompleteWorkflowExecution"

pattern DecisionTypeContinueAsNewWorkflowExecution :: DecisionType
pattern DecisionTypeContinueAsNewWorkflowExecution = DecisionType' "ContinueAsNewWorkflowExecution"

pattern DecisionTypeFailWorkflowExecution :: DecisionType
pattern DecisionTypeFailWorkflowExecution = DecisionType' "FailWorkflowExecution"

pattern DecisionTypeRecordMarker :: DecisionType
pattern DecisionTypeRecordMarker = DecisionType' "RecordMarker"

pattern DecisionTypeRequestCancelActivityTask :: DecisionType
pattern DecisionTypeRequestCancelActivityTask = DecisionType' "RequestCancelActivityTask"

pattern DecisionTypeRequestCancelExternalWorkflowExecution :: DecisionType
pattern DecisionTypeRequestCancelExternalWorkflowExecution = DecisionType' "RequestCancelExternalWorkflowExecution"

pattern DecisionTypeScheduleActivityTask :: DecisionType
pattern DecisionTypeScheduleActivityTask = DecisionType' "ScheduleActivityTask"

pattern DecisionTypeScheduleLambdaFunction :: DecisionType
pattern DecisionTypeScheduleLambdaFunction = DecisionType' "ScheduleLambdaFunction"

pattern DecisionTypeSignalExternalWorkflowExecution :: DecisionType
pattern DecisionTypeSignalExternalWorkflowExecution = DecisionType' "SignalExternalWorkflowExecution"

pattern DecisionTypeStartChildWorkflowExecution :: DecisionType
pattern DecisionTypeStartChildWorkflowExecution = DecisionType' "StartChildWorkflowExecution"

pattern DecisionTypeStartTimer :: DecisionType
pattern DecisionTypeStartTimer = DecisionType' "StartTimer"

{-# COMPLETE
  DecisionTypeCancelTimer,
  DecisionTypeCancelWorkflowExecution,
  DecisionTypeCompleteWorkflowExecution,
  DecisionTypeContinueAsNewWorkflowExecution,
  DecisionTypeFailWorkflowExecution,
  DecisionTypeRecordMarker,
  DecisionTypeRequestCancelActivityTask,
  DecisionTypeRequestCancelExternalWorkflowExecution,
  DecisionTypeScheduleActivityTask,
  DecisionTypeScheduleLambdaFunction,
  DecisionTypeSignalExternalWorkflowExecution,
  DecisionTypeStartChildWorkflowExecution,
  DecisionTypeStartTimer,
  DecisionType'
  #-}

instance Prelude.FromText DecisionType where
  parser = DecisionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DecisionType where
  toText (DecisionType' x) = x

instance Prelude.Hashable DecisionType

instance Prelude.NFData DecisionType

instance Prelude.ToByteString DecisionType

instance Prelude.ToQuery DecisionType

instance Prelude.ToHeader DecisionType

instance Prelude.ToJSON DecisionType where
  toJSON = Prelude.toJSONText
