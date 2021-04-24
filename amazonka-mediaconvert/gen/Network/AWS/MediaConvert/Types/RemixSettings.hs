{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.RemixSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.RemixSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.ChannelMapping
import Network.AWS.Prelude

-- | Use Manual audio remixing (RemixSettings) to adjust audio levels for each audio channel in each output of your job. With audio remixing, you can output more or fewer audio channels than your input audio source provides.
--
-- /See:/ 'remixSettings' smart constructor.
data RemixSettings = RemixSettings'
  { _rsChannelMapping ::
      !(Maybe ChannelMapping),
    _rsChannelsIn :: !(Maybe Nat),
    _rsChannelsOut :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RemixSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsChannelMapping' - Channel mapping (ChannelMapping) contains the group of fields that hold the remixing value for each channel, in dB. Specify remix values to indicate how much of the content from your input audio channel you want in your output audio channels. Each instance of the InputChannels or InputChannelsFineTune array specifies these values for one output channel. Use one instance of this array for each output channel. In the console, each array corresponds to a column in the graphical depiction of the mapping matrix. The rows of the graphical matrix correspond to input channels. Valid values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification). Use InputChannels or InputChannelsFineTune to specify your remix values. Don't use both.
--
-- * 'rsChannelsIn' - Specify the number of audio channels from your input that you want to use in your output. With remixing, you might combine or split the data in these channels, so the number of channels in your final output might be different. If you are doing both input channel mapping and output channel mapping, the number of output channels in your input mapping must be the same as the number of input channels in your output mapping.
--
-- * 'rsChannelsOut' - Specify the number of channels in this output after remixing. Valid values: 1, 2, 4, 6, 8... 64. (1 and even numbers to 64.) If you are doing both input channel mapping and output channel mapping, the number of output channels in your input mapping must be the same as the number of input channels in your output mapping.
remixSettings ::
  RemixSettings
remixSettings =
  RemixSettings'
    { _rsChannelMapping = Nothing,
      _rsChannelsIn = Nothing,
      _rsChannelsOut = Nothing
    }

-- | Channel mapping (ChannelMapping) contains the group of fields that hold the remixing value for each channel, in dB. Specify remix values to indicate how much of the content from your input audio channel you want in your output audio channels. Each instance of the InputChannels or InputChannelsFineTune array specifies these values for one output channel. Use one instance of this array for each output channel. In the console, each array corresponds to a column in the graphical depiction of the mapping matrix. The rows of the graphical matrix correspond to input channels. Valid values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification). Use InputChannels or InputChannelsFineTune to specify your remix values. Don't use both.
rsChannelMapping :: Lens' RemixSettings (Maybe ChannelMapping)
rsChannelMapping = lens _rsChannelMapping (\s a -> s {_rsChannelMapping = a})

-- | Specify the number of audio channels from your input that you want to use in your output. With remixing, you might combine or split the data in these channels, so the number of channels in your final output might be different. If you are doing both input channel mapping and output channel mapping, the number of output channels in your input mapping must be the same as the number of input channels in your output mapping.
rsChannelsIn :: Lens' RemixSettings (Maybe Natural)
rsChannelsIn = lens _rsChannelsIn (\s a -> s {_rsChannelsIn = a}) . mapping _Nat

-- | Specify the number of channels in this output after remixing. Valid values: 1, 2, 4, 6, 8... 64. (1 and even numbers to 64.) If you are doing both input channel mapping and output channel mapping, the number of output channels in your input mapping must be the same as the number of input channels in your output mapping.
rsChannelsOut :: Lens' RemixSettings (Maybe Natural)
rsChannelsOut = lens _rsChannelsOut (\s a -> s {_rsChannelsOut = a}) . mapping _Nat

instance FromJSON RemixSettings where
  parseJSON =
    withObject
      "RemixSettings"
      ( \x ->
          RemixSettings'
            <$> (x .:? "channelMapping")
            <*> (x .:? "channelsIn")
            <*> (x .:? "channelsOut")
      )

instance Hashable RemixSettings

instance NFData RemixSettings

instance ToJSON RemixSettings where
  toJSON RemixSettings' {..} =
    object
      ( catMaybes
          [ ("channelMapping" .=) <$> _rsChannelMapping,
            ("channelsIn" .=) <$> _rsChannelsIn,
            ("channelsOut" .=) <$> _rsChannelsOut
          ]
      )
