{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.PresetSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.PresetSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AudioDescription
import Network.AWS.MediaConvert.Types.CaptionDescriptionPreset
import Network.AWS.MediaConvert.Types.ContainerSettings
import Network.AWS.MediaConvert.Types.VideoDescription
import Network.AWS.Prelude

-- | Settings for preset
--
-- /See:/ 'presetSettings' smart constructor.
data PresetSettings = PresetSettings'
  { _psAudioDescriptions ::
      !(Maybe [AudioDescription]),
    _psContainerSettings ::
      !(Maybe ContainerSettings),
    _psVideoDescription ::
      !(Maybe VideoDescription),
    _psCaptionDescriptions ::
      !(Maybe [CaptionDescriptionPreset])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PresetSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psAudioDescriptions' - (AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings.
--
-- * 'psContainerSettings' - Container specific settings.
--
-- * 'psVideoDescription' - (VideoDescription) contains a group of video encoding settings. The specific video settings depend on the video codec that you choose when you specify a value for Video codec (codec). Include one instance of (VideoDescription) per output.
--
-- * 'psCaptionDescriptions' - Caption settings for this preset. There can be multiple caption settings in a single output.
presetSettings ::
  PresetSettings
presetSettings =
  PresetSettings'
    { _psAudioDescriptions = Nothing,
      _psContainerSettings = Nothing,
      _psVideoDescription = Nothing,
      _psCaptionDescriptions = Nothing
    }

-- | (AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings.
psAudioDescriptions :: Lens' PresetSettings [AudioDescription]
psAudioDescriptions = lens _psAudioDescriptions (\s a -> s {_psAudioDescriptions = a}) . _Default . _Coerce

-- | Container specific settings.
psContainerSettings :: Lens' PresetSettings (Maybe ContainerSettings)
psContainerSettings = lens _psContainerSettings (\s a -> s {_psContainerSettings = a})

-- | (VideoDescription) contains a group of video encoding settings. The specific video settings depend on the video codec that you choose when you specify a value for Video codec (codec). Include one instance of (VideoDescription) per output.
psVideoDescription :: Lens' PresetSettings (Maybe VideoDescription)
psVideoDescription = lens _psVideoDescription (\s a -> s {_psVideoDescription = a})

-- | Caption settings for this preset. There can be multiple caption settings in a single output.
psCaptionDescriptions :: Lens' PresetSettings [CaptionDescriptionPreset]
psCaptionDescriptions = lens _psCaptionDescriptions (\s a -> s {_psCaptionDescriptions = a}) . _Default . _Coerce

instance FromJSON PresetSettings where
  parseJSON =
    withObject
      "PresetSettings"
      ( \x ->
          PresetSettings'
            <$> (x .:? "audioDescriptions" .!= mempty)
            <*> (x .:? "containerSettings")
            <*> (x .:? "videoDescription")
            <*> (x .:? "captionDescriptions" .!= mempty)
      )

instance Hashable PresetSettings

instance NFData PresetSettings

instance ToJSON PresetSettings where
  toJSON PresetSettings' {..} =
    object
      ( catMaybes
          [ ("audioDescriptions" .=) <$> _psAudioDescriptions,
            ("containerSettings" .=) <$> _psContainerSettings,
            ("videoDescription" .=) <$> _psVideoDescription,
            ("captionDescriptions" .=)
              <$> _psCaptionDescriptions
          ]
      )
