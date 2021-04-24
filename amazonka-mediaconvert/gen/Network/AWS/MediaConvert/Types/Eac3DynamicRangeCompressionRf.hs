{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionRf
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionRf
  ( Eac3DynamicRangeCompressionRf
      ( ..,
        EDRCRFilmLight,
        EDRCRFilmStandard,
        EDRCRMusicLight,
        EDRCRMusicStandard,
        EDRCRNone,
        EDRCRSpeech
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify how the service limits the audio dynamic range when compressing the audio.
data Eac3DynamicRangeCompressionRf
  = Eac3DynamicRangeCompressionRf'
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

pattern EDRCRFilmLight :: Eac3DynamicRangeCompressionRf
pattern EDRCRFilmLight = Eac3DynamicRangeCompressionRf' "FILM_LIGHT"

pattern EDRCRFilmStandard :: Eac3DynamicRangeCompressionRf
pattern EDRCRFilmStandard = Eac3DynamicRangeCompressionRf' "FILM_STANDARD"

pattern EDRCRMusicLight :: Eac3DynamicRangeCompressionRf
pattern EDRCRMusicLight = Eac3DynamicRangeCompressionRf' "MUSIC_LIGHT"

pattern EDRCRMusicStandard :: Eac3DynamicRangeCompressionRf
pattern EDRCRMusicStandard = Eac3DynamicRangeCompressionRf' "MUSIC_STANDARD"

pattern EDRCRNone :: Eac3DynamicRangeCompressionRf
pattern EDRCRNone = Eac3DynamicRangeCompressionRf' "NONE"

pattern EDRCRSpeech :: Eac3DynamicRangeCompressionRf
pattern EDRCRSpeech = Eac3DynamicRangeCompressionRf' "SPEECH"

{-# COMPLETE
  EDRCRFilmLight,
  EDRCRFilmStandard,
  EDRCRMusicLight,
  EDRCRMusicStandard,
  EDRCRNone,
  EDRCRSpeech,
  Eac3DynamicRangeCompressionRf'
  #-}

instance FromText Eac3DynamicRangeCompressionRf where
  parser = (Eac3DynamicRangeCompressionRf' . mk) <$> takeText

instance ToText Eac3DynamicRangeCompressionRf where
  toText (Eac3DynamicRangeCompressionRf' ci) = original ci

instance Hashable Eac3DynamicRangeCompressionRf

instance NFData Eac3DynamicRangeCompressionRf

instance ToByteString Eac3DynamicRangeCompressionRf

instance ToQuery Eac3DynamicRangeCompressionRf

instance ToHeader Eac3DynamicRangeCompressionRf

instance ToJSON Eac3DynamicRangeCompressionRf where
  toJSON = toJSONText

instance FromJSON Eac3DynamicRangeCompressionRf where
  parseJSON = parseJSONText "Eac3DynamicRangeCompressionRf"
