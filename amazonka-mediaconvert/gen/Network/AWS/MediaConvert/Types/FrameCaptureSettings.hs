{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.FrameCaptureSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.FrameCaptureSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE.
--
-- /See:/ 'frameCaptureSettings' smart constructor.
data FrameCaptureSettings = FrameCaptureSettings'
  { _fcsFramerateNumerator ::
      !(Maybe Nat),
    _fcsMaxCaptures ::
      !(Maybe Nat),
    _fcsFramerateDenominator ::
      !(Maybe Nat),
    _fcsQuality :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FrameCaptureSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcsFramerateNumerator' - Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.NNNNNNN.jpg where N is the 0-based frame sequence number zero padded to 7 decimal places.
--
-- * 'fcsMaxCaptures' - Maximum number of captures (encoded jpg output files).
--
-- * 'fcsFramerateDenominator' - Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.n.jpg where n is the 0-based sequence number of each Capture.
--
-- * 'fcsQuality' - JPEG Quality - a higher value equals higher quality.
frameCaptureSettings ::
  FrameCaptureSettings
frameCaptureSettings =
  FrameCaptureSettings'
    { _fcsFramerateNumerator =
        Nothing,
      _fcsMaxCaptures = Nothing,
      _fcsFramerateDenominator = Nothing,
      _fcsQuality = Nothing
    }

-- | Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.NNNNNNN.jpg where N is the 0-based frame sequence number zero padded to 7 decimal places.
fcsFramerateNumerator :: Lens' FrameCaptureSettings (Maybe Natural)
fcsFramerateNumerator = lens _fcsFramerateNumerator (\s a -> s {_fcsFramerateNumerator = a}) . mapping _Nat

-- | Maximum number of captures (encoded jpg output files).
fcsMaxCaptures :: Lens' FrameCaptureSettings (Maybe Natural)
fcsMaxCaptures = lens _fcsMaxCaptures (\s a -> s {_fcsMaxCaptures = a}) . mapping _Nat

-- | Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.n.jpg where n is the 0-based sequence number of each Capture.
fcsFramerateDenominator :: Lens' FrameCaptureSettings (Maybe Natural)
fcsFramerateDenominator = lens _fcsFramerateDenominator (\s a -> s {_fcsFramerateDenominator = a}) . mapping _Nat

-- | JPEG Quality - a higher value equals higher quality.
fcsQuality :: Lens' FrameCaptureSettings (Maybe Natural)
fcsQuality = lens _fcsQuality (\s a -> s {_fcsQuality = a}) . mapping _Nat

instance FromJSON FrameCaptureSettings where
  parseJSON =
    withObject
      "FrameCaptureSettings"
      ( \x ->
          FrameCaptureSettings'
            <$> (x .:? "framerateNumerator")
            <*> (x .:? "maxCaptures")
            <*> (x .:? "framerateDenominator")
            <*> (x .:? "quality")
      )

instance Hashable FrameCaptureSettings

instance NFData FrameCaptureSettings

instance ToJSON FrameCaptureSettings where
  toJSON FrameCaptureSettings' {..} =
    object
      ( catMaybes
          [ ("framerateNumerator" .=)
              <$> _fcsFramerateNumerator,
            ("maxCaptures" .=) <$> _fcsMaxCaptures,
            ("framerateDenominator" .=)
              <$> _fcsFramerateDenominator,
            ("quality" .=) <$> _fcsQuality
          ]
      )
