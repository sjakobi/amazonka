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
-- Module      : Network.AWS.RDS.DescribeCustomAvailabilityZones
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about custom Availability Zones (AZs).
--
--
-- A custom AZ is an on-premises AZ that is integrated with a VMware vSphere cluster.
--
-- For more information about RDS on VMware, see the <https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html RDS on VMware User Guide.>
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeCustomAvailabilityZones
  ( -- * Creating a Request
    describeCustomAvailabilityZones,
    DescribeCustomAvailabilityZones,

    -- * Request Lenses
    dcazsCustomAvailabilityZoneId,
    dcazsFilters,
    dcazsMarker,
    dcazsMaxRecords,

    -- * Destructuring the Response
    describeCustomAvailabilityZonesResponse,
    DescribeCustomAvailabilityZonesResponse,

    -- * Response Lenses
    drsCustomAvailabilityZones,
    drsMarker,
    drsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCustomAvailabilityZones' smart constructor.
data DescribeCustomAvailabilityZones = DescribeCustomAvailabilityZones'
  { _dcazsCustomAvailabilityZoneId ::
      !( Maybe
           Text
       ),
    _dcazsFilters ::
      !( Maybe
           [Filter]
       ),
    _dcazsMarker ::
      !( Maybe
           Text
       ),
    _dcazsMaxRecords ::
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

-- | Creates a value of 'DescribeCustomAvailabilityZones' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcazsCustomAvailabilityZoneId' - The custom AZ identifier. If this parameter is specified, information from only the specific custom AZ is returned.
--
-- * 'dcazsFilters' - A filter that specifies one or more custom AZs to describe.
--
-- * 'dcazsMarker' - An optional pagination token provided by a previous @DescribeCustomAvailabilityZones@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dcazsMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results. Default: 100 Constraints: Minimum 20, maximum 100.
describeCustomAvailabilityZones ::
  DescribeCustomAvailabilityZones
describeCustomAvailabilityZones =
  DescribeCustomAvailabilityZones'
    { _dcazsCustomAvailabilityZoneId =
        Nothing,
      _dcazsFilters = Nothing,
      _dcazsMarker = Nothing,
      _dcazsMaxRecords = Nothing
    }

-- | The custom AZ identifier. If this parameter is specified, information from only the specific custom AZ is returned.
dcazsCustomAvailabilityZoneId :: Lens' DescribeCustomAvailabilityZones (Maybe Text)
dcazsCustomAvailabilityZoneId = lens _dcazsCustomAvailabilityZoneId (\s a -> s {_dcazsCustomAvailabilityZoneId = a})

-- | A filter that specifies one or more custom AZs to describe.
dcazsFilters :: Lens' DescribeCustomAvailabilityZones [Filter]
dcazsFilters = lens _dcazsFilters (\s a -> s {_dcazsFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeCustomAvailabilityZones@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dcazsMarker :: Lens' DescribeCustomAvailabilityZones (Maybe Text)
dcazsMarker = lens _dcazsMarker (\s a -> s {_dcazsMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results. Default: 100 Constraints: Minimum 20, maximum 100.
dcazsMaxRecords :: Lens' DescribeCustomAvailabilityZones (Maybe Int)
dcazsMaxRecords = lens _dcazsMaxRecords (\s a -> s {_dcazsMaxRecords = a})

instance AWSPager DescribeCustomAvailabilityZones where
  page rq rs
    | stop (rs ^. drsMarker) = Nothing
    | stop (rs ^. drsCustomAvailabilityZones) = Nothing
    | otherwise =
      Just $ rq & dcazsMarker .~ rs ^. drsMarker

instance AWSRequest DescribeCustomAvailabilityZones where
  type
    Rs DescribeCustomAvailabilityZones =
      DescribeCustomAvailabilityZonesResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeCustomAvailabilityZonesResult"
      ( \s h x ->
          DescribeCustomAvailabilityZonesResponse'
            <$> ( x .@? "CustomAvailabilityZones" .!@ mempty
                    >>= may (parseXMLList "CustomAvailabilityZone")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCustomAvailabilityZones

instance NFData DescribeCustomAvailabilityZones

instance ToHeaders DescribeCustomAvailabilityZones where
  toHeaders = const mempty

instance ToPath DescribeCustomAvailabilityZones where
  toPath = const "/"

instance ToQuery DescribeCustomAvailabilityZones where
  toQuery DescribeCustomAvailabilityZones' {..} =
    mconcat
      [ "Action"
          =: ("DescribeCustomAvailabilityZones" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "CustomAvailabilityZoneId"
          =: _dcazsCustomAvailabilityZoneId,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _dcazsFilters),
        "Marker" =: _dcazsMarker,
        "MaxRecords" =: _dcazsMaxRecords
      ]

-- | /See:/ 'describeCustomAvailabilityZonesResponse' smart constructor.
data DescribeCustomAvailabilityZonesResponse = DescribeCustomAvailabilityZonesResponse'
  { _drsCustomAvailabilityZones ::
      !( Maybe
           [CustomAvailabilityZone]
       ),
    _drsMarker ::
      !( Maybe
           Text
       ),
    _drsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCustomAvailabilityZonesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsCustomAvailabilityZones' - The list of 'CustomAvailabilityZone' objects for the AWS account.
--
-- * 'drsMarker' - An optional pagination token provided by a previous @DescribeCustomAvailabilityZones@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'drsResponseStatus' - -- | The response status code.
describeCustomAvailabilityZonesResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeCustomAvailabilityZonesResponse
describeCustomAvailabilityZonesResponse
  pResponseStatus_ =
    DescribeCustomAvailabilityZonesResponse'
      { _drsCustomAvailabilityZones =
          Nothing,
        _drsMarker = Nothing,
        _drsResponseStatus =
          pResponseStatus_
      }

-- | The list of 'CustomAvailabilityZone' objects for the AWS account.
drsCustomAvailabilityZones :: Lens' DescribeCustomAvailabilityZonesResponse [CustomAvailabilityZone]
drsCustomAvailabilityZones = lens _drsCustomAvailabilityZones (\s a -> s {_drsCustomAvailabilityZones = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeCustomAvailabilityZones@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
drsMarker :: Lens' DescribeCustomAvailabilityZonesResponse (Maybe Text)
drsMarker = lens _drsMarker (\s a -> s {_drsMarker = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeCustomAvailabilityZonesResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance
  NFData
    DescribeCustomAvailabilityZonesResponse
