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
-- Module      : Network.AWS.RDS.DescribeDBClusters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about provisioned Aurora DB clusters. This API supports pagination.
--
--
-- For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBClusters
  ( -- * Creating a Request
    describeDBClusters,
    DescribeDBClusters,

    -- * Request Lenses
    ddbcIncludeShared,
    ddbcDBClusterIdentifier,
    ddbcFilters,
    ddbcMarker,
    ddbcMaxRecords,

    -- * Destructuring the Response
    describeDBClustersResponse,
    DescribeDBClustersResponse,

    -- * Response Lenses
    ddcrrsDBClusters,
    ddcrrsMarker,
    ddcrrsResponseStatus,
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
-- /See:/ 'describeDBClusters' smart constructor.
data DescribeDBClusters = DescribeDBClusters'
  { _ddbcIncludeShared ::
      !(Maybe Bool),
    _ddbcDBClusterIdentifier ::
      !(Maybe Text),
    _ddbcFilters :: !(Maybe [Filter]),
    _ddbcMarker :: !(Maybe Text),
    _ddbcMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDBClusters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbcIncludeShared' - Optional Boolean parameter that specifies whether the output includes information about clusters shared from other AWS accounts.
--
-- * 'ddbcDBClusterIdentifier' - The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive. Constraints:     * If supplied, must match an existing DBClusterIdentifier.
--
-- * 'ddbcFilters' - A filter that specifies one or more DB clusters to describe. Supported filters:     * @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.
--
-- * 'ddbcMarker' - An optional pagination token provided by a previous @DescribeDBClusters@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddbcMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeDBClusters ::
  DescribeDBClusters
describeDBClusters =
  DescribeDBClusters'
    { _ddbcIncludeShared = Nothing,
      _ddbcDBClusterIdentifier = Nothing,
      _ddbcFilters = Nothing,
      _ddbcMarker = Nothing,
      _ddbcMaxRecords = Nothing
    }

-- | Optional Boolean parameter that specifies whether the output includes information about clusters shared from other AWS accounts.
ddbcIncludeShared :: Lens' DescribeDBClusters (Maybe Bool)
ddbcIncludeShared = lens _ddbcIncludeShared (\s a -> s {_ddbcIncludeShared = a})

-- | The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive. Constraints:     * If supplied, must match an existing DBClusterIdentifier.
ddbcDBClusterIdentifier :: Lens' DescribeDBClusters (Maybe Text)
ddbcDBClusterIdentifier = lens _ddbcDBClusterIdentifier (\s a -> s {_ddbcDBClusterIdentifier = a})

-- | A filter that specifies one or more DB clusters to describe. Supported filters:     * @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.
ddbcFilters :: Lens' DescribeDBClusters [Filter]
ddbcFilters = lens _ddbcFilters (\s a -> s {_ddbcFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeDBClusters@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddbcMarker :: Lens' DescribeDBClusters (Maybe Text)
ddbcMarker = lens _ddbcMarker (\s a -> s {_ddbcMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
ddbcMaxRecords :: Lens' DescribeDBClusters (Maybe Int)
ddbcMaxRecords = lens _ddbcMaxRecords (\s a -> s {_ddbcMaxRecords = a})

instance AWSPager DescribeDBClusters where
  page rq rs
    | stop (rs ^. ddcrrsMarker) = Nothing
    | stop (rs ^. ddcrrsDBClusters) = Nothing
    | otherwise =
      Just $ rq & ddbcMarker .~ rs ^. ddcrrsMarker

instance AWSRequest DescribeDBClusters where
  type
    Rs DescribeDBClusters =
      DescribeDBClustersResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBClustersResult"
      ( \s h x ->
          DescribeDBClustersResponse'
            <$> ( x .@? "DBClusters" .!@ mempty
                    >>= may (parseXMLList "DBCluster")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBClusters

instance NFData DescribeDBClusters

instance ToHeaders DescribeDBClusters where
  toHeaders = const mempty

instance ToPath DescribeDBClusters where
  toPath = const "/"

instance ToQuery DescribeDBClusters where
  toQuery DescribeDBClusters' {..} =
    mconcat
      [ "Action" =: ("DescribeDBClusters" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "IncludeShared" =: _ddbcIncludeShared,
        "DBClusterIdentifier" =: _ddbcDBClusterIdentifier,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddbcFilters),
        "Marker" =: _ddbcMarker,
        "MaxRecords" =: _ddbcMaxRecords
      ]

-- | Contains the result of a successful invocation of the @DescribeDBClusters@ action.
--
--
--
-- /See:/ 'describeDBClustersResponse' smart constructor.
data DescribeDBClustersResponse = DescribeDBClustersResponse'
  { _ddcrrsDBClusters ::
      !( Maybe
           [DBCluster]
       ),
    _ddcrrsMarker ::
      !(Maybe Text),
    _ddcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcrrsDBClusters' - Contains a list of DB clusters for the user.
--
-- * 'ddcrrsMarker' - A pagination token that can be used in a later DescribeDBClusters request.
--
-- * 'ddcrrsResponseStatus' - -- | The response status code.
describeDBClustersResponse ::
  -- | 'ddcrrsResponseStatus'
  Int ->
  DescribeDBClustersResponse
describeDBClustersResponse pResponseStatus_ =
  DescribeDBClustersResponse'
    { _ddcrrsDBClusters =
        Nothing,
      _ddcrrsMarker = Nothing,
      _ddcrrsResponseStatus = pResponseStatus_
    }

-- | Contains a list of DB clusters for the user.
ddcrrsDBClusters :: Lens' DescribeDBClustersResponse [DBCluster]
ddcrrsDBClusters = lens _ddcrrsDBClusters (\s a -> s {_ddcrrsDBClusters = a}) . _Default . _Coerce

-- | A pagination token that can be used in a later DescribeDBClusters request.
ddcrrsMarker :: Lens' DescribeDBClustersResponse (Maybe Text)
ddcrrsMarker = lens _ddcrrsMarker (\s a -> s {_ddcrrsMarker = a})

-- | -- | The response status code.
ddcrrsResponseStatus :: Lens' DescribeDBClustersResponse Int
ddcrrsResponseStatus = lens _ddcrrsResponseStatus (\s a -> s {_ddcrrsResponseStatus = a})

instance NFData DescribeDBClustersResponse
