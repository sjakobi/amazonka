{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.WavSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.WavSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.WavFormat
import Network.AWS.Prelude

-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value WAV.
--
-- /See:/ 'wavSettings' smart constructor.
data WavSettings = WavSettings'
  { _wsFormat ::
      !(Maybe WavFormat),
    _wsChannels :: !(Maybe Nat),
    _wsBitDepth :: !(Maybe Nat),
    _wsSampleRate :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WavSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsFormat' - The service defaults to using RIFF for WAV outputs. If your output audio is likely to exceed 4 GB in file size, or if you otherwise need the extended support of the RF64 format, set your output WAV file format to RF64.
--
-- * 'wsChannels' - Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64.
--
-- * 'wsBitDepth' - Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
--
-- * 'wsSampleRate' - Sample rate in Hz.
wavSettings ::
  WavSettings
wavSettings =
  WavSettings'
    { _wsFormat = Nothing,
      _wsChannels = Nothing,
      _wsBitDepth = Nothing,
      _wsSampleRate = Nothing
    }

-- | The service defaults to using RIFF for WAV outputs. If your output audio is likely to exceed 4 GB in file size, or if you otherwise need the extended support of the RF64 format, set your output WAV file format to RF64.
wsFormat :: Lens' WavSettings (Maybe WavFormat)
wsFormat = lens _wsFormat (\s a -> s {_wsFormat = a})

-- | Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64.
wsChannels :: Lens' WavSettings (Maybe Natural)
wsChannels = lens _wsChannels (\s a -> s {_wsChannels = a}) . mapping _Nat

-- | Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
wsBitDepth :: Lens' WavSettings (Maybe Natural)
wsBitDepth = lens _wsBitDepth (\s a -> s {_wsBitDepth = a}) . mapping _Nat

-- | Sample rate in Hz.
wsSampleRate :: Lens' WavSettings (Maybe Natural)
wsSampleRate = lens _wsSampleRate (\s a -> s {_wsSampleRate = a}) . mapping _Nat

instance FromJSON WavSettings where
  parseJSON =
    withObject
      "WavSettings"
      ( \x ->
          WavSettings'
            <$> (x .:? "format")
            <*> (x .:? "channels")
            <*> (x .:? "bitDepth")
            <*> (x .:? "sampleRate")
      )

instance Hashable WavSettings

instance NFData WavSettings

instance ToJSON WavSettings where
  toJSON WavSettings' {..} =
    object
      ( catMaybes
          [ ("format" .=) <$> _wsFormat,
            ("channels" .=) <$> _wsChannels,
            ("bitDepth" .=) <$> _wsBitDepth,
            ("sampleRate" .=) <$> _wsSampleRate
          ]
      )
