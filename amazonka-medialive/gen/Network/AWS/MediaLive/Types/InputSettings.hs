{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AudioSelector
import Network.AWS.MediaLive.Types.CaptionSelector
import Network.AWS.MediaLive.Types.InputDeblockFilter
import Network.AWS.MediaLive.Types.InputDenoiseFilter
import Network.AWS.MediaLive.Types.InputFilter
import Network.AWS.MediaLive.Types.InputSourceEndBehavior
import Network.AWS.MediaLive.Types.NetworkInputSettings
import Network.AWS.MediaLive.Types.Smpte2038DataPreference
import Network.AWS.MediaLive.Types.VideoSelector
import Network.AWS.Prelude

-- | Live Event input parameters. There can be multiple inputs in a single Live Event.
--
-- /See:/ 'inputSettings' smart constructor.
data InputSettings = InputSettings'
  { _isDenoiseFilter ::
      !(Maybe InputDenoiseFilter),
    _isAudioSelectors ::
      !(Maybe [AudioSelector]),
    _isFilterStrength :: !(Maybe Nat),
    _isSmpte2038DataPreference ::
      !(Maybe Smpte2038DataPreference),
    _isVideoSelector :: !(Maybe VideoSelector),
    _isSourceEndBehavior ::
      !(Maybe InputSourceEndBehavior),
    _isInputFilter :: !(Maybe InputFilter),
    _isDeblockFilter ::
      !(Maybe InputDeblockFilter),
    _isCaptionSelectors ::
      !(Maybe [CaptionSelector]),
    _isNetworkInputSettings ::
      !(Maybe NetworkInputSettings)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InputSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isDenoiseFilter' - Enable or disable the denoise filter when filtering.
--
-- * 'isAudioSelectors' - Used to select the audio stream to decode for inputs that have multiple available.
--
-- * 'isFilterStrength' - Adjusts the magnitude of filtering from 1 (minimal) to 5 (strongest).
--
-- * 'isSmpte2038DataPreference' - Specifies whether to extract applicable ancillary data from a SMPTE-2038 source in this input. Applicable data types are captions, timecode, AFD, and SCTE-104 messages. - PREFER: Extract from SMPTE-2038 if present in this input, otherwise extract from another source (if any). - IGNORE: Never extract any ancillary data from SMPTE-2038.
--
-- * 'isVideoSelector' - Informs which video elementary stream to decode for input types that have multiple available.
--
-- * 'isSourceEndBehavior' - Loop input if it is a file. This allows a file input to be streamed indefinitely.
--
-- * 'isInputFilter' - Turns on the filter for this input. MPEG-2 inputs have the deblocking filter enabled by default. 1) auto - filtering will be applied depending on input type/quality 2) disabled - no filtering will be applied to the input 3) forced - filtering will be applied regardless of input type
--
-- * 'isDeblockFilter' - Enable or disable the deblock filter when filtering.
--
-- * 'isCaptionSelectors' - Used to select the caption input to use for inputs that have multiple available.
--
-- * 'isNetworkInputSettings' - Input settings.
inputSettings ::
  InputSettings
inputSettings =
  InputSettings'
    { _isDenoiseFilter = Nothing,
      _isAudioSelectors = Nothing,
      _isFilterStrength = Nothing,
      _isSmpte2038DataPreference = Nothing,
      _isVideoSelector = Nothing,
      _isSourceEndBehavior = Nothing,
      _isInputFilter = Nothing,
      _isDeblockFilter = Nothing,
      _isCaptionSelectors = Nothing,
      _isNetworkInputSettings = Nothing
    }

-- | Enable or disable the denoise filter when filtering.
isDenoiseFilter :: Lens' InputSettings (Maybe InputDenoiseFilter)
isDenoiseFilter = lens _isDenoiseFilter (\s a -> s {_isDenoiseFilter = a})

-- | Used to select the audio stream to decode for inputs that have multiple available.
isAudioSelectors :: Lens' InputSettings [AudioSelector]
isAudioSelectors = lens _isAudioSelectors (\s a -> s {_isAudioSelectors = a}) . _Default . _Coerce

