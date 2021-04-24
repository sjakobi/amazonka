{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.PollForActivityTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by workers to get an 'ActivityTask' from the specified activity @taskList@ . This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available. The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns an empty result. An empty result, in this context, means that an ActivityTask is returned, but that the value of taskToken is an empty string. If a task is returned, the worker should use its type to identify and process it correctly.
--
--
-- /Important:/ Workers should set their client side socket timeout to at least 70 seconds (10 seconds higher than the maximum time service may hold the poll request).
--
-- __Access Control__
--
-- You can use IAM policies to control this action's access to Amazon SWF resources as follows:
--
--     * Use a @Resource@ element with the domain name to limit the action to only specified domains.
--
--     * Use an @Action@ element to allow or deny permission to call this action.
--
--     * Constrain the @taskList.name@ parameter by using a @Condition@ element with the @swf:taskList.name@ key to allow the action to access only certain task lists.
--
--
--
-- If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's @cause@ parameter is set to @OPERATION_NOT_PERMITTED@ . For details and example IAM policies, see <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows> in the /Amazon SWF Developer Guide/ .
module Network.AWS.SWF.PollForActivityTask
  ( -- * Creating a Request
    pollForActivityTask,
    PollForActivityTask,

    -- * Request Lenses
    pfatIdentity,
    pfatDomain,
    pfatTaskList,

    -- * Destructuring the Response
    pollForActivityTaskResponse,
    PollForActivityTaskResponse,

    -- * Response Lenses
    pfatrrsWorkflowExecution,
    pfatrrsInput,
    pfatrrsActivityId,
    pfatrrsTaskToken,
    pfatrrsActivityType,
    pfatrrsResponseStatus,
    pfatrrsStartedEventId,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SWF.Types

-- | /See:/ 'pollForActivityTask' smart constructor.
data PollForActivityTask = PollForActivityTask'
  { _pfatIdentity ::
      !(Maybe Text),
    _pfatDomain :: !Text,
    _pfatTaskList :: !TaskList
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PollForActivityTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfatIdentity' - Identity of the worker making the request, recorded in the @ActivityTaskStarted@ event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.
--
-- * 'pfatDomain' - The name of the domain that contains the task lists being polled.
--
-- * 'pfatTaskList' - Specifies the task list to poll for activity tasks. The specified string must not start or end with whitespace. It must not contain a @:@ (colon), @/@ (slash), @|@ (vertical bar), or any control characters (@\u0000-\u001f@ | @\u007f-\u009f@ ). Also, it must not /be/ the literal string @arn@ .
pollForActivityTask ::
  -- | 'pfatDomain'
  Text ->
  -- | 'pfatTaskList'
  TaskList ->
  PollForActivityTask
pollForActivityTask pDomain_ pTaskList_ =
  PollForActivityTask'
    { _pfatIdentity = Nothing,
      _pfatDomain = pDomain_,
      _pfatTaskList = pTaskList_
    }

-- | Identity of the worker making the request, recorded in the @ActivityTaskStarted@ event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.
pfatIdentity :: Lens' PollForActivityTask (Maybe Text)
pfatIdentity = lens _pfatIdentity (\s a -> s {_pfatIdentity = a})

-- | The name of the domain that contains the task lists being polled.
pfatDomain :: Lens' PollForActivityTask Text
pfatDomain = lens _pfatDomain (\s a -> s {_pfatDomain = a})

-- | Specifies the task list to poll for activity tasks. The specified string must not start or end with whitespace. It must not contain a @:@ (colon), @/@ (slash), @|@ (vertical bar), or any control characters (@\u0000-\u001f@ | @\u007f-\u009f@ ). Also, it must not /be/ the literal string @arn@ .
pfatTaskList :: Lens' PollForActivityTask TaskList
pfatTaskList = lens _pfatTaskList (\s a -> s {_pfatTaskList = a})

instance AWSRequest PollForActivityTask where
  type
    Rs PollForActivityTask =
      PollForActivityTaskResponse
  request = postJSON swf
  response =
    receiveJSON
      ( \s h x ->
          PollForActivityTaskResponse'
            <$> (x .?> "workflowExecution")
            <*> (x .?> "input")
            <*> (x .?> "activityId")
            <*> (x .?> "taskToken")
            <*> (x .?> "activityType")
            <*> (pure (fromEnum s))
            <*> (x .:> "startedEventId")
      )

instance Hashable PollForActivityTask

instance NFData PollForActivityTask

instance ToHeaders PollForActivityTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SimpleWorkflowService.PollForActivityTask" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON PollForActivityTask where
  toJSON PollForActivityTask' {..} =
    object
      ( catMaybes
          [ ("identity" .=) <$> _pfatIdentity,
            Just ("domain" .= _pfatDomain),
            Just ("taskList" .= _pfatTaskList)
          ]
      )

instance ToPath PollForActivityTask where
  toPath = const "/"

instance ToQuery PollForActivityTask where
  toQuery = const mempty

-- | Unit of work sent to an activity worker.
--
--
--
-- /See:/ 'pollForActivityTaskResponse' smart constructor.
data PollForActivityTaskResponse = PollForActivityTaskResponse'
  { _pfatrrsWorkflowExecution ::
      !( Maybe
           WorkflowExecution
       ),
    _pfatrrsInput ::
      !(Maybe Text),
    _pfatrrsActivityId ::
      !(Maybe Text),
    _pfatrrsTaskToken ::
      !(Maybe Text),
    _pfatrrsActivityType ::
      !( Maybe
           ActivityType
       ),
    _pfatrrsResponseStatus ::
      !Int,
    _pfatrrsStartedEventId ::
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

-- | Creates a value of 'PollForActivityTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfatrrsWorkflowExecution' - The workflow execution that started this activity task.
--
-- * 'pfatrrsInput' - The inputs provided when the activity task was scheduled. The form of the input is user defined and should be meaningful to the activity implementation.
--
-- * 'pfatrrsActivityId' - The unique ID of the task.
--
-- * 'pfatrrsTaskToken' - The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.
--
-- * 'pfatrrsActivityType' - The type of this activity task.
--
-- * 'pfatrrsResponseStatus' - -- | The response status code.
--
-- * 'pfatrrsStartedEventId' - The ID of the @ActivityTaskStarted@ event recorded in the history.
pollForActivityTaskResponse ::
  -- | 'pfatrrsResponseStatus'
  Int ->
  -- | 'pfatrrsStartedEventId'
  Integer ->
  PollForActivityTaskResponse
pollForActivityTaskResponse
  pResponseStatus_
  pStartedEventId_ =
    PollForActivityTaskResponse'
      { _pfatrrsWorkflowExecution =
          Nothing,
        _pfatrrsInput = Nothing,
        _pfatrrsActivityId = Nothing,
        _pfatrrsTaskToken = Nothing,
        _pfatrrsActivityType = Nothing,
        _pfatrrsResponseStatus = pResponseStatus_,
        _pfatrrsStartedEventId = pStartedEventId_
      }

-- | The workflow execution that started this activity task.
pfatrrsWorkflowExecution :: Lens' PollForActivityTaskResponse (Maybe WorkflowExecution)
pfatrrsWorkflowExecution = lens _pfatrrsWorkflowExecution (\s a -> s {_pfatrrsWorkflowExecution = a})

-- | The inputs provided when the activity task was scheduled. The form of the input is user defined and should be meaningful to the activity implementation.
pfatrrsInput :: Lens' PollForActivityTaskResponse (Maybe Text)
pfatrrsInput = lens _pfatrrsInput (\s a -> s {_pfatrrsInput = a})

-- | The unique ID of the task.
pfatrrsActivityId :: Lens' PollForActivityTaskResponse (Maybe Text)
pfatrrsActivityId = lens _pfatrrsActivityId (\s a -> s {_pfatrrsActivityId = a})

-- | The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.
pfatrrsTaskToken :: Lens' PollForActivityTaskResponse (Maybe Text)
pfatrrsTaskToken = lens _pfatrrsTaskToken (\s a -> s {_pfatrrsTaskToken = a})

-- | The type of this activity task.
pfatrrsActivityType :: Lens' PollForActivityTaskResponse (Maybe ActivityType)
pfatrrsActivityType = lens _pfatrrsActivityType (\s a -> s {_pfatrrsActivityType = a})

-- | -- | The response status code.
pfatrrsResponseStatus :: Lens' PollForActivityTaskResponse Int
pfatrrsResponseStatus = lens _pfatrrsResponseStatus (\s a -> s {_pfatrrsResponseStatus = a})

-- | The ID of the @ActivityTaskStarted@ event recorded in the history.
pfatrrsStartedEventId :: Lens' PollForActivityTaskResponse Integer
pfatrrsStartedEventId = lens _pfatrrsStartedEventId (\s a -> s {_pfatrrsStartedEventId = a})

instance NFData PollForActivityTaskResponse
