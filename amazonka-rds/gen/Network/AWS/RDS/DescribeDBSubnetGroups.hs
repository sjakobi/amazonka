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
-- Module      : Network.AWS.RDS.DescribeDBSubnetGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.
--
--
-- For an overview of CIDR ranges, go to the <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing Wikipedia Tutorial> .
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBSubnetGroups
  ( -- * Creating a Request
    describeDBSubnetGroups,
    DescribeDBSubnetGroups,

    -- * Request Lenses
    ddbsgDBSubnetGroupName,
    ddbsgFilters,
    ddbsgMarker,
    ddbsgMaxRecords,

    -- * Destructuring the Response
    describeDBSubnetGroupsResponse,
    DescribeDBSubnetGroupsResponse,

    -- * Response Lenses
    ddsgrrsDBSubnetGroups,
    ddsgrrsMarker,
    ddsgrrsResponseStatus,
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
-- /See:/ 'describeDBSubnetGroups' smart constructor.
data DescribeDBSubnetGroups = DescribeDBSubnetGroups'
  { _ddbsgDBSubnetGroupName ::
      !(Maybe Text),
    _ddbsgFilters ::
      !(Maybe [Filter]),
    _ddbsgMarker ::
      !(Maybe Text),
    _ddbsgMaxRecords ::
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

-- | Creates a value of 'DescribeDBSubnetGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbsgDBSubnetGroupName' - The name of the DB subnet group to return details for.
--
-- * 'ddbsgFilters' - This parameter isn't currently supported.
--
-- * 'ddbsgMarker' - An optional pagination token provided by a previous DescribeDBSubnetGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddbsgMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeDBSubnetGroups ::
  DescribeDBSubnetGroups
describeDBSubnetGroups =
  DescribeDBSubnetGroups'
    { _ddbsgDBSubnetGroupName =
        Nothing,
      _ddbsgFilters = Nothing,
      _ddbsgMarker = Nothing,
      _ddbsgMaxRecords = Nothing
    }

-- | The name of the DB subnet group to return details for.
ddbsgDBSubnetGroupName :: Lens' DescribeDBSubnetGroups (Maybe Text)
ddbsgDBSubnetGroupName = lens _ddbsgDBSubnetGroupName (\s a -> s {_ddbsgDBSubnetGroupName = a})

-- | This parameter isn't currently supported.
ddbsgFilters :: Lens' DescribeDBSubnetGroups [Filter]
ddbsgFilters = lens _ddbsgFilters (\s a -> s {_ddbsgFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous DescribeDBSubnetGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddbsgMarker :: Lens' DescribeDBSubnetGroups (Maybe Text)
ddbsgMarker = lens _ddbsgMarker (\s a -> s {_ddbsgMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
ddbsgMaxRecords :: Lens' DescribeDBSubnetGroups (Maybe Int)
ddbsgMaxRecords = lens _ddbsgMaxRecords (\s a -> s {_ddbsgMaxRecords = a})

instance AWSPager DescribeDBSubnetGroups where
  page rq rs
    | stop (rs ^. ddsgrrsMarker) = Nothing
    | stop (rs ^. ddsgrrsDBSubnetGroups) = Nothing
    | otherwise =
      Just $ rq & ddbsgMarker .~ rs ^. ddsgrrsMarker

instance AWSRequest DescribeDBSubnetGroups where
  type
    Rs DescribeDBSubnetGroups =
      DescribeDBSubnetGroupsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBSubnetGroupsResult"
      ( \s h x ->
          DescribeDBSubnetGroupsResponse'
            <$> ( x .@? "DBSubnetGroups" .!@ mempty
                    >>= may (parseXMLList "DBSubnetGroup")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBSubnetGroups

instance NFData DescribeDBSubnetGroups

instance ToHeaders DescribeDBSubnetGroups where
  toHeaders = const mempty

instance ToPath DescribeDBSubnetGroups where
  toPath = const "/"

instance ToQuery DescribeDBSubnetGroups where
  toQuery DescribeDBSubnetGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeDBSubnetGroups" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBSubnetGroupName" =: _ddbsgDBSubnetGroupName,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddbsgFilters),
        "Marker" =: _ddbsgMarker,
        "MaxRecords" =: _ddbsgMaxRecords
      ]

-- | Contains the result of a successful invocation of the @DescribeDBSubnetGroups@ action.
--
--
--
-- /See:/ 'describeDBSubnetGroupsResponse' smart constructor.
data DescribeDBSubnetGroupsResponse = DescribeDBSubnetGroupsResponse'
  { _ddsgrrsDBSubnetGroups ::
      !( Maybe
           [DBSubnetGroup]
       ),
    _ddsgrrsMarker ::
      !( Maybe
           Text
       ),
    _ddsgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBSubnetGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddsgrrsDBSubnetGroups' - A list of @DBSubnetGroup@ instances.
--
-- * 'ddsgrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddsgrrsResponseStatus' - -- | The response status code.
describeDBSubnetGroupsResponse ::
  -- | 'ddsgrrsResponseStatus'
  Int ->
  DescribeDBSubnetGroupsResponse
describeDBSubnetGroupsResponse pResponseStatus_ =
  DescribeDBSubnetGroupsResponse'
    { _ddsgrrsDBSubnetGroups =
        Nothing,
      _ddsgrrsMarker = Nothing,
      _ddsgrrsResponseStatus = pResponseStatus_
    }

-- | A list of @DBSubnetGroup@ instances.
ddsgrrsDBSubnetGroups :: Lens' DescribeDBSubnetGroupsResponse [DBSubnetGroup]
ddsgrrsDBSubnetGroups = lens _ddsgrrsDBSubnetGroups (\s a -> s {_ddsgrrsDBSubnetGroups = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddsgrrsMarker :: Lens' DescribeDBSubnetGroupsResponse (Maybe Text)
ddsgrrsMarker = lens _ddsgrrsMarker (\s a -> s {_ddsgrrsMarker = a})

-- | -- | The response status code.
ddsgrrsResponseStatus :: Lens' DescribeDBSubnetGroupsResponse Int
ddsgrrsResponseStatus = lens _ddsgrrsResponseStatus (\s a -> s {_ddsgrrsResponseStatus = a})

instance NFData DescribeDBSubnetGroupsResponse
