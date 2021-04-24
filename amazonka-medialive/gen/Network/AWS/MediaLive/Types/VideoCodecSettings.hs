{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.VideoCodecSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.VideoCodecSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.FrameCaptureSettings
import Network.AWS.MediaLive.Types.H264Settings
import Network.AWS.MediaLive.Types.H265Settings
import Network.AWS.MediaLive.Types.Mpeg2Settings
import Network.AWS.Prelude

-- | Video Codec Settings
--
-- /See:/ 'videoCodecSettings' smart constructor.
data VideoCodecSettings = VideoCodecSettings'
  { _vcsFrameCaptureSettings ::
      !(Maybe FrameCaptureSettings),
    _vcsMpeg2Settings ::
      !(Maybe Mpeg2Settings),
    _vcsH264Settings ::
      !(Maybe H264Settings),
    _vcsH265Settings ::
      !(Maybe H265Settings)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VideoCodecSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcsFrameCaptureSettings' - Undocumented member.
--
-- * 'vcsMpeg2Settings' - Undocumented member.
--
-- * 'vcsH264Settings' - Undocumented member.
--
-- * 'vcsH265Settings' - Undocumented member.
videoCodecSettings ::
  VideoCodecSettings
videoCodecSettings =
  VideoCodecSettings'
    { _vcsFrameCaptureSettings =
        Nothing,
      _vcsMpeg2Settings = Nothing,
      _vcsH264Settings = Nothing,
      _vcsH265Settings = Nothing
    }

-- | Undocumented member.
vcsFrameCaptureSettings :: Lens' VideoCodecSettings (Maybe FrameCaptureSettings)
vcsFrameCaptureSettings = lens _vcsFrameCaptureSettings (\s a -> s {_vcsFrameCaptureSettings = a})

-- | Undocumented member.
vcsMpeg2Settings :: Lens' VideoCodecSettings (Maybe Mpeg2Settings)
vcsMpeg2Settings = lens _vcsMpeg2Settings (\s a -> s {_vcsMpeg2Settings = a})

-- | Undocumented member.
vcsH264Settings :: Lens' VideoCodecSettings (Maybe H264Settings)
vcsH264Settings = lens _vcsH264Settings (\s a -> s {_vcsH264Settings = a})

-- | Undocumented member.
vcsH265Settings :: Lens' VideoCodecSettings (Maybe H265Settings)
vcsH265Settings = lens _vcsH265Settings (\s a -> s {_vcsH265Settings = a})

instance FromJSON VideoCodecSettings where
  parseJSON =
    withObject
      "VideoCodecSettings"
      ( \x ->
          VideoCodecSettings'
            <$> (x .:? "frameCaptureSettings")
            <*> (x .:? "mpeg2Settings")
            <*> (x .:? "h264Settings")
            <*> (x .:? "h265Settings")
      )

instance Hashable VideoCodecSettings

instance NFData VideoCodecSettings

instance ToJSON VideoCodecSettings where
  toJSON VideoCodecSettings' {..} =
    object
      ( catMaybes
          [ ("frameCaptureSettings" .=)
              <$> _vcsFrameCaptureSettings,
            ("mpeg2Settings" .=) <$> _vcsMpeg2Settings,
            ("h264Settings" .=) <$> _vcsH264Settings,
            ("h265Settings" .=) <$> _vcsH265Settings
          ]
      )
