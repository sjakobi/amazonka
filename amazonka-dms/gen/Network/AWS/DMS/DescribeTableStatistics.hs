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
-- Module      : Network.AWS.DMS.DescribeTableStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted.
--
--
-- Note that the "last updated" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeTableStatistics
  ( -- * Creating a Request
    describeTableStatistics,
    DescribeTableStatistics,

    -- * Request Lenses
    dtsFilters,
    dtsMarker,
    dtsMaxRecords,
    dtsReplicationTaskARN,

    -- * Destructuring the Response
    describeTableStatisticsResponse,
    DescribeTableStatisticsResponse,

    -- * Response Lenses
    dtsrrsTableStatistics,
    dtsrrsReplicationTaskARN,
    dtsrrsMarker,
    dtsrrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeTableStatistics' smart constructor.
data DescribeTableStatistics = DescribeTableStatistics'
  { _dtsFilters ::
      !(Maybe [Filter]),
    _dtsMarker ::
      !(Maybe Text),
    _dtsMaxRecords ::
      !(Maybe Int),
    _dtsReplicationTaskARN ::
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

-- | Creates a value of 'DescribeTableStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtsFilters' - Filters applied to table statistics. Valid filter names: schema-name | table-name | table-state A combination of filters creates an AND condition where each record matches all specified filters.
--
-- * 'dtsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dtsMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 500.
--
-- * 'dtsReplicationTaskARN' - The Amazon Resource Name (ARN) of the replication task.
describeTableStatistics ::
  -- | 'dtsReplicationTaskARN'
  Text ->
  DescribeTableStatistics
describeTableStatistics pReplicationTaskARN_ =
  DescribeTableStatistics'
    { _dtsFilters = Nothing,
      _dtsMarker = Nothing,
      _dtsMaxRecords = Nothing,
      _dtsReplicationTaskARN = pReplicationTaskARN_
    }

-- | Filters applied to table statistics. Valid filter names: schema-name | table-name | table-state A combination of filters creates an AND condition where each record matches all specified filters.
dtsFilters :: Lens' DescribeTableStatistics [Filter]
dtsFilters = lens _dtsFilters (\s a -> s {_dtsFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dtsMarker :: Lens' DescribeTableStatistics (Maybe Text)
dtsMarker = lens _dtsMarker (\s a -> s {_dtsMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 500.
dtsMaxRecords :: Lens' DescribeTableStatistics (Maybe Int)
dtsMaxRecords = lens _dtsMaxRecords (\s a -> s {_dtsMaxRecords = a})

-- | The Amazon Resource Name (ARN) of the replication task.
dtsReplicationTaskARN :: Lens' DescribeTableStatistics Text
dtsReplicationTaskARN = lens _dtsReplicationTaskARN (\s a -> s {_dtsReplicationTaskARN = a})

instance AWSPager DescribeTableStatistics where
  page rq rs
    | stop (rs ^. dtsrrsMarker) = Nothing
    | stop (rs ^. dtsrrsTableStatistics) = Nothing
    | otherwise =
      Just $ rq & dtsMarker .~ rs ^. dtsrrsMarker

instance AWSRequest DescribeTableStatistics where
  type
    Rs DescribeTableStatistics =
      DescribeTableStatisticsResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeTableStatisticsResponse'
            <$> (x .?> "TableStatistics" .!@ mempty)
            <*> (x .?> "ReplicationTaskArn")
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTableStatistics

instance NFData DescribeTableStatistics

instance ToHeaders DescribeTableStatistics where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeTableStatistics" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTableStatistics where
  toJSON DescribeTableStatistics' {..} =
    object
      ( catMaybes
          [ ("Filters" .=) <$> _dtsFilters,
            ("Marker" .=) <$> _dtsMarker,
            ("MaxRecords" .=) <$> _dtsMaxRecords,
            Just
              ("ReplicationTaskArn" .= _dtsReplicationTaskARN)
          ]
      )

instance ToPath DescribeTableStatistics where
  toPath = const "/"

instance ToQuery DescribeTableStatistics where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeTableStatisticsResponse' smart constructor.
data DescribeTableStatisticsResponse = DescribeTableStatisticsResponse'
  { _dtsrrsTableStatistics ::
      !( Maybe
           [TableStatistics]
       ),
    _dtsrrsReplicationTaskARN ::
      !( Maybe
           Text
       ),
    _dtsrrsMarker ::
      !( Maybe
           Text
       ),
    _dtsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeTableStatisticsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtsrrsTableStatistics' - The table statistics.
--
-- * 'dtsrrsReplicationTaskARN' - The Amazon Resource Name (ARN) of the replication task.
--
-- * 'dtsrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dtsrrsResponseStatus' - -- | The response status code.
describeTableStatisticsResponse ::
  -- | 'dtsrrsResponseStatus'
  Int ->
  DescribeTableStatisticsResponse
describeTableStatisticsResponse pResponseStatus_ =
  DescribeTableStatisticsResponse'
    { _dtsrrsTableStatistics =
        Nothing,
      _dtsrrsReplicationTaskARN = Nothing,
      _dtsrrsMarker = Nothing,
      _dtsrrsResponseStatus = pResponseStatus_
    }

-- | The table statistics.
dtsrrsTableStatistics :: Lens' DescribeTableStatisticsResponse [TableStatistics]
dtsrrsTableStatistics = lens _dtsrrsTableStatistics (\s a -> s {_dtsrrsTableStatistics = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the replication task.
dtsrrsReplicationTaskARN :: Lens' DescribeTableStatisticsResponse (Maybe Text)
dtsrrsReplicationTaskARN = lens _dtsrrsReplicationTaskARN (\s a -> s {_dtsrrsReplicationTaskARN = a})

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dtsrrsMarker :: Lens' DescribeTableStatisticsResponse (Maybe Text)
dtsrrsMarker = lens _dtsrrsMarker (\s a -> s {_dtsrrsMarker = a})

-- | -- | The response status code.
dtsrrsResponseStatus :: Lens' DescribeTableStatisticsResponse Int
dtsrrsResponseStatus = lens _dtsrrsResponseStatus (\s a -> s {_dtsrrsResponseStatus = a})

instance NFData DescribeTableStatisticsResponse
