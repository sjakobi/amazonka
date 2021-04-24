{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionLine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionLine
  ( Eac3DynamicRangeCompressionLine
      ( ..,
        EDRCLFilmLight,
        EDRCLFilmStandard,
        EDRCLMusicLight,
        EDRCLMusicStandard,
        EDRCLNone,
        EDRCLSpeech
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify the absolute peak level for a signal with dynamic range compression.
data Eac3DynamicRangeCompressionLine
  = Eac3DynamicRangeCompressionLine'
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

pattern EDRCLFilmLight :: Eac3DynamicRangeCompressionLine
pattern EDRCLFilmLight = Eac3DynamicRangeCompressionLine' "FILM_LIGHT"

pattern EDRCLFilmStandard :: Eac3DynamicRangeCompressionLine
pattern EDRCLFilmStandard = Eac3DynamicRangeCompressionLine' "FILM_STANDARD"

pattern EDRCLMusicLight :: Eac3DynamicRangeCompressionLine
pattern EDRCLMusicLight = Eac3DynamicRangeCompressionLine' "MUSIC_LIGHT"

pattern EDRCLMusicStandard :: Eac3DynamicRangeCompressionLine
pattern EDRCLMusicStandard = Eac3DynamicRangeCompressionLine' "MUSIC_STANDARD"

pattern EDRCLNone :: Eac3DynamicRangeCompressionLine
pattern EDRCLNone = Eac3DynamicRangeCompressionLine' "NONE"

pattern EDRCLSpeech :: Eac3DynamicRangeCompressionLine
pattern EDRCLSpeech = Eac3DynamicRangeCompressionLine' "SPEECH"

{-# COMPLETE
  EDRCLFilmLight,
  EDRCLFilmStandard,
  EDRCLMusicLight,
  EDRCLMusicStandard,
  EDRCLNone,
  EDRCLSpeech,
  Eac3DynamicRangeCompressionLine'
  #-}

instance FromText Eac3DynamicRangeCompressionLine where
  parser = (Eac3DynamicRangeCompressionLine' . mk) <$> takeText

instance ToText Eac3DynamicRangeCompressionLine where
  toText (Eac3DynamicRangeCompressionLine' ci) = original ci

instance Hashable Eac3DynamicRangeCompressionLine

instance NFData Eac3DynamicRangeCompressionLine

instance ToByteString Eac3DynamicRangeCompressionLine

instance ToQuery Eac3DynamicRangeCompressionLine

instance ToHeader Eac3DynamicRangeCompressionLine

instance ToJSON Eac3DynamicRangeCompressionLine where
  toJSON = toJSONText

instance FromJSON Eac3DynamicRangeCompressionLine where
  parseJSON = parseJSONText "Eac3DynamicRangeCompressionLine"
