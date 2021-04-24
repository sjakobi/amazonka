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
-- Module      : Network.AWS.CognitoIdentityProvider.SetUserPoolMFAConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set the user pool multi-factor authentication (MFA) configuration.
module Network.AWS.CognitoIdentityProvider.SetUserPoolMFAConfig
  ( -- * Creating a Request
    setUserPoolMFAConfig,
    SetUserPoolMFAConfig,

    -- * Request Lenses
    supmcSoftwareTokenMFAConfiguration,
    supmcSmsMFAConfiguration,
    supmcMFAConfiguration,
    supmcUserPoolId,

    -- * Destructuring the Response
    setUserPoolMFAConfigResponse,
    SetUserPoolMFAConfigResponse,

    -- * Response Lenses
    supmcrrsSoftwareTokenMFAConfiguration,
    supmcrrsSmsMFAConfiguration,
    supmcrrsMFAConfiguration,
    supmcrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setUserPoolMFAConfig' smart constructor.
data SetUserPoolMFAConfig = SetUserPoolMFAConfig'
  { _supmcSoftwareTokenMFAConfiguration ::
      !( Maybe
           SoftwareTokenMFAConfigType
       ),
    _supmcSmsMFAConfiguration ::
      !(Maybe SmsMFAConfigType),
    _supmcMFAConfiguration ::
      !(Maybe UserPoolMFAType),
    _supmcUserPoolId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetUserPoolMFAConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'supmcSoftwareTokenMFAConfiguration' - The software token MFA configuration.
--
-- * 'supmcSmsMFAConfiguration' - The SMS text message MFA configuration.
--
-- * 'supmcMFAConfiguration' - The MFA configuration. Valid values include:     * @OFF@ MFA will not be used for any users.     * @ON@ MFA is required for all users to sign in.     * @OPTIONAL@ MFA will be required only for individual users who have an MFA factor enabled.
--
-- * 'supmcUserPoolId' - The user pool ID.
setUserPoolMFAConfig ::
  -- | 'supmcUserPoolId'
  Text ->
  SetUserPoolMFAConfig
setUserPoolMFAConfig pUserPoolId_ =
  SetUserPoolMFAConfig'
    { _supmcSoftwareTokenMFAConfiguration =
        Nothing,
      _supmcSmsMFAConfiguration = Nothing,
      _supmcMFAConfiguration = Nothing,
      _supmcUserPoolId = pUserPoolId_
    }

-- | The software token MFA configuration.
supmcSoftwareTokenMFAConfiguration :: Lens' SetUserPoolMFAConfig (Maybe SoftwareTokenMFAConfigType)
supmcSoftwareTokenMFAConfiguration = lens _supmcSoftwareTokenMFAConfiguration (\s a -> s {_supmcSoftwareTokenMFAConfiguration = a})

-- | The SMS text message MFA configuration.
supmcSmsMFAConfiguration :: Lens' SetUserPoolMFAConfig (Maybe SmsMFAConfigType)
supmcSmsMFAConfiguration = lens _supmcSmsMFAConfiguration (\s a -> s {_supmcSmsMFAConfiguration = a})

-- | The MFA configuration. Valid values include:     * @OFF@ MFA will not be used for any users.     * @ON@ MFA is required for all users to sign in.     * @OPTIONAL@ MFA will be required only for individual users who have an MFA factor enabled.
supmcMFAConfiguration :: Lens' SetUserPoolMFAConfig (Maybe UserPoolMFAType)
supmcMFAConfiguration = lens _supmcMFAConfiguration (\s a -> s {_supmcMFAConfiguration = a})

-- | The user pool ID.
supmcUserPoolId :: Lens' SetUserPoolMFAConfig Text
supmcUserPoolId = lens _supmcUserPoolId (\s a -> s {_supmcUserPoolId = a})

instance AWSRequest SetUserPoolMFAConfig where
  type
    Rs SetUserPoolMFAConfig =
      SetUserPoolMFAConfigResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          SetUserPoolMFAConfigResponse'
            <$> (x .?> "SoftwareTokenMfaConfiguration")
            <*> (x .?> "SmsMfaConfiguration")
            <*> (x .?> "MfaConfiguration")
            <*> (pure (fromEnum s))
      )

instance Hashable SetUserPoolMFAConfig

instance NFData SetUserPoolMFAConfig

instance ToHeaders SetUserPoolMFAConfig where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.SetUserPoolMfaConfig" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SetUserPoolMFAConfig where
  toJSON SetUserPoolMFAConfig' {..} =
    object
      ( catMaybes
          [ ("SoftwareTokenMfaConfiguration" .=)
              <$> _supmcSoftwareTokenMFAConfiguration,
            ("SmsMfaConfiguration" .=)
              <$> _supmcSmsMFAConfiguration,
            ("MfaConfiguration" .=) <$> _supmcMFAConfiguration,
            Just ("UserPoolId" .= _supmcUserPoolId)
          ]
      )

instance ToPath SetUserPoolMFAConfig where
  toPath = const "/"

instance ToQuery SetUserPoolMFAConfig where
  toQuery = const mempty

-- | /See:/ 'setUserPoolMFAConfigResponse' smart constructor.
data SetUserPoolMFAConfigResponse = SetUserPoolMFAConfigResponse'
  { _supmcrrsSoftwareTokenMFAConfiguration ::
      !( Maybe
           SoftwareTokenMFAConfigType
       ),
    _supmcrrsSmsMFAConfiguration ::
      !( Maybe
           SmsMFAConfigType
       ),
    _supmcrrsMFAConfiguration ::
      !( Maybe
           UserPoolMFAType
       ),
    _supmcrrsResponseStatus ::
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

-- | Creates a value of 'SetUserPoolMFAConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'supmcrrsSoftwareTokenMFAConfiguration' - The software token MFA configuration.
--
-- * 'supmcrrsSmsMFAConfiguration' - The SMS text message MFA configuration.
--
-- * 'supmcrrsMFAConfiguration' - The MFA configuration. Valid values include:     * @OFF@ MFA will not be used for any users.     * @ON@ MFA is required for all users to sign in.     * @OPTIONAL@ MFA will be required only for individual users who have an MFA factor enabled.
--
-- * 'supmcrrsResponseStatus' - -- | The response status code.
setUserPoolMFAConfigResponse ::
  -- | 'supmcrrsResponseStatus'
  Int ->
  SetUserPoolMFAConfigResponse
setUserPoolMFAConfigResponse pResponseStatus_ =
  SetUserPoolMFAConfigResponse'
    { _supmcrrsSoftwareTokenMFAConfiguration =
        Nothing,
      _supmcrrsSmsMFAConfiguration = Nothing,
      _supmcrrsMFAConfiguration = Nothing,
      _supmcrrsResponseStatus = pResponseStatus_
    }

-- | The software token MFA configuration.
supmcrrsSoftwareTokenMFAConfiguration :: Lens' SetUserPoolMFAConfigResponse (Maybe SoftwareTokenMFAConfigType)
supmcrrsSoftwareTokenMFAConfiguration = lens _supmcrrsSoftwareTokenMFAConfiguration (\s a -> s {_supmcrrsSoftwareTokenMFAConfiguration = a})

-- | The SMS text message MFA configuration.
supmcrrsSmsMFAConfiguration :: Lens' SetUserPoolMFAConfigResponse (Maybe SmsMFAConfigType)
supmcrrsSmsMFAConfiguration = lens _supmcrrsSmsMFAConfiguration (\s a -> s {_supmcrrsSmsMFAConfiguration = a})

-- | The MFA configuration. Valid values include:     * @OFF@ MFA will not be used for any users.     * @ON@ MFA is required for all users to sign in.     * @OPTIONAL@ MFA will be required only for individual users who have an MFA factor enabled.
supmcrrsMFAConfiguration :: Lens' SetUserPoolMFAConfigResponse (Maybe UserPoolMFAType)
supmcrrsMFAConfiguration = lens _supmcrrsMFAConfiguration (\s a -> s {_supmcrrsMFAConfiguration = a})

-- | -- | The response status code.
supmcrrsResponseStatus :: Lens' SetUserPoolMFAConfigResponse Int
supmcrrsResponseStatus = lens _supmcrrsResponseStatus (\s a -> s {_supmcrrsResponseStatus = a})

instance NFData SetUserPoolMFAConfigResponse
