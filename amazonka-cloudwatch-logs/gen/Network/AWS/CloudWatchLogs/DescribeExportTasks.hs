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
-- Module      : Network.AWS.CloudWatchLogs.DescribeExportTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchLogs.DescribeExportTasks
  ( -- * Creating a Request
    describeExportTasks,
    DescribeExportTasks,

    -- * Request Lenses
    detNextToken,
    detTaskId,
    detStatusCode,
    detLimit,

    -- * Destructuring the Response
    describeExportTasksResponse,
    DescribeExportTasksResponse,

    -- * Response Lenses
    detrrsNextToken,
    detrrsExportTasks,
    detrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeExportTasks' smart constructor.
data DescribeExportTasks = DescribeExportTasks'
  { _detNextToken ::
      !(Maybe Text),
    _detTaskId :: !(Maybe Text),
    _detStatusCode ::
      !(Maybe ExportTaskStatusCode),
    _detLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeExportTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'detTaskId' - The ID of the export task. Specifying a task ID filters the results to zero or one export tasks.
--
-- * 'detStatusCode' - The status code of the export task. Specifying a status code filters the results to zero or more export tasks.
--
-- * 'detLimit' - The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
describeExportTasks ::
  DescribeExportTasks
describeExportTasks =
  DescribeExportTasks'
    { _detNextToken = Nothing,
      _detTaskId = Nothing,
      _detStatusCode = Nothing,
      _detLimit = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
detNextToken :: Lens' DescribeExportTasks (Maybe Text)
detNextToken = lens _detNextToken (\s a -> s {_detNextToken = a})

-- | The ID of the export task. Specifying a task ID filters the results to zero or one export tasks.
detTaskId :: Lens' DescribeExportTasks (Maybe Text)
detTaskId = lens _detTaskId (\s a -> s {_detTaskId = a})

-- | The status code of the export task. Specifying a status code filters the results to zero or more export tasks.
detStatusCode :: Lens' DescribeExportTasks (Maybe ExportTaskStatusCode)
detStatusCode = lens _detStatusCode (\s a -> s {_detStatusCode = a})

-- | The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
detLimit :: Lens' DescribeExportTasks (Maybe Natural)
detLimit = lens _detLimit (\s a -> s {_detLimit = a}) . mapping _Nat

instance AWSPager DescribeExportTasks where
  page rq rs
    | stop (rs ^. detrrsNextToken) = Nothing
    | stop (rs ^. detrrsExportTasks) = Nothing
    | otherwise =
      Just $ rq & detNextToken .~ rs ^. detrrsNextToken

instance AWSRequest DescribeExportTasks where
  type
    Rs DescribeExportTasks =
      DescribeExportTasksResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          DescribeExportTasksResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "exportTasks" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeExportTasks

instance NFData DescribeExportTasks

instance ToHeaders DescribeExportTasks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Logs_20140328.DescribeExportTasks" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeExportTasks where
  toJSON DescribeExportTasks' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _detNextToken,
            ("taskId" .=) <$> _detTaskId,
            ("statusCode" .=) <$> _detStatusCode,
            ("limit" .=) <$> _detLimit
          ]
      )

instance ToPath DescribeExportTasks where
  toPath = const "/"

instance ToQuery DescribeExportTasks where
  toQuery = const mempty

-- | /See:/ 'describeExportTasksResponse' smart constructor.
data DescribeExportTasksResponse = DescribeExportTasksResponse'
  { _detrrsNextToken ::
      !(Maybe Text),
    _detrrsExportTasks ::
      !( Maybe
           [ExportTask]
       ),
    _detrrsResponseStatus ::
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

-- | Creates a value of 'DescribeExportTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detrrsNextToken' - Undocumented member.
--
-- * 'detrrsExportTasks' - The export tasks.
--
-- * 'detrrsResponseStatus' - -- | The response status code.
describeExportTasksResponse ::
  -- | 'detrrsResponseStatus'
  Int ->
  DescribeExportTasksResponse
describeExportTasksResponse pResponseStatus_ =
  DescribeExportTasksResponse'
    { _detrrsNextToken =
        Nothing,
      _detrrsExportTasks = Nothing,
      _detrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
detrrsNextToken :: Lens' DescribeExportTasksResponse (Maybe Text)
detrrsNextToken = lens _detrrsNextToken (\s a -> s {_detrrsNextToken = a})

-- | The export tasks.
detrrsExportTasks :: Lens' DescribeExportTasksResponse [ExportTask]
detrrsExportTasks = lens _detrrsExportTasks (\s a -> s {_detrrsExportTasks = a}) . _Default . _Coerce

-- | -- | The response status code.
detrrsResponseStatus :: Lens' DescribeExportTasksResponse Int
detrrsResponseStatus = lens _detrrsResponseStatus (\s a -> s {_detrrsResponseStatus = a})

instance NFData DescribeExportTasksResponse
