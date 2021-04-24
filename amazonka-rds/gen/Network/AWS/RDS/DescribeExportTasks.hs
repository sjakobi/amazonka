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
-- Module      : Network.AWS.RDS.DescribeExportTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a snapshot export to Amazon S3. This API operation supports pagination.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeExportTasks
  ( -- * Creating a Request
    describeExportTasks,
    DescribeExportTasks,

    -- * Request Lenses
    detFilters,
    detSourceARN,
    detExportTaskIdentifier,
    detMarker,
    detMaxRecords,

    -- * Destructuring the Response
    describeExportTasksResponse,
    DescribeExportTasksResponse,

    -- * Response Lenses
    detrrsExportTasks,
    detrrsMarker,
    detrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeExportTasks' smart constructor.
data DescribeExportTasks = DescribeExportTasks'
  { _detFilters ::
      !(Maybe [Filter]),
    _detSourceARN :: !(Maybe Text),
    _detExportTaskIdentifier ::
      !(Maybe Text),
    _detMarker :: !(Maybe Text),
    _detMaxRecords :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeExportTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detFilters' - Filters specify one or more snapshot exports to describe. The filters are specified as name-value pairs that define what to include in the output. Filter names and values are case-sensitive. Supported filters include the following:      * @export-task-identifier@ - An identifier for the snapshot export task.     * @s3-bucket@ - The Amazon S3 bucket the snapshot is exported to.     * @source-arn@ - The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3     * @status@ - The status of the export task. Must be lowercase, for example, @complete@ .
--
-- * 'detSourceARN' - The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.
--
-- * 'detExportTaskIdentifier' - The identifier of the snapshot export task to be described.
--
-- * 'detMarker' - An optional pagination token provided by a previous @DescribeExportTasks@ request. If you specify this parameter, the response includes only records beyond the marker, up to the value specified by the @MaxRecords@ parameter.
--
-- * 'detMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified value, a pagination token called a marker is included in the response. You can use the marker in a later @DescribeExportTasks@ request to retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeExportTasks ::
  DescribeExportTasks
describeExportTasks =
  DescribeExportTasks'
    { _detFilters = Nothing,
      _detSourceARN = Nothing,
      _detExportTaskIdentifier = Nothing,
      _detMarker = Nothing,
      _detMaxRecords = Nothing
    }

-- | Filters specify one or more snapshot exports to describe. The filters are specified as name-value pairs that define what to include in the output. Filter names and values are case-sensitive. Supported filters include the following:      * @export-task-identifier@ - An identifier for the snapshot export task.     * @s3-bucket@ - The Amazon S3 bucket the snapshot is exported to.     * @source-arn@ - The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3     * @status@ - The status of the export task. Must be lowercase, for example, @complete@ .
detFilters :: Lens' DescribeExportTasks [Filter]
detFilters = lens _detFilters (\s a -> s {_detFilters = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.
detSourceARN :: Lens' DescribeExportTasks (Maybe Text)
detSourceARN = lens _detSourceARN (\s a -> s {_detSourceARN = a})

-- | The identifier of the snapshot export task to be described.
detExportTaskIdentifier :: Lens' DescribeExportTasks (Maybe Text)
detExportTaskIdentifier = lens _detExportTaskIdentifier (\s a -> s {_detExportTaskIdentifier = a})

-- | An optional pagination token provided by a previous @DescribeExportTasks@ request. If you specify this parameter, the response includes only records beyond the marker, up to the value specified by the @MaxRecords@ parameter.
detMarker :: Lens' DescribeExportTasks (Maybe Text)
detMarker = lens _detMarker (\s a -> s {_detMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified value, a pagination token called a marker is included in the response. You can use the marker in a later @DescribeExportTasks@ request to retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
detMaxRecords :: Lens' DescribeExportTasks (Maybe Natural)
detMaxRecords = lens _detMaxRecords (\s a -> s {_detMaxRecords = a}) . mapping _Nat

instance AWSPager DescribeExportTasks where
  page rq rs
    | stop (rs ^. detrrsMarker) = Nothing
    | stop (rs ^. detrrsExportTasks) = Nothing
    | otherwise =
      Just $ rq & detMarker .~ rs ^. detrrsMarker

instance AWSRequest DescribeExportTasks where
  type
    Rs DescribeExportTasks =
      DescribeExportTasksResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeExportTasksResult"
      ( \s h x ->
          DescribeExportTasksResponse'
            <$> ( x .@? "ExportTasks" .!@ mempty
                    >>= may (parseXMLList "ExportTask")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeExportTasks

instance NFData DescribeExportTasks

instance ToHeaders DescribeExportTasks where
  toHeaders = const mempty

instance ToPath DescribeExportTasks where
  toPath = const "/"

instance ToQuery DescribeExportTasks where
  toQuery DescribeExportTasks' {..} =
    mconcat
      [ "Action" =: ("DescribeExportTasks" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _detFilters),
        "SourceArn" =: _detSourceARN,
        "ExportTaskIdentifier" =: _detExportTaskIdentifier,
        "Marker" =: _detMarker,
        "MaxRecords" =: _detMaxRecords
      ]

-- | /See:/ 'describeExportTasksResponse' smart constructor.
data DescribeExportTasksResponse = DescribeExportTasksResponse'
  { _detrrsExportTasks ::
      !( Maybe
           [ExportTask]
       ),
    _detrrsMarker ::
      !(Maybe Text),
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
-- * 'detrrsExportTasks' - Information about an export of a snapshot to Amazon S3.
--
-- * 'detrrsMarker' - A pagination token that can be used in a later @DescribeExportTasks@ request. A marker is used for pagination to identify the location to begin output for the next response of @DescribeExportTasks@ .
--
-- * 'detrrsResponseStatus' - -- | The response status code.
describeExportTasksResponse ::
  -- | 'detrrsResponseStatus'
  Int ->
  DescribeExportTasksResponse
describeExportTasksResponse pResponseStatus_ =
  DescribeExportTasksResponse'
    { _detrrsExportTasks =
        Nothing,
      _detrrsMarker = Nothing,
      _detrrsResponseStatus = pResponseStatus_
    }

-- | Information about an export of a snapshot to Amazon S3.
detrrsExportTasks :: Lens' DescribeExportTasksResponse [ExportTask]
detrrsExportTasks = lens _detrrsExportTasks (\s a -> s {_detrrsExportTasks = a}) . _Default . _Coerce

-- | A pagination token that can be used in a later @DescribeExportTasks@ request. A marker is used for pagination to identify the location to begin output for the next response of @DescribeExportTasks@ .
detrrsMarker :: Lens' DescribeExportTasksResponse (Maybe Text)
detrrsMarker = lens _detrrsMarker (\s a -> s {_detrrsMarker = a})

-- | -- | The response status code.
detrrsResponseStatus :: Lens' DescribeExportTasksResponse Int
detrrsResponseStatus = lens _detrrsResponseStatus (\s a -> s {_detrrsResponseStatus = a})

instance NFData DescribeExportTasksResponse
