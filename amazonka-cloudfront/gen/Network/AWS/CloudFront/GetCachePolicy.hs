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
-- Module      : Network.AWS.CloudFront.GetCachePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a cache policy, including the following metadata:
--
--
--     * The policy’s identifier.
--
--     * The date and time when the policy was last modified.
--
--
--
-- To get a cache policy, you must provide the policy’s identifier. If the cache policy is attached to a distribution’s cache behavior, you can get the policy’s identifier using @ListDistributions@ or @GetDistribution@ . If the cache policy is not attached to a cache behavior, you can get the identifier using @ListCachePolicies@ .
module Network.AWS.CloudFront.GetCachePolicy
  ( -- * Creating a Request
    getCachePolicy,
    GetCachePolicy,

    -- * Request Lenses
    gcpId,

    -- * Destructuring the Response
    getCachePolicyResponse,
    GetCachePolicyResponse,

    -- * Response Lenses
    gcprrsETag,
    gcprrsCachePolicy,
    gcprrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCachePolicy' smart constructor.
newtype GetCachePolicy = GetCachePolicy'
  { _gcpId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCachePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpId' - The unique identifier for the cache policy. If the cache policy is attached to a distribution’s cache behavior, you can get the policy’s identifier using @ListDistributions@ or @GetDistribution@ . If the cache policy is not attached to a cache behavior, you can get the identifier using @ListCachePolicies@ .
getCachePolicy ::
  -- | 'gcpId'
  Text ->
  GetCachePolicy
getCachePolicy pId_ = GetCachePolicy' {_gcpId = pId_}

-- | The unique identifier for the cache policy. If the cache policy is attached to a distribution’s cache behavior, you can get the policy’s identifier using @ListDistributions@ or @GetDistribution@ . If the cache policy is not attached to a cache behavior, you can get the identifier using @ListCachePolicies@ .
gcpId :: Lens' GetCachePolicy Text
gcpId = lens _gcpId (\s a -> s {_gcpId = a})

instance AWSRequest GetCachePolicy where
  type Rs GetCachePolicy = GetCachePolicyResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetCachePolicyResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetCachePolicy

instance NFData GetCachePolicy

instance ToHeaders GetCachePolicy where
  toHeaders = const mempty

instance ToPath GetCachePolicy where
  toPath GetCachePolicy' {..} =
    mconcat ["/2020-05-31/cache-policy/", toBS _gcpId]

instance ToQuery GetCachePolicy where
  toQuery = const mempty

-- | /See:/ 'getCachePolicyResponse' smart constructor.
data GetCachePolicyResponse = GetCachePolicyResponse'
  { _gcprrsETag ::
      !(Maybe Text),
    _gcprrsCachePolicy ::
      !(Maybe CachePolicy),
    _gcprrsResponseStatus ::
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

-- | Creates a value of 'GetCachePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcprrsETag' - The current version of the cache policy.
--
-- * 'gcprrsCachePolicy' - The cache policy.
--
-- * 'gcprrsResponseStatus' - -- | The response status code.
getCachePolicyResponse ::
  -- | 'gcprrsResponseStatus'
  Int ->
  GetCachePolicyResponse
getCachePolicyResponse pResponseStatus_ =
  GetCachePolicyResponse'
    { _gcprrsETag = Nothing,
      _gcprrsCachePolicy = Nothing,
      _gcprrsResponseStatus = pResponseStatus_
    }

-- | The current version of the cache policy.
gcprrsETag :: Lens' GetCachePolicyResponse (Maybe Text)
gcprrsETag = lens _gcprrsETag (\s a -> s {_gcprrsETag = a})

-- | The cache policy.
gcprrsCachePolicy :: Lens' GetCachePolicyResponse (Maybe CachePolicy)
gcprrsCachePolicy = lens _gcprrsCachePolicy (\s a -> s {_gcprrsCachePolicy = a})

-- | -- | The response status code.
gcprrsResponseStatus :: Lens' GetCachePolicyResponse Int
gcprrsResponseStatus = lens _gcprrsResponseStatus (\s a -> s {_gcprrsResponseStatus = a})

instance NFData GetCachePolicyResponse
