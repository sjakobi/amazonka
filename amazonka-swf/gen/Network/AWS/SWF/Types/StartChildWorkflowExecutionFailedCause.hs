{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.StartChildWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.StartChildWorkflowExecutionFailedCause
  ( StartChildWorkflowExecutionFailedCause
      ( ..,
        SCWEFCChildCreationRateExceeded,
        SCWEFCDefaultChildPolicyUndefined,
        SCWEFCDefaultExecutionStartToCloseTimeoutUndefined,
        SCWEFCDefaultTaskListUndefined,
        SCWEFCDefaultTaskStartToCloseTimeoutUndefined,
        SCWEFCOpenChildrenLimitExceeded,
        SCWEFCOpenWorkflowsLimitExceeded,
        SCWEFCOperationNotPermitted,
        SCWEFCWorkflowAlreadyRunning,
        SCWEFCWorkflowTypeDeprecated,
        SCWEFCWorkflowTypeDoesNotExist
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StartChildWorkflowExecutionFailedCause
  = StartChildWorkflowExecutionFailedCause'
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

pattern SCWEFCChildCreationRateExceeded :: StartChildWorkflowExecutionFailedCause
pattern SCWEFCChildCreationRateExceeded = StartChildWorkflowExecutionFailedCause' "CHILD_CREATION_RATE_EXCEEDED"

pattern SCWEFCDefaultChildPolicyUndefined :: StartChildWorkflowExecutionFailedCause
pattern SCWEFCDefaultChildPolicyUndefined = StartChildWorkflowExecutionFailedCause' "DEFAULT_CHILD_POLICY_UNDEFINED"

pattern SCWEFCDefaultExecutionStartToCloseTimeoutUndefined :: StartChildWorkflowExecutionFailedCause
pattern SCWEFCDefaultExecutionStartToCloseTimeoutUndefined = StartChildWorkflowExecutionFailedCause' "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern SCWEFCDefaultTaskListUndefined :: StartChildWorkflowExecutionFailedCause
pattern SCWEFCDefaultTaskListUndefined = StartChildWorkflowExecutionFailedCause' "DEFAULT_TASK_LIST_UNDEFINED"

pattern SCWEFCDefaultTaskStartToCloseTimeoutUndefined :: StartChildWorkflowExecutionFailedCause
pattern SCWEFCDefaultTaskStartToCloseTimeoutUndefined = StartChildWorkflowExecutionFailedCause' "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern SCWEFCOpenChildrenLimitExceeded :: StartChildWorkflowExecutionFailedCause
pattern SCWEFCOpenChildrenLimitExceeded = StartChildWorkflowExecutionFailedCause' "OPEN_CHILDREN_LIMIT_EXCEEDED"

pattern SCWEFCOpenWorkflowsLimitExceeded :: StartChildWorkflowExecutionFailedCause
pattern SCWEFCOpenWorkflowsLimitExceeded = StartChildWorkflowExecutionFailedCause' "OPEN_WORKFLOWS_LIMIT_EXCEEDED"

pattern SCWEFCOperationNotPermitted :: StartChildWorkflowExecutionFailedCause
pattern SCWEFCOperationNotPermitted = StartChildWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern SCWEFCWorkflowAlreadyRunning :: StartChildWorkflowExecutionFailedCause
pattern SCWEFCWorkflowAlreadyRunning = StartChildWorkflowExecutionFailedCause' "WORKFLOW_ALREADY_RUNNING"

pattern SCWEFCWorkflowTypeDeprecated :: StartChildWorkflowExecutionFailedCause
pattern SCWEFCWorkflowTypeDeprecated = StartChildWorkflowExecutionFailedCause' "WORKFLOW_TYPE_DEPRECATED"

pattern SCWEFCWorkflowTypeDoesNotExist :: StartChildWorkflowExecutionFailedCause
pattern SCWEFCWorkflowTypeDoesNotExist = StartChildWorkflowExecutionFailedCause' "WORKFLOW_TYPE_DOES_NOT_EXIST"

{-# COMPLETE
  SCWEFCChildCreationRateExceeded,
  SCWEFCDefaultChildPolicyUndefined,
  SCWEFCDefaultExecutionStartToCloseTimeoutUndefined,
  SCWEFCDefaultTaskListUndefined,
  SCWEFCDefaultTaskStartToCloseTimeoutUndefined,
  SCWEFCOpenChildrenLimitExceeded,
  SCWEFCOpenWorkflowsLimitExceeded,
  SCWEFCOperationNotPermitted,
  SCWEFCWorkflowAlreadyRunning,
  SCWEFCWorkflowTypeDeprecated,
  SCWEFCWorkflowTypeDoesNotExist,
  StartChildWorkflowExecutionFailedCause'
  #-}

instance FromText StartChildWorkflowExecutionFailedCause where
  parser = (StartChildWorkflowExecutionFailedCause' . mk) <$> takeText

instance ToText StartChildWorkflowExecutionFailedCause where
  toText (StartChildWorkflowExecutionFailedCause' ci) = original ci

instance Hashable StartChildWorkflowExecutionFailedCause

instance NFData StartChildWorkflowExecutionFailedCause

instance ToByteString StartChildWorkflowExecutionFailedCause

instance ToQuery StartChildWorkflowExecutionFailedCause

instance ToHeader StartChildWorkflowExecutionFailedCause

instance FromJSON StartChildWorkflowExecutionFailedCause where
  parseJSON = parseJSONText "StartChildWorkflowExecutionFailedCause"
