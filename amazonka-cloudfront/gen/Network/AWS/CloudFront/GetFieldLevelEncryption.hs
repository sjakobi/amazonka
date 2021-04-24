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
-- Module      : Network.AWS.CloudFront.GetFieldLevelEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the field-level encryption configuration information.
module Network.AWS.CloudFront.GetFieldLevelEncryption
  ( -- * Creating a Request
    getFieldLevelEncryption,
    GetFieldLevelEncryption,

    -- * Request Lenses
    gfleId,

    -- * Destructuring the Response
    getFieldLevelEncryptionResponse,
    GetFieldLevelEncryptionResponse,

    -- * Response Lenses
    gflerrsETag,
    gflerrsFieldLevelEncryption,
    gflerrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFieldLevelEncryption' smart constructor.
newtype GetFieldLevelEncryption = GetFieldLevelEncryption'
  { _gfleId ::
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

-- | Creates a value of 'GetFieldLevelEncryption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfleId' - Request the ID for the field-level encryption configuration information.
getFieldLevelEncryption ::
  -- | 'gfleId'
  Text ->
  GetFieldLevelEncryption
getFieldLevelEncryption pId_ =
  GetFieldLevelEncryption' {_gfleId = pId_}

-- | Request the ID for the field-level encryption configuration information.
gfleId :: Lens' GetFieldLevelEncryption Text
gfleId = lens _gfleId (\s a -> s {_gfleId = a})

instance AWSRequest GetFieldLevelEncryption where
  type
    Rs GetFieldLevelEncryption =
      GetFieldLevelEncryptionResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetFieldLevelEncryptionResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetFieldLevelEncryption

instance NFData GetFieldLevelEncryption

instance ToHeaders GetFieldLevelEncryption where
  toHeaders = const mempty

instance ToPath GetFieldLevelEncryption where
  toPath GetFieldLevelEncryption' {..} =
    mconcat
      ["/2020-05-31/field-level-encryption/", toBS _gfleId]

instance ToQuery GetFieldLevelEncryption where
  toQuery = const mempty

-- | /See:/ 'getFieldLevelEncryptionResponse' smart constructor.
data GetFieldLevelEncryptionResponse = GetFieldLevelEncryptionResponse'
  { _gflerrsETag ::
      !( Maybe
           Text
       ),
    _gflerrsFieldLevelEncryption ::
      !( Maybe
           FieldLevelEncryption
       ),
    _gflerrsResponseStatus ::
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

-- | Creates a value of 'GetFieldLevelEncryptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gflerrsETag' - The current version of the field level encryption configuration. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'gflerrsFieldLevelEncryption' - Return the field-level encryption configuration information.
--
-- * 'gflerrsResponseStatus' - -- | The response status code.
getFieldLevelEncryptionResponse ::
  -- | 'gflerrsResponseStatus'
  Int ->
  GetFieldLevelEncryptionResponse
getFieldLevelEncryptionResponse pResponseStatus_ =
  GetFieldLevelEncryptionResponse'
    { _gflerrsETag =
        Nothing,
      _gflerrsFieldLevelEncryption = Nothing,
      _gflerrsResponseStatus = pResponseStatus_
    }

-- | The current version of the field level encryption configuration. For example: @E2QWRUHAPOMQZL@ .
gflerrsETag :: Lens' GetFieldLevelEncryptionResponse (Maybe Text)
gflerrsETag = lens _gflerrsETag (\s a -> s {_gflerrsETag = a})

-- | Return the field-level encryption configuration information.
gflerrsFieldLevelEncryption :: Lens' GetFieldLevelEncryptionResponse (Maybe FieldLevelEncryption)
gflerrsFieldLevelEncryption = lens _gflerrsFieldLevelEncryption (\s a -> s {_gflerrsFieldLevelEncryption = a})

-- | -- | The response status code.
gflerrsResponseStatus :: Lens' GetFieldLevelEncryptionResponse Int
gflerrsResponseStatus = lens _gflerrsResponseStatus (\s a -> s {_gflerrsResponseStatus = a})

instance NFData GetFieldLevelEncryptionResponse
