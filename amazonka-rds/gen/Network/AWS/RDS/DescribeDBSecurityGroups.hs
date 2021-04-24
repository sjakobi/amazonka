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
-- Module      : Network.AWS.RDS.DescribeDBSecurityGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of @DBSecurityGroup@ descriptions. If a @DBSecurityGroupName@ is specified, the list will contain only the descriptions of the specified DB security group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBSecurityGroups
  ( -- * Creating a Request
    describeDBSecurityGroups,
    DescribeDBSecurityGroups,

    -- * Request Lenses
    ddsgDBSecurityGroupName,
    ddsgFilters,
    ddsgMarker,
    ddsgMaxRecords,

    -- * Destructuring the Response
    describeDBSecurityGroupsResponse,
    DescribeDBSecurityGroupsResponse,

    -- * Response Lenses
    ddbsgrrsDBSecurityGroups,
    ddbsgrrsMarker,
    ddbsgrrsResponseStatus,
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
-- /See:/ 'describeDBSecurityGroups' smart constructor.
data DescribeDBSecurityGroups = DescribeDBSecurityGroups'
  { _ddsgDBSecurityGroupName ::
      !(Maybe Text),
    _ddsgFilters ::
      !(Maybe [Filter]),
    _ddsgMarker ::
      !(Maybe Text),
    _ddsgMaxRecords ::
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

-- | Creates a value of 'DescribeDBSecurityGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddsgDBSecurityGroupName' - The name of the DB security group to return details for.
--
-- * 'ddsgFilters' - This parameter isn't currently supported.
--
-- * 'ddsgMarker' - An optional pagination token provided by a previous @DescribeDBSecurityGroups@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddsgMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeDBSecurityGroups ::
  DescribeDBSecurityGroups
describeDBSecurityGroups =
  DescribeDBSecurityGroups'
    { _ddsgDBSecurityGroupName =
        Nothing,
      _ddsgFilters = Nothing,
      _ddsgMarker = Nothing,
      _ddsgMaxRecords = Nothing
    }

-- | The name of the DB security group to return details for.
ddsgDBSecurityGroupName :: Lens' DescribeDBSecurityGroups (Maybe Text)
ddsgDBSecurityGroupName = lens _ddsgDBSecurityGroupName (\s a -> s {_ddsgDBSecurityGroupName = a})

-- | This parameter isn't currently supported.
ddsgFilters :: Lens' DescribeDBSecurityGroups [Filter]
ddsgFilters = lens _ddsgFilters (\s a -> s {_ddsgFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeDBSecurityGroups@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddsgMarker :: Lens' DescribeDBSecurityGroups (Maybe Text)
ddsgMarker = lens _ddsgMarker (\s a -> s {_ddsgMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
ddsgMaxRecords :: Lens' DescribeDBSecurityGroups (Maybe Int)
ddsgMaxRecords = lens _ddsgMaxRecords (\s a -> s {_ddsgMaxRecords = a})

instance AWSPager DescribeDBSecurityGroups where
  page rq rs
    | stop (rs ^. ddbsgrrsMarker) = Nothing
    | stop (rs ^. ddbsgrrsDBSecurityGroups) = Nothing
    | otherwise =
      Just $ rq & ddsgMarker .~ rs ^. ddbsgrrsMarker

instance AWSRequest DescribeDBSecurityGroups where
  type
    Rs DescribeDBSecurityGroups =
      DescribeDBSecurityGroupsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBSecurityGroupsResult"
      ( \s h x ->
          DescribeDBSecurityGroupsResponse'
            <$> ( x .@? "DBSecurityGroups" .!@ mempty
                    >>= may (parseXMLList "DBSecurityGroup")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBSecurityGroups

instance NFData DescribeDBSecurityGroups

instance ToHeaders DescribeDBSecurityGroups where
  toHeaders = const mempty

instance ToPath DescribeDBSecurityGroups where
  toPath = const "/"

instance ToQuery DescribeDBSecurityGroups where
  toQuery DescribeDBSecurityGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeDBSecurityGroups" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBSecurityGroupName" =: _ddsgDBSecurityGroupName,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddsgFilters),
        "Marker" =: _ddsgMarker,
        "MaxRecords" =: _ddsgMaxRecords
      ]

-- | Contains the result of a successful invocation of the @DescribeDBSecurityGroups@ action.
--
--
--
-- /See:/ 'describeDBSecurityGroupsResponse' smart constructor.
data DescribeDBSecurityGroupsResponse = DescribeDBSecurityGroupsResponse'
  { _ddbsgrrsDBSecurityGroups ::
      !( Maybe
           [DBSecurityGroup]
       ),
    _ddbsgrrsMarker ::
      !( Maybe
           Text
       ),
    _ddbsgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBSecurityGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbsgrrsDBSecurityGroups' - A list of @DBSecurityGroup@ instances.
--
-- * 'ddbsgrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddbsgrrsResponseStatus' - -- | The response status code.
describeDBSecurityGroupsResponse ::
  -- | 'ddbsgrrsResponseStatus'
  Int ->
  DescribeDBSecurityGroupsResponse
describeDBSecurityGroupsResponse pResponseStatus_ =
  DescribeDBSecurityGroupsResponse'
    { _ddbsgrrsDBSecurityGroups =
        Nothing,
      _ddbsgrrsMarker = Nothing,
      _ddbsgrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of @DBSecurityGroup@ instances.
ddbsgrrsDBSecurityGroups :: Lens' DescribeDBSecurityGroupsResponse [DBSecurityGroup]
ddbsgrrsDBSecurityGroups = lens _ddbsgrrsDBSecurityGroups (\s a -> s {_ddbsgrrsDBSecurityGroups = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddbsgrrsMarker :: Lens' DescribeDBSecurityGroupsResponse (Maybe Text)
ddbsgrrsMarker = lens _ddbsgrrsMarker (\s a -> s {_ddbsgrrsMarker = a})

-- | -- | The response status code.
ddbsgrrsResponseStatus :: Lens' DescribeDBSecurityGroupsResponse Int
ddbsgrrsResponseStatus = lens _ddbsgrrsResponseStatus (\s a -> s {_ddbsgrrsResponseStatus = a})

instance NFData DescribeDBSecurityGroupsResponse
