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
-- Module      : Network.AWS.RDS.DescribeReservedDBInstancesOfferings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists available reserved DB instance offerings.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeReservedDBInstancesOfferings
  ( -- * Creating a Request
    describeReservedDBInstancesOfferings,
    DescribeReservedDBInstancesOfferings,

    -- * Request Lenses
    drdioDuration,
    drdioMultiAZ,
    drdioDBInstanceClass,
    drdioFilters,
    drdioOfferingType,
    drdioProductDescription,
    drdioReservedDBInstancesOfferingId,
    drdioMarker,
    drdioMaxRecords,

    -- * Destructuring the Response
    describeReservedDBInstancesOfferingsResponse,
    DescribeReservedDBInstancesOfferingsResponse,

    -- * Response Lenses
    drdiorrsReservedDBInstancesOfferings,
    drdiorrsMarker,
    drdiorrsResponseStatus,
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
-- /See:/ 'describeReservedDBInstancesOfferings' smart constructor.
data DescribeReservedDBInstancesOfferings = DescribeReservedDBInstancesOfferings'
  { _drdioDuration ::
      !( Maybe
           Text
       ),
    _drdioMultiAZ ::
      !( Maybe
           Bool
       ),
    _drdioDBInstanceClass ::
      !( Maybe
           Text
       ),
    _drdioFilters ::
      !( Maybe
           [Filter]
       ),
    _drdioOfferingType ::
      !( Maybe
           Text
       ),
    _drdioProductDescription ::
      !( Maybe
           Text
       ),
    _drdioReservedDBInstancesOfferingId ::
      !( Maybe
           Text
       ),
    _drdioMarker ::
      !( Maybe
           Text
       ),
    _drdioMaxRecords ::
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

-- | Creates a value of 'DescribeReservedDBInstancesOfferings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drdioDuration' - Duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration. Valid Values: @1 | 3 | 31536000 | 94608000@
--
-- * 'drdioMultiAZ' - A value that indicates whether to show only those reservations that support Multi-AZ.
--
-- * 'drdioDBInstanceClass' - The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.
--
-- * 'drdioFilters' - This parameter isn't currently supported.
--
-- * 'drdioOfferingType' - The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type. Valid Values: @"Partial Upfront" | "All Upfront" | "No Upfront" @
--
-- * 'drdioProductDescription' - Product description filter value. Specify this parameter to show only the available offerings that contain the specified product description.
--
-- * 'drdioReservedDBInstancesOfferingId' - The offering identifier filter value. Specify this parameter to show only the available offering that matches the specified reservation identifier. Example: @438012d3-4052-4cc7-b2e3-8d3372e0e706@
--
-- * 'drdioMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'drdioMaxRecords' - The maximum number of records to include in the response. If more than the @MaxRecords@ value is available, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeReservedDBInstancesOfferings ::
  DescribeReservedDBInstancesOfferings
describeReservedDBInstancesOfferings =
  DescribeReservedDBInstancesOfferings'
    { _drdioDuration =
        Nothing,
      _drdioMultiAZ = Nothing,
      _drdioDBInstanceClass = Nothing,
      _drdioFilters = Nothing,
      _drdioOfferingType = Nothing,
      _drdioProductDescription = Nothing,
      _drdioReservedDBInstancesOfferingId =
        Nothing,
      _drdioMarker = Nothing,
      _drdioMaxRecords = Nothing
    }

-- | Duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration. Valid Values: @1 | 3 | 31536000 | 94608000@
drdioDuration :: Lens' DescribeReservedDBInstancesOfferings (Maybe Text)
drdioDuration = lens _drdioDuration (\s a -> s {_drdioDuration = a})

-- | A value that indicates whether to show only those reservations that support Multi-AZ.
drdioMultiAZ :: Lens' DescribeReservedDBInstancesOfferings (Maybe Bool)
drdioMultiAZ = lens _drdioMultiAZ (\s a -> s {_drdioMultiAZ = a})

-- | The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.
drdioDBInstanceClass :: Lens' DescribeReservedDBInstancesOfferings (Maybe Text)
drdioDBInstanceClass = lens _drdioDBInstanceClass (\s a -> s {_drdioDBInstanceClass = a})

-- | This parameter isn't currently supported.
drdioFilters :: Lens' DescribeReservedDBInstancesOfferings [Filter]
drdioFilters = lens _drdioFilters (\s a -> s {_drdioFilters = a}) . _Default . _Coerce

-- | The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type. Valid Values: @"Partial Upfront" | "All Upfront" | "No Upfront" @
drdioOfferingType :: Lens' DescribeReservedDBInstancesOfferings (Maybe Text)
drdioOfferingType = lens _drdioOfferingType (\s a -> s {_drdioOfferingType = a})

-- | Product description filter value. Specify this parameter to show only the available offerings that contain the specified product description.
drdioProductDescription :: Lens' DescribeReservedDBInstancesOfferings (Maybe Text)
drdioProductDescription = lens _drdioProductDescription (\s a -> s {_drdioProductDescription = a})

-- | The offering identifier filter value. Specify this parameter to show only the available offering that matches the specified reservation identifier. Example: @438012d3-4052-4cc7-b2e3-8d3372e0e706@
drdioReservedDBInstancesOfferingId :: Lens' DescribeReservedDBInstancesOfferings (Maybe Text)
drdioReservedDBInstancesOfferingId = lens _drdioReservedDBInstancesOfferingId (\s a -> s {_drdioReservedDBInstancesOfferingId = a})

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
drdioMarker :: Lens' DescribeReservedDBInstancesOfferings (Maybe Text)
drdioMarker = lens _drdioMarker (\s a -> s {_drdioMarker = a})

-- | The maximum number of records to include in the response. If more than the @MaxRecords@ value is available, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
drdioMaxRecords :: Lens' DescribeReservedDBInstancesOfferings (Maybe Int)
drdioMaxRecords = lens _drdioMaxRecords (\s a -> s {_drdioMaxRecords = a})

instance
  AWSPager
    DescribeReservedDBInstancesOfferings
  where
  page rq rs
    | stop (rs ^. drdiorrsMarker) = Nothing
    | stop (rs ^. drdiorrsReservedDBInstancesOfferings) =
      Nothing
    | otherwise =
      Just $ rq & drdioMarker .~ rs ^. drdiorrsMarker

instance
  AWSRequest
    DescribeReservedDBInstancesOfferings
  where
  type
    Rs DescribeReservedDBInstancesOfferings =
      DescribeReservedDBInstancesOfferingsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeReservedDBInstancesOfferingsResult"
      ( \s h x ->
          DescribeReservedDBInstancesOfferingsResponse'
            <$> ( x .@? "ReservedDBInstancesOfferings" .!@ mempty
                    >>= may (parseXMLList "ReservedDBInstancesOffering")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeReservedDBInstancesOfferings

instance NFData DescribeReservedDBInstancesOfferings

instance
  ToHeaders
    DescribeReservedDBInstancesOfferings
  where
  toHeaders = const mempty

instance ToPath DescribeReservedDBInstancesOfferings where
  toPath = const "/"

instance ToQuery DescribeReservedDBInstancesOfferings where
  toQuery DescribeReservedDBInstancesOfferings' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeReservedDBInstancesOfferings" ::
                 ByteString
             ),
        "Version" =: ("2014-10-31" :: ByteString),
        "Duration" =: _drdioDuration,
        "MultiAZ" =: _drdioMultiAZ,
        "DBInstanceClass" =: _drdioDBInstanceClass,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _drdioFilters),
        "OfferingType" =: _drdioOfferingType,
        "ProductDescription" =: _drdioProductDescription,
        "ReservedDBInstancesOfferingId"
          =: _drdioReservedDBInstancesOfferingId,
        "Marker" =: _drdioMarker,
        "MaxRecords" =: _drdioMaxRecords
      ]

-- | Contains the result of a successful invocation of the @DescribeReservedDBInstancesOfferings@ action.
--
--
--
-- /See:/ 'describeReservedDBInstancesOfferingsResponse' smart constructor.
data DescribeReservedDBInstancesOfferingsResponse = DescribeReservedDBInstancesOfferingsResponse'
  { _drdiorrsReservedDBInstancesOfferings ::
      !( Maybe
           [ReservedDBInstancesOffering]
       ),
    _drdiorrsMarker ::
      !( Maybe
           Text
       ),
    _drdiorrsResponseStatus ::
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

-- | Creates a value of 'DescribeReservedDBInstancesOfferingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drdiorrsReservedDBInstancesOfferings' - A list of reserved DB instance offerings.
--
-- * 'drdiorrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'drdiorrsResponseStatus' - -- | The response status code.
describeReservedDBInstancesOfferingsResponse ::
  -- | 'drdiorrsResponseStatus'
  Int ->
  DescribeReservedDBInstancesOfferingsResponse
describeReservedDBInstancesOfferingsResponse
  pResponseStatus_ =
    DescribeReservedDBInstancesOfferingsResponse'
      { _drdiorrsReservedDBInstancesOfferings =
          Nothing,
        _drdiorrsMarker = Nothing,
        _drdiorrsResponseStatus =
          pResponseStatus_
      }

-- | A list of reserved DB instance offerings.
drdiorrsReservedDBInstancesOfferings :: Lens' DescribeReservedDBInstancesOfferingsResponse [ReservedDBInstancesOffering]
drdiorrsReservedDBInstancesOfferings = lens _drdiorrsReservedDBInstancesOfferings (\s a -> s {_drdiorrsReservedDBInstancesOfferings = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
drdiorrsMarker :: Lens' DescribeReservedDBInstancesOfferingsResponse (Maybe Text)
drdiorrsMarker = lens _drdiorrsMarker (\s a -> s {_drdiorrsMarker = a})

-- | -- | The response status code.
drdiorrsResponseStatus :: Lens' DescribeReservedDBInstancesOfferingsResponse Int
drdiorrsResponseStatus = lens _drdiorrsResponseStatus (\s a -> s {_drdiorrsResponseStatus = a})

instance
  NFData
    DescribeReservedDBInstancesOfferingsResponse
