{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Output
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Output where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AudioDescription
import Network.AWS.MediaConvert.Types.CaptionDescription
import Network.AWS.MediaConvert.Types.ContainerSettings
import Network.AWS.MediaConvert.Types.OutputSettings
import Network.AWS.MediaConvert.Types.VideoDescription
import Network.AWS.Prelude

-- | An output object describes the settings for a single output file or stream in an output group.
--
-- /See:/ 'output' smart constructor.
data Output = Output'
  { _oAudioDescriptions ::
      !(Maybe [AudioDescription]),
    _oPreset :: !(Maybe Text),
    _oContainerSettings :: !(Maybe ContainerSettings),
    _oVideoDescription :: !(Maybe VideoDescription),
    _oExtension :: !(Maybe Text),
    _oCaptionDescriptions ::
      !(Maybe [CaptionDescription]),
    _oNameModifier :: !(Maybe Text),
    _oOutputSettings :: !(Maybe OutputSettings)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Output' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oAudioDescriptions' - (AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings.
--
-- * 'oPreset' - Use Preset (Preset) to specify a preset for your transcoding settings. Provide the system or custom preset name. You can specify either Preset (Preset) or Container settings (ContainerSettings), but not both.
--
-- * 'oContainerSettings' - Container specific settings.
--
-- * 'oVideoDescription' - (VideoDescription) contains a group of video encoding settings. The specific video settings depend on the video codec that you choose when you specify a value for Video codec (codec). Include one instance of (VideoDescription) per output.
--
-- * 'oExtension' - Use Extension (Extension) to specify the file extension for outputs in File output groups. If you do not specify a value, the service will use default extensions by container type as follows * MPEG-2 transport stream, m2ts * Quicktime, mov * MXF container, mxf * MPEG-4 container, mp4 * WebM container, webm * No Container, the service will use codec extensions (e.g. AAC, H265, H265, AC3)
--
-- * 'oCaptionDescriptions' - (CaptionDescriptions) contains groups of captions settings. For each output that has captions, include one instance of (CaptionDescriptions). (CaptionDescriptions) can contain multiple groups of captions settings.
--
-- * 'oNameModifier' - Use Name modifier (NameModifier) to have the service add a string to the end of each output filename. You specify the base filename as part of your destination URI. When you create multiple outputs in the same output group, Name modifier (NameModifier) is required. Name modifier also accepts format identifiers. For DASH ISO outputs, if you use the format identifiers $Number$ or $Time$ in one output, you must use them in the same way in all outputs of the output group.
--
-- * 'oOutputSettings' - Specific settings for this type of output.
output ::
  Output
output =
  Output'
    { _oAudioDescriptions = Nothing,
      _oPreset = Nothing,
      _oContainerSettings = Nothing,
      _oVideoDescription = Nothing,
      _oExtension = Nothing,
      _oCaptionDescriptions = Nothing,
      _oNameModifier = Nothing,
      _oOutputSettings = Nothing
    }

-- | (AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings.
oAudioDescriptions :: Lens' Output [AudioDescription]
oAudioDescriptions = lens _oAudioDescriptions (\s a -> s {_oAudioDescriptions = a}) . _Default . _Coerce

-- | Use Preset (Preset) to specify a preset for your transcoding settings. Provide the system or custom preset name. You can specify either Preset (Preset) or Container settings (ContainerSettings), but not both.
oPreset :: Lens' Output (Maybe Text)
oPreset = lens _oPreset (\s a -> s {_oPreset = a})

-- | Container specific settings.
oContainerSettings :: Lens' Output (Maybe ContainerSettings)
oContainerSettings = lens _oContainerSettings (\s a -> s {_oContainerSettings = a})

-- | (VideoDescription) contains a group of video encoding settings. The specific video settings depend on the video codec that you choose when you specify a value for Video codec (codec). Include one instance of (VideoDescription) per output.
oVideoDescription :: Lens' Output (Maybe VideoDescription)
oVideoDescription = lens _oVideoDescription (\s a -> s {_oVideoDescription = a})

-- | Use Extension (Extension) to specify the file extension for outputs in File output groups. If you do not specify a value, the service will use default extensions by container type as follows * MPEG-2 transport stream, m2ts * Quicktime, mov * MXF container, mxf * MPEG-4 container, mp4 * WebM container, webm * No Container, the service will use codec extensions (e.g. AAC, H265, H265, AC3)
oExtension :: Lens' Output (Maybe Text)
oExtension = lens _oExtension (\s a -> s {_oExtension = a})

-- | (CaptionDescriptions) contains groups of captions settings. For each output that has captions, include one instance of (CaptionDescriptions). (CaptionDescriptions) can contain multiple groups of captions settings.
oCaptionDescriptions :: Lens' Output [CaptionDescription]
oCaptionDescriptions = lens _oCaptionDescriptions (\s a -> s {_oCaptionDescriptions = a}) . _Default . _Coerce

-- | Use Name modifier (NameModifier) to have the service add a string to the end of each output filename. You specify the base filename as part of your destination URI. When you create multiple outputs in the same output group, Name modifier (NameModifier) is required. Name modifier also accepts format identifiers. For DASH ISO outputs, if you use the format identifiers $Number$ or $Time$ in one output, you must use them in the same way in all outputs of the output group.
oNameModifier :: Lens' Output (Maybe Text)
oNameModifier = lens _oNameModifier (\s a -> s {_oNameModifier = a})

-- | Specific settings for this type of output.
oOutputSettings :: Lens' Output (Maybe OutputSettings)
oOutputSettings = lens _oOutputSettings (\s a -> s {_oOutputSettings = a})

instance FromJSON Output where
  parseJSON =
    withObject
      "Output"
      ( \x ->
          Output'
            <$> (x .:? "audioDescriptions" .!= mempty)
            <*> (x .:? "preset")
            <*> (x .:? "containerSettings")
            <*> (x .:? "videoDescription")
            <*> (x .:? "extension")
            <*> (x .:? "captionDescriptions" .!= mempty)
            <*> (x .:? "nameModifier")
            <*> (x .:? "outputSettings")
      )

instance Hashable Output

instance NFData Output

instance ToJSON Output where
  toJSON Output' {..} =
    object
      ( catMaybes
          [ ("audioDescriptions" .=) <$> _oAudioDescriptions,
            ("preset" .=) <$> _oPreset,
            ("containerSettings" .=) <$> _oContainerSettings,
            ("videoDescription" .=) <$> _oVideoDescription,
            ("extension" .=) <$> _oExtension,
            ("captionDescriptions" .=) <$> _oCaptionDescriptions,
            ("nameModifier" .=) <$> _oNameModifier,
            ("outputSettings" .=) <$> _oOutputSettings
          ]
      )
