{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MsSmoothGroupSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MsSmoothGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.DestinationSettings
import Network.AWS.MediaConvert.Types.MsSmoothAdditionalManifest
import Network.AWS.MediaConvert.Types.MsSmoothAudioDeduplication
import Network.AWS.MediaConvert.Types.MsSmoothEncryptionSettings
import Network.AWS.MediaConvert.Types.MsSmoothManifestEncoding
import Network.AWS.Prelude

-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to MS_SMOOTH_GROUP_SETTINGS.
--
-- /See:/ 'msSmoothGroupSettings' smart constructor.
data MsSmoothGroupSettings = MsSmoothGroupSettings'
  { _msgsManifestEncoding ::
      !( Maybe
           MsSmoothManifestEncoding
       ),
    _msgsFragmentLength ::
      !(Maybe Nat),
    _msgsAdditionalManifests ::
      !( Maybe
           [MsSmoothAdditionalManifest]
       ),
    _msgsEncryption ::
      !( Maybe
           MsSmoothEncryptionSettings
       ),
    _msgsDestination ::
      !(Maybe Text),
    _msgsDestinationSettings ::
      !( Maybe
           DestinationSettings
       ),
    _msgsAudioDeduplication ::
      !( Maybe
           MsSmoothAudioDeduplication
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

-- | Creates a value of 'MsSmoothGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msgsManifestEncoding' - Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16.
--
-- * 'msgsFragmentLength' - Use Fragment length (FragmentLength) to specify the mp4 fragment sizes in seconds. Fragment length must be compatible with GOP size and frame rate.
--
-- * 'msgsAdditionalManifests' - By default, the service creates one .ism Microsoft Smooth Streaming manifest for each Microsoft Smooth Streaming output group in your job. This default manifest references every output in the output group. To create additional manifests that reference a subset of the outputs in the output group, specify a list of them here.
--
-- * 'msgsEncryption' - If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider.
--
-- * 'msgsDestination' - Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
--
-- * 'msgsDestinationSettings' - Settings associated with the destination. Will vary based on the type of destination
--
-- * 'msgsAudioDeduplication' - COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream.
msSmoothGroupSettings ::
  MsSmoothGroupSettings
msSmoothGroupSettings =
  MsSmoothGroupSettings'
    { _msgsManifestEncoding =
        Nothing,
      _msgsFragmentLength = Nothing,
      _msgsAdditionalManifests = Nothing,
      _msgsEncryption = Nothing,
      _msgsDestination = Nothing,
      _msgsDestinationSettings = Nothing,
      _msgsAudioDeduplication = Nothing
    }

-- | Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16.
msgsManifestEncoding :: Lens' MsSmoothGroupSettings (Maybe MsSmoothManifestEncoding)
msgsManifestEncoding = lens _msgsManifestEncoding (\s a -> s {_msgsManifestEncoding = a})

-- | Use Fragment length (FragmentLength) to specify the mp4 fragment sizes in seconds. Fragment length must be compatible with GOP size and frame rate.
msgsFragmentLength :: Lens' MsSmoothGroupSettings (Maybe Natural)
msgsFragmentLength = lens _msgsFragmentLength (\s a -> s {_msgsFragmentLength = a}) . mapping _Nat

-- | By default, the service creates one .ism Microsoft Smooth Streaming manifest for each Microsoft Smooth Streaming output group in your job. This default manifest references every output in the output group. To create additional manifests that reference a subset of the outputs in the output group, specify a list of them here.
msgsAdditionalManifests :: Lens' MsSmoothGroupSettings [MsSmoothAdditionalManifest]
msgsAdditionalManifests = lens _msgsAdditionalManifests (\s a -> s {_msgsAdditionalManifests = a}) . _Default . _Coerce

-- | If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider.
msgsEncryption :: Lens' MsSmoothGroupSettings (Maybe MsSmoothEncryptionSettings)
msgsEncryption = lens _msgsEncryption (\s a -> s {_msgsEncryption = a})

-- | Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
msgsDestination :: Lens' MsSmoothGroupSettings (Maybe Text)
msgsDestination = lens _msgsDestination (\s a -> s {_msgsDestination = a})

-- | Settings associated with the destination. Will vary based on the type of destination
msgsDestinationSettings :: Lens' MsSmoothGroupSettings (Maybe DestinationSettings)
msgsDestinationSettings = lens _msgsDestinationSettings (\s a -> s {_msgsDestinationSettings = a})

-- | COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream.
msgsAudioDeduplication :: Lens' MsSmoothGroupSettings (Maybe MsSmoothAudioDeduplication)
msgsAudioDeduplication = lens _msgsAudioDeduplication (\s a -> s {_msgsAudioDeduplication = a})

instance FromJSON MsSmoothGroupSettings where
  parseJSON =
    withObject
      "MsSmoothGroupSettings"
      ( \x ->
          MsSmoothGroupSettings'
            <$> (x .:? "manifestEncoding")
            <*> (x .:? "fragmentLength")
            <*> (x .:? "additionalManifests" .!= mempty)
            <*> (x .:? "encryption")
            <*> (x .:? "destination")
            <*> (x .:? "destinationSettings")
            <*> (x .:? "audioDeduplication")
      )

instance Hashable MsSmoothGroupSettings

instance NFData MsSmoothGroupSettings

instance ToJSON MsSmoothGroupSettings where
  toJSON MsSmoothGroupSettings' {..} =
    object
      ( catMaybes
          [ ("manifestEncoding" .=) <$> _msgsManifestEncoding,
            ("fragmentLength" .=) <$> _msgsFragmentLength,
            ("additionalManifests" .=)
              <$> _msgsAdditionalManifests,
            ("encryption" .=) <$> _msgsEncryption,
            ("destination" .=) <$> _msgsDestination,
            ("destinationSettings" .=)
              <$> _msgsDestinationSettings,
            ("audioDeduplication" .=)
              <$> _msgsAudioDeduplication
          ]
      )
