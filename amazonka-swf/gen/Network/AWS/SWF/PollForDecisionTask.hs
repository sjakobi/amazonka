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
-- Module      : Network.AWS.SWF.PollForDecisionTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by deciders to get a 'DecisionTask' from the specified decision @taskList@ . A decision task may be returned for any open workflow execution that is using the specified task list. The task includes a paginated view of the history of the workflow execution. The decider should use the workflow type and the history to determine how to properly handle the task.
--
--
-- This action initiates a long poll, where the service holds the HTTP connection open and responds as soon a task becomes available. If no decision task is available in the specified task list before the timeout of 60 seconds expires, an empty result is returned. An empty result, in this context, means that a DecisionTask is returned, but that the value of taskToken is an empty string.
--
-- /Important:/ Deciders should set their client side socket timeout to at least 70 seconds (10 seconds higher than the timeout).
--
-- /Important:/ Because the number of workflow history events for a single workflow execution might be very large, the result returned might be split up across a number of pages. To retrieve subsequent pages, make additional calls to @PollForDecisionTask@ using the @nextPageToken@ returned by the initial call. Note that you do /not/ call @GetWorkflowExecutionHistory@ with this @nextPageToken@ . Instead, call @PollForDecisionTask@ again.
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
--
--
-- This operation returns paginated results.
module Network.AWS.SWF.PollForDecisionTask
  ( -- * Creating a Request
    pollForDecisionTask,
    PollForDecisionTask,

    -- * Request Lenses
    pfdtIdentity,
    pfdtNextPageToken,
    pfdtMaximumPageSize,
    pfdtReverseOrder,
    pfdtDomain,
    pfdtTaskList,

    -- * Destructuring the Response
    pollForDecisionTaskResponse,
    PollForDecisionTaskResponse,

    -- * Response Lenses
    pfdtrrsPreviousStartedEventId,
    pfdtrrsWorkflowExecution,
    pfdtrrsWorkflowType,
    pfdtrrsNextPageToken,
    pfdtrrsEvents,
    pfdtrrsTaskToken,
    pfdtrrsResponseStatus,
    pfdtrrsStartedEventId,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SWF.Types

-- | /See:/ 'pollForDecisionTask' smart constructor.
data PollForDecisionTask = PollForDecisionTask'
  { _pfdtIdentity ::
      !(Maybe Text),
    _pfdtNextPageToken ::
      !(Maybe Text),
    _pfdtMaximumPageSize ::
      !(Maybe Nat),
    _pfdtReverseOrder ::
      !(Maybe Bool),
    _pfdtDomain :: !Text,
    _pfdtTaskList :: !TaskList
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PollForDecisionTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfdtIdentity' - Identity of the decider making the request, which is recorded in the DecisionTaskStarted event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.
--
-- * 'pfdtNextPageToken' - If @NextPageToken@ is returned there are more results available. The value of @NextPageToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a @400@ error: "@Specified token has exceeded its maximum lifetime@ ".  The configured @maximumPageSize@ determines how many results can be returned in a single call.
--
-- * 'pfdtMaximumPageSize' - The maximum number of results that are returned per call. Use @nextPageToken@ to obtain further pages of results.  This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.
--
-- * 'pfdtReverseOrder' - When set to @true@ , returns the events in reverse order. By default the results are returned in ascending order of the @eventTimestamp@ of the events.
--
-- * 'pfdtDomain' - The name of the domain containing the task lists to poll.
--
-- * 'pfdtTaskList' - Specifies the task list to poll for decision tasks. The specified string must not start or end with whitespace. It must not contain a @:@ (colon), @/@ (slash), @|@ (vertical bar), or any control characters (@\u0000-\u001f@ | @\u007f-\u009f@ ). Also, it must not /be/ the literal string @arn@ .
pollForDecisionTask ::
  -- | 'pfdtDomain'
  Text ->
  -- | 'pfdtTaskList'
  TaskList ->
  PollForDecisionTask
pollForDecisionTask pDomain_ pTaskList_ =
  PollForDecisionTask'
    { _pfdtIdentity = Nothing,
      _pfdtNextPageToken = Nothing,
      _pfdtMaximumPageSize = Nothing,
      _pfdtReverseOrder = Nothing,
      _pfdtDomain = pDomain_,
      _pfdtTaskList = pTaskList_
    }

-- | Identity of the decider making the request, which is recorded in the DecisionTaskStarted event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.
pfdtIdentity :: Lens' PollForDecisionTask (Maybe Text)
pfdtIdentity = lens _pfdtIdentity (\s a -> s {_pfdtIdentity = a})

-- | If @NextPageToken@ is returned there are more results available. The value of @NextPageToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a @400@ error: "@Specified token has exceeded its maximum lifetime@ ".  The configured @maximumPageSize@ determines how many results can be returned in a single call.
pfdtNextPageToken :: Lens' PollForDecisionTask (Maybe Text)
pfdtNextPageToken = lens _pfdtNextPageToken (\s a -> s {_pfdtNextPageToken = a})

-- | The maximum number of results that are returned per call. Use @nextPageToken@ to obtain further pages of results.  This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.
pfdtMaximumPageSize :: Lens' PollForDecisionTask (Maybe Natural)
pfdtMaximumPageSize = lens _pfdtMaximumPageSize (\s a -> s {_pfdtMaximumPageSize = a}) . mapping _Nat

-- | When set to @true@ , returns the events in reverse order. By default the results are returned in ascending order of the @eventTimestamp@ of the events.
pfdtReverseOrder :: Lens' PollForDecisionTask (Maybe Bool)
pfdtReverseOrder = lens _pfdtReverseOrder (\s a -> s {_pfdtReverseOrder = a})

-- | The name of the domain containing the task lists to poll.
pfdtDomain :: Lens' PollForDecisionTask Text
pfdtDomain = lens _pfdtDomain (\s a -> s {_pfdtDomain = a})

-- | Specifies the task list to poll for decision tasks. The specified string must not start or end with whitespace. It must not contain a @:@ (colon), @/@ (slash), @|@ (vertical bar), or any control characters (@\u0000-\u001f@ | @\u007f-\u009f@ ). Also, it must not /be/ the literal string @arn@ .
pfdtTaskList :: Lens' PollForDecisionTask TaskList
pfdtTaskList = lens _pfdtTaskList (\s a -> s {_pfdtTaskList = a})

instance AWSPager PollForDecisionTask where
  page rq rs
    | stop (rs ^. pfdtrrsNextPageToken) = Nothing
    | stop (rs ^. pfdtrrsEvents) = Nothing
    | otherwise =
      Just $
        rq
          & pfdtNextPageToken .~ rs ^. pfdtrrsNextPageToken

instance AWSRequest PollForDecisionTask where
  type
    Rs PollForDecisionTask =
      PollForDecisionTaskResponse
  request = postJSON swf
  response =
    receiveJSON
      ( \s h x ->
          PollForDecisionTaskResponse'
            <$> (x .?> "previousStartedEventId")
            <*> (x .?> "workflowExecution")
            <*> (x .?> "workflowType")
            <*> (x .?> "nextPageToken")
            <*> (x .?> "events" .!@ mempty)
            <*> (x .?> "taskToken")
            <*> (pure (fromEnum s))
            <*> (x .:> "startedEventId")
      )

instance Hashable PollForDecisionTask

instance NFData PollForDecisionTask

instance ToHeaders PollForDecisionTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SimpleWorkflowService.PollForDecisionTask" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON PollForDecisionTask where
  toJSON PollForDecisionTask' {..} =
    object
      ( catMaybes
          [ ("identity" .=) <$> _pfdtIdentity,
            ("nextPageToken" .=) <$> _pfdtNextPageToken,
            ("maximumPageSize" .=) <$> _pfdtMaximumPageSize,
            ("reverseOrder" .=) <$> _pfdtReverseOrder,
            Just ("domain" .= _pfdtDomain),
            Just ("taskList" .= _pfdtTaskList)
          ]
      )

instance ToPath PollForDecisionTask where
  toPath = const "/"

instance ToQuery PollForDecisionTask where
  toQuery = const mempty

-- | A structure that represents a decision task. Decision tasks are sent to deciders in order for them to make decisions.
--
--
--
-- /See:/ 'pollForDecisionTaskResponse' smart constructor.
data PollForDecisionTaskResponse = PollForDecisionTaskResponse'
  { _pfdtrrsPreviousStartedEventId ::
      !( Maybe
           Integer
       ),
    _pfdtrrsWorkflowExecution ::
      !( Maybe
           WorkflowExecution
       ),
    _pfdtrrsWorkflowType ::
      !( Maybe
           WorkflowType
       ),
    _pfdtrrsNextPageToken ::
      !(Maybe Text),
    _pfdtrrsEvents ::
      !( Maybe
           [HistoryEvent]
       ),
    _pfdtrrsTaskToken ::
      !(Maybe Text),
    _pfdtrrsResponseStatus ::
      !Int,
    _pfdtrrsStartedEventId ::
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

-- | Creates a value of 'PollForDecisionTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfdtrrsPreviousStartedEventId' - The ID of the DecisionTaskStarted event of the previous decision task of this workflow execution that was processed by the decider. This can be used to determine the events in the history new since the last decision task received by the decider.
--
-- * 'pfdtrrsWorkflowExecution' - The workflow execution for which this decision task was created.
--
-- * 'pfdtrrsWorkflowType' - The type of the workflow execution for which this decision task was created.
--
-- * 'pfdtrrsNextPageToken' - If a @NextPageToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @nextPageToken@ . Keep all other arguments unchanged. The configured @maximumPageSize@ determines how many results can be returned in a single call.
--
-- * 'pfdtrrsEvents' - A paginated list of history events of the workflow execution. The decider uses this during the processing of the decision task.
--
-- * 'pfdtrrsTaskToken' - The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.
--
-- * 'pfdtrrsResponseStatus' - -- | The response status code.
--
-- * 'pfdtrrsStartedEventId' - The ID of the @DecisionTaskStarted@ event recorded in the history.
pollForDecisionTaskResponse ::
  -- | 'pfdtrrsResponseStatus'
  Int ->
  -- | 'pfdtrrsStartedEventId'
  Integer ->
  PollForDecisionTaskResponse
pollForDecisionTaskResponse
  pResponseStatus_
  pStartedEventId_ =
    PollForDecisionTaskResponse'
      { _pfdtrrsPreviousStartedEventId =
          Nothing,
        _pfdtrrsWorkflowExecution = Nothing,
        _pfdtrrsWorkflowType = Nothing,
        _pfdtrrsNextPageToken = Nothing,
        _pfdtrrsEvents = Nothing,
        _pfdtrrsTaskToken = Nothing,
        _pfdtrrsResponseStatus = pResponseStatus_,
        _pfdtrrsStartedEventId = pStartedEventId_
      }

-- | The ID of the DecisionTaskStarted event of the previous decision task of this workflow execution that was processed by the decider. This can be used to determine the events in the history new since the last decision task received by the decider.
pfdtrrsPreviousStartedEventId :: Lens' PollForDecisionTaskResponse (Maybe Integer)
pfdtrrsPreviousStartedEventId = lens _pfdtrrsPreviousStartedEventId (\s a -> s {_pfdtrrsPreviousStartedEventId = a})

-- | The workflow execution for which this decision task was created.
pfdtrrsWorkflowExecution :: Lens' PollForDecisionTaskResponse (Maybe WorkflowExecution)
pfdtrrsWorkflowExecution = lens _pfdtrrsWorkflowExecution (\s a -> s {_pfdtrrsWorkflowExecution = a})

-- | The type of the workflow execution for which this decision task was created.
pfdtrrsWorkflowType :: Lens' PollForDecisionTaskResponse (Maybe WorkflowType)
pfdtrrsWorkflowType = lens _pfdtrrsWorkflowType (\s a -> s {_pfdtrrsWorkflowType = a})

-- | If a @NextPageToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @nextPageToken@ . Keep all other arguments unchanged. The configured @maximumPageSize@ determines how many results can be returned in a single call.
pfdtrrsNextPageToken :: Lens' PollForDecisionTaskResponse (Maybe Text)
pfdtrrsNextPageToken = lens _pfdtrrsNextPageToken (\s a -> s {_pfdtrrsNextPageToken = a})

-- | A paginated list of history events of the workflow execution. The decider uses this during the processing of the decision task.
pfdtrrsEvents :: Lens' PollForDecisionTaskResponse [HistoryEvent]
pfdtrrsEvents = lens _pfdtrrsEvents (\s a -> s {_pfdtrrsEvents = a}) . _Default . _Coerce

-- | The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.
pfdtrrsTaskToken :: Lens' PollForDecisionTaskResponse (Maybe Text)
pfdtrrsTaskToken = lens _pfdtrrsTaskToken (\s a -> s {_pfdtrrsTaskToken = a})

-- | -- | The response status code.
pfdtrrsResponseStatus :: Lens' PollForDecisionTaskResponse Int
pfdtrrsResponseStatus = lens _pfdtrrsResponseStatus (\s a -> s {_pfdtrrsResponseStatus = a})

-- | The ID of the @DecisionTaskStarted@ event recorded in the history.
pfdtrrsStartedEventId :: Lens' PollForDecisionTaskResponse Integer
pfdtrrsStartedEventId = lens _pfdtrrsStartedEventId (\s a -> s {_pfdtrrsStartedEventId = a})

instance NFData PollForDecisionTaskResponse
