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
-- Module      : Network.AWS.CloudFront.CreateFieldLevelEncryptionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new field-level encryption configuration.
module Network.AWS.CloudFront.CreateFieldLevelEncryptionConfig
  ( -- * Creating a Request
    createFieldLevelEncryptionConfig,
    CreateFieldLevelEncryptionConfig,

    -- * Request Lenses
    cflecFieldLevelEncryptionConfig,

    -- * Destructuring the Response
    createFieldLevelEncryptionConfigResponse,
    CreateFieldLevelEncryptionConfigResponse,

    -- * Response Lenses
    cflecrrsETag,
    cflecrrsFieldLevelEncryption,
    cflecrrsLocation,
    cflecrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createFieldLevelEncryptionConfig' smart constructor.
newtype CreateFieldLevelEncryptionConfig = CreateFieldLevelEncryptionConfig'
  { _cflecFieldLevelEncryptionConfig ::
      FieldLevelEncryptionConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateFieldLevelEncryptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cflecFieldLevelEncryptionConfig' - The request to create a new field-level encryption configuration.
createFieldLevelEncryptionConfig ::
  -- | 'cflecFieldLevelEncryptionConfig'
  FieldLevelEncryptionConfig ->
  CreateFieldLevelEncryptionConfig
createFieldLevelEncryptionConfig
  pFieldLevelEncryptionConfig_ =
    CreateFieldLevelEncryptionConfig'
      { _cflecFieldLevelEncryptionConfig =
          pFieldLevelEncryptionConfig_
      }

-- | The request to create a new field-level encryption configuration.
cflecFieldLevelEncryptionConfig :: Lens' CreateFieldLevelEncryptionConfig FieldLevelEncryptionConfig
cflecFieldLevelEncryptionConfig = lens _cflecFieldLevelEncryptionConfig (\s a -> s {_cflecFieldLevelEncryptionConfig = a})

instance AWSRequest CreateFieldLevelEncryptionConfig where
  type
    Rs CreateFieldLevelEncryptionConfig =
      CreateFieldLevelEncryptionConfigResponse
  request = postXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          CreateFieldLevelEncryptionConfigResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (h .#? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateFieldLevelEncryptionConfig

instance NFData CreateFieldLevelEncryptionConfig

instance ToElement CreateFieldLevelEncryptionConfig where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}FieldLevelEncryptionConfig"
      . _cflecFieldLevelEncryptionConfig

instance ToHeaders CreateFieldLevelEncryptionConfig where
  toHeaders = const mempty

instance ToPath CreateFieldLevelEncryptionConfig where
  toPath = const "/2020-05-31/field-level-encryption"

instance ToQuery CreateFieldLevelEncryptionConfig where
  toQuery = const mempty

-- | /See:/ 'createFieldLevelEncryptionConfigResponse' smart constructor.
data CreateFieldLevelEncryptionConfigResponse = CreateFieldLevelEncryptionConfigResponse'
  { _cflecrrsETag ::
      !( Maybe
           Text
       ),
    _cflecrrsFieldLevelEncryption ::
      !( Maybe
           FieldLevelEncryption
       ),
    _cflecrrsLocation ::
      !( Maybe
           Text
       ),
    _cflecrrsResponseStatus ::
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

-- | Creates a value of 'CreateFieldLevelEncryptionConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cflecrrsETag' - The current version of the field level encryption configuration. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'cflecrrsFieldLevelEncryption' - Returned when you create a new field-level encryption configuration.
--
-- * 'cflecrrsLocation' - The fully qualified URI of the new configuration resource just created.
--
-- * 'cflecrrsResponseStatus' - -- | The response status code.
createFieldLevelEncryptionConfigResponse ::
  -- | 'cflecrrsResponseStatus'
  Int ->
  CreateFieldLevelEncryptionConfigResponse
createFieldLevelEncryptionConfigResponse
  pResponseStatus_ =
    CreateFieldLevelEncryptionConfigResponse'
      { _cflecrrsETag =
          Nothing,
        _cflecrrsFieldLevelEncryption =
          Nothing,
        _cflecrrsLocation = Nothing,
        _cflecrrsResponseStatus =
          pResponseStatus_
      }

-- | The current version of the field level encryption configuration. For example: @E2QWRUHAPOMQZL@ .
cflecrrsETag :: Lens' CreateFieldLevelEncryptionConfigResponse (Maybe Text)
cflecrrsETag = lens _cflecrrsETag (\s a -> s {_cflecrrsETag = a})

-- | Returned when you create a new field-level encryption configuration.
cflecrrsFieldLevelEncryption :: Lens' CreateFieldLevelEncryptionConfigResponse (Maybe FieldLevelEncryption)
cflecrrsFieldLevelEncryption = lens _cflecrrsFieldLevelEncryption (\s a -> s {_cflecrrsFieldLevelEncryption = a})

-- | The fully qualified URI of the new configuration resource just created.
cflecrrsLocation :: Lens' CreateFieldLevelEncryptionConfigResponse (Maybe Text)
cflecrrsLocation = lens _cflecrrsLocation (\s a -> s {_cflecrrsLocation = a})

-- | -- | The response status code.
cflecrrsResponseStatus :: Lens' CreateFieldLevelEncryptionConfigResponse Int
cflecrrsResponseStatus = lens _cflecrrsResponseStatus (\s a -> s {_cflecrrsResponseStatus = a})

instance
  NFData
    CreateFieldLevelEncryptionConfigResponse
