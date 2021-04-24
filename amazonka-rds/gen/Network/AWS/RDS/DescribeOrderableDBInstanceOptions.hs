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
-- Module      : Network.AWS.RDS.DescribeOrderableDBInstanceOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of orderable DB instance options for the specified engine.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeOrderableDBInstanceOptions
  ( -- * Creating a Request
    describeOrderableDBInstanceOptions,
    DescribeOrderableDBInstanceOptions,

    -- * Request Lenses
    dodioEngineVersion,
    dodioLicenseModel,
    dodioDBInstanceClass,
    dodioFilters,
    dodioAvailabilityZoneGroup,
    dodioVPC,
    dodioMarker,
    dodioMaxRecords,
    dodioEngine,

    -- * Destructuring the Response
    describeOrderableDBInstanceOptionsResponse,
    DescribeOrderableDBInstanceOptionsResponse,

    -- * Response Lenses
    dodiorrsOrderableDBInstanceOptions,
    dodiorrsMarker,
    dodiorrsResponseStatus,
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
-- /See:/ 'describeOrderableDBInstanceOptions' smart constructor.
data DescribeOrderableDBInstanceOptions = DescribeOrderableDBInstanceOptions'
  { _dodioEngineVersion ::
      !( Maybe
           Text
       ),
    _dodioLicenseModel ::
      !( Maybe
           Text
       ),
    _dodioDBInstanceClass ::
      !( Maybe
           Text
       ),
    _dodioFilters ::
      !( Maybe
           [Filter]
       ),
    _dodioAvailabilityZoneGroup ::
      !( Maybe
           Text
       ),
    _dodioVPC ::
      !( Maybe
           Bool
       ),
    _dodioMarker ::
      !( Maybe
           Text
       ),
    _dodioMaxRecords ::
      !( Maybe
           Int
       ),
    _dodioEngine ::
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

-- | Creates a value of 'DescribeOrderableDBInstanceOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dodioEngineVersion' - The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.
--
-- * 'dodioLicenseModel' - The license model filter value. Specify this parameter to show only the available offerings matching the specified license model.
--
-- * 'dodioDBInstanceClass' - The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.
--
-- * 'dodioFilters' - This parameter isn't currently supported.
--
-- * 'dodioAvailabilityZoneGroup' - The Availability Zone group associated with a Local Zone. Specify this parameter to retrieve available offerings for the Local Zones in the group. Omit this parameter to show the available offerings in the specified AWS Region.
--
-- * 'dodioVPC' - A value that indicates whether to show only VPC or non-VPC offerings.
--
-- * 'dodioMarker' - An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dodioMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
--
-- * 'dodioEngine' - The name of the engine to retrieve DB instance options for. Valid Values:      * @aurora@ (for MySQL 5.6-compatible Aurora)     * @aurora-mysql@ (for MySQL 5.7-compatible Aurora)     * @aurora-postgresql@      * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
describeOrderableDBInstanceOptions ::
  -- | 'dodioEngine'
  Text ->
  DescribeOrderableDBInstanceOptions
describeOrderableDBInstanceOptions pEngine_ =
  DescribeOrderableDBInstanceOptions'
    { _dodioEngineVersion =
        Nothing,
      _dodioLicenseModel = Nothing,
      _dodioDBInstanceClass = Nothing,
      _dodioFilters = Nothing,
      _dodioAvailabilityZoneGroup = Nothing,
      _dodioVPC = Nothing,
      _dodioMarker = Nothing,
      _dodioMaxRecords = Nothing,
      _dodioEngine = pEngine_
    }

-- | The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.
dodioEngineVersion :: Lens' DescribeOrderableDBInstanceOptions (Maybe Text)
dodioEngineVersion = lens _dodioEngineVersion (\s a -> s {_dodioEngineVersion = a})

-- | The license model filter value. Specify this parameter to show only the available offerings matching the specified license model.
dodioLicenseModel :: Lens' DescribeOrderableDBInstanceOptions (Maybe Text)
dodioLicenseModel = lens _dodioLicenseModel (\s a -> s {_dodioLicenseModel = a})

-- | The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.
dodioDBInstanceClass :: Lens' DescribeOrderableDBInstanceOptions (Maybe Text)
dodioDBInstanceClass = lens _dodioDBInstanceClass (\s a -> s {_dodioDBInstanceClass = a})

-- | This parameter isn't currently supported.
dodioFilters :: Lens' DescribeOrderableDBInstanceOptions [Filter]
dodioFilters = lens _dodioFilters (\s a -> s {_dodioFilters = a}) . _Default . _Coerce

-- | The Availability Zone group associated with a Local Zone. Specify this parameter to retrieve available offerings for the Local Zones in the group. Omit this parameter to show the available offerings in the specified AWS Region.
dodioAvailabilityZoneGroup :: Lens' DescribeOrderableDBInstanceOptions (Maybe Text)
dodioAvailabilityZoneGroup = lens _dodioAvailabilityZoneGroup (\s a -> s {_dodioAvailabilityZoneGroup = a})

-- | A value that indicates whether to show only VPC or non-VPC offerings.
dodioVPC :: Lens' DescribeOrderableDBInstanceOptions (Maybe Bool)
dodioVPC = lens _dodioVPC (\s a -> s {_dodioVPC = a})

-- | An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dodioMarker :: Lens' DescribeOrderableDBInstanceOptions (Maybe Text)
dodioMarker = lens _dodioMarker (\s a -> s {_dodioMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
dodioMaxRecords :: Lens' DescribeOrderableDBInstanceOptions (Maybe Int)
dodioMaxRecords = lens _dodioMaxRecords (\s a -> s {_dodioMaxRecords = a})

-- | The name of the engine to retrieve DB instance options for. Valid Values:      * @aurora@ (for MySQL 5.6-compatible Aurora)     * @aurora-mysql@ (for MySQL 5.7-compatible Aurora)     * @aurora-postgresql@      * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
dodioEngine :: Lens' DescribeOrderableDBInstanceOptions Text
dodioEngine = lens _dodioEngine (\s a -> s {_dodioEngine = a})

instance AWSPager DescribeOrderableDBInstanceOptions where
  page rq rs
    | stop (rs ^. dodiorrsMarker) = Nothing
    | stop (rs ^. dodiorrsOrderableDBInstanceOptions) =
      Nothing
    | otherwise =
      Just $ rq & dodioMarker .~ rs ^. dodiorrsMarker

instance
  AWSRequest
    DescribeOrderableDBInstanceOptions
  where
  type
    Rs DescribeOrderableDBInstanceOptions =
      DescribeOrderableDBInstanceOptionsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeOrderableDBInstanceOptionsResult"
      ( \s h x ->
          DescribeOrderableDBInstanceOptionsResponse'
            <$> ( x .@? "OrderableDBInstanceOptions" .!@ mempty
                    >>= may (parseXMLList "OrderableDBInstanceOption")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeOrderableDBInstanceOptions

instance NFData DescribeOrderableDBInstanceOptions

instance ToHeaders DescribeOrderableDBInstanceOptions where
  toHeaders = const mempty

instance ToPath DescribeOrderableDBInstanceOptions where
  toPath = const "/"

instance ToQuery DescribeOrderableDBInstanceOptions where
  toQuery DescribeOrderableDBInstanceOptions' {..} =
    mconcat
      [ "Action"
          =: ("DescribeOrderableDBInstanceOptions" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "EngineVersion" =: _dodioEngineVersion,
        "LicenseModel" =: _dodioLicenseModel,
        "DBInstanceClass" =: _dodioDBInstanceClass,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _dodioFilters),
        "AvailabilityZoneGroup"
          =: _dodioAvailabilityZoneGroup,
        "Vpc" =: _dodioVPC,
        "Marker" =: _dodioMarker,
        "MaxRecords" =: _dodioMaxRecords,
        "Engine" =: _dodioEngine
      ]

-- | Contains the result of a successful invocation of the @DescribeOrderableDBInstanceOptions@ action.
--
--
--
-- /See:/ 'describeOrderableDBInstanceOptionsResponse' smart constructor.
data DescribeOrderableDBInstanceOptionsResponse = DescribeOrderableDBInstanceOptionsResponse'
  { _dodiorrsOrderableDBInstanceOptions ::
      !( Maybe
           [OrderableDBInstanceOption]
       ),
    _dodiorrsMarker ::
      !( Maybe
           Text
       ),
    _dodiorrsResponseStatus ::
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

-- | Creates a value of 'DescribeOrderableDBInstanceOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dodiorrsOrderableDBInstanceOptions' - An @OrderableDBInstanceOption@ structure containing information about orderable options for the DB instance.
--
-- * 'dodiorrsMarker' - An optional pagination token provided by a previous OrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dodiorrsResponseStatus' - -- | The response status code.
describeOrderableDBInstanceOptionsResponse ::
  -- | 'dodiorrsResponseStatus'
  Int ->
  DescribeOrderableDBInstanceOptionsResponse
describeOrderableDBInstanceOptionsResponse
  pResponseStatus_ =
    DescribeOrderableDBInstanceOptionsResponse'
      { _dodiorrsOrderableDBInstanceOptions =
          Nothing,
        _dodiorrsMarker = Nothing,
        _dodiorrsResponseStatus =
          pResponseStatus_
      }

-- | An @OrderableDBInstanceOption@ structure containing information about orderable options for the DB instance.
dodiorrsOrderableDBInstanceOptions :: Lens' DescribeOrderableDBInstanceOptionsResponse [OrderableDBInstanceOption]
dodiorrsOrderableDBInstanceOptions = lens _dodiorrsOrderableDBInstanceOptions (\s a -> s {_dodiorrsOrderableDBInstanceOptions = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous OrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dodiorrsMarker :: Lens' DescribeOrderableDBInstanceOptionsResponse (Maybe Text)
dodiorrsMarker = lens _dodiorrsMarker (\s a -> s {_dodiorrsMarker = a})

-- | -- | The response status code.
dodiorrsResponseStatus :: Lens' DescribeOrderableDBInstanceOptionsResponse Int
dodiorrsResponseStatus = lens _dodiorrsResponseStatus (\s a -> s {_dodiorrsResponseStatus = a})

instance
  NFData
    DescribeOrderableDBInstanceOptionsResponse
