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
-- Module      : Network.AWS.RDS.DescribeGlobalClusters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about Aurora global database clusters. This API supports pagination.
--
--
-- For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeGlobalClusters
  ( -- * Creating a Request
    describeGlobalClusters,
    DescribeGlobalClusters,

    -- * Request Lenses
    dgcFilters,
    dgcGlobalClusterIdentifier,
    dgcMarker,
    dgcMaxRecords,

    -- * Destructuring the Response
    describeGlobalClustersResponse,
    DescribeGlobalClustersResponse,

    -- * Response Lenses
    dgcrrsGlobalClusters,
    dgcrrsMarker,
    dgcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeGlobalClusters' smart constructor.
data DescribeGlobalClusters = DescribeGlobalClusters'
  { _dgcFilters ::
      !(Maybe [Filter]),
    _dgcGlobalClusterIdentifier ::
      !(Maybe Text),
    _dgcMarker ::
      !(Maybe Text),
    _dgcMaxRecords ::
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

-- | Creates a value of 'DescribeGlobalClusters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgcFilters' - A filter that specifies one or more global DB clusters to describe. Supported filters:     * @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.
--
-- * 'dgcGlobalClusterIdentifier' - The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.  Constraints:     * If supplied, must match an existing DBClusterIdentifier.
--
-- * 'dgcMarker' - An optional pagination token provided by a previous @DescribeGlobalClusters@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dgcMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeGlobalClusters ::
  DescribeGlobalClusters
describeGlobalClusters =
  DescribeGlobalClusters'
    { _dgcFilters = Nothing,
      _dgcGlobalClusterIdentifier = Nothing,
      _dgcMarker = Nothing,
      _dgcMaxRecords = Nothing
    }

-- | A filter that specifies one or more global DB clusters to describe. Supported filters:     * @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.
dgcFilters :: Lens' DescribeGlobalClusters [Filter]
dgcFilters = lens _dgcFilters (\s a -> s {_dgcFilters = a}) . _Default . _Coerce

-- | The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.  Constraints:     * If supplied, must match an existing DBClusterIdentifier.
dgcGlobalClusterIdentifier :: Lens' DescribeGlobalClusters (Maybe Text)
dgcGlobalClusterIdentifier = lens _dgcGlobalClusterIdentifier (\s a -> s {_dgcGlobalClusterIdentifier = a})

-- | An optional pagination token provided by a previous @DescribeGlobalClusters@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dgcMarker :: Lens' DescribeGlobalClusters (Maybe Text)
dgcMarker = lens _dgcMarker (\s a -> s {_dgcMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
dgcMaxRecords :: Lens' DescribeGlobalClusters (Maybe Int)
dgcMaxRecords = lens _dgcMaxRecords (\s a -> s {_dgcMaxRecords = a})

instance AWSPager DescribeGlobalClusters where
  page rq rs
    | stop (rs ^. dgcrrsMarker) = Nothing
    | stop (rs ^. dgcrrsGlobalClusters) = Nothing
    | otherwise =
      Just $ rq & dgcMarker .~ rs ^. dgcrrsMarker

instance AWSRequest DescribeGlobalClusters where
  type
    Rs DescribeGlobalClusters =
      DescribeGlobalClustersResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeGlobalClustersResult"
      ( \s h x ->
          DescribeGlobalClustersResponse'
            <$> ( x .@? "GlobalClusters" .!@ mempty
                    >>= may (parseXMLList "GlobalClusterMember")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeGlobalClusters

instance NFData DescribeGlobalClusters

instance ToHeaders DescribeGlobalClusters where
  toHeaders = const mempty

instance ToPath DescribeGlobalClusters where
  toPath = const "/"

instance ToQuery DescribeGlobalClusters where
  toQuery DescribeGlobalClusters' {..} =
    mconcat
      [ "Action"
          =: ("DescribeGlobalClusters" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _dgcFilters),
        "GlobalClusterIdentifier"
          =: _dgcGlobalClusterIdentifier,
        "Marker" =: _dgcMarker,
        "MaxRecords" =: _dgcMaxRecords
      ]

-- | /See:/ 'describeGlobalClustersResponse' smart constructor.
data DescribeGlobalClustersResponse = DescribeGlobalClustersResponse'
  { _dgcrrsGlobalClusters ::
      !( Maybe
           [GlobalCluster]
       ),
    _dgcrrsMarker ::
      !( Maybe
           Text
       ),
    _dgcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeGlobalClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgcrrsGlobalClusters' - The list of global clusters returned by this request.
--
-- * 'dgcrrsMarker' - An optional pagination token provided by a previous @DescribeGlobalClusters@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dgcrrsResponseStatus' - -- | The response status code.
describeGlobalClustersResponse ::
  -- | 'dgcrrsResponseStatus'
  Int ->
  DescribeGlobalClustersResponse
describeGlobalClustersResponse pResponseStatus_ =
  DescribeGlobalClustersResponse'
    { _dgcrrsGlobalClusters =
        Nothing,
      _dgcrrsMarker = Nothing,
      _dgcrrsResponseStatus = pResponseStatus_
    }

-- | The list of global clusters returned by this request.
dgcrrsGlobalClusters :: Lens' DescribeGlobalClustersResponse [GlobalCluster]
dgcrrsGlobalClusters = lens _dgcrrsGlobalClusters (\s a -> s {_dgcrrsGlobalClusters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeGlobalClusters@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dgcrrsMarker :: Lens' DescribeGlobalClustersResponse (Maybe Text)
dgcrrsMarker = lens _dgcrrsMarker (\s a -> s {_dgcrrsMarker = a})

-- | -- | The response status code.
dgcrrsResponseStatus :: Lens' DescribeGlobalClustersResponse Int
dgcrrsResponseStatus = lens _dgcrrsResponseStatus (\s a -> s {_dgcrrsResponseStatus = a})

instance NFData DescribeGlobalClustersResponse
