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
-- Module      : Network.AWS.Redshift.DescribeClusterSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns one or more snapshot objects, which contain metadata about your cluster snapshots. By default, this operation returns information about all snapshots of all clusters that are owned by you AWS customer account. No information is returned for snapshots owned by inactive AWS customer accounts.
--
--
-- If you specify both tag keys and tag values in the same request, Amazon Redshift returns all snapshots that match any combination of the specified keys and values. For example, if you have @owner@ and @environment@ for tag keys, and @admin@ and @test@ for tag values, all snapshots that have any combination of those values are returned. Only snapshots that you own are returned in the response; shared snapshots are not returned with the tag key and tag value request parameters.
--
-- If both tag keys and values are omitted from the request, snapshots are returned regardless of whether they have tag keys or values associated with them.
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeClusterSnapshots
  ( -- * Creating a Request
    describeClusterSnapshots,
    DescribeClusterSnapshots,

    -- * Request Lenses
    dcsSnapshotIdentifier,
    dcsSortingEntities,
    dcsTagKeys,
    dcsStartTime,
    dcsEndTime,
    dcsSnapshotType,
    dcsClusterIdentifier,
    dcsOwnerAccount,
    dcsClusterExists,
    dcsTagValues,
    dcsMarker,
    dcsMaxRecords,

    -- * Destructuring the Response
    describeClusterSnapshotsResponse,
    DescribeClusterSnapshotsResponse,

    -- * Response Lenses
    dcsrrsSnapshots,
    dcsrrsMarker,
    dcsrrsResponseStatus,
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
-- /See:/ 'describeClusterSnapshots' smart constructor.
data DescribeClusterSnapshots = DescribeClusterSnapshots'
  { _dcsSnapshotIdentifier ::
      !(Maybe Text),
    _dcsSortingEntities ::
      !( Maybe
           [SnapshotSortingEntity]
       ),
    _dcsTagKeys ::
      !(Maybe [Text]),
    _dcsStartTime ::
      !(Maybe ISO8601),
    _dcsEndTime ::
      !(Maybe ISO8601),
    _dcsSnapshotType ::
      !(Maybe Text),
    _dcsClusterIdentifier ::
      !(Maybe Text),
    _dcsOwnerAccount ::
      !(Maybe Text),
    _dcsClusterExists ::
      !(Maybe Bool),
    _dcsTagValues ::
      !(Maybe [Text]),
    _dcsMarker ::
      !(Maybe Text),
    _dcsMaxRecords ::
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

-- | Creates a value of 'DescribeClusterSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsSnapshotIdentifier' - The snapshot identifier of the snapshot about which to return information.
--
-- * 'dcsSortingEntities' -
--
-- * 'dcsTagKeys' - A tag key or keys for which you want to return all matching cluster snapshots that are associated with the specified key or keys. For example, suppose that you have snapshots that are tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag keys associated with them.
--
-- * 'dcsStartTime' - A value that requests only snapshots created at or after the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: @2012-07-16T18:00:00Z@
--
-- * 'dcsEndTime' - A time value that requests only snapshots created at or before the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: @2012-07-16T18:00:00Z@
--
-- * 'dcsSnapshotType' - The type of snapshots for which you are requesting information. By default, snapshots of all types are returned. Valid Values: @automated@ | @manual@
--
-- * 'dcsClusterIdentifier' - The identifier of the cluster which generated the requested snapshots.
--
-- * 'dcsOwnerAccount' - The AWS customer account used to create or copy the snapshot. Use this field to filter the results to snapshots owned by a particular account. To describe snapshots you own, either specify your AWS customer account, or do not specify the parameter.
--
-- * 'dcsClusterExists' - A value that indicates whether to return snapshots only for an existing cluster. You can perform table-level restore only by using a snapshot of an existing cluster, that is, a cluster that has not been deleted. Values for this parameter work as follows:      * If @ClusterExists@ is set to @true@ , @ClusterIdentifier@ is required.     * If @ClusterExists@ is set to @false@ and @ClusterIdentifier@ isn't specified, all snapshots associated with deleted clusters (orphaned snapshots) are returned.      * If @ClusterExists@ is set to @false@ and @ClusterIdentifier@ is specified for a deleted cluster, snapshots associated with that cluster are returned.     * If @ClusterExists@ is set to @false@ and @ClusterIdentifier@ is specified for an existing cluster, no snapshots are returned.
--
-- * 'dcsTagValues' - A tag value or values for which you want to return all matching cluster snapshots that are associated with the specified tag value or values. For example, suppose that you have snapshots that are tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag values associated with them.
--
-- * 'dcsMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeClusterSnapshots' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- * 'dcsMaxRecords' - The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
describeClusterSnapshots ::
  DescribeClusterSnapshots
describeClusterSnapshots =
  DescribeClusterSnapshots'
    { _dcsSnapshotIdentifier =
        Nothing,
      _dcsSortingEntities = Nothing,
      _dcsTagKeys = Nothing,
      _dcsStartTime = Nothing,
      _dcsEndTime = Nothing,
      _dcsSnapshotType = Nothing,
      _dcsClusterIdentifier = Nothing,
      _dcsOwnerAccount = Nothing,
      _dcsClusterExists = Nothing,
      _dcsTagValues = Nothing,
      _dcsMarker = Nothing,
      _dcsMaxRecords = Nothing
    }

-- | The snapshot identifier of the snapshot about which to return information.
dcsSnapshotIdentifier :: Lens' DescribeClusterSnapshots (Maybe Text)
dcsSnapshotIdentifier = lens _dcsSnapshotIdentifier (\s a -> s {_dcsSnapshotIdentifier = a})

-- |
dcsSortingEntities :: Lens' DescribeClusterSnapshots [SnapshotSortingEntity]
dcsSortingEntities = lens _dcsSortingEntities (\s a -> s {_dcsSortingEntities = a}) . _Default . _Coerce

-- | A tag key or keys for which you want to return all matching cluster snapshots that are associated with the specified key or keys. For example, suppose that you have snapshots that are tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag keys associated with them.
dcsTagKeys :: Lens' DescribeClusterSnapshots [Text]
dcsTagKeys = lens _dcsTagKeys (\s a -> s {_dcsTagKeys = a}) . _Default . _Coerce

-- | A value that requests only snapshots created at or after the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: @2012-07-16T18:00:00Z@
dcsStartTime :: Lens' DescribeClusterSnapshots (Maybe UTCTime)
dcsStartTime = lens _dcsStartTime (\s a -> s {_dcsStartTime = a}) . mapping _Time

-- | A time value that requests only snapshots created at or before the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: @2012-07-16T18:00:00Z@
dcsEndTime :: Lens' DescribeClusterSnapshots (Maybe UTCTime)
dcsEndTime = lens _dcsEndTime (\s a -> s {_dcsEndTime = a}) . mapping _Time

-- | The type of snapshots for which you are requesting information. By default, snapshots of all types are returned. Valid Values: @automated@ | @manual@
dcsSnapshotType :: Lens' DescribeClusterSnapshots (Maybe Text)
dcsSnapshotType = lens _dcsSnapshotType (\s a -> s {_dcsSnapshotType = a})

-- | The identifier of the cluster which generated the requested snapshots.
dcsClusterIdentifier :: Lens' DescribeClusterSnapshots (Maybe Text)
dcsClusterIdentifier = lens _dcsClusterIdentifier (\s a -> s {_dcsClusterIdentifier = a})

-- | The AWS customer account used to create or copy the snapshot. Use this field to filter the results to snapshots owned by a particular account. To describe snapshots you own, either specify your AWS customer account, or do not specify the parameter.
dcsOwnerAccount :: Lens' DescribeClusterSnapshots (Maybe Text)
dcsOwnerAccount = lens _dcsOwnerAccount (\s a -> s {_dcsOwnerAccount = a})

-- | A value that indicates whether to return snapshots only for an existing cluster. You can perform table-level restore only by using a snapshot of an existing cluster, that is, a cluster that has not been deleted. Values for this parameter work as follows:      * If @ClusterExists@ is set to @true@ , @ClusterIdentifier@ is required.     * If @ClusterExists@ is set to @false@ and @ClusterIdentifier@ isn't specified, all snapshots associated with deleted clusters (orphaned snapshots) are returned.      * If @ClusterExists@ is set to @false@ and @ClusterIdentifier@ is specified for a deleted cluster, snapshots associated with that cluster are returned.     * If @ClusterExists@ is set to @false@ and @ClusterIdentifier@ is specified for an existing cluster, no snapshots are returned.
dcsClusterExists :: Lens' DescribeClusterSnapshots (Maybe Bool)
dcsClusterExists = lens _dcsClusterExists (\s a -> s {_dcsClusterExists = a})

-- | A tag value or values for which you want to return all matching cluster snapshots that are associated with the specified tag value or values. For example, suppose that you have snapshots that are tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag values associated with them.
dcsTagValues :: Lens' DescribeClusterSnapshots [Text]
dcsTagValues = lens _dcsTagValues (\s a -> s {_dcsTagValues = a}) . _Default . _Coerce

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeClusterSnapshots' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
dcsMarker :: Lens' DescribeClusterSnapshots (Maybe Text)
dcsMarker = lens _dcsMarker (\s a -> s {_dcsMarker = a})

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
dcsMaxRecords :: Lens' DescribeClusterSnapshots (Maybe Int)
dcsMaxRecords = lens _dcsMaxRecords (\s a -> s {_dcsMaxRecords = a})

instance AWSPager DescribeClusterSnapshots where
  page rq rs
    | stop (rs ^. dcsrrsMarker) = Nothing
    | stop (rs ^. dcsrrsSnapshots) = Nothing
    | otherwise =
      Just $ rq & dcsMarker .~ rs ^. dcsrrsMarker

instance AWSRequest DescribeClusterSnapshots where
  type
    Rs DescribeClusterSnapshots =
      DescribeClusterSnapshotsResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeClusterSnapshotsResult"
      ( \s h x ->
          DescribeClusterSnapshotsResponse'
            <$> ( x .@? "Snapshots" .!@ mempty
                    >>= may (parseXMLList "Snapshot")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeClusterSnapshots

instance NFData DescribeClusterSnapshots

instance ToHeaders DescribeClusterSnapshots where
  toHeaders = const mempty

instance ToPath DescribeClusterSnapshots where
  toPath = const "/"

instance ToQuery DescribeClusterSnapshots where
  toQuery DescribeClusterSnapshots' {..} =
    mconcat
      [ "Action"
          =: ("DescribeClusterSnapshots" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "SnapshotIdentifier" =: _dcsSnapshotIdentifier,
        "SortingEntities"
          =: toQuery
            ( toQueryList "SnapshotSortingEntity"
                <$> _dcsSortingEntities
            ),
        "TagKeys"
          =: toQuery (toQueryList "TagKey" <$> _dcsTagKeys),
        "StartTime" =: _dcsStartTime,
        "EndTime" =: _dcsEndTime,
        "SnapshotType" =: _dcsSnapshotType,
        "ClusterIdentifier" =: _dcsClusterIdentifier,
        "OwnerAccount" =: _dcsOwnerAccount,
        "ClusterExists" =: _dcsClusterExists,
        "TagValues"
          =: toQuery (toQueryList "TagValue" <$> _dcsTagValues),
        "Marker" =: _dcsMarker,
        "MaxRecords" =: _dcsMaxRecords
      ]

-- | Contains the output from the 'DescribeClusterSnapshots' action.
--
--
--
-- /See:/ 'describeClusterSnapshotsResponse' smart constructor.
data DescribeClusterSnapshotsResponse = DescribeClusterSnapshotsResponse'
  { _dcsrrsSnapshots ::
      !( Maybe
           [Snapshot]
       ),
    _dcsrrsMarker ::
      !( Maybe
           Text
       ),
    _dcsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeClusterSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsrrsSnapshots' - A list of 'Snapshot' instances.
--
-- * 'dcsrrsMarker' - A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
--
-- * 'dcsrrsResponseStatus' - -- | The response status code.
describeClusterSnapshotsResponse ::
  -- | 'dcsrrsResponseStatus'
  Int ->
  DescribeClusterSnapshotsResponse
describeClusterSnapshotsResponse pResponseStatus_ =
  DescribeClusterSnapshotsResponse'
    { _dcsrrsSnapshots =
        Nothing,
      _dcsrrsMarker = Nothing,
      _dcsrrsResponseStatus = pResponseStatus_
    }

-- | A list of 'Snapshot' instances.
dcsrrsSnapshots :: Lens' DescribeClusterSnapshotsResponse [Snapshot]
dcsrrsSnapshots = lens _dcsrrsSnapshots (\s a -> s {_dcsrrsSnapshots = a}) . _Default . _Coerce

-- | A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
dcsrrsMarker :: Lens' DescribeClusterSnapshotsResponse (Maybe Text)
dcsrrsMarker = lens _dcsrrsMarker (\s a -> s {_dcsrrsMarker = a})

-- | -- | The response status code.
dcsrrsResponseStatus :: Lens' DescribeClusterSnapshotsResponse Int
dcsrrsResponseStatus = lens _dcsrrsResponseStatus (\s a -> s {_dcsrrsResponseStatus = a})

instance NFData DescribeClusterSnapshotsResponse
