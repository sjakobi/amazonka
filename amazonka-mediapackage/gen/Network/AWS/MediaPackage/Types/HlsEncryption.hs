{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.HlsEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.HlsEncryption where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types.EncryptionMethod
import Network.AWS.MediaPackage.Types.SpekeKeyProvider
import Network.AWS.Prelude

-- | An HTTP Live Streaming (HLS) encryption configuration.
--
-- /See:/ 'hlsEncryption' smart constructor.
data HlsEncryption = HlsEncryption'
  { _heRepeatExtXKey ::
      !(Maybe Bool),
    _heEncryptionMethod ::
      !(Maybe EncryptionMethod),
    _heConstantInitializationVector ::
      !(Maybe Text),
    _heKeyRotationIntervalSeconds ::
      !(Maybe Int),
    _heSpekeKeyProvider :: !SpekeKeyProvider
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HlsEncryption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'heRepeatExtXKey' - When enabled, the EXT-X-KEY tag will be repeated in output manifests.
--
-- * 'heEncryptionMethod' - The encryption method to use.
--
-- * 'heConstantInitializationVector' - A constant initialization vector for encryption (optional). When not specified the initialization vector will be periodically rotated.
--
-- * 'heKeyRotationIntervalSeconds' - Interval (in seconds) between each encryption key rotation.
--
-- * 'heSpekeKeyProvider' - Undocumented member.
hlsEncryption ::
  -- | 'heSpekeKeyProvider'
  SpekeKeyProvider ->
  HlsEncryption
hlsEncryption pSpekeKeyProvider_ =
  HlsEncryption'
    { _heRepeatExtXKey = Nothing,
      _heEncryptionMethod = Nothing,
      _heConstantInitializationVector = Nothing,
      _heKeyRotationIntervalSeconds = Nothing,
      _heSpekeKeyProvider = pSpekeKeyProvider_
    }

-- | When enabled, the EXT-X-KEY tag will be repeated in output manifests.
heRepeatExtXKey :: Lens' HlsEncryption (Maybe Bool)
heRepeatExtXKey = lens _heRepeatExtXKey (\s a -> s {_heRepeatExtXKey = a})

-- | The encryption method to use.
heEncryptionMethod :: Lens' HlsEncryption (Maybe EncryptionMethod)
heEncryptionMethod = lens _heEncryptionMethod (\s a -> s {_heEncryptionMethod = a})

-- | A constant initialization vector for encryption (optional). When not specified the initialization vector will be periodically rotated.
heConstantInitializationVector :: Lens' HlsEncryption (Maybe Text)
heConstantInitializationVector = lens _heConstantInitializationVector (\s a -> s {_heConstantInitializationVector = a})

-- | Interval (in seconds) between each encryption key rotation.
heKeyRotationIntervalSeconds :: Lens' HlsEncryption (Maybe Int)
heKeyRotationIntervalSeconds = lens _heKeyRotationIntervalSeconds (\s a -> s {_heKeyRotationIntervalSeconds = a})

-- | Undocumented member.
heSpekeKeyProvider :: Lens' HlsEncryption SpekeKeyProvider
heSpekeKeyProvider = lens _heSpekeKeyProvider (\s a -> s {_heSpekeKeyProvider = a})

instance FromJSON HlsEncryption where
  parseJSON =
    withObject
      "HlsEncryption"
      ( \x ->
          HlsEncryption'
            <$> (x .:? "repeatExtXKey")
            <*> (x .:? "encryptionMethod")
            <*> (x .:? "constantInitializationVector")
            <*> (x .:? "keyRotationIntervalSeconds")
            <*> (x .: "spekeKeyProvider")
      )

instance Hashable HlsEncryption

instance NFData HlsEncryption

instance ToJSON HlsEncryption where
  toJSON HlsEncryption' {..} =
    object
      ( catMaybes
          [ ("repeatExtXKey" .=) <$> _heRepeatExtXKey,
            ("encryptionMethod" .=) <$> _heEncryptionMethod,
            ("constantInitializationVector" .=)
              <$> _heConstantInitializationVector,
            ("keyRotationIntervalSeconds" .=)
              <$> _heKeyRotationIntervalSeconds,
            Just ("spekeKeyProvider" .= _heSpekeKeyProvider)
          ]
      )
