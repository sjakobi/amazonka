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
-- Module      : Network.AWS.RDS.DescribeDBParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the detailed parameter list for a particular DB parameter group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBParameters
  ( -- * Creating a Request
    describeDBParameters,
    DescribeDBParameters,

    -- * Request Lenses
    ddbpSource,
    ddbpFilters,
    ddbpMarker,
    ddbpMaxRecords,
    ddbpDBParameterGroupName,

    -- * Destructuring the Response
    describeDBParametersResponse,
    DescribeDBParametersResponse,

    -- * Response Lenses
    ddprrsParameters,
    ddprrsMarker,
    ddprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDBParameters' smart constructor.
data DescribeDBParameters = DescribeDBParameters'
  { _ddbpSource ::
      !(Maybe Text),
    _ddbpFilters ::
      !(Maybe [Filter]),
    _ddbpMarker :: !(Maybe Text),
    _ddbpMaxRecords ::
      !(Maybe Int),
    _ddbpDBParameterGroupName ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDBParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbpSource' - The parameter types to return. Default: All parameter types returned Valid Values: @user | system | engine-default@
--
-- * 'ddbpFilters' - This parameter isn't currently supported.
--
-- * 'ddbpMarker' - An optional pagination token provided by a previous @DescribeDBParameters@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddbpMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
--
-- * 'ddbpDBParameterGroupName' - The name of a specific DB parameter group to return details for. Constraints:     * If supplied, must match the name of an existing DBParameterGroup.
describeDBParameters ::
  -- | 'ddbpDBParameterGroupName'
  Text ->
  DescribeDBParameters
describeDBParameters pDBParameterGroupName_ =
  DescribeDBParameters'
    { _ddbpSource = Nothing,
      _ddbpFilters = Nothing,
      _ddbpMarker = Nothing,
      _ddbpMaxRecords = Nothing,
      _ddbpDBParameterGroupName = pDBParameterGroupName_
    }

-- | The parameter types to return. Default: All parameter types returned Valid Values: @user | system | engine-default@
ddbpSource :: Lens' DescribeDBParameters (Maybe Text)
ddbpSource = lens _ddbpSource (\s a -> s {_ddbpSource = a})

-- | This parameter isn't currently supported.
ddbpFilters :: Lens' DescribeDBParameters [Filter]
ddbpFilters = lens _ddbpFilters (\s a -> s {_ddbpFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeDBParameters@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddbpMarker :: Lens' DescribeDBParameters (Maybe Text)
ddbpMarker = lens _ddbpMarker (\s a -> s {_ddbpMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
ddbpMaxRecords :: Lens' DescribeDBParameters (Maybe Int)
ddbpMaxRecords = lens _ddbpMaxRecords (\s a -> s {_ddbpMaxRecords = a})

-- | The name of a specific DB parameter group to return details for. Constraints:     * If supplied, must match the name of an existing DBParameterGroup.
ddbpDBParameterGroupName :: Lens' DescribeDBParameters Text
ddbpDBParameterGroupName = lens _ddbpDBParameterGroupName (\s a -> s {_ddbpDBParameterGroupName = a})

instance AWSPager DescribeDBParameters where
  page rq rs
    | stop (rs ^. ddprrsMarker) = Nothing
    | stop (rs ^. ddprrsParameters) = Nothing
    | otherwise =
      Just $ rq & ddbpMarker .~ rs ^. ddprrsMarker

instance AWSRequest DescribeDBParameters where
  type
    Rs DescribeDBParameters =
      DescribeDBParametersResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBParametersResult"
      ( \s h x ->
          DescribeDBParametersResponse'
            <$> ( x .@? "Parameters" .!@ mempty
                    >>= may (parseXMLList "Parameter")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBParameters

instance NFData DescribeDBParameters

instance ToHeaders DescribeDBParameters where
  toHeaders = const mempty

instance ToPath DescribeDBParameters where
  toPath = const "/"

instance ToQuery DescribeDBParameters where
  toQuery DescribeDBParameters' {..} =
    mconcat
      [ "Action" =: ("DescribeDBParameters" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Source" =: _ddbpSource,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddbpFilters),
        "Marker" =: _ddbpMarker,
        "MaxRecords" =: _ddbpMaxRecords,
        "DBParameterGroupName" =: _ddbpDBParameterGroupName
      ]

-- | Contains the result of a successful invocation of the @DescribeDBParameters@ action.
--
--
--
-- /See:/ 'describeDBParametersResponse' smart constructor.
data DescribeDBParametersResponse = DescribeDBParametersResponse'
  { _ddprrsParameters ::
      !( Maybe
           [Parameter]
       ),
    _ddprrsMarker ::
      !(Maybe Text),
    _ddprrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBParametersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddprrsParameters' - A list of @Parameter@ values.
--
-- * 'ddprrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddprrsResponseStatus' - -- | The response status code.
describeDBParametersResponse ::
  -- | 'ddprrsResponseStatus'
  Int ->
  DescribeDBParametersResponse
describeDBParametersResponse pResponseStatus_ =
  DescribeDBParametersResponse'
    { _ddprrsParameters =
        Nothing,
      _ddprrsMarker = Nothing,
      _ddprrsResponseStatus = pResponseStatus_
    }

-- | A list of @Parameter@ values.
ddprrsParameters :: Lens' DescribeDBParametersResponse [Parameter]
ddprrsParameters = lens _ddprrsParameters (\s a -> s {_ddprrsParameters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddprrsMarker :: Lens' DescribeDBParametersResponse (Maybe Text)
ddprrsMarker = lens _ddprrsMarker (\s a -> s {_ddprrsMarker = a})

-- | -- | The response status code.
ddprrsResponseStatus :: Lens' DescribeDBParametersResponse Int
ddprrsResponseStatus = lens _ddprrsResponseStatus (\s a -> s {_ddprrsResponseStatus = a})

instance NFData DescribeDBParametersResponse
