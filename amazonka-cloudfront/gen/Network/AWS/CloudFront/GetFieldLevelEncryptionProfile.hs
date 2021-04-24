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
-- Module      : Network.AWS.CloudFront.GetFieldLevelEncryptionProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the field-level encryption profile information.
module Network.AWS.CloudFront.GetFieldLevelEncryptionProfile
  ( -- * Creating a Request
    getFieldLevelEncryptionProfile,
    GetFieldLevelEncryptionProfile,

    -- * Request Lenses
    gflepId,

    -- * Destructuring the Response
    getFieldLevelEncryptionProfileResponse,
    GetFieldLevelEncryptionProfileResponse,

    -- * Response Lenses
    gfleprrsETag,
    gfleprrsFieldLevelEncryptionProfile,
    gfleprrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFieldLevelEncryptionProfile' smart constructor.
newtype GetFieldLevelEncryptionProfile = GetFieldLevelEncryptionProfile'
  { _gflepId ::
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

-- | Creates a value of 'GetFieldLevelEncryptionProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gflepId' - Get the ID for the field-level encryption profile information.
getFieldLevelEncryptionProfile ::
  -- | 'gflepId'
  Text ->
  GetFieldLevelEncryptionProfile
getFieldLevelEncryptionProfile pId_ =
  GetFieldLevelEncryptionProfile' {_gflepId = pId_}

-- | Get the ID for the field-level encryption profile information.
gflepId :: Lens' GetFieldLevelEncryptionProfile Text
gflepId = lens _gflepId (\s a -> s {_gflepId = a})

instance AWSRequest GetFieldLevelEncryptionProfile where
  type
    Rs GetFieldLevelEncryptionProfile =
      GetFieldLevelEncryptionProfileResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetFieldLevelEncryptionProfileResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetFieldLevelEncryptionProfile

instance NFData GetFieldLevelEncryptionProfile

instance ToHeaders GetFieldLevelEncryptionProfile where
  toHeaders = const mempty

instance ToPath GetFieldLevelEncryptionProfile where
  toPath GetFieldLevelEncryptionProfile' {..} =
    mconcat
      [ "/2020-05-31/field-level-encryption-profile/",
        toBS _gflepId
      ]

instance ToQuery GetFieldLevelEncryptionProfile where
  toQuery = const mempty

-- | /See:/ 'getFieldLevelEncryptionProfileResponse' smart constructor.
data GetFieldLevelEncryptionProfileResponse = GetFieldLevelEncryptionProfileResponse'
  { _gfleprrsETag ::
      !( Maybe
           Text
       ),
    _gfleprrsFieldLevelEncryptionProfile ::
      !( Maybe
           FieldLevelEncryptionProfile
       ),
    _gfleprrsResponseStatus ::
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

-- | Creates a value of 'GetFieldLevelEncryptionProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfleprrsETag' - The current version of the field level encryption profile. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'gfleprrsFieldLevelEncryptionProfile' - Return the field-level encryption profile information.
--
-- * 'gfleprrsResponseStatus' - -- | The response status code.
getFieldLevelEncryptionProfileResponse ::
  -- | 'gfleprrsResponseStatus'
  Int ->
  GetFieldLevelEncryptionProfileResponse
getFieldLevelEncryptionProfileResponse
  pResponseStatus_ =
    GetFieldLevelEncryptionProfileResponse'
      { _gfleprrsETag =
          Nothing,
        _gfleprrsFieldLevelEncryptionProfile =
          Nothing,
        _gfleprrsResponseStatus =
          pResponseStatus_
      }

-- | The current version of the field level encryption profile. For example: @E2QWRUHAPOMQZL@ .
gfleprrsETag :: Lens' GetFieldLevelEncryptionProfileResponse (Maybe Text)
gfleprrsETag = lens _gfleprrsETag (\s a -> s {_gfleprrsETag = a})

-- | Return the field-level encryption profile information.
gfleprrsFieldLevelEncryptionProfile :: Lens' GetFieldLevelEncryptionProfileResponse (Maybe FieldLevelEncryptionProfile)
gfleprrsFieldLevelEncryptionProfile = lens _gfleprrsFieldLevelEncryptionProfile (\s a -> s {_gfleprrsFieldLevelEncryptionProfile = a})

-- | -- | The response status code.
gfleprrsResponseStatus :: Lens' GetFieldLevelEncryptionProfileResponse Int
gfleprrsResponseStatus = lens _gfleprrsResponseStatus (\s a -> s {_gfleprrsResponseStatus = a})

instance
  NFData
    GetFieldLevelEncryptionProfileResponse
