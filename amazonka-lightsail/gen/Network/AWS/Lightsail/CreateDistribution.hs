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
-- Module      : Network.AWS.Lightsail.CreateDistribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon Lightsail content delivery network (CDN) distribution.
--
--
-- A distribution is a globally distributed network of caching servers that improve the performance of your website or web application hosted on a Lightsail instance. For more information, see <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-content-delivery-network-distributions Content delivery networks in Amazon Lightsail> .
module Network.AWS.Lightsail.CreateDistribution
  ( -- * Creating a Request
    createDistribution,
    CreateDistribution,

    -- * Request Lenses
    cddIpAddressType,
    cddCacheBehaviorSettings,
    cddTags,
    cddCacheBehaviors,
    cddDistributionName,
    cddOrigin,
    cddDefaultCacheBehavior,
    cddBundleId,

    -- * Destructuring the Response
    createDistributionResponse,
    CreateDistributionResponse,

    -- * Response Lenses
    cdrrsOperation,
    cdrrsDistribution,
    cdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDistribution' smart constructor.
data CreateDistribution = CreateDistribution'
  { _cddIpAddressType ::
      !(Maybe IPAddressType),
    _cddCacheBehaviorSettings ::
      !(Maybe CacheSettings),
    _cddTags :: !(Maybe [Tag]),
    _cddCacheBehaviors ::
      !(Maybe [CacheBehaviorPerPath]),
    _cddDistributionName :: !Text,
    _cddOrigin :: !InputOrigin,
    _cddDefaultCacheBehavior ::
      !CacheBehavior,
    _cddBundleId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDistribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddIpAddressType' - The IP address type for the distribution. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6. The default value is @dualstack@ .
--
-- * 'cddCacheBehaviorSettings' - An object that describes the cache behavior settings for the distribution.
--
-- * 'cddTags' - The tag keys and optional values to add to the distribution during create. Use the @TagResource@ action to tag a resource after it's created.
--
-- * 'cddCacheBehaviors' - An array of objects that describe the per-path cache behavior for the distribution.
--
-- * 'cddDistributionName' - The name for the distribution.
--
-- * 'cddOrigin' - An object that describes the origin resource for the distribution, such as a Lightsail instance or load balancer. The distribution pulls, caches, and serves content from the origin.
--
-- * 'cddDefaultCacheBehavior' - An object that describes the default cache behavior for the distribution.
--
-- * 'cddBundleId' - The bundle ID to use for the distribution. A distribution bundle describes the specifications of your distribution, such as the monthly cost and monthly network transfer quota. Use the @GetDistributionBundles@ action to get a list of distribution bundle IDs that you can specify.
createDistribution ::
  -- | 'cddDistributionName'
  Text ->
  -- | 'cddOrigin'
  InputOrigin ->
  -- | 'cddDefaultCacheBehavior'
  CacheBehavior ->
  -- | 'cddBundleId'
  Text ->
  CreateDistribution
createDistribution
  pDistributionName_
  pOrigin_
  pDefaultCacheBehavior_
  pBundleId_ =
    CreateDistribution'
      { _cddIpAddressType = Nothing,
        _cddCacheBehaviorSettings = Nothing,
        _cddTags = Nothing,
        _cddCacheBehaviors = Nothing,
        _cddDistributionName = pDistributionName_,
        _cddOrigin = pOrigin_,
        _cddDefaultCacheBehavior = pDefaultCacheBehavior_,
        _cddBundleId = pBundleId_
      }

-- | The IP address type for the distribution. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6. The default value is @dualstack@ .
cddIpAddressType :: Lens' CreateDistribution (Maybe IPAddressType)
cddIpAddressType = lens _cddIpAddressType (\s a -> s {_cddIpAddressType = a})

-- | An object that describes the cache behavior settings for the distribution.
cddCacheBehaviorSettings :: Lens' CreateDistribution (Maybe CacheSettings)
cddCacheBehaviorSettings = lens _cddCacheBehaviorSettings (\s a -> s {_cddCacheBehaviorSettings = a})

-- | The tag keys and optional values to add to the distribution during create. Use the @TagResource@ action to tag a resource after it's created.
cddTags :: Lens' CreateDistribution [Tag]
cddTags = lens _cddTags (\s a -> s {_cddTags = a}) . _Default . _Coerce

-- | An array of objects that describe the per-path cache behavior for the distribution.
cddCacheBehaviors :: Lens' CreateDistribution [CacheBehaviorPerPath]
cddCacheBehaviors = lens _cddCacheBehaviors (\s a -> s {_cddCacheBehaviors = a}) . _Default . _Coerce

-- | The name for the distribution.
cddDistributionName :: Lens' CreateDistribution Text
cddDistributionName = lens _cddDistributionName (\s a -> s {_cddDistributionName = a})

-- | An object that describes the origin resource for the distribution, such as a Lightsail instance or load balancer. The distribution pulls, caches, and serves content from the origin.
cddOrigin :: Lens' CreateDistribution InputOrigin
cddOrigin = lens _cddOrigin (\s a -> s {_cddOrigin = a})

-- | An object that describes the default cache behavior for the distribution.
cddDefaultCacheBehavior :: Lens' CreateDistribution CacheBehavior
cddDefaultCacheBehavior = lens _cddDefaultCacheBehavior (\s a -> s {_cddDefaultCacheBehavior = a})

-- | The bundle ID to use for the distribution. A distribution bundle describes the specifications of your distribution, such as the monthly cost and monthly network transfer quota. Use the @GetDistributionBundles@ action to get a list of distribution bundle IDs that you can specify.
cddBundleId :: Lens' CreateDistribution Text
cddBundleId = lens _cddBundleId (\s a -> s {_cddBundleId = a})

instance AWSRequest CreateDistribution where
  type
    Rs CreateDistribution =
      CreateDistributionResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          CreateDistributionResponse'
            <$> (x .?> "operation")
            <*> (x .?> "distribution")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDistribution

instance NFData CreateDistribution

instance ToHeaders CreateDistribution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.CreateDistribution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDistribution where
  toJSON CreateDistribution' {..} =
    object
      ( catMaybes
          [ ("ipAddressType" .=) <$> _cddIpAddressType,
            ("cacheBehaviorSettings" .=)
              <$> _cddCacheBehaviorSettings,
            ("tags" .=) <$> _cddTags,
            ("cacheBehaviors" .=) <$> _cddCacheBehaviors,
            Just ("distributionName" .= _cddDistributionName),
            Just ("origin" .= _cddOrigin),
            Just
              ("defaultCacheBehavior" .= _cddDefaultCacheBehavior),
            Just ("bundleId" .= _cddBundleId)
          ]
      )

instance ToPath CreateDistribution where
  toPath = const "/"

instance ToQuery CreateDistribution where
  toQuery = const mempty

-- | /See:/ 'createDistributionResponse' smart constructor.
data CreateDistributionResponse = CreateDistributionResponse'
  { _cdrrsOperation ::
      !( Maybe
           Operation
       ),
    _cdrrsDistribution ::
      !( Maybe
           LightsailDistribution
       ),
    _cdrrsResponseStatus ::
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

-- | Creates a value of 'CreateDistributionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrrsOperation' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'cdrrsDistribution' - An object that describes the distribution created.
--
-- * 'cdrrsResponseStatus' - -- | The response status code.
createDistributionResponse ::
  -- | 'cdrrsResponseStatus'
  Int ->
  CreateDistributionResponse
createDistributionResponse pResponseStatus_ =
  CreateDistributionResponse'
    { _cdrrsOperation =
        Nothing,
      _cdrrsDistribution = Nothing,
      _cdrrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
cdrrsOperation :: Lens' CreateDistributionResponse (Maybe Operation)
cdrrsOperation = lens _cdrrsOperation (\s a -> s {_cdrrsOperation = a})

-- | An object that describes the distribution created.
cdrrsDistribution :: Lens' CreateDistributionResponse (Maybe LightsailDistribution)
cdrrsDistribution = lens _cdrrsDistribution (\s a -> s {_cdrrsDistribution = a})

-- | -- | The response status code.
cdrrsResponseStatus :: Lens' CreateDistributionResponse Int
cdrrsResponseStatus = lens _cdrrsResponseStatus (\s a -> s {_cdrrsResponseStatus = a})

instance NFData CreateDistributionResponse
