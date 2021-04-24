{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSSandboxChannelRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.APNSSandboxChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.
--
--
--
-- /See:/ 'apnsSandboxChannelRequest' smart constructor.
data APNSSandboxChannelRequest = APNSSandboxChannelRequest'
  { _apnsscrDefaultAuthenticationMethod ::
      !(Maybe Text),
    _apnsscrTokenKey ::
      !(Maybe Text),
    _apnsscrBundleId ::
      !(Maybe Text),
    _apnsscrTeamId ::
      !(Maybe Text),
    _apnsscrEnabled ::
      !(Maybe Bool),
    _apnsscrPrivateKey ::
      !(Maybe Text),
    _apnsscrTokenKeyId ::
      !(Maybe Text),
    _apnsscrCertificate ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'APNSSandboxChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apnsscrDefaultAuthenticationMethod' - The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment, key or certificate.
--
-- * 'apnsscrTokenKey' - The authentication key to use for APNs tokens.
--
-- * 'apnsscrBundleId' - The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.
--
-- * 'apnsscrTeamId' - The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.
--
-- * 'apnsscrEnabled' - Specifies whether to enable the APNs sandbox channel for the application.
--
-- * 'apnsscrPrivateKey' - The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.
--
-- * 'apnsscrTokenKeyId' - The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.
--
-- * 'apnsscrCertificate' - The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.
apnsSandboxChannelRequest ::
  APNSSandboxChannelRequest
apnsSandboxChannelRequest =
  APNSSandboxChannelRequest'
    { _apnsscrDefaultAuthenticationMethod =
        Nothing,
      _apnsscrTokenKey = Nothing,
      _apnsscrBundleId = Nothing,
      _apnsscrTeamId = Nothing,
      _apnsscrEnabled = Nothing,
      _apnsscrPrivateKey = Nothing,
      _apnsscrTokenKeyId = Nothing,
      _apnsscrCertificate = Nothing
    }

-- | The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment, key or certificate.
apnsscrDefaultAuthenticationMethod :: Lens' APNSSandboxChannelRequest (Maybe Text)
apnsscrDefaultAuthenticationMethod = lens _apnsscrDefaultAuthenticationMethod (\s a -> s {_apnsscrDefaultAuthenticationMethod = a})

-- | The authentication key to use for APNs tokens.
apnsscrTokenKey :: Lens' APNSSandboxChannelRequest (Maybe Text)
apnsscrTokenKey = lens _apnsscrTokenKey (\s a -> s {_apnsscrTokenKey = a})

-- | The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.
apnsscrBundleId :: Lens' APNSSandboxChannelRequest (Maybe Text)
apnsscrBundleId = lens _apnsscrBundleId (\s a -> s {_apnsscrBundleId = a})

-- | The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.
apnsscrTeamId :: Lens' APNSSandboxChannelRequest (Maybe Text)
apnsscrTeamId = lens _apnsscrTeamId (\s a -> s {_apnsscrTeamId = a})

-- | Specifies whether to enable the APNs sandbox channel for the application.
apnsscrEnabled :: Lens' APNSSandboxChannelRequest (Maybe Bool)
apnsscrEnabled = lens _apnsscrEnabled (\s a -> s {_apnsscrEnabled = a})

-- | The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.
apnsscrPrivateKey :: Lens' APNSSandboxChannelRequest (Maybe Text)
apnsscrPrivateKey = lens _apnsscrPrivateKey (\s a -> s {_apnsscrPrivateKey = a})

-- | The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.
apnsscrTokenKeyId :: Lens' APNSSandboxChannelRequest (Maybe Text)
apnsscrTokenKeyId = lens _apnsscrTokenKeyId (\s a -> s {_apnsscrTokenKeyId = a})

-- | The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.
apnsscrCertificate :: Lens' APNSSandboxChannelRequest (Maybe Text)
apnsscrCertificate = lens _apnsscrCertificate (\s a -> s {_apnsscrCertificate = a})

instance Hashable APNSSandboxChannelRequest

instance NFData APNSSandboxChannelRequest

instance ToJSON APNSSandboxChannelRequest where
  toJSON APNSSandboxChannelRequest' {..} =
    object
      ( catMaybes
          [ ("DefaultAuthenticationMethod" .=)
              <$> _apnsscrDefaultAuthenticationMethod,
            ("TokenKey" .=) <$> _apnsscrTokenKey,
            ("BundleId" .=) <$> _apnsscrBundleId,
            ("TeamId" .=) <$> _apnsscrTeamId,
            ("Enabled" .=) <$> _apnsscrEnabled,
            ("PrivateKey" .=) <$> _apnsscrPrivateKey,
            ("TokenKeyId" .=) <$> _apnsscrTokenKeyId,
            ("Certificate" .=) <$> _apnsscrCertificate
          ]
      )
