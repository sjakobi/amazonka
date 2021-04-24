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
-- Module      : Network.AWS.StorageGateway.DescribeCache
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the cache of a gateway. This operation is only supported in the cached volume, tape, and file gateway types.
--
--
-- The response includes disk IDs that are configured as cache, and it includes the amount of cache allocated and used.
module Network.AWS.StorageGateway.DescribeCache
  ( -- * Creating a Request
    describeCache,
    DescribeCache,

    -- * Request Lenses
    dcGatewayARN,

    -- * Destructuring the Response
    describeCacheResponse,
    DescribeCacheResponse,

    -- * Response Lenses
    dcrrsCacheHitPercentage,
    dcrrsCacheDirtyPercentage,
    dcrrsCacheAllocatedInBytes,
    dcrrsCacheMissPercentage,
    dcrrsDiskIds,
    dcrrsCacheUsedPercentage,
    dcrrsGatewayARN,
    dcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | /See:/ 'describeCache' smart constructor.
newtype DescribeCache = DescribeCache'
  { _dcGatewayARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeCache' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcGatewayARN' - Undocumented member.
describeCache ::
  -- | 'dcGatewayARN'
  Text ->
  DescribeCache
describeCache pGatewayARN_ =
  DescribeCache' {_dcGatewayARN = pGatewayARN_}

-- | Undocumented member.
dcGatewayARN :: Lens' DescribeCache Text
dcGatewayARN = lens _dcGatewayARN (\s a -> s {_dcGatewayARN = a})

instance AWSRequest DescribeCache where
  type Rs DescribeCache = DescribeCacheResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeCacheResponse'
            <$> (x .?> "CacheHitPercentage")
            <*> (x .?> "CacheDirtyPercentage")
            <*> (x .?> "CacheAllocatedInBytes")
            <*> (x .?> "CacheMissPercentage")
            <*> (x .?> "DiskIds" .!@ mempty)
            <*> (x .?> "CacheUsedPercentage")
            <*> (x .?> "GatewayARN")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCache

instance NFData DescribeCache

instance ToHeaders DescribeCache where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeCache" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCache where
  toJSON DescribeCache' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _dcGatewayARN)])

instance ToPath DescribeCache where
  toPath = const "/"

instance ToQuery DescribeCache where
  toQuery = const mempty

-- | /See:/ 'describeCacheResponse' smart constructor.
data DescribeCacheResponse = DescribeCacheResponse'
  { _dcrrsCacheHitPercentage ::
      !(Maybe Double),
    _dcrrsCacheDirtyPercentage ::
      !(Maybe Double),
    _dcrrsCacheAllocatedInBytes ::
      !(Maybe Integer),
    _dcrrsCacheMissPercentage ::
      !(Maybe Double),
    _dcrrsDiskIds ::
      !(Maybe [Text]),
    _dcrrsCacheUsedPercentage ::
      !(Maybe Double),
    _dcrrsGatewayARN ::
      !(Maybe Text),
    _dcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeCacheResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsCacheHitPercentage' - Percent of application read operations from the file shares that are served from cache. The sample is taken at the end of the reporting period.
--
-- * 'dcrrsCacheDirtyPercentage' - The file share's contribution to the overall percentage of the gateway's cache that has not been persisted to AWS. The sample is taken at the end of the reporting period.
--
-- * 'dcrrsCacheAllocatedInBytes' - The amount of cache in bytes allocated to a gateway.
--
-- * 'dcrrsCacheMissPercentage' - Percent of application read operations from the file shares that are not served from cache. The sample is taken at the end of the reporting period.
--
-- * 'dcrrsDiskIds' - An array of strings that identify disks that are to be configured as working storage. Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs from the 'ListLocalDisks' API.
--
-- * 'dcrrsCacheUsedPercentage' - Percent use of the gateway's cache storage. This metric applies only to the gateway-cached volume setup. The sample is taken at the end of the reporting period.
--
-- * 'dcrrsGatewayARN' - Undocumented member.
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
describeCacheResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DescribeCacheResponse
describeCacheResponse pResponseStatus_ =
  DescribeCacheResponse'
    { _dcrrsCacheHitPercentage =
        Nothing,
      _dcrrsCacheDirtyPercentage = Nothing,
      _dcrrsCacheAllocatedInBytes = Nothing,
      _dcrrsCacheMissPercentage = Nothing,
      _dcrrsDiskIds = Nothing,
      _dcrrsCacheUsedPercentage = Nothing,
      _dcrrsGatewayARN = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | Percent of application read operations from the file shares that are served from cache. The sample is taken at the end of the reporting period.
dcrrsCacheHitPercentage :: Lens' DescribeCacheResponse (Maybe Double)
dcrrsCacheHitPercentage = lens _dcrrsCacheHitPercentage (\s a -> s {_dcrrsCacheHitPercentage = a})

-- | The file share's contribution to the overall percentage of the gateway's cache that has not been persisted to AWS. The sample is taken at the end of the reporting period.
dcrrsCacheDirtyPercentage :: Lens' DescribeCacheResponse (Maybe Double)
dcrrsCacheDirtyPercentage = lens _dcrrsCacheDirtyPercentage (\s a -> s {_dcrrsCacheDirtyPercentage = a})

-- | The amount of cache in bytes allocated to a gateway.
dcrrsCacheAllocatedInBytes :: Lens' DescribeCacheResponse (Maybe Integer)
dcrrsCacheAllocatedInBytes = lens _dcrrsCacheAllocatedInBytes (\s a -> s {_dcrrsCacheAllocatedInBytes = a})

-- | Percent of application read operations from the file shares that are not served from cache. The sample is taken at the end of the reporting period.
dcrrsCacheMissPercentage :: Lens' DescribeCacheResponse (Maybe Double)
dcrrsCacheMissPercentage = lens _dcrrsCacheMissPercentage (\s a -> s {_dcrrsCacheMissPercentage = a})

-- | An array of strings that identify disks that are to be configured as working storage. Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs from the 'ListLocalDisks' API.
dcrrsDiskIds :: Lens' DescribeCacheResponse [Text]
dcrrsDiskIds = lens _dcrrsDiskIds (\s a -> s {_dcrrsDiskIds = a}) . _Default . _Coerce

-- | Percent use of the gateway's cache storage. This metric applies only to the gateway-cached volume setup. The sample is taken at the end of the reporting period.
dcrrsCacheUsedPercentage :: Lens' DescribeCacheResponse (Maybe Double)
dcrrsCacheUsedPercentage = lens _dcrrsCacheUsedPercentage (\s a -> s {_dcrrsCacheUsedPercentage = a})

-- | Undocumented member.
dcrrsGatewayARN :: Lens' DescribeCacheResponse (Maybe Text)
dcrrsGatewayARN = lens _dcrrsGatewayARN (\s a -> s {_dcrrsGatewayARN = a})

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeCacheResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DescribeCacheResponse
