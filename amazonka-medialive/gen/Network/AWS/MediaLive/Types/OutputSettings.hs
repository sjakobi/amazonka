{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.OutputSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.OutputSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.ArchiveOutputSettings
import Network.AWS.MediaLive.Types.FrameCaptureOutputSettings
import Network.AWS.MediaLive.Types.HlsOutputSettings
import Network.AWS.MediaLive.Types.MediaPackageOutputSettings
import Network.AWS.MediaLive.Types.MsSmoothOutputSettings
import Network.AWS.MediaLive.Types.MultiplexOutputSettings
import Network.AWS.MediaLive.Types.RtmpOutputSettings
import Network.AWS.MediaLive.Types.UdpOutputSettings
import Network.AWS.Prelude

-- | Output Settings
--
-- /See:/ 'outputSettings' smart constructor.
data OutputSettings = OutputSettings'
  { _osRtmpOutputSettings ::
      !(Maybe RtmpOutputSettings),
    _osMsSmoothOutputSettings ::
      !(Maybe MsSmoothOutputSettings),
    _osUdpOutputSettings ::
      !(Maybe UdpOutputSettings),
    _osMediaPackageOutputSettings ::
      !(Maybe MediaPackageOutputSettings),
    _osFrameCaptureOutputSettings ::
      !(Maybe FrameCaptureOutputSettings),
    _osArchiveOutputSettings ::
      !(Maybe ArchiveOutputSettings),
    _osHlsOutputSettings ::
      !(Maybe HlsOutputSettings),
    _osMultiplexOutputSettings ::
      !(Maybe MultiplexOutputSettings)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osRtmpOutputSettings' - Undocumented member.
--
-- * 'osMsSmoothOutputSettings' - Undocumented member.
--
-- * 'osUdpOutputSettings' - Undocumented member.
--
-- * 'osMediaPackageOutputSettings' - Undocumented member.
--
-- * 'osFrameCaptureOutputSettings' - Undocumented member.
--
-- * 'osArchiveOutputSettings' - Undocumented member.
--
-- * 'osHlsOutputSettings' - Undocumented member.
--
-- * 'osMultiplexOutputSettings' - Undocumented member.
outputSettings ::
  OutputSettings
outputSettings =
  OutputSettings'
    { _osRtmpOutputSettings = Nothing,
      _osMsSmoothOutputSettings = Nothing,
      _osUdpOutputSettings = Nothing,
      _osMediaPackageOutputSettings = Nothing,
      _osFrameCaptureOutputSettings = Nothing,
      _osArchiveOutputSettings = Nothing,
      _osHlsOutputSettings = Nothing,
      _osMultiplexOutputSettings = Nothing
    }

-- | Undocumented member.
osRtmpOutputSettings :: Lens' OutputSettings (Maybe RtmpOutputSettings)
osRtmpOutputSettings = lens _osRtmpOutputSettings (\s a -> s {_osRtmpOutputSettings = a})

-- | Undocumented member.
osMsSmoothOutputSettings :: Lens' OutputSettings (Maybe MsSmoothOutputSettings)
osMsSmoothOutputSettings = lens _osMsSmoothOutputSettings (\s a -> s {_osMsSmoothOutputSettings = a})

-- | Undocumented member.
osUdpOutputSettings :: Lens' OutputSettings (Maybe UdpOutputSettings)
osUdpOutputSettings = lens _osUdpOutputSettings (\s a -> s {_osUdpOutputSettings = a})

-- | Undocumented member.
osMediaPackageOutputSettings :: Lens' OutputSettings (Maybe MediaPackageOutputSettings)
osMediaPackageOutputSettings = lens _osMediaPackageOutputSettings (\s a -> s {_osMediaPackageOutputSettings = a})

-- | Undocumented member.
osFrameCaptureOutputSettings :: Lens' OutputSettings (Maybe FrameCaptureOutputSettings)
osFrameCaptureOutputSettings = lens _osFrameCaptureOutputSettings (\s a -> s {_osFrameCaptureOutputSettings = a})

-- | Undocumented member.
osArchiveOutputSettings :: Lens' OutputSettings (Maybe ArchiveOutputSettings)
osArchiveOutputSettings = lens _osArchiveOutputSettings (\s a -> s {_osArchiveOutputSettings = a})

-- | Undocumented member.
osHlsOutputSettings :: Lens' OutputSettings (Maybe HlsOutputSettings)
osHlsOutputSettings = lens _osHlsOutputSettings (\s a -> s {_osHlsOutputSettings = a})

-- | Undocumented member.
osMultiplexOutputSettings :: Lens' OutputSettings (Maybe MultiplexOutputSettings)
osMultiplexOutputSettings = lens _osMultiplexOutputSettings (\s a -> s {_osMultiplexOutputSettings = a})

instance FromJSON OutputSettings where
  parseJSON =
    withObject
      "OutputSettings"
      ( \x ->
          OutputSettings'
            <$> (x .:? "rtmpOutputSettings")
            <*> (x .:? "msSmoothOutputSettings")
            <*> (x .:? "udpOutputSettings")
            <*> (x .:? "mediaPackageOutputSettings")
            <*> (x .:? "frameCaptureOutputSettings")
            <*> (x .:? "archiveOutputSettings")
            <*> (x .:? "hlsOutputSettings")
            <*> (x .:? "multiplexOutputSettings")
      )

instance Hashable OutputSettings

instance NFData OutputSettings

instance ToJSON OutputSettings where
  toJSON OutputSettings' {..} =
    object
      ( catMaybes
          [ ("rtmpOutputSettings" .=) <$> _osRtmpOutputSettings,
            ("msSmoothOutputSettings" .=)
              <$> _osMsSmoothOutputSettings,
            ("udpOutputSettings" .=) <$> _osUdpOutputSettings,
            ("mediaPackageOutputSettings" .=)
              <$> _osMediaPackageOutputSettings,
            ("frameCaptureOutputSettings" .=)
              <$> _osFrameCaptureOutputSettings,
            ("archiveOutputSettings" .=)
              <$> _osArchiveOutputSettings,
            ("hlsOutputSettings" .=) <$> _osHlsOutputSettings,
            ("multiplexOutputSettings" .=)
              <$> _osMultiplexOutputSettings
          ]
      )
