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
-- Module      : Network.AWS.CloudFront.UpdateFieldLevelEncryptionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a field-level encryption configuration.
module Network.AWS.CloudFront.UpdateFieldLevelEncryptionConfig
  ( -- * Creating a Request
    updateFieldLevelEncryptionConfig,
    UpdateFieldLevelEncryptionConfig,

    -- * Request Lenses
    uflecIfMatch,
    uflecFieldLevelEncryptionConfig,
    uflecId,

    -- * Destructuring the Response
    updateFieldLevelEncryptionConfigResponse,
    UpdateFieldLevelEncryptionConfigResponse,

    -- * Response Lenses
    uflecrrsETag,
    uflecrrsFieldLevelEncryption,
    uflecrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateFieldLevelEncryptionConfig' smart constructor.
data UpdateFieldLevelEncryptionConfig = UpdateFieldLevelEncryptionConfig'
  { _uflecIfMatch ::
      !( Maybe
           Text
       ),
    _uflecFieldLevelEncryptionConfig ::
      !FieldLevelEncryptionConfig,
    _uflecId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateFieldLevelEncryptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uflecIfMatch' - The value of the @ETag@ header that you received when retrieving the configuration identity to update. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'uflecFieldLevelEncryptionConfig' - Request to update a field-level encryption configuration.
--
-- * 'uflecId' - The ID of the configuration you want to update.
updateFieldLevelEncryptionConfig ::
  -- | 'uflecFieldLevelEncryptionConfig'
  FieldLevelEncryptionConfig ->
  -- | 'uflecId'
  Text ->
  UpdateFieldLevelEncryptionConfig
updateFieldLevelEncryptionConfig
  pFieldLevelEncryptionConfig_
  pId_ =
    UpdateFieldLevelEncryptionConfig'
      { _uflecIfMatch =
          Nothing,
        _uflecFieldLevelEncryptionConfig =
          pFieldLevelEncryptionConfig_,
        _uflecId = pId_
      }

-- | The value of the @ETag@ header that you received when retrieving the configuration identity to update. For example: @E2QWRUHAPOMQZL@ .
uflecIfMatch :: Lens' UpdateFieldLevelEncryptionConfig (Maybe Text)
uflecIfMatch = lens _uflecIfMatch (\s a -> s {_uflecIfMatch = a})

-- | Request to update a field-level encryption configuration.
uflecFieldLevelEncryptionConfig :: Lens' UpdateFieldLevelEncryptionConfig FieldLevelEncryptionConfig
uflecFieldLevelEncryptionConfig = lens _uflecFieldLevelEncryptionConfig (\s a -> s {_uflecFieldLevelEncryptionConfig = a})

-- | The ID of the configuration you want to update.
uflecId :: Lens' UpdateFieldLevelEncryptionConfig Text
uflecId = lens _uflecId (\s a -> s {_uflecId = a})

instance AWSRequest UpdateFieldLevelEncryptionConfig where
  type
    Rs UpdateFieldLevelEncryptionConfig =
      UpdateFieldLevelEncryptionConfigResponse
  request = putXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          UpdateFieldLevelEncryptionConfigResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateFieldLevelEncryptionConfig

instance NFData UpdateFieldLevelEncryptionConfig

instance ToElement UpdateFieldLevelEncryptionConfig where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}FieldLevelEncryptionConfig"
      . _uflecFieldLevelEncryptionConfig

instance ToHeaders UpdateFieldLevelEncryptionConfig where
  toHeaders UpdateFieldLevelEncryptionConfig' {..} =
    mconcat ["If-Match" =# _uflecIfMatch]

instance ToPath UpdateFieldLevelEncryptionConfig where
  toPath UpdateFieldLevelEncryptionConfig' {..} =
    mconcat
      [ "/2020-05-31/field-level-encryption/",
        toBS _uflecId,
        "/config"
      ]

instance ToQuery UpdateFieldLevelEncryptionConfig where
  toQuery = const mempty

-- | /See:/ 'updateFieldLevelEncryptionConfigResponse' smart constructor.
data UpdateFieldLevelEncryptionConfigResponse = UpdateFieldLevelEncryptionConfigResponse'
  { _uflecrrsETag ::
      !( Maybe
           Text
       ),
    _uflecrrsFieldLevelEncryption ::
      !( Maybe
           FieldLevelEncryption
       ),
    _uflecrrsResponseStatus ::
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

-- | Creates a value of 'UpdateFieldLevelEncryptionConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uflecrrsETag' - The value of the @ETag@ header that you received when updating the configuration. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'uflecrrsFieldLevelEncryption' - Return the results of updating the configuration.
--
-- * 'uflecrrsResponseStatus' - -- | The response status code.
updateFieldLevelEncryptionConfigResponse ::
  -- | 'uflecrrsResponseStatus'
  Int ->
  UpdateFieldLevelEncryptionConfigResponse
updateFieldLevelEncryptionConfigResponse
  pResponseStatus_ =
    UpdateFieldLevelEncryptionConfigResponse'
      { _uflecrrsETag =
          Nothing,
        _uflecrrsFieldLevelEncryption =
          Nothing,
        _uflecrrsResponseStatus =
          pResponseStatus_
      }

-- | The value of the @ETag@ header that you received when updating the configuration. For example: @E2QWRUHAPOMQZL@ .
uflecrrsETag :: Lens' UpdateFieldLevelEncryptionConfigResponse (Maybe Text)
uflecrrsETag = lens _uflecrrsETag (\s a -> s {_uflecrrsETag = a})

-- | Return the results of updating the configuration.
uflecrrsFieldLevelEncryption :: Lens' UpdateFieldLevelEncryptionConfigResponse (Maybe FieldLevelEncryption)
uflecrrsFieldLevelEncryption = lens _uflecrrsFieldLevelEncryption (\s a -> s {_uflecrrsFieldLevelEncryption = a})

-- | -- | The response status code.
uflecrrsResponseStatus :: Lens' UpdateFieldLevelEncryptionConfigResponse Int
uflecrrsResponseStatus = lens _uflecrrsResponseStatus (\s a -> s {_uflecrrsResponseStatus = a})

instance
  NFData
    UpdateFieldLevelEncryptionConfigResponse
