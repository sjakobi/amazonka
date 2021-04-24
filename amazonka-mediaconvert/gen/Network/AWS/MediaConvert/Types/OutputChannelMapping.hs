{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.OutputChannelMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.OutputChannelMapping where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | OutputChannel mapping settings.
--
-- /See:/ 'outputChannelMapping' smart constructor.
data OutputChannelMapping = OutputChannelMapping'
  { _ocmInputChannels ::
      !(Maybe [Int]),
    _ocmInputChannelsFineTune ::
      !(Maybe [Double])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputChannelMapping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocmInputChannels' - Use this setting to specify your remix values when they are integers, such as -10, 0, or 4.
--
-- * 'ocmInputChannelsFineTune' - Use this setting to specify your remix values when they have a decimal component, such as -10.312, 0.08, or 4.9. MediaConvert rounds your remixing values to the nearest thousandth.
outputChannelMapping ::
  OutputChannelMapping
outputChannelMapping =
  OutputChannelMapping'
    { _ocmInputChannels = Nothing,
      _ocmInputChannelsFineTune = Nothing
    }

-- | Use this setting to specify your remix values when they are integers, such as -10, 0, or 4.
ocmInputChannels :: Lens' OutputChannelMapping [Int]
ocmInputChannels = lens _ocmInputChannels (\s a -> s {_ocmInputChannels = a}) . _Default . _Coerce

-- | Use this setting to specify your remix values when they have a decimal component, such as -10.312, 0.08, or 4.9. MediaConvert rounds your remixing values to the nearest thousandth.
ocmInputChannelsFineTune :: Lens' OutputChannelMapping [Double]
ocmInputChannelsFineTune = lens _ocmInputChannelsFineTune (\s a -> s {_ocmInputChannelsFineTune = a}) . _Default . _Coerce

instance FromJSON OutputChannelMapping where
  parseJSON =
    withObject
      "OutputChannelMapping"
      ( \x ->
          OutputChannelMapping'
            <$> (x .:? "inputChannels" .!= mempty)
            <*> (x .:? "inputChannelsFineTune" .!= mempty)
      )

instance Hashable OutputChannelMapping

instance NFData OutputChannelMapping

instance ToJSON OutputChannelMapping where
  toJSON OutputChannelMapping' {..} =
    object
      ( catMaybes
          [ ("inputChannels" .=) <$> _ocmInputChannels,
            ("inputChannelsFineTune" .=)
              <$> _ocmInputChannelsFineTune
          ]
      )
