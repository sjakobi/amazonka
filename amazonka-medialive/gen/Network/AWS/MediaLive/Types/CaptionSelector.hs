{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.CaptionSelector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.CaptionSelector where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.CaptionSelectorSettings
import Network.AWS.Prelude

-- | Output groups for this Live Event. Output groups contain information about where streams should be distributed.
--
-- /See:/ 'captionSelector' smart constructor.
data CaptionSelector = CaptionSelector'
  { _csLanguageCode ::
      !(Maybe Text),
    _csSelectorSettings ::
      !(Maybe CaptionSelectorSettings),
    _csName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CaptionSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csLanguageCode' - When specified this field indicates the three letter language code of the caption track to extract from the source.
--
-- * 'csSelectorSettings' - Caption selector settings.
--
-- * 'csName' - Name identifier for a caption selector.  This name is used to associate this caption selector with one or more caption descriptions.  Names must be unique within an event.
captionSelector ::
  -- | 'csName'
  Text ->
  CaptionSelector
captionSelector pName_ =
  CaptionSelector'
    { _csLanguageCode = Nothing,
      _csSelectorSettings = Nothing,
      _csName = pName_
    }

-- | When specified this field indicates the three letter language code of the caption track to extract from the source.
csLanguageCode :: Lens' CaptionSelector (Maybe Text)
csLanguageCode = lens _csLanguageCode (\s a -> s {_csLanguageCode = a})

-- | Caption selector settings.
csSelectorSettings :: Lens' CaptionSelector (Maybe CaptionSelectorSettings)
csSelectorSettings = lens _csSelectorSettings (\s a -> s {_csSelectorSettings = a})

-- | Name identifier for a caption selector.  This name is used to associate this caption selector with one or more caption descriptions.  Names must be unique within an event.
csName :: Lens' CaptionSelector Text
csName = lens _csName (\s a -> s {_csName = a})

instance FromJSON CaptionSelector where
  parseJSON =
    withObject
      "CaptionSelector"
      ( \x ->
          CaptionSelector'
            <$> (x .:? "languageCode")
            <*> (x .:? "selectorSettings")
            <*> (x .: "name")
      )

instance Hashable CaptionSelector

instance NFData CaptionSelector

instance ToJSON CaptionSelector where
  toJSON CaptionSelector' {..} =
    object
      ( catMaybes
          [ ("languageCode" .=) <$> _csLanguageCode,
            ("selectorSettings" .=) <$> _csSelectorSettings,
            Just ("name" .= _csName)
          ]
      )
