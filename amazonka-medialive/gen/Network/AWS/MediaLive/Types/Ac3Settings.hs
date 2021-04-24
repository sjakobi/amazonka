{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Ac3Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Ac3Settings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.Ac3BitstreamMode
import Network.AWS.MediaLive.Types.Ac3CodingMode
import Network.AWS.MediaLive.Types.Ac3DrcProfile
import Network.AWS.MediaLive.Types.Ac3LfeFilter
import Network.AWS.MediaLive.Types.Ac3MetadataControl
import Network.AWS.Prelude

-- | Ac3 Settings
--
-- /See:/ 'ac3Settings' smart constructor.
data Ac3Settings = Ac3Settings'
  { _asDialnorm ::
      !(Maybe Nat),
    _asDrcProfile :: !(Maybe Ac3DrcProfile),
    _asCodingMode :: !(Maybe Ac3CodingMode),
    _asLfeFilter :: !(Maybe Ac3LfeFilter),
    _asBitstreamMode :: !(Maybe Ac3BitstreamMode),
    _asBitrate :: !(Maybe Double),
    _asMetadataControl ::
      !(Maybe Ac3MetadataControl)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Ac3Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asDialnorm' - Sets the dialnorm for the output. If excluded and input audio is Dolby Digital, dialnorm will be passed through.
--
-- * 'asDrcProfile' - If set to filmStandard, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
--
-- * 'asCodingMode' - Dolby Digital coding mode. Determines number of channels.
--
-- * 'asLfeFilter' - When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid in codingMode32Lfe mode.
--
-- * 'asBitstreamMode' - Specifies the bitstream mode (bsmod) for the emitted AC-3 stream. See ATSC A/52-2012 for background on these values.
--
-- * 'asBitrate' - Average bitrate in bits/second. Valid bitrates depend on the coding mode.
--
-- * 'asMetadataControl' - When set to "followInput", encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
ac3Settings ::
  Ac3Settings
ac3Settings =
  Ac3Settings'
    { _asDialnorm = Nothing,
      _asDrcProfile = Nothing,
      _asCodingMode = Nothing,
      _asLfeFilter = Nothing,
      _asBitstreamMode = Nothing,
      _asBitrate = Nothing,
      _asMetadataControl = Nothing
    }

-- | Sets the dialnorm for the output. If excluded and input audio is Dolby Digital, dialnorm will be passed through.
asDialnorm :: Lens' Ac3Settings (Maybe Natural)
asDialnorm = lens _asDialnorm (\s a -> s {_asDialnorm = a}) . mapping _Nat

-- | If set to filmStandard, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
asDrcProfile :: Lens' Ac3Settings (Maybe Ac3DrcProfile)
asDrcProfile = lens _asDrcProfile (\s a -> s {_asDrcProfile = a})

-- | Dolby Digital coding mode. Determines number of channels.
asCodingMode :: Lens' Ac3Settings (Maybe Ac3CodingMode)
asCodingMode = lens _asCodingMode (\s a -> s {_asCodingMode = a})

-- | When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid in codingMode32Lfe mode.
asLfeFilter :: Lens' Ac3Settings (Maybe Ac3LfeFilter)
asLfeFilter = lens _asLfeFilter (\s a -> s {_asLfeFilter = a})

-- | Specifies the bitstream mode (bsmod) for the emitted AC-3 stream. See ATSC A/52-2012 for background on these values.
asBitstreamMode :: Lens' Ac3Settings (Maybe Ac3BitstreamMode)
asBitstreamMode = lens _asBitstreamMode (\s a -> s {_asBitstreamMode = a})

-- | Average bitrate in bits/second. Valid bitrates depend on the coding mode.
asBitrate :: Lens' Ac3Settings (Maybe Double)
asBitrate = lens _asBitrate (\s a -> s {_asBitrate = a})

-- | When set to "followInput", encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
asMetadataControl :: Lens' Ac3Settings (Maybe Ac3MetadataControl)
asMetadataControl = lens _asMetadataControl (\s a -> s {_asMetadataControl = a})

instance FromJSON Ac3Settings where
  parseJSON =
    withObject
      "Ac3Settings"
      ( \x ->
          Ac3Settings'
            <$> (x .:? "dialnorm")
            <*> (x .:? "drcProfile")
            <*> (x .:? "codingMode")
            <*> (x .:? "lfeFilter")
            <*> (x .:? "bitstreamMode")
            <*> (x .:? "bitrate")
            <*> (x .:? "metadataControl")
      )

instance Hashable Ac3Settings

instance NFData Ac3Settings

instance ToJSON Ac3Settings where
  toJSON Ac3Settings' {..} =
    object
      ( catMaybes
          [ ("dialnorm" .=) <$> _asDialnorm,
            ("drcProfile" .=) <$> _asDrcProfile,
            ("codingMode" .=) <$> _asCodingMode,
            ("lfeFilter" .=) <$> _asLfeFilter,
            ("bitstreamMode" .=) <$> _asBitstreamMode,
            ("bitrate" .=) <$> _asBitrate,
            ("metadataControl" .=) <$> _asMetadataControl
          ]
      )
