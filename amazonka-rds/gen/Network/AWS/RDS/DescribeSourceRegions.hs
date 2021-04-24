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
-- Module      : Network.AWS.RDS.DescribeSourceRegions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the source AWS Regions where the current AWS Region can create a read replica, copy a DB snapshot from, or replicate automated backups from. This API action supports pagination.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeSourceRegions
  ( -- * Creating a Request
    describeSourceRegions,
    DescribeSourceRegions,

    -- * Request Lenses
    dsrRegionName,
    dsrFilters,
    dsrMarker,
    dsrMaxRecords,

    -- * Destructuring the Response
    describeSourceRegionsResponse,
    DescribeSourceRegionsResponse,

    -- * Response Lenses
    dsrrrsSourceRegions,
    dsrrrsMarker,
    dsrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeSourceRegions' smart constructor.
data DescribeSourceRegions = DescribeSourceRegions'
  { _dsrRegionName ::
      !(Maybe Text),
    _dsrFilters ::
      !(Maybe [Filter]),
    _dsrMarker :: !(Maybe Text),
    _dsrMaxRecords ::
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

-- | Creates a value of 'DescribeSourceRegions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrRegionName' - The source AWS Region name. For example, @us-east-1@ . Constraints:     * Must specify a valid AWS Region name.
--
-- * 'dsrFilters' - This parameter isn't currently supported.
--
-- * 'dsrMarker' - An optional pagination token provided by a previous @DescribeSourceRegions@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dsrMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeSourceRegions ::
  DescribeSourceRegions
describeSourceRegions =
  DescribeSourceRegions'
    { _dsrRegionName = Nothing,
      _dsrFilters = Nothing,
      _dsrMarker = Nothing,
      _dsrMaxRecords = Nothing
    }

-- | The source AWS Region name. For example, @us-east-1@ . Constraints:     * Must specify a valid AWS Region name.
dsrRegionName :: Lens' DescribeSourceRegions (Maybe Text)
dsrRegionName = lens _dsrRegionName (\s a -> s {_dsrRegionName = a})

-- | This parameter isn't currently supported.
dsrFilters :: Lens' DescribeSourceRegions [Filter]
dsrFilters = lens _dsrFilters (\s a -> s {_dsrFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeSourceRegions@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dsrMarker :: Lens' DescribeSourceRegions (Maybe Text)
dsrMarker = lens _dsrMarker (\s a -> s {_dsrMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
dsrMaxRecords :: Lens' DescribeSourceRegions (Maybe Int)
dsrMaxRecords = lens _dsrMaxRecords (\s a -> s {_dsrMaxRecords = a})

instance AWSPager DescribeSourceRegions where
  page rq rs
    | stop (rs ^. dsrrrsMarker) = Nothing
    | stop (rs ^. dsrrrsSourceRegions) = Nothing
    | otherwise =
      Just $ rq & dsrMarker .~ rs ^. dsrrrsMarker

instance AWSRequest DescribeSourceRegions where
  type
    Rs DescribeSourceRegions =
      DescribeSourceRegionsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeSourceRegionsResult"
      ( \s h x ->
          DescribeSourceRegionsResponse'
            <$> ( x .@? "SourceRegions" .!@ mempty
                    >>= may (parseXMLList "SourceRegion")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSourceRegions

instance NFData DescribeSourceRegions

instance ToHeaders DescribeSourceRegions where
  toHeaders = const mempty

instance ToPath DescribeSourceRegions where
  toPath = const "/"

instance ToQuery DescribeSourceRegions where
  toQuery DescribeSourceRegions' {..} =
    mconcat
      [ "Action" =: ("DescribeSourceRegions" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "RegionName" =: _dsrRegionName,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _dsrFilters),
        "Marker" =: _dsrMarker,
        "MaxRecords" =: _dsrMaxRecords
      ]

-- | Contains the result of a successful invocation of the @DescribeSourceRegions@ action.
--
--
--
-- /See:/ 'describeSourceRegionsResponse' smart constructor.
data DescribeSourceRegionsResponse = DescribeSourceRegionsResponse'
  { _dsrrrsSourceRegions ::
      !( Maybe
           [SourceRegion]
       ),
    _dsrrrsMarker ::
      !( Maybe
           Text
       ),
    _dsrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeSourceRegionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrrsSourceRegions' - A list of SourceRegion instances that contains each source AWS Region that the current AWS Region can get a read replica or a DB snapshot from.
--
-- * 'dsrrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dsrrrsResponseStatus' - -- | The response status code.
describeSourceRegionsResponse ::
  -- | 'dsrrrsResponseStatus'
  Int ->
  DescribeSourceRegionsResponse
describeSourceRegionsResponse pResponseStatus_ =
  DescribeSourceRegionsResponse'
    { _dsrrrsSourceRegions =
        Nothing,
      _dsrrrsMarker = Nothing,
      _dsrrrsResponseStatus = pResponseStatus_
    }

-- | A list of SourceRegion instances that contains each source AWS Region that the current AWS Region can get a read replica or a DB snapshot from.
dsrrrsSourceRegions :: Lens' DescribeSourceRegionsResponse [SourceRegion]
dsrrrsSourceRegions = lens _dsrrrsSourceRegions (\s a -> s {_dsrrrsSourceRegions = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dsrrrsMarker :: Lens' DescribeSourceRegionsResponse (Maybe Text)
dsrrrsMarker = lens _dsrrrsMarker (\s a -> s {_dsrrrsMarker = a})

-- | -- | The response status code.
dsrrrsResponseStatus :: Lens' DescribeSourceRegionsResponse Int
dsrrrsResponseStatus = lens _dsrrrsResponseStatus (\s a -> s {_dsrrrsResponseStatus = a})

instance NFData DescribeSourceRegionsResponse
