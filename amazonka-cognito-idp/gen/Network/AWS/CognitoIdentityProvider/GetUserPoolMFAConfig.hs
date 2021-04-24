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
-- Module      : Network.AWS.CognitoIdentityProvider.GetUserPoolMFAConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the user pool multi-factor authentication (MFA) configuration.
module Network.AWS.CognitoIdentityProvider.GetUserPoolMFAConfig
  ( -- * Creating a Request
    getUserPoolMFAConfig,
    GetUserPoolMFAConfig,

    -- * Request Lenses
    gupmcUserPoolId,

    -- * Destructuring the Response
    getUserPoolMFAConfigResponse,
    GetUserPoolMFAConfigResponse,

    -- * Response Lenses
    gupmcrrsSoftwareTokenMFAConfiguration,
    gupmcrrsSmsMFAConfiguration,
    gupmcrrsMFAConfiguration,
    gupmcrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getUserPoolMFAConfig' smart constructor.
newtype GetUserPoolMFAConfig = GetUserPoolMFAConfig'
  { _gupmcUserPoolId ::
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

-- | Creates a value of 'GetUserPoolMFAConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gupmcUserPoolId' - The user pool ID.
getUserPoolMFAConfig ::
  -- | 'gupmcUserPoolId'
  Text ->
  GetUserPoolMFAConfig
getUserPoolMFAConfig pUserPoolId_ =
  GetUserPoolMFAConfig'
    { _gupmcUserPoolId =
        pUserPoolId_
    }

-- | The user pool ID.
gupmcUserPoolId :: Lens' GetUserPoolMFAConfig Text
gupmcUserPoolId = lens _gupmcUserPoolId (\s a -> s {_gupmcUserPoolId = a})

instance AWSRequest GetUserPoolMFAConfig where
  type
    Rs GetUserPoolMFAConfig =
      GetUserPoolMFAConfigResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          GetUserPoolMFAConfigResponse'
            <$> (x .?> "SoftwareTokenMfaConfiguration")
            <*> (x .?> "SmsMfaConfiguration")
            <*> (x .?> "MfaConfiguration")
            <*> (pure (fromEnum s))
      )

instance Hashable GetUserPoolMFAConfig

instance NFData GetUserPoolMFAConfig

instance ToHeaders GetUserPoolMFAConfig where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.GetUserPoolMfaConfig" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetUserPoolMFAConfig where
  toJSON GetUserPoolMFAConfig' {..} =
    object
      (catMaybes [Just ("UserPoolId" .= _gupmcUserPoolId)])

instance ToPath GetUserPoolMFAConfig where
  toPath = const "/"

instance ToQuery GetUserPoolMFAConfig where
  toQuery = const mempty

-- | /See:/ 'getUserPoolMFAConfigResponse' smart constructor.
data GetUserPoolMFAConfigResponse = GetUserPoolMFAConfigResponse'
  { _gupmcrrsSoftwareTokenMFAConfiguration ::
      !( Maybe
           SoftwareTokenMFAConfigType
       ),
    _gupmcrrsSmsMFAConfiguration ::
      !( Maybe
           SmsMFAConfigType
       ),
    _gupmcrrsMFAConfiguration ::
      !( Maybe
           UserPoolMFAType
       ),
    _gupmcrrsResponseStatus ::
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

-- | Creates a value of 'GetUserPoolMFAConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gupmcrrsSoftwareTokenMFAConfiguration' - The software token multi-factor (MFA) configuration.
--
-- * 'gupmcrrsSmsMFAConfiguration' - The SMS text message multi-factor (MFA) configuration.
--
-- * 'gupmcrrsMFAConfiguration' - The multi-factor (MFA) configuration. Valid values include:     * @OFF@ MFA will not be used for any users.     * @ON@ MFA is required for all users to sign in.     * @OPTIONAL@ MFA will be required only for individual users who have an MFA factor enabled.
--
-- * 'gupmcrrsResponseStatus' - -- | The response status code.
getUserPoolMFAConfigResponse ::
  -- | 'gupmcrrsResponseStatus'
  Int ->
  GetUserPoolMFAConfigResponse
getUserPoolMFAConfigResponse pResponseStatus_ =
  GetUserPoolMFAConfigResponse'
    { _gupmcrrsSoftwareTokenMFAConfiguration =
        Nothing,
      _gupmcrrsSmsMFAConfiguration = Nothing,
      _gupmcrrsMFAConfiguration = Nothing,
      _gupmcrrsResponseStatus = pResponseStatus_
    }

-- | The software token multi-factor (MFA) configuration.
gupmcrrsSoftwareTokenMFAConfiguration :: Lens' GetUserPoolMFAConfigResponse (Maybe SoftwareTokenMFAConfigType)
gupmcrrsSoftwareTokenMFAConfiguration = lens _gupmcrrsSoftwareTokenMFAConfiguration (\s a -> s {_gupmcrrsSoftwareTokenMFAConfiguration = a})

-- | The SMS text message multi-factor (MFA) configuration.
gupmcrrsSmsMFAConfiguration :: Lens' GetUserPoolMFAConfigResponse (Maybe SmsMFAConfigType)
gupmcrrsSmsMFAConfiguration = lens _gupmcrrsSmsMFAConfiguration (\s a -> s {_gupmcrrsSmsMFAConfiguration = a})

-- | The multi-factor (MFA) configuration. Valid values include:     * @OFF@ MFA will not be used for any users.     * @ON@ MFA is required for all users to sign in.     * @OPTIONAL@ MFA will be required only for individual users who have an MFA factor enabled.
gupmcrrsMFAConfiguration :: Lens' GetUserPoolMFAConfigResponse (Maybe UserPoolMFAType)
gupmcrrsMFAConfiguration = lens _gupmcrrsMFAConfiguration (\s a -> s {_gupmcrrsMFAConfiguration = a})

-- | -- | The response status code.
gupmcrrsResponseStatus :: Lens' GetUserPoolMFAConfigResponse Int
gupmcrrsResponseStatus = lens _gupmcrrsResponseStatus (\s a -> s {_gupmcrrsResponseStatus = a})

instance NFData GetUserPoolMFAConfigResponse
