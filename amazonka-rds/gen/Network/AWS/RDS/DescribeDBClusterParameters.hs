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
-- Module      : Network.AWS.RDS.DescribeDBClusterParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the detailed parameter list for a particular DB cluster parameter group.
--
--
-- For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBClusterParameters
  ( -- * Creating a Request
    describeDBClusterParameters,
    DescribeDBClusterParameters,

    -- * Request Lenses
    ddcpSource,
    ddcpFilters,
    ddcpMarker,
    ddcpMaxRecords,
    ddcpDBClusterParameterGroupName,

    -- * Destructuring the Response
    describeDBClusterParametersResponse,
    DescribeDBClusterParametersResponse,

    -- * Response Lenses
    ddcprrsParameters,
    ddcprrsMarker,
    ddcprrsResponseStatus,
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
-- /See:/ 'describeDBClusterParameters' smart constructor.
data DescribeDBClusterParameters = DescribeDBClusterParameters'
  { _ddcpSource ::
      !(Maybe Text),
    _ddcpFilters ::
      !( Maybe
           [Filter]
       ),
    _ddcpMarker ::
      !(Maybe Text),
    _ddcpMaxRecords ::
      !(Maybe Int),
    _ddcpDBClusterParameterGroupName ::
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

-- | Creates a value of 'DescribeDBClusterParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcpSource' - A value that indicates to return only parameters for a specific source. Parameter sources can be @engine@ , @service@ , or @customer@ .
--
-- * 'ddcpFilters' - This parameter isn't currently supported.
--
-- * 'ddcpMarker' - An optional pagination token provided by a previous @DescribeDBClusterParameters@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddcpMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
--
-- * 'ddcpDBClusterParameterGroupName' - The name of a specific DB cluster parameter group to return parameter details for. Constraints:     * If supplied, must match the name of an existing DBClusterParameterGroup.
describeDBClusterParameters ::
  -- | 'ddcpDBClusterParameterGroupName'
  Text ->
  DescribeDBClusterParameters
describeDBClusterParameters
  pDBClusterParameterGroupName_ =
    DescribeDBClusterParameters'
      { _ddcpSource = Nothing,
        _ddcpFilters = Nothing,
        _ddcpMarker = Nothing,
        _ddcpMaxRecords = Nothing,
        _ddcpDBClusterParameterGroupName =
          pDBClusterParameterGroupName_
      }

-- | A value that indicates to return only parameters for a specific source. Parameter sources can be @engine@ , @service@ , or @customer@ .
ddcpSource :: Lens' DescribeDBClusterParameters (Maybe Text)
ddcpSource = lens _ddcpSource (\s a -> s {_ddcpSource = a})

-- | This parameter isn't currently supported.
ddcpFilters :: Lens' DescribeDBClusterParameters [Filter]
ddcpFilters = lens _ddcpFilters (\s a -> s {_ddcpFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeDBClusterParameters@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddcpMarker :: Lens' DescribeDBClusterParameters (Maybe Text)
ddcpMarker = lens _ddcpMarker (\s a -> s {_ddcpMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
ddcpMaxRecords :: Lens' DescribeDBClusterParameters (Maybe Int)
ddcpMaxRecords = lens _ddcpMaxRecords (\s a -> s {_ddcpMaxRecords = a})

-- | The name of a specific DB cluster parameter group to return parameter details for. Constraints:     * If supplied, must match the name of an existing DBClusterParameterGroup.
ddcpDBClusterParameterGroupName :: Lens' DescribeDBClusterParameters Text
ddcpDBClusterParameterGroupName = lens _ddcpDBClusterParameterGroupName (\s a -> s {_ddcpDBClusterParameterGroupName = a})

instance AWSPager DescribeDBClusterParameters where
  page rq rs
    | stop (rs ^. ddcprrsMarker) = Nothing
    | stop (rs ^. ddcprrsParameters) = Nothing
    | otherwise =
      Just $ rq & ddcpMarker .~ rs ^. ddcprrsMarker

instance AWSRequest DescribeDBClusterParameters where
  type
    Rs DescribeDBClusterParameters =
      DescribeDBClusterParametersResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBClusterParametersResult"
      ( \s h x ->
          DescribeDBClusterParametersResponse'
            <$> ( x .@? "Parameters" .!@ mempty
                    >>= may (parseXMLList "Parameter")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBClusterParameters

instance NFData DescribeDBClusterParameters

instance ToHeaders DescribeDBClusterParameters where
  toHeaders = const mempty

instance ToPath DescribeDBClusterParameters where
  toPath = const "/"

instance ToQuery DescribeDBClusterParameters where
  toQuery DescribeDBClusterParameters' {..} =
    mconcat
      [ "Action"
          =: ("DescribeDBClusterParameters" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Source" =: _ddcpSource,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddcpFilters),
        "Marker" =: _ddcpMarker,
        "MaxRecords" =: _ddcpMaxRecords,
        "DBClusterParameterGroupName"
          =: _ddcpDBClusterParameterGroupName
      ]

-- | Provides details about a DB cluster parameter group including the parameters in the DB cluster parameter group.
--
--
--
-- /See:/ 'describeDBClusterParametersResponse' smart constructor.
data DescribeDBClusterParametersResponse = DescribeDBClusterParametersResponse'
  { _ddcprrsParameters ::
      !( Maybe
           [Parameter]
       ),
    _ddcprrsMarker ::
      !( Maybe
           Text
       ),
    _ddcprrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBClusterParametersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcprrsParameters' - Provides a list of parameters for the DB cluster parameter group.
--
-- * 'ddcprrsMarker' - An optional pagination token provided by a previous DescribeDBClusterParameters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddcprrsResponseStatus' - -- | The response status code.
describeDBClusterParametersResponse ::
  -- | 'ddcprrsResponseStatus'
  Int ->
  DescribeDBClusterParametersResponse
describeDBClusterParametersResponse pResponseStatus_ =
  DescribeDBClusterParametersResponse'
    { _ddcprrsParameters =
        Nothing,
      _ddcprrsMarker = Nothing,
      _ddcprrsResponseStatus =
        pResponseStatus_
    }

-- | Provides a list of parameters for the DB cluster parameter group.
ddcprrsParameters :: Lens' DescribeDBClusterParametersResponse [Parameter]
ddcprrsParameters = lens _ddcprrsParameters (\s a -> s {_ddcprrsParameters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous DescribeDBClusterParameters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddcprrsMarker :: Lens' DescribeDBClusterParametersResponse (Maybe Text)
ddcprrsMarker = lens _ddcprrsMarker (\s a -> s {_ddcprrsMarker = a})

-- | -- | The response status code.
ddcprrsResponseStatus :: Lens' DescribeDBClusterParametersResponse Int
ddcprrsResponseStatus = lens _ddcprrsResponseStatus (\s a -> s {_ddcprrsResponseStatus = a})

instance NFData DescribeDBClusterParametersResponse
