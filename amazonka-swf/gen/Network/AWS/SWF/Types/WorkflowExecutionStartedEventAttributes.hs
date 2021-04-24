{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionStartedEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionStartedEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SWF.Types.ChildPolicy
import Network.AWS.SWF.Types.TaskList
import Network.AWS.SWF.Types.WorkflowExecution
import Network.AWS.SWF.Types.WorkflowType

-- | Provides details of @WorkflowExecutionStarted@ event.
--
--
--
-- /See:/ 'workflowExecutionStartedEventAttributes' smart constructor.
data WorkflowExecutionStartedEventAttributes = WorkflowExecutionStartedEventAttributes'
  { _wInput ::
      !( Maybe
           Text
       ),
    _wContinuedExecutionRunId ::
      !( Maybe
           Text
       ),
    _wLambdaRole ::
      !( Maybe
           Text
       ),
    _wParentInitiatedEventId ::
      !( Maybe
           Integer
       ),
    _wTaskPriority ::
      !( Maybe
           Text
       ),
    _wExecutionStartToCloseTimeout ::
      !( Maybe
           Text
       ),
    _wTaskStartToCloseTimeout ::
      !( Maybe
           Text
       ),
    _wTagList ::
      !( Maybe
           [Text]
       ),
    _wParentWorkflowExecution ::
      !( Maybe
           WorkflowExecution
       ),
    _wChildPolicy ::
      !ChildPolicy,
    _wTaskList ::
      !TaskList,
    _wWorkflowType ::
      !WorkflowType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'WorkflowExecutionStartedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wInput' - The input provided to the workflow execution.
--
-- * 'wContinuedExecutionRunId' - If this workflow execution was started due to a @ContinueAsNewWorkflowExecution@ decision, then it contains the @runId@ of the previous workflow execution that was closed and continued as this execution.
--
-- * 'wLambdaRole' - The IAM role attached to the workflow execution.
--
-- * 'wParentInitiatedEventId' - The ID of the @StartChildWorkflowExecutionInitiated@ event corresponding to the @StartChildWorkflowExecution@ 'Decision' to start this workflow execution. The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- * 'wTaskPriority' - The priority of the decision tasks in the workflow execution.
--
-- * 'wExecutionStartToCloseTimeout' - The maximum duration for this workflow execution. The duration is specified in seconds, an integer greater than or equal to @0@ . You can use @NONE@ to specify unlimited duration.
--
-- * 'wTaskStartToCloseTimeout' - The maximum duration of decision tasks for this workflow type. The duration is specified in seconds, an integer greater than or equal to @0@ . You can use @NONE@ to specify unlimited duration.
--
-- * 'wTagList' - The list of tags associated with this workflow execution. An execution can have up to 5 tags.
--
-- * 'wParentWorkflowExecution' - The source workflow execution that started this workflow execution. The member isn't set if the workflow execution was not started by a workflow.
--
-- * 'wChildPolicy' - The policy to use for the child workflow executions if this workflow execution is terminated, by calling the 'TerminateWorkflowExecution' action explicitly or due to an expired timeout. The supported child policies are:     * @TERMINATE@ – The child executions are terminated.     * @REQUEST_CANCEL@ – A request to cancel is attempted for each child execution by recording a @WorkflowExecutionCancelRequested@ event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.     * @ABANDON@ – No action is taken. The child executions continue to run.
--
-- * 'wTaskList' - The name of the task list for scheduling the decision tasks for this workflow execution.
--
-- * 'wWorkflowType' - The workflow type of this execution.
workflowExecutionStartedEventAttributes ::
  -- | 'wChildPolicy'
  ChildPolicy ->
  -- | 'wTaskList'
  TaskList ->
  -- | 'wWorkflowType'
  WorkflowType ->
  WorkflowExecutionStartedEventAttributes
workflowExecutionStartedEventAttributes
  pChildPolicy_
  pTaskList_
  pWorkflowType_ =
    WorkflowExecutionStartedEventAttributes'
      { _wInput =
          Nothing,
        _wContinuedExecutionRunId =
          Nothing,
        _wLambdaRole = Nothing,
        _wParentInitiatedEventId = Nothing,
        _wTaskPriority = Nothing,
        _wExecutionStartToCloseTimeout =
          Nothing,
        _wTaskStartToCloseTimeout =
          Nothing,
        _wTagList = Nothing,
        _wParentWorkflowExecution =
          Nothing,
        _wChildPolicy = pChildPolicy_,
        _wTaskList = pTaskList_,
        _wWorkflowType = pWorkflowType_
      }

-- | The input provided to the workflow execution.
wInput :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
wInput = lens _wInput (\s a -> s {_wInput = a})

-- | If this workflow execution was started due to a @ContinueAsNewWorkflowExecution@ decision, then it contains the @runId@ of the previous workflow execution that was closed and continued as this execution.
wContinuedExecutionRunId :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
wContinuedExecutionRunId = lens _wContinuedExecutionRunId (\s a -> s {_wContinuedExecutionRunId = a})

-- | The IAM role attached to the workflow execution.
wLambdaRole :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
wLambdaRole = lens _wLambdaRole (\s a -> s {_wLambdaRole = a})

-- | The ID of the @StartChildWorkflowExecutionInitiated@ event corresponding to the @StartChildWorkflowExecution@ 'Decision' to start this workflow execution. The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
wParentInitiatedEventId :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Integer)
wParentInitiatedEventId = lens _wParentInitiatedEventId (\s a -> s {_wParentInitiatedEventId = a})

-- | The priority of the decision tasks in the workflow execution.
wTaskPriority :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
wTaskPriority = lens _wTaskPriority (\s a -> s {_wTaskPriority = a})

-- | The maximum duration for this workflow execution. The duration is specified in seconds, an integer greater than or equal to @0@ . You can use @NONE@ to specify unlimited duration.
wExecutionStartToCloseTimeout :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
wExecutionStartToCloseTimeout = lens _wExecutionStartToCloseTimeout (\s a -> s {_wExecutionStartToCloseTimeout = a})

-- | The maximum duration of decision tasks for this workflow type. The duration is specified in seconds, an integer greater than or equal to @0@ . You can use @NONE@ to specify unlimited duration.
wTaskStartToCloseTimeout :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
wTaskStartToCloseTimeout = lens _wTaskStartToCloseTimeout (\s a -> s {_wTaskStartToCloseTimeout = a})

-- | The list of tags associated with this workflow execution. An execution can have up to 5 tags.
wTagList :: Lens' WorkflowExecutionStartedEventAttributes [Text]
wTagList = lens _wTagList (\s a -> s {_wTagList = a}) . _Default . _Coerce

-- | The source workflow execution that started this workflow execution. The member isn't set if the workflow execution was not started by a workflow.
wParentWorkflowExecution :: Lens' WorkflowExecutionStartedEventAttributes (Maybe WorkflowExecution)
wParentWorkflowExecution = lens _wParentWorkflowExecution (\s a -> s {_wParentWorkflowExecution = a})

-- | The policy to use for the child workflow executions if this workflow execution is terminated, by calling the 'TerminateWorkflowExecution' action explicitly or due to an expired timeout. The supported child policies are:     * @TERMINATE@ – The child executions are terminated.     * @REQUEST_CANCEL@ – A request to cancel is attempted for each child execution by recording a @WorkflowExecutionCancelRequested@ event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.     * @ABANDON@ – No action is taken. The child executions continue to run.
wChildPolicy :: Lens' WorkflowExecutionStartedEventAttributes ChildPolicy
wChildPolicy = lens _wChildPolicy (\s a -> s {_wChildPolicy = a})

-- | The name of the task list for scheduling the decision tasks for this workflow execution.
wTaskList :: Lens' WorkflowExecutionStartedEventAttributes TaskList
wTaskList = lens _wTaskList (\s a -> s {_wTaskList = a})

-- | The workflow type of this execution.
wWorkflowType :: Lens' WorkflowExecutionStartedEventAttributes WorkflowType
wWorkflowType = lens _wWorkflowType (\s a -> s {_wWorkflowType = a})

instance
  FromJSON
    WorkflowExecutionStartedEventAttributes
  where
  parseJSON =
    withObject
      "WorkflowExecutionStartedEventAttributes"
      ( \x ->
          WorkflowExecutionStartedEventAttributes'
            <$> (x .:? "input")
            <*> (x .:? "continuedExecutionRunId")
            <*> (x .:? "lambdaRole")
            <*> (x .:? "parentInitiatedEventId")
            <*> (x .:? "taskPriority")
            <*> (x .:? "executionStartToCloseTimeout")
            <*> (x .:? "taskStartToCloseTimeout")
            <*> (x .:? "tagList" .!= mempty)
            <*> (x .:? "parentWorkflowExecution")
            <*> (x .: "childPolicy")
            <*> (x .: "taskList")
            <*> (x .: "workflowType")
      )

instance
  Hashable
    WorkflowExecutionStartedEventAttributes

instance
  NFData
    WorkflowExecutionStartedEventAttributes
