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
-- Module      : Network.AWS.CloudFront.CreateOriginRequestPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an origin request policy.
--
--
-- After you create an origin request policy, you can attach it to one or more cache behaviors. When it’s attached to a cache behavior, the origin request policy determines the values that CloudFront includes in requests that it sends to the origin. Each request that CloudFront sends to the origin includes the following:
--
--     * The request body and the URL path (without the domain name) from the viewer request.
--
--     * The headers that CloudFront automatically includes in every origin request, including @Host@ , @User-Agent@ , and @X-Amz-Cf-Id@ .
--
--     * All HTTP headers, cookies, and URL query strings that are specified in the cache policy or the origin request policy. These can include items from the viewer request and, in the case of headers, additional ones that are added by CloudFront.
--
--
--
-- CloudFront sends a request when it can’t find a valid object in its cache that matches the request. If you want to send values to the origin and also include them in the cache key, use @CachePolicy@ .
--
-- For more information about origin request policies, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html Controlling origin requests> in the /Amazon CloudFront Developer Guide/ .
module Network.AWS.CloudFront.CreateOriginRequestPolicy
  ( -- * Creating a Request
    createOriginRequestPolicy,
    CreateOriginRequestPolicy,

    -- * Request Lenses
    corpOriginRequestPolicyConfig,

    -- * Destructuring the Response
    createOriginRequestPolicyResponse,
    CreateOriginRequestPolicyResponse,

    -- * Response Lenses
    corprrsETag,
    corprrsOriginRequestPolicy,
    corprrsLocation,
    corprrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createOriginRequestPolicy' smart constructor.
newtype CreateOriginRequestPolicy = CreateOriginRequestPolicy'
  { _corpOriginRequestPolicyConfig ::
      OriginRequestPolicyConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateOriginRequestPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'corpOriginRequestPolicyConfig' - An origin request policy configuration.
createOriginRequestPolicy ::
  -- | 'corpOriginRequestPolicyConfig'
  OriginRequestPolicyConfig ->
  CreateOriginRequestPolicy
createOriginRequestPolicy pOriginRequestPolicyConfig_ =
  CreateOriginRequestPolicy'
    { _corpOriginRequestPolicyConfig =
        pOriginRequestPolicyConfig_
    }

-- | An origin request policy configuration.
corpOriginRequestPolicyConfig :: Lens' CreateOriginRequestPolicy OriginRequestPolicyConfig
corpOriginRequestPolicyConfig = lens _corpOriginRequestPolicyConfig (\s a -> s {_corpOriginRequestPolicyConfig = a})

instance AWSRequest CreateOriginRequestPolicy where
  type
    Rs CreateOriginRequestPolicy =
      CreateOriginRequestPolicyResponse
  request = postXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          CreateOriginRequestPolicyResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (h .#? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateOriginRequestPolicy

instance NFData CreateOriginRequestPolicy

instance ToElement CreateOriginRequestPolicy where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}OriginRequestPolicyConfig"
      . _corpOriginRequestPolicyConfig

instance ToHeaders CreateOriginRequestPolicy where
  toHeaders = const mempty

instance ToPath CreateOriginRequestPolicy where
  toPath = const "/2020-05-31/origin-request-policy"

instance ToQuery CreateOriginRequestPolicy where
  toQuery = const mempty

-- | /See:/ 'createOriginRequestPolicyResponse' smart constructor.
data CreateOriginRequestPolicyResponse = CreateOriginRequestPolicyResponse'
  { _corprrsETag ::
      !( Maybe
           Text
       ),
    _corprrsOriginRequestPolicy ::
      !( Maybe
           OriginRequestPolicy
       ),
    _corprrsLocation ::
      !( Maybe
           Text
       ),
    _corprrsResponseStatus ::
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

-- | Creates a value of 'CreateOriginRequestPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'corprrsETag' - The current version of the origin request policy.
--
-- * 'corprrsOriginRequestPolicy' - An origin request policy.
--
-- * 'corprrsLocation' - The fully qualified URI of the origin request policy just created.
--
-- * 'corprrsResponseStatus' - -- | The response status code.
createOriginRequestPolicyResponse ::
  -- | 'corprrsResponseStatus'
  Int ->
  CreateOriginRequestPolicyResponse
createOriginRequestPolicyResponse pResponseStatus_ =
  CreateOriginRequestPolicyResponse'
    { _corprrsETag =
        Nothing,
      _corprrsOriginRequestPolicy = Nothing,
      _corprrsLocation = Nothing,
      _corprrsResponseStatus =
        pResponseStatus_
    }

-- | The current version of the origin request policy.
corprrsETag :: Lens' CreateOriginRequestPolicyResponse (Maybe Text)
corprrsETag = lens _corprrsETag (\s a -> s {_corprrsETag = a})

-- | An origin request policy.
corprrsOriginRequestPolicy :: Lens' CreateOriginRequestPolicyResponse (Maybe OriginRequestPolicy)
corprrsOriginRequestPolicy = lens _corprrsOriginRequestPolicy (\s a -> s {_corprrsOriginRequestPolicy = a})

-- | The fully qualified URI of the origin request policy just created.
corprrsLocation :: Lens' CreateOriginRequestPolicyResponse (Maybe Text)
corprrsLocation = lens _corprrsLocation (\s a -> s {_corprrsLocation = a})

-- | -- | The response status code.
corprrsResponseStatus :: Lens' CreateOriginRequestPolicyResponse Int
corprrsResponseStatus = lens _corprrsResponseStatus (\s a -> s {_corprrsResponseStatus = a})

instance NFData CreateOriginRequestPolicyResponse
