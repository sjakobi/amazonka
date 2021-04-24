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
-- Module      : Network.AWS.ElastiCache.DescribeSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about cluster or replication group snapshots. By default, @DescribeSnapshots@ lists all of your snapshots; it can optionally describe a single snapshot, or just the snapshots associated with a particular cache cluster.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeSnapshots
  ( -- * Creating a Request
    describeSnapshots,
    DescribeSnapshots,

    -- * Request Lenses
    dssReplicationGroupId,
    dssCacheClusterId,
    dssSnapshotSource,
    dssShowNodeGroupConfig,
    dssSnapshotName,
    dssMarker,
    dssMaxRecords,

    -- * Destructuring the Response
    describeSnapshotsResponse,
    DescribeSnapshotsResponse,

    -- * Response Lenses
    dsrrsSnapshots,
    dsrrsMarker,
    dsrrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DescribeSnapshotsMessage@ operation.
--
--
--
-- /See:/ 'describeSnapshots' smart constructor.
data DescribeSnapshots = DescribeSnapshots'
  { _dssReplicationGroupId ::
      !(Maybe Text),
    _dssCacheClusterId :: !(Maybe Text),
    _dssSnapshotSource :: !(Maybe Text),
    _dssShowNodeGroupConfig ::
      !(Maybe Bool),
    _dssSnapshotName :: !(Maybe Text),
    _dssMarker :: !(Maybe Text),
    _dssMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssReplicationGroupId' - A user-supplied replication group identifier. If this parameter is specified, only snapshots associated with that specific replication group are described.
--
-- * 'dssCacheClusterId' - A user-supplied cluster identifier. If this parameter is specified, only snapshots associated with that specific cluster are described.
--
-- * 'dssSnapshotSource' - If set to @system@ , the output shows snapshots that were automatically created by ElastiCache. If set to @user@ the output shows snapshots that were manually created. If omitted, the output shows both automatically and manually created snapshots.
--
-- * 'dssShowNodeGroupConfig' - A Boolean value which if true, the node group (shard) configuration is included in the snapshot description.
--
-- * 'dssSnapshotName' - A user-supplied name of the snapshot. If this parameter is specified, only this snapshot are described.
--
-- * 'dssMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dssMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 50 Constraints: minimum 20; maximum 50.
describeSnapshots ::
  DescribeSnapshots
describeSnapshots =
  DescribeSnapshots'
    { _dssReplicationGroupId =
        Nothing,
      _dssCacheClusterId = Nothing,
      _dssSnapshotSource = Nothing,
      _dssShowNodeGroupConfig = Nothing,
      _dssSnapshotName = Nothing,
      _dssMarker = Nothing,
      _dssMaxRecords = Nothing
    }

-- | A user-supplied replication group identifier. If this parameter is specified, only snapshots associated with that specific replication group are described.
dssReplicationGroupId :: Lens' DescribeSnapshots (Maybe Text)
dssReplicationGroupId = lens _dssReplicationGroupId (\s a -> s {_dssReplicationGroupId = a})

-- | A user-supplied cluster identifier. If this parameter is specified, only snapshots associated with that specific cluster are described.
dssCacheClusterId :: Lens' DescribeSnapshots (Maybe Text)
dssCacheClusterId = lens _dssCacheClusterId (\s a -> s {_dssCacheClusterId = a})

-- | If set to @system@ , the output shows snapshots that were automatically created by ElastiCache. If set to @user@ the output shows snapshots that were manually created. If omitted, the output shows both automatically and manually created snapshots.
dssSnapshotSource :: Lens' DescribeSnapshots (Maybe Text)
dssSnapshotSource = lens _dssSnapshotSource (\s a -> s {_dssSnapshotSource = a})

-- | A Boolean value which if true, the node group (shard) configuration is included in the snapshot description.
dssShowNodeGroupConfig :: Lens' DescribeSnapshots (Maybe Bool)
dssShowNodeGroupConfig = lens _dssShowNodeGroupConfig (\s a -> s {_dssShowNodeGroupConfig = a})

-- | A user-supplied name of the snapshot. If this parameter is specified, only this snapshot are described.
dssSnapshotName :: Lens' DescribeSnapshots (Maybe Text)
dssSnapshotName = lens _dssSnapshotName (\s a -> s {_dssSnapshotName = a})

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dssMarker :: Lens' DescribeSnapshots (Maybe Text)
dssMarker = lens _dssMarker (\s a -> s {_dssMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 50 Constraints: minimum 20; maximum 50.
dssMaxRecords :: Lens' DescribeSnapshots (Maybe Int)
dssMaxRecords = lens _dssMaxRecords (\s a -> s {_dssMaxRecords = a})

instance AWSPager DescribeSnapshots where
  page rq rs
    | stop (rs ^. dsrrsMarker) = Nothing
    | stop (rs ^. dsrrsSnapshots) = Nothing
    | otherwise =
      Just $ rq & dssMarker .~ rs ^. dsrrsMarker

instance AWSRequest DescribeSnapshots where
  type Rs DescribeSnapshots = DescribeSnapshotsResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DescribeSnapshotsResult"
      ( \s h x ->
          DescribeSnapshotsResponse'
            <$> ( x .@? "Snapshots" .!@ mempty
                    >>= may (parseXMLList "Snapshot")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSnapshots

instance NFData DescribeSnapshots

instance ToHeaders DescribeSnapshots where
  toHeaders = const mempty

instance ToPath DescribeSnapshots where
  toPath = const "/"

instance ToQuery DescribeSnapshots where
  toQuery DescribeSnapshots' {..} =
    mconcat
      [ "Action" =: ("DescribeSnapshots" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "ReplicationGroupId" =: _dssReplicationGroupId,
        "CacheClusterId" =: _dssCacheClusterId,
        "SnapshotSource" =: _dssSnapshotSource,
        "ShowNodeGroupConfig" =: _dssShowNodeGroupConfig,
        "SnapshotName" =: _dssSnapshotName,
        "Marker" =: _dssMarker,
        "MaxRecords" =: _dssMaxRecords
      ]

-- | Represents the output of a @DescribeSnapshots@ operation.
--
--
--
-- /See:/ 'describeSnapshotsResponse' smart constructor.
data DescribeSnapshotsResponse = DescribeSnapshotsResponse'
  { _dsrrsSnapshots ::
      !(Maybe [Snapshot]),
    _dsrrsMarker ::
      !(Maybe Text),
    _dsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsSnapshots' - A list of snapshots. Each item in the list contains detailed information about one snapshot.
--
-- * 'dsrrsMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
describeSnapshotsResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DescribeSnapshotsResponse
describeSnapshotsResponse pResponseStatus_ =
  DescribeSnapshotsResponse'
    { _dsrrsSnapshots =
        Nothing,
      _dsrrsMarker = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | A list of snapshots. Each item in the list contains detailed information about one snapshot.
dsrrsSnapshots :: Lens' DescribeSnapshotsResponse [Snapshot]
dsrrsSnapshots = lens _dsrrsSnapshots (\s a -> s {_dsrrsSnapshots = a}) . _Default . _Coerce

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dsrrsMarker :: Lens' DescribeSnapshotsResponse (Maybe Text)
dsrrsMarker = lens _dsrrsMarker (\s a -> s {_dsrrsMarker = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DescribeSnapshotsResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DescribeSnapshotsResponse
