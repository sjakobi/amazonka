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
-- Module      : Network.AWS.ElastiCache.DescribeGlobalReplicationGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a particular global replication group. If no identifier is specified, returns information about all Global Datastores.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeGlobalReplicationGroups
  ( -- * Creating a Request
    describeGlobalReplicationGroups,
    DescribeGlobalReplicationGroups,

    -- * Request Lenses
    dgrgGlobalReplicationGroupId,
    dgrgShowMemberInfo,
    dgrgMarker,
    dgrgMaxRecords,

    -- * Destructuring the Response
    describeGlobalReplicationGroupsResponse,
    DescribeGlobalReplicationGroupsResponse,

    -- * Response Lenses
    dgrgrgrsGlobalReplicationGroups,
    dgrgrgrsMarker,
    dgrgrgrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeGlobalReplicationGroups' smart constructor.
data DescribeGlobalReplicationGroups = DescribeGlobalReplicationGroups'
  { _dgrgGlobalReplicationGroupId ::
      !( Maybe
           Text
       ),
    _dgrgShowMemberInfo ::
      !( Maybe
           Bool
       ),
    _dgrgMarker ::
      !( Maybe
           Text
       ),
    _dgrgMaxRecords ::
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

-- | Creates a value of 'DescribeGlobalReplicationGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgrgGlobalReplicationGroupId' - The name of the Global Datastore
--
-- * 'dgrgShowMemberInfo' - Returns the list of members that comprise the Global Datastore.
--
-- * 'dgrgMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dgrgMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved.
describeGlobalReplicationGroups ::
  DescribeGlobalReplicationGroups
describeGlobalReplicationGroups =
  DescribeGlobalReplicationGroups'
    { _dgrgGlobalReplicationGroupId =
        Nothing,
      _dgrgShowMemberInfo = Nothing,
      _dgrgMarker = Nothing,
      _dgrgMaxRecords = Nothing
    }

-- | The name of the Global Datastore
dgrgGlobalReplicationGroupId :: Lens' DescribeGlobalReplicationGroups (Maybe Text)
dgrgGlobalReplicationGroupId = lens _dgrgGlobalReplicationGroupId (\s a -> s {_dgrgGlobalReplicationGroupId = a})

-- | Returns the list of members that comprise the Global Datastore.
dgrgShowMemberInfo :: Lens' DescribeGlobalReplicationGroups (Maybe Bool)
dgrgShowMemberInfo = lens _dgrgShowMemberInfo (\s a -> s {_dgrgShowMemberInfo = a})

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dgrgMarker :: Lens' DescribeGlobalReplicationGroups (Maybe Text)
dgrgMarker = lens _dgrgMarker (\s a -> s {_dgrgMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved.
dgrgMaxRecords :: Lens' DescribeGlobalReplicationGroups (Maybe Int)
dgrgMaxRecords = lens _dgrgMaxRecords (\s a -> s {_dgrgMaxRecords = a})

instance AWSPager DescribeGlobalReplicationGroups where
  page rq rs
    | stop (rs ^. dgrgrgrsMarker) = Nothing
    | stop (rs ^. dgrgrgrsGlobalReplicationGroups) =
      Nothing
    | otherwise =
      Just $ rq & dgrgMarker .~ rs ^. dgrgrgrsMarker

instance AWSRequest DescribeGlobalReplicationGroups where
  type
    Rs DescribeGlobalReplicationGroups =
      DescribeGlobalReplicationGroupsResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DescribeGlobalReplicationGroupsResult"
      ( \s h x ->
          DescribeGlobalReplicationGroupsResponse'
            <$> ( x .@? "GlobalReplicationGroups" .!@ mempty
                    >>= may (parseXMLList "GlobalReplicationGroup")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeGlobalReplicationGroups

instance NFData DescribeGlobalReplicationGroups

instance ToHeaders DescribeGlobalReplicationGroups where
  toHeaders = const mempty

instance ToPath DescribeGlobalReplicationGroups where
  toPath = const "/"

instance ToQuery DescribeGlobalReplicationGroups where
  toQuery DescribeGlobalReplicationGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeGlobalReplicationGroups" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "GlobalReplicationGroupId"
          =: _dgrgGlobalReplicationGroupId,
        "ShowMemberInfo" =: _dgrgShowMemberInfo,
        "Marker" =: _dgrgMarker,
        "MaxRecords" =: _dgrgMaxRecords
      ]

-- | /See:/ 'describeGlobalReplicationGroupsResponse' smart constructor.
data DescribeGlobalReplicationGroupsResponse = DescribeGlobalReplicationGroupsResponse'
  { _dgrgrgrsGlobalReplicationGroups ::
      !( Maybe
           [GlobalReplicationGroup]
       ),
    _dgrgrgrsMarker ::
      !( Maybe
           Text
       ),
    _dgrgrgrsResponseStatus ::
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

-- | Creates a value of 'DescribeGlobalReplicationGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgrgrgrsGlobalReplicationGroups' - Indicates the slot configuration and global identifier for each slice group.
--
-- * 'dgrgrgrsMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. >
--
-- * 'dgrgrgrsResponseStatus' - -- | The response status code.
describeGlobalReplicationGroupsResponse ::
  -- | 'dgrgrgrsResponseStatus'
  Int ->
  DescribeGlobalReplicationGroupsResponse
describeGlobalReplicationGroupsResponse
  pResponseStatus_ =
    DescribeGlobalReplicationGroupsResponse'
      { _dgrgrgrsGlobalReplicationGroups =
          Nothing,
        _dgrgrgrsMarker = Nothing,
        _dgrgrgrsResponseStatus =
          pResponseStatus_
      }

-- | Indicates the slot configuration and global identifier for each slice group.
dgrgrgrsGlobalReplicationGroups :: Lens' DescribeGlobalReplicationGroupsResponse [GlobalReplicationGroup]
dgrgrgrsGlobalReplicationGroups = lens _dgrgrgrsGlobalReplicationGroups (\s a -> s {_dgrgrgrsGlobalReplicationGroups = a}) . _Default . _Coerce

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. >
dgrgrgrsMarker :: Lens' DescribeGlobalReplicationGroupsResponse (Maybe Text)
dgrgrgrsMarker = lens _dgrgrgrsMarker (\s a -> s {_dgrgrgrsMarker = a})

-- | -- | The response status code.
dgrgrgrsResponseStatus :: Lens' DescribeGlobalReplicationGroupsResponse Int
dgrgrgrsResponseStatus = lens _dgrgrgrsResponseStatus (\s a -> s {_dgrgrgrsResponseStatus = a})

instance
  NFData
    DescribeGlobalReplicationGroupsResponse
