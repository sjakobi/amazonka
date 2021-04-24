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
-- Module      : Network.AWS.XRay.GetEncryptionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the current encryption configuration for X-Ray data.
module Network.AWS.XRay.GetEncryptionConfig
  ( -- * Creating a Request
    getEncryptionConfig,
    GetEncryptionConfig,

    -- * Destructuring the Response
    getEncryptionConfigResponse,
    GetEncryptionConfigResponse,

    -- * Response Lenses
    gecrrsEncryptionConfig,
    gecrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getEncryptionConfig' smart constructor.
data GetEncryptionConfig = GetEncryptionConfig'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetEncryptionConfig' with the minimum fields required to make a request.
getEncryptionConfig ::
  GetEncryptionConfig
getEncryptionConfig = GetEncryptionConfig'

instance AWSRequest GetEncryptionConfig where
  type
    Rs GetEncryptionConfig =
      GetEncryptionConfigResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          GetEncryptionConfigResponse'
            <$> (x .?> "EncryptionConfig") <*> (pure (fromEnum s))
      )

instance Hashable GetEncryptionConfig

instance NFData GetEncryptionConfig

instance ToHeaders GetEncryptionConfig where
  toHeaders = const mempty

instance ToJSON GetEncryptionConfig where
  toJSON = const (Object mempty)

instance ToPath GetEncryptionConfig where
  toPath = const "/EncryptionConfig"

instance ToQuery GetEncryptionConfig where
  toQuery = const mempty

-- | /See:/ 'getEncryptionConfigResponse' smart constructor.
data GetEncryptionConfigResponse = GetEncryptionConfigResponse'
  { _gecrrsEncryptionConfig ::
      !( Maybe
           EncryptionConfig
       ),
    _gecrrsResponseStatus ::
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

-- | Creates a value of 'GetEncryptionConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gecrrsEncryptionConfig' - The encryption configuration document.
--
-- * 'gecrrsResponseStatus' - -- | The response status code.
getEncryptionConfigResponse ::
  -- | 'gecrrsResponseStatus'
  Int ->
  GetEncryptionConfigResponse
getEncryptionConfigResponse pResponseStatus_ =
  GetEncryptionConfigResponse'
    { _gecrrsEncryptionConfig =
        Nothing,
      _gecrrsResponseStatus = pResponseStatus_
    }

-- | The encryption configuration document.
gecrrsEncryptionConfig :: Lens' GetEncryptionConfigResponse (Maybe EncryptionConfig)
gecrrsEncryptionConfig = lens _gecrrsEncryptionConfig (\s a -> s {_gecrrsEncryptionConfig = a})

-- | -- | The response status code.
gecrrsResponseStatus :: Lens' GetEncryptionConfigResponse Int
gecrrsResponseStatus = lens _gecrrsResponseStatus (\s a -> s {_gecrrsResponseStatus = a})

instance NFData GetEncryptionConfigResponse
