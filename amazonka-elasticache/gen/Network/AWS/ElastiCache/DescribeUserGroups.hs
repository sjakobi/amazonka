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
-- Module      : Network.AWS.ElastiCache.DescribeUserGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of user groups.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeUserGroups
  ( -- * Creating a Request
    describeUserGroups,
    DescribeUserGroups,

    -- * Request Lenses
    dugsUserGroupId,
    dugsMarker,
    dugsMaxRecords,

    -- * Destructuring the Response
    describeUserGroupsResponse,
    DescribeUserGroupsResponse,

    -- * Response Lenses
    dugrrsUserGroups,
    dugrrsMarker,
    dugrrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeUserGroups' smart constructor.
data DescribeUserGroups = DescribeUserGroups'
  { _dugsUserGroupId ::
      !(Maybe Text),
    _dugsMarker :: !(Maybe Text),
    _dugsMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeUserGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dugsUserGroupId' - The ID of the user group.
--
-- * 'dugsMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. >
--
-- * 'dugsMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved.
describeUserGroups ::
  DescribeUserGroups
describeUserGroups =
  DescribeUserGroups'
    { _dugsUserGroupId = Nothing,
      _dugsMarker = Nothing,
      _dugsMaxRecords = Nothing
    }

-- | The ID of the user group.
dugsUserGroupId :: Lens' DescribeUserGroups (Maybe Text)
dugsUserGroupId = lens _dugsUserGroupId (\s a -> s {_dugsUserGroupId = a})

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. >
dugsMarker :: Lens' DescribeUserGroups (Maybe Text)
dugsMarker = lens _dugsMarker (\s a -> s {_dugsMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved.
dugsMaxRecords :: Lens' DescribeUserGroups (Maybe Int)
dugsMaxRecords = lens _dugsMaxRecords (\s a -> s {_dugsMaxRecords = a})

instance AWSPager DescribeUserGroups where
  page rq rs
    | stop (rs ^. dugrrsMarker) = Nothing
    | stop (rs ^. dugrrsUserGroups) = Nothing
    | otherwise =
      Just $ rq & dugsMarker .~ rs ^. dugrrsMarker

instance AWSRequest DescribeUserGroups where
  type
    Rs DescribeUserGroups =
      DescribeUserGroupsResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DescribeUserGroupsResult"
      ( \s h x ->
          DescribeUserGroupsResponse'
            <$> ( x .@? "UserGroups" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeUserGroups

instance NFData DescribeUserGroups

instance ToHeaders DescribeUserGroups where
  toHeaders = const mempty

instance ToPath DescribeUserGroups where
  toPath = const "/"

instance ToQuery DescribeUserGroups where
  toQuery DescribeUserGroups' {..} =
    mconcat
      [ "Action" =: ("DescribeUserGroups" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "UserGroupId" =: _dugsUserGroupId,
        "Marker" =: _dugsMarker,
        "MaxRecords" =: _dugsMaxRecords
      ]

-- | /See:/ 'describeUserGroupsResponse' smart constructor.
data DescribeUserGroupsResponse = DescribeUserGroupsResponse'
  { _dugrrsUserGroups ::
      !( Maybe
           [UserGroup]
       ),
    _dugrrsMarker ::
      !(Maybe Text),
    _dugrrsResponseStatus ::
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

-- | Creates a value of 'DescribeUserGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dugrrsUserGroups' - Returns a list of user groups.
--
-- * 'dugrrsMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. >
--
-- * 'dugrrsResponseStatus' - -- | The response status code.
describeUserGroupsResponse ::
  -- | 'dugrrsResponseStatus'
  Int ->
  DescribeUserGroupsResponse
describeUserGroupsResponse pResponseStatus_ =
  DescribeUserGroupsResponse'
    { _dugrrsUserGroups =
        Nothing,
      _dugrrsMarker = Nothing,
      _dugrrsResponseStatus = pResponseStatus_
    }

-- | Returns a list of user groups.
dugrrsUserGroups :: Lens' DescribeUserGroupsResponse [UserGroup]
dugrrsUserGroups = lens _dugrrsUserGroups (\s a -> s {_dugrrsUserGroups = a}) . _Default . _Coerce

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. >
dugrrsMarker :: Lens' DescribeUserGroupsResponse (Maybe Text)
dugrrsMarker = lens _dugrrsMarker (\s a -> s {_dugrrsMarker = a})

-- | -- | The response status code.
dugrrsResponseStatus :: Lens' DescribeUserGroupsResponse Int
dugrrsResponseStatus = lens _dugrrsResponseStatus (\s a -> s {_dugrrsResponseStatus = a})

instance NFData DescribeUserGroupsResponse
