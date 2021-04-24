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
-- Module      : Network.AWS.CloudFront.GetDistributionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the configuration information about a distribution.
module Network.AWS.CloudFront.GetDistributionConfig
  ( -- * Creating a Request
    getDistributionConfig,
    GetDistributionConfig,

    -- * Request Lenses
    gdcId,

    -- * Destructuring the Response
    getDistributionConfigResponse,
    GetDistributionConfigResponse,

    -- * Response Lenses
    gdcrrsETag,
    gdcrrsDistributionConfig,
    gdcrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to get a distribution configuration.
--
--
--
-- /See:/ 'getDistributionConfig' smart constructor.
newtype GetDistributionConfig = GetDistributionConfig'
  { _gdcId ::
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

-- | Creates a value of 'GetDistributionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdcId' - The distribution's ID. If the ID is empty, an empty distribution configuration is returned.
getDistributionConfig ::
  -- | 'gdcId'
  Text ->
  GetDistributionConfig
getDistributionConfig pId_ =
  GetDistributionConfig' {_gdcId = pId_}

-- | The distribution's ID. If the ID is empty, an empty distribution configuration is returned.
gdcId :: Lens' GetDistributionConfig Text
gdcId = lens _gdcId (\s a -> s {_gdcId = a})

instance AWSRequest GetDistributionConfig where
  type
    Rs GetDistributionConfig =
      GetDistributionConfigResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetDistributionConfigResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDistributionConfig

instance NFData GetDistributionConfig

instance ToHeaders GetDistributionConfig where
  toHeaders = const mempty

instance ToPath GetDistributionConfig where
  toPath GetDistributionConfig' {..} =
    mconcat
      ["/2020-05-31/distribution/", toBS _gdcId, "/config"]

instance ToQuery GetDistributionConfig where
  toQuery = const mempty

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'getDistributionConfigResponse' smart constructor.
data GetDistributionConfigResponse = GetDistributionConfigResponse'
  { _gdcrrsETag ::
      !( Maybe
           Text
       ),
    _gdcrrsDistributionConfig ::
      !( Maybe
           DistributionConfig
       ),
    _gdcrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetDistributionConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdcrrsETag' - The current version of the configuration. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'gdcrrsDistributionConfig' - The distribution's configuration information.
--
-- * 'gdcrrsResponseStatus' - -- | The response status code.
getDistributionConfigResponse ::
  -- | 'gdcrrsResponseStatus'
  Int ->
  GetDistributionConfigResponse
getDistributionConfigResponse pResponseStatus_ =
  GetDistributionConfigResponse'
    { _gdcrrsETag =
        Nothing,
      _gdcrrsDistributionConfig = Nothing,
      _gdcrrsResponseStatus = pResponseStatus_
    }

-- | The current version of the configuration. For example: @E2QWRUHAPOMQZL@ .
gdcrrsETag :: Lens' GetDistributionConfigResponse (Maybe Text)
gdcrrsETag = lens _gdcrrsETag (\s a -> s {_gdcrrsETag = a})

-- | The distribution's configuration information.
gdcrrsDistributionConfig :: Lens' GetDistributionConfigResponse (Maybe DistributionConfig)
gdcrrsDistributionConfig = lens _gdcrrsDistributionConfig (\s a -> s {_gdcrrsDistributionConfig = a})

-- | -- | The response status code.
gdcrrsResponseStatus :: Lens' GetDistributionConfigResponse Int
gdcrrsResponseStatus = lens _gdcrrsResponseStatus (\s a -> s {_gdcrrsResponseStatus = a})

instance NFData GetDistributionConfigResponse
