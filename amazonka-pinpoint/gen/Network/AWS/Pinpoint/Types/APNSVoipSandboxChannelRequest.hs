{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.
--
--
--
-- /See:/ 'apnsVoipSandboxChannelRequest' smart constructor.
data APNSVoipSandboxChannelRequest = APNSVoipSandboxChannelRequest'
  { _avscrDefaultAuthenticationMethod ::
      !( Maybe
           Text
       ),
    _avscrTokenKey ::
      !( Maybe
           Text
       ),
    _avscrBundleId ::
      !( Maybe
           Text
       ),
    _avscrTeamId ::
      !( Maybe
           Text
       ),
    _avscrEnabled ::
      !( Maybe
           Bool
       ),
    _avscrPrivateKey ::
      !( Maybe
           Text
       ),
    _avscrTokenKeyId ::
      !( Maybe
           Text
       ),
    _avscrCertificate ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'APNSVoipSandboxChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avscrDefaultAuthenticationMethod' - The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment for this channel, key or certificate.
--
-- * 'avscrTokenKey' - The authentication key to use for APNs tokens.
--
-- * 'avscrBundleId' - The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.
--
-- * 'avscrTeamId' - The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.
--
-- * 'avscrEnabled' - Specifies whether the APNs VoIP sandbox channel is enabled for the application.
--
-- * 'avscrPrivateKey' - The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.
--
-- * 'avscrTokenKeyId' - The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.
--
-- * 'avscrCertificate' - The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.
apnsVoipSandboxChannelRequest ::
  APNSVoipSandboxChannelRequest
apnsVoipSandboxChannelRequest =
  APNSVoipSandboxChannelRequest'
    { _avscrDefaultAuthenticationMethod =
        Nothing,
      _avscrTokenKey = Nothing,
      _avscrBundleId = Nothing,
      _avscrTeamId = Nothing,
      _avscrEnabled = Nothing,
      _avscrPrivateKey = Nothing,
      _avscrTokenKeyId = Nothing,
      _avscrCertificate = Nothing
    }

-- | The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment for this channel, key or certificate.
avscrDefaultAuthenticationMethod :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrDefaultAuthenticationMethod = lens _avscrDefaultAuthenticationMethod (\s a -> s {_avscrDefaultAuthenticationMethod = a})

-- | The authentication key to use for APNs tokens.
avscrTokenKey :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrTokenKey = lens _avscrTokenKey (\s a -> s {_avscrTokenKey = a})

-- | The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.
avscrBundleId :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrBundleId = lens _avscrBundleId (\s a -> s {_avscrBundleId = a})

-- | The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.
avscrTeamId :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrTeamId = lens _avscrTeamId (\s a -> s {_avscrTeamId = a})

-- | Specifies whether the APNs VoIP sandbox channel is enabled for the application.
avscrEnabled :: Lens' APNSVoipSandboxChannelRequest (Maybe Bool)
avscrEnabled = lens _avscrEnabled (\s a -> s {_avscrEnabled = a})

-- | The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.
avscrPrivateKey :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrPrivateKey = lens _avscrPrivateKey (\s a -> s {_avscrPrivateKey = a})

-- | The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.
avscrTokenKeyId :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrTokenKeyId = lens _avscrTokenKeyId (\s a -> s {_avscrTokenKeyId = a})

-- | The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.
avscrCertificate :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrCertificate = lens _avscrCertificate (\s a -> s {_avscrCertificate = a})

instance Hashable APNSVoipSandboxChannelRequest

instance NFData APNSVoipSandboxChannelRequest

instance ToJSON APNSVoipSandboxChannelRequest where
  toJSON APNSVoipSandboxChannelRequest' {..} =
    object
      ( catMaybes
          [ ("DefaultAuthenticationMethod" .=)
              <$> _avscrDefaultAuthenticationMethod,
            ("TokenKey" .=) <$> _avscrTokenKey,
            ("BundleId" .=) <$> _avscrBundleId,
            ("TeamId" .=) <$> _avscrTeamId,
            ("Enabled" .=) <$> _avscrEnabled,
            ("PrivateKey" .=) <$> _avscrPrivateKey,
            ("TokenKeyId" .=) <$> _avscrTokenKeyId,
            ("Certificate" .=) <$> _avscrCertificate
          ]
      )
