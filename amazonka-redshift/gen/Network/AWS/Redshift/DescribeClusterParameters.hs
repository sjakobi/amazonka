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
-- Module      : Network.AWS.Redshift.DescribeClusterParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a detailed list of parameters contained within the specified Amazon Redshift parameter group. For each parameter the response includes information such as parameter name, description, data type, value, whether the parameter value is modifiable, and so on.
--
--
-- You can specify /source/ filter to retrieve parameters of only specific type. For example, to retrieve parameters that were modified by a user action such as from 'ModifyClusterParameterGroup' , you can specify /source/ equal to /user/ .
--
-- For more information about parameters and parameter groups, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html Amazon Redshift Parameter Groups> in the /Amazon Redshift Cluster Management Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeClusterParameters
  ( -- * Creating a Request
    describeClusterParameters,
    DescribeClusterParameters,

    -- * Request Lenses
    dSource,
    dMarker,
    dMaxRecords,
    dParameterGroupName,

    -- * Destructuring the Response
    describeClusterParametersResponse,
    DescribeClusterParametersResponse,

    -- * Response Lenses
    dcprrsParameters,
    dcprrsMarker,
    dcprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeClusterParameters' smart constructor.
data DescribeClusterParameters = DescribeClusterParameters'
  { _dSource ::
      !(Maybe Text),
    _dMarker ::
      !(Maybe Text),
    _dMaxRecords ::
      !(Maybe Int),
    _dParameterGroupName ::
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

-- | Creates a value of 'DescribeClusterParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSource' - The parameter types to return. Specify @user@ to show parameters that are different form the default. Similarly, specify @engine-default@ to show parameters that are the same as the default parameter group.  Default: All parameter types returned. Valid Values: @user@ | @engine-default@
--
-- * 'dMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeClusterParameters' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- * 'dMaxRecords' - The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
--
-- * 'dParameterGroupName' - The name of a cluster parameter group for which to return details.
describeClusterParameters ::
  -- | 'dParameterGroupName'
  Text ->
  DescribeClusterParameters
describeClusterParameters pParameterGroupName_ =
  DescribeClusterParameters'
    { _dSource = Nothing,
      _dMarker = Nothing,
      _dMaxRecords = Nothing,
      _dParameterGroupName = pParameterGroupName_
    }

-- | The parameter types to return. Specify @user@ to show parameters that are different form the default. Similarly, specify @engine-default@ to show parameters that are the same as the default parameter group.  Default: All parameter types returned. Valid Values: @user@ | @engine-default@
dSource :: Lens' DescribeClusterParameters (Maybe Text)
dSource = lens _dSource (\s a -> s {_dSource = a})

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeClusterParameters' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
dMarker :: Lens' DescribeClusterParameters (Maybe Text)
dMarker = lens _dMarker (\s a -> s {_dMarker = a})

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
dMaxRecords :: Lens' DescribeClusterParameters (Maybe Int)
dMaxRecords = lens _dMaxRecords (\s a -> s {_dMaxRecords = a})

-- | The name of a cluster parameter group for which to return details.
dParameterGroupName :: Lens' DescribeClusterParameters Text
dParameterGroupName = lens _dParameterGroupName (\s a -> s {_dParameterGroupName = a})

instance AWSPager DescribeClusterParameters where
  page rq rs
    | stop (rs ^. dcprrsMarker) = Nothing
    | stop (rs ^. dcprrsParameters) = Nothing
    | otherwise =
      Just $ rq & dMarker .~ rs ^. dcprrsMarker

instance AWSRequest DescribeClusterParameters where
  type
    Rs DescribeClusterParameters =
      DescribeClusterParametersResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeClusterParametersResult"
      ( \s h x ->
          DescribeClusterParametersResponse'
            <$> ( x .@? "Parameters" .!@ mempty
                    >>= may (parseXMLList "Parameter")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeClusterParameters

instance NFData DescribeClusterParameters

instance ToHeaders DescribeClusterParameters where
  toHeaders = const mempty

instance ToPath DescribeClusterParameters where
  toPath = const "/"

instance ToQuery DescribeClusterParameters where
  toQuery DescribeClusterParameters' {..} =
    mconcat
      [ "Action"
          =: ("DescribeClusterParameters" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "Source" =: _dSource,
        "Marker" =: _dMarker,
        "MaxRecords" =: _dMaxRecords,
        "ParameterGroupName" =: _dParameterGroupName
      ]

-- | Contains the output from the 'DescribeClusterParameters' action.
--
--
--
-- /See:/ 'describeClusterParametersResponse' smart constructor.
data DescribeClusterParametersResponse = DescribeClusterParametersResponse'
  { _dcprrsParameters ::
      !( Maybe
           [Parameter]
       ),
    _dcprrsMarker ::
      !( Maybe
           Text
       ),
    _dcprrsResponseStatus ::
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

-- | Creates a value of 'DescribeClusterParametersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcprrsParameters' - A list of 'Parameter' instances. Each instance lists the parameters of one cluster parameter group.
--
-- * 'dcprrsMarker' - A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
--
-- * 'dcprrsResponseStatus' - -- | The response status code.
describeClusterParametersResponse ::
  -- | 'dcprrsResponseStatus'
  Int ->
  DescribeClusterParametersResponse
describeClusterParametersResponse pResponseStatus_ =
  DescribeClusterParametersResponse'
    { _dcprrsParameters =
        Nothing,
      _dcprrsMarker = Nothing,
      _dcprrsResponseStatus = pResponseStatus_
    }

-- | A list of 'Parameter' instances. Each instance lists the parameters of one cluster parameter group.
dcprrsParameters :: Lens' DescribeClusterParametersResponse [Parameter]
dcprrsParameters = lens _dcprrsParameters (\s a -> s {_dcprrsParameters = a}) . _Default . _Coerce

-- | A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
dcprrsMarker :: Lens' DescribeClusterParametersResponse (Maybe Text)
dcprrsMarker = lens _dcprrsMarker (\s a -> s {_dcprrsMarker = a})

-- | -- | The response status code.
dcprrsResponseStatus :: Lens' DescribeClusterParametersResponse Int
dcprrsResponseStatus = lens _dcprrsResponseStatus (\s a -> s {_dcprrsResponseStatus = a})

instance NFData DescribeClusterParametersResponse
