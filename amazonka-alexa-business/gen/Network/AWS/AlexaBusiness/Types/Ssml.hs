{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.Ssml
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.Ssml where

import Network.AWS.AlexaBusiness.Types.Locale
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The SSML message. For more information, see <https://developer.amazon.com/docs/custom-skills/speech-synthesis-markup-language-ssml-reference.html SSML Reference> .
--
--
--
-- /See:/ 'ssml' smart constructor.
data Ssml = Ssml'
  { _sLocale :: !Locale,
    _sValue :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Ssml' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sLocale' - The locale of the SSML message. Currently, en-US is supported.
--
-- * 'sValue' - The value of the SSML message in the correct SSML format. The audio tag is not supported.
ssml ::
  -- | 'sLocale'
  Locale ->
  -- | 'sValue'
  Text ->
  Ssml
ssml pLocale_ pValue_ =
  Ssml' {_sLocale = pLocale_, _sValue = pValue_}

-- | The locale of the SSML message. Currently, en-US is supported.
sLocale :: Lens' Ssml Locale
sLocale = lens _sLocale (\s a -> s {_sLocale = a})

-- | The value of the SSML message in the correct SSML format. The audio tag is not supported.
sValue :: Lens' Ssml Text
sValue = lens _sValue (\s a -> s {_sValue = a})

instance Hashable Ssml

instance NFData Ssml

instance ToJSON Ssml where
  toJSON Ssml' {..} =
    object
      ( catMaybes
          [ Just ("Locale" .= _sLocale),
            Just ("Value" .= _sValue)
          ]
      )
