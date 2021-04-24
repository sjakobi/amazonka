{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.SmsMFAConfigType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.SmsMFAConfigType where

import Network.AWS.CognitoIdentityProvider.Types.SmsConfigurationType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The SMS text message multi-factor authentication (MFA) configuration type.
--
--
--
-- /See:/ 'smsMFAConfigType' smart constructor.
data SmsMFAConfigType = SmsMFAConfigType'
  { _smctSmsConfiguration ::
      !(Maybe SmsConfigurationType),
    _smctSmsAuthenticationMessage ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SmsMFAConfigType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smctSmsConfiguration' - The SMS configuration.
--
-- * 'smctSmsAuthenticationMessage' - The SMS authentication message that will be sent to users with the code they need to sign in. The message must contain the ‘{####}’ placeholder, which will be replaced with the code. If the message is not included, and default message will be used.
smsMFAConfigType ::
  SmsMFAConfigType
smsMFAConfigType =
  SmsMFAConfigType'
    { _smctSmsConfiguration = Nothing,
      _smctSmsAuthenticationMessage = Nothing
    }

-- | The SMS configuration.
smctSmsConfiguration :: Lens' SmsMFAConfigType (Maybe SmsConfigurationType)
smctSmsConfiguration = lens _smctSmsConfiguration (\s a -> s {_smctSmsConfiguration = a})

-- | The SMS authentication message that will be sent to users with the code they need to sign in. The message must contain the ‘{####}’ placeholder, which will be replaced with the code. If the message is not included, and default message will be used.
smctSmsAuthenticationMessage :: Lens' SmsMFAConfigType (Maybe Text)
smctSmsAuthenticationMessage = lens _smctSmsAuthenticationMessage (\s a -> s {_smctSmsAuthenticationMessage = a})

instance FromJSON SmsMFAConfigType where
  parseJSON =
    withObject
      "SmsMFAConfigType"
      ( \x ->
          SmsMFAConfigType'
            <$> (x .:? "SmsConfiguration")
            <*> (x .:? "SmsAuthenticationMessage")
      )

instance Hashable SmsMFAConfigType

instance NFData SmsMFAConfigType

instance ToJSON SmsMFAConfigType where
  toJSON SmsMFAConfigType' {..} =
    object
      ( catMaybes
          [ ("SmsConfiguration" .=) <$> _smctSmsConfiguration,
            ("SmsAuthenticationMessage" .=)
              <$> _smctSmsAuthenticationMessage
          ]
      )
