{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AacSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AacSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AacAudioDescriptionBroadcasterMix
import Network.AWS.MediaConvert.Types.AacCodecProfile
import Network.AWS.MediaConvert.Types.AacCodingMode
import Network.AWS.MediaConvert.Types.AacRateControlMode
import Network.AWS.MediaConvert.Types.AacRawFormat
import Network.AWS.MediaConvert.Types.AacSpecification
import Network.AWS.MediaConvert.Types.AacVbrQuality
import Network.AWS.Prelude

-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AAC. The service accepts one of two mutually exclusive groups of AAC settings--VBR and CBR. To select one of these modes, set the value of Bitrate control mode (rateControlMode) to "VBR" or "CBR".  In VBR mode, you control the audio quality with the setting VBR quality (vbrQuality). In CBR mode, you use the setting Bitrate (bitrate). Defaults and valid values depend on the rate control mode.
--
-- /See:/ 'aacSettings' smart constructor.
data AacSettings = AacSettings'
  { _aAudioDescriptionBroadcasterMix ::
      !(Maybe AacAudioDescriptionBroadcasterMix),
    _aRateControlMode ::
      !(Maybe AacRateControlMode),
    _aCodingMode :: !(Maybe AacCodingMode),
    _aCodecProfile :: !(Maybe AacCodecProfile),
    _aRawFormat :: !(Maybe AacRawFormat),
    _aSampleRate :: !(Maybe Nat),
    _aVbrQuality :: !(Maybe AacVbrQuality),
    _aBitrate :: !(Maybe Nat),
    _aSpecification :: !(Maybe AacSpecification)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AacSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAudioDescriptionBroadcasterMix' - Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and  FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType.
--
-- * 'aRateControlMode' - Rate Control Mode.
--
-- * 'aCodingMode' - Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. "1.0 - Audio Description (Receiver Mix)" setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.
--
-- * 'aCodecProfile' - AAC Profile.
--
-- * 'aRawFormat' - Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose "No container" for the output container.
--
-- * 'aSampleRate' - Sample rate in Hz. Valid values depend on rate control mode and profile.
--
-- * 'aVbrQuality' - VBR Quality Level - Only used if rate_control_mode is VBR.
--
-- * 'aBitrate' - Specify the average bitrate in bits per second. The set of valid values for this setting is: 6000, 8000, 10000, 12000, 14000, 16000, 20000, 24000, 28000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 384000, 448000, 512000, 576000, 640000, 768000, 896000, 1024000. The value you set is also constrained by the values that you choose for Profile (codecProfile), Bitrate control mode (codingMode), and Sample rate (sampleRate). Default values depend on Bitrate control mode and Profile.
--
-- * 'aSpecification' - Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
aacSettings ::
  AacSettings
aacSettings =
  AacSettings'
    { _aAudioDescriptionBroadcasterMix =
        Nothing,
      _aRateControlMode = Nothing,
      _aCodingMode = Nothing,
      _aCodecProfile = Nothing,
      _aRawFormat = Nothing,
      _aSampleRate = Nothing,
      _aVbrQuality = Nothing,
      _aBitrate = Nothing,
      _aSpecification = Nothing
    }

-- | Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and  FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType.
aAudioDescriptionBroadcasterMix :: Lens' AacSettings (Maybe AacAudioDescriptionBroadcasterMix)
aAudioDescriptionBroadcasterMix = lens _aAudioDescriptionBroadcasterMix (\s a -> s {_aAudioDescriptionBroadcasterMix = a})

-- | Rate Control Mode.
aRateControlMode :: Lens' AacSettings (Maybe AacRateControlMode)
aRateControlMode = lens _aRateControlMode (\s a -> s {_aRateControlMode = a})

-- | Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. "1.0 - Audio Description (Receiver Mix)" setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.
aCodingMode :: Lens' AacSettings (Maybe AacCodingMode)
aCodingMode = lens _aCodingMode (\s a -> s {_aCodingMode = a})

-- | AAC Profile.
aCodecProfile :: Lens' AacSettings (Maybe AacCodecProfile)
aCodecProfile = lens _aCodecProfile (\s a -> s {_aCodecProfile = a})

-- | Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose "No container" for the output container.
aRawFormat :: Lens' AacSettings (Maybe AacRawFormat)
aRawFormat = lens _aRawFormat (\s a -> s {_aRawFormat = a})

-- | Sample rate in Hz. Valid values depend on rate control mode and profile.
aSampleRate :: Lens' AacSettings (Maybe Natural)
aSampleRate = lens _aSampleRate (\s a -> s {_aSampleRate = a}) . mapping _Nat

-- | VBR Quality Level - Only used if rate_control_mode is VBR.
aVbrQuality :: Lens' AacSettings (Maybe AacVbrQuality)
aVbrQuality = lens _aVbrQuality (\s a -> s {_aVbrQuality = a})

-- | Specify the average bitrate in bits per second. The set of valid values for this setting is: 6000, 8000, 10000, 12000, 14000, 16000, 20000, 24000, 28000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 384000, 448000, 512000, 576000, 640000, 768000, 896000, 1024000. The value you set is also constrained by the values that you choose for Profile (codecProfile), Bitrate control mode (codingMode), and Sample rate (sampleRate). Default values depend on Bitrate control mode and Profile.
aBitrate :: Lens' AacSettings (Maybe Natural)
aBitrate = lens _aBitrate (\s a -> s {_aBitrate = a}) . mapping _Nat

-- | Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
aSpecification :: Lens' AacSettings (Maybe AacSpecification)
aSpecification = lens _aSpecification (\s a -> s {_aSpecification = a})

instance FromJSON AacSettings where
  parseJSON =
    withObject
      "AacSettings"
      ( \x ->
          AacSettings'
            <$> (x .:? "audioDescriptionBroadcasterMix")
            <*> (x .:? "rateControlMode")
            <*> (x .:? "codingMode")
            <*> (x .:? "codecProfile")
            <*> (x .:? "rawFormat")
            <*> (x .:? "sampleRate")
            <*> (x .:? "vbrQuality")
            <*> (x .:? "bitrate")
            <*> (x .:? "specification")
      )

instance Hashable AacSettings

instance NFData AacSettings

instance ToJSON AacSettings where
  toJSON AacSettings' {..} =
    object
      ( catMaybes
          [ ("audioDescriptionBroadcasterMix" .=)
              <$> _aAudioDescriptionBroadcasterMix,
            ("rateControlMode" .=) <$> _aRateControlMode,
            ("codingMode" .=) <$> _aCodingMode,
            ("codecProfile" .=) <$> _aCodecProfile,
            ("rawFormat" .=) <$> _aRawFormat,
            ("sampleRate" .=) <$> _aSampleRate,
            ("vbrQuality" .=) <$> _aVbrQuality,
            ("bitrate" .=) <$> _aBitrate,
            ("specification" .=) <$> _aSpecification
          ]
      )
