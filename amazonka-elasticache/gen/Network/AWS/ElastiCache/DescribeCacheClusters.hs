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
-- Module      : Network.AWS.ElastiCache.DescribeCacheClusters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cache cluster if a cluster identifier is supplied.
--
--
-- By default, abbreviated information about the clusters is returned. You can use the optional /ShowCacheNodeInfo/ flag to retrieve detailed information about the cache nodes associated with the clusters. These details include the DNS address and port for the cache node endpoint.
--
-- If the cluster is in the /creating/ state, only cluster-level information is displayed until all of the nodes are successfully provisioned.
--
-- If the cluster is in the /deleting/ state, only cluster-level information is displayed.
--
-- If cache nodes are currently being added to the cluster, node endpoint information and creation time for the additional nodes are not displayed until they are completely provisioned. When the cluster state is /available/ , the cluster is ready for use.
--
-- If cache nodes are currently being removed from the cluster, no endpoint information for the removed nodes is displayed.
--
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeCacheClusters
  ( -- * Creating a Request
    describeCacheClusters,
    DescribeCacheClusters,

    -- * Request Lenses
    dccsShowCacheNodeInfo,
    dccsCacheClusterId,
    dccsShowCacheClustersNotInReplicationGroups,
    dccsMarker,
    dccsMaxRecords,

    -- * Destructuring the Response
    describeCacheClustersResponse,
    DescribeCacheClustersResponse,

    -- * Response Lenses
    desrsCacheClusters,
    desrsMarker,
    desrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DescribeCacheClusters@ operation.
--
--
--
-- /See:/ 'describeCacheClusters' smart constructor.
data DescribeCacheClusters = DescribeCacheClusters'
  { _dccsShowCacheNodeInfo ::
      !(Maybe Bool),
    _dccsCacheClusterId ::
      !(Maybe Text),
    _dccsShowCacheClustersNotInReplicationGroups ::
      !(Maybe Bool),
    _dccsMarker ::
      !(Maybe Text),
    _dccsMaxRecords ::
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

-- | Creates a value of 'DescribeCacheClusters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccsShowCacheNodeInfo' - An optional flag that can be included in the @DescribeCacheCluster@ request to retrieve information about the individual cache nodes.
--
-- * 'dccsCacheClusterId' - The user-supplied cluster identifier. If this parameter is specified, only information about that specific cluster is returned. This parameter isn't case sensitive.
--
-- * 'dccsShowCacheClustersNotInReplicationGroups' - An optional flag that can be included in the @DescribeCacheCluster@ request to show only nodes (API/CLI: clusters) that are not members of a replication group. In practice, this mean Memcached and single node Redis clusters.
--
-- * 'dccsMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dccsMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
describeCacheClusters ::
  DescribeCacheClusters
describeCacheClusters =
  DescribeCacheClusters'
    { _dccsShowCacheNodeInfo =
        Nothing,
      _dccsCacheClusterId = Nothing,
      _dccsShowCacheClustersNotInReplicationGroups =
        Nothing,
      _dccsMarker = Nothing,
      _dccsMaxRecords = Nothing
    }

-- | An optional flag that can be included in the @DescribeCacheCluster@ request to retrieve information about the individual cache nodes.
dccsShowCacheNodeInfo :: Lens' DescribeCacheClusters (Maybe Bool)
dccsShowCacheNodeInfo = lens _dccsShowCacheNodeInfo (\s a -> s {_dccsShowCacheNodeInfo = a})

-- | The user-supplied cluster identifier. If this parameter is specified, only information about that specific cluster is returned. This parameter isn't case sensitive.
dccsCacheClusterId :: Lens' DescribeCacheClusters (Maybe Text)
dccsCacheClusterId = lens _dccsCacheClusterId (\s a -> s {_dccsCacheClusterId = a})

-- | An optional flag that can be included in the @DescribeCacheCluster@ request to show only nodes (API/CLI: clusters) that are not members of a replication group. In practice, this mean Memcached and single node Redis clusters.
dccsShowCacheClustersNotInReplicationGroups :: Lens' DescribeCacheClusters (Maybe Bool)
dccsShowCacheClustersNotInReplicationGroups = lens _dccsShowCacheClustersNotInReplicationGroups (\s a -> s {_dccsShowCacheClustersNotInReplicationGroups = a})

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dccsMarker :: Lens' DescribeCacheClusters (Maybe Text)
dccsMarker = lens _dccsMarker (\s a -> s {_dccsMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
dccsMaxRecords :: Lens' DescribeCacheClusters (Maybe Int)
dccsMaxRecords = lens _dccsMaxRecords (\s a -> s {_dccsMaxRecords = a})

instance AWSPager DescribeCacheClusters where
  page rq rs
    | stop (rs ^. desrsMarker) = Nothing
    | stop (rs ^. desrsCacheClusters) = Nothing
    | otherwise =
      Just $ rq & dccsMarker .~ rs ^. desrsMarker

instance AWSRequest DescribeCacheClusters where
  type
    Rs DescribeCacheClusters =
      DescribeCacheClustersResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DescribeCacheClustersResult"
      ( \s h x ->
          DescribeCacheClustersResponse'
            <$> ( x .@? "CacheClusters" .!@ mempty
                    >>= may (parseXMLList "CacheCluster")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCacheClusters

instance NFData DescribeCacheClusters

instance ToHeaders DescribeCacheClusters where
  toHeaders = const mempty

instance ToPath DescribeCacheClusters where
  toPath = const "/"

instance ToQuery DescribeCacheClusters where
  toQuery DescribeCacheClusters' {..} =
    mconcat
      [ "Action" =: ("DescribeCacheClusters" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "ShowCacheNodeInfo" =: _dccsShowCacheNodeInfo,
        "CacheClusterId" =: _dccsCacheClusterId,
        "ShowCacheClustersNotInReplicationGroups"
          =: _dccsShowCacheClustersNotInReplicationGroups,
        "Marker" =: _dccsMarker,
        "MaxRecords" =: _dccsMaxRecords
      ]

-- | Represents the output of a @DescribeCacheClusters@ operation.
--
--
--
-- /See:/ 'describeCacheClustersResponse' smart constructor.
data DescribeCacheClustersResponse = DescribeCacheClustersResponse'
  { _desrsCacheClusters ::
      !( Maybe
           [CacheCluster]
       ),
    _desrsMarker ::
      !( Maybe
           Text
       ),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeCacheClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsCacheClusters' - A list of clusters. Each item in the list contains detailed information about one cluster.
--
-- * 'desrsMarker' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeCacheClustersResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeCacheClustersResponse
describeCacheClustersResponse pResponseStatus_ =
  DescribeCacheClustersResponse'
    { _desrsCacheClusters =
        Nothing,
      _desrsMarker = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | A list of clusters. Each item in the list contains detailed information about one cluster.
desrsCacheClusters :: Lens' DescribeCacheClustersResponse [CacheCluster]
desrsCacheClusters = lens _desrsCacheClusters (\s a -> s {_desrsCacheClusters = a}) . _Default . _Coerce

-- | Provides an identifier to allow retrieval of paginated results.
desrsMarker :: Lens' DescribeCacheClustersResponse (Maybe Text)
desrsMarker = lens _desrsMarker (\s a -> s {_desrsMarker = a})

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeCacheClustersResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeCacheClustersResponse
