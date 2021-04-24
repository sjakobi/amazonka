{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.OutputGroupSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.OutputGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.CmafGroupSettings
import Network.AWS.MediaConvert.Types.DashIsoGroupSettings
import Network.AWS.MediaConvert.Types.FileGroupSettings
import Network.AWS.MediaConvert.Types.HlsGroupSettings
import Network.AWS.MediaConvert.Types.MsSmoothGroupSettings
import Network.AWS.MediaConvert.Types.OutputGroupType
import Network.AWS.Prelude

-- | Output Group settings, including type
--
-- /See:/ 'outputGroupSettings' smart constructor.
data OutputGroupSettings = OutputGroupSettings'
  { _ogsMsSmoothGroupSettings ::
      !(Maybe MsSmoothGroupSettings),
    _ogsHlsGroupSettings ::
      !(Maybe HlsGroupSettings),
    _ogsFileGroupSettings ::
      !(Maybe FileGroupSettings),
    _ogsDashIsoGroupSettings ::
      !(Maybe DashIsoGroupSettings),
    _ogsCmafGroupSettings ::
      !(Maybe CmafGroupSettings),
    _ogsType ::
      !(Maybe OutputGroupType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogsMsSmoothGroupSettings' - Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to MS_SMOOTH_GROUP_SETTINGS.
--
-- * 'ogsHlsGroupSettings' - Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to HLS_GROUP_SETTINGS.
--
-- * 'ogsFileGroupSettings' - Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to FILE_GROUP_SETTINGS.
--
-- * 'ogsDashIsoGroupSettings' - Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS.
--
-- * 'ogsCmafGroupSettings' - Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to CMAF_GROUP_SETTINGS. Each output in a CMAF Output Group may only contain a single video, audio, or caption output.
--
-- * 'ogsType' - Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming, CMAF)
outputGroupSettings ::
  OutputGroupSettings
outputGroupSettings =
  OutputGroupSettings'
    { _ogsMsSmoothGroupSettings =
        Nothing,
      _ogsHlsGroupSettings = Nothing,
      _ogsFileGroupSettings = Nothing,
      _ogsDashIsoGroupSettings = Nothing,
      _ogsCmafGroupSettings = Nothing,
      _ogsType = Nothing
    }

-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to MS_SMOOTH_GROUP_SETTINGS.
ogsMsSmoothGroupSettings :: Lens' OutputGroupSettings (Maybe MsSmoothGroupSettings)
ogsMsSmoothGroupSettings = lens _ogsMsSmoothGroupSettings (\s a -> s {_ogsMsSmoothGroupSettings = a})

-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to HLS_GROUP_SETTINGS.
ogsHlsGroupSettings :: Lens' OutputGroupSettings (Maybe HlsGroupSettings)
ogsHlsGroupSettings = lens _ogsHlsGroupSettings (\s a -> s {_ogsHlsGroupSettings = a})

-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to FILE_GROUP_SETTINGS.
ogsFileGroupSettings :: Lens' OutputGroupSettings (Maybe FileGroupSettings)
ogsFileGroupSettings = lens _ogsFileGroupSettings (\s a -> s {_ogsFileGroupSettings = a})

-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS.
ogsDashIsoGroupSettings :: Lens' OutputGroupSettings (Maybe DashIsoGroupSettings)
ogsDashIsoGroupSettings = lens _ogsDashIsoGroupSettings (\s a -> s {_ogsDashIsoGroupSettings = a})

-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to CMAF_GROUP_SETTINGS. Each output in a CMAF Output Group may only contain a single video, audio, or caption output.
ogsCmafGroupSettings :: Lens' OutputGroupSettings (Maybe CmafGroupSettings)
ogsCmafGroupSettings = lens _ogsCmafGroupSettings (\s a -> s {_ogsCmafGroupSettings = a})

-- | Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming, CMAF)
ogsType :: Lens' OutputGroupSettings (Maybe OutputGroupType)
ogsType = lens _ogsType (\s a -> s {_ogsType = a})

instance FromJSON OutputGroupSettings where
  parseJSON =
    withObject
      "OutputGroupSettings"
      ( \x ->
          OutputGroupSettings'
            <$> (x .:? "msSmoothGroupSettings")
            <*> (x .:? "hlsGroupSettings")
            <*> (x .:? "fileGroupSettings")
            <*> (x .:? "dashIsoGroupSettings")
            <*> (x .:? "cmafGroupSettings")
            <*> (x .:? "type")
      )

instance Hashable OutputGroupSettings

instance NFData OutputGroupSettings

instance ToJSON OutputGroupSettings where
  toJSON OutputGroupSettings' {..} =
    object
      ( catMaybes
          [ ("msSmoothGroupSettings" .=)
              <$> _ogsMsSmoothGroupSettings,
            ("hlsGroupSettings" .=) <$> _ogsHlsGroupSettings,
            ("fileGroupSettings" .=) <$> _ogsFileGroupSettings,
            ("dashIsoGroupSettings" .=)
              <$> _ogsDashIsoGroupSettings,
            ("cmafGroupSettings" .=) <$> _ogsCmafGroupSettings,
            ("type" .=) <$> _ogsType
          ]
      )
