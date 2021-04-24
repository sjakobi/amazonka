{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionCanceledEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionCanceledEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the details of the @WorkflowExecutionCanceled@ event.
--
--
--
-- /See:/ 'workflowExecutionCanceledEventAttributes' smart constructor.
data WorkflowExecutionCanceledEventAttributes = WorkflowExecutionCanceledEventAttributes'
  { _weceaDetails ::
      !( Maybe
           Text
       ),
    _weceaDecisionTaskCompletedEventId ::
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

-- | Creates a value of 'WorkflowExecutionCanceledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'weceaDetails' - The details of the cancellation.
--
-- * 'weceaDecisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @CancelWorkflowExecution@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
workflowExecutionCanceledEventAttributes ::
  -- | 'weceaDecisionTaskCompletedEventId'
  Integer ->
  WorkflowExecutionCanceledEventAttributes
workflowExecutionCanceledEventAttributes
  pDecisionTaskCompletedEventId_ =
    WorkflowExecutionCanceledEventAttributes'
      { _weceaDetails =
          Nothing,
        _weceaDecisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The details of the cancellation.
weceaDetails :: Lens' WorkflowExecutionCanceledEventAttributes (Maybe Text)
weceaDetails = lens _weceaDetails (\s a -> s {_weceaDetails = a})

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @CancelWorkflowExecution@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
weceaDecisionTaskCompletedEventId :: Lens' WorkflowExecutionCanceledEventAttributes Integer
weceaDecisionTaskCompletedEventId = lens _weceaDecisionTaskCompletedEventId (\s a -> s {_weceaDecisionTaskCompletedEventId = a})

instance
  FromJSON
    WorkflowExecutionCanceledEventAttributes
  where
  parseJSON =
    withObject
      "WorkflowExecutionCanceledEventAttributes"
      ( \x ->
          WorkflowExecutionCanceledEventAttributes'
            <$> (x .:? "details")
            <*> (x .: "decisionTaskCompletedEventId")
      )

instance
  Hashable
    WorkflowExecutionCanceledEventAttributes

instance
  NFData
    WorkflowExecutionCanceledEventAttributes
