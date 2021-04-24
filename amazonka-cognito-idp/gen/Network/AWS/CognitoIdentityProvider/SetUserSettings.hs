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
-- Module      : Network.AWS.CognitoIdentityProvider.SetUserSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /This action is no longer supported./ You can use it to configure only SMS MFA. You can't use it to configure TOTP software token MFA. To configure either type of MFA, use <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserMFAPreference.html SetUserMFAPreference> instead.
module Network.AWS.CognitoIdentityProvider.SetUserSettings
  ( -- * Creating a Request
    setUserSettings,
    SetUserSettings,

    -- * Request Lenses
    susAccessToken,
    susMFAOptions,

    -- * Destructuring the Response
    setUserSettingsResponse,
    SetUserSettingsResponse,

    -- * Response Lenses
    susrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to set user settings.
--
--
--
-- /See:/ 'setUserSettings' smart constructor.
data SetUserSettings = SetUserSettings'
  { _susAccessToken ::
      !(Sensitive Text),
    _susMFAOptions :: ![MFAOptionType]
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetUserSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'susAccessToken' - The access token for the set user settings request.
--
-- * 'susMFAOptions' - You can use this parameter only to set an SMS configuration that uses SMS for delivery.
setUserSettings ::
  -- | 'susAccessToken'
  Text ->
  SetUserSettings
setUserSettings pAccessToken_ =
  SetUserSettings'
    { _susAccessToken =
        _Sensitive # pAccessToken_,
      _susMFAOptions = mempty
    }

-- | The access token for the set user settings request.
susAccessToken :: Lens' SetUserSettings Text
susAccessToken = lens _susAccessToken (\s a -> s {_susAccessToken = a}) . _Sensitive

-- | You can use this parameter only to set an SMS configuration that uses SMS for delivery.
susMFAOptions :: Lens' SetUserSettings [MFAOptionType]
susMFAOptions = lens _susMFAOptions (\s a -> s {_susMFAOptions = a}) . _Coerce

instance AWSRequest SetUserSettings where
  type Rs SetUserSettings = SetUserSettingsResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveEmpty
      ( \s h x ->
          SetUserSettingsResponse' <$> (pure (fromEnum s))
      )

instance Hashable SetUserSettings

instance NFData SetUserSettings

instance ToHeaders SetUserSettings where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.SetUserSettings" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SetUserSettings where
  toJSON SetUserSettings' {..} =
    object
      ( catMaybes
          [ Just ("AccessToken" .= _susAccessToken),
            Just ("MFAOptions" .= _susMFAOptions)
          ]
      )

instance ToPath SetUserSettings where
  toPath = const "/"

instance ToQuery SetUserSettings where
  toQuery = const mempty

-- | The response from the server for a set user settings request.
--
--
--
-- /See:/ 'setUserSettingsResponse' smart constructor.
newtype SetUserSettingsResponse = SetUserSettingsResponse'
  { _susrrsResponseStatus ::
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

-- | Creates a value of 'SetUserSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'susrrsResponseStatus' - -- | The response status code.
setUserSettingsResponse ::
  -- | 'susrrsResponseStatus'
  Int ->
  SetUserSettingsResponse
setUserSettingsResponse pResponseStatus_ =
  SetUserSettingsResponse'
    { _susrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
susrrsResponseStatus :: Lens' SetUserSettingsResponse Int
susrrsResponseStatus = lens _susrrsResponseStatus (\s a -> s {_susrrsResponseStatus = a})

instance NFData SetUserSettingsResponse
