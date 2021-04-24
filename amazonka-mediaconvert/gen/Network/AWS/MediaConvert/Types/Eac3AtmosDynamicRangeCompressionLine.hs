{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosDynamicRangeCompressionLine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosDynamicRangeCompressionLine
  ( Eac3AtmosDynamicRangeCompressionLine
      ( ..,
        EADRCLFilmLight,
        EADRCLFilmStandard,
        EADRCLMusicLight,
        EADRCLMusicStandard,
        EADRCLNone,
        EADRCLSpeech
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify the absolute peak level for a signal with dynamic range compression.
data Eac3AtmosDynamicRangeCompressionLine
  = Eac3AtmosDynamicRangeCompressionLine'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EADRCLFilmLight :: Eac3AtmosDynamicRangeCompressionLine
pattern EADRCLFilmLight = Eac3AtmosDynamicRangeCompressionLine' "FILM_LIGHT"

pattern EADRCLFilmStandard :: Eac3AtmosDynamicRangeCompressionLine
pattern EADRCLFilmStandard = Eac3AtmosDynamicRangeCompressionLine' "FILM_STANDARD"

pattern EADRCLMusicLight :: Eac3AtmosDynamicRangeCompressionLine
pattern EADRCLMusicLight = Eac3AtmosDynamicRangeCompressionLine' "MUSIC_LIGHT"

pattern EADRCLMusicStandard :: Eac3AtmosDynamicRangeCompressionLine
pattern EADRCLMusicStandard = Eac3AtmosDynamicRangeCompressionLine' "MUSIC_STANDARD"

pattern EADRCLNone :: Eac3AtmosDynamicRangeCompressionLine
pattern EADRCLNone = Eac3AtmosDynamicRangeCompressionLine' "NONE"

pattern EADRCLSpeech :: Eac3AtmosDynamicRangeCompressionLine
pattern EADRCLSpeech = Eac3AtmosDynamicRangeCompressionLine' "SPEECH"

{-# COMPLETE
  EADRCLFilmLight,
  EADRCLFilmStandard,
  EADRCLMusicLight,
  EADRCLMusicStandard,
  EADRCLNone,
  EADRCLSpeech,
  Eac3AtmosDynamicRangeCompressionLine'
  #-}

instance FromText Eac3AtmosDynamicRangeCompressionLine where
  parser = (Eac3AtmosDynamicRangeCompressionLine' . mk) <$> takeText

instance ToText Eac3AtmosDynamicRangeCompressionLine where
  toText (Eac3AtmosDynamicRangeCompressionLine' ci) = original ci

instance Hashable Eac3AtmosDynamicRangeCompressionLine

instance NFData Eac3AtmosDynamicRangeCompressionLine

instance ToByteString Eac3AtmosDynamicRangeCompressionLine

instance ToQuery Eac3AtmosDynamicRangeCompressionLine

instance ToHeader Eac3AtmosDynamicRangeCompressionLine

instance ToJSON Eac3AtmosDynamicRangeCompressionLine where
  toJSON = toJSONText

instance FromJSON Eac3AtmosDynamicRangeCompressionLine where
  parseJSON = parseJSONText "Eac3AtmosDynamicRangeCompressionLine"
