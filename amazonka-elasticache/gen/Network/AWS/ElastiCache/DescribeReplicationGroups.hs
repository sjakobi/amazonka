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
-- Module      : Network.AWS.ElastiCache.DescribeReplicationGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a particular replication group. If no identifier is specified, @DescribeReplicationGroups@ returns information about all replication groups.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeReplicationGroups
  ( -- * Creating a Request
    describeReplicationGroups,
    DescribeReplicationGroups,

    -- * Request Lenses
    drgsReplicationGroupId,
    drgsMarker,
    drgsMaxRecords,

    -- * Destructuring the Response
    describeReplicationGroupsResponse,
    DescribeReplicationGroupsResponse,

    -- * Response Lenses
    drsReplicationGroups,
    drsMarker,
    drsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DescribeReplicationGroups@ operation.
--
--
--
-- /See:/ 'describeReplicationGroups' smart constructor.
data DescribeReplicationGroups = DescribeReplicationGroups'
  { _drgsReplicationGroupId ::
      !(Maybe Text),
    _drgsMarker ::
      !(Maybe Text),
    _drgsMaxRecords ::
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

-- | Creates a value of 'DescribeReplicationGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drgsReplicationGroupId' - The identifier for the replication group to be described. This parameter is not case sensitive. If you do not specify this parameter, information about all replication groups is returned.
--
-- * 'drgsMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'drgsMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
describeReplicationGroups ::
  DescribeReplicationGroups
describeReplicationGroups =
  DescribeReplicationGroups'
    { _drgsReplicationGroupId =
        Nothing,
      _drgsMarker = Nothing,
      _drgsMaxRecords = Nothing
    }

-- | The identifier for the replication group to be described. This parameter is not case sensitive. If you do not specify this parameter, information about all replication groups is returned.
drgsReplicationGroupId :: Lens' DescribeReplicationGroups (Maybe Text)
drgsReplicationGroupId = lens _drgsReplicationGroupId (\s a -> s {_drgsReplicationGroupId = a})

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
drgsMarker :: Lens' DescribeReplicationGroups (Maybe Text)
drgsMarker = lens _drgsMarker (\s a -> s {_drgsMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
drgsMaxRecords :: Lens' DescribeReplicationGroups (Maybe Int)
drgsMaxRecords = lens _drgsMaxRecords (\s a -> s {_drgsMaxRecords = a})

instance AWSPager DescribeReplicationGroups where
  page rq rs
    | stop (rs ^. drsMarker) = Nothing
    | stop (rs ^. drsReplicationGroups) = Nothing
    | otherwise =
      Just $ rq & drgsMarker .~ rs ^. drsMarker

instance AWSRequest DescribeReplicationGroups where
  type
    Rs DescribeReplicationGroups =
      DescribeReplicationGroupsResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DescribeReplicationGroupsResult"
      ( \s h x ->
          DescribeReplicationGroupsResponse'
            <$> ( x .@? "ReplicationGroups" .!@ mempty
                    >>= may (parseXMLList "ReplicationGroup")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReplicationGroups

instance NFData DescribeReplicationGroups

instance ToHeaders DescribeReplicationGroups where
  toHeaders = const mempty

instance ToPath DescribeReplicationGroups where
  toPath = const "/"

instance ToQuery DescribeReplicationGroups where
  toQuery DescribeReplicationGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeReplicationGroups" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "ReplicationGroupId" =: _drgsReplicationGroupId,
        "Marker" =: _drgsMarker,
        "MaxRecords" =: _drgsMaxRecords
      ]

-- | Represents the output of a @DescribeReplicationGroups@ operation.
--
--
--
-- /See:/ 'describeReplicationGroupsResponse' smart constructor.
data DescribeReplicationGroupsResponse = DescribeReplicationGroupsResponse'
  { _drsReplicationGroups ::
      !( Maybe
           [ReplicationGroup]
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
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeReplicationGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsReplicationGroups' - A list of replication groups. Each item in the list contains detailed information about one replication group.
--
-- * 'drsMarker' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeReplicationGroupsResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeReplicationGroupsResponse
describeReplicationGroupsResponse pResponseStatus_ =
  DescribeReplicationGroupsResponse'
    { _drsReplicationGroups =
        Nothing,
      _drsMarker = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | A list of replication groups. Each item in the list contains detailed information about one replication group.
drsReplicationGroups :: Lens' DescribeReplicationGroupsResponse [ReplicationGroup]
drsReplicationGroups = lens _drsReplicationGroups (\s a -> s {_drsReplicationGroups = a}) . _Default . _Coerce

-- | Provides an identifier to allow retrieval of paginated results.
drsMarker :: Lens' DescribeReplicationGroupsResponse (Maybe Text)
drsMarker = lens _drsMarker (\s a -> s {_drsMarker = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeReplicationGroupsResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeReplicationGroupsResponse
