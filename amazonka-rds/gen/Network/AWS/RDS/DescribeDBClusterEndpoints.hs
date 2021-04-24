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
-- Module      : Network.AWS.RDS.DescribeDBClusterEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about endpoints for an Amazon Aurora DB cluster.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBClusterEndpoints
  ( -- * Creating a Request
    describeDBClusterEndpoints,
    DescribeDBClusterEndpoints,

    -- * Request Lenses
    ddceDBClusterEndpointIdentifier,
    ddceDBClusterIdentifier,
    ddceFilters,
    ddceMarker,
    ddceMaxRecords,

    -- * Destructuring the Response
    describeDBClusterEndpointsResponse,
    DescribeDBClusterEndpointsResponse,

    -- * Response Lenses
    ddcerrsDBClusterEndpoints,
    ddcerrsMarker,
    ddcerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDBClusterEndpoints' smart constructor.
data DescribeDBClusterEndpoints = DescribeDBClusterEndpoints'
  { _ddceDBClusterEndpointIdentifier ::
      !(Maybe Text),
    _ddceDBClusterIdentifier ::
      !(Maybe Text),
    _ddceFilters ::
      !(Maybe [Filter]),
    _ddceMarker ::
      !(Maybe Text),
    _ddceMaxRecords ::
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

-- | Creates a value of 'DescribeDBClusterEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddceDBClusterEndpointIdentifier' - The identifier of the endpoint to describe. This parameter is stored as a lowercase string.
--
-- * 'ddceDBClusterIdentifier' - The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is stored as a lowercase string.
--
-- * 'ddceFilters' - A set of name-value pairs that define which endpoints to include in the output. The filters are specified as name-value pairs, in the format @Name=/endpoint_type/ ,Values=/endpoint_type1/ ,/endpoint_type2/ ,...@ . @Name@ can be one of: @db-cluster-endpoint-type@ , @db-cluster-endpoint-custom-type@ , @db-cluster-endpoint-id@ , @db-cluster-endpoint-status@ . @Values@ for the @db-cluster-endpoint-type@ filter can be one or more of: @reader@ , @writer@ , @custom@ . @Values@ for the @db-cluster-endpoint-custom-type@ filter can be one or more of: @reader@ , @any@ . @Values@ for the @db-cluster-endpoint-status@ filter can be one or more of: @available@ , @creating@ , @deleting@ , @inactive@ , @modifying@ .
--
-- * 'ddceMarker' - An optional pagination token provided by a previous @DescribeDBClusterEndpoints@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddceMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeDBClusterEndpoints ::
  DescribeDBClusterEndpoints
describeDBClusterEndpoints =
  DescribeDBClusterEndpoints'
    { _ddceDBClusterEndpointIdentifier =
        Nothing,
      _ddceDBClusterIdentifier = Nothing,
      _ddceFilters = Nothing,
      _ddceMarker = Nothing,
      _ddceMaxRecords = Nothing
    }

-- | The identifier of the endpoint to describe. This parameter is stored as a lowercase string.
ddceDBClusterEndpointIdentifier :: Lens' DescribeDBClusterEndpoints (Maybe Text)
ddceDBClusterEndpointIdentifier = lens _ddceDBClusterEndpointIdentifier (\s a -> s {_ddceDBClusterEndpointIdentifier = a})

-- | The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is stored as a lowercase string.
ddceDBClusterIdentifier :: Lens' DescribeDBClusterEndpoints (Maybe Text)
ddceDBClusterIdentifier = lens _ddceDBClusterIdentifier (\s a -> s {_ddceDBClusterIdentifier = a})

-- | A set of name-value pairs that define which endpoints to include in the output. The filters are specified as name-value pairs, in the format @Name=/endpoint_type/ ,Values=/endpoint_type1/ ,/endpoint_type2/ ,...@ . @Name@ can be one of: @db-cluster-endpoint-type@ , @db-cluster-endpoint-custom-type@ , @db-cluster-endpoint-id@ , @db-cluster-endpoint-status@ . @Values@ for the @db-cluster-endpoint-type@ filter can be one or more of: @reader@ , @writer@ , @custom@ . @Values@ for the @db-cluster-endpoint-custom-type@ filter can be one or more of: @reader@ , @any@ . @Values@ for the @db-cluster-endpoint-status@ filter can be one or more of: @available@ , @creating@ , @deleting@ , @inactive@ , @modifying@ .
ddceFilters :: Lens' DescribeDBClusterEndpoints [Filter]
ddceFilters = lens _ddceFilters (\s a -> s {_ddceFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeDBClusterEndpoints@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddceMarker :: Lens' DescribeDBClusterEndpoints (Maybe Text)
ddceMarker = lens _ddceMarker (\s a -> s {_ddceMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
ddceMaxRecords :: Lens' DescribeDBClusterEndpoints (Maybe Int)
ddceMaxRecords = lens _ddceMaxRecords (\s a -> s {_ddceMaxRecords = a})

instance AWSPager DescribeDBClusterEndpoints where
  page rq rs
    | stop (rs ^. ddcerrsMarker) = Nothing
    | stop (rs ^. ddcerrsDBClusterEndpoints) = Nothing
    | otherwise =
      Just $ rq & ddceMarker .~ rs ^. ddcerrsMarker

instance AWSRequest DescribeDBClusterEndpoints where
  type
    Rs DescribeDBClusterEndpoints =
      DescribeDBClusterEndpointsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBClusterEndpointsResult"
      ( \s h x ->
          DescribeDBClusterEndpointsResponse'
            <$> ( x .@? "DBClusterEndpoints" .!@ mempty
                    >>= may (parseXMLList "DBClusterEndpointList")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBClusterEndpoints

instance NFData DescribeDBClusterEndpoints

instance ToHeaders DescribeDBClusterEndpoints where
  toHeaders = const mempty

instance ToPath DescribeDBClusterEndpoints where
  toPath = const "/"

instance ToQuery DescribeDBClusterEndpoints where
  toQuery DescribeDBClusterEndpoints' {..} =
    mconcat
      [ "Action"
          =: ("DescribeDBClusterEndpoints" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBClusterEndpointIdentifier"
          =: _ddceDBClusterEndpointIdentifier,
        "DBClusterIdentifier" =: _ddceDBClusterIdentifier,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddceFilters),
        "Marker" =: _ddceMarker,
        "MaxRecords" =: _ddceMaxRecords
      ]

-- | /See:/ 'describeDBClusterEndpointsResponse' smart constructor.
data DescribeDBClusterEndpointsResponse = DescribeDBClusterEndpointsResponse'
  { _ddcerrsDBClusterEndpoints ::
      !( Maybe
           [DBClusterEndpoint]
       ),
    _ddcerrsMarker ::
      !( Maybe
           Text
       ),
    _ddcerrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBClusterEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcerrsDBClusterEndpoints' - Contains the details of the endpoints associated with the cluster and matching any filter conditions.
--
-- * 'ddcerrsMarker' - An optional pagination token provided by a previous @DescribeDBClusterEndpoints@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddcerrsResponseStatus' - -- | The response status code.
describeDBClusterEndpointsResponse ::
  -- | 'ddcerrsResponseStatus'
  Int ->
  DescribeDBClusterEndpointsResponse
describeDBClusterEndpointsResponse pResponseStatus_ =
  DescribeDBClusterEndpointsResponse'
    { _ddcerrsDBClusterEndpoints =
        Nothing,
      _ddcerrsMarker = Nothing,
      _ddcerrsResponseStatus =
        pResponseStatus_
    }

-- | Contains the details of the endpoints associated with the cluster and matching any filter conditions.
ddcerrsDBClusterEndpoints :: Lens' DescribeDBClusterEndpointsResponse [DBClusterEndpoint]
ddcerrsDBClusterEndpoints = lens _ddcerrsDBClusterEndpoints (\s a -> s {_ddcerrsDBClusterEndpoints = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeDBClusterEndpoints@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddcerrsMarker :: Lens' DescribeDBClusterEndpointsResponse (Maybe Text)
ddcerrsMarker = lens _ddcerrsMarker (\s a -> s {_ddcerrsMarker = a})

-- | -- | The response status code.
ddcerrsResponseStatus :: Lens' DescribeDBClusterEndpointsResponse Int
ddcerrsResponseStatus = lens _ddcerrsResponseStatus (\s a -> s {_ddcerrsResponseStatus = a})

instance NFData DescribeDBClusterEndpointsResponse
