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
-- Module      : Network.AWS.DMS.DescribeReplicationInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about replication instances for your account in the current region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeReplicationInstances
  ( -- * Creating a Request
    describeReplicationInstances,
    DescribeReplicationInstances,

    -- * Request Lenses
    driFilters,
    driMarker,
    driMaxRecords,

    -- * Destructuring the Response
    describeReplicationInstancesResponse,
    DescribeReplicationInstancesResponse,

    -- * Response Lenses
    drirrrsReplicationInstances,
    drirrrsMarker,
    drirrrsResponseStatus,
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
-- /See:/ 'describeReplicationInstances' smart constructor.
data DescribeReplicationInstances = DescribeReplicationInstances'
  { _driFilters ::
      !( Maybe
           [Filter]
       ),
    _driMarker ::
      !(Maybe Text),
    _driMaxRecords ::
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

-- | Creates a value of 'DescribeReplicationInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'driFilters' - Filters applied to replication instances. Valid filter names: replication-instance-arn | replication-instance-id | replication-instance-class | engine-version
--
-- * 'driMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'driMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
describeReplicationInstances ::
  DescribeReplicationInstances
describeReplicationInstances =
  DescribeReplicationInstances'
    { _driFilters =
        Nothing,
      _driMarker = Nothing,
      _driMaxRecords = Nothing
    }

-- | Filters applied to replication instances. Valid filter names: replication-instance-arn | replication-instance-id | replication-instance-class | engine-version
driFilters :: Lens' DescribeReplicationInstances [Filter]
driFilters = lens _driFilters (\s a -> s {_driFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
driMarker :: Lens' DescribeReplicationInstances (Maybe Text)
driMarker = lens _driMarker (\s a -> s {_driMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
driMaxRecords :: Lens' DescribeReplicationInstances (Maybe Int)
driMaxRecords = lens _driMaxRecords (\s a -> s {_driMaxRecords = a})

instance AWSPager DescribeReplicationInstances where
  page rq rs
    | stop (rs ^. drirrrsMarker) = Nothing
    | stop (rs ^. drirrrsReplicationInstances) = Nothing
    | otherwise =
      Just $ rq & driMarker .~ rs ^. drirrrsMarker

instance AWSRequest DescribeReplicationInstances where
  type
    Rs DescribeReplicationInstances =
      DescribeReplicationInstancesResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeReplicationInstancesResponse'
            <$> (x .?> "ReplicationInstances" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReplicationInstances

instance NFData DescribeReplicationInstances

instance ToHeaders DescribeReplicationInstances where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeReplicationInstances" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeReplicationInstances where
  toJSON DescribeReplicationInstances' {..} =
    object
      ( catMaybes
          [ ("Filters" .=) <$> _driFilters,
            ("Marker" .=) <$> _driMarker,
            ("MaxRecords" .=) <$> _driMaxRecords
          ]
      )

instance ToPath DescribeReplicationInstances where
  toPath = const "/"

instance ToQuery DescribeReplicationInstances where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeReplicationInstancesResponse' smart constructor.
data DescribeReplicationInstancesResponse = DescribeReplicationInstancesResponse'
  { _drirrrsReplicationInstances ::
      !( Maybe
           [ReplicationInstance]
       ),
    _drirrrsMarker ::
      !( Maybe
           Text
       ),
    _drirrrsResponseStatus ::
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

-- | Creates a value of 'DescribeReplicationInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drirrrsReplicationInstances' - The replication instances described.
--
-- * 'drirrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'drirrrsResponseStatus' - -- | The response status code.
describeReplicationInstancesResponse ::
  -- | 'drirrrsResponseStatus'
  Int ->
  DescribeReplicationInstancesResponse
describeReplicationInstancesResponse pResponseStatus_ =
  DescribeReplicationInstancesResponse'
    { _drirrrsReplicationInstances =
        Nothing,
      _drirrrsMarker = Nothing,
      _drirrrsResponseStatus =
        pResponseStatus_
    }

-- | The replication instances described.
drirrrsReplicationInstances :: Lens' DescribeReplicationInstancesResponse [ReplicationInstance]
drirrrsReplicationInstances = lens _drirrrsReplicationInstances (\s a -> s {_drirrrsReplicationInstances = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
drirrrsMarker :: Lens' DescribeReplicationInstancesResponse (Maybe Text)
drirrrsMarker = lens _drirrrsMarker (\s a -> s {_drirrrsMarker = a})

-- | -- | The response status code.
drirrrsResponseStatus :: Lens' DescribeReplicationInstancesResponse Int
drirrrsResponseStatus = lens _drirrrsResponseStatus (\s a -> s {_drirrrsResponseStatus = a})

instance NFData DescribeReplicationInstancesResponse
