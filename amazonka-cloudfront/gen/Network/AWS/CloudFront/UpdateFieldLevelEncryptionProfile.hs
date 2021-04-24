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
-- Module      : Network.AWS.CloudFront.UpdateFieldLevelEncryptionProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a field-level encryption profile.
module Network.AWS.CloudFront.UpdateFieldLevelEncryptionProfile
  ( -- * Creating a Request
    updateFieldLevelEncryptionProfile,
    UpdateFieldLevelEncryptionProfile,

    -- * Request Lenses
    uflepIfMatch,
    uflepFieldLevelEncryptionProfileConfig,
    uflepId,

    -- * Destructuring the Response
    updateFieldLevelEncryptionProfileResponse,
    UpdateFieldLevelEncryptionProfileResponse,

    -- * Response Lenses
    ufleprrsETag,
    ufleprrsFieldLevelEncryptionProfile,
    ufleprrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateFieldLevelEncryptionProfile' smart constructor.
data UpdateFieldLevelEncryptionProfile = UpdateFieldLevelEncryptionProfile'
  { _uflepIfMatch ::
      !( Maybe
           Text
       ),
    _uflepFieldLevelEncryptionProfileConfig ::
      !FieldLevelEncryptionProfileConfig,
    _uflepId ::
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

-- | Creates a value of 'UpdateFieldLevelEncryptionProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uflepIfMatch' - The value of the @ETag@ header that you received when retrieving the profile identity to update. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'uflepFieldLevelEncryptionProfileConfig' - Request to update a field-level encryption profile.
--
-- * 'uflepId' - The ID of the field-level encryption profile request.
updateFieldLevelEncryptionProfile ::
  -- | 'uflepFieldLevelEncryptionProfileConfig'
  FieldLevelEncryptionProfileConfig ->
  -- | 'uflepId'
  Text ->
  UpdateFieldLevelEncryptionProfile
updateFieldLevelEncryptionProfile
  pFieldLevelEncryptionProfileConfig_
  pId_ =
    UpdateFieldLevelEncryptionProfile'
      { _uflepIfMatch =
          Nothing,
        _uflepFieldLevelEncryptionProfileConfig =
          pFieldLevelEncryptionProfileConfig_,
        _uflepId = pId_
      }

-- | The value of the @ETag@ header that you received when retrieving the profile identity to update. For example: @E2QWRUHAPOMQZL@ .
uflepIfMatch :: Lens' UpdateFieldLevelEncryptionProfile (Maybe Text)
uflepIfMatch = lens _uflepIfMatch (\s a -> s {_uflepIfMatch = a})

-- | Request to update a field-level encryption profile.
uflepFieldLevelEncryptionProfileConfig :: Lens' UpdateFieldLevelEncryptionProfile FieldLevelEncryptionProfileConfig
uflepFieldLevelEncryptionProfileConfig = lens _uflepFieldLevelEncryptionProfileConfig (\s a -> s {_uflepFieldLevelEncryptionProfileConfig = a})

-- | The ID of the field-level encryption profile request.
uflepId :: Lens' UpdateFieldLevelEncryptionProfile Text
uflepId = lens _uflepId (\s a -> s {_uflepId = a})

instance AWSRequest UpdateFieldLevelEncryptionProfile where
  type
    Rs UpdateFieldLevelEncryptionProfile =
      UpdateFieldLevelEncryptionProfileResponse
  request = putXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          UpdateFieldLevelEncryptionProfileResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateFieldLevelEncryptionProfile

instance NFData UpdateFieldLevelEncryptionProfile

instance ToElement UpdateFieldLevelEncryptionProfile where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}FieldLevelEncryptionProfileConfig"
      . _uflepFieldLevelEncryptionProfileConfig

instance ToHeaders UpdateFieldLevelEncryptionProfile where
  toHeaders UpdateFieldLevelEncryptionProfile' {..} =
    mconcat ["If-Match" =# _uflepIfMatch]

instance ToPath UpdateFieldLevelEncryptionProfile where
  toPath UpdateFieldLevelEncryptionProfile' {..} =
    mconcat
      [ "/2020-05-31/field-level-encryption-profile/",
        toBS _uflepId,
        "/config"
      ]

instance ToQuery UpdateFieldLevelEncryptionProfile where
  toQuery = const mempty

-- | /See:/ 'updateFieldLevelEncryptionProfileResponse' smart constructor.
data UpdateFieldLevelEncryptionProfileResponse = UpdateFieldLevelEncryptionProfileResponse'
  { _ufleprrsETag ::
      !( Maybe
           Text
       ),
    _ufleprrsFieldLevelEncryptionProfile ::
      !( Maybe
           FieldLevelEncryptionProfile
       ),
    _ufleprrsResponseStatus ::
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

-- | Creates a value of 'UpdateFieldLevelEncryptionProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ufleprrsETag' - The result of the field-level encryption profile request.
--
-- * 'ufleprrsFieldLevelEncryptionProfile' - Return the results of updating the profile.
--
-- * 'ufleprrsResponseStatus' - -- | The response status code.
updateFieldLevelEncryptionProfileResponse ::
  -- | 'ufleprrsResponseStatus'
  Int ->
  UpdateFieldLevelEncryptionProfileResponse
updateFieldLevelEncryptionProfileResponse
  pResponseStatus_ =
    UpdateFieldLevelEncryptionProfileResponse'
      { _ufleprrsETag =
          Nothing,
        _ufleprrsFieldLevelEncryptionProfile =
          Nothing,
        _ufleprrsResponseStatus =
          pResponseStatus_
      }

-- | The result of the field-level encryption profile request.
ufleprrsETag :: Lens' UpdateFieldLevelEncryptionProfileResponse (Maybe Text)
ufleprrsETag = lens _ufleprrsETag (\s a -> s {_ufleprrsETag = a})

-- | Return the results of updating the profile.
ufleprrsFieldLevelEncryptionProfile :: Lens' UpdateFieldLevelEncryptionProfileResponse (Maybe FieldLevelEncryptionProfile)
ufleprrsFieldLevelEncryptionProfile = lens _ufleprrsFieldLevelEncryptionProfile (\s a -> s {_ufleprrsFieldLevelEncryptionProfile = a})

-- | -- | The response status code.
ufleprrsResponseStatus :: Lens' UpdateFieldLevelEncryptionProfileResponse Int
ufleprrsResponseStatus = lens _ufleprrsResponseStatus (\s a -> s {_ufleprrsResponseStatus = a})

instance
  NFData
    UpdateFieldLevelEncryptionProfileResponse
