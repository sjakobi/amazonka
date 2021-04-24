{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.VideoBlackFailoverSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.VideoBlackFailoverSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Placeholder documentation for VideoBlackFailoverSettings
--
-- /See:/ 'videoBlackFailoverSettings' smart constructor.
data VideoBlackFailoverSettings = VideoBlackFailoverSettings'
  { _vbfsBlackDetectThreshold ::
      !(Maybe Double),
    _vbfsVideoBlackThresholdMsec ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'VideoBlackFailoverSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vbfsBlackDetectThreshold' - A value used in calculating the threshold below which MediaLive considers a pixel to be 'black'. For the input to be considered black, every pixel in a frame must be below this threshold. The threshold is calculated as a percentage (expressed as a decimal) of white. Therefore .1 means 10% white (or 90% black). Note how the formula works for any color depth. For example, if you set this field to 0.1 in 10-bit color depth: (1023*0.1=102.3), which means a pixel value of 102 or less is 'black'. If you set this field to .1 in an 8-bit color depth: (255*0.1=25.5), which means a pixel value of 25 or less is 'black'. The range is 0.0 to 1.0, with any number of decimal places.
--
-- * 'vbfsVideoBlackThresholdMsec' - The amount of time (in milliseconds) that the active input must be black before automatic input failover occurs.
videoBlackFailoverSettings ::
  VideoBlackFailoverSettings
videoBlackFailoverSettings =
  VideoBlackFailoverSettings'
    { _vbfsBlackDetectThreshold =
        Nothing,
      _vbfsVideoBlackThresholdMsec = Nothing
    }

-- | A value used in calculating the threshold below which MediaLive considers a pixel to be 'black'. For the input to be considered black, every pixel in a frame must be below this threshold. The threshold is calculated as a percentage (expressed as a decimal) of white. Therefore .1 means 10% white (or 90% black). Note how the formula works for any color depth. For example, if you set this field to 0.1 in 10-bit color depth: (1023*0.1=102.3), which means a pixel value of 102 or less is 'black'. If you set this field to .1 in an 8-bit color depth: (255*0.1=25.5), which means a pixel value of 25 or less is 'black'. The range is 0.0 to 1.0, with any number of decimal places.
vbfsBlackDetectThreshold :: Lens' VideoBlackFailoverSettings (Maybe Double)
vbfsBlackDetectThreshold = lens _vbfsBlackDetectThreshold (\s a -> s {_vbfsBlackDetectThreshold = a})

-- | The amount of time (in milliseconds) that the active input must be black before automatic input failover occurs.
vbfsVideoBlackThresholdMsec :: Lens' VideoBlackFailoverSettings (Maybe Natural)
vbfsVideoBlackThresholdMsec = lens _vbfsVideoBlackThresholdMsec (\s a -> s {_vbfsVideoBlackThresholdMsec = a}) . mapping _Nat

instance FromJSON VideoBlackFailoverSettings where
  parseJSON =
    withObject
      "VideoBlackFailoverSettings"
      ( \x ->
          VideoBlackFailoverSettings'
            <$> (x .:? "blackDetectThreshold")
            <*> (x .:? "videoBlackThresholdMsec")
      )

instance Hashable VideoBlackFailoverSettings

instance NFData VideoBlackFailoverSettings

instance ToJSON VideoBlackFailoverSettings where
  toJSON VideoBlackFailoverSettings' {..} =
    object
      ( catMaybes
          [ ("blackDetectThreshold" .=)
              <$> _vbfsBlackDetectThreshold,
            ("videoBlackThresholdMsec" .=)
              <$> _vbfsVideoBlackThresholdMsec
          ]
      )
