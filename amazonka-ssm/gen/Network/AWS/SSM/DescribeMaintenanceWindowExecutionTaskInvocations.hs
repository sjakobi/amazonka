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
-- Module      : Network.AWS.SSM.DescribeMaintenanceWindowExecutionTaskInvocations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the individual task executions (one per target) for a particular task run as part of a maintenance window execution.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeMaintenanceWindowExecutionTaskInvocations
  ( -- * Creating a Request
    describeMaintenanceWindowExecutionTaskInvocations,
    DescribeMaintenanceWindowExecutionTaskInvocations,

    -- * Request Lenses
    dmwetiNextToken,
    dmwetiMaxResults,
    dmwetiFilters,
    dmwetiWindowExecutionId,
    dmwetiTaskId,

    -- * Destructuring the Response
    describeMaintenanceWindowExecutionTaskInvocationsResponse,
    DescribeMaintenanceWindowExecutionTaskInvocationsResponse,

    -- * Response Lenses
    dmwetirrsNextToken,
    dmwetirrsWindowExecutionTaskInvocationIdentities,
    dmwetirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeMaintenanceWindowExecutionTaskInvocations' smart constructor.
data DescribeMaintenanceWindowExecutionTaskInvocations = DescribeMaintenanceWindowExecutionTaskInvocations'
  { _dmwetiNextToken ::
      !( Maybe
           Text
       ),
    _dmwetiMaxResults ::
      !( Maybe
           Nat
       ),
    _dmwetiFilters ::
      !( Maybe
           [MaintenanceWindowFilter]
       ),
    _dmwetiWindowExecutionId ::
      !Text,
    _dmwetiTaskId ::
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

-- | Creates a value of 'DescribeMaintenanceWindowExecutionTaskInvocations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwetiNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dmwetiMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'dmwetiFilters' - Optional filters used to scope down the returned task invocations. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.
--
-- * 'dmwetiWindowExecutionId' - The ID of the maintenance window execution the task is part of.
--
-- * 'dmwetiTaskId' - The ID of the specific task in the maintenance window task that should be retrieved.
describeMaintenanceWindowExecutionTaskInvocations ::
  -- | 'dmwetiWindowExecutionId'
  Text ->
  -- | 'dmwetiTaskId'
  Text ->
  DescribeMaintenanceWindowExecutionTaskInvocations
describeMaintenanceWindowExecutionTaskInvocations
  pWindowExecutionId_
  pTaskId_ =
    DescribeMaintenanceWindowExecutionTaskInvocations'
      { _dmwetiNextToken =
          Nothing,
        _dmwetiMaxResults =
          Nothing,
        _dmwetiFilters = Nothing,
        _dmwetiWindowExecutionId =
          pWindowExecutionId_,
        _dmwetiTaskId = pTaskId_
      }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dmwetiNextToken :: Lens' DescribeMaintenanceWindowExecutionTaskInvocations (Maybe Text)
dmwetiNextToken = lens _dmwetiNextToken (\s a -> s {_dmwetiNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
dmwetiMaxResults :: Lens' DescribeMaintenanceWindowExecutionTaskInvocations (Maybe Natural)
dmwetiMaxResults = lens _dmwetiMaxResults (\s a -> s {_dmwetiMaxResults = a}) . mapping _Nat

-- | Optional filters used to scope down the returned task invocations. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.
dmwetiFilters :: Lens' DescribeMaintenanceWindowExecutionTaskInvocations [MaintenanceWindowFilter]
dmwetiFilters = lens _dmwetiFilters (\s a -> s {_dmwetiFilters = a}) . _Default . _Coerce

-- | The ID of the maintenance window execution the task is part of.
dmwetiWindowExecutionId :: Lens' DescribeMaintenanceWindowExecutionTaskInvocations Text
dmwetiWindowExecutionId = lens _dmwetiWindowExecutionId (\s a -> s {_dmwetiWindowExecutionId = a})

-- | The ID of the specific task in the maintenance window task that should be retrieved.
dmwetiTaskId :: Lens' DescribeMaintenanceWindowExecutionTaskInvocations Text
dmwetiTaskId = lens _dmwetiTaskId (\s a -> s {_dmwetiTaskId = a})

instance
  AWSPager
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  page rq rs
    | stop (rs ^. dmwetirrsNextToken) = Nothing
    | stop
        ( rs
            ^. dmwetirrsWindowExecutionTaskInvocationIdentities
        ) =
      Nothing
    | otherwise =
      Just $
        rq
          & dmwetiNextToken .~ rs ^. dmwetirrsNextToken

instance
  AWSRequest
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  type
    Rs
      DescribeMaintenanceWindowExecutionTaskInvocations =
      DescribeMaintenanceWindowExecutionTaskInvocationsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeMaintenanceWindowExecutionTaskInvocationsResponse'
            <$> (x .?> "NextToken")
              <*> ( x .?> "WindowExecutionTaskInvocationIdentities"
                      .!@ mempty
                  )
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeMaintenanceWindowExecutionTaskInvocations

instance
  NFData
    DescribeMaintenanceWindowExecutionTaskInvocations

instance
  ToHeaders
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeMaintenanceWindowExecutionTaskInvocations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  toJSON
    DescribeMaintenanceWindowExecutionTaskInvocations' {..} =
      object
        ( catMaybes
            [ ("NextToken" .=) <$> _dmwetiNextToken,
              ("MaxResults" .=) <$> _dmwetiMaxResults,
              ("Filters" .=) <$> _dmwetiFilters,
              Just
                ("WindowExecutionId" .= _dmwetiWindowExecutionId),
              Just ("TaskId" .= _dmwetiTaskId)
            ]
        )

instance
  ToPath
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  toPath = const "/"

instance
  ToQuery
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  toQuery = const mempty

-- | /See:/ 'describeMaintenanceWindowExecutionTaskInvocationsResponse' smart constructor.
data DescribeMaintenanceWindowExecutionTaskInvocationsResponse = DescribeMaintenanceWindowExecutionTaskInvocationsResponse'
  { _dmwetirrsNextToken ::
      !( Maybe
           Text
       ),
    _dmwetirrsWindowExecutionTaskInvocationIdentities ::
      !( Maybe
           [MaintenanceWindowExecutionTaskInvocationIdentity]
       ),
    _dmwetirrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMaintenanceWindowExecutionTaskInvocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwetirrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'dmwetirrsWindowExecutionTaskInvocationIdentities' - Information about the task invocation results per invocation.
--
-- * 'dmwetirrsResponseStatus' - -- | The response status code.
describeMaintenanceWindowExecutionTaskInvocationsResponse ::
  -- | 'dmwetirrsResponseStatus'
  Int ->
  DescribeMaintenanceWindowExecutionTaskInvocationsResponse
describeMaintenanceWindowExecutionTaskInvocationsResponse
  pResponseStatus_ =
    DescribeMaintenanceWindowExecutionTaskInvocationsResponse'
      { _dmwetirrsNextToken =
          Nothing,
        _dmwetirrsWindowExecutionTaskInvocationIdentities =
          Nothing,
        _dmwetirrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
dmwetirrsNextToken :: Lens' DescribeMaintenanceWindowExecutionTaskInvocationsResponse (Maybe Text)
dmwetirrsNextToken = lens _dmwetirrsNextToken (\s a -> s {_dmwetirrsNextToken = a})

-- | Information about the task invocation results per invocation.
dmwetirrsWindowExecutionTaskInvocationIdentities :: Lens' DescribeMaintenanceWindowExecutionTaskInvocationsResponse [MaintenanceWindowExecutionTaskInvocationIdentity]
dmwetirrsWindowExecutionTaskInvocationIdentities = lens _dmwetirrsWindowExecutionTaskInvocationIdentities (\s a -> s {_dmwetirrsWindowExecutionTaskInvocationIdentities = a}) . _Default . _Coerce

-- | -- | The response status code.
dmwetirrsResponseStatus :: Lens' DescribeMaintenanceWindowExecutionTaskInvocationsResponse Int
dmwetirrsResponseStatus = lens _dmwetirrsResponseStatus (\s a -> s {_dmwetirrsResponseStatus = a})

instance
  NFData
    DescribeMaintenanceWindowExecutionTaskInvocationsResponse
