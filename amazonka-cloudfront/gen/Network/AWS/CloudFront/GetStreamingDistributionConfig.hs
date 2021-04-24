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
-- Module      : Network.AWS.CloudFront.GetStreamingDistributionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the configuration information about a streaming distribution.
module Network.AWS.CloudFront.GetStreamingDistributionConfig
  ( -- * Creating a Request
    getStreamingDistributionConfig,
    GetStreamingDistributionConfig,

    -- * Request Lenses
    gsdcId,

    -- * Destructuring the Response
    getStreamingDistributionConfigResponse,
    GetStreamingDistributionConfigResponse,

    -- * Response Lenses
    gsdcrrsETag,
    gsdcrrsStreamingDistributionConfig,
    gsdcrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | To request to get a streaming distribution configuration.
--
--
--
-- /See:/ 'getStreamingDistributionConfig' smart constructor.
newtype GetStreamingDistributionConfig = GetStreamingDistributionConfig'
  { _gsdcId ::
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

-- | Creates a value of 'GetStreamingDistributionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdcId' - The streaming distribution's ID.
getStreamingDistributionConfig ::
  -- | 'gsdcId'
  Text ->
  GetStreamingDistributionConfig
getStreamingDistributionConfig pId_ =
  GetStreamingDistributionConfig' {_gsdcId = pId_}

-- | The streaming distribution's ID.
gsdcId :: Lens' GetStreamingDistributionConfig Text
gsdcId = lens _gsdcId (\s a -> s {_gsdcId = a})

instance AWSRequest GetStreamingDistributionConfig where
  type
    Rs GetStreamingDistributionConfig =
      GetStreamingDistributionConfigResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetStreamingDistributionConfigResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetStreamingDistributionConfig

instance NFData GetStreamingDistributionConfig

instance ToHeaders GetStreamingDistributionConfig where
  toHeaders = const mempty

instance ToPath GetStreamingDistributionConfig where
  toPath GetStreamingDistributionConfig' {..} =
    mconcat
      [ "/2020-05-31/streaming-distribution/",
        toBS _gsdcId,
        "/config"
      ]

instance ToQuery GetStreamingDistributionConfig where
  toQuery = const mempty

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'getStreamingDistributionConfigResponse' smart constructor.
data GetStreamingDistributionConfigResponse = GetStreamingDistributionConfigResponse'
  { _gsdcrrsETag ::
      !( Maybe
           Text
       ),
    _gsdcrrsStreamingDistributionConfig ::
      !( Maybe
           StreamingDistributionConfig
       ),
    _gsdcrrsResponseStatus ::
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

-- | Creates a value of 'GetStreamingDistributionConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdcrrsETag' - The current version of the configuration. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'gsdcrrsStreamingDistributionConfig' - The streaming distribution's configuration information.
--
-- * 'gsdcrrsResponseStatus' - -- | The response status code.
getStreamingDistributionConfigResponse ::
  -- | 'gsdcrrsResponseStatus'
  Int ->
  GetStreamingDistributionConfigResponse
getStreamingDistributionConfigResponse
  pResponseStatus_ =
    GetStreamingDistributionConfigResponse'
      { _gsdcrrsETag =
          Nothing,
        _gsdcrrsStreamingDistributionConfig =
          Nothing,
        _gsdcrrsResponseStatus =
          pResponseStatus_
      }

-- | The current version of the configuration. For example: @E2QWRUHAPOMQZL@ .
gsdcrrsETag :: Lens' GetStreamingDistributionConfigResponse (Maybe Text)
gsdcrrsETag = lens _gsdcrrsETag (\s a -> s {_gsdcrrsETag = a})

-- | The streaming distribution's configuration information.
gsdcrrsStreamingDistributionConfig :: Lens' GetStreamingDistributionConfigResponse (Maybe StreamingDistributionConfig)
gsdcrrsStreamingDistributionConfig = lens _gsdcrrsStreamingDistributionConfig (\s a -> s {_gsdcrrsStreamingDistributionConfig = a})

-- | -- | The response status code.
gsdcrrsResponseStatus :: Lens' GetStreamingDistributionConfigResponse Int
gsdcrrsResponseStatus = lens _gsdcrrsResponseStatus (\s a -> s {_gsdcrrsResponseStatus = a})

instance
  NFData
    GetStreamingDistributionConfigResponse
