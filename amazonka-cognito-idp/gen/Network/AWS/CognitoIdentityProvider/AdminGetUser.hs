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
-- Module      : Network.AWS.CognitoIdentityProvider.AdminGetUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified user by user name in a user pool as an administrator. Works on any user.
--
--
-- Calling this action requires developer credentials.
module Network.AWS.CognitoIdentityProvider.AdminGetUser
  ( -- * Creating a Request
    adminGetUser,
    AdminGetUser,

    -- * Request Lenses
    aguUserPoolId,
    aguUsername,

    -- * Destructuring the Response
    adminGetUserResponse,
    AdminGetUserResponse,

    -- * Response Lenses
    agurrsPreferredMFASetting,
    agurrsUserCreateDate,
    agurrsUserLastModifiedDate,
    agurrsEnabled,
    agurrsUserMFASettingList,
    agurrsUserAttributes,
    agurrsUserStatus,
    agurrsMFAOptions,
    agurrsResponseStatus,
    agurrsUsername,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to get the specified user as an administrator.
--
--
--
-- /See:/ 'adminGetUser' smart constructor.
data AdminGetUser = AdminGetUser'
  { _aguUserPoolId ::
      !Text,
    _aguUsername :: !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdminGetUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aguUserPoolId' - The user pool ID for the user pool where you want to get information about the user.
--
-- * 'aguUsername' - The user name of the user you wish to retrieve.
adminGetUser ::
  -- | 'aguUserPoolId'
  Text ->
  -- | 'aguUsername'
  Text ->
  AdminGetUser
adminGetUser pUserPoolId_ pUsername_ =
  AdminGetUser'
    { _aguUserPoolId = pUserPoolId_,
      _aguUsername = _Sensitive # pUsername_
    }

-- | The user pool ID for the user pool where you want to get information about the user.
aguUserPoolId :: Lens' AdminGetUser Text
aguUserPoolId = lens _aguUserPoolId (\s a -> s {_aguUserPoolId = a})

-- | The user name of the user you wish to retrieve.
aguUsername :: Lens' AdminGetUser Text
aguUsername = lens _aguUsername (\s a -> s {_aguUsername = a}) . _Sensitive

instance AWSRequest AdminGetUser where
  type Rs AdminGetUser = AdminGetUserResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          AdminGetUserResponse'
            <$> (x .?> "PreferredMfaSetting")
            <*> (x .?> "UserCreateDate")
            <*> (x .?> "UserLastModifiedDate")
            <*> (x .?> "Enabled")
            <*> (x .?> "UserMFASettingList" .!@ mempty)
            <*> (x .?> "UserAttributes" .!@ mempty)
            <*> (x .?> "UserStatus")
            <*> (x .?> "MFAOptions" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "Username")
      )

instance Hashable AdminGetUser

instance NFData AdminGetUser

instance ToHeaders AdminGetUser where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.AdminGetUser" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AdminGetUser where
  toJSON AdminGetUser' {..} =
    object
      ( catMaybes
          [ Just ("UserPoolId" .= _aguUserPoolId),
            Just ("Username" .= _aguUsername)
          ]
      )

instance ToPath AdminGetUser where
  toPath = const "/"

instance ToQuery AdminGetUser where
  toQuery = const mempty

-- | Represents the response from the server from the request to get the specified user as an administrator.
--
--
--
-- /See:/ 'adminGetUserResponse' smart constructor.
data AdminGetUserResponse = AdminGetUserResponse'
  { _agurrsPreferredMFASetting ::
      !(Maybe Text),
    _agurrsUserCreateDate ::
      !(Maybe POSIX),
    _agurrsUserLastModifiedDate ::
      !(Maybe POSIX),
    _agurrsEnabled ::
      !(Maybe Bool),
    _agurrsUserMFASettingList ::
      !(Maybe [Text]),
    _agurrsUserAttributes ::
      !(Maybe [AttributeType]),
    _agurrsUserStatus ::
      !(Maybe UserStatusType),
    _agurrsMFAOptions ::
      !(Maybe [MFAOptionType]),
    _agurrsResponseStatus :: !Int,
    _agurrsUsername ::
      !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdminGetUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agurrsPreferredMFASetting' - The user's preferred MFA setting.
--
-- * 'agurrsUserCreateDate' - The date the user was created.
--
-- * 'agurrsUserLastModifiedDate' - The date the user was last modified.
--
-- * 'agurrsEnabled' - Indicates that the status is enabled.
--
-- * 'agurrsUserMFASettingList' - The MFA options that are enabled for the user. The possible values in this list are @SMS_MFA@ and @SOFTWARE_TOKEN_MFA@ .
--
-- * 'agurrsUserAttributes' - An array of name-value pairs representing user attributes.
--
-- * 'agurrsUserStatus' - The user status. Can be one of the following:     * UNCONFIRMED - User has been created but not confirmed.     * CONFIRMED - User has been confirmed.     * ARCHIVED - User is no longer active.     * COMPROMISED - User is disabled due to a potential security threat.     * UNKNOWN - User status is not known.     * RESET_REQUIRED - User is confirmed, but the user must request a code and reset his or her password before he or she can sign in.     * FORCE_CHANGE_PASSWORD - The user is confirmed and the user can sign in using a temporary password, but on first sign-in, the user must change his or her password to a new value before doing anything else.
--
-- * 'agurrsMFAOptions' - /This response parameter is no longer supported./ It provides information only about SMS MFA configurations. It doesn't provide information about TOTP software token MFA configurations. To look up information about either type of MFA configuration, use UserMFASettingList instead.
--
-- * 'agurrsResponseStatus' - -- | The response status code.
--
-- * 'agurrsUsername' - The user name of the user about whom you are receiving information.
adminGetUserResponse ::
  -- | 'agurrsResponseStatus'
  Int ->
  -- | 'agurrsUsername'
  Text ->
  AdminGetUserResponse
adminGetUserResponse pResponseStatus_ pUsername_ =
  AdminGetUserResponse'
    { _agurrsPreferredMFASetting =
        Nothing,
      _agurrsUserCreateDate = Nothing,
      _agurrsUserLastModifiedDate = Nothing,
      _agurrsEnabled = Nothing,
      _agurrsUserMFASettingList = Nothing,
      _agurrsUserAttributes = Nothing,
      _agurrsUserStatus = Nothing,
      _agurrsMFAOptions = Nothing,
      _agurrsResponseStatus = pResponseStatus_,
      _agurrsUsername = _Sensitive # pUsername_
    }

-- | The user's preferred MFA setting.
agurrsPreferredMFASetting :: Lens' AdminGetUserResponse (Maybe Text)
agurrsPreferredMFASetting = lens _agurrsPreferredMFASetting (\s a -> s {_agurrsPreferredMFASetting = a})

-- | The date the user was created.
agurrsUserCreateDate :: Lens' AdminGetUserResponse (Maybe UTCTime)
agurrsUserCreateDate = lens _agurrsUserCreateDate (\s a -> s {_agurrsUserCreateDate = a}) . mapping _Time

-- | The date the user was last modified.
agurrsUserLastModifiedDate :: Lens' AdminGetUserResponse (Maybe UTCTime)
agurrsUserLastModifiedDate = lens _agurrsUserLastModifiedDate (\s a -> s {_agurrsUserLastModifiedDate = a}) . mapping _Time

-- | Indicates that the status is enabled.
agurrsEnabled :: Lens' AdminGetUserResponse (Maybe Bool)
agurrsEnabled = lens _agurrsEnabled (\s a -> s {_agurrsEnabled = a})

-- | The MFA options that are enabled for the user. The possible values in this list are @SMS_MFA@ and @SOFTWARE_TOKEN_MFA@ .
agurrsUserMFASettingList :: Lens' AdminGetUserResponse [Text]
agurrsUserMFASettingList = lens _agurrsUserMFASettingList (\s a -> s {_agurrsUserMFASettingList = a}) . _Default . _Coerce

-- | An array of name-value pairs representing user attributes.
agurrsUserAttributes :: Lens' AdminGetUserResponse [AttributeType]
agurrsUserAttributes = lens _agurrsUserAttributes (\s a -> s {_agurrsUserAttributes = a}) . _Default . _Coerce

-- | The user status. Can be one of the following:     * UNCONFIRMED - User has been created but not confirmed.     * CONFIRMED - User has been confirmed.     * ARCHIVED - User is no longer active.     * COMPROMISED - User is disabled due to a potential security threat.     * UNKNOWN - User status is not known.     * RESET_REQUIRED - User is confirmed, but the user must request a code and reset his or her password before he or she can sign in.     * FORCE_CHANGE_PASSWORD - The user is confirmed and the user can sign in using a temporary password, but on first sign-in, the user must change his or her password to a new value before doing anything else.
agurrsUserStatus :: Lens' AdminGetUserResponse (Maybe UserStatusType)
agurrsUserStatus = lens _agurrsUserStatus (\s a -> s {_agurrsUserStatus = a})

-- | /This response parameter is no longer supported./ It provides information only about SMS MFA configurations. It doesn't provide information about TOTP software token MFA configurations. To look up information about either type of MFA configuration, use UserMFASettingList instead.
agurrsMFAOptions :: Lens' AdminGetUserResponse [MFAOptionType]
agurrsMFAOptions = lens _agurrsMFAOptions (\s a -> s {_agurrsMFAOptions = a}) . _Default . _Coerce

-- | -- | The response status code.
agurrsResponseStatus :: Lens' AdminGetUserResponse Int
agurrsResponseStatus = lens _agurrsResponseStatus (\s a -> s {_agurrsResponseStatus = a})

-- | The user name of the user about whom you are receiving information.
agurrsUsername :: Lens' AdminGetUserResponse Text
agurrsUsername = lens _agurrsUsername (\s a -> s {_agurrsUsername = a}) . _Sensitive

instance NFData AdminGetUserResponse
