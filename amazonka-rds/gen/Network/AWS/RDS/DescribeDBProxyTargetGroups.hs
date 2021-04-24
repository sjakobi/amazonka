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
-- Module      : Network.AWS.RDS.DescribeDBProxyTargetGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about DB proxy target groups, represented by @DBProxyTargetGroup@ data structures.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBProxyTargetGroups
  ( -- * Creating a Request
    describeDBProxyTargetGroups,
    DescribeDBProxyTargetGroups,

    -- * Request Lenses
    ddptgTargetGroupName,
    ddptgFilters,
    ddptgMarker,
    ddptgMaxRecords,
    ddptgDBProxyName,

    -- * Destructuring the Response
    describeDBProxyTargetGroupsResponse,
    DescribeDBProxyTargetGroupsResponse,

    -- * Response Lenses
    ddptgrrsTargetGroups,
    ddptgrrsMarker,
    ddptgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDBProxyTargetGroups' smart constructor.
data DescribeDBProxyTargetGroups = DescribeDBProxyTargetGroups'
  { _ddptgTargetGroupName ::
      !(Maybe Text),
    _ddptgFilters ::
      !( Maybe
           [Filter]
       ),
    _ddptgMarker ::
      !(Maybe Text),
    _ddptgMaxRecords ::
      !(Maybe Nat),
    _ddptgDBProxyName ::
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

-- | Creates a value of 'DescribeDBProxyTargetGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddptgTargetGroupName' - The identifier of the @DBProxyTargetGroup@ to describe.
--
-- * 'ddptgFilters' - This parameter is not currently supported.
--
-- * 'ddptgMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddptgMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
--
-- * 'ddptgDBProxyName' - The identifier of the @DBProxy@ associated with the target group.
describeDBProxyTargetGroups ::
  -- | 'ddptgDBProxyName'
  Text ->
  DescribeDBProxyTargetGroups
describeDBProxyTargetGroups pDBProxyName_ =
  DescribeDBProxyTargetGroups'
    { _ddptgTargetGroupName =
        Nothing,
      _ddptgFilters = Nothing,
      _ddptgMarker = Nothing,
      _ddptgMaxRecords = Nothing,
      _ddptgDBProxyName = pDBProxyName_
    }

-- | The identifier of the @DBProxyTargetGroup@ to describe.
ddptgTargetGroupName :: Lens' DescribeDBProxyTargetGroups (Maybe Text)
ddptgTargetGroupName = lens _ddptgTargetGroupName (\s a -> s {_ddptgTargetGroupName = a})

-- | This parameter is not currently supported.
ddptgFilters :: Lens' DescribeDBProxyTargetGroups [Filter]
ddptgFilters = lens _ddptgFilters (\s a -> s {_ddptgFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddptgMarker :: Lens' DescribeDBProxyTargetGroups (Maybe Text)
ddptgMarker = lens _ddptgMarker (\s a -> s {_ddptgMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
ddptgMaxRecords :: Lens' DescribeDBProxyTargetGroups (Maybe Natural)
ddptgMaxRecords = lens _ddptgMaxRecords (\s a -> s {_ddptgMaxRecords = a}) . mapping _Nat

-- | The identifier of the @DBProxy@ associated with the target group.
ddptgDBProxyName :: Lens' DescribeDBProxyTargetGroups Text
ddptgDBProxyName = lens _ddptgDBProxyName (\s a -> s {_ddptgDBProxyName = a})

instance AWSPager DescribeDBProxyTargetGroups where
  page rq rs
    | stop (rs ^. ddptgrrsMarker) = Nothing
    | stop (rs ^. ddptgrrsTargetGroups) = Nothing
    | otherwise =
      Just $ rq & ddptgMarker .~ rs ^. ddptgrrsMarker

instance AWSRequest DescribeDBProxyTargetGroups where
  type
    Rs DescribeDBProxyTargetGroups =
      DescribeDBProxyTargetGroupsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBProxyTargetGroupsResult"
      ( \s h x ->
          DescribeDBProxyTargetGroupsResponse'
            <$> ( x .@? "TargetGroups" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBProxyTargetGroups

instance NFData DescribeDBProxyTargetGroups

instance ToHeaders DescribeDBProxyTargetGroups where
  toHeaders = const mempty

instance ToPath DescribeDBProxyTargetGroups where
  toPath = const "/"

instance ToQuery DescribeDBProxyTargetGroups where
  toQuery DescribeDBProxyTargetGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeDBProxyTargetGroups" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "TargetGroupName" =: _ddptgTargetGroupName,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddptgFilters),
        "Marker" =: _ddptgMarker,
        "MaxRecords" =: _ddptgMaxRecords,
        "DBProxyName" =: _ddptgDBProxyName
      ]

-- | /See:/ 'describeDBProxyTargetGroupsResponse' smart constructor.
data DescribeDBProxyTargetGroupsResponse = DescribeDBProxyTargetGroupsResponse'
  { _ddptgrrsTargetGroups ::
      !( Maybe
           [DBProxyTargetGroup]
       ),
    _ddptgrrsMarker ::
      !( Maybe
           Text
       ),
    _ddptgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBProxyTargetGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddptgrrsTargetGroups' - An arbitrary number of @DBProxyTargetGroup@ objects, containing details of the corresponding target groups.
--
-- * 'ddptgrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddptgrrsResponseStatus' - -- | The response status code.
describeDBProxyTargetGroupsResponse ::
  -- | 'ddptgrrsResponseStatus'
  Int ->
  DescribeDBProxyTargetGroupsResponse
describeDBProxyTargetGroupsResponse pResponseStatus_ =
  DescribeDBProxyTargetGroupsResponse'
    { _ddptgrrsTargetGroups =
        Nothing,
      _ddptgrrsMarker = Nothing,
      _ddptgrrsResponseStatus =
        pResponseStatus_
    }

-- | An arbitrary number of @DBProxyTargetGroup@ objects, containing details of the corresponding target groups.
ddptgrrsTargetGroups :: Lens' DescribeDBProxyTargetGroupsResponse [DBProxyTargetGroup]
ddptgrrsTargetGroups = lens _ddptgrrsTargetGroups (\s a -> s {_ddptgrrsTargetGroups = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddptgrrsMarker :: Lens' DescribeDBProxyTargetGroupsResponse (Maybe Text)
ddptgrrsMarker = lens _ddptgrrsMarker (\s a -> s {_ddptgrrsMarker = a})

-- | -- | The response status code.
ddptgrrsResponseStatus :: Lens' DescribeDBProxyTargetGroupsResponse Int
ddptgrrsResponseStatus = lens _ddptgrrsResponseStatus (\s a -> s {_ddptgrrsResponseStatus = a})

instance NFData DescribeDBProxyTargetGroupsResponse
