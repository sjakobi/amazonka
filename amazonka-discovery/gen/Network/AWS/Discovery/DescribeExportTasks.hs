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
-- Module      : Network.AWS.Discovery.DescribeExportTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Discovery.DescribeExportTasks
  ( -- * Creating a Request
    describeExportTasks,
    DescribeExportTasks,

    -- * Request Lenses
    detNextToken,
    detMaxResults,
    detExportIds,
    detFilters,

    -- * Destructuring the Response
    describeExportTasksResponse,
    DescribeExportTasksResponse,

    -- * Response Lenses
    detrrsNextToken,
    detrrsExportsInfo,
    detrrsResponseStatus,
  )
where

import Network.AWS.Discovery.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeExportTasks' smart constructor.
data DescribeExportTasks = DescribeExportTasks'
  { _detNextToken ::
      !(Maybe Text),
    _detMaxResults :: !(Maybe Int),
    _detExportIds ::
      !(Maybe [Text]),
    _detFilters ::
      !(Maybe [ExportFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeExportTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detNextToken' - The @nextToken@ value returned from a previous paginated @DescribeExportTasks@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is null when there are no more results to return.
--
-- * 'detMaxResults' - The maximum number of volume results returned by @DescribeExportTasks@ in paginated output. When this parameter is used, @DescribeExportTasks@ only returns @maxResults@ results in a single page along with a @nextToken@ response element.
--
-- * 'detExportIds' - One or more unique identifiers used to query the status of an export request.
--
-- * 'detFilters' - One or more filters.     * @AgentId@ - ID of the agent whose collected data will be exported
describeExportTasks ::
  DescribeExportTasks
describeExportTasks =
  DescribeExportTasks'
    { _detNextToken = Nothing,
      _detMaxResults = Nothing,
      _detExportIds = Nothing,
      _detFilters = Nothing
    }

-- | The @nextToken@ value returned from a previous paginated @DescribeExportTasks@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is null when there are no more results to return.
detNextToken :: Lens' DescribeExportTasks (Maybe Text)
detNextToken = lens _detNextToken (\s a -> s {_detNextToken = a})

-- | The maximum number of volume results returned by @DescribeExportTasks@ in paginated output. When this parameter is used, @DescribeExportTasks@ only returns @maxResults@ results in a single page along with a @nextToken@ response element.
detMaxResults :: Lens' DescribeExportTasks (Maybe Int)
detMaxResults = lens _detMaxResults (\s a -> s {_detMaxResults = a})

-- | One or more unique identifiers used to query the status of an export request.
detExportIds :: Lens' DescribeExportTasks [Text]
detExportIds = lens _detExportIds (\s a -> s {_detExportIds = a}) . _Default . _Coerce

-- | One or more filters.     * @AgentId@ - ID of the agent whose collected data will be exported
detFilters :: Lens' DescribeExportTasks [ExportFilter]
detFilters = lens _detFilters (\s a -> s {_detFilters = a}) . _Default . _Coerce

instance AWSPager DescribeExportTasks where
  page rq rs
    | stop (rs ^. detrrsNextToken) = Nothing
    | stop (rs ^. detrrsExportsInfo) = Nothing
    | otherwise =
      Just $ rq & detNextToken .~ rs ^. detrrsNextToken

instance AWSRequest DescribeExportTasks where
  type
    Rs DescribeExportTasks =
      DescribeExportTasksResponse
  request = postJSON discovery
  response =
    receiveJSON
      ( \s h x ->
          DescribeExportTasksResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "exportsInfo" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeExportTasks

instance NFData DescribeExportTasks

instance ToHeaders DescribeExportTasks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSPoseidonService_V2015_11_01.DescribeExportTasks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeExportTasks where
  toJSON DescribeExportTasks' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _detNextToken,
            ("maxResults" .=) <$> _detMaxResults,
            ("exportIds" .=) <$> _detExportIds,
            ("filters" .=) <$> _detFilters
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
    _detrrsExportsInfo ::
      !( Maybe
           [ExportInfo]
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
-- * 'detrrsNextToken' - The @nextToken@ value to include in a future @DescribeExportTasks@ request. When the results of a @DescribeExportTasks@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is null when there are no more results to return.
--
-- * 'detrrsExportsInfo' - Contains one or more sets of export request details. When the status of a request is @SUCCEEDED@ , the response includes a URL for an Amazon S3 bucket where you can view the data in a CSV file.
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
      _detrrsExportsInfo = Nothing,
      _detrrsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @DescribeExportTasks@ request. When the results of a @DescribeExportTasks@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is null when there are no more results to return.
detrrsNextToken :: Lens' DescribeExportTasksResponse (Maybe Text)
detrrsNextToken = lens _detrrsNextToken (\s a -> s {_detrrsNextToken = a})

-- | Contains one or more sets of export request details. When the status of a request is @SUCCEEDED@ , the response includes a URL for an Amazon S3 bucket where you can view the data in a CSV file.
detrrsExportsInfo :: Lens' DescribeExportTasksResponse [ExportInfo]
detrrsExportsInfo = lens _detrrsExportsInfo (\s a -> s {_detrrsExportsInfo = a}) . _Default . _Coerce

-- | -- | The response status code.
detrrsResponseStatus :: Lens' DescribeExportTasksResponse Int
detrrsResponseStatus = lens _detrrsResponseStatus (\s a -> s {_detrrsResponseStatus = a})

instance NFData DescribeExportTasksResponse
