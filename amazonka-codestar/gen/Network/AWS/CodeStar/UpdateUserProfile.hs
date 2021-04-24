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
-- Module      : Network.AWS.CodeStar.UpdateUserProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user's profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.
module Network.AWS.CodeStar.UpdateUserProfile
  ( -- * Creating a Request
    updateUserProfile,
    UpdateUserProfile,

    -- * Request Lenses
    uupSshPublicKey,
    uupDisplayName,
    uupEmailAddress,
    uupUserARN,

    -- * Destructuring the Response
    updateUserProfileResponse,
    UpdateUserProfileResponse,

    -- * Response Lenses
    uuprrsCreatedTimestamp,
    uuprrsLastModifiedTimestamp,
    uuprrsSshPublicKey,
    uuprrsDisplayName,
    uuprrsEmailAddress,
    uuprrsResponseStatus,
    uuprrsUserARN,
  )
where

import Network.AWS.CodeStar.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateUserProfile' smart constructor.
data UpdateUserProfile = UpdateUserProfile'
  { _uupSshPublicKey ::
      !(Maybe Text),
    _uupDisplayName ::
      !(Maybe (Sensitive Text)),
    _uupEmailAddress ::
      !(Maybe (Sensitive Text)),
    _uupUserARN :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateUserProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uupSshPublicKey' - The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.
--
-- * 'uupDisplayName' - The name that is displayed as the friendly name for the user in AWS CodeStar.
--
-- * 'uupEmailAddress' - The email address that is displayed as part of the user's profile in AWS CodeStar.
--
-- * 'uupUserARN' - The name that will be displayed as the friendly name for the user in AWS CodeStar.
updateUserProfile ::
  -- | 'uupUserARN'
  Text ->
  UpdateUserProfile
updateUserProfile pUserARN_ =
  UpdateUserProfile'
    { _uupSshPublicKey = Nothing,
      _uupDisplayName = Nothing,
      _uupEmailAddress = Nothing,
      _uupUserARN = pUserARN_
    }

-- | The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.
uupSshPublicKey :: Lens' UpdateUserProfile (Maybe Text)
uupSshPublicKey = lens _uupSshPublicKey (\s a -> s {_uupSshPublicKey = a})

-- | The name that is displayed as the friendly name for the user in AWS CodeStar.
uupDisplayName :: Lens' UpdateUserProfile (Maybe Text)
uupDisplayName = lens _uupDisplayName (\s a -> s {_uupDisplayName = a}) . mapping _Sensitive

-- | The email address that is displayed as part of the user's profile in AWS CodeStar.
uupEmailAddress :: Lens' UpdateUserProfile (Maybe Text)
uupEmailAddress = lens _uupEmailAddress (\s a -> s {_uupEmailAddress = a}) . mapping _Sensitive

-- | The name that will be displayed as the friendly name for the user in AWS CodeStar.
uupUserARN :: Lens' UpdateUserProfile Text
uupUserARN = lens _uupUserARN (\s a -> s {_uupUserARN = a})

instance AWSRequest UpdateUserProfile where
  type Rs UpdateUserProfile = UpdateUserProfileResponse
  request = postJSON codeStar
  response =
    receiveJSON
      ( \s h x ->
          UpdateUserProfileResponse'
            <$> (x .?> "createdTimestamp")
            <*> (x .?> "lastModifiedTimestamp")
            <*> (x .?> "sshPublicKey")
            <*> (x .?> "displayName")
            <*> (x .?> "emailAddress")
            <*> (pure (fromEnum s))
            <*> (x .:> "userArn")
      )

instance Hashable UpdateUserProfile

instance NFData UpdateUserProfile

instance ToHeaders UpdateUserProfile where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeStar_20170419.UpdateUserProfile" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateUserProfile where
  toJSON UpdateUserProfile' {..} =
    object
      ( catMaybes
          [ ("sshPublicKey" .=) <$> _uupSshPublicKey,
            ("displayName" .=) <$> _uupDisplayName,
            ("emailAddress" .=) <$> _uupEmailAddress,
            Just ("userArn" .= _uupUserARN)
          ]
      )

instance ToPath UpdateUserProfile where
  toPath = const "/"

instance ToQuery UpdateUserProfile where
  toQuery = const mempty

-- | /See:/ 'updateUserProfileResponse' smart constructor.
data UpdateUserProfileResponse = UpdateUserProfileResponse'
  { _uuprrsCreatedTimestamp ::
      !(Maybe POSIX),
    _uuprrsLastModifiedTimestamp ::
      !(Maybe POSIX),
    _uuprrsSshPublicKey ::
      !(Maybe Text),
    _uuprrsDisplayName ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _uuprrsEmailAddress ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _uuprrsResponseStatus ::
      !Int,
    _uuprrsUserARN ::
      !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateUserProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuprrsCreatedTimestamp' - The date the user profile was created, in timestamp format.
--
-- * 'uuprrsLastModifiedTimestamp' - The date the user profile was last modified, in timestamp format.
--
-- * 'uuprrsSshPublicKey' - The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.
--
-- * 'uuprrsDisplayName' - The name that is displayed as the friendly name for the user in AWS CodeStar.
--
-- * 'uuprrsEmailAddress' - The email address that is displayed as part of the user's profile in AWS CodeStar.
--
-- * 'uuprrsResponseStatus' - -- | The response status code.
--
-- * 'uuprrsUserARN' - The Amazon Resource Name (ARN) of the user in IAM.
updateUserProfileResponse ::
  -- | 'uuprrsResponseStatus'
  Int ->
  -- | 'uuprrsUserARN'
  Text ->
  UpdateUserProfileResponse
updateUserProfileResponse pResponseStatus_ pUserARN_ =
  UpdateUserProfileResponse'
    { _uuprrsCreatedTimestamp =
        Nothing,
      _uuprrsLastModifiedTimestamp = Nothing,
      _uuprrsSshPublicKey = Nothing,
      _uuprrsDisplayName = Nothing,
      _uuprrsEmailAddress = Nothing,
      _uuprrsResponseStatus = pResponseStatus_,
      _uuprrsUserARN = pUserARN_
    }

-- | The date the user profile was created, in timestamp format.
uuprrsCreatedTimestamp :: Lens' UpdateUserProfileResponse (Maybe UTCTime)
uuprrsCreatedTimestamp = lens _uuprrsCreatedTimestamp (\s a -> s {_uuprrsCreatedTimestamp = a}) . mapping _Time

-- | The date the user profile was last modified, in timestamp format.
uuprrsLastModifiedTimestamp :: Lens' UpdateUserProfileResponse (Maybe UTCTime)
uuprrsLastModifiedTimestamp = lens _uuprrsLastModifiedTimestamp (\s a -> s {_uuprrsLastModifiedTimestamp = a}) . mapping _Time

-- | The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.
uuprrsSshPublicKey :: Lens' UpdateUserProfileResponse (Maybe Text)
uuprrsSshPublicKey = lens _uuprrsSshPublicKey (\s a -> s {_uuprrsSshPublicKey = a})

-- | The name that is displayed as the friendly name for the user in AWS CodeStar.
uuprrsDisplayName :: Lens' UpdateUserProfileResponse (Maybe Text)
uuprrsDisplayName = lens _uuprrsDisplayName (\s a -> s {_uuprrsDisplayName = a}) . mapping _Sensitive

-- | The email address that is displayed as part of the user's profile in AWS CodeStar.
uuprrsEmailAddress :: Lens' UpdateUserProfileResponse (Maybe Text)
uuprrsEmailAddress = lens _uuprrsEmailAddress (\s a -> s {_uuprrsEmailAddress = a}) . mapping _Sensitive

-- | -- | The response status code.
uuprrsResponseStatus :: Lens' UpdateUserProfileResponse Int
uuprrsResponseStatus = lens _uuprrsResponseStatus (\s a -> s {_uuprrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the user in IAM.
uuprrsUserARN :: Lens' UpdateUserProfileResponse Text
uuprrsUserARN = lens _uuprrsUserARN (\s a -> s {_uuprrsUserARN = a})

instance NFData UpdateUserProfileResponse