-- | Adjusts the magnitude of filtering from 1 (minimal) to 5 (strongest).
isFilterStrength :: Lens' InputSettings (Maybe Natural)
isFilterStrength = lens _isFilterStrength (\s a -> s {_isFilterStrength = a}) . mapping _Nat

-- | Specifies whether to extract applicable ancillary data from a SMPTE-2038 source in this input. Applicable data types are captions, timecode, AFD, and SCTE-104 messages. - PREFER: Extract from SMPTE-2038 if present in this input, otherwise extract from another source (if any). - IGNORE: Never extract any ancillary data from SMPTE-2038.
isSmpte2038DataPreference :: Lens' InputSettings (Maybe Smpte2038DataPreference)
isSmpte2038DataPreference = lens _isSmpte2038DataPreference (\s a -> s {_isSmpte2038DataPreference = a})

-- | Informs which video elementary stream to decode for input types that have multiple available.
isVideoSelector :: Lens' InputSettings (Maybe VideoSelector)
isVideoSelector = lens _isVideoSelector (\s a -> s {_isVideoSelector = a})

-- | Loop input if it is a file. This allows a file input to be streamed indefinitely.
isSourceEndBehavior :: Lens' InputSettings (Maybe InputSourceEndBehavior)
isSourceEndBehavior = lens _isSourceEndBehavior (\s a -> s {_isSourceEndBehavior = a})

-- | Turns on the filter for this input. MPEG-2 inputs have the deblocking filter enabled by default. 1) auto - filtering will be applied depending on input type/quality 2) disabled - no filtering will be applied to the input 3) forced - filtering will be applied regardless of input type
isInputFilter :: Lens' InputSettings (Maybe InputFilter)
isInputFilter = lens _isInputFilter (\s a -> s {_isInputFilter = a})

-- | Enable or disable the deblock filter when filtering.
isDeblockFilter :: Lens' InputSettings (Maybe InputDeblockFilter)
isDeblockFilter = lens _isDeblockFilter (\s a -> s {_isDeblockFilter = a})

-- | Used to select the caption input to use for inputs that have multiple available.
isCaptionSelectors :: Lens' InputSettings [CaptionSelector]
isCaptionSelectors = lens _isCaptionSelectors (\s a -> s {_isCaptionSelectors = a}) . _Default . _Coerce

-- | Input settings.
isNetworkInputSettings :: Lens' InputSettings (Maybe NetworkInputSettings)
isNetworkInputSettings = lens _isNetworkInputSettings (\s a -> s {_isNetworkInputSettings = a})

instance FromJSON InputSettings where
  parseJSON =
    withObject
      "InputSettings"
      ( \x ->
          InputSettings'
            <$> (x .:? "denoiseFilter")
            <*> (x .:? "audioSelectors" .!= mempty)
            <*> (x .:? "filterStrength")
            <*> (x .:? "smpte2038DataPreference")
            <*> (x .:? "videoSelector")
            <*> (x .:? "sourceEndBehavior")
            <*> (x .:? "inputFilter")
            <*> (x .:? "deblockFilter")
            <*> (x .:? "captionSelectors" .!= mempty)
            <*> (x .:? "networkInputSettings")
      )

instance Hashable InputSettings

instance NFData InputSettings

instance ToJSON InputSettings where
  toJSON InputSettings' {..} =
    object
      ( catMaybes
          [ ("denoiseFilter" .=) <$> _isDenoiseFilter,
            ("audioSelectors" .=) <$> _isAudioSelectors,
            ("filterStrength" .=) <$> _isFilterStrength,
            ("smpte2038DataPreference" .=)
              <$> _isSmpte2038DataPreference,
            ("videoSelector" .=) <$> _isVideoSelector,
            ("sourceEndBehavior" .=) <$> _isSourceEndBehavior,
            ("inputFilter" .=) <$> _isInputFilter,
            ("deblockFilter" .=) <$> _isDeblockFilter,
            ("captionSelectors" .=) <$> _isCaptionSelectors,
            ("networkInputSettings" .=)
              <$> _isNetworkInputSettings
          ]
      )
