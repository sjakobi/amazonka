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
-- Module      : Network.AWS.SageMaker.CreateUserProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user profile. A user profile represents a single user within a domain, and is the main way to reference a "person" for the purposes of sharing, reporting, and other user-oriented features. This entity is created when a user onboards to Amazon SageMaker Studio. If an administrator invites a person by email or imports them from SSO, a user profile is automatically created. A user profile is the primary holder of settings for an individual user and has a reference to the user's private Amazon Elastic File System (EFS) home directory.
module Network.AWS.SageMaker.CreateUserProfile
  ( -- * Creating a Request
    createUserProfile,
    CreateUserProfile,

    -- * Request Lenses
    cupUserSettings,
    cupTags,
    cupSingleSignOnUserIdentifier,
    cupSingleSignOnUserValue,
    cupDomainId,
    cupUserProfileName,

    -- * Destructuring the Response
    createUserProfileResponse,
    CreateUserProfileResponse,

    -- * Response Lenses
    cuprrsUserProfileARN,
    cuprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createUserProfile' smart constructor.
data CreateUserProfile = CreateUserProfile'
  { _cupUserSettings ::
      !(Maybe UserSettings),
    _cupTags :: !(Maybe [Tag]),
    _cupSingleSignOnUserIdentifier ::
      !(Maybe Text),
    _cupSingleSignOnUserValue ::
      !(Maybe Text),
    _cupDomainId :: !Text,
    _cupUserProfileName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateUserProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cupUserSettings' - A collection of settings.
--
-- * 'cupTags' - Each tag consists of a key and an optional value. Tag keys must be unique per resource.
--
-- * 'cupSingleSignOnUserIdentifier' - A specifier for the type of value specified in SingleSignOnUserValue. Currently, the only supported value is "UserName". If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
--
-- * 'cupSingleSignOnUserValue' - The username of the associated AWS Single Sign-On User for this UserProfile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
--
-- * 'cupDomainId' - The ID of the associated Domain.
--
-- * 'cupUserProfileName' - A name for the UserProfile.
createUserProfile ::
  -- | 'cupDomainId'
  Text ->
  -- | 'cupUserProfileName'
  Text ->
  CreateUserProfile
createUserProfile pDomainId_ pUserProfileName_ =
  CreateUserProfile'
    { _cupUserSettings = Nothing,
      _cupTags = Nothing,
      _cupSingleSignOnUserIdentifier = Nothing,
      _cupSingleSignOnUserValue = Nothing,
      _cupDomainId = pDomainId_,
      _cupUserProfileName = pUserProfileName_
    }

-- | A collection of settings.
cupUserSettings :: Lens' CreateUserProfile (Maybe UserSettings)
cupUserSettings = lens _cupUserSettings (\s a -> s {_cupUserSettings = a})

-- | Each tag consists of a key and an optional value. Tag keys must be unique per resource.
cupTags :: Lens' CreateUserProfile [Tag]
cupTags = lens _cupTags (\s a -> s {_cupTags = a}) . _Default . _Coerce

-- | A specifier for the type of value specified in SingleSignOnUserValue. Currently, the only supported value is "UserName". If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
cupSingleSignOnUserIdentifier :: Lens' CreateUserProfile (Maybe Text)
cupSingleSignOnUserIdentifier = lens _cupSingleSignOnUserIdentifier (\s a -> s {_cupSingleSignOnUserIdentifier = a})

-- | The username of the associated AWS Single Sign-On User for this UserProfile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
cupSingleSignOnUserValue :: Lens' CreateUserProfile (Maybe Text)
cupSingleSignOnUserValue = lens _cupSingleSignOnUserValue (\s a -> s {_cupSingleSignOnUserValue = a})

-- | The ID of the associated Domain.
cupDomainId :: Lens' CreateUserProfile Text
cupDomainId = lens _cupDomainId (\s a -> s {_cupDomainId = a})

-- | A name for the UserProfile.
cupUserProfileName :: Lens' CreateUserProfile Text
cupUserProfileName = lens _cupUserProfileName (\s a -> s {_cupUserProfileName = a})

instance AWSRequest CreateUserProfile where
  type Rs CreateUserProfile = CreateUserProfileResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateUserProfileResponse'
            <$> (x .?> "UserProfileArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateUserProfile

instance NFData CreateUserProfile

instance ToHeaders CreateUserProfile where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateUserProfile" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateUserProfile where
  toJSON CreateUserProfile' {..} =
    object
      ( catMaybes
          [ ("UserSettings" .=) <$> _cupUserSettings,
            ("Tags" .=) <$> _cupTags,
            ("SingleSignOnUserIdentifier" .=)
              <$> _cupSingleSignOnUserIdentifier,
            ("SingleSignOnUserValue" .=)
              <$> _cupSingleSignOnUserValue,
            Just ("DomainId" .= _cupDomainId),
            Just ("UserProfileName" .= _cupUserProfileName)
          ]
      )

instance ToPath CreateUserProfile where
  toPath = const "/"

instance ToQuery CreateUserProfile where
  toQuery = const mempty

-- | /See:/ 'createUserProfileResponse' smart constructor.
data CreateUserProfileResponse = CreateUserProfileResponse'
  { _cuprrsUserProfileARN ::
      !(Maybe Text),
    _cuprrsResponseStatus ::
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

-- | Creates a value of 'CreateUserProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuprrsUserProfileARN' - The user profile Amazon Resource Name (ARN).
--
-- * 'cuprrsResponseStatus' - -- | The response status code.
createUserProfileResponse ::
  -- | 'cuprrsResponseStatus'
  Int ->
  CreateUserProfileResponse
createUserProfileResponse pResponseStatus_ =
  CreateUserProfileResponse'
    { _cuprrsUserProfileARN =
        Nothing,
      _cuprrsResponseStatus = pResponseStatus_
    }

-- | The user profile Amazon Resource Name (ARN).
cuprrsUserProfileARN :: Lens' CreateUserProfileResponse (Maybe Text)
cuprrsUserProfileARN = lens _cuprrsUserProfileARN (\s a -> s {_cuprrsUserProfileARN = a})

-- | -- | The response status code.
cuprrsResponseStatus :: Lens' CreateUserProfileResponse Int
cuprrsResponseStatus = lens _cuprrsResponseStatus (\s a -> s {_cuprrsResponseStatus = a})

instance NFData CreateUserProfileResponse
