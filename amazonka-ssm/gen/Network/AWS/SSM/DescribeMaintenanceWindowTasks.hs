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
-- Module      : Network.AWS.SSM.DescribeMaintenanceWindowTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tasks in a maintenance window.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeMaintenanceWindowTasks
  ( -- * Creating a Request
    describeMaintenanceWindowTasks,
    DescribeMaintenanceWindowTasks,

    -- * Request Lenses
    dmwtsNextToken,
    dmwtsMaxResults,
    dmwtsFilters,
    dmwtsWindowId,

    -- * Destructuring the Response
    describeMaintenanceWindowTasksResponse,
    DescribeMaintenanceWindowTasksResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsTasks,
    desrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeMaintenanceWindowTasks' smart constructor.
data DescribeMaintenanceWindowTasks = DescribeMaintenanceWindowTasks'
  { _dmwtsNextToken ::
      !( Maybe
           Text
       ),
    _dmwtsMaxResults ::
      !( Maybe
           Nat
       ),
    _dmwtsFilters ::
      !( Maybe
           [MaintenanceWindowFilter]
       ),
    _dmwtsWindowId ::
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

-- | Creates a value of 'DescribeMaintenanceWindowTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwtsNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dmwtsMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'dmwtsFilters' - Optional filters used to narrow down the scope of the returned tasks. The supported filter keys are WindowTaskId, TaskArn, Priority, and TaskType.
--
-- * 'dmwtsWindowId' - The ID of the maintenance window whose tasks should be retrieved.
describeMaintenanceWindowTasks ::
  -- | 'dmwtsWindowId'
  Text ->
  DescribeMaintenanceWindowTasks
describeMaintenanceWindowTasks pWindowId_ =
  DescribeMaintenanceWindowTasks'
    { _dmwtsNextToken =
        Nothing,
      _dmwtsMaxResults = Nothing,
      _dmwtsFilters = Nothing,
      _dmwtsWindowId = pWindowId_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dmwtsNextToken :: Lens' DescribeMaintenanceWindowTasks (Maybe Text)
dmwtsNextToken = lens _dmwtsNextToken (\s a -> s {_dmwtsNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
dmwtsMaxResults :: Lens' DescribeMaintenanceWindowTasks (Maybe Natural)
dmwtsMaxResults = lens _dmwtsMaxResults (\s a -> s {_dmwtsMaxResults = a}) . mapping _Nat

-- | Optional filters used to narrow down the scope of the returned tasks. The supported filter keys are WindowTaskId, TaskArn, Priority, and TaskType.
dmwtsFilters :: Lens' DescribeMaintenanceWindowTasks [MaintenanceWindowFilter]
dmwtsFilters = lens _dmwtsFilters (\s a -> s {_dmwtsFilters = a}) . _Default . _Coerce

-- | The ID of the maintenance window whose tasks should be retrieved.
dmwtsWindowId :: Lens' DescribeMaintenanceWindowTasks Text
dmwtsWindowId = lens _dmwtsWindowId (\s a -> s {_dmwtsWindowId = a})

instance AWSPager DescribeMaintenanceWindowTasks where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsTasks) = Nothing
    | otherwise =
      Just $ rq & dmwtsNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeMaintenanceWindowTasks where
  type
    Rs DescribeMaintenanceWindowTasks =
      DescribeMaintenanceWindowTasksResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeMaintenanceWindowTasksResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Tasks" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMaintenanceWindowTasks

instance NFData DescribeMaintenanceWindowTasks

instance ToHeaders DescribeMaintenanceWindowTasks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeMaintenanceWindowTasks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMaintenanceWindowTasks where
  toJSON DescribeMaintenanceWindowTasks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dmwtsNextToken,
            ("MaxResults" .=) <$> _dmwtsMaxResults,
            ("Filters" .=) <$> _dmwtsFilters,
            Just ("WindowId" .= _dmwtsWindowId)
          ]
      )

instance ToPath DescribeMaintenanceWindowTasks where
  toPath = const "/"

instance ToQuery DescribeMaintenanceWindowTasks where
  toQuery = const mempty

-- | /See:/ 'describeMaintenanceWindowTasksResponse' smart constructor.
data DescribeMaintenanceWindowTasksResponse = DescribeMaintenanceWindowTasksResponse'
  { _desrsNextToken ::
      !( Maybe
           Text
       ),
    _desrsTasks ::
      !( Maybe
           [MaintenanceWindowTask]
       ),
    _desrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMaintenanceWindowTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'desrsTasks' - Information about the tasks in the maintenance window.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeMaintenanceWindowTasksResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeMaintenanceWindowTasksResponse
describeMaintenanceWindowTasksResponse
  pResponseStatus_ =
    DescribeMaintenanceWindowTasksResponse'
      { _desrsNextToken =
          Nothing,
        _desrsTasks = Nothing,
        _desrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
desrsNextToken :: Lens' DescribeMaintenanceWindowTasksResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | Information about the tasks in the maintenance window.
desrsTasks :: Lens' DescribeMaintenanceWindowTasksResponse [MaintenanceWindowTask]
desrsTasks = lens _desrsTasks (\s a -> s {_desrsTasks = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeMaintenanceWindowTasksResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance
  NFData
    DescribeMaintenanceWindowTasksResponse
