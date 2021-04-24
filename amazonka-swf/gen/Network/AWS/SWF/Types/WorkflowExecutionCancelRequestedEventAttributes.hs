{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SWF.Types.WorkflowExecution
import Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedCause

-- | Provides the details of the @WorkflowExecutionCancelRequested@ event.
--
--
--
-- /See:/ 'workflowExecutionCancelRequestedEventAttributes' smart constructor.
data WorkflowExecutionCancelRequestedEventAttributes = WorkflowExecutionCancelRequestedEventAttributes'
  { _wecreaExternalInitiatedEventId ::
      !( Maybe
           Integer
       ),
    _wecreaExternalWorkflowExecution ::
      !( Maybe
           WorkflowExecution
       ),
    _wecreaCause ::
      !( Maybe
           WorkflowExecutionCancelRequestedCause
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'WorkflowExecutionCancelRequestedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wecreaExternalInitiatedEventId' - The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event corresponding to the @RequestCancelExternalWorkflowExecution@ decision to cancel this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- * 'wecreaExternalWorkflowExecution' - The external workflow execution for which the cancellation was requested.
--
-- * 'wecreaCause' - If set, indicates that the request to cancel the workflow execution was automatically generated, and specifies the cause. This happens if the parent workflow execution times out or is terminated, and the child policy is set to cancel child executions.
workflowExecutionCancelRequestedEventAttributes ::
  WorkflowExecutionCancelRequestedEventAttributes
workflowExecutionCancelRequestedEventAttributes =
  WorkflowExecutionCancelRequestedEventAttributes'
    { _wecreaExternalInitiatedEventId =
        Nothing,
      _wecreaExternalWorkflowExecution =
        Nothing,
      _wecreaCause = Nothing
    }

-- | The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event corresponding to the @RequestCancelExternalWorkflowExecution@ decision to cancel this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
wecreaExternalInitiatedEventId :: Lens' WorkflowExecutionCancelRequestedEventAttributes (Maybe Integer)
wecreaExternalInitiatedEventId = lens _wecreaExternalInitiatedEventId (\s a -> s {_wecreaExternalInitiatedEventId = a})

-- | The external workflow execution for which the cancellation was requested.
wecreaExternalWorkflowExecution :: Lens' WorkflowExecutionCancelRequestedEventAttributes (Maybe WorkflowExecution)
wecreaExternalWorkflowExecution = lens _wecreaExternalWorkflowExecution (\s a -> s {_wecreaExternalWorkflowExecution = a})

-- | If set, indicates that the request to cancel the workflow execution was automatically generated, and specifies the cause. This happens if the parent workflow execution times out or is terminated, and the child policy is set to cancel child executions.
wecreaCause :: Lens' WorkflowExecutionCancelRequestedEventAttributes (Maybe WorkflowExecutionCancelRequestedCause)
wecreaCause = lens _wecreaCause (\s a -> s {_wecreaCause = a})

instance
  FromJSON
    WorkflowExecutionCancelRequestedEventAttributes
  where
  parseJSON =
    withObject
      "WorkflowExecutionCancelRequestedEventAttributes"
      ( \x ->
          WorkflowExecutionCancelRequestedEventAttributes'
            <$> (x .:? "externalInitiatedEventId")
            <*> (x .:? "externalWorkflowExecution")
            <*> (x .:? "cause")
      )

instance
  Hashable
    WorkflowExecutionCancelRequestedEventAttributes

instance
  NFData
    WorkflowExecutionCancelRequestedEventAttributes
