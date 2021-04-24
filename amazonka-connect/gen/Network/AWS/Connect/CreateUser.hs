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
-- Module      : Network.AWS.Connect.CreateUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user account for the specified Amazon Connect instance.
--
--
-- For information about how to create user accounts using the Amazon Connect console, see <https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html Add Users> in the /Amazon Connect Administrator Guide/ .
module Network.AWS.Connect.CreateUser
  ( -- * Creating a Request
    createUser,
    CreateUser,

    -- * Request Lenses
    cuIdentityInfo,
    cuHierarchyGroupId,
    cuDirectoryUserId,
    cuPassword,
    cuTags,
    cuUsername,
    cuPhoneConfig,
    cuSecurityProfileIds,
    cuRoutingProfileId,
    cuInstanceId,

    -- * Destructuring the Response
    createUserResponse,
    CreateUserResponse,

    -- * Response Lenses
    currsUserARN,
    currsUserId,
    currsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createUser' smart constructor.
data CreateUser = CreateUser'
  { _cuIdentityInfo ::
      !(Maybe UserIdentityInfo),
    _cuHierarchyGroupId :: !(Maybe Text),
    _cuDirectoryUserId :: !(Maybe Text),
    _cuPassword :: !(Maybe Text),
    _cuTags :: !(Maybe (Map Text Text)),
    _cuUsername :: !Text,
    _cuPhoneConfig :: !UserPhoneConfig,
    _cuSecurityProfileIds :: !(List1 Text),
    _cuRoutingProfileId :: !Text,
    _cuInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuIdentityInfo' - The information about the identity of the user.
--
-- * 'cuHierarchyGroupId' - The identifier of the hierarchy group for the user.
--
-- * 'cuDirectoryUserId' - The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory. This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned.
--
-- * 'cuPassword' - The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.
--
-- * 'cuTags' - One or more tags.
--
-- * 'cuUsername' - The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from [a-zA-Z0-9_-.\@]+.
--
-- * 'cuPhoneConfig' - The phone settings for the user.
--
-- * 'cuSecurityProfileIds' - The identifier of the security profile for the user.
--
-- * 'cuRoutingProfileId' - The identifier of the routing profile for the user.
--
-- * 'cuInstanceId' - The identifier of the Amazon Connect instance.
createUser ::
  -- | 'cuUsername'
  Text ->
  -- | 'cuPhoneConfig'
  UserPhoneConfig ->
  -- | 'cuSecurityProfileIds'
  NonEmpty Text ->
  -- | 'cuRoutingProfileId'
  Text ->
  -- | 'cuInstanceId'
  Text ->
  CreateUser
createUser
  pUsername_
  pPhoneConfig_
  pSecurityProfileIds_
  pRoutingProfileId_
  pInstanceId_ =
    CreateUser'
      { _cuIdentityInfo = Nothing,
        _cuHierarchyGroupId = Nothing,
        _cuDirectoryUserId = Nothing,
        _cuPassword = Nothing,
        _cuTags = Nothing,
        _cuUsername = pUsername_,
        _cuPhoneConfig = pPhoneConfig_,
        _cuSecurityProfileIds =
          _List1 # pSecurityProfileIds_,
        _cuRoutingProfileId = pRoutingProfileId_,
        _cuInstanceId = pInstanceId_
      }

-- | The information about the identity of the user.
cuIdentityInfo :: Lens' CreateUser (Maybe UserIdentityInfo)
cuIdentityInfo = lens _cuIdentityInfo (\s a -> s {_cuIdentityInfo = a})

-- | The identifier of the hierarchy group for the user.
cuHierarchyGroupId :: Lens' CreateUser (Maybe Text)
cuHierarchyGroupId = lens _cuHierarchyGroupId (\s a -> s {_cuHierarchyGroupId = a})

-- | The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory. This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned.
cuDirectoryUserId :: Lens' CreateUser (Maybe Text)
cuDirectoryUserId = lens _cuDirectoryUserId (\s a -> s {_cuDirectoryUserId = a})

-- | The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.
cuPassword :: Lens' CreateUser (Maybe Text)
cuPassword = lens _cuPassword (\s a -> s {_cuPassword = a})

-- | One or more tags.
cuTags :: Lens' CreateUser (HashMap Text Text)
cuTags = lens _cuTags (\s a -> s {_cuTags = a}) . _Default . _Map

-- | The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from [a-zA-Z0-9_-.\@]+.
cuUsername :: Lens' CreateUser Text
cuUsername = lens _cuUsername (\s a -> s {_cuUsername = a})

-- | The phone settings for the user.
cuPhoneConfig :: Lens' CreateUser UserPhoneConfig
cuPhoneConfig = lens _cuPhoneConfig (\s a -> s {_cuPhoneConfig = a})

-- | The identifier of the security profile for the user.
cuSecurityProfileIds :: Lens' CreateUser (NonEmpty Text)
cuSecurityProfileIds = lens _cuSecurityProfileIds (\s a -> s {_cuSecurityProfileIds = a}) . _List1

-- | The identifier of the routing profile for the user.
cuRoutingProfileId :: Lens' CreateUser Text
cuRoutingProfileId = lens _cuRoutingProfileId (\s a -> s {_cuRoutingProfileId = a})

-- | The identifier of the Amazon Connect instance.
cuInstanceId :: Lens' CreateUser Text
cuInstanceId = lens _cuInstanceId (\s a -> s {_cuInstanceId = a})

instance AWSRequest CreateUser where
  type Rs CreateUser = CreateUserResponse
  request = putJSON connect
  response =
    receiveJSON
      ( \s h x ->
          CreateUserResponse'
            <$> (x .?> "UserArn")
            <*> (x .?> "UserId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateUser

instance NFData CreateUser

instance ToHeaders CreateUser where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateUser where
  toJSON CreateUser' {..} =
    object
      ( catMaybes
          [ ("IdentityInfo" .=) <$> _cuIdentityInfo,
            ("HierarchyGroupId" .=) <$> _cuHierarchyGroupId,
            ("DirectoryUserId" .=) <$> _cuDirectoryUserId,
            ("Password" .=) <$> _cuPassword,
            ("Tags" .=) <$> _cuTags,
            Just ("Username" .= _cuUsername),
            Just ("PhoneConfig" .= _cuPhoneConfig),
            Just ("SecurityProfileIds" .= _cuSecurityProfileIds),
            Just ("RoutingProfileId" .= _cuRoutingProfileId)
          ]
      )

instance ToPath CreateUser where
  toPath CreateUser' {..} =
    mconcat ["/users/", toBS _cuInstanceId]

instance ToQuery CreateUser where
  toQuery = const mempty

-- | /See:/ 'createUserResponse' smart constructor.
data CreateUserResponse = CreateUserResponse'
  { _currsUserARN ::
      !(Maybe Text),
    _currsUserId :: !(Maybe Text),
    _currsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'currsUserARN' - The Amazon Resource Name (ARN) of the user account.
--
-- * 'currsUserId' - The identifier of the user account.
--
-- * 'currsResponseStatus' - -- | The response status code.
createUserResponse ::
  -- | 'currsResponseStatus'
  Int ->
  CreateUserResponse
createUserResponse pResponseStatus_ =
  CreateUserResponse'
    { _currsUserARN = Nothing,
      _currsUserId = Nothing,
      _currsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the user account.
currsUserARN :: Lens' CreateUserResponse (Maybe Text)
currsUserARN = lens _currsUserARN (\s a -> s {_currsUserARN = a})

-- | The identifier of the user account.
currsUserId :: Lens' CreateUserResponse (Maybe Text)
currsUserId = lens _currsUserId (\s a -> s {_currsUserId = a})

-- | -- | The response status code.
currsResponseStatus :: Lens' CreateUserResponse Int
currsResponseStatus = lens _currsResponseStatus (\s a -> s {_currsResponseStatus = a})

instance NFData CreateUserResponse
