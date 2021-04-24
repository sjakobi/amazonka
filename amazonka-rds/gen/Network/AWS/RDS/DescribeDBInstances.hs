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
-- Module      : Network.AWS.RDS.DescribeDBInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about provisioned RDS instances. This API supports pagination.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBInstances
  ( -- * Creating a Request
    describeDBInstances,
    DescribeDBInstances,

    -- * Request Lenses
    ddiDBInstanceIdentifier,
    ddiFilters,
    ddiMarker,
    ddiMaxRecords,

    -- * Destructuring the Response
    describeDBInstancesResponse,
    DescribeDBInstancesResponse,

    -- * Response Lenses
    ddirrsDBInstances,
    ddirrsMarker,
    ddirrsResponseStatus,
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
-- /See:/ 'describeDBInstances' smart constructor.
data DescribeDBInstances = DescribeDBInstances'
  { _ddiDBInstanceIdentifier ::
      !(Maybe Text),
    _ddiFilters ::
      !(Maybe [Filter]),
    _ddiMarker :: !(Maybe Text),
    _ddiMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDBInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddiDBInstanceIdentifier' - The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn't case-sensitive. Constraints:     * If supplied, must match the identifier of an existing DBInstance.
--
-- * 'ddiFilters' - A filter that specifies one or more DB instances to describe. Supported filters:     * @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB instances associated with the DB clusters identified by these ARNs.     * @db-instance-id@ - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs). The results list will only include information about the DB instances identified by these ARNs.     * @dbi-resource-id@ - Accepts DB instance resource identifiers. The results list will only include information about the DB instances identified by these DB instance resource identifiers.     * @domain@ - Accepts Active Directory directory IDs. The results list will only include information about the DB instances associated with these domains.     * @engine@ - Accepts engine names. The results list will only include information about the DB instances for these engines.
--
-- * 'ddiMarker' - An optional pagination token provided by a previous @DescribeDBInstances@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddiMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeDBInstances ::
  DescribeDBInstances
describeDBInstances =
  DescribeDBInstances'
    { _ddiDBInstanceIdentifier =
        Nothing,
      _ddiFilters = Nothing,
      _ddiMarker = Nothing,
      _ddiMaxRecords = Nothing
    }

-- | The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn't case-sensitive. Constraints:     * If supplied, must match the identifier of an existing DBInstance.
ddiDBInstanceIdentifier :: Lens' DescribeDBInstances (Maybe Text)
ddiDBInstanceIdentifier = lens _ddiDBInstanceIdentifier (\s a -> s {_ddiDBInstanceIdentifier = a})

-- | A filter that specifies one or more DB instances to describe. Supported filters:     * @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB instances associated with the DB clusters identified by these ARNs.     * @db-instance-id@ - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs). The results list will only include information about the DB instances identified by these ARNs.     * @dbi-resource-id@ - Accepts DB instance resource identifiers. The results list will only include information about the DB instances identified by these DB instance resource identifiers.     * @domain@ - Accepts Active Directory directory IDs. The results list will only include information about the DB instances associated with these domains.     * @engine@ - Accepts engine names. The results list will only include information about the DB instances for these engines.
ddiFilters :: Lens' DescribeDBInstances [Filter]
ddiFilters = lens _ddiFilters (\s a -> s {_ddiFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeDBInstances@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddiMarker :: Lens' DescribeDBInstances (Maybe Text)
ddiMarker = lens _ddiMarker (\s a -> s {_ddiMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
ddiMaxRecords :: Lens' DescribeDBInstances (Maybe Int)
ddiMaxRecords = lens _ddiMaxRecords (\s a -> s {_ddiMaxRecords = a})

instance AWSPager DescribeDBInstances where
  page rq rs
    | stop (rs ^. ddirrsMarker) = Nothing
    | stop (rs ^. ddirrsDBInstances) = Nothing
    | otherwise =
      Just $ rq & ddiMarker .~ rs ^. ddirrsMarker

instance AWSRequest DescribeDBInstances where
  type
    Rs DescribeDBInstances =
      DescribeDBInstancesResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBInstancesResult"
      ( \s h x ->
          DescribeDBInstancesResponse'
            <$> ( x .@? "DBInstances" .!@ mempty
                    >>= may (parseXMLList "DBInstance")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBInstances

instance NFData DescribeDBInstances

instance ToHeaders DescribeDBInstances where
  toHeaders = const mempty

instance ToPath DescribeDBInstances where
  toPath = const "/"

instance ToQuery DescribeDBInstances where
  toQuery DescribeDBInstances' {..} =
    mconcat
      [ "Action" =: ("DescribeDBInstances" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBInstanceIdentifier" =: _ddiDBInstanceIdentifier,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddiFilters),
        "Marker" =: _ddiMarker,
        "MaxRecords" =: _ddiMaxRecords
      ]

-- | Contains the result of a successful invocation of the @DescribeDBInstances@ action.
--
--
--
-- /See:/ 'describeDBInstancesResponse' smart constructor.
data DescribeDBInstancesResponse = DescribeDBInstancesResponse'
  { _ddirrsDBInstances ::
      !( Maybe
           [DBInstance]
       ),
    _ddirrsMarker ::
      !(Maybe Text),
    _ddirrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddirrsDBInstances' - A list of @DBInstance@ instances.
--
-- * 'ddirrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddirrsResponseStatus' - -- | The response status code.
describeDBInstancesResponse ::
  -- | 'ddirrsResponseStatus'
  Int ->
  DescribeDBInstancesResponse
describeDBInstancesResponse pResponseStatus_ =
  DescribeDBInstancesResponse'
    { _ddirrsDBInstances =
        Nothing,
      _ddirrsMarker = Nothing,
      _ddirrsResponseStatus = pResponseStatus_
    }

-- | A list of @DBInstance@ instances.
ddirrsDBInstances :: Lens' DescribeDBInstancesResponse [DBInstance]
ddirrsDBInstances = lens _ddirrsDBInstances (\s a -> s {_ddirrsDBInstances = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddirrsMarker :: Lens' DescribeDBInstancesResponse (Maybe Text)
ddirrsMarker = lens _ddirrsMarker (\s a -> s {_ddirrsMarker = a})

-- | -- | The response status code.
ddirrsResponseStatus :: Lens' DescribeDBInstancesResponse Int
ddirrsResponseStatus = lens _ddirrsResponseStatus (\s a -> s {_ddirrsResponseStatus = a})

instance NFData DescribeDBInstancesResponse
