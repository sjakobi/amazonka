{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.Types.PlayReadyDrm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types.PlayReadyDrm where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The PlayReady DRM settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.
--
--
-- PlayReady DRM encrypts your media files using @aes-ctr@ encryption.
--
-- If you use DRM for an @HLSv3@ playlist, your outputs must have a master playlist.
--
--
-- /See:/ 'playReadyDrm' smart constructor.
data PlayReadyDrm = PlayReadyDrm'
  { _prdKey ::
      !(Maybe Text),
    _prdLicenseAcquisitionURL :: !(Maybe Text),
    _prdKeyMD5 :: !(Maybe Text),
    _prdFormat :: !(Maybe Text),
    _prdInitializationVector :: !(Maybe Text),
    _prdKeyId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PlayReadyDrm' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prdKey' - The DRM key for your file, provided by your DRM license provider. The key must be base64-encoded, and it must be one of the following bit lengths before being base64-encoded: @128@ , @192@ , or @256@ .  The key must also be encrypted by using AWS KMS.
--
-- * 'prdLicenseAcquisitionURL' - The location of the license key required to play DRM content. The URL must be an absolute path, and is referenced by the PlayReady header. The PlayReady header is referenced in the protection header of the client manifest for Smooth Streaming outputs, and in the EXT-X-DXDRM and EXT-XDXDRMINFO metadata tags for HLS playlist outputs. An example URL looks like this: @https://www.example.com/exampleKey/@
--
-- * 'prdKeyMD5' - The MD5 digest of the key used for DRM on your file, and that you want Elastic Transcoder to use as a checksum to make sure your key was not corrupted in transit. The key MD5 must be base64-encoded, and it must be exactly 16 bytes before being base64-encoded.
--
-- * 'prdFormat' - The type of DRM, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.
--
-- * 'prdInitializationVector' - The series of random bits created by a random bit generator, unique for every encryption operation, that you want Elastic Transcoder to use to encrypt your files. The initialization vector must be base64-encoded, and it must be exactly 8 bytes long before being base64-encoded. If no initialization vector is provided, Elastic Transcoder generates one for you.
--
-- * 'prdKeyId' - The ID for your DRM key, so that your DRM license provider knows which key to provide. The key ID must be provided in big endian, and Elastic Transcoder converts it to little endian before inserting it into the PlayReady DRM headers. If you are unsure whether your license server provides your key ID in big or little endian, check with your DRM provider.
playReadyDrm ::
  PlayReadyDrm
playReadyDrm =
  PlayReadyDrm'
    { _prdKey = Nothing,
      _prdLicenseAcquisitionURL = Nothing,
      _prdKeyMD5 = Nothing,
      _prdFormat = Nothing,
      _prdInitializationVector = Nothing,
      _prdKeyId = Nothing
    }

-- | The DRM key for your file, provided by your DRM license provider. The key must be base64-encoded, and it must be one of the following bit lengths before being base64-encoded: @128@ , @192@ , or @256@ .  The key must also be encrypted by using AWS KMS.
prdKey :: Lens' PlayReadyDrm (Maybe Text)
prdKey = lens _prdKey (\s a -> s {_prdKey = a})

-- | The location of the license key required to play DRM content. The URL must be an absolute path, and is referenced by the PlayReady header. The PlayReady header is referenced in the protection header of the client manifest for Smooth Streaming outputs, and in the EXT-X-DXDRM and EXT-XDXDRMINFO metadata tags for HLS playlist outputs. An example URL looks like this: @https://www.example.com/exampleKey/@
prdLicenseAcquisitionURL :: Lens' PlayReadyDrm (Maybe Text)
prdLicenseAcquisitionURL = lens _prdLicenseAcquisitionURL (\s a -> s {_prdLicenseAcquisitionURL = a})

-- | The MD5 digest of the key used for DRM on your file, and that you want Elastic Transcoder to use as a checksum to make sure your key was not corrupted in transit. The key MD5 must be base64-encoded, and it must be exactly 16 bytes before being base64-encoded.
prdKeyMD5 :: Lens' PlayReadyDrm (Maybe Text)
prdKeyMD5 = lens _prdKeyMD5 (\s a -> s {_prdKeyMD5 = a})

-- | The type of DRM, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.
prdFormat :: Lens' PlayReadyDrm (Maybe Text)
prdFormat = lens _prdFormat (\s a -> s {_prdFormat = a})

-- | The series of random bits created by a random bit generator, unique for every encryption operation, that you want Elastic Transcoder to use to encrypt your files. The initialization vector must be base64-encoded, and it must be exactly 8 bytes long before being base64-encoded. If no initialization vector is provided, Elastic Transcoder generates one for you.
prdInitializationVector :: Lens' PlayReadyDrm (Maybe Text)
prdInitializationVector = lens _prdInitializationVector (\s a -> s {_prdInitializationVector = a})

-- | The ID for your DRM key, so that your DRM license provider knows which key to provide. The key ID must be provided in big endian, and Elastic Transcoder converts it to little endian before inserting it into the PlayReady DRM headers. If you are unsure whether your license server provides your key ID in big or little endian, check with your DRM provider.
prdKeyId :: Lens' PlayReadyDrm (Maybe Text)
prdKeyId = lens _prdKeyId (\s a -> s {_prdKeyId = a})

instance FromJSON PlayReadyDrm where
  parseJSON =
    withObject
      "PlayReadyDrm"
      ( \x ->
          PlayReadyDrm'
            <$> (x .:? "Key")
            <*> (x .:? "LicenseAcquisitionUrl")
            <*> (x .:? "KeyMd5")
            <*> (x .:? "Format")
            <*> (x .:? "InitializationVector")
            <*> (x .:? "KeyId")
      )

instance Hashable PlayReadyDrm

instance NFData PlayReadyDrm

instance ToJSON PlayReadyDrm where
  toJSON PlayReadyDrm' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _prdKey,
            ("LicenseAcquisitionUrl" .=)
              <$> _prdLicenseAcquisitionURL,
            ("KeyMd5" .=) <$> _prdKeyMD5,
            ("Format" .=) <$> _prdFormat,
            ("InitializationVector" .=)
              <$> _prdInitializationVector,
            ("KeyId" .=) <$> _prdKeyId
          ]
      )
