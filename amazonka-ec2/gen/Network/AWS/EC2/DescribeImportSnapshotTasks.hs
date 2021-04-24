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
-- Module      : Network.AWS.EC2.DescribeImportSnapshotTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your import snapshot tasks.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeImportSnapshotTasks
  ( -- * Creating a Request
    describeImportSnapshotTasks,
    DescribeImportSnapshotTasks,

    -- * Request Lenses
    distNextToken,
    distDryRun,
    distImportTaskIds,
    distMaxResults,
    distFilters,

    -- * Destructuring the Response
    describeImportSnapshotTasksResponse,
    DescribeImportSnapshotTasksResponse,

    -- * Response Lenses
    distrrsImportSnapshotTasks,
    distrrsNextToken,
    distrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeImportSnapshotTasks' smart constructor.
data DescribeImportSnapshotTasks = DescribeImportSnapshotTasks'
  { _distNextToken ::
      !(Maybe Text),
    _distDryRun ::
      !(Maybe Bool),
    _distImportTaskIds ::
      !(Maybe [Text]),
    _distMaxResults ::
      !(Maybe Int),
    _distFilters ::
      !( Maybe
           [Filter]
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

-- | Creates a value of 'DescribeImportSnapshotTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'distNextToken' - A token that indicates the next page of results.
--
-- * 'distDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'distImportTaskIds' - A list of import snapshot task IDs.
--
-- * 'distMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'distFilters' - The filters.
describeImportSnapshotTasks ::
  DescribeImportSnapshotTasks
describeImportSnapshotTasks =
  DescribeImportSnapshotTasks'
    { _distNextToken =
        Nothing,
      _distDryRun = Nothing,
      _distImportTaskIds = Nothing,
      _distMaxResults = Nothing,
      _distFilters = Nothing
    }

-- | A token that indicates the next page of results.
distNextToken :: Lens' DescribeImportSnapshotTasks (Maybe Text)
distNextToken = lens _distNextToken (\s a -> s {_distNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
distDryRun :: Lens' DescribeImportSnapshotTasks (Maybe Bool)
distDryRun = lens _distDryRun (\s a -> s {_distDryRun = a})

-- | A list of import snapshot task IDs.
distImportTaskIds :: Lens' DescribeImportSnapshotTasks [Text]
distImportTaskIds = lens _distImportTaskIds (\s a -> s {_distImportTaskIds = a}) . _Default . _Coerce

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value.
distMaxResults :: Lens' DescribeImportSnapshotTasks (Maybe Int)
distMaxResults = lens _distMaxResults (\s a -> s {_distMaxResults = a})

-- | The filters.
distFilters :: Lens' DescribeImportSnapshotTasks [Filter]
distFilters = lens _distFilters (\s a -> s {_distFilters = a}) . _Default . _Coerce

instance AWSPager DescribeImportSnapshotTasks where
  page rq rs
    | stop (rs ^. distrrsNextToken) = Nothing
    | stop (rs ^. distrrsImportSnapshotTasks) = Nothing
    | otherwise =
      Just $ rq & distNextToken .~ rs ^. distrrsNextToken

instance AWSRequest DescribeImportSnapshotTasks where
  type
    Rs DescribeImportSnapshotTasks =
      DescribeImportSnapshotTasksResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeImportSnapshotTasksResponse'
            <$> ( x .@? "importSnapshotTaskSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeImportSnapshotTasks

instance NFData DescribeImportSnapshotTasks

instance ToHeaders DescribeImportSnapshotTasks where
  toHeaders = const mempty

instance ToPath DescribeImportSnapshotTasks where
  toPath = const "/"

instance ToQuery DescribeImportSnapshotTasks where
  toQuery DescribeImportSnapshotTasks' {..} =
    mconcat
      [ "Action"
          =: ("DescribeImportSnapshotTasks" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _distNextToken,
        "DryRun" =: _distDryRun,
        toQuery
          (toQueryList "ImportTaskId" <$> _distImportTaskIds),
        "MaxResults" =: _distMaxResults,
        toQuery (toQueryList "Filters" <$> _distFilters)
      ]

-- | /See:/ 'describeImportSnapshotTasksResponse' smart constructor.
data DescribeImportSnapshotTasksResponse = DescribeImportSnapshotTasksResponse'
  { _distrrsImportSnapshotTasks ::
      !( Maybe
           [ImportSnapshotTask]
       ),
    _distrrsNextToken ::
      !( Maybe
           Text
       ),
    _distrrsResponseStatus ::
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

-- | Creates a value of 'DescribeImportSnapshotTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'distrrsImportSnapshotTasks' - A list of zero or more import snapshot tasks that are currently active or were completed or canceled in the previous 7 days.
--
-- * 'distrrsNextToken' - The token to use to get the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'distrrsResponseStatus' - -- | The response status code.
describeImportSnapshotTasksResponse ::
  -- | 'distrrsResponseStatus'
  Int ->
  DescribeImportSnapshotTasksResponse
describeImportSnapshotTasksResponse pResponseStatus_ =
  DescribeImportSnapshotTasksResponse'
    { _distrrsImportSnapshotTasks =
        Nothing,
      _distrrsNextToken = Nothing,
      _distrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of zero or more import snapshot tasks that are currently active or were completed or canceled in the previous 7 days.
distrrsImportSnapshotTasks :: Lens' DescribeImportSnapshotTasksResponse [ImportSnapshotTask]
distrrsImportSnapshotTasks = lens _distrrsImportSnapshotTasks (\s a -> s {_distrrsImportSnapshotTasks = a}) . _Default . _Coerce

-- | The token to use to get the next page of results. This value is @null@ when there are no more results to return.
distrrsNextToken :: Lens' DescribeImportSnapshotTasksResponse (Maybe Text)
distrrsNextToken = lens _distrrsNextToken (\s a -> s {_distrrsNextToken = a})

-- | -- | The response status code.
distrrsResponseStatus :: Lens' DescribeImportSnapshotTasksResponse Int
distrrsResponseStatus = lens _distrrsResponseStatus (\s a -> s {_distrrsResponseStatus = a})

instance NFData DescribeImportSnapshotTasksResponse
