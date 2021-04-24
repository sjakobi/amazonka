{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CaptionDescription where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.CaptionDestinationSettings
import Network.AWS.MediaConvert.Types.LanguageCode
import Network.AWS.Prelude

-- | Description of Caption output
--
-- /See:/ 'captionDescription' smart constructor.
data CaptionDescription = CaptionDescription'
  { _cdLanguageCode ::
      !(Maybe LanguageCode),
    _cdLanguageDescription ::
      !(Maybe Text),
    _cdCustomLanguageCode ::
      !(Maybe Text),
    _cdCaptionSelectorName ::
      !(Maybe Text),
    _cdDestinationSettings ::
      !( Maybe
           CaptionDestinationSettings
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CaptionDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdLanguageCode' - Specify the language of this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information to choose the font language for rendering the captions text.
--
-- * 'cdLanguageDescription' - Specify a label for this set of output captions. For example, "English", "Director commentary", or "track_2". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting.
--
-- * 'cdCustomLanguageCode' - Specify the language for this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information when automatically selecting the font script for rendering the captions text. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming.
--
-- * 'cdCaptionSelectorName' - <N>", which denotes that the Nth Caption Selector will be used from each input.
--
-- * 'cdDestinationSettings' - Specific settings required by destination type. Note that burnin_destination_settings are not available if the source of the caption data is Embedded or Teletext.
captionDescription ::
  CaptionDescription
captionDescription =
  CaptionDescription'
    { _cdLanguageCode = Nothing,
      _cdLanguageDescription = Nothing,
      _cdCustomLanguageCode = Nothing,
      _cdCaptionSelectorName = Nothing,
      _cdDestinationSettings = Nothing
    }

-- | Specify the language of this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information to choose the font language for rendering the captions text.
cdLanguageCode :: Lens' CaptionDescription (Maybe LanguageCode)
cdLanguageCode = lens _cdLanguageCode (\s a -> s {_cdLanguageCode = a})

-- | Specify a label for this set of output captions. For example, "English", "Director commentary", or "track_2". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting.
cdLanguageDescription :: Lens' CaptionDescription (Maybe Text)
cdLanguageDescription = lens _cdLanguageDescription (\s a -> s {_cdLanguageDescription = a})

-- | Specify the language for this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information when automatically selecting the font script for rendering the captions text. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming.
cdCustomLanguageCode :: Lens' CaptionDescription (Maybe Text)
cdCustomLanguageCode = lens _cdCustomLanguageCode (\s a -> s {_cdCustomLanguageCode = a})

-- | <N>", which denotes that the Nth Caption Selector will be used from each input.
cdCaptionSelectorName :: Lens' CaptionDescription (Maybe Text)
cdCaptionSelectorName = lens _cdCaptionSelectorName (\s a -> s {_cdCaptionSelectorName = a})

-- | Specific settings required by destination type. Note that burnin_destination_settings are not available if the source of the caption data is Embedded or Teletext.
cdDestinationSettings :: Lens' CaptionDescription (Maybe CaptionDestinationSettings)
cdDestinationSettings = lens _cdDestinationSettings (\s a -> s {_cdDestinationSettings = a})

instance FromJSON CaptionDescription where
  parseJSON =
    withObject
      "CaptionDescription"
      ( \x ->
          CaptionDescription'
            <$> (x .:? "languageCode")
            <*> (x .:? "languageDescription")
            <*> (x .:? "customLanguageCode")
            <*> (x .:? "captionSelectorName")
            <*> (x .:? "destinationSettings")
      )

instance Hashable CaptionDescription

instance NFData CaptionDescription

instance ToJSON CaptionDescription where
  toJSON CaptionDescription' {..} =
    object
      ( catMaybes
          [ ("languageCode" .=) <$> _cdLanguageCode,
            ("languageDescription" .=)
              <$> _cdLanguageDescription,
            ("customLanguageCode" .=) <$> _cdCustomLanguageCode,
            ("captionSelectorName" .=)
              <$> _cdCaptionSelectorName,
            ("destinationSettings" .=)
              <$> _cdDestinationSettings
          ]
      )
