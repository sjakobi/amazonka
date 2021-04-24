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
-- Module      : Network.AWS.CodeStar.CreateUserProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.
module Network.AWS.CodeStar.CreateUserProfile
  ( -- * Creating a Request
    createUserProfile,
    CreateUserProfile,

    -- * Request Lenses
    cupSshPublicKey,
    cupUserARN,
    cupDisplayName,
    cupEmailAddress,

    -- * Destructuring the Response
    createUserProfileResponse,
    CreateUserProfileResponse,

    -- * Response Lenses
    cuprrsCreatedTimestamp,
    cuprrsLastModifiedTimestamp,
    cuprrsSshPublicKey,
    cuprrsDisplayName,
    cuprrsEmailAddress,
    cuprrsResponseStatus,
    cuprrsUserARN,
  )
where

import Network.AWS.CodeStar.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createUserProfile' smart constructor.
data CreateUserProfile = CreateUserProfile'
  { _cupSshPublicKey ::
      !(Maybe Text),
    _cupUserARN :: !Text,
    _cupDisplayName ::
      !(Sensitive Text),
    _cupEmailAddress ::
      !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateUserProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cupSshPublicKey' - The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.
--
-- * 'cupUserARN' - The Amazon Resource Name (ARN) of the user in IAM.
--
-- * 'cupDisplayName' - The name that will be displayed as the friendly name for the user in AWS CodeStar.
--
-- * 'cupEmailAddress' - The email address that will be displayed as part of the user's profile in AWS CodeStar.
createUserProfile ::
  -- | 'cupUserARN'
  Text ->
  -- | 'cupDisplayName'
  Text ->
  -- | 'cupEmailAddress'
  Text ->
  CreateUserProfile
createUserProfile
  pUserARN_
  pDisplayName_
  pEmailAddress_ =
    CreateUserProfile'
      { _cupSshPublicKey = Nothing,
        _cupUserARN = pUserARN_,
        _cupDisplayName = _Sensitive # pDisplayName_,
        _cupEmailAddress = _Sensitive # pEmailAddress_
      }

-- | The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.
cupSshPublicKey :: Lens' CreateUserProfile (Maybe Text)
cupSshPublicKey = lens _cupSshPublicKey (\s a -> s {_cupSshPublicKey = a})

-- | The Amazon Resource Name (ARN) of the user in IAM.
cupUserARN :: Lens' CreateUserProfile Text
cupUserARN = lens _cupUserARN (\s a -> s {_cupUserARN = a})

-- | The name that will be displayed as the friendly name for the user in AWS CodeStar.
cupDisplayName :: Lens' CreateUserProfile Text
cupDisplayName = lens _cupDisplayName (\s a -> s {_cupDisplayName = a}) . _Sensitive

-- | The email address that will be displayed as part of the user's profile in AWS CodeStar.
cupEmailAddress :: Lens' CreateUserProfile Text
cupEmailAddress = lens _cupEmailAddress (\s a -> s {_cupEmailAddress = a}) . _Sensitive

instance AWSRequest CreateUserProfile where
  type Rs CreateUserProfile = CreateUserProfileResponse
  request = postJSON codeStar
  response =
    receiveJSON
      ( \s h x ->
          CreateUserProfileResponse'
            <$> (x .?> "createdTimestamp")
            <*> (x .?> "lastModifiedTimestamp")
            <*> (x .?> "sshPublicKey")
            <*> (x .?> "displayName")
            <*> (x .?> "emailAddress")
            <*> (pure (fromEnum s))
            <*> (x .:> "userArn")
      )

instance Hashable CreateUserProfile

instance NFData CreateUserProfile

instance ToHeaders CreateUserProfile where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeStar_20170419.CreateUserProfile" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateUserProfile where
  toJSON CreateUserProfile' {..} =
    object
      ( catMaybes
          [ ("sshPublicKey" .=) <$> _cupSshPublicKey,
            Just ("userArn" .= _cupUserARN),
            Just ("displayName" .= _cupDisplayName),
            Just ("emailAddress" .= _cupEmailAddress)
          ]
      )

instance ToPath CreateUserProfile where
  toPath = const "/"

instance ToQuery CreateUserProfile where
  toQuery = const mempty

-- | /See:/ 'createUserProfileResponse' smart constructor.
data CreateUserProfileResponse = CreateUserProfileResponse'
  { _cuprrsCreatedTimestamp ::
      !(Maybe POSIX),
    _cuprrsLastModifiedTimestamp ::
      !(Maybe POSIX),
    _cuprrsSshPublicKey ::
      !(Maybe Text),
    _cuprrsDisplayName ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _cuprrsEmailAddress ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _cuprrsResponseStatus ::
      !Int,
    _cuprrsUserARN ::
      !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateUserProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuprrsCreatedTimestamp' - The date the user profile was created, in timestamp format.
--
-- * 'cuprrsLastModifiedTimestamp' - The date the user profile was last modified, in timestamp format.
--
-- * 'cuprrsSshPublicKey' - The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.
--
-- * 'cuprrsDisplayName' - The name that is displayed as the friendly name for the user in AWS CodeStar.
--
-- * 'cuprrsEmailAddress' - The email address that is displayed as part of the user's profile in AWS CodeStar.
--
-- * 'cuprrsResponseStatus' - -- | The response status code.
--
-- * 'cuprrsUserARN' - The Amazon Resource Name (ARN) of the user in IAM.
createUserProfileResponse ::
  -- | 'cuprrsResponseStatus'
  Int ->
  -- | 'cuprrsUserARN'
  Text ->
  CreateUserProfileResponse
createUserProfileResponse pResponseStatus_ pUserARN_ =
  CreateUserProfileResponse'
    { _cuprrsCreatedTimestamp =
        Nothing,
      _cuprrsLastModifiedTimestamp = Nothing,
      _cuprrsSshPublicKey = Nothing,
      _cuprrsDisplayName = Nothing,
      _cuprrsEmailAddress = Nothing,
      _cuprrsResponseStatus = pResponseStatus_,
      _cuprrsUserARN = pUserARN_
    }

-- | The date the user profile was created, in timestamp format.
cuprrsCreatedTimestamp :: Lens' CreateUserProfileResponse (Maybe UTCTime)
cuprrsCreatedTimestamp = lens _cuprrsCreatedTimestamp (\s a -> s {_cuprrsCreatedTimestamp = a}) . mapping _Time

-- | The date the user profile was last modified, in timestamp format.
cuprrsLastModifiedTimestamp :: Lens' CreateUserProfileResponse (Maybe UTCTime)
cuprrsLastModifiedTimestamp = lens _cuprrsLastModifiedTimestamp (\s a -> s {_cuprrsLastModifiedTimestamp = a}) . mapping _Time

-- | The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.
cuprrsSshPublicKey :: Lens' CreateUserProfileResponse (Maybe Text)
cuprrsSshPublicKey = lens _cuprrsSshPublicKey (\s a -> s {_cuprrsSshPublicKey = a})

-- | The name that is displayed as the friendly name for the user in AWS CodeStar.
cuprrsDisplayName :: Lens' CreateUserProfileResponse (Maybe Text)
cuprrsDisplayName = lens _cuprrsDisplayName (\s a -> s {_cuprrsDisplayName = a}) . mapping _Sensitive

-- | The email address that is displayed as part of the user's profile in AWS CodeStar.
cuprrsEmailAddress :: Lens' CreateUserProfileResponse (Maybe Text)
cuprrsEmailAddress = lens _cuprrsEmailAddress (\s a -> s {_cuprrsEmailAddress = a}) . mapping _Sensitive

-- | -- | The response status code.
cuprrsResponseStatus :: Lens' CreateUserProfileResponse Int
cuprrsResponseStatus = lens _cuprrsResponseStatus (\s a -> s {_cuprrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the user in IAM.
cuprrsUserARN :: Lens' CreateUserProfileResponse Text
cuprrsUserARN = lens _cuprrsUserARN (\s a -> s {_cuprrsUserARN = a})

instance NFData CreateUserProfileResponse
