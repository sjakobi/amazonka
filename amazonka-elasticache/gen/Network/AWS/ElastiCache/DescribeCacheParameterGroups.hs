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
-- Module      : Network.AWS.ElastiCache.DescribeCacheParameterGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of cache parameter group descriptions. If a cache parameter group name is specified, the list contains only the descriptions for that group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeCacheParameterGroups
  ( -- * Creating a Request
    describeCacheParameterGroups,
    DescribeCacheParameterGroups,

    -- * Request Lenses
    dcpgsCacheParameterGroupName,
    dcpgsMarker,
    dcpgsMaxRecords,

    -- * Destructuring the Response
    describeCacheParameterGroupsResponse,
    DescribeCacheParameterGroupsResponse,

    -- * Response Lenses
    dcpgrrsCacheParameterGroups,
    dcpgrrsMarker,
    dcpgrrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DescribeCacheParameterGroups@ operation.
--
--
--
-- /See:/ 'describeCacheParameterGroups' smart constructor.
data DescribeCacheParameterGroups = DescribeCacheParameterGroups'
  { _dcpgsCacheParameterGroupName ::
      !(Maybe Text),
    _dcpgsMarker ::
      !(Maybe Text),
    _dcpgsMaxRecords ::
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

-- | Creates a value of 'DescribeCacheParameterGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpgsCacheParameterGroupName' - The name of a specific cache parameter group to return details for.
--
-- * 'dcpgsMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dcpgsMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
describeCacheParameterGroups ::
  DescribeCacheParameterGroups
describeCacheParameterGroups =
  DescribeCacheParameterGroups'
    { _dcpgsCacheParameterGroupName =
        Nothing,
      _dcpgsMarker = Nothing,
      _dcpgsMaxRecords = Nothing
    }

-- | The name of a specific cache parameter group to return details for.
dcpgsCacheParameterGroupName :: Lens' DescribeCacheParameterGroups (Maybe Text)
dcpgsCacheParameterGroupName = lens _dcpgsCacheParameterGroupName (\s a -> s {_dcpgsCacheParameterGroupName = a})

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dcpgsMarker :: Lens' DescribeCacheParameterGroups (Maybe Text)
dcpgsMarker = lens _dcpgsMarker (\s a -> s {_dcpgsMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
dcpgsMaxRecords :: Lens' DescribeCacheParameterGroups (Maybe Int)
dcpgsMaxRecords = lens _dcpgsMaxRecords (\s a -> s {_dcpgsMaxRecords = a})

instance AWSPager DescribeCacheParameterGroups where
  page rq rs
    | stop (rs ^. dcpgrrsMarker) = Nothing
    | stop (rs ^. dcpgrrsCacheParameterGroups) = Nothing
    | otherwise =
      Just $ rq & dcpgsMarker .~ rs ^. dcpgrrsMarker

instance AWSRequest DescribeCacheParameterGroups where
  type
    Rs DescribeCacheParameterGroups =
      DescribeCacheParameterGroupsResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DescribeCacheParameterGroupsResult"
      ( \s h x ->
          DescribeCacheParameterGroupsResponse'
            <$> ( x .@? "CacheParameterGroups" .!@ mempty
                    >>= may (parseXMLList "CacheParameterGroup")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCacheParameterGroups

instance NFData DescribeCacheParameterGroups

instance ToHeaders DescribeCacheParameterGroups where
  toHeaders = const mempty

instance ToPath DescribeCacheParameterGroups where
  toPath = const "/"

instance ToQuery DescribeCacheParameterGroups where
  toQuery DescribeCacheParameterGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeCacheParameterGroups" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "CacheParameterGroupName"
          =: _dcpgsCacheParameterGroupName,
        "Marker" =: _dcpgsMarker,
        "MaxRecords" =: _dcpgsMaxRecords
      ]

-- | Represents the output of a @DescribeCacheParameterGroups@ operation.
--
--
--
-- /See:/ 'describeCacheParameterGroupsResponse' smart constructor.
data DescribeCacheParameterGroupsResponse = DescribeCacheParameterGroupsResponse'
  { _dcpgrrsCacheParameterGroups ::
      !( Maybe
           [CacheParameterGroup]
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

-- | Creates a value of 'DescribeCacheParameterGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpgrrsCacheParameterGroups' - A list of cache parameter groups. Each element in the list contains detailed information about one cache parameter group.
--
-- * 'dcpgrrsMarker' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'dcpgrrsResponseStatus' - -- | The response status code.
describeCacheParameterGroupsResponse ::
  -- | 'dcpgrrsResponseStatus'
  Int ->
  DescribeCacheParameterGroupsResponse
describeCacheParameterGroupsResponse pResponseStatus_ =
  DescribeCacheParameterGroupsResponse'
    { _dcpgrrsCacheParameterGroups =
        Nothing,
      _dcpgrrsMarker = Nothing,
      _dcpgrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of cache parameter groups. Each element in the list contains detailed information about one cache parameter group.
dcpgrrsCacheParameterGroups :: Lens' DescribeCacheParameterGroupsResponse [CacheParameterGroup]
dcpgrrsCacheParameterGroups = lens _dcpgrrsCacheParameterGroups (\s a -> s {_dcpgrrsCacheParameterGroups = a}) . _Default . _Coerce

-- | Provides an identifier to allow retrieval of paginated results.
dcpgrrsMarker :: Lens' DescribeCacheParameterGroupsResponse (Maybe Text)
dcpgrrsMarker = lens _dcpgrrsMarker (\s a -> s {_dcpgrrsMarker = a})

-- | -- | The response status code.
dcpgrrsResponseStatus :: Lens' DescribeCacheParameterGroupsResponse Int
dcpgrrsResponseStatus = lens _dcpgrrsResponseStatus (\s a -> s {_dcpgrrsResponseStatus = a})

instance NFData DescribeCacheParameterGroupsResponse
