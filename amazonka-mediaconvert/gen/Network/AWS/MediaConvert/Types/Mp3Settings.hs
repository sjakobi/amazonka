{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mp3Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mp3Settings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.Mp3RateControlMode
import Network.AWS.Prelude

-- | Required when you set Codec, under AudioDescriptions>CodecSettings, to the value MP3.
--
-- /See:/ 'mp3Settings' smart constructor.
data Mp3Settings = Mp3Settings'
  { _msRateControlMode ::
      !(Maybe Mp3RateControlMode),
    _msChannels :: !(Maybe Nat),
    _msSampleRate :: !(Maybe Nat),
    _msVbrQuality :: !(Maybe Nat),
    _msBitrate :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Mp3Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msRateControlMode' - Specify whether the service encodes this MP3 audio output with a constant bitrate (CBR) or a variable bitrate (VBR).
--
-- * 'msChannels' - Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2.
--
-- * 'msSampleRate' - Sample rate in hz.
--
-- * 'msVbrQuality' - Required when you set Bitrate control mode (rateControlMode) to VBR. Specify the audio quality of this MP3 output from 0 (highest quality) to 9 (lowest quality).
--
-- * 'msBitrate' - Specify the average bitrate in bits per second.
mp3Settings ::
  Mp3Settings
mp3Settings =
  Mp3Settings'
    { _msRateControlMode = Nothing,
      _msChannels = Nothing,
      _msSampleRate = Nothing,
      _msVbrQuality = Nothing,
      _msBitrate = Nothing
    }

-- | Specify whether the service encodes this MP3 audio output with a constant bitrate (CBR) or a variable bitrate (VBR).
msRateControlMode :: Lens' Mp3Settings (Maybe Mp3RateControlMode)
msRateControlMode = lens _msRateControlMode (\s a -> s {_msRateControlMode = a})

-- | Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2.
msChannels :: Lens' Mp3Settings (Maybe Natural)
msChannels = lens _msChannels (\s a -> s {_msChannels = a}) . mapping _Nat

-- | Sample rate in hz.
msSampleRate :: Lens' Mp3Settings (Maybe Natural)
msSampleRate = lens _msSampleRate (\s a -> s {_msSampleRate = a}) . mapping _Nat

-- | Required when you set Bitrate control mode (rateControlMode) to VBR. Specify the audio quality of this MP3 output from 0 (highest quality) to 9 (lowest quality).
msVbrQuality :: Lens' Mp3Settings (Maybe Natural)
msVbrQuality = lens _msVbrQuality (\s a -> s {_msVbrQuality = a}) . mapping _Nat

-- | Specify the average bitrate in bits per second.
msBitrate :: Lens' Mp3Settings (Maybe Natural)
msBitrate = lens _msBitrate (\s a -> s {_msBitrate = a}) . mapping _Nat

instance FromJSON Mp3Settings where
  parseJSON =
    withObject
      "Mp3Settings"
      ( \x ->
          Mp3Settings'
            <$> (x .:? "rateControlMode")
            <*> (x .:? "channels")
            <*> (x .:? "sampleRate")
            <*> (x .:? "vbrQuality")
            <*> (x .:? "bitrate")
      )

instance Hashable Mp3Settings

instance NFData Mp3Settings

instance ToJSON Mp3Settings where
  toJSON Mp3Settings' {..} =
    object
      ( catMaybes
          [ ("rateControlMode" .=) <$> _msRateControlMode,
            ("channels" .=) <$> _msChannels,
            ("sampleRate" .=) <$> _msSampleRate,
            ("vbrQuality" .=) <$> _msVbrQuality,
            ("bitrate" .=) <$> _msBitrate
          ]
      )
