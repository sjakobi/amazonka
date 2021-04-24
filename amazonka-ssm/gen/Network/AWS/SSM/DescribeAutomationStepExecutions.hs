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
-- Module      : Network.AWS.SSM.DescribeAutomationStepExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Information about all active and terminated step executions in an Automation workflow.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeAutomationStepExecutions
  ( -- * Creating a Request
    describeAutomationStepExecutions,
    DescribeAutomationStepExecutions,

    -- * Request Lenses
    daseNextToken,
    daseMaxResults,
    daseReverseOrder,
    daseFilters,
    daseAutomationExecutionId,

    -- * Destructuring the Response
    describeAutomationStepExecutionsResponse,
    DescribeAutomationStepExecutionsResponse,

    -- * Response Lenses
    daserrsNextToken,
    daserrsStepExecutions,
    daserrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeAutomationStepExecutions' smart constructor.
data DescribeAutomationStepExecutions = DescribeAutomationStepExecutions'
  { _daseNextToken ::
      !( Maybe
           Text
       ),
    _daseMaxResults ::
      !( Maybe
           Nat
       ),
    _daseReverseOrder ::
      !( Maybe
           Bool
       ),
    _daseFilters ::
      !( Maybe
           ( List1
               StepExecutionFilter
           )
       ),
    _daseAutomationExecutionId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAutomationStepExecutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daseNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'daseMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'daseReverseOrder' - A boolean that indicates whether to list step executions in reverse order by start time. The default value is false.
--
-- * 'daseFilters' - One or more filters to limit the number of step executions returned by the request.
--
-- * 'daseAutomationExecutionId' - The Automation execution ID for which you want step execution descriptions.
describeAutomationStepExecutions ::
  -- | 'daseAutomationExecutionId'
  Text ->
  DescribeAutomationStepExecutions
describeAutomationStepExecutions
  pAutomationExecutionId_ =
    DescribeAutomationStepExecutions'
      { _daseNextToken =
          Nothing,
        _daseMaxResults = Nothing,
        _daseReverseOrder = Nothing,
        _daseFilters = Nothing,
        _daseAutomationExecutionId =
          pAutomationExecutionId_
      }

-- | The token for the next set of items to return. (You received this token from a previous call.)
daseNextToken :: Lens' DescribeAutomationStepExecutions (Maybe Text)
daseNextToken = lens _daseNextToken (\s a -> s {_daseNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
daseMaxResults :: Lens' DescribeAutomationStepExecutions (Maybe Natural)
daseMaxResults = lens _daseMaxResults (\s a -> s {_daseMaxResults = a}) . mapping _Nat

-- | A boolean that indicates whether to list step executions in reverse order by start time. The default value is false.
daseReverseOrder :: Lens' DescribeAutomationStepExecutions (Maybe Bool)
daseReverseOrder = lens _daseReverseOrder (\s a -> s {_daseReverseOrder = a})

-- | One or more filters to limit the number of step executions returned by the request.
daseFilters :: Lens' DescribeAutomationStepExecutions (Maybe (NonEmpty StepExecutionFilter))
daseFilters = lens _daseFilters (\s a -> s {_daseFilters = a}) . mapping _List1

-- | The Automation execution ID for which you want step execution descriptions.
daseAutomationExecutionId :: Lens' DescribeAutomationStepExecutions Text
daseAutomationExecutionId = lens _daseAutomationExecutionId (\s a -> s {_daseAutomationExecutionId = a})

instance AWSPager DescribeAutomationStepExecutions where
  page rq rs
    | stop (rs ^. daserrsNextToken) = Nothing
    | stop (rs ^. daserrsStepExecutions) = Nothing
    | otherwise =
      Just $ rq & daseNextToken .~ rs ^. daserrsNextToken

instance AWSRequest DescribeAutomationStepExecutions where
  type
    Rs DescribeAutomationStepExecutions =
      DescribeAutomationStepExecutionsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeAutomationStepExecutionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "StepExecutions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAutomationStepExecutions

instance NFData DescribeAutomationStepExecutions

instance ToHeaders DescribeAutomationStepExecutions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeAutomationStepExecutions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAutomationStepExecutions where
  toJSON DescribeAutomationStepExecutions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _daseNextToken,
            ("MaxResults" .=) <$> _daseMaxResults,
            ("ReverseOrder" .=) <$> _daseReverseOrder,
            ("Filters" .=) <$> _daseFilters,
            Just
              ( "AutomationExecutionId"
                  .= _daseAutomationExecutionId
              )
          ]
      )

instance ToPath DescribeAutomationStepExecutions where
  toPath = const "/"

instance ToQuery DescribeAutomationStepExecutions where
  toQuery = const mempty

-- | /See:/ 'describeAutomationStepExecutionsResponse' smart constructor.
data DescribeAutomationStepExecutionsResponse = DescribeAutomationStepExecutionsResponse'
  { _daserrsNextToken ::
      !( Maybe
           Text
       ),
    _daserrsStepExecutions ::
      !( Maybe
           [StepExecution]
       ),
    _daserrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAutomationStepExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daserrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'daserrsStepExecutions' - A list of details about the current state of all steps that make up an execution.
--
-- * 'daserrsResponseStatus' - -- | The response status code.
describeAutomationStepExecutionsResponse ::
  -- | 'daserrsResponseStatus'
  Int ->
  DescribeAutomationStepExecutionsResponse
describeAutomationStepExecutionsResponse
  pResponseStatus_ =
    DescribeAutomationStepExecutionsResponse'
      { _daserrsNextToken =
          Nothing,
        _daserrsStepExecutions = Nothing,
        _daserrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
daserrsNextToken :: Lens' DescribeAutomationStepExecutionsResponse (Maybe Text)
daserrsNextToken = lens _daserrsNextToken (\s a -> s {_daserrsNextToken = a})

-- | A list of details about the current state of all steps that make up an execution.
daserrsStepExecutions :: Lens' DescribeAutomationStepExecutionsResponse [StepExecution]
daserrsStepExecutions = lens _daserrsStepExecutions (\s a -> s {_daserrsStepExecutions = a}) . _Default . _Coerce

-- | -- | The response status code.
daserrsResponseStatus :: Lens' DescribeAutomationStepExecutionsResponse Int
daserrsResponseStatus = lens _daserrsResponseStatus (\s a -> s {_daserrsResponseStatus = a})

instance
  NFData
    DescribeAutomationStepExecutionsResponse
