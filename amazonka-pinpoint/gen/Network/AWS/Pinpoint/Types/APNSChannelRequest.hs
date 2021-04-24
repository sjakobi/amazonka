{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSChannelRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.APNSChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the status and settings of the APNs (Apple Push Notification service) channel for an application.
--
--
--
-- /See:/ 'apnsChannelRequest' smart constructor.
data APNSChannelRequest = APNSChannelRequest'
  { _apnscrDefaultAuthenticationMethod ::
      !(Maybe Text),
    _apnscrTokenKey :: !(Maybe Text),
    _apnscrBundleId :: !(Maybe Text),
    _apnscrTeamId :: !(Maybe Text),
    _apnscrEnabled :: !(Maybe Bool),
    _apnscrPrivateKey ::
      !(Maybe Text),
    _apnscrTokenKeyId ::
      !(Maybe Text),
    _apnscrCertificate ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'APNSChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apnscrDefaultAuthenticationMethod' - The default authentication method that you want Amazon Pinpoint to use when authenticating with APNs, key or certificate.
--
-- * 'apnscrTokenKey' - The authentication key to use for APNs tokens.
--
-- * 'apnscrBundleId' - The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.
--
-- * 'apnscrTeamId' - The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.
--
-- * 'apnscrEnabled' - Specifies whether to enable the APNs channel for the application.
--
-- * 'apnscrPrivateKey' - The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with APNs.
--
-- * 'apnscrTokenKeyId' - The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with APNs by using APNs tokens.
--
-- * 'apnscrCertificate' - The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with APNs by using an APNs certificate.
apnsChannelRequest ::
  APNSChannelRequest
apnsChannelRequest =
  APNSChannelRequest'
    { _apnscrDefaultAuthenticationMethod =
        Nothing,
      _apnscrTokenKey = Nothing,
      _apnscrBundleId = Nothing,
      _apnscrTeamId = Nothing,
      _apnscrEnabled = Nothing,
      _apnscrPrivateKey = Nothing,
      _apnscrTokenKeyId = Nothing,
      _apnscrCertificate = Nothing
    }

-- | The default authentication method that you want Amazon Pinpoint to use when authenticating with APNs, key or certificate.
apnscrDefaultAuthenticationMethod :: Lens' APNSChannelRequest (Maybe Text)
apnscrDefaultAuthenticationMethod = lens _apnscrDefaultAuthenticationMethod (\s a -> s {_apnscrDefaultAuthenticationMethod = a})

-- | The authentication key to use for APNs tokens.
apnscrTokenKey :: Lens' APNSChannelRequest (Maybe Text)
apnscrTokenKey = lens _apnscrTokenKey (\s a -> s {_apnscrTokenKey = a})

-- | The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.
apnscrBundleId :: Lens' APNSChannelRequest (Maybe Text)
apnscrBundleId = lens _apnscrBundleId (\s a -> s {_apnscrBundleId = a})

-- | The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.
apnscrTeamId :: Lens' APNSChannelRequest (Maybe Text)
apnscrTeamId = lens _apnscrTeamId (\s a -> s {_apnscrTeamId = a})

-- | Specifies whether to enable the APNs channel for the application.
apnscrEnabled :: Lens' APNSChannelRequest (Maybe Bool)
apnscrEnabled = lens _apnscrEnabled (\s a -> s {_apnscrEnabled = a})

-- | The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with APNs.
apnscrPrivateKey :: Lens' APNSChannelRequest (Maybe Text)
apnscrPrivateKey = lens _apnscrPrivateKey (\s a -> s {_apnscrPrivateKey = a})

-- | The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with APNs by using APNs tokens.
apnscrTokenKeyId :: Lens' APNSChannelRequest (Maybe Text)
apnscrTokenKeyId = lens _apnscrTokenKeyId (\s a -> s {_apnscrTokenKeyId = a})

-- | The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with APNs by using an APNs certificate.
apnscrCertificate :: Lens' APNSChannelRequest (Maybe Text)
apnscrCertificate = lens _apnscrCertificate (\s a -> s {_apnscrCertificate = a})

instance Hashable APNSChannelRequest

instance NFData APNSChannelRequest

instance ToJSON APNSChannelRequest where
  toJSON APNSChannelRequest' {..} =
    object
      ( catMaybes
          [ ("DefaultAuthenticationMethod" .=)
              <$> _apnscrDefaultAuthenticationMethod,
            ("TokenKey" .=) <$> _apnscrTokenKey,
            ("BundleId" .=) <$> _apnscrBundleId,
            ("TeamId" .=) <$> _apnscrTeamId,
            ("Enabled" .=) <$> _apnscrEnabled,
            ("PrivateKey" .=) <$> _apnscrPrivateKey,
            ("TokenKeyId" .=) <$> _apnscrTokenKeyId,
            ("Certificate" .=) <$> _apnscrCertificate
          ]
      )
