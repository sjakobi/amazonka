{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ContainerSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ContainerSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.CmfcSettings
import Network.AWS.MediaConvert.Types.ContainerType
import Network.AWS.MediaConvert.Types.F4vSettings
import Network.AWS.MediaConvert.Types.M2tsSettings
import Network.AWS.MediaConvert.Types.M3u8Settings
import Network.AWS.MediaConvert.Types.MovSettings
import Network.AWS.MediaConvert.Types.Mp4Settings
import Network.AWS.MediaConvert.Types.MpdSettings
import Network.AWS.MediaConvert.Types.MxfSettings
import Network.AWS.Prelude

-- | Container specific settings.
--
-- /See:/ 'containerSettings' smart constructor.
data ContainerSettings = ContainerSettings'
  { _csContainer ::
      !(Maybe ContainerType),
    _csMpdSettings ::
      !(Maybe MpdSettings),
    _csMp4Settings ::
      !(Maybe Mp4Settings),
    _csF4vSettings ::
      !(Maybe F4vSettings),
    _csMxfSettings ::
      !(Maybe MxfSettings),
    _csMovSettings ::
      !(Maybe MovSettings),
    _csCmfcSettings ::
      !(Maybe CmfcSettings),
    _csM3u8Settings ::
      !(Maybe M3u8Settings),
    _csM2tsSettings ::
      !(Maybe M2tsSettings)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csContainer' - Container for this output. Some containers require a container settings object. If not specified, the default object will be created.
--
-- * 'csMpdSettings' - Settings for MP4 segments in DASH
--
-- * 'csMp4Settings' - Settings for MP4 container. You can create audio-only AAC outputs with this container.
--
-- * 'csF4vSettings' - Settings for F4v container
--
-- * 'csMxfSettings' - MXF settings
--
-- * 'csMovSettings' - Settings for MOV Container.
--
-- * 'csCmfcSettings' - Settings for MP4 segments in CMAF
--
-- * 'csM3u8Settings' - Settings for TS segments in HLS
--
-- * 'csM2tsSettings' - MPEG-2 TS container settings. These apply to outputs in a File output group when the output's container (ContainerType) is MPEG-2 Transport Stream (M2TS). In these assets, data is organized by the program map table (PMT). Each transport stream program contains subsets of data, including audio, video, and metadata. Each of these subsets of data has a numerical label called a packet identifier (PID). Each transport stream program corresponds to one MediaConvert output. The PMT lists the types of data in a program along with their PID. Downstream systems and players use the program map table to look up the PID for each type of data it accesses and then uses the PIDs to locate specific data within the asset.
containerSettings ::
  ContainerSettings
containerSettings =
  ContainerSettings'
    { _csContainer = Nothing,
      _csMpdSettings = Nothing,
      _csMp4Settings = Nothing,
      _csF4vSettings = Nothing,
      _csMxfSettings = Nothing,
      _csMovSettings = Nothing,
      _csCmfcSettings = Nothing,
      _csM3u8Settings = Nothing,
      _csM2tsSettings = Nothing
    }

-- | Container for this output. Some containers require a container settings object. If not specified, the default object will be created.
csContainer :: Lens' ContainerSettings (Maybe ContainerType)
csContainer = lens _csContainer (\s a -> s {_csContainer = a})

-- | Settings for MP4 segments in DASH
csMpdSettings :: Lens' ContainerSettings (Maybe MpdSettings)
csMpdSettings = lens _csMpdSettings (\s a -> s {_csMpdSettings = a})

-- | Settings for MP4 container. You can create audio-only AAC outputs with this container.
csMp4Settings :: Lens' ContainerSettings (Maybe Mp4Settings)
csMp4Settings = lens _csMp4Settings (\s a -> s {_csMp4Settings = a})

-- | Settings for F4v container
csF4vSettings :: Lens' ContainerSettings (Maybe F4vSettings)
csF4vSettings = lens _csF4vSettings (\s a -> s {_csF4vSettings = a})

-- | MXF settings
csMxfSettings :: Lens' ContainerSettings (Maybe MxfSettings)
csMxfSettings = lens _csMxfSettings (\s a -> s {_csMxfSettings = a})

-- | Settings for MOV Container.
csMovSettings :: Lens' ContainerSettings (Maybe MovSettings)
csMovSettings = lens _csMovSettings (\s a -> s {_csMovSettings = a})

-- | Settings for MP4 segments in CMAF
csCmfcSettings :: Lens' ContainerSettings (Maybe CmfcSettings)
csCmfcSettings = lens _csCmfcSettings (\s a -> s {_csCmfcSettings = a})

-- | Settings for TS segments in HLS
csM3u8Settings :: Lens' ContainerSettings (Maybe M3u8Settings)
csM3u8Settings = lens _csM3u8Settings (\s a -> s {_csM3u8Settings = a})

-- | MPEG-2 TS container settings. These apply to outputs in a File output group when the output's container (ContainerType) is MPEG-2 Transport Stream (M2TS). In these assets, data is organized by the program map table (PMT). Each transport stream program contains subsets of data, including audio, video, and metadata. Each of these subsets of data has a numerical label called a packet identifier (PID). Each transport stream program corresponds to one MediaConvert output. The PMT lists the types of data in a program along with their PID. Downstream systems and players use the program map table to look up the PID for each type of data it accesses and then uses the PIDs to locate specific data within the asset.
csM2tsSettings :: Lens' ContainerSettings (Maybe M2tsSettings)
csM2tsSettings = lens _csM2tsSettings (\s a -> s {_csM2tsSettings = a})

instance FromJSON ContainerSettings where
  parseJSON =
    withObject
      "ContainerSettings"
      ( \x ->
          ContainerSettings'
            <$> (x .:? "container")
            <*> (x .:? "mpdSettings")
            <*> (x .:? "mp4Settings")
            <*> (x .:? "f4vSettings")
            <*> (x .:? "mxfSettings")
            <*> (x .:? "movSettings")
            <*> (x .:? "cmfcSettings")
            <*> (x .:? "m3u8Settings")
            <*> (x .:? "m2tsSettings")
      )

instance Hashable ContainerSettings

instance NFData ContainerSettings

instance ToJSON ContainerSettings where
  toJSON ContainerSettings' {..} =
    object
      ( catMaybes
          [ ("container" .=) <$> _csContainer,
            ("mpdSettings" .=) <$> _csMpdSettings,
            ("mp4Settings" .=) <$> _csMp4Settings,
            ("f4vSettings" .=) <$> _csF4vSettings,
            ("mxfSettings" .=) <$> _csMxfSettings,
            ("movSettings" .=) <$> _csMovSettings,
            ("cmfcSettings" .=) <$> _csCmfcSettings,
            ("m3u8Settings" .=) <$> _csM3u8Settings,
            ("m2tsSettings" .=) <$> _csM2tsSettings
          ]
      )
