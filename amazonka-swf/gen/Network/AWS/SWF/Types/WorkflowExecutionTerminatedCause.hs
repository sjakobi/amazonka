{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionTerminatedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionTerminatedCause
  ( WorkflowExecutionTerminatedCause
      ( ..,
        ChildPolicyApplied,
        EventLimitExceeded,
        OperatorInitiated
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WorkflowExecutionTerminatedCause
  = WorkflowExecutionTerminatedCause'
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

pattern ChildPolicyApplied :: WorkflowExecutionTerminatedCause
pattern ChildPolicyApplied = WorkflowExecutionTerminatedCause' "CHILD_POLICY_APPLIED"

pattern EventLimitExceeded :: WorkflowExecutionTerminatedCause
pattern EventLimitExceeded = WorkflowExecutionTerminatedCause' "EVENT_LIMIT_EXCEEDED"

pattern OperatorInitiated :: WorkflowExecutionTerminatedCause
pattern OperatorInitiated = WorkflowExecutionTerminatedCause' "OPERATOR_INITIATED"

{-# COMPLETE
  ChildPolicyApplied,
  EventLimitExceeded,
  OperatorInitiated,
  WorkflowExecutionTerminatedCause'
  #-}

instance FromText WorkflowExecutionTerminatedCause where
  parser = (WorkflowExecutionTerminatedCause' . mk) <$> takeText

instance ToText WorkflowExecutionTerminatedCause where
  toText (WorkflowExecutionTerminatedCause' ci) = original ci

instance Hashable WorkflowExecutionTerminatedCause

instance NFData WorkflowExecutionTerminatedCause

instance ToByteString WorkflowExecutionTerminatedCause

instance ToQuery WorkflowExecutionTerminatedCause

instance ToHeader WorkflowExecutionTerminatedCause

instance FromJSON WorkflowExecutionTerminatedCause where
  parseJSON = parseJSONText "WorkflowExecutionTerminatedCause"
