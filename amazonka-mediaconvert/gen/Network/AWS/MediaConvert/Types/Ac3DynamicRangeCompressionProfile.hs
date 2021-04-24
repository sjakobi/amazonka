{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Ac3DynamicRangeCompressionProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Ac3DynamicRangeCompressionProfile
  ( Ac3DynamicRangeCompressionProfile
      ( ..,
        ADRCPFilmStandard,
        ADRCPNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | If set to FILM_STANDARD, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
data Ac3DynamicRangeCompressionProfile
  = Ac3DynamicRangeCompressionProfile'
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

pattern ADRCPFilmStandard :: Ac3DynamicRangeCompressionProfile
pattern ADRCPFilmStandard = Ac3DynamicRangeCompressionProfile' "FILM_STANDARD"

pattern ADRCPNone :: Ac3DynamicRangeCompressionProfile
pattern ADRCPNone = Ac3DynamicRangeCompressionProfile' "NONE"

{-# COMPLETE
  ADRCPFilmStandard,
  ADRCPNone,
  Ac3DynamicRangeCompressionProfile'
  #-}

instance FromText Ac3DynamicRangeCompressionProfile where
  parser = (Ac3DynamicRangeCompressionProfile' . mk) <$> takeText

instance ToText Ac3DynamicRangeCompressionProfile where
  toText (Ac3DynamicRangeCompressionProfile' ci) = original ci

instance Hashable Ac3DynamicRangeCompressionProfile

instance NFData Ac3DynamicRangeCompressionProfile

instance ToByteString Ac3DynamicRangeCompressionProfile

instance ToQuery Ac3DynamicRangeCompressionProfile

instance ToHeader Ac3DynamicRangeCompressionProfile

instance ToJSON Ac3DynamicRangeCompressionProfile where
  toJSON = toJSONText

instance FromJSON Ac3DynamicRangeCompressionProfile where
  parseJSON = parseJSONText "Ac3DynamicRangeCompressionProfile"
