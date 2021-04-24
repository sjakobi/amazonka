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
-- Module      : Network.AWS.RDS.DescribeReservedDBInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about reserved DB instances for this account, or about a specified reserved DB instance.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeReservedDBInstances
  ( -- * Creating a Request
    describeReservedDBInstances,
    DescribeReservedDBInstances,

    -- * Request Lenses
    drdiDuration,
    drdiMultiAZ,
    drdiDBInstanceClass,
    drdiReservedDBInstanceId,
    drdiFilters,
    drdiLeaseId,
    drdiOfferingType,
    drdiProductDescription,
    drdiReservedDBInstancesOfferingId,
    drdiMarker,
    drdiMaxRecords,

    -- * Destructuring the Response
    describeReservedDBInstancesResponse,
    DescribeReservedDBInstancesResponse,

    -- * Response Lenses
    drdirrsReservedDBInstances,
    drdirrsMarker,
    drdirrsResponseStatus,
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
-- /See:/ 'describeReservedDBInstances' smart constructor.
data DescribeReservedDBInstances = DescribeReservedDBInstances'
  { _drdiDuration ::
      !(Maybe Text),
    _drdiMultiAZ ::
      !(Maybe Bool),
    _drdiDBInstanceClass ::
      !(Maybe Text),
    _drdiReservedDBInstanceId ::
      !(Maybe Text),
    _drdiFilters ::
      !( Maybe
           [Filter]
       ),
    _drdiLeaseId ::
      !(Maybe Text),
    _drdiOfferingType ::
      !(Maybe Text),
    _drdiProductDescription ::
      !(Maybe Text),
    _drdiReservedDBInstancesOfferingId ::
      !(Maybe Text),
    _drdiMarker ::
      !(Maybe Text),
    _drdiMaxRecords ::
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

-- | Creates a value of 'DescribeReservedDBInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drdiDuration' - The duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration. Valid Values: @1 | 3 | 31536000 | 94608000@
--
-- * 'drdiMultiAZ' - A value that indicates whether to show only those reservations that support Multi-AZ.
--
-- * 'drdiDBInstanceClass' - The DB instance class filter value. Specify this parameter to show only those reservations matching the specified DB instances class.
--
-- * 'drdiReservedDBInstanceId' - The reserved DB instance identifier filter value. Specify this parameter to show only the reservation that matches the specified reservation ID.
--
-- * 'drdiFilters' - This parameter isn't currently supported.
--
-- * 'drdiLeaseId' - The lease identifier filter value. Specify this parameter to show only the reservation that matches the specified lease ID.
--
-- * 'drdiOfferingType' - The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type. Valid Values: @"Partial Upfront" | "All Upfront" | "No Upfront" @
--
-- * 'drdiProductDescription' - The product description filter value. Specify this parameter to show only those reservations matching the specified product description.
--
-- * 'drdiReservedDBInstancesOfferingId' - The offering identifier filter value. Specify this parameter to show only purchased reservations matching the specified offering identifier.
--
-- * 'drdiMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'drdiMaxRecords' - The maximum number of records to include in the response. If more than the @MaxRecords@ value is available, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeReservedDBInstances ::
  DescribeReservedDBInstances
describeReservedDBInstances =
  DescribeReservedDBInstances'
    { _drdiDuration =
        Nothing,
      _drdiMultiAZ = Nothing,
      _drdiDBInstanceClass = Nothing,
      _drdiReservedDBInstanceId = Nothing,
      _drdiFilters = Nothing,
      _drdiLeaseId = Nothing,
      _drdiOfferingType = Nothing,
      _drdiProductDescription = Nothing,
      _drdiReservedDBInstancesOfferingId = Nothing,
      _drdiMarker = Nothing,
      _drdiMaxRecords = Nothing
    }

-- | The duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration. Valid Values: @1 | 3 | 31536000 | 94608000@
drdiDuration :: Lens' DescribeReservedDBInstances (Maybe Text)
drdiDuration = lens _drdiDuration (\s a -> s {_drdiDuration = a})

-- | A value that indicates whether to show only those reservations that support Multi-AZ.
drdiMultiAZ :: Lens' DescribeReservedDBInstances (Maybe Bool)
drdiMultiAZ = lens _drdiMultiAZ (\s a -> s {_drdiMultiAZ = a})

-- | The DB instance class filter value. Specify this parameter to show only those reservations matching the specified DB instances class.
drdiDBInstanceClass :: Lens' DescribeReservedDBInstances (Maybe Text)
drdiDBInstanceClass = lens _drdiDBInstanceClass (\s a -> s {_drdiDBInstanceClass = a})

-- | The reserved DB instance identifier filter value. Specify this parameter to show only the reservation that matches the specified reservation ID.
drdiReservedDBInstanceId :: Lens' DescribeReservedDBInstances (Maybe Text)
drdiReservedDBInstanceId = lens _drdiReservedDBInstanceId (\s a -> s {_drdiReservedDBInstanceId = a})

-- | This parameter isn't currently supported.
drdiFilters :: Lens' DescribeReservedDBInstances [Filter]
drdiFilters = lens _drdiFilters (\s a -> s {_drdiFilters = a}) . _Default . _Coerce

-- | The lease identifier filter value. Specify this parameter to show only the reservation that matches the specified lease ID.
drdiLeaseId :: Lens' DescribeReservedDBInstances (Maybe Text)
drdiLeaseId = lens _drdiLeaseId (\s a -> s {_drdiLeaseId = a})

-- | The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type. Valid Values: @"Partial Upfront" | "All Upfront" | "No Upfront" @
drdiOfferingType :: Lens' DescribeReservedDBInstances (Maybe Text)
drdiOfferingType = lens _drdiOfferingType (\s a -> s {_drdiOfferingType = a})

-- | The product description filter value. Specify this parameter to show only those reservations matching the specified product description.
drdiProductDescription :: Lens' DescribeReservedDBInstances (Maybe Text)
drdiProductDescription = lens _drdiProductDescription (\s a -> s {_drdiProductDescription = a})

-- | The offering identifier filter value. Specify this parameter to show only purchased reservations matching the specified offering identifier.
drdiReservedDBInstancesOfferingId :: Lens' DescribeReservedDBInstances (Maybe Text)
drdiReservedDBInstancesOfferingId = lens _drdiReservedDBInstancesOfferingId (\s a -> s {_drdiReservedDBInstancesOfferingId = a})

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
drdiMarker :: Lens' DescribeReservedDBInstances (Maybe Text)
drdiMarker = lens _drdiMarker (\s a -> s {_drdiMarker = a})

-- | The maximum number of records to include in the response. If more than the @MaxRecords@ value is available, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
drdiMaxRecords :: Lens' DescribeReservedDBInstances (Maybe Int)
drdiMaxRecords = lens _drdiMaxRecords (\s a -> s {_drdiMaxRecords = a})

instance AWSPager DescribeReservedDBInstances where
  page rq rs
    | stop (rs ^. drdirrsMarker) = Nothing
    | stop (rs ^. drdirrsReservedDBInstances) = Nothing
    | otherwise =
      Just $ rq & drdiMarker .~ rs ^. drdirrsMarker

instance AWSRequest DescribeReservedDBInstances where
  type
    Rs DescribeReservedDBInstances =
      DescribeReservedDBInstancesResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeReservedDBInstancesResult"
      ( \s h x ->
          DescribeReservedDBInstancesResponse'
            <$> ( x .@? "ReservedDBInstances" .!@ mempty
                    >>= may (parseXMLList "ReservedDBInstance")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReservedDBInstances

instance NFData DescribeReservedDBInstances

instance ToHeaders DescribeReservedDBInstances where
  toHeaders = const mempty

instance ToPath DescribeReservedDBInstances where
  toPath = const "/"

instance ToQuery DescribeReservedDBInstances where
  toQuery DescribeReservedDBInstances' {..} =
    mconcat
      [ "Action"
          =: ("DescribeReservedDBInstances" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Duration" =: _drdiDuration,
        "MultiAZ" =: _drdiMultiAZ,
        "DBInstanceClass" =: _drdiDBInstanceClass,
        "ReservedDBInstanceId" =: _drdiReservedDBInstanceId,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _drdiFilters),
        "LeaseId" =: _drdiLeaseId,
        "OfferingType" =: _drdiOfferingType,
        "ProductDescription" =: _drdiProductDescription,
        "ReservedDBInstancesOfferingId"
          =: _drdiReservedDBInstancesOfferingId,
        "Marker" =: _drdiMarker,
        "MaxRecords" =: _drdiMaxRecords
      ]

-- | Contains the result of a successful invocation of the @DescribeReservedDBInstances@ action.
--
--
--
-- /See:/ 'describeReservedDBInstancesResponse' smart constructor.
data DescribeReservedDBInstancesResponse = DescribeReservedDBInstancesResponse'
  { _drdirrsReservedDBInstances ::
      !( Maybe
           [ReservedDBInstance]
       ),
    _drdirrsMarker ::
      !( Maybe
           Text
       ),
    _drdirrsResponseStatus ::
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

-- | Creates a value of 'DescribeReservedDBInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drdirrsReservedDBInstances' - A list of reserved DB instances.
--
-- * 'drdirrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'drdirrsResponseStatus' - -- | The response status code.
describeReservedDBInstancesResponse ::
  -- | 'drdirrsResponseStatus'
  Int ->
  DescribeReservedDBInstancesResponse
describeReservedDBInstancesResponse pResponseStatus_ =
  DescribeReservedDBInstancesResponse'
    { _drdirrsReservedDBInstances =
        Nothing,
      _drdirrsMarker = Nothing,
      _drdirrsResponseStatus =
        pResponseStatus_
    }

-- | A list of reserved DB instances.
drdirrsReservedDBInstances :: Lens' DescribeReservedDBInstancesResponse [ReservedDBInstance]
drdirrsReservedDBInstances = lens _drdirrsReservedDBInstances (\s a -> s {_drdirrsReservedDBInstances = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
drdirrsMarker :: Lens' DescribeReservedDBInstancesResponse (Maybe Text)
drdirrsMarker = lens _drdirrsMarker (\s a -> s {_drdirrsMarker = a})

-- | -- | The response status code.
drdirrsResponseStatus :: Lens' DescribeReservedDBInstancesResponse Int
drdirrsResponseStatus = lens _drdirrsResponseStatus (\s a -> s {_drdirrsResponseStatus = a})

instance NFData DescribeReservedDBInstancesResponse
