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
-- Module      : Network.AWS.CloudFront.GetCloudFrontOriginAccessIdentityConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the configuration information about an origin access identity.
module Network.AWS.CloudFront.GetCloudFrontOriginAccessIdentityConfig
  ( -- * Creating a Request
    getCloudFrontOriginAccessIdentityConfig,
    GetCloudFrontOriginAccessIdentityConfig,

    -- * Request Lenses
    gcfoaicId,

    -- * Destructuring the Response
    getCloudFrontOriginAccessIdentityConfigResponse,
    GetCloudFrontOriginAccessIdentityConfigResponse,

    -- * Response Lenses
    gcfoaicrrsETag,
    gcfoaicrrsCloudFrontOriginAccessIdentityConfig,
    gcfoaicrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The origin access identity's configuration information. For more information, see <https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CloudFrontOriginAccessIdentityConfig.html CloudFrontOriginAccessIdentityConfig> .
--
--
--
-- /See:/ 'getCloudFrontOriginAccessIdentityConfig' smart constructor.
newtype GetCloudFrontOriginAccessIdentityConfig = GetCloudFrontOriginAccessIdentityConfig'
  { _gcfoaicId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCloudFrontOriginAccessIdentityConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfoaicId' - The identity's ID.
getCloudFrontOriginAccessIdentityConfig ::
  -- | 'gcfoaicId'
  Text ->
  GetCloudFrontOriginAccessIdentityConfig
getCloudFrontOriginAccessIdentityConfig pId_ =
  GetCloudFrontOriginAccessIdentityConfig'
    { _gcfoaicId =
        pId_
    }

-- | The identity's ID.
gcfoaicId :: Lens' GetCloudFrontOriginAccessIdentityConfig Text
gcfoaicId = lens _gcfoaicId (\s a -> s {_gcfoaicId = a})

instance
  AWSRequest
    GetCloudFrontOriginAccessIdentityConfig
  where
  type
    Rs GetCloudFrontOriginAccessIdentityConfig =
      GetCloudFrontOriginAccessIdentityConfigResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetCloudFrontOriginAccessIdentityConfigResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetCloudFrontOriginAccessIdentityConfig

instance
  NFData
    GetCloudFrontOriginAccessIdentityConfig

instance
  ToHeaders
    GetCloudFrontOriginAccessIdentityConfig
  where
  toHeaders = const mempty

instance
  ToPath
    GetCloudFrontOriginAccessIdentityConfig
  where
  toPath GetCloudFrontOriginAccessIdentityConfig' {..} =
    mconcat
      [ "/2020-05-31/origin-access-identity/cloudfront/",
        toBS _gcfoaicId,
        "/config"
      ]

instance
  ToQuery
    GetCloudFrontOriginAccessIdentityConfig
  where
  toQuery = const mempty

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'getCloudFrontOriginAccessIdentityConfigResponse' smart constructor.
data GetCloudFrontOriginAccessIdentityConfigResponse = GetCloudFrontOriginAccessIdentityConfigResponse'
  { _gcfoaicrrsETag ::
      !( Maybe
           Text
       ),
    _gcfoaicrrsCloudFrontOriginAccessIdentityConfig ::
      !( Maybe
           CloudFrontOriginAccessIdentityConfig
       ),
    _gcfoaicrrsResponseStatus ::
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

-- | Creates a value of 'GetCloudFrontOriginAccessIdentityConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfoaicrrsETag' - The current version of the configuration. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'gcfoaicrrsCloudFrontOriginAccessIdentityConfig' - The origin access identity's configuration information.
--
-- * 'gcfoaicrrsResponseStatus' - -- | The response status code.
getCloudFrontOriginAccessIdentityConfigResponse ::
  -- | 'gcfoaicrrsResponseStatus'
  Int ->
  GetCloudFrontOriginAccessIdentityConfigResponse
getCloudFrontOriginAccessIdentityConfigResponse
  pResponseStatus_ =
    GetCloudFrontOriginAccessIdentityConfigResponse'
      { _gcfoaicrrsETag =
          Nothing,
        _gcfoaicrrsCloudFrontOriginAccessIdentityConfig =
          Nothing,
        _gcfoaicrrsResponseStatus =
          pResponseStatus_
      }

-- | The current version of the configuration. For example: @E2QWRUHAPOMQZL@ .
gcfoaicrrsETag :: Lens' GetCloudFrontOriginAccessIdentityConfigResponse (Maybe Text)
gcfoaicrrsETag = lens _gcfoaicrrsETag (\s a -> s {_gcfoaicrrsETag = a})

-- | The origin access identity's configuration information.
gcfoaicrrsCloudFrontOriginAccessIdentityConfig :: Lens' GetCloudFrontOriginAccessIdentityConfigResponse (Maybe CloudFrontOriginAccessIdentityConfig)
gcfoaicrrsCloudFrontOriginAccessIdentityConfig = lens _gcfoaicrrsCloudFrontOriginAccessIdentityConfig (\s a -> s {_gcfoaicrrsCloudFrontOriginAccessIdentityConfig = a})

-- | -- | The response status code.
gcfoaicrrsResponseStatus :: Lens' GetCloudFrontOriginAccessIdentityConfigResponse Int
gcfoaicrrsResponseStatus = lens _gcfoaicrrsResponseStatus (\s a -> s {_gcfoaicrrsResponseStatus = a})

instance
  NFData
    GetCloudFrontOriginAccessIdentityConfigResponse
