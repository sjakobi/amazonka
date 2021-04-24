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
-- Module      : Network.AWS.EC2.DescribeImportImageTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays details about an import virtual machine or import snapshot tasks that are already created.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeImportImageTasks
  ( -- * Creating a Request
    describeImportImageTasks,
    DescribeImportImageTasks,

    -- * Request Lenses
    diitNextToken,
    diitDryRun,
    diitImportTaskIds,
    diitMaxResults,
    diitFilters,

    -- * Destructuring the Response
    describeImportImageTasksResponse,
    DescribeImportImageTasksResponse,

    -- * Response Lenses
    diitrrsNextToken,
    diitrrsImportImageTasks,
    diitrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeImportImageTasks' smart constructor.
data DescribeImportImageTasks = DescribeImportImageTasks'
  { _diitNextToken ::
      !(Maybe Text),
    _diitDryRun ::
      !(Maybe Bool),
    _diitImportTaskIds ::
      !(Maybe [Text]),
    _diitMaxResults ::
      !(Maybe Int),
    _diitFilters ::
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

-- | Creates a value of 'DescribeImportImageTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diitNextToken' - A token that indicates the next page of results.
--
-- * 'diitDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'diitImportTaskIds' - The IDs of the import image tasks.
--
-- * 'diitMaxResults' - The maximum number of results to return in a single call.
--
-- * 'diitFilters' - Filter tasks using the @task-state@ filter and one of the following values: @active@ , @completed@ , @deleting@ , or @deleted@ .
describeImportImageTasks ::
  DescribeImportImageTasks
describeImportImageTasks =
  DescribeImportImageTasks'
    { _diitNextToken = Nothing,
      _diitDryRun = Nothing,
      _diitImportTaskIds = Nothing,
      _diitMaxResults = Nothing,
      _diitFilters = Nothing
    }

-- | A token that indicates the next page of results.
diitNextToken :: Lens' DescribeImportImageTasks (Maybe Text)
diitNextToken = lens _diitNextToken (\s a -> s {_diitNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
diitDryRun :: Lens' DescribeImportImageTasks (Maybe Bool)
diitDryRun = lens _diitDryRun (\s a -> s {_diitDryRun = a})

-- | The IDs of the import image tasks.
diitImportTaskIds :: Lens' DescribeImportImageTasks [Text]
diitImportTaskIds = lens _diitImportTaskIds (\s a -> s {_diitImportTaskIds = a}) . _Default . _Coerce

-- | The maximum number of results to return in a single call.
diitMaxResults :: Lens' DescribeImportImageTasks (Maybe Int)
diitMaxResults = lens _diitMaxResults (\s a -> s {_diitMaxResults = a})

-- | Filter tasks using the @task-state@ filter and one of the following values: @active@ , @completed@ , @deleting@ , or @deleted@ .
diitFilters :: Lens' DescribeImportImageTasks [Filter]
diitFilters = lens _diitFilters (\s a -> s {_diitFilters = a}) . _Default . _Coerce

instance AWSPager DescribeImportImageTasks where
  page rq rs
    | stop (rs ^. diitrrsNextToken) = Nothing
    | stop (rs ^. diitrrsImportImageTasks) = Nothing
    | otherwise =
      Just $ rq & diitNextToken .~ rs ^. diitrrsNextToken

instance AWSRequest DescribeImportImageTasks where
  type
    Rs DescribeImportImageTasks =
      DescribeImportImageTasksResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeImportImageTasksResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "importImageTaskSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeImportImageTasks

instance NFData DescribeImportImageTasks

instance ToHeaders DescribeImportImageTasks where
  toHeaders = const mempty

instance ToPath DescribeImportImageTasks where
  toPath = const "/"

instance ToQuery DescribeImportImageTasks where
  toQuery DescribeImportImageTasks' {..} =
    mconcat
      [ "Action"
          =: ("DescribeImportImageTasks" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _diitNextToken,
        "DryRun" =: _diitDryRun,
        toQuery
          (toQueryList "ImportTaskId" <$> _diitImportTaskIds),
        "MaxResults" =: _diitMaxResults,
        toQuery (toQueryList "Filters" <$> _diitFilters)
      ]

-- | /See:/ 'describeImportImageTasksResponse' smart constructor.
data DescribeImportImageTasksResponse = DescribeImportImageTasksResponse'
  { _diitrrsNextToken ::
      !( Maybe
           Text
       ),
    _diitrrsImportImageTasks ::
      !( Maybe
           [ImportImageTask]
       ),
    _diitrrsResponseStatus ::
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

-- | Creates a value of 'DescribeImportImageTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diitrrsNextToken' - The token to use to get the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'diitrrsImportImageTasks' - A list of zero or more import image tasks that are currently active or were completed or canceled in the previous 7 days.
--
-- * 'diitrrsResponseStatus' - -- | The response status code.
describeImportImageTasksResponse ::
  -- | 'diitrrsResponseStatus'
  Int ->
  DescribeImportImageTasksResponse
describeImportImageTasksResponse pResponseStatus_ =
  DescribeImportImageTasksResponse'
    { _diitrrsNextToken =
        Nothing,
      _diitrrsImportImageTasks = Nothing,
      _diitrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to get the next page of results. This value is @null@ when there are no more results to return.
diitrrsNextToken :: Lens' DescribeImportImageTasksResponse (Maybe Text)
diitrrsNextToken = lens _diitrrsNextToken (\s a -> s {_diitrrsNextToken = a})

-- | A list of zero or more import image tasks that are currently active or were completed or canceled in the previous 7 days.
diitrrsImportImageTasks :: Lens' DescribeImportImageTasksResponse [ImportImageTask]
diitrrsImportImageTasks = lens _diitrrsImportImageTasks (\s a -> s {_diitrrsImportImageTasks = a}) . _Default . _Coerce

-- | -- | The response status code.
diitrrsResponseStatus :: Lens' DescribeImportImageTasksResponse Int
diitrrsResponseStatus = lens _diitrrsResponseStatus (\s a -> s {_diitrrsResponseStatus = a})

instance NFData DescribeImportImageTasksResponse
