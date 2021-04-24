{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AacSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AacSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AacCodingMode
import Network.AWS.MediaLive.Types.AacInputType
import Network.AWS.MediaLive.Types.AacProfile
import Network.AWS.MediaLive.Types.AacRateControlMode
import Network.AWS.MediaLive.Types.AacRawFormat
import Network.AWS.MediaLive.Types.AacSpec
import Network.AWS.MediaLive.Types.AacVbrQuality
import Network.AWS.Prelude

-- | Aac Settings
--
-- /See:/ 'aacSettings' smart constructor.
data AacSettings = AacSettings'
  { _aRateControlMode ::
      !(Maybe AacRateControlMode),
    _aCodingMode :: !(Maybe AacCodingMode),
    _aSpec :: !(Maybe AacSpec),
    _aRawFormat :: !(Maybe AacRawFormat),
    _aSampleRate :: !(Maybe Double),
    _aInputType :: !(Maybe AacInputType),
    _aProfile :: !(Maybe AacProfile),
    _aVbrQuality :: !(Maybe AacVbrQuality),
    _aBitrate :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AacSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aRateControlMode' - Rate Control Mode.
--
-- * 'aCodingMode' - Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. The adReceiverMix setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.
--
-- * 'aSpec' - Use MPEG-2 AAC audio instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
--
-- * 'aRawFormat' - Sets LATM / LOAS AAC output for raw containers.
--
-- * 'aSampleRate' - Sample rate in Hz. Valid values depend on rate control mode and profile.
--
-- * 'aInputType' - Set to "broadcasterMixedAd" when input contains pre-mixed main audio + AD (narration) as a stereo pair.  The Audio Type field (audioType) will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. The values in audioTypeControl and audioType (in AudioDescription) are ignored when set to broadcasterMixedAd. Leave set to "normal" when input does not contain pre-mixed audio + AD.
--
-- * 'aProfile' - AAC Profile.
--
-- * 'aVbrQuality' - VBR Quality Level - Only used if rateControlMode is VBR.
--
-- * 'aBitrate' - Average bitrate in bits/second. Valid values depend on rate control mode and profile.
aacSettings ::
  AacSettings
aacSettings =
  AacSettings'
    { _aRateControlMode = Nothing,
      _aCodingMode = Nothing,
      _aSpec = Nothing,
      _aRawFormat = Nothing,
      _aSampleRate = Nothing,
      _aInputType = Nothing,
      _aProfile = Nothing,
      _aVbrQuality = Nothing,
      _aBitrate = Nothing
    }

-- | Rate Control Mode.
aRateControlMode :: Lens' AacSettings (Maybe AacRateControlMode)
aRateControlMode = lens _aRateControlMode (\s a -> s {_aRateControlMode = a})

-- | Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. The adReceiverMix setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.
aCodingMode :: Lens' AacSettings (Maybe AacCodingMode)
aCodingMode = lens _aCodingMode (\s a -> s {_aCodingMode = a})

-- | Use MPEG-2 AAC audio instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
aSpec :: Lens' AacSettings (Maybe AacSpec)
aSpec = lens _aSpec (\s a -> s {_aSpec = a})

-- | Sets LATM / LOAS AAC output for raw containers.
aRawFormat :: Lens' AacSettings (Maybe AacRawFormat)
aRawFormat = lens _aRawFormat (\s a -> s {_aRawFormat = a})

-- | Sample rate in Hz. Valid values depend on rate control mode and profile.
aSampleRate :: Lens' AacSettings (Maybe Double)
aSampleRate = lens _aSampleRate (\s a -> s {_aSampleRate = a})

-- | Set to "broadcasterMixedAd" when input contains pre-mixed main audio + AD (narration) as a stereo pair.  The Audio Type field (audioType) will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. The values in audioTypeControl and audioType (in AudioDescription) are ignored when set to broadcasterMixedAd. Leave set to "normal" when input does not contain pre-mixed audio + AD.
aInputType :: Lens' AacSettings (Maybe AacInputType)
aInputType = lens _aInputType (\s a -> s {_aInputType = a})

-- | AAC Profile.
aProfile :: Lens' AacSettings (Maybe AacProfile)
aProfile = lens _aProfile (\s a -> s {_aProfile = a})

-- | VBR Quality Level - Only used if rateControlMode is VBR.
aVbrQuality :: Lens' AacSettings (Maybe AacVbrQuality)
aVbrQuality = lens _aVbrQuality (\s a -> s {_aVbrQuality = a})

-- | Average bitrate in bits/second. Valid values depend on rate control mode and profile.
aBitrate :: Lens' AacSettings (Maybe Double)
aBitrate = lens _aBitrate (\s a -> s {_aBitrate = a})

instance FromJSON AacSettings where
  parseJSON =
    withObject
      "AacSettings"
      ( \x ->
          AacSettings'
            <$> (x .:? "rateControlMode")
            <*> (x .:? "codingMode")
            <*> (x .:? "spec")
            <*> (x .:? "rawFormat")
            <*> (x .:? "sampleRate")
            <*> (x .:? "inputType")
            <*> (x .:? "profile")
            <*> (x .:? "vbrQuality")
            <*> (x .:? "bitrate")
      )

instance Hashable AacSettings

instance NFData AacSettings

instance ToJSON AacSettings where
  toJSON AacSettings' {..} =
    object
      ( catMaybes
          [ ("rateControlMode" .=) <$> _aRateControlMode,
            ("codingMode" .=) <$> _aCodingMode,
            ("spec" .=) <$> _aSpec,
            ("rawFormat" .=) <$> _aRawFormat,
            ("sampleRate" .=) <$> _aSampleRate,
            ("inputType" .=) <$> _aInputType,
            ("profile" .=) <$> _aProfile,
            ("vbrQuality" .=) <$> _aVbrQuality,
            ("bitrate" .=) <$> _aBitrate
          ]
      )
