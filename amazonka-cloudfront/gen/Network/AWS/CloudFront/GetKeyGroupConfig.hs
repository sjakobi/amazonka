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
-- Module      : Network.AWS.CloudFront.GetKeyGroupConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a key group configuration.
--
--
-- To get a key group configuration, you must provide the key group’s identifier. If the key group is referenced in a distribution’s cache behavior, you can get the key group’s identifier using @ListDistributions@ or @GetDistribution@ . If the key group is not referenced in a cache behavior, you can get the identifier using @ListKeyGroups@ .
module Network.AWS.CloudFront.GetKeyGroupConfig
  ( -- * Creating a Request
    getKeyGroupConfig,
    GetKeyGroupConfig,

    -- * Request Lenses
    gkgcId,

    -- * Destructuring the Response
    getKeyGroupConfigResponse,
    GetKeyGroupConfigResponse,

    -- * Response Lenses
    gkgcrrsETag,
    gkgcrrsKeyGroupConfig,
    gkgcrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getKeyGroupConfig' smart constructor.
newtype GetKeyGroupConfig = GetKeyGroupConfig'
  { _gkgcId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetKeyGroupConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gkgcId' - The identifier of the key group whose configuration you are getting. To get the identifier, use @ListKeyGroups@ .
getKeyGroupConfig ::
  -- | 'gkgcId'
  Text ->
  GetKeyGroupConfig
getKeyGroupConfig pId_ =
  GetKeyGroupConfig' {_gkgcId = pId_}

-- | The identifier of the key group whose configuration you are getting. To get the identifier, use @ListKeyGroups@ .
gkgcId :: Lens' GetKeyGroupConfig Text
gkgcId = lens _gkgcId (\s a -> s {_gkgcId = a})

instance AWSRequest GetKeyGroupConfig where
  type Rs GetKeyGroupConfig = GetKeyGroupConfigResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetKeyGroupConfigResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetKeyGroupConfig

instance NFData GetKeyGroupConfig

instance ToHeaders GetKeyGroupConfig where
  toHeaders = const mempty

instance ToPath GetKeyGroupConfig where
  toPath GetKeyGroupConfig' {..} =
    mconcat
      ["/2020-05-31/key-group/", toBS _gkgcId, "/config"]

instance ToQuery GetKeyGroupConfig where
  toQuery = const mempty

-- | /See:/ 'getKeyGroupConfigResponse' smart constructor.
data GetKeyGroupConfigResponse = GetKeyGroupConfigResponse'
  { _gkgcrrsETag ::
      !(Maybe Text),
    _gkgcrrsKeyGroupConfig ::
      !( Maybe
           KeyGroupConfig
       ),
    _gkgcrrsResponseStatus ::
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

-- | Creates a value of 'GetKeyGroupConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gkgcrrsETag' - The identifier for this version of the key group.
--
-- * 'gkgcrrsKeyGroupConfig' - The key group configuration.
--
-- * 'gkgcrrsResponseStatus' - -- | The response status code.
getKeyGroupConfigResponse ::
  -- | 'gkgcrrsResponseStatus'
  Int ->
  GetKeyGroupConfigResponse
getKeyGroupConfigResponse pResponseStatus_ =
  GetKeyGroupConfigResponse'
    { _gkgcrrsETag = Nothing,
      _gkgcrrsKeyGroupConfig = Nothing,
      _gkgcrrsResponseStatus = pResponseStatus_
    }

-- | The identifier for this version of the key group.
gkgcrrsETag :: Lens' GetKeyGroupConfigResponse (Maybe Text)
gkgcrrsETag = lens _gkgcrrsETag (\s a -> s {_gkgcrrsETag = a})

-- | The key group configuration.
gkgcrrsKeyGroupConfig :: Lens' GetKeyGroupConfigResponse (Maybe KeyGroupConfig)
gkgcrrsKeyGroupConfig = lens _gkgcrrsKeyGroupConfig (\s a -> s {_gkgcrrsKeyGroupConfig = a})

-- | -- | The response status code.
gkgcrrsResponseStatus :: Lens' GetKeyGroupConfigResponse Int
gkgcrrsResponseStatus = lens _gkgcrrsResponseStatus (\s a -> s {_gkgcrrsResponseStatus = a})

instance NFData GetKeyGroupConfigResponse
