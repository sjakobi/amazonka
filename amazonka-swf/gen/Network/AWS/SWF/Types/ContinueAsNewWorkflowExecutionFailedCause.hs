{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedCause
  ( ContinueAsNewWorkflowExecutionFailedCause
      ( ..,
        CANWEFCContinueAsNewWorkflowExecutionRateExceeded,
        CANWEFCDefaultChildPolicyUndefined,
        CANWEFCDefaultExecutionStartToCloseTimeoutUndefined,
        CANWEFCDefaultTaskListUndefined,
        CANWEFCDefaultTaskStartToCloseTimeoutUndefined,
        CANWEFCOperationNotPermitted,
        CANWEFCUnhandledDecision,
        CANWEFCWorkflowTypeDeprecated,
        CANWEFCWorkflowTypeDoesNotExist
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContinueAsNewWorkflowExecutionFailedCause
  = ContinueAsNewWorkflowExecutionFailedCause'
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

pattern CANWEFCContinueAsNewWorkflowExecutionRateExceeded :: ContinueAsNewWorkflowExecutionFailedCause
pattern CANWEFCContinueAsNewWorkflowExecutionRateExceeded = ContinueAsNewWorkflowExecutionFailedCause' "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED"

pattern CANWEFCDefaultChildPolicyUndefined :: ContinueAsNewWorkflowExecutionFailedCause
pattern CANWEFCDefaultChildPolicyUndefined = ContinueAsNewWorkflowExecutionFailedCause' "DEFAULT_CHILD_POLICY_UNDEFINED"

pattern CANWEFCDefaultExecutionStartToCloseTimeoutUndefined :: ContinueAsNewWorkflowExecutionFailedCause
pattern CANWEFCDefaultExecutionStartToCloseTimeoutUndefined = ContinueAsNewWorkflowExecutionFailedCause' "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern CANWEFCDefaultTaskListUndefined :: ContinueAsNewWorkflowExecutionFailedCause
pattern CANWEFCDefaultTaskListUndefined = ContinueAsNewWorkflowExecutionFailedCause' "DEFAULT_TASK_LIST_UNDEFINED"

pattern CANWEFCDefaultTaskStartToCloseTimeoutUndefined :: ContinueAsNewWorkflowExecutionFailedCause
pattern CANWEFCDefaultTaskStartToCloseTimeoutUndefined = ContinueAsNewWorkflowExecutionFailedCause' "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern CANWEFCOperationNotPermitted :: ContinueAsNewWorkflowExecutionFailedCause
pattern CANWEFCOperationNotPermitted = ContinueAsNewWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern CANWEFCUnhandledDecision :: ContinueAsNewWorkflowExecutionFailedCause
pattern CANWEFCUnhandledDecision = ContinueAsNewWorkflowExecutionFailedCause' "UNHANDLED_DECISION"

pattern CANWEFCWorkflowTypeDeprecated :: ContinueAsNewWorkflowExecutionFailedCause
pattern CANWEFCWorkflowTypeDeprecated = ContinueAsNewWorkflowExecutionFailedCause' "WORKFLOW_TYPE_DEPRECATED"

pattern CANWEFCWorkflowTypeDoesNotExist :: ContinueAsNewWorkflowExecutionFailedCause
pattern CANWEFCWorkflowTypeDoesNotExist = ContinueAsNewWorkflowExecutionFailedCause' "WORKFLOW_TYPE_DOES_NOT_EXIST"

{-# COMPLETE
  CANWEFCContinueAsNewWorkflowExecutionRateExceeded,
  CANWEFCDefaultChildPolicyUndefined,
  CANWEFCDefaultExecutionStartToCloseTimeoutUndefined,
  CANWEFCDefaultTaskListUndefined,
  CANWEFCDefaultTaskStartToCloseTimeoutUndefined,
  CANWEFCOperationNotPermitted,
  CANWEFCUnhandledDecision,
  CANWEFCWorkflowTypeDeprecated,
  CANWEFCWorkflowTypeDoesNotExist,
  ContinueAsNewWorkflowExecutionFailedCause'
  #-}

instance FromText ContinueAsNewWorkflowExecutionFailedCause where
  parser = (ContinueAsNewWorkflowExecutionFailedCause' . mk) <$> takeText

instance ToText ContinueAsNewWorkflowExecutionFailedCause where
  toText (ContinueAsNewWorkflowExecutionFailedCause' ci) = original ci

instance Hashable ContinueAsNewWorkflowExecutionFailedCause

instance NFData ContinueAsNewWorkflowExecutionFailedCause

instance ToByteString ContinueAsNewWorkflowExecutionFailedCause

instance ToQuery ContinueAsNewWorkflowExecutionFailedCause

instance ToHeader ContinueAsNewWorkflowExecutionFailedCause

instance FromJSON ContinueAsNewWorkflowExecutionFailedCause where
  parseJSON = parseJSONText "ContinueAsNewWorkflowExecutionFailedCause"
