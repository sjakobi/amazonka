{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionCompletedEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionCompletedEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the details of the @WorkflowExecutionCompleted@ event.
--
--
--
-- /See:/ 'workflowExecutionCompletedEventAttributes' smart constructor.
data WorkflowExecutionCompletedEventAttributes = WorkflowExecutionCompletedEventAttributes'
  { _wResult ::
      !( Maybe
           Text
       ),
    _wDecisionTaskCompletedEventId ::
      !Integer
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'WorkflowExecutionCompletedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wResult' - The result produced by the workflow execution upon successful completion.
--
-- * 'wDecisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @CompleteWorkflowExecution@ decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
workflowExecutionCompletedEventAttributes ::
  -- | 'wDecisionTaskCompletedEventId'
  Integer ->
  WorkflowExecutionCompletedEventAttributes
workflowExecutionCompletedEventAttributes
  pDecisionTaskCompletedEventId_ =
    WorkflowExecutionCompletedEventAttributes'
      { _wResult =
          Nothing,
        _wDecisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The result produced by the workflow execution upon successful completion.
wResult :: Lens' WorkflowExecutionCompletedEventAttributes (Maybe Text)
wResult = lens _wResult (\s a -> s {_wResult = a})

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @CompleteWorkflowExecution@ decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
wDecisionTaskCompletedEventId :: Lens' WorkflowExecutionCompletedEventAttributes Integer
wDecisionTaskCompletedEventId = lens _wDecisionTaskCompletedEventId (\s a -> s {_wDecisionTaskCompletedEventId = a})

instance
  FromJSON
    WorkflowExecutionCompletedEventAttributes
  where
  parseJSON =
    withObject
      "WorkflowExecutionCompletedEventAttributes"
      ( \x ->
          WorkflowExecutionCompletedEventAttributes'
            <$> (x .:? "result")
            <*> (x .: "decisionTaskCompletedEventId")
      )

instance
  Hashable
    WorkflowExecutionCompletedEventAttributes

instance
  NFData
    WorkflowExecutionCompletedEventAttributes
