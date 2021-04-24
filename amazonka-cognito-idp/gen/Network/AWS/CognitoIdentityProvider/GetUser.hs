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
-- Module      : Network.AWS.CognitoIdentityProvider.GetUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the user attributes and metadata for a user.
module Network.AWS.CognitoIdentityProvider.GetUser
  ( -- * Creating a Request
    getUser,
    GetUser,

    -- * Request Lenses
    guAccessToken,

    -- * Destructuring the Response
    getUserResponse,
    GetUserResponse,

    -- * Response Lenses
    gurrsPreferredMFASetting,
    gurrsUserMFASettingList,
    gurrsMFAOptions,
    gurrsResponseStatus,
    gurrsUsername,
    gurrsUserAttributes,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to get information about the user.
--
--
--
-- /See:/ 'getUser' smart constructor.
newtype GetUser = GetUser'
  { _guAccessToken ::
      Sensitive Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guAccessToken' - The access token returned by the server response to get information about the user.
getUser ::
  -- | 'guAccessToken'
  Text ->
  GetUser
getUser pAccessToken_ =
  GetUser'
    { _guAccessToken =
        _Sensitive # pAccessToken_
    }

-- | The access token returned by the server response to get information about the user.
guAccessToken :: Lens' GetUser Text
guAccessToken = lens _guAccessToken (\s a -> s {_guAccessToken = a}) . _Sensitive

instance AWSRequest GetUser where
  type Rs GetUser = GetUserResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          GetUserResponse'
            <$> (x .?> "PreferredMfaSetting")
            <*> (x .?> "UserMFASettingList" .!@ mempty)
            <*> (x .?> "MFAOptions" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "Username")
            <*> (x .?> "UserAttributes" .!@ mempty)
      )

instance Hashable GetUser

instance NFData GetUser

instance ToHeaders GetUser where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.GetUser" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetUser where
  toJSON GetUser' {..} =
    object
      (catMaybes [Just ("AccessToken" .= _guAccessToken)])

instance ToPath GetUser where
  toPath = const "/"

instance ToQuery GetUser where
  toQuery = const mempty

-- | Represents the response from the server from the request to get information about the user.
--
--
--
-- /See:/ 'getUserResponse' smart constructor.
data GetUserResponse = GetUserResponse'
  { _gurrsPreferredMFASetting ::
      !(Maybe Text),
    _gurrsUserMFASettingList ::
      !(Maybe [Text]),
    _gurrsMFAOptions ::
      !(Maybe [MFAOptionType]),
    _gurrsResponseStatus :: !Int,
    _gurrsUsername :: !(Sensitive Text),
    _gurrsUserAttributes ::
      ![AttributeType]
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gurrsPreferredMFASetting' - The user's preferred MFA setting.
--
-- * 'gurrsUserMFASettingList' - The MFA options that are enabled for the user. The possible values in this list are @SMS_MFA@ and @SOFTWARE_TOKEN_MFA@ .
--
-- * 'gurrsMFAOptions' - /This response parameter is no longer supported./ It provides information only about SMS MFA configurations. It doesn't provide information about TOTP software token MFA configurations. To look up information about either type of MFA configuration, use UserMFASettingList instead.
--
-- * 'gurrsResponseStatus' - -- | The response status code.
--
-- * 'gurrsUsername' - The user name of the user you wish to retrieve from the get user request.
--
-- * 'gurrsUserAttributes' - An array of name-value pairs representing user attributes. For custom attributes, you must prepend the @custom:@ prefix to the attribute name.
getUserResponse ::
  -- | 'gurrsResponseStatus'
  Int ->
  -- | 'gurrsUsername'
  Text ->
  GetUserResponse
getUserResponse pResponseStatus_ pUsername_ =
  GetUserResponse'
    { _gurrsPreferredMFASetting =
        Nothing,
      _gurrsUserMFASettingList = Nothing,
      _gurrsMFAOptions = Nothing,
      _gurrsResponseStatus = pResponseStatus_,
      _gurrsUsername = _Sensitive # pUsername_,
      _gurrsUserAttributes = mempty
    }

-- | The user's preferred MFA setting.
gurrsPreferredMFASetting :: Lens' GetUserResponse (Maybe Text)
gurrsPreferredMFASetting = lens _gurrsPreferredMFASetting (\s a -> s {_gurrsPreferredMFASetting = a})

-- | The MFA options that are enabled for the user. The possible values in this list are @SMS_MFA@ and @SOFTWARE_TOKEN_MFA@ .
gurrsUserMFASettingList :: Lens' GetUserResponse [Text]
gurrsUserMFASettingList = lens _gurrsUserMFASettingList (\s a -> s {_gurrsUserMFASettingList = a}) . _Default . _Coerce

-- | /This response parameter is no longer supported./ It provides information only about SMS MFA configurations. It doesn't provide information about TOTP software token MFA configurations. To look up information about either type of MFA configuration, use UserMFASettingList instead.
gurrsMFAOptions :: Lens' GetUserResponse [MFAOptionType]
gurrsMFAOptions = lens _gurrsMFAOptions (\s a -> s {_gurrsMFAOptions = a}) . _Default . _Coerce

-- | -- | The response status code.
gurrsResponseStatus :: Lens' GetUserResponse Int
gurrsResponseStatus = lens _gurrsResponseStatus (\s a -> s {_gurrsResponseStatus = a})

-- | The user name of the user you wish to retrieve from the get user request.
gurrsUsername :: Lens' GetUserResponse Text
gurrsUsername = lens _gurrsUsername (\s a -> s {_gurrsUsername = a}) . _Sensitive

-- | An array of name-value pairs representing user attributes. For custom attributes, you must prepend the @custom:@ prefix to the attribute name.
gurrsUserAttributes :: Lens' GetUserResponse [AttributeType]
gurrsUserAttributes = lens _gurrsUserAttributes (\s a -> s {_gurrsUserAttributes = a}) . _Coerce

instance NFData GetUserResponse
