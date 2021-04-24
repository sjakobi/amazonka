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
-- Module      : Network.AWS.RDS.DescribeDBClusterParameterGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of @DBClusterParameterGroup@ descriptions. If a @DBClusterParameterGroupName@ parameter is specified, the list will contain only the description of the specified DB cluster parameter group.
--
--
-- For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBClusterParameterGroups
  ( -- * Creating a Request
    describeDBClusterParameterGroups,
    DescribeDBClusterParameterGroups,

    -- * Request Lenses
    ddcpgFilters,
    ddcpgDBClusterParameterGroupName,
    ddcpgMarker,
    ddcpgMaxRecords,

    -- * Destructuring the Response
    describeDBClusterParameterGroupsResponse,
    DescribeDBClusterParameterGroupsResponse,

    -- * Response Lenses
    ddcpgrrsDBClusterParameterGroups,
    ddcpgrrsMarker,
    ddcpgrrsResponseStatus,
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
-- /See:/ 'describeDBClusterParameterGroups' smart constructor.
data DescribeDBClusterParameterGroups = DescribeDBClusterParameterGroups'
  { _ddcpgFilters ::
      !( Maybe
           [Filter]
       ),
    _ddcpgDBClusterParameterGroupName ::
      !( Maybe
           Text
       ),
    _ddcpgMarker ::
      !( Maybe
           Text
       ),
    _ddcpgMaxRecords ::
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

-- | Creates a value of 'DescribeDBClusterParameterGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcpgFilters' - This parameter isn't currently supported.
--
-- * 'ddcpgDBClusterParameterGroupName' - The name of a specific DB cluster parameter group to return details for. Constraints:     * If supplied, must match the name of an existing DBClusterParameterGroup.
--
-- * 'ddcpgMarker' - An optional pagination token provided by a previous @DescribeDBClusterParameterGroups@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddcpgMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeDBClusterParameterGroups ::
  DescribeDBClusterParameterGroups
describeDBClusterParameterGroups =
  DescribeDBClusterParameterGroups'
    { _ddcpgFilters =
        Nothing,
      _ddcpgDBClusterParameterGroupName =
        Nothing,
      _ddcpgMarker = Nothing,
      _ddcpgMaxRecords = Nothing
    }

-- | This parameter isn't currently supported.
ddcpgFilters :: Lens' DescribeDBClusterParameterGroups [Filter]
ddcpgFilters = lens _ddcpgFilters (\s a -> s {_ddcpgFilters = a}) . _Default . _Coerce

-- | The name of a specific DB cluster parameter group to return details for. Constraints:     * If supplied, must match the name of an existing DBClusterParameterGroup.
ddcpgDBClusterParameterGroupName :: Lens' DescribeDBClusterParameterGroups (Maybe Text)
ddcpgDBClusterParameterGroupName = lens _ddcpgDBClusterParameterGroupName (\s a -> s {_ddcpgDBClusterParameterGroupName = a})

-- | An optional pagination token provided by a previous @DescribeDBClusterParameterGroups@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddcpgMarker :: Lens' DescribeDBClusterParameterGroups (Maybe Text)
ddcpgMarker = lens _ddcpgMarker (\s a -> s {_ddcpgMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
ddcpgMaxRecords :: Lens' DescribeDBClusterParameterGroups (Maybe Int)
ddcpgMaxRecords = lens _ddcpgMaxRecords (\s a -> s {_ddcpgMaxRecords = a})

instance AWSPager DescribeDBClusterParameterGroups where
  page rq rs
    | stop (rs ^. ddcpgrrsMarker) = Nothing
    | stop (rs ^. ddcpgrrsDBClusterParameterGroups) =
      Nothing
    | otherwise =
      Just $ rq & ddcpgMarker .~ rs ^. ddcpgrrsMarker

instance AWSRequest DescribeDBClusterParameterGroups where
  type
    Rs DescribeDBClusterParameterGroups =
      DescribeDBClusterParameterGroupsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBClusterParameterGroupsResult"
      ( \s h x ->
          DescribeDBClusterParameterGroupsResponse'
            <$> ( x .@? "DBClusterParameterGroups" .!@ mempty
                    >>= may (parseXMLList "DBClusterParameterGroup")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBClusterParameterGroups

instance NFData DescribeDBClusterParameterGroups

instance ToHeaders DescribeDBClusterParameterGroups where
  toHeaders = const mempty

instance ToPath DescribeDBClusterParameterGroups where
  toPath = const "/"

instance ToQuery DescribeDBClusterParameterGroups where
  toQuery DescribeDBClusterParameterGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeDBClusterParameterGroups" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddcpgFilters),
        "DBClusterParameterGroupName"
          =: _ddcpgDBClusterParameterGroupName,
        "Marker" =: _ddcpgMarker,
        "MaxRecords" =: _ddcpgMaxRecords
      ]

-- |
--
--
--
-- /See:/ 'describeDBClusterParameterGroupsResponse' smart constructor.
data DescribeDBClusterParameterGroupsResponse = DescribeDBClusterParameterGroupsResponse'
  { _ddcpgrrsDBClusterParameterGroups ::
      !( Maybe
           [DBClusterParameterGroup]
       ),
    _ddcpgrrsMarker ::
      !( Maybe
           Text
       ),
    _ddcpgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBClusterParameterGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcpgrrsDBClusterParameterGroups' - A list of DB cluster parameter groups.
--
-- * 'ddcpgrrsMarker' - An optional pagination token provided by a previous @DescribeDBClusterParameterGroups@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddcpgrrsResponseStatus' - -- | The response status code.
describeDBClusterParameterGroupsResponse ::
  -- | 'ddcpgrrsResponseStatus'
  Int ->
  DescribeDBClusterParameterGroupsResponse
describeDBClusterParameterGroupsResponse
  pResponseStatus_ =
    DescribeDBClusterParameterGroupsResponse'
      { _ddcpgrrsDBClusterParameterGroups =
          Nothing,
        _ddcpgrrsMarker = Nothing,
        _ddcpgrrsResponseStatus =
          pResponseStatus_
      }

-- | A list of DB cluster parameter groups.
ddcpgrrsDBClusterParameterGroups :: Lens' DescribeDBClusterParameterGroupsResponse [DBClusterParameterGroup]
ddcpgrrsDBClusterParameterGroups = lens _ddcpgrrsDBClusterParameterGroups (\s a -> s {_ddcpgrrsDBClusterParameterGroups = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeDBClusterParameterGroups@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddcpgrrsMarker :: Lens' DescribeDBClusterParameterGroupsResponse (Maybe Text)
ddcpgrrsMarker = lens _ddcpgrrsMarker (\s a -> s {_ddcpgrrsMarker = a})

-- | -- | The response status code.
ddcpgrrsResponseStatus :: Lens' DescribeDBClusterParameterGroupsResponse Int
ddcpgrrsResponseStatus = lens _ddcpgrrsResponseStatus (\s a -> s {_ddcpgrrsResponseStatus = a})

instance
  NFData
    DescribeDBClusterParameterGroupsResponse
