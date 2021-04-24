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
-- Module      : Network.AWS.DMS.DescribeReplicationTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about replication tasks for your account in the current region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeReplicationTasks
  ( -- * Creating a Request
    describeReplicationTasks,
    DescribeReplicationTasks,

    -- * Request Lenses
    drtWithoutSettings,
    drtFilters,
    drtMarker,
    drtMaxRecords,

    -- * Destructuring the Response
    describeReplicationTasksResponse,
    DescribeReplicationTasksResponse,

    -- * Response Lenses
    drtrrsReplicationTasks,
    drtrrsMarker,
    drtrrsResponseStatus,
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
-- /See:/ 'describeReplicationTasks' smart constructor.
data DescribeReplicationTasks = DescribeReplicationTasks'
  { _drtWithoutSettings ::
      !(Maybe Bool),
    _drtFilters ::
      !(Maybe [Filter]),
    _drtMarker ::
      !(Maybe Text),
    _drtMaxRecords ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeReplicationTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drtWithoutSettings' - An option to set to avoid returning information about settings. Use this to reduce overhead when setting information is too large. To use this option, choose @true@ ; otherwise, choose @false@ (the default).
--
-- * 'drtFilters' - Filters applied to replication tasks. Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn
--
-- * 'drtMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'drtMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
describeReplicationTasks ::
  DescribeReplicationTasks
describeReplicationTasks =
  DescribeReplicationTasks'
    { _drtWithoutSettings =
        Nothing,
      _drtFilters = Nothing,
      _drtMarker = Nothing,
      _drtMaxRecords = Nothing
    }

-- | An option to set to avoid returning information about settings. Use this to reduce overhead when setting information is too large. To use this option, choose @true@ ; otherwise, choose @false@ (the default).
drtWithoutSettings :: Lens' DescribeReplicationTasks (Maybe Bool)
drtWithoutSettings = lens _drtWithoutSettings (\s a -> s {_drtWithoutSettings = a})

-- | Filters applied to replication tasks. Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn
drtFilters :: Lens' DescribeReplicationTasks [Filter]
drtFilters = lens _drtFilters (\s a -> s {_drtFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
drtMarker :: Lens' DescribeReplicationTasks (Maybe Text)
drtMarker = lens _drtMarker (\s a -> s {_drtMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
drtMaxRecords :: Lens' DescribeReplicationTasks (Maybe Int)
drtMaxRecords = lens _drtMaxRecords (\s a -> s {_drtMaxRecords = a})

instance AWSPager DescribeReplicationTasks where
  page rq rs
    | stop (rs ^. drtrrsMarker) = Nothing
    | stop (rs ^. drtrrsReplicationTasks) = Nothing
    | otherwise =
      Just $ rq & drtMarker .~ rs ^. drtrrsMarker

instance AWSRequest DescribeReplicationTasks where
  type
    Rs DescribeReplicationTasks =
      DescribeReplicationTasksResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeReplicationTasksResponse'
            <$> (x .?> "ReplicationTasks" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReplicationTasks

instance NFData DescribeReplicationTasks

instance ToHeaders DescribeReplicationTasks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeReplicationTasks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeReplicationTasks where
  toJSON DescribeReplicationTasks' {..} =
    object
      ( catMaybes
          [ ("WithoutSettings" .=) <$> _drtWithoutSettings,
            ("Filters" .=) <$> _drtFilters,
            ("Marker" .=) <$> _drtMarker,
            ("MaxRecords" .=) <$> _drtMaxRecords
          ]
      )

instance ToPath DescribeReplicationTasks where
  toPath = const "/"

instance ToQuery DescribeReplicationTasks where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeReplicationTasksResponse' smart constructor.
data DescribeReplicationTasksResponse = DescribeReplicationTasksResponse'
  { _drtrrsReplicationTasks ::
      !( Maybe
           [ReplicationTask]
       ),
    _drtrrsMarker ::
      !( Maybe
           Text
       ),
    _drtrrsResponseStatus ::
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

-- | Creates a value of 'DescribeReplicationTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drtrrsReplicationTasks' - A description of the replication tasks.
--
-- * 'drtrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'drtrrsResponseStatus' - -- | The response status code.
describeReplicationTasksResponse ::
  -- | 'drtrrsResponseStatus'
  Int ->
  DescribeReplicationTasksResponse
describeReplicationTasksResponse pResponseStatus_ =
  DescribeReplicationTasksResponse'
    { _drtrrsReplicationTasks =
        Nothing,
      _drtrrsMarker = Nothing,
      _drtrrsResponseStatus = pResponseStatus_
    }

-- | A description of the replication tasks.
drtrrsReplicationTasks :: Lens' DescribeReplicationTasksResponse [ReplicationTask]
drtrrsReplicationTasks = lens _drtrrsReplicationTasks (\s a -> s {_drtrrsReplicationTasks = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
drtrrsMarker :: Lens' DescribeReplicationTasksResponse (Maybe Text)
drtrrsMarker = lens _drtrrsMarker (\s a -> s {_drtrrsMarker = a})

-- | -- | The response status code.
drtrrsResponseStatus :: Lens' DescribeReplicationTasksResponse Int
drtrrsResponseStatus = lens _drtrrsResponseStatus (\s a -> s {_drtrrsResponseStatus = a})

instance NFData DescribeReplicationTasksResponse
