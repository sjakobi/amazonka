{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Output
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Output where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.OutputSettings
import Network.AWS.Prelude

-- | Output settings. There can be multiple outputs within a group.
--
-- /See:/ 'output' smart constructor.
data Output = Output'
  { _oAudioDescriptionNames ::
      !(Maybe [Text]),
    _oOutputName :: !(Maybe Text),
    _oVideoDescriptionName :: !(Maybe Text),
    _oCaptionDescriptionNames :: !(Maybe [Text]),
    _oOutputSettings :: !OutputSettings
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Output' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oAudioDescriptionNames' - The names of the AudioDescriptions used as audio sources for this output.
--
-- * 'oOutputName' - The name used to identify an output.
--
-- * 'oVideoDescriptionName' - The name of the VideoDescription used as the source for this output.
--
-- * 'oCaptionDescriptionNames' - The names of the CaptionDescriptions used as caption sources for this output.
--
-- * 'oOutputSettings' - Output type-specific settings.
output ::
  -- | 'oOutputSettings'
  OutputSettings ->
  Output
output pOutputSettings_ =
  Output'
    { _oAudioDescriptionNames = Nothing,
      _oOutputName = Nothing,
      _oVideoDescriptionName = Nothing,
      _oCaptionDescriptionNames = Nothing,
      _oOutputSettings = pOutputSettings_
    }

-- | The names of the AudioDescriptions used as audio sources for this output.
oAudioDescriptionNames :: Lens' Output [Text]
oAudioDescriptionNames = lens _oAudioDescriptionNames (\s a -> s {_oAudioDescriptionNames = a}) . _Default . _Coerce

-- | The name used to identify an output.
oOutputName :: Lens' Output (Maybe Text)
oOutputName = lens _oOutputName (\s a -> s {_oOutputName = a})

-- | The name of the VideoDescription used as the source for this output.
oVideoDescriptionName :: Lens' Output (Maybe Text)
oVideoDescriptionName = lens _oVideoDescriptionName (\s a -> s {_oVideoDescriptionName = a})

-- | The names of the CaptionDescriptions used as caption sources for this output.
oCaptionDescriptionNames :: Lens' Output [Text]
oCaptionDescriptionNames = lens _oCaptionDescriptionNames (\s a -> s {_oCaptionDescriptionNames = a}) . _Default . _Coerce

-- | Output type-specific settings.
oOutputSettings :: Lens' Output OutputSettings
oOutputSettings = lens _oOutputSettings (\s a -> s {_oOutputSettings = a})

instance FromJSON Output where
  parseJSON =
    withObject
      "Output"
      ( \x ->
          Output'
            <$> (x .:? "audioDescriptionNames" .!= mempty)
            <*> (x .:? "outputName")
            <*> (x .:? "videoDescriptionName")
            <*> (x .:? "captionDescriptionNames" .!= mempty)
            <*> (x .: "outputSettings")
      )

instance Hashable Output

instance NFData Output

instance ToJSON Output where
  toJSON Output' {..} =
    object
      ( catMaybes
          [ ("audioDescriptionNames" .=)
              <$> _oAudioDescriptionNames,
            ("outputName" .=) <$> _oOutputName,
            ("videoDescriptionName" .=)
              <$> _oVideoDescriptionName,
            ("captionDescriptionNames" .=)
              <$> _oCaptionDescriptionNames,
            Just ("outputSettings" .= _oOutputSettings)
          ]
      )
