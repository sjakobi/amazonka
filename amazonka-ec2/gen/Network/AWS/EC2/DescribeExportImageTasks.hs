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
-- Module      : Network.AWS.EC2.DescribeExportImageTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified export image tasks or all of your export image tasks.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeExportImageTasks
  ( -- * Creating a Request
    describeExportImageTasks,
    DescribeExportImageTasks,

    -- * Request Lenses
    deitNextToken,
    deitDryRun,
    deitMaxResults,
    deitExportImageTaskIds,
    deitFilters,

    -- * Destructuring the Response
    describeExportImageTasksResponse,
    DescribeExportImageTasksResponse,

    -- * Response Lenses
    deitrrsNextToken,
    deitrrsExportImageTasks,
    deitrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeExportImageTasks' smart constructor.
data DescribeExportImageTasks = DescribeExportImageTasks'
  { _deitNextToken ::
      !(Maybe Text),
    _deitDryRun ::
      !(Maybe Bool),
    _deitMaxResults ::
      !(Maybe Nat),
    _deitExportImageTaskIds ::
      !(Maybe [Text]),
    _deitFilters ::
      !(Maybe [Filter])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeExportImageTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deitNextToken' - A token that indicates the next page of results.
--
-- * 'deitDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'deitMaxResults' - The maximum number of results to return in a single call.
--
-- * 'deitExportImageTaskIds' - The IDs of the export image tasks.
--
-- * 'deitFilters' - Filter tasks using the @task-state@ filter and one of the following values: @active@ , @completed@ , @deleting@ , or @deleted@ .
describeExportImageTasks ::
  DescribeExportImageTasks
describeExportImageTasks =
  DescribeExportImageTasks'
    { _deitNextToken = Nothing,
      _deitDryRun = Nothing,
      _deitMaxResults = Nothing,
      _deitExportImageTaskIds = Nothing,
      _deitFilters = Nothing
    }

-- | A token that indicates the next page of results.
deitNextToken :: Lens' DescribeExportImageTasks (Maybe Text)
deitNextToken = lens _deitNextToken (\s a -> s {_deitNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
deitDryRun :: Lens' DescribeExportImageTasks (Maybe Bool)
deitDryRun = lens _deitDryRun (\s a -> s {_deitDryRun = a})

-- | The maximum number of results to return in a single call.
deitMaxResults :: Lens' DescribeExportImageTasks (Maybe Natural)
deitMaxResults = lens _deitMaxResults (\s a -> s {_deitMaxResults = a}) . mapping _Nat

-- | The IDs of the export image tasks.
deitExportImageTaskIds :: Lens' DescribeExportImageTasks [Text]
deitExportImageTaskIds = lens _deitExportImageTaskIds (\s a -> s {_deitExportImageTaskIds = a}) . _Default . _Coerce

-- | Filter tasks using the @task-state@ filter and one of the following values: @active@ , @completed@ , @deleting@ , or @deleted@ .
deitFilters :: Lens' DescribeExportImageTasks [Filter]
deitFilters = lens _deitFilters (\s a -> s {_deitFilters = a}) . _Default . _Coerce

instance AWSPager DescribeExportImageTasks where
  page rq rs
    | stop (rs ^. deitrrsNextToken) = Nothing
    | stop (rs ^. deitrrsExportImageTasks) = Nothing
    | otherwise =
      Just $ rq & deitNextToken .~ rs ^. deitrrsNextToken

instance AWSRequest DescribeExportImageTasks where
  type
    Rs DescribeExportImageTasks =
      DescribeExportImageTasksResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeExportImageTasksResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "exportImageTaskSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeExportImageTasks

instance NFData DescribeExportImageTasks

instance ToHeaders DescribeExportImageTasks where
  toHeaders = const mempty

instance ToPath DescribeExportImageTasks where
  toPath = const "/"

instance ToQuery DescribeExportImageTasks where
  toQuery DescribeExportImageTasks' {..} =
    mconcat
      [ "Action"
          =: ("DescribeExportImageTasks" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _deitNextToken,
        "DryRun" =: _deitDryRun,
        "MaxResults" =: _deitMaxResults,
        toQuery
          ( toQueryList "ExportImageTaskId"
              <$> _deitExportImageTaskIds
          ),
        toQuery (toQueryList "Filter" <$> _deitFilters)
      ]

-- | /See:/ 'describeExportImageTasksResponse' smart constructor.
data DescribeExportImageTasksResponse = DescribeExportImageTasksResponse'
  { _deitrrsNextToken ::
      !( Maybe
           Text
       ),
    _deitrrsExportImageTasks ::
      !( Maybe
           [ExportImageTask]
       ),
    _deitrrsResponseStatus ::
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

-- | Creates a value of 'DescribeExportImageTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deitrrsNextToken' - The token to use to get the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'deitrrsExportImageTasks' - Information about the export image tasks.
--
-- * 'deitrrsResponseStatus' - -- | The response status code.
describeExportImageTasksResponse ::
  -- | 'deitrrsResponseStatus'
  Int ->
  DescribeExportImageTasksResponse
describeExportImageTasksResponse pResponseStatus_ =
  DescribeExportImageTasksResponse'
    { _deitrrsNextToken =
        Nothing,
      _deitrrsExportImageTasks = Nothing,
      _deitrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to get the next page of results. This value is @null@ when there are no more results to return.
deitrrsNextToken :: Lens' DescribeExportImageTasksResponse (Maybe Text)
deitrrsNextToken = lens _deitrrsNextToken (\s a -> s {_deitrrsNextToken = a})

-- | Information about the export image tasks.
deitrrsExportImageTasks :: Lens' DescribeExportImageTasksResponse [ExportImageTask]
deitrrsExportImageTasks = lens _deitrrsExportImageTasks (\s a -> s {_deitrrsExportImageTasks = a}) . _Default . _Coerce

-- | -- | The response status code.
deitrrsResponseStatus :: Lens' DescribeExportImageTasksResponse Int
deitrrsResponseStatus = lens _deitrrsResponseStatus (\s a -> s {_deitrrsResponseStatus = a})

instance NFData DescribeExportImageTasksResponse
