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
-- Module      : Network.AWS.SSM.DescribeMaintenanceWindowExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the executions of a maintenance window. This includes information about when the maintenance window was scheduled to be active, and information about tasks registered and run with the maintenance window.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeMaintenanceWindowExecutions
  ( -- * Creating a Request
    describeMaintenanceWindowExecutions,
    DescribeMaintenanceWindowExecutions,

    -- * Request Lenses
    dmweNextToken,
    dmweMaxResults,
    dmweFilters,
    dmweWindowId,

    -- * Destructuring the Response
    describeMaintenanceWindowExecutionsResponse,
    DescribeMaintenanceWindowExecutionsResponse,

    -- * Response Lenses
    dmwerrsNextToken,
    dmwerrsWindowExecutions,
    dmwerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeMaintenanceWindowExecutions' smart constructor.
data DescribeMaintenanceWindowExecutions = DescribeMaintenanceWindowExecutions'
  { _dmweNextToken ::
      !( Maybe
           Text
       ),
    _dmweMaxResults ::
      !( Maybe
           Nat
       ),
    _dmweFilters ::
      !( Maybe
           [MaintenanceWindowFilter]
       ),
    _dmweWindowId ::
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

-- | Creates a value of 'DescribeMaintenanceWindowExecutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmweNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dmweMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'dmweFilters' - Each entry in the array is a structure containing: Key (string, between 1 and 128 characters) Values (array of strings, each string is between 1 and 256 characters) The supported Keys are ExecutedBefore and ExecutedAfter with the value being a date/time string such as 2016-11-04T05:00:00Z.
--
-- * 'dmweWindowId' - The ID of the maintenance window whose executions should be retrieved.
describeMaintenanceWindowExecutions ::
  -- | 'dmweWindowId'
  Text ->
  DescribeMaintenanceWindowExecutions
describeMaintenanceWindowExecutions pWindowId_ =
  DescribeMaintenanceWindowExecutions'
    { _dmweNextToken =
        Nothing,
      _dmweMaxResults = Nothing,
      _dmweFilters = Nothing,
      _dmweWindowId = pWindowId_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dmweNextToken :: Lens' DescribeMaintenanceWindowExecutions (Maybe Text)
dmweNextToken = lens _dmweNextToken (\s a -> s {_dmweNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
dmweMaxResults :: Lens' DescribeMaintenanceWindowExecutions (Maybe Natural)
dmweMaxResults = lens _dmweMaxResults (\s a -> s {_dmweMaxResults = a}) . mapping _Nat

-- | Each entry in the array is a structure containing: Key (string, between 1 and 128 characters) Values (array of strings, each string is between 1 and 256 characters) The supported Keys are ExecutedBefore and ExecutedAfter with the value being a date/time string such as 2016-11-04T05:00:00Z.
dmweFilters :: Lens' DescribeMaintenanceWindowExecutions [MaintenanceWindowFilter]
dmweFilters = lens _dmweFilters (\s a -> s {_dmweFilters = a}) . _Default . _Coerce

-- | The ID of the maintenance window whose executions should be retrieved.
dmweWindowId :: Lens' DescribeMaintenanceWindowExecutions Text
dmweWindowId = lens _dmweWindowId (\s a -> s {_dmweWindowId = a})

instance AWSPager DescribeMaintenanceWindowExecutions where
  page rq rs
    | stop (rs ^. dmwerrsNextToken) = Nothing
    | stop (rs ^. dmwerrsWindowExecutions) = Nothing
    | otherwise =
      Just $ rq & dmweNextToken .~ rs ^. dmwerrsNextToken

instance
  AWSRequest
    DescribeMaintenanceWindowExecutions
  where
  type
    Rs DescribeMaintenanceWindowExecutions =
      DescribeMaintenanceWindowExecutionsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeMaintenanceWindowExecutionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "WindowExecutions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMaintenanceWindowExecutions

instance NFData DescribeMaintenanceWindowExecutions

instance
  ToHeaders
    DescribeMaintenanceWindowExecutions
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeMaintenanceWindowExecutions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMaintenanceWindowExecutions where
  toJSON DescribeMaintenanceWindowExecutions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dmweNextToken,
            ("MaxResults" .=) <$> _dmweMaxResults,
            ("Filters" .=) <$> _dmweFilters,
            Just ("WindowId" .= _dmweWindowId)
          ]
      )

instance ToPath DescribeMaintenanceWindowExecutions where
  toPath = const "/"

instance ToQuery DescribeMaintenanceWindowExecutions where
  toQuery = const mempty

-- | /See:/ 'describeMaintenanceWindowExecutionsResponse' smart constructor.
data DescribeMaintenanceWindowExecutionsResponse = DescribeMaintenanceWindowExecutionsResponse'
  { _dmwerrsNextToken ::
      !( Maybe
           Text
       ),
    _dmwerrsWindowExecutions ::
      !( Maybe
           [MaintenanceWindowExecution]
       ),
    _dmwerrsResponseStatus ::
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

-- | Creates a value of 'DescribeMaintenanceWindowExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwerrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'dmwerrsWindowExecutions' - Information about the maintenance window executions.
--
-- * 'dmwerrsResponseStatus' - -- | The response status code.
describeMaintenanceWindowExecutionsResponse ::
  -- | 'dmwerrsResponseStatus'
  Int ->
  DescribeMaintenanceWindowExecutionsResponse
describeMaintenanceWindowExecutionsResponse
  pResponseStatus_ =
    DescribeMaintenanceWindowExecutionsResponse'
      { _dmwerrsNextToken =
          Nothing,
        _dmwerrsWindowExecutions =
          Nothing,
        _dmwerrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
dmwerrsNextToken :: Lens' DescribeMaintenanceWindowExecutionsResponse (Maybe Text)
dmwerrsNextToken = lens _dmwerrsNextToken (\s a -> s {_dmwerrsNextToken = a})

-- | Information about the maintenance window executions.
dmwerrsWindowExecutions :: Lens' DescribeMaintenanceWindowExecutionsResponse [MaintenanceWindowExecution]
dmwerrsWindowExecutions = lens _dmwerrsWindowExecutions (\s a -> s {_dmwerrsWindowExecutions = a}) . _Default . _Coerce

-- | -- | The response status code.
dmwerrsResponseStatus :: Lens' DescribeMaintenanceWindowExecutionsResponse Int
dmwerrsResponseStatus = lens _dmwerrsResponseStatus (\s a -> s {_dmwerrsResponseStatus = a})

instance
  NFData
    DescribeMaintenanceWindowExecutionsResponse
