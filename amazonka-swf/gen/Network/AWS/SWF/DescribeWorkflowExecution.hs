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
-- Module      : Network.AWS.SWF.DescribeWorkflowExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified workflow execution including its type and some statistics.
--
--
-- __Access Control__
--
-- You can use IAM policies to control this action's access to Amazon SWF resources as follows:
--
--     * Use a @Resource@ element with the domain name to limit the action to only specified domains.
--
--     * Use an @Action@ element to allow or deny permission to call this action.
--
--     * You cannot use an IAM policy to constrain this action's parameters.
--
--
--
-- If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's @cause@ parameter is set to @OPERATION_NOT_PERMITTED@ . For details and example IAM policies, see <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows> in the /Amazon SWF Developer Guide/ .
module Network.AWS.SWF.DescribeWorkflowExecution
  ( -- * Creating a Request
    describeWorkflowExecution,
    DescribeWorkflowExecution,

    -- * Request Lenses
    dweDomain,
    dweExecution,

    -- * Destructuring the Response
    describeWorkflowExecutionResponse,
    DescribeWorkflowExecutionResponse,

    -- * Response Lenses
    dwerrsLatestExecutionContext,
    dwerrsLatestActivityTaskTimestamp,
    dwerrsResponseStatus,
    dwerrsExecutionInfo,
    dwerrsExecutionConfiguration,
    dwerrsOpenCounts,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SWF.Types

-- | /See:/ 'describeWorkflowExecution' smart constructor.
data DescribeWorkflowExecution = DescribeWorkflowExecution'
  { _dweDomain ::
      !Text,
    _dweExecution ::
      !WorkflowExecution
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeWorkflowExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dweDomain' - The name of the domain containing the workflow execution.
--
-- * 'dweExecution' - The workflow execution to describe.
describeWorkflowExecution ::
  -- | 'dweDomain'
  Text ->
  -- | 'dweExecution'
  WorkflowExecution ->
  DescribeWorkflowExecution
describeWorkflowExecution pDomain_ pExecution_ =
  DescribeWorkflowExecution'
    { _dweDomain = pDomain_,
      _dweExecution = pExecution_
    }

-- | The name of the domain containing the workflow execution.
dweDomain :: Lens' DescribeWorkflowExecution Text
dweDomain = lens _dweDomain (\s a -> s {_dweDomain = a})

-- | The workflow execution to describe.
dweExecution :: Lens' DescribeWorkflowExecution WorkflowExecution
dweExecution = lens _dweExecution (\s a -> s {_dweExecution = a})

instance AWSRequest DescribeWorkflowExecution where
  type
    Rs DescribeWorkflowExecution =
      DescribeWorkflowExecutionResponse
  request = postJSON swf
  response =
    receiveJSON
      ( \s h x ->
          DescribeWorkflowExecutionResponse'
            <$> (x .?> "latestExecutionContext")
            <*> (x .?> "latestActivityTaskTimestamp")
            <*> (pure (fromEnum s))
            <*> (x .:> "executionInfo")
            <*> (x .:> "executionConfiguration")
            <*> (x .:> "openCounts")
      )

instance Hashable DescribeWorkflowExecution

instance NFData DescribeWorkflowExecution

instance ToHeaders DescribeWorkflowExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SimpleWorkflowService.DescribeWorkflowExecution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeWorkflowExecution where
  toJSON DescribeWorkflowExecution' {..} =
    object
      ( catMaybes
          [ Just ("domain" .= _dweDomain),
            Just ("execution" .= _dweExecution)
          ]
      )

instance ToPath DescribeWorkflowExecution where
  toPath = const "/"

instance ToQuery DescribeWorkflowExecution where
  toQuery = const mempty

-- | Contains details about a workflow execution.
--
--
--
-- /See:/ 'describeWorkflowExecutionResponse' smart constructor.
data DescribeWorkflowExecutionResponse = DescribeWorkflowExecutionResponse'
  { _dwerrsLatestExecutionContext ::
      !( Maybe
           Text
       ),
    _dwerrsLatestActivityTaskTimestamp ::
      !( Maybe
           POSIX
       ),
    _dwerrsResponseStatus ::
      !Int,
    _dwerrsExecutionInfo ::
      !WorkflowExecutionInfo,
    _dwerrsExecutionConfiguration ::
      !WorkflowExecutionConfiguration,
    _dwerrsOpenCounts ::
      !WorkflowExecutionOpenCounts
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeWorkflowExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwerrsLatestExecutionContext' - The latest executionContext provided by the decider for this workflow execution. A decider can provide an executionContext (a free-form string) when closing a decision task using 'RespondDecisionTaskCompleted' .
--
-- * 'dwerrsLatestActivityTaskTimestamp' - The time when the last activity task was scheduled for this workflow execution. You can use this information to determine if the workflow has not made progress for an unusually long period of time and might require a corrective action.
--
-- * 'dwerrsResponseStatus' - -- | The response status code.
--
-- * 'dwerrsExecutionInfo' - Information about the workflow execution.
--
-- * 'dwerrsExecutionConfiguration' - The configuration settings for this workflow execution including timeout values, tasklist etc.
--
-- * 'dwerrsOpenCounts' - The number of tasks for this workflow execution. This includes open and closed tasks of all types.
describeWorkflowExecutionResponse ::
  -- | 'dwerrsResponseStatus'
  Int ->
  -- | 'dwerrsExecutionInfo'
  WorkflowExecutionInfo ->
  -- | 'dwerrsExecutionConfiguration'
  WorkflowExecutionConfiguration ->
  -- | 'dwerrsOpenCounts'
  WorkflowExecutionOpenCounts ->
  DescribeWorkflowExecutionResponse
describeWorkflowExecutionResponse
  pResponseStatus_
  pExecutionInfo_
  pExecutionConfiguration_
  pOpenCounts_ =
    DescribeWorkflowExecutionResponse'
      { _dwerrsLatestExecutionContext =
          Nothing,
        _dwerrsLatestActivityTaskTimestamp =
          Nothing,
        _dwerrsResponseStatus = pResponseStatus_,
        _dwerrsExecutionInfo = pExecutionInfo_,
        _dwerrsExecutionConfiguration =
          pExecutionConfiguration_,
        _dwerrsOpenCounts = pOpenCounts_
      }

-- | The latest executionContext provided by the decider for this workflow execution. A decider can provide an executionContext (a free-form string) when closing a decision task using 'RespondDecisionTaskCompleted' .
dwerrsLatestExecutionContext :: Lens' DescribeWorkflowExecutionResponse (Maybe Text)
dwerrsLatestExecutionContext = lens _dwerrsLatestExecutionContext (\s a -> s {_dwerrsLatestExecutionContext = a})

-- | The time when the last activity task was scheduled for this workflow execution. You can use this information to determine if the workflow has not made progress for an unusually long period of time and might require a corrective action.
dwerrsLatestActivityTaskTimestamp :: Lens' DescribeWorkflowExecutionResponse (Maybe UTCTime)
dwerrsLatestActivityTaskTimestamp = lens _dwerrsLatestActivityTaskTimestamp (\s a -> s {_dwerrsLatestActivityTaskTimestamp = a}) . mapping _Time

-- | -- | The response status code.
dwerrsResponseStatus :: Lens' DescribeWorkflowExecutionResponse Int
dwerrsResponseStatus = lens _dwerrsResponseStatus (\s a -> s {_dwerrsResponseStatus = a})

-- | Information about the workflow execution.
dwerrsExecutionInfo :: Lens' DescribeWorkflowExecutionResponse WorkflowExecutionInfo
dwerrsExecutionInfo = lens _dwerrsExecutionInfo (\s a -> s {_dwerrsExecutionInfo = a})

-- | The configuration settings for this workflow execution including timeout values, tasklist etc.
dwerrsExecutionConfiguration :: Lens' DescribeWorkflowExecutionResponse WorkflowExecutionConfiguration
dwerrsExecutionConfiguration = lens _dwerrsExecutionConfiguration (\s a -> s {_dwerrsExecutionConfiguration = a})

-- | The number of tasks for this workflow execution. This includes open and closed tasks of all types.
dwerrsOpenCounts :: Lens' DescribeWorkflowExecutionResponse WorkflowExecutionOpenCounts
dwerrsOpenCounts = lens _dwerrsOpenCounts (\s a -> s {_dwerrsOpenCounts = a})

instance NFData DescribeWorkflowExecutionResponse
