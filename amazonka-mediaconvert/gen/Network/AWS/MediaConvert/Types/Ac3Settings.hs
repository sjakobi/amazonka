{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Ac3Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Ac3Settings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.Ac3BitstreamMode
import Network.AWS.MediaConvert.Types.Ac3CodingMode
import Network.AWS.MediaConvert.Types.Ac3DynamicRangeCompressionProfile
import Network.AWS.MediaConvert.Types.Ac3LfeFilter
import Network.AWS.MediaConvert.Types.Ac3MetadataControl
import Network.AWS.Prelude

-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AC3.
--
-- /See:/ 'ac3Settings' smart constructor.
data Ac3Settings = Ac3Settings'
  { _asDialnorm ::
      !(Maybe Nat),
    _asCodingMode :: !(Maybe Ac3CodingMode),
    _asLfeFilter :: !(Maybe Ac3LfeFilter),
    _asDynamicRangeCompressionProfile ::
      !(Maybe Ac3DynamicRangeCompressionProfile),
    _asSampleRate :: !(Maybe Nat),
    _asBitstreamMode :: !(Maybe Ac3BitstreamMode),
    _asBitrate :: !(Maybe Nat),
    _asMetadataControl ::
      !(Maybe Ac3MetadataControl)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Ac3Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asDialnorm' - Sets the dialnorm for the output. If blank and input audio is Dolby Digital, dialnorm will be passed through.
--
-- * 'asCodingMode' - Dolby Digital coding mode. Determines number of channels.
--
-- * 'asLfeFilter' - Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
--
-- * 'asDynamicRangeCompressionProfile' - If set to FILM_STANDARD, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
--
-- * 'asSampleRate' - This value is always 48000. It represents the sample rate in Hz.
--
-- * 'asBitstreamMode' - Specify the bitstream mode for the AC-3 stream that the encoder emits. For more information about the AC3 bitstream mode, see ATSC A/52-2012 (Annex E).
--
-- * 'asBitrate' - Specify the average bitrate in bits per second. Valid bitrates depend on the coding mode.
--
-- * 'asMetadataControl' - When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
ac3Settings ::
  Ac3Settings
ac3Settings =
  Ac3Settings'
    { _asDialnorm = Nothing,
      _asCodingMode = Nothing,
      _asLfeFilter = Nothing,
      _asDynamicRangeCompressionProfile = Nothing,
      _asSampleRate = Nothing,
      _asBitstreamMode = Nothing,
      _asBitrate = Nothing,
      _asMetadataControl = Nothing
    }

-- | Sets the dialnorm for the output. If blank and input audio is Dolby Digital, dialnorm will be passed through.
asDialnorm :: Lens' Ac3Settings (Maybe Natural)
asDialnorm = lens _asDialnorm (\s a -> s {_asDialnorm = a}) . mapping _Nat

-- | Dolby Digital coding mode. Determines number of channels.
asCodingMode :: Lens' Ac3Settings (Maybe Ac3CodingMode)
asCodingMode = lens _asCodingMode (\s a -> s {_asCodingMode = a})

-- | Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
asLfeFilter :: Lens' Ac3Settings (Maybe Ac3LfeFilter)
asLfeFilter = lens _asLfeFilter (\s a -> s {_asLfeFilter = a})

-- | If set to FILM_STANDARD, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
asDynamicRangeCompressionProfile :: Lens' Ac3Settings (Maybe Ac3DynamicRangeCompressionProfile)
asDynamicRangeCompressionProfile = lens _asDynamicRangeCompressionProfile (\s a -> s {_asDynamicRangeCompressionProfile = a})

-- | This value is always 48000. It represents the sample rate in Hz.
asSampleRate :: Lens' Ac3Settings (Maybe Natural)
asSampleRate = lens _asSampleRate (\s a -> s {_asSampleRate = a}) . mapping _Nat

-- | Specify the bitstream mode for the AC-3 stream that the encoder emits. For more information about the AC3 bitstream mode, see ATSC A/52-2012 (Annex E).
asBitstreamMode :: Lens' Ac3Settings (Maybe Ac3BitstreamMode)
asBitstreamMode = lens _asBitstreamMode (\s a -> s {_asBitstreamMode = a})

-- | Specify the average bitrate in bits per second. Valid bitrates depend on the coding mode.
asBitrate :: Lens' Ac3Settings (Maybe Natural)
asBitrate = lens _asBitrate (\s a -> s {_asBitrate = a}) . mapping _Nat

-- | When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
asMetadataControl :: Lens' Ac3Settings (Maybe Ac3MetadataControl)
asMetadataControl = lens _asMetadataControl (\s a -> s {_asMetadataControl = a})

instance FromJSON Ac3Settings where
  parseJSON =
    withObject
      "Ac3Settings"
      ( \x ->
          Ac3Settings'
            <$> (x .:? "dialnorm")
            <*> (x .:? "codingMode")
            <*> (x .:? "lfeFilter")
            <*> (x .:? "dynamicRangeCompressionProfile")
            <*> (x .:? "sampleRate")
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
            ("codingMode" .=) <$> _asCodingMode,
            ("lfeFilter" .=) <$> _asLfeFilter,
            ("dynamicRangeCompressionProfile" .=)
              <$> _asDynamicRangeCompressionProfile,
            ("sampleRate" .=) <$> _asSampleRate,
            ("bitstreamMode" .=) <$> _asBitstreamMode,
            ("bitrate" .=) <$> _asBitrate,
            ("metadataControl" .=) <$> _asMetadataControl
          ]
      )
