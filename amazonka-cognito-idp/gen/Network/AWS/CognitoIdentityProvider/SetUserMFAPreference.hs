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
-- Module      : Network.AWS.CognitoIdentityProvider.SetUserMFAPreference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set the user's multi-factor authentication (MFA) method preference, including which MFA factors are enabled and if any are preferred. Only one factor can be set as preferred. The preferred MFA factor will be used to authenticate a user if multiple factors are enabled. If multiple options are enabled and no preference is set, a challenge to choose an MFA option will be returned during sign in. If an MFA type is enabled for a user, the user will be prompted for MFA during all sign in attempts, unless device tracking is turned on and the device has been trusted. If you would like MFA to be applied selectively based on the assessed risk level of sign in attempts, disable MFA for users and turn on Adaptive Authentication for the user pool.
module Network.AWS.CognitoIdentityProvider.SetUserMFAPreference
  ( -- * Creating a Request
    setUserMFAPreference,
    SetUserMFAPreference,

    -- * Request Lenses
    sumpSoftwareTokenMFASettings,
    sumpSMSMFASettings,
    sumpAccessToken,

    -- * Destructuring the Response
    setUserMFAPreferenceResponse,
    SetUserMFAPreferenceResponse,

    -- * Response Lenses
    sumprrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setUserMFAPreference' smart constructor.
data SetUserMFAPreference = SetUserMFAPreference'
  { _sumpSoftwareTokenMFASettings ::
      !( Maybe
           SoftwareTokenMFASettingsType
       ),
    _sumpSMSMFASettings ::
      !(Maybe SMSMFASettingsType),
    _sumpAccessToken ::
      !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetUserMFAPreference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sumpSoftwareTokenMFASettings' - The time-based one-time password software token MFA settings.
--
-- * 'sumpSMSMFASettings' - The SMS text message multi-factor authentication (MFA) settings.
--
-- * 'sumpAccessToken' - The access token for the user.
setUserMFAPreference ::
  -- | 'sumpAccessToken'
  Text ->
  SetUserMFAPreference
setUserMFAPreference pAccessToken_ =
  SetUserMFAPreference'
    { _sumpSoftwareTokenMFASettings =
        Nothing,
      _sumpSMSMFASettings = Nothing,
      _sumpAccessToken = _Sensitive # pAccessToken_
    }

-- | The time-based one-time password software token MFA settings.
sumpSoftwareTokenMFASettings :: Lens' SetUserMFAPreference (Maybe SoftwareTokenMFASettingsType)
sumpSoftwareTokenMFASettings = lens _sumpSoftwareTokenMFASettings (\s a -> s {_sumpSoftwareTokenMFASettings = a})

-- | The SMS text message multi-factor authentication (MFA) settings.
sumpSMSMFASettings :: Lens' SetUserMFAPreference (Maybe SMSMFASettingsType)
sumpSMSMFASettings = lens _sumpSMSMFASettings (\s a -> s {_sumpSMSMFASettings = a})

-- | The access token for the user.
sumpAccessToken :: Lens' SetUserMFAPreference Text
sumpAccessToken = lens _sumpAccessToken (\s a -> s {_sumpAccessToken = a}) . _Sensitive

instance AWSRequest SetUserMFAPreference where
  type
    Rs SetUserMFAPreference =
      SetUserMFAPreferenceResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveEmpty
      ( \s h x ->
          SetUserMFAPreferenceResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable SetUserMFAPreference

instance NFData SetUserMFAPreference

instance ToHeaders SetUserMFAPreference where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.SetUserMFAPreference" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SetUserMFAPreference where
  toJSON SetUserMFAPreference' {..} =
    object
      ( catMaybes
          [ ("SoftwareTokenMfaSettings" .=)
              <$> _sumpSoftwareTokenMFASettings,
            ("SMSMfaSettings" .=) <$> _sumpSMSMFASettings,
            Just ("AccessToken" .= _sumpAccessToken)
          ]
      )

instance ToPath SetUserMFAPreference where
  toPath = const "/"

instance ToQuery SetUserMFAPreference where
  toQuery = const mempty

-- | /See:/ 'setUserMFAPreferenceResponse' smart constructor.
newtype SetUserMFAPreferenceResponse = SetUserMFAPreferenceResponse'
  { _sumprrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SetUserMFAPreferenceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sumprrsResponseStatus' - -- | The response status code.
setUserMFAPreferenceResponse ::
  -- | 'sumprrsResponseStatus'
  Int ->
  SetUserMFAPreferenceResponse
setUserMFAPreferenceResponse pResponseStatus_ =
  SetUserMFAPreferenceResponse'
    { _sumprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
sumprrsResponseStatus :: Lens' SetUserMFAPreferenceResponse Int
sumprrsResponseStatus = lens _sumprrsResponseStatus (\s a -> s {_sumprrsResponseStatus = a})

instance NFData SetUserMFAPreferenceResponse
