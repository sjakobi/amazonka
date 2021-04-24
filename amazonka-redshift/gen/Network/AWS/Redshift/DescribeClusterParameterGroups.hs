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
-- Module      : Network.AWS.Redshift.DescribeClusterParameterGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of Amazon Redshift parameter groups, including parameter groups you created and the default parameter group. For each parameter group, the response includes the parameter group name, description, and parameter group family name. You can optionally specify a name to retrieve the description of a specific parameter group.
--
--
-- For more information about parameters and parameter groups, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html Amazon Redshift Parameter Groups> in the /Amazon Redshift Cluster Management Guide/ .
--
-- If you specify both tag keys and tag values in the same request, Amazon Redshift returns all parameter groups that match any combination of the specified keys and values. For example, if you have @owner@ and @environment@ for tag keys, and @admin@ and @test@ for tag values, all parameter groups that have any combination of those values are returned.
--
-- If both tag keys and values are omitted from the request, parameter groups are returned regardless of whether they have tag keys or values associated with them.
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeClusterParameterGroups
  ( -- * Creating a Request
    describeClusterParameterGroups,
    DescribeClusterParameterGroups,

    -- * Request Lenses
    dcpgsTagKeys,
    dcpgsParameterGroupName,
    dcpgsTagValues,
    dcpgsMarker,
    dcpgsMaxRecords,

    -- * Destructuring the Response
    describeClusterParameterGroupsResponse,
    DescribeClusterParameterGroupsResponse,

    -- * Response Lenses
    dcpgrrsParameterGroups,
    dcpgrrsMarker,
    dcpgrrsResponseStatus,
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
-- /See:/ 'describeClusterParameterGroups' smart constructor.
data DescribeClusterParameterGroups = DescribeClusterParameterGroups'
  { _dcpgsTagKeys ::
      !( Maybe
           [Text]
       ),
    _dcpgsParameterGroupName ::
      !( Maybe
           Text
       ),
    _dcpgsTagValues ::
      !( Maybe
           [Text]
       ),
    _dcpgsMarker ::
      !( Maybe
           Text
       ),
    _dcpgsMaxRecords ::
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

-- | Creates a value of 'DescribeClusterParameterGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpgsTagKeys' - A tag key or keys for which you want to return all matching cluster parameter groups that are associated with the specified key or keys. For example, suppose that you have parameter groups that are tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag keys associated with them.
--
-- * 'dcpgsParameterGroupName' - The name of a specific parameter group for which to return details. By default, details about all parameter groups and the default parameter group are returned.
--
-- * 'dcpgsTagValues' - A tag value or values for which you want to return all matching cluster parameter groups that are associated with the specified tag value or values. For example, suppose that you have parameter groups that are tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag values associated with them.
--
-- * 'dcpgsMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeClusterParameterGroups' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- * 'dcpgsMaxRecords' - The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
describeClusterParameterGroups ::
  DescribeClusterParameterGroups
describeClusterParameterGroups =
  DescribeClusterParameterGroups'
    { _dcpgsTagKeys =
        Nothing,
      _dcpgsParameterGroupName = Nothing,
      _dcpgsTagValues = Nothing,
      _dcpgsMarker = Nothing,
      _dcpgsMaxRecords = Nothing
    }

-- | A tag key or keys for which you want to return all matching cluster parameter groups that are associated with the specified key or keys. For example, suppose that you have parameter groups that are tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag keys associated with them.
dcpgsTagKeys :: Lens' DescribeClusterParameterGroups [Text]
dcpgsTagKeys = lens _dcpgsTagKeys (\s a -> s {_dcpgsTagKeys = a}) . _Default . _Coerce

-- | The name of a specific parameter group for which to return details. By default, details about all parameter groups and the default parameter group are returned.
dcpgsParameterGroupName :: Lens' DescribeClusterParameterGroups (Maybe Text)
dcpgsParameterGroupName = lens _dcpgsParameterGroupName (\s a -> s {_dcpgsParameterGroupName = a})

-- | A tag value or values for which you want to return all matching cluster parameter groups that are associated with the specified tag value or values. For example, suppose that you have parameter groups that are tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag values associated with them.
dcpgsTagValues :: Lens' DescribeClusterParameterGroups [Text]
dcpgsTagValues = lens _dcpgsTagValues (\s a -> s {_dcpgsTagValues = a}) . _Default . _Coerce

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeClusterParameterGroups' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
dcpgsMarker :: Lens' DescribeClusterParameterGroups (Maybe Text)
dcpgsMarker = lens _dcpgsMarker (\s a -> s {_dcpgsMarker = a})

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
dcpgsMaxRecords :: Lens' DescribeClusterParameterGroups (Maybe Int)
dcpgsMaxRecords = lens _dcpgsMaxRecords (\s a -> s {_dcpgsMaxRecords = a})

instance AWSPager DescribeClusterParameterGroups where
  page rq rs
    | stop (rs ^. dcpgrrsMarker) = Nothing
    | stop (rs ^. dcpgrrsParameterGroups) = Nothing
    | otherwise =
      Just $ rq & dcpgsMarker .~ rs ^. dcpgrrsMarker

instance AWSRequest DescribeClusterParameterGroups where
  type
    Rs DescribeClusterParameterGroups =
      DescribeClusterParameterGroupsResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeClusterParameterGroupsResult"
      ( \s h x ->
          DescribeClusterParameterGroupsResponse'
            <$> ( x .@? "ParameterGroups" .!@ mempty
                    >>= may (parseXMLList "ClusterParameterGroup")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeClusterParameterGroups

instance NFData DescribeClusterParameterGroups

instance ToHeaders DescribeClusterParameterGroups where
  toHeaders = const mempty

instance ToPath DescribeClusterParameterGroups where
  toPath = const "/"

instance ToQuery DescribeClusterParameterGroups where
  toQuery DescribeClusterParameterGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeClusterParameterGroups" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "TagKeys"
          =: toQuery (toQueryList "TagKey" <$> _dcpgsTagKeys),
        "ParameterGroupName" =: _dcpgsParameterGroupName,
        "TagValues"
          =: toQuery (toQueryList "TagValue" <$> _dcpgsTagValues),
        "Marker" =: _dcpgsMarker,
        "MaxRecords" =: _dcpgsMaxRecords
      ]

-- | Contains the output from the 'DescribeClusterParameterGroups' action.
--
--
--
-- /See:/ 'describeClusterParameterGroupsResponse' smart constructor.
data DescribeClusterParameterGroupsResponse = DescribeClusterParameterGroupsResponse'
  { _dcpgrrsParameterGroups ::
      !( Maybe
           [ClusterParameterGroup]
       ),
    _dcpgrrsMarker ::
      !( Maybe
           Text
       ),
    _dcpgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeClusterParameterGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpgrrsParameterGroups' - A list of 'ClusterParameterGroup' instances. Each instance describes one cluster parameter group.
--
-- * 'dcpgrrsMarker' - A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
--
-- * 'dcpgrrsResponseStatus' - -- | The response status code.
describeClusterParameterGroupsResponse ::
  -- | 'dcpgrrsResponseStatus'
  Int ->
  DescribeClusterParameterGroupsResponse
describeClusterParameterGroupsResponse
  pResponseStatus_ =
    DescribeClusterParameterGroupsResponse'
      { _dcpgrrsParameterGroups =
          Nothing,
        _dcpgrrsMarker = Nothing,
        _dcpgrrsResponseStatus =
          pResponseStatus_
      }

-- | A list of 'ClusterParameterGroup' instances. Each instance describes one cluster parameter group.
dcpgrrsParameterGroups :: Lens' DescribeClusterParameterGroupsResponse [ClusterParameterGroup]
dcpgrrsParameterGroups = lens _dcpgrrsParameterGroups (\s a -> s {_dcpgrrsParameterGroups = a}) . _Default . _Coerce

-- | A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
dcpgrrsMarker :: Lens' DescribeClusterParameterGroupsResponse (Maybe Text)
dcpgrrsMarker = lens _dcpgrrsMarker (\s a -> s {_dcpgrrsMarker = a})

-- | -- | The response status code.
dcpgrrsResponseStatus :: Lens' DescribeClusterParameterGroupsResponse Int
dcpgrrsResponseStatus = lens _dcpgrrsResponseStatus (\s a -> s {_dcpgrrsResponseStatus = a})

instance
  NFData
    DescribeClusterParameterGroupsResponse
