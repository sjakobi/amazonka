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
-- Module      : Network.AWS.CloudFront.CreateFieldLevelEncryptionProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a field-level encryption profile.
module Network.AWS.CloudFront.CreateFieldLevelEncryptionProfile
  ( -- * Creating a Request
    createFieldLevelEncryptionProfile,
    CreateFieldLevelEncryptionProfile,

    -- * Request Lenses
    cflepFieldLevelEncryptionProfileConfig,

    -- * Destructuring the Response
    createFieldLevelEncryptionProfileResponse,
    CreateFieldLevelEncryptionProfileResponse,

    -- * Response Lenses
    cfleprrsETag,
    cfleprrsFieldLevelEncryptionProfile,
    cfleprrsLocation,
    cfleprrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createFieldLevelEncryptionProfile' smart constructor.
newtype CreateFieldLevelEncryptionProfile = CreateFieldLevelEncryptionProfile'
  { _cflepFieldLevelEncryptionProfileConfig ::
      FieldLevelEncryptionProfileConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateFieldLevelEncryptionProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cflepFieldLevelEncryptionProfileConfig' - The request to create a field-level encryption profile.
createFieldLevelEncryptionProfile ::
  -- | 'cflepFieldLevelEncryptionProfileConfig'
  FieldLevelEncryptionProfileConfig ->
  CreateFieldLevelEncryptionProfile
createFieldLevelEncryptionProfile
  pFieldLevelEncryptionProfileConfig_ =
    CreateFieldLevelEncryptionProfile'
      { _cflepFieldLevelEncryptionProfileConfig =
          pFieldLevelEncryptionProfileConfig_
      }

-- | The request to create a field-level encryption profile.
cflepFieldLevelEncryptionProfileConfig :: Lens' CreateFieldLevelEncryptionProfile FieldLevelEncryptionProfileConfig
cflepFieldLevelEncryptionProfileConfig = lens _cflepFieldLevelEncryptionProfileConfig (\s a -> s {_cflepFieldLevelEncryptionProfileConfig = a})

instance AWSRequest CreateFieldLevelEncryptionProfile where
  type
    Rs CreateFieldLevelEncryptionProfile =
      CreateFieldLevelEncryptionProfileResponse
  request = postXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          CreateFieldLevelEncryptionProfileResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (h .#? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateFieldLevelEncryptionProfile

instance NFData CreateFieldLevelEncryptionProfile

instance ToElement CreateFieldLevelEncryptionProfile where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}FieldLevelEncryptionProfileConfig"
      . _cflepFieldLevelEncryptionProfileConfig

instance ToHeaders CreateFieldLevelEncryptionProfile where
  toHeaders = const mempty

instance ToPath CreateFieldLevelEncryptionProfile where
  toPath =
    const "/2020-05-31/field-level-encryption-profile"

instance ToQuery CreateFieldLevelEncryptionProfile where
  toQuery = const mempty

-- | /See:/ 'createFieldLevelEncryptionProfileResponse' smart constructor.
data CreateFieldLevelEncryptionProfileResponse = CreateFieldLevelEncryptionProfileResponse'
  { _cfleprrsETag ::
      !( Maybe
           Text
       ),
    _cfleprrsFieldLevelEncryptionProfile ::
      !( Maybe
           FieldLevelEncryptionProfile
       ),
    _cfleprrsLocation ::
      !( Maybe
           Text
       ),
    _cfleprrsResponseStatus ::
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

-- | Creates a value of 'CreateFieldLevelEncryptionProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfleprrsETag' - The current version of the field level encryption profile. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'cfleprrsFieldLevelEncryptionProfile' - Returned when you create a new field-level encryption profile.
--
-- * 'cfleprrsLocation' - The fully qualified URI of the new profile resource just created.
--
-- * 'cfleprrsResponseStatus' - -- | The response status code.
createFieldLevelEncryptionProfileResponse ::
  -- | 'cfleprrsResponseStatus'
  Int ->
  CreateFieldLevelEncryptionProfileResponse
createFieldLevelEncryptionProfileResponse
  pResponseStatus_ =
    CreateFieldLevelEncryptionProfileResponse'
      { _cfleprrsETag =
          Nothing,
        _cfleprrsFieldLevelEncryptionProfile =
          Nothing,
        _cfleprrsLocation = Nothing,
        _cfleprrsResponseStatus =
          pResponseStatus_
      }

-- | The current version of the field level encryption profile. For example: @E2QWRUHAPOMQZL@ .
cfleprrsETag :: Lens' CreateFieldLevelEncryptionProfileResponse (Maybe Text)
cfleprrsETag = lens _cfleprrsETag (\s a -> s {_cfleprrsETag = a})

-- | Returned when you create a new field-level encryption profile.
cfleprrsFieldLevelEncryptionProfile :: Lens' CreateFieldLevelEncryptionProfileResponse (Maybe FieldLevelEncryptionProfile)
cfleprrsFieldLevelEncryptionProfile = lens _cfleprrsFieldLevelEncryptionProfile (\s a -> s {_cfleprrsFieldLevelEncryptionProfile = a})

-- | The fully qualified URI of the new profile resource just created.
cfleprrsLocation :: Lens' CreateFieldLevelEncryptionProfileResponse (Maybe Text)
cfleprrsLocation = lens _cfleprrsLocation (\s a -> s {_cfleprrsLocation = a})

-- | -- | The response status code.
cfleprrsResponseStatus :: Lens' CreateFieldLevelEncryptionProfileResponse Int
cfleprrsResponseStatus = lens _cfleprrsResponseStatus (\s a -> s {_cfleprrsResponseStatus = a})

instance
  NFData
    CreateFieldLevelEncryptionProfileResponse
