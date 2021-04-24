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
-- Module      : Network.AWS.ElastiCache.DescribeCacheSecurityGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only the description of that group. This applicable only when you have ElastiCache in Classic setup
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeCacheSecurityGroups
  ( -- * Creating a Request
    describeCacheSecurityGroups,
    DescribeCacheSecurityGroups,

    -- * Request Lenses
    dCacheSecurityGroupName,
    dMarker,
    dMaxRecords,

    -- * Destructuring the Response
    describeCacheSecurityGroupsResponse,
    DescribeCacheSecurityGroupsResponse,

    -- * Response Lenses
    dcsgrrsCacheSecurityGroups,
    dcsgrrsMarker,
    dcsgrrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DescribeCacheSecurityGroups@ operation.
--
--
--
-- /See:/ 'describeCacheSecurityGroups' smart constructor.
data DescribeCacheSecurityGroups = DescribeCacheSecurityGroups'
  { _dCacheSecurityGroupName ::
      !(Maybe Text),
    _dMarker ::
      !(Maybe Text),
    _dMaxRecords ::
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

-- | Creates a value of 'DescribeCacheSecurityGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dCacheSecurityGroupName' - The name of the cache security group to return details for.
--
-- * 'dMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
describeCacheSecurityGroups ::
  DescribeCacheSecurityGroups
describeCacheSecurityGroups =
  DescribeCacheSecurityGroups'
    { _dCacheSecurityGroupName =
        Nothing,
      _dMarker = Nothing,
      _dMaxRecords = Nothing
    }

-- | The name of the cache security group to return details for.
dCacheSecurityGroupName :: Lens' DescribeCacheSecurityGroups (Maybe Text)
dCacheSecurityGroupName = lens _dCacheSecurityGroupName (\s a -> s {_dCacheSecurityGroupName = a})

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dMarker :: Lens' DescribeCacheSecurityGroups (Maybe Text)
dMarker = lens _dMarker (\s a -> s {_dMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
dMaxRecords :: Lens' DescribeCacheSecurityGroups (Maybe Int)
dMaxRecords = lens _dMaxRecords (\s a -> s {_dMaxRecords = a})

instance AWSPager DescribeCacheSecurityGroups where
  page rq rs
    | stop (rs ^. dcsgrrsMarker) = Nothing
    | stop (rs ^. dcsgrrsCacheSecurityGroups) = Nothing
    | otherwise =
      Just $ rq & dMarker .~ rs ^. dcsgrrsMarker

instance AWSRequest DescribeCacheSecurityGroups where
  type
    Rs DescribeCacheSecurityGroups =
      DescribeCacheSecurityGroupsResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DescribeCacheSecurityGroupsResult"
      ( \s h x ->
          DescribeCacheSecurityGroupsResponse'
            <$> ( x .@? "CacheSecurityGroups" .!@ mempty
                    >>= may (parseXMLList "CacheSecurityGroup")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCacheSecurityGroups

instance NFData DescribeCacheSecurityGroups

instance ToHeaders DescribeCacheSecurityGroups where
  toHeaders = const mempty

instance ToPath DescribeCacheSecurityGroups where
  toPath = const "/"

instance ToQuery DescribeCacheSecurityGroups where
  toQuery DescribeCacheSecurityGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeCacheSecurityGroups" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "CacheSecurityGroupName" =: _dCacheSecurityGroupName,
        "Marker" =: _dMarker,
        "MaxRecords" =: _dMaxRecords
      ]

-- | Represents the output of a @DescribeCacheSecurityGroups@ operation.
--
--
--
-- /See:/ 'describeCacheSecurityGroupsResponse' smart constructor.
data DescribeCacheSecurityGroupsResponse = DescribeCacheSecurityGroupsResponse'
  { _dcsgrrsCacheSecurityGroups ::
      !( Maybe
           [CacheSecurityGroup]
       ),
    _dcsgrrsMarker ::
      !( Maybe
           Text
       ),
    _dcsgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeCacheSecurityGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsgrrsCacheSecurityGroups' - A list of cache security groups. Each element in the list contains detailed information about one group.
--
-- * 'dcsgrrsMarker' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'dcsgrrsResponseStatus' - -- | The response status code.
describeCacheSecurityGroupsResponse ::
  -- | 'dcsgrrsResponseStatus'
  Int ->
  DescribeCacheSecurityGroupsResponse
describeCacheSecurityGroupsResponse pResponseStatus_ =
  DescribeCacheSecurityGroupsResponse'
    { _dcsgrrsCacheSecurityGroups =
        Nothing,
      _dcsgrrsMarker = Nothing,
      _dcsgrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of cache security groups. Each element in the list contains detailed information about one group.
dcsgrrsCacheSecurityGroups :: Lens' DescribeCacheSecurityGroupsResponse [CacheSecurityGroup]
dcsgrrsCacheSecurityGroups = lens _dcsgrrsCacheSecurityGroups (\s a -> s {_dcsgrrsCacheSecurityGroups = a}) . _Default . _Coerce

-- | Provides an identifier to allow retrieval of paginated results.
dcsgrrsMarker :: Lens' DescribeCacheSecurityGroupsResponse (Maybe Text)
dcsgrrsMarker = lens _dcsgrrsMarker (\s a -> s {_dcsgrrsMarker = a})

-- | -- | The response status code.
dcsgrrsResponseStatus :: Lens' DescribeCacheSecurityGroupsResponse Int
dcsgrrsResponseStatus = lens _dcsgrrsResponseStatus (\s a -> s {_dcsgrrsResponseStatus = a})

instance NFData DescribeCacheSecurityGroupsResponse
