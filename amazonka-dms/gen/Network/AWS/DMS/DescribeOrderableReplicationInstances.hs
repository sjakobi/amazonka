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
-- Module      : Network.AWS.DMS.DescribeOrderableReplicationInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the replication instance types that can be created in the specified region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeOrderableReplicationInstances
  ( -- * Creating a Request
    describeOrderableReplicationInstances,
    DescribeOrderableReplicationInstances,

    -- * Request Lenses
    doriMarker,
    doriMaxRecords,

    -- * Destructuring the Response
    describeOrderableReplicationInstancesResponse,
    DescribeOrderableReplicationInstancesResponse,

    -- * Response Lenses
    dorirrsOrderableReplicationInstances,
    dorirrsMarker,
    dorirrsResponseStatus,
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
-- /See:/ 'describeOrderableReplicationInstances' smart constructor.
data DescribeOrderableReplicationInstances = DescribeOrderableReplicationInstances'
  { _doriMarker ::
      !( Maybe
           Text
       ),
    _doriMaxRecords ::
      !( Maybe
           Int
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

-- | Creates a value of 'DescribeOrderableReplicationInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doriMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'doriMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
describeOrderableReplicationInstances ::
  DescribeOrderableReplicationInstances
describeOrderableReplicationInstances =
  DescribeOrderableReplicationInstances'
    { _doriMarker =
        Nothing,
      _doriMaxRecords = Nothing
    }

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
doriMarker :: Lens' DescribeOrderableReplicationInstances (Maybe Text)
doriMarker = lens _doriMarker (\s a -> s {_doriMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
doriMaxRecords :: Lens' DescribeOrderableReplicationInstances (Maybe Int)
doriMaxRecords = lens _doriMaxRecords (\s a -> s {_doriMaxRecords = a})

instance
  AWSPager
    DescribeOrderableReplicationInstances
  where
  page rq rs
    | stop (rs ^. dorirrsMarker) = Nothing
    | stop (rs ^. dorirrsOrderableReplicationInstances) =
      Nothing
    | otherwise =
      Just $ rq & doriMarker .~ rs ^. dorirrsMarker

instance
  AWSRequest
    DescribeOrderableReplicationInstances
  where
  type
    Rs DescribeOrderableReplicationInstances =
      DescribeOrderableReplicationInstancesResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeOrderableReplicationInstancesResponse'
            <$> (x .?> "OrderableReplicationInstances" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeOrderableReplicationInstances

instance NFData DescribeOrderableReplicationInstances

instance
  ToHeaders
    DescribeOrderableReplicationInstances
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeOrderableReplicationInstances" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeOrderableReplicationInstances where
  toJSON DescribeOrderableReplicationInstances' {..} =
    object
      ( catMaybes
          [ ("Marker" .=) <$> _doriMarker,
            ("MaxRecords" .=) <$> _doriMaxRecords
          ]
      )

instance ToPath DescribeOrderableReplicationInstances where
  toPath = const "/"

instance
  ToQuery
    DescribeOrderableReplicationInstances
  where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeOrderableReplicationInstancesResponse' smart constructor.
data DescribeOrderableReplicationInstancesResponse = DescribeOrderableReplicationInstancesResponse'
  { _dorirrsOrderableReplicationInstances ::
      !( Maybe
           [OrderableReplicationInstance]
       ),
    _dorirrsMarker ::
      !( Maybe
           Text
       ),
    _dorirrsResponseStatus ::
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

-- | Creates a value of 'DescribeOrderableReplicationInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dorirrsOrderableReplicationInstances' - The order-able replication instances available.
--
-- * 'dorirrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dorirrsResponseStatus' - -- | The response status code.
describeOrderableReplicationInstancesResponse ::
  -- | 'dorirrsResponseStatus'
  Int ->
  DescribeOrderableReplicationInstancesResponse
describeOrderableReplicationInstancesResponse
  pResponseStatus_ =
    DescribeOrderableReplicationInstancesResponse'
      { _dorirrsOrderableReplicationInstances =
          Nothing,
        _dorirrsMarker = Nothing,
        _dorirrsResponseStatus =
          pResponseStatus_
      }

-- | The order-able replication instances available.
dorirrsOrderableReplicationInstances :: Lens' DescribeOrderableReplicationInstancesResponse [OrderableReplicationInstance]
dorirrsOrderableReplicationInstances = lens _dorirrsOrderableReplicationInstances (\s a -> s {_dorirrsOrderableReplicationInstances = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dorirrsMarker :: Lens' DescribeOrderableReplicationInstancesResponse (Maybe Text)
dorirrsMarker = lens _dorirrsMarker (\s a -> s {_dorirrsMarker = a})

-- | -- | The response status code.
dorirrsResponseStatus :: Lens' DescribeOrderableReplicationInstancesResponse Int
dorirrsResponseStatus = lens _dorirrsResponseStatus (\s a -> s {_dorirrsResponseStatus = a})

instance
  NFData
    DescribeOrderableReplicationInstancesResponse
