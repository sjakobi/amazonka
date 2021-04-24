{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CancelTimer,
        CancelWorkflowExecution,
        CompleteWorkflowExecution,
        ContinueAsNewWorkflowExecution,
        FailWorkflowExecution,
        RecordMarker,
        RequestCancelActivityTask,
        RequestCancelExternalWorkflowExecution,
        ScheduleActivityTask,
        ScheduleLambdaFunction,
        SignalExternalWorkflowExecution,
        StartChildWorkflowExecution,
        StartTimer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DecisionType = DecisionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CancelTimer :: DecisionType
pattern CancelTimer = DecisionType' "CancelTimer"

pattern CancelWorkflowExecution :: DecisionType
pattern CancelWorkflowExecution = DecisionType' "CancelWorkflowExecution"

pattern CompleteWorkflowExecution :: DecisionType
pattern CompleteWorkflowExecution = DecisionType' "CompleteWorkflowExecution"

pattern ContinueAsNewWorkflowExecution :: DecisionType
pattern ContinueAsNewWorkflowExecution = DecisionType' "ContinueAsNewWorkflowExecution"

pattern FailWorkflowExecution :: DecisionType
pattern FailWorkflowExecution = DecisionType' "FailWorkflowExecution"

pattern RecordMarker :: DecisionType
pattern RecordMarker = DecisionType' "RecordMarker"

pattern RequestCancelActivityTask :: DecisionType
pattern RequestCancelActivityTask = DecisionType' "RequestCancelActivityTask"

pattern RequestCancelExternalWorkflowExecution :: DecisionType
pattern RequestCancelExternalWorkflowExecution = DecisionType' "RequestCancelExternalWorkflowExecution"

pattern ScheduleActivityTask :: DecisionType
pattern ScheduleActivityTask = DecisionType' "ScheduleActivityTask"

pattern ScheduleLambdaFunction :: DecisionType
pattern ScheduleLambdaFunction = DecisionType' "ScheduleLambdaFunction"

pattern SignalExternalWorkflowExecution :: DecisionType
pattern SignalExternalWorkflowExecution = DecisionType' "SignalExternalWorkflowExecution"

pattern StartChildWorkflowExecution :: DecisionType
pattern StartChildWorkflowExecution = DecisionType' "StartChildWorkflowExecution"

pattern StartTimer :: DecisionType
pattern StartTimer = DecisionType' "StartTimer"

{-# COMPLETE
  CancelTimer,
  CancelWorkflowExecution,
  CompleteWorkflowExecution,
  ContinueAsNewWorkflowExecution,
  FailWorkflowExecution,
  RecordMarker,
  RequestCancelActivityTask,
  RequestCancelExternalWorkflowExecution,
  ScheduleActivityTask,
  ScheduleLambdaFunction,
  SignalExternalWorkflowExecution,
  StartChildWorkflowExecution,
  StartTimer,
  DecisionType'
  #-}

instance FromText DecisionType where
  parser = (DecisionType' . mk) <$> takeText

instance ToText DecisionType where
  toText (DecisionType' ci) = original ci

instance Hashable DecisionType

instance NFData DecisionType

instance ToByteString DecisionType

instance ToQuery DecisionType

instance ToHeader DecisionType

instance ToJSON DecisionType where
  toJSON = toJSONText
