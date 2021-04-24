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
-- Module      : Network.AWS.SSM.DescribeMaintenanceWindowExecutionTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For a given maintenance window execution, lists the tasks that were run.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeMaintenanceWindowExecutionTasks
  ( -- * Creating a Request
    describeMaintenanceWindowExecutionTasks,
    DescribeMaintenanceWindowExecutionTasks,

    -- * Request Lenses
    dmwetNextToken,
    dmwetMaxResults,
    dmwetFilters,
    dmwetWindowExecutionId,

    -- * Destructuring the Response
    describeMaintenanceWindowExecutionTasksResponse,
    DescribeMaintenanceWindowExecutionTasksResponse,

    -- * Response Lenses
    dmwetrrsNextToken,
    dmwetrrsWindowExecutionTaskIdentities,
    dmwetrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeMaintenanceWindowExecutionTasks' smart constructor.
data DescribeMaintenanceWindowExecutionTasks = DescribeMaintenanceWindowExecutionTasks'
  { _dmwetNextToken ::
      !( Maybe
           Text
       ),
    _dmwetMaxResults ::
      !( Maybe
           Nat
       ),
    _dmwetFilters ::
      !( Maybe
           [MaintenanceWindowFilter]
       ),
    _dmwetWindowExecutionId ::
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

-- | Creates a value of 'DescribeMaintenanceWindowExecutionTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwetNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dmwetMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'dmwetFilters' - Optional filters used to scope down the returned tasks. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.
--
-- * 'dmwetWindowExecutionId' - The ID of the maintenance window execution whose task executions should be retrieved.
describeMaintenanceWindowExecutionTasks ::
  -- | 'dmwetWindowExecutionId'
  Text ->
  DescribeMaintenanceWindowExecutionTasks
describeMaintenanceWindowExecutionTasks
  pWindowExecutionId_ =
    DescribeMaintenanceWindowExecutionTasks'
      { _dmwetNextToken =
          Nothing,
        _dmwetMaxResults = Nothing,
        _dmwetFilters = Nothing,
        _dmwetWindowExecutionId =
          pWindowExecutionId_
      }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dmwetNextToken :: Lens' DescribeMaintenanceWindowExecutionTasks (Maybe Text)
dmwetNextToken = lens _dmwetNextToken (\s a -> s {_dmwetNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
dmwetMaxResults :: Lens' DescribeMaintenanceWindowExecutionTasks (Maybe Natural)
dmwetMaxResults = lens _dmwetMaxResults (\s a -> s {_dmwetMaxResults = a}) . mapping _Nat

-- | Optional filters used to scope down the returned tasks. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.
dmwetFilters :: Lens' DescribeMaintenanceWindowExecutionTasks [MaintenanceWindowFilter]
dmwetFilters = lens _dmwetFilters (\s a -> s {_dmwetFilters = a}) . _Default . _Coerce

-- | The ID of the maintenance window execution whose task executions should be retrieved.
dmwetWindowExecutionId :: Lens' DescribeMaintenanceWindowExecutionTasks Text
dmwetWindowExecutionId = lens _dmwetWindowExecutionId (\s a -> s {_dmwetWindowExecutionId = a})

instance
  AWSPager
    DescribeMaintenanceWindowExecutionTasks
  where
  page rq rs
    | stop (rs ^. dmwetrrsNextToken) = Nothing
    | stop (rs ^. dmwetrrsWindowExecutionTaskIdentities) =
      Nothing
    | otherwise =
      Just $ rq & dmwetNextToken .~ rs ^. dmwetrrsNextToken

instance
  AWSRequest
    DescribeMaintenanceWindowExecutionTasks
  where
  type
    Rs DescribeMaintenanceWindowExecutionTasks =
      DescribeMaintenanceWindowExecutionTasksResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeMaintenanceWindowExecutionTasksResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "WindowExecutionTaskIdentities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeMaintenanceWindowExecutionTasks

instance
  NFData
    DescribeMaintenanceWindowExecutionTasks

instance
  ToHeaders
    DescribeMaintenanceWindowExecutionTasks
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeMaintenanceWindowExecutionTasks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeMaintenanceWindowExecutionTasks
  where
  toJSON DescribeMaintenanceWindowExecutionTasks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dmwetNextToken,
            ("MaxResults" .=) <$> _dmwetMaxResults,
            ("Filters" .=) <$> _dmwetFilters,
            Just
              ("WindowExecutionId" .= _dmwetWindowExecutionId)
          ]
      )

instance
  ToPath
    DescribeMaintenanceWindowExecutionTasks
  where
  toPath = const "/"

instance
  ToQuery
    DescribeMaintenanceWindowExecutionTasks
  where
  toQuery = const mempty

-- | /See:/ 'describeMaintenanceWindowExecutionTasksResponse' smart constructor.
data DescribeMaintenanceWindowExecutionTasksResponse = DescribeMaintenanceWindowExecutionTasksResponse'
  { _dmwetrrsNextToken ::
      !( Maybe
           Text
       ),
    _dmwetrrsWindowExecutionTaskIdentities ::
      !( Maybe
           [MaintenanceWindowExecutionTaskIdentity]
       ),
    _dmwetrrsResponseStatus ::
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

-- | Creates a value of 'DescribeMaintenanceWindowExecutionTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwetrrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'dmwetrrsWindowExecutionTaskIdentities' - Information about the task executions.
--
-- * 'dmwetrrsResponseStatus' - -- | The response status code.
describeMaintenanceWindowExecutionTasksResponse ::
  -- | 'dmwetrrsResponseStatus'
  Int ->
  DescribeMaintenanceWindowExecutionTasksResponse
describeMaintenanceWindowExecutionTasksResponse
  pResponseStatus_ =
    DescribeMaintenanceWindowExecutionTasksResponse'
      { _dmwetrrsNextToken =
          Nothing,
        _dmwetrrsWindowExecutionTaskIdentities =
          Nothing,
        _dmwetrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
dmwetrrsNextToken :: Lens' DescribeMaintenanceWindowExecutionTasksResponse (Maybe Text)
dmwetrrsNextToken = lens _dmwetrrsNextToken (\s a -> s {_dmwetrrsNextToken = a})

-- | Information about the task executions.
dmwetrrsWindowExecutionTaskIdentities :: Lens' DescribeMaintenanceWindowExecutionTasksResponse [MaintenanceWindowExecutionTaskIdentity]
dmwetrrsWindowExecutionTaskIdentities = lens _dmwetrrsWindowExecutionTaskIdentities (\s a -> s {_dmwetrrsWindowExecutionTaskIdentities = a}) . _Default . _Coerce

-- | -- | The response status code.
dmwetrrsResponseStatus :: Lens' DescribeMaintenanceWindowExecutionTasksResponse Int
dmwetrrsResponseStatus = lens _dmwetrrsResponseStatus (\s a -> s {_dmwetrrsResponseStatus = a})

instance
  NFData
    DescribeMaintenanceWindowExecutionTasksResponse
