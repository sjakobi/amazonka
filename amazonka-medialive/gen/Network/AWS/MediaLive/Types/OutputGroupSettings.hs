{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.OutputGroupSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.OutputGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.ArchiveGroupSettings
import Network.AWS.MediaLive.Types.FrameCaptureGroupSettings
import Network.AWS.MediaLive.Types.HlsGroupSettings
import Network.AWS.MediaLive.Types.MediaPackageGroupSettings
import Network.AWS.MediaLive.Types.MsSmoothGroupSettings
import Network.AWS.MediaLive.Types.MultiplexGroupSettings
import Network.AWS.MediaLive.Types.RtmpGroupSettings
import Network.AWS.MediaLive.Types.UdpGroupSettings
import Network.AWS.Prelude

-- | Output Group Settings
--
-- /See:/ 'outputGroupSettings' smart constructor.
data OutputGroupSettings = OutputGroupSettings'
  { _ogsMsSmoothGroupSettings ::
      !(Maybe MsSmoothGroupSettings),
    _ogsFrameCaptureGroupSettings ::
      !( Maybe
           FrameCaptureGroupSettings
       ),
    _ogsHlsGroupSettings ::
      !(Maybe HlsGroupSettings),
    _ogsMediaPackageGroupSettings ::
      !( Maybe
           MediaPackageGroupSettings
       ),
    _ogsRtmpGroupSettings ::
      !(Maybe RtmpGroupSettings),
    _ogsUdpGroupSettings ::
      !(Maybe UdpGroupSettings),
    _ogsArchiveGroupSettings ::
      !(Maybe ArchiveGroupSettings),
    _ogsMultiplexGroupSettings ::
      !(Maybe MultiplexGroupSettings)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogsMsSmoothGroupSettings' - Undocumented member.
--
-- * 'ogsFrameCaptureGroupSettings' - Undocumented member.
--
-- * 'ogsHlsGroupSettings' - Undocumented member.
--
-- * 'ogsMediaPackageGroupSettings' - Undocumented member.
--
-- * 'ogsRtmpGroupSettings' - Undocumented member.
--
-- * 'ogsUdpGroupSettings' - Undocumented member.
--
-- * 'ogsArchiveGroupSettings' - Undocumented member.
--
-- * 'ogsMultiplexGroupSettings' - Undocumented member.
outputGroupSettings ::
  OutputGroupSettings
outputGroupSettings =
  OutputGroupSettings'
    { _ogsMsSmoothGroupSettings =
        Nothing,
      _ogsFrameCaptureGroupSettings = Nothing,
      _ogsHlsGroupSettings = Nothing,
      _ogsMediaPackageGroupSettings = Nothing,
      _ogsRtmpGroupSettings = Nothing,
      _ogsUdpGroupSettings = Nothing,
      _ogsArchiveGroupSettings = Nothing,
      _ogsMultiplexGroupSettings = Nothing
    }

-- | Undocumented member.
ogsMsSmoothGroupSettings :: Lens' OutputGroupSettings (Maybe MsSmoothGroupSettings)
ogsMsSmoothGroupSettings = lens _ogsMsSmoothGroupSettings (\s a -> s {_ogsMsSmoothGroupSettings = a})

-- | Undocumented member.
ogsFrameCaptureGroupSettings :: Lens' OutputGroupSettings (Maybe FrameCaptureGroupSettings)
ogsFrameCaptureGroupSettings = lens _ogsFrameCaptureGroupSettings (\s a -> s {_ogsFrameCaptureGroupSettings = a})

-- | Undocumented member.
ogsHlsGroupSettings :: Lens' OutputGroupSettings (Maybe HlsGroupSettings)
ogsHlsGroupSettings = lens _ogsHlsGroupSettings (\s a -> s {_ogsHlsGroupSettings = a})

-- | Undocumented member.
ogsMediaPackageGroupSettings :: Lens' OutputGroupSettings (Maybe MediaPackageGroupSettings)
ogsMediaPackageGroupSettings = lens _ogsMediaPackageGroupSettings (\s a -> s {_ogsMediaPackageGroupSettings = a})

-- | Undocumented member.
ogsRtmpGroupSettings :: Lens' OutputGroupSettings (Maybe RtmpGroupSettings)
ogsRtmpGroupSettings = lens _ogsRtmpGroupSettings (\s a -> s {_ogsRtmpGroupSettings = a})

-- | Undocumented member.
ogsUdpGroupSettings :: Lens' OutputGroupSettings (Maybe UdpGroupSettings)
ogsUdpGroupSettings = lens _ogsUdpGroupSettings (\s a -> s {_ogsUdpGroupSettings = a})

-- | Undocumented member.
ogsArchiveGroupSettings :: Lens' OutputGroupSettings (Maybe ArchiveGroupSettings)
ogsArchiveGroupSettings = lens _ogsArchiveGroupSettings (\s a -> s {_ogsArchiveGroupSettings = a})

-- | Undocumented member.
ogsMultiplexGroupSettings :: Lens' OutputGroupSettings (Maybe MultiplexGroupSettings)
ogsMultiplexGroupSettings = lens _ogsMultiplexGroupSettings (\s a -> s {_ogsMultiplexGroupSettings = a})

instance FromJSON OutputGroupSettings where
  parseJSON =
    withObject
      "OutputGroupSettings"
      ( \x ->
          OutputGroupSettings'
            <$> (x .:? "msSmoothGroupSettings")
            <*> (x .:? "frameCaptureGroupSettings")
            <*> (x .:? "hlsGroupSettings")
            <*> (x .:? "mediaPackageGroupSettings")
            <*> (x .:? "rtmpGroupSettings")
            <*> (x .:? "udpGroupSettings")
            <*> (x .:? "archiveGroupSettings")
            <*> (x .:? "multiplexGroupSettings")
      )

instance Hashable OutputGroupSettings

instance NFData OutputGroupSettings

instance ToJSON OutputGroupSettings where
  toJSON OutputGroupSettings' {..} =
    object
      ( catMaybes
          [ ("msSmoothGroupSettings" .=)
              <$> _ogsMsSmoothGroupSettings,
            ("frameCaptureGroupSettings" .=)
              <$> _ogsFrameCaptureGroupSettings,
            ("hlsGroupSettings" .=) <$> _ogsHlsGroupSettings,
            ("mediaPackageGroupSettings" .=)
              <$> _ogsMediaPackageGroupSettings,
            ("rtmpGroupSettings" .=) <$> _ogsRtmpGroupSettings,
            ("udpGroupSettings" .=) <$> _ogsUdpGroupSettings,
            ("archiveGroupSettings" .=)
              <$> _ogsArchiveGroupSettings,
            ("multiplexGroupSettings" .=)
              <$> _ogsMultiplexGroupSettings
          ]
      )
