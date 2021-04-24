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
-- Module      : Network.AWS.SSM.DescribeMaintenanceWindowSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about upcoming executions of a maintenance window.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeMaintenanceWindowSchedule
  ( -- * Creating a Request
    describeMaintenanceWindowSchedule,
    DescribeMaintenanceWindowSchedule,

    -- * Request Lenses
    dmwsNextToken,
    dmwsMaxResults,
    dmwsResourceType,
    dmwsTargets,
    dmwsWindowId,
    dmwsFilters,

    -- * Destructuring the Response
    describeMaintenanceWindowScheduleResponse,
    DescribeMaintenanceWindowScheduleResponse,

    -- * Response Lenses
    dmwsrrsNextToken,
    dmwsrrsScheduledWindowExecutions,
    dmwsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeMaintenanceWindowSchedule' smart constructor.
data DescribeMaintenanceWindowSchedule = DescribeMaintenanceWindowSchedule'
  { _dmwsNextToken ::
      !( Maybe
           Text
       ),
    _dmwsMaxResults ::
      !( Maybe
           Nat
       ),
    _dmwsResourceType ::
      !( Maybe
           MaintenanceWindowResourceType
       ),
    _dmwsTargets ::
      !( Maybe
           [Target]
       ),
    _dmwsWindowId ::
      !( Maybe
           Text
       ),
    _dmwsFilters ::
      !( Maybe
           [PatchOrchestratorFilter]
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

-- | Creates a value of 'DescribeMaintenanceWindowSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwsNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dmwsMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'dmwsResourceType' - The type of resource you want to retrieve information about. For example, "INSTANCE".
--
-- * 'dmwsTargets' - The instance ID or key/value pair to retrieve information about.
--
-- * 'dmwsWindowId' - The ID of the maintenance window to retrieve information about.
--
-- * 'dmwsFilters' - Filters used to limit the range of results. For example, you can limit maintenance window executions to only those scheduled before or after a certain date and time.
describeMaintenanceWindowSchedule ::
  DescribeMaintenanceWindowSchedule
describeMaintenanceWindowSchedule =
  DescribeMaintenanceWindowSchedule'
    { _dmwsNextToken =
        Nothing,
      _dmwsMaxResults = Nothing,
      _dmwsResourceType = Nothing,
      _dmwsTargets = Nothing,
      _dmwsWindowId = Nothing,
      _dmwsFilters = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dmwsNextToken :: Lens' DescribeMaintenanceWindowSchedule (Maybe Text)
dmwsNextToken = lens _dmwsNextToken (\s a -> s {_dmwsNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
dmwsMaxResults :: Lens' DescribeMaintenanceWindowSchedule (Maybe Natural)
dmwsMaxResults = lens _dmwsMaxResults (\s a -> s {_dmwsMaxResults = a}) . mapping _Nat

-- | The type of resource you want to retrieve information about. For example, "INSTANCE".
dmwsResourceType :: Lens' DescribeMaintenanceWindowSchedule (Maybe MaintenanceWindowResourceType)
dmwsResourceType = lens _dmwsResourceType (\s a -> s {_dmwsResourceType = a})

-- | The instance ID or key/value pair to retrieve information about.
dmwsTargets :: Lens' DescribeMaintenanceWindowSchedule [Target]
dmwsTargets = lens _dmwsTargets (\s a -> s {_dmwsTargets = a}) . _Default . _Coerce

-- | The ID of the maintenance window to retrieve information about.
dmwsWindowId :: Lens' DescribeMaintenanceWindowSchedule (Maybe Text)
dmwsWindowId = lens _dmwsWindowId (\s a -> s {_dmwsWindowId = a})

-- | Filters used to limit the range of results. For example, you can limit maintenance window executions to only those scheduled before or after a certain date and time.
dmwsFilters :: Lens' DescribeMaintenanceWindowSchedule [PatchOrchestratorFilter]
dmwsFilters = lens _dmwsFilters (\s a -> s {_dmwsFilters = a}) . _Default . _Coerce

instance AWSPager DescribeMaintenanceWindowSchedule where
  page rq rs
    | stop (rs ^. dmwsrrsNextToken) = Nothing
    | stop (rs ^. dmwsrrsScheduledWindowExecutions) =
      Nothing
    | otherwise =
      Just $ rq & dmwsNextToken .~ rs ^. dmwsrrsNextToken

instance AWSRequest DescribeMaintenanceWindowSchedule where
  type
    Rs DescribeMaintenanceWindowSchedule =
      DescribeMaintenanceWindowScheduleResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeMaintenanceWindowScheduleResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ScheduledWindowExecutions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMaintenanceWindowSchedule

instance NFData DescribeMaintenanceWindowSchedule

instance ToHeaders DescribeMaintenanceWindowSchedule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeMaintenanceWindowSchedule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMaintenanceWindowSchedule where
  toJSON DescribeMaintenanceWindowSchedule' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dmwsNextToken,
            ("MaxResults" .=) <$> _dmwsMaxResults,
            ("ResourceType" .=) <$> _dmwsResourceType,
            ("Targets" .=) <$> _dmwsTargets,
            ("WindowId" .=) <$> _dmwsWindowId,
            ("Filters" .=) <$> _dmwsFilters
          ]
      )

instance ToPath DescribeMaintenanceWindowSchedule where
  toPath = const "/"

instance ToQuery DescribeMaintenanceWindowSchedule where
  toQuery = const mempty

-- | /See:/ 'describeMaintenanceWindowScheduleResponse' smart constructor.
data DescribeMaintenanceWindowScheduleResponse = DescribeMaintenanceWindowScheduleResponse'
  { _dmwsrrsNextToken ::
      !( Maybe
           Text
       ),
    _dmwsrrsScheduledWindowExecutions ::
      !( Maybe
           [ScheduledWindowExecution]
       ),
    _dmwsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeMaintenanceWindowScheduleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwsrrsNextToken' - The token for the next set of items to return. (You use this token in the next call.)
--
-- * 'dmwsrrsScheduledWindowExecutions' - Information about maintenance window executions scheduled for the specified time range.
--
-- * 'dmwsrrsResponseStatus' - -- | The response status code.
describeMaintenanceWindowScheduleResponse ::
  -- | 'dmwsrrsResponseStatus'
  Int ->
  DescribeMaintenanceWindowScheduleResponse
describeMaintenanceWindowScheduleResponse
  pResponseStatus_ =
    DescribeMaintenanceWindowScheduleResponse'
      { _dmwsrrsNextToken =
          Nothing,
        _dmwsrrsScheduledWindowExecutions =
          Nothing,
        _dmwsrrsResponseStatus =
          pResponseStatus_
      }

-- | The token for the next set of items to return. (You use this token in the next call.)
dmwsrrsNextToken :: Lens' DescribeMaintenanceWindowScheduleResponse (Maybe Text)
dmwsrrsNextToken = lens _dmwsrrsNextToken (\s a -> s {_dmwsrrsNextToken = a})

-- | Information about maintenance window executions scheduled for the specified time range.
dmwsrrsScheduledWindowExecutions :: Lens' DescribeMaintenanceWindowScheduleResponse [ScheduledWindowExecution]
dmwsrrsScheduledWindowExecutions = lens _dmwsrrsScheduledWindowExecutions (\s a -> s {_dmwsrrsScheduledWindowExecutions = a}) . _Default . _Coerce

-- | -- | The response status code.
dmwsrrsResponseStatus :: Lens' DescribeMaintenanceWindowScheduleResponse Int
dmwsrrsResponseStatus = lens _dmwsrrsResponseStatus (\s a -> s {_dmwsrrsResponseStatus = a})

instance
  NFData
    DescribeMaintenanceWindowScheduleResponse
