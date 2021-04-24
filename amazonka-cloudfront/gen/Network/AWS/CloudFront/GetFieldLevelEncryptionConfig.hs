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
-- Module      : Network.AWS.CloudFront.GetFieldLevelEncryptionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the field-level encryption configuration information.
module Network.AWS.CloudFront.GetFieldLevelEncryptionConfig
  ( -- * Creating a Request
    getFieldLevelEncryptionConfig,
    GetFieldLevelEncryptionConfig,

    -- * Request Lenses
    gflecId,

    -- * Destructuring the Response
    getFieldLevelEncryptionConfigResponse,
    GetFieldLevelEncryptionConfigResponse,

    -- * Response Lenses
    gflecrrsETag,
    gflecrrsFieldLevelEncryptionConfig,
    gflecrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFieldLevelEncryptionConfig' smart constructor.
newtype GetFieldLevelEncryptionConfig = GetFieldLevelEncryptionConfig'
  { _gflecId ::
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

-- | Creates a value of 'GetFieldLevelEncryptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gflecId' - Request the ID for the field-level encryption configuration information.
getFieldLevelEncryptionConfig ::
  -- | 'gflecId'
  Text ->
  GetFieldLevelEncryptionConfig
getFieldLevelEncryptionConfig pId_ =
  GetFieldLevelEncryptionConfig' {_gflecId = pId_}

-- | Request the ID for the field-level encryption configuration information.
gflecId :: Lens' GetFieldLevelEncryptionConfig Text
gflecId = lens _gflecId (\s a -> s {_gflecId = a})

instance AWSRequest GetFieldLevelEncryptionConfig where
  type
    Rs GetFieldLevelEncryptionConfig =
      GetFieldLevelEncryptionConfigResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetFieldLevelEncryptionConfigResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetFieldLevelEncryptionConfig

instance NFData GetFieldLevelEncryptionConfig

instance ToHeaders GetFieldLevelEncryptionConfig where
  toHeaders = const mempty

instance ToPath GetFieldLevelEncryptionConfig where
  toPath GetFieldLevelEncryptionConfig' {..} =
    mconcat
      [ "/2020-05-31/field-level-encryption/",
        toBS _gflecId,
        "/config"
      ]

instance ToQuery GetFieldLevelEncryptionConfig where
  toQuery = const mempty

-- | /See:/ 'getFieldLevelEncryptionConfigResponse' smart constructor.
data GetFieldLevelEncryptionConfigResponse = GetFieldLevelEncryptionConfigResponse'
  { _gflecrrsETag ::
      !( Maybe
           Text
       ),
    _gflecrrsFieldLevelEncryptionConfig ::
      !( Maybe
           FieldLevelEncryptionConfig
       ),
    _gflecrrsResponseStatus ::
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

-- | Creates a value of 'GetFieldLevelEncryptionConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gflecrrsETag' - The current version of the field level encryption configuration. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'gflecrrsFieldLevelEncryptionConfig' - Return the field-level encryption configuration information.
--
-- * 'gflecrrsResponseStatus' - -- | The response status code.
getFieldLevelEncryptionConfigResponse ::
  -- | 'gflecrrsResponseStatus'
  Int ->
  GetFieldLevelEncryptionConfigResponse
getFieldLevelEncryptionConfigResponse
  pResponseStatus_ =
    GetFieldLevelEncryptionConfigResponse'
      { _gflecrrsETag =
          Nothing,
        _gflecrrsFieldLevelEncryptionConfig =
          Nothing,
        _gflecrrsResponseStatus =
          pResponseStatus_
      }

-- | The current version of the field level encryption configuration. For example: @E2QWRUHAPOMQZL@ .
gflecrrsETag :: Lens' GetFieldLevelEncryptionConfigResponse (Maybe Text)
gflecrrsETag = lens _gflecrrsETag (\s a -> s {_gflecrrsETag = a})

-- | Return the field-level encryption configuration information.
gflecrrsFieldLevelEncryptionConfig :: Lens' GetFieldLevelEncryptionConfigResponse (Maybe FieldLevelEncryptionConfig)
gflecrrsFieldLevelEncryptionConfig = lens _gflecrrsFieldLevelEncryptionConfig (\s a -> s {_gflecrrsFieldLevelEncryptionConfig = a})

-- | -- | The response status code.
gflecrrsResponseStatus :: Lens' GetFieldLevelEncryptionConfigResponse Int
gflecrrsResponseStatus = lens _gflecrrsResponseStatus (\s a -> s {_gflecrrsResponseStatus = a})

instance NFData GetFieldLevelEncryptionConfigResponse
