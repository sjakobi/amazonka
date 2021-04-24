{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.FontScript
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.FontScript
  ( FontScript
      ( ..,
        Automatic,
        Hans,
        Hant
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Provide the font script, using an ISO 15924 script code, if the LanguageCode is not sufficient for determining the script type. Where LanguageCode or CustomLanguageCode is sufficient, use "AUTOMATIC" or leave unset.
data FontScript = FontScript' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Automatic :: FontScript
pattern Automatic = FontScript' "AUTOMATIC"

pattern Hans :: FontScript
pattern Hans = FontScript' "HANS"

pattern Hant :: FontScript
pattern Hant = FontScript' "HANT"

{-# COMPLETE
  Automatic,
  Hans,
  Hant,
  FontScript'
  #-}

instance FromText FontScript where
  parser = (FontScript' . mk) <$> takeText

instance ToText FontScript where
  toText (FontScript' ci) = original ci

instance Hashable FontScript

instance NFData FontScript

instance ToByteString FontScript

instance ToQuery FontScript

instance ToHeader FontScript

instance ToJSON FontScript where
  toJSON = toJSONText

instance FromJSON FontScript where
  parseJSON = parseJSONText "FontScript"
