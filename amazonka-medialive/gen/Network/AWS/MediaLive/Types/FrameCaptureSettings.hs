{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.FrameCaptureSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.FrameCaptureSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.FrameCaptureIntervalUnit
import Network.AWS.Prelude

-- | Frame Capture Settings
--
-- /See:/ 'frameCaptureSettings' smart constructor.
data FrameCaptureSettings = FrameCaptureSettings'
  { _fcsCaptureInterval ::
      !(Maybe Nat),
    _fcsCaptureIntervalUnits ::
      !( Maybe
           FrameCaptureIntervalUnit
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FrameCaptureSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcsCaptureInterval' - The frequency at which to capture frames for inclusion in the output. May be specified in either seconds or milliseconds, as specified by captureIntervalUnits.
--
-- * 'fcsCaptureIntervalUnits' - Unit for the frame capture interval.
frameCaptureSettings ::
  FrameCaptureSettings
frameCaptureSettings =
  FrameCaptureSettings'
    { _fcsCaptureInterval =
        Nothing,
      _fcsCaptureIntervalUnits = Nothing
    }

-- | The frequency at which to capture frames for inclusion in the output. May be specified in either seconds or milliseconds, as specified by captureIntervalUnits.
fcsCaptureInterval :: Lens' FrameCaptureSettings (Maybe Natural)
fcsCaptureInterval = lens _fcsCaptureInterval (\s a -> s {_fcsCaptureInterval = a}) . mapping _Nat

-- | Unit for the frame capture interval.
fcsCaptureIntervalUnits :: Lens' FrameCaptureSettings (Maybe FrameCaptureIntervalUnit)
fcsCaptureIntervalUnits = lens _fcsCaptureIntervalUnits (\s a -> s {_fcsCaptureIntervalUnits = a})

instance FromJSON FrameCaptureSettings where
  parseJSON =
    withObject
      "FrameCaptureSettings"
      ( \x ->
          FrameCaptureSettings'
            <$> (x .:? "captureInterval")
            <*> (x .:? "captureIntervalUnits")
      )

instance Hashable FrameCaptureSettings

instance NFData FrameCaptureSettings

instance ToJSON FrameCaptureSettings where
  toJSON FrameCaptureSettings' {..} =
    object
      ( catMaybes
          [ ("captureInterval" .=) <$> _fcsCaptureInterval,
            ("captureIntervalUnits" .=)
              <$> _fcsCaptureIntervalUnits
          ]
      )
