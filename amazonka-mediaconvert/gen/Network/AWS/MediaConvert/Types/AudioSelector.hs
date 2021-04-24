{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioSelector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioSelector where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AudioDefaultSelection
import Network.AWS.MediaConvert.Types.AudioSelectorType
import Network.AWS.MediaConvert.Types.LanguageCode
import Network.AWS.MediaConvert.Types.RemixSettings
import Network.AWS.Prelude

-- | Selector for Audio
--
-- /See:/ 'audioSelector' smart constructor.
data AudioSelector = AudioSelector'
  { _asLanguageCode ::
      !(Maybe LanguageCode),
    _asProgramSelection :: !(Maybe Nat),
    _asCustomLanguageCode :: !(Maybe Text),
    _asTracks :: !(Maybe [Nat]),
    _asDefaultSelection ::
      !(Maybe AudioDefaultSelection),
    _asSelectorType ::
      !(Maybe AudioSelectorType),
    _asRemixSettings :: !(Maybe RemixSettings),
    _asPids :: !(Maybe [Nat]),
    _asExternalAudioFileInput :: !(Maybe Text),
    _asOffset :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AudioSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asLanguageCode' - Selects a specific language code from within an audio source.
--
-- * 'asProgramSelection' - Use this setting for input streams that contain Dolby E, to have the service extract specific program data from the track. To select multiple programs, create multiple selectors with the same Track and different Program numbers. In the console, this setting is visible when you set Selector type to Track. Choose the program number from the dropdown list. If you are sending a JSON file, provide the program ID, which is part of the audio metadata. If your input file has incorrect metadata, you can choose All channels instead of a program number to have the service ignore the program IDs and include all the programs in the track.
--
-- * 'asCustomLanguageCode' - Selects a specific language code from within an audio source, using the ISO 639-2 or ISO 639-3 three-letter language code
--
-- * 'asTracks' - Identify a track from the input audio to include in this selector by entering the track index number. To include several tracks in a single audio selector, specify multiple tracks as follows. Using the console, enter a comma-separated list. For examle, type "1,2,3" to include tracks 1 through 3. Specifying directly in your JSON job file, provide the track numbers in an array. For example, "tracks": [1,2,3].
--
-- * 'asDefaultSelection' - Enable this setting on one audio selector to set it as the default for the job. The service uses this default for outputs where it can't find the specified input audio. If you don't set a default, those outputs have no audio.
--
-- * 'asSelectorType' - Specifies the type of the audio selector.
--
-- * 'asRemixSettings' - Use these settings to reorder the audio channels of one input to match those of another input. This allows you to combine the two files into a single output, one after the other.
--
-- * 'asPids' - Selects a specific PID from within an audio source (e.g. 257 selects PID 0x101).
--
-- * 'asExternalAudioFileInput' - Specifies audio data from an external file source.
--
-- * 'asOffset' - Specifies a time delta in milliseconds to offset the audio from the input video.
audioSelector ::
  AudioSelector
audioSelector =
  AudioSelector'
    { _asLanguageCode = Nothing,
      _asProgramSelection = Nothing,
      _asCustomLanguageCode = Nothing,
      _asTracks = Nothing,
      _asDefaultSelection = Nothing,
      _asSelectorType = Nothing,
      _asRemixSettings = Nothing,
      _asPids = Nothing,
      _asExternalAudioFileInput = Nothing,
      _asOffset = Nothing
    }

-- | Selects a specific language code from within an audio source.
asLanguageCode :: Lens' AudioSelector (Maybe LanguageCode)
asLanguageCode = lens _asLanguageCode (\s a -> s {_asLanguageCode = a})

-- | Use this setting for input streams that contain Dolby E, to have the service extract specific program data from the track. To select multiple programs, create multiple selectors with the same Track and different Program numbers. In the console, this setting is visible when you set Selector type to Track. Choose the program number from the dropdown list. If you are sending a JSON file, provide the program ID, which is part of the audio metadata. If your input file has incorrect metadata, you can choose All channels instead of a program number to have the service ignore the program IDs and include all the programs in the track.
asProgramSelection :: Lens' AudioSelector (Maybe Natural)
asProgramSelection = lens _asProgramSelection (\s a -> s {_asProgramSelection = a}) . mapping _Nat

-- | Selects a specific language code from within an audio source, using the ISO 639-2 or ISO 639-3 three-letter language code
asCustomLanguageCode :: Lens' AudioSelector (Maybe Text)
asCustomLanguageCode = lens _asCustomLanguageCode (\s a -> s {_asCustomLanguageCode = a})

-- | Identify a track from the input audio to include in this selector by entering the track index number. To include several tracks in a single audio selector, specify multiple tracks as follows. Using the console, enter a comma-separated list. For examle, type "1,2,3" to include tracks 1 through 3. Specifying directly in your JSON job file, provide the track numbers in an array. For example, "tracks": [1,2,3].
asTracks :: Lens' AudioSelector [Natural]
asTracks = lens _asTracks (\s a -> s {_asTracks = a}) . _Default . _Coerce

-- | Enable this setting on one audio selector to set it as the default for the job. The service uses this default for outputs where it can't find the specified input audio. If you don't set a default, those outputs have no audio.
asDefaultSelection :: Lens' AudioSelector (Maybe AudioDefaultSelection)
asDefaultSelection = lens _asDefaultSelection (\s a -> s {_asDefaultSelection = a})

-- | Specifies the type of the audio selector.
asSelectorType :: Lens' AudioSelector (Maybe AudioSelectorType)
asSelectorType = lens _asSelectorType (\s a -> s {_asSelectorType = a})

-- | Use these settings to reorder the audio channels of one input to match those of another input. This allows you to combine the two files into a single output, one after the other.
asRemixSettings :: Lens' AudioSelector (Maybe RemixSettings)
asRemixSettings = lens _asRemixSettings (\s a -> s {_asRemixSettings = a})

-- | Selects a specific PID from within an audio source (e.g. 257 selects PID 0x101).
asPids :: Lens' AudioSelector [Natural]
asPids = lens _asPids (\s a -> s {_asPids = a}) . _Default . _Coerce

-- | Specifies audio data from an external file source.
asExternalAudioFileInput :: Lens' AudioSelector (Maybe Text)
asExternalAudioFileInput = lens _asExternalAudioFileInput (\s a -> s {_asExternalAudioFileInput = a})

-- | Specifies a time delta in milliseconds to offset the audio from the input video.
asOffset :: Lens' AudioSelector (Maybe Int)
asOffset = lens _asOffset (\s a -> s {_asOffset = a})

instance FromJSON AudioSelector where
  parseJSON =
    withObject
      "AudioSelector"
      ( \x ->
          AudioSelector'
            <$> (x .:? "languageCode")
            <*> (x .:? "programSelection")
            <*> (x .:? "customLanguageCode")
            <*> (x .:? "tracks" .!= mempty)
            <*> (x .:? "defaultSelection")
            <*> (x .:? "selectorType")
            <*> (x .:? "remixSettings")
            <*> (x .:? "pids" .!= mempty)
            <*> (x .:? "externalAudioFileInput")
            <*> (x .:? "offset")
      )

instance Hashable AudioSelector

instance NFData AudioSelector

instance ToJSON AudioSelector where
  toJSON AudioSelector' {..} =
    object
      ( catMaybes
          [ ("languageCode" .=) <$> _asLanguageCode,
            ("programSelection" .=) <$> _asProgramSelection,
            ("customLanguageCode" .=) <$> _asCustomLanguageCode,
            ("tracks" .=) <$> _asTracks,
            ("defaultSelection" .=) <$> _asDefaultSelection,
            ("selectorType" .=) <$> _asSelectorType,
            ("remixSettings" .=) <$> _asRemixSettings,
            ("pids" .=) <$> _asPids,
            ("externalAudioFileInput" .=)
              <$> _asExternalAudioFileInput,
            ("offset" .=) <$> _asOffset
          ]
      )
