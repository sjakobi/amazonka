{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265AdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265AdaptiveQuantization
  ( H265AdaptiveQuantization
      ( ..,
        HHigh,
        HHigher,
        HLow,
        HMax,
        HMedium,
        HOff
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to the following settings: Flicker adaptive quantization (flickerAdaptiveQuantization), Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization).
data H265AdaptiveQuantization
  = H265AdaptiveQuantization'
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

pattern HHigh :: H265AdaptiveQuantization
pattern HHigh = H265AdaptiveQuantization' "HIGH"

pattern HHigher :: H265AdaptiveQuantization
pattern HHigher = H265AdaptiveQuantization' "HIGHER"

pattern HLow :: H265AdaptiveQuantization
pattern HLow = H265AdaptiveQuantization' "LOW"

pattern HMax :: H265AdaptiveQuantization
pattern HMax = H265AdaptiveQuantization' "MAX"

pattern HMedium :: H265AdaptiveQuantization
pattern HMedium = H265AdaptiveQuantization' "MEDIUM"

pattern HOff :: H265AdaptiveQuantization
pattern HOff = H265AdaptiveQuantization' "OFF"

{-# COMPLETE
  HHigh,
  HHigher,
  HLow,
  HMax,
  HMedium,
  HOff,
  H265AdaptiveQuantization'
  #-}

instance FromText H265AdaptiveQuantization where
  parser = (H265AdaptiveQuantization' . mk) <$> takeText

instance ToText H265AdaptiveQuantization where
  toText (H265AdaptiveQuantization' ci) = original ci

instance Hashable H265AdaptiveQuantization

instance NFData H265AdaptiveQuantization

instance ToByteString H265AdaptiveQuantization

instance ToQuery H265AdaptiveQuantization

instance ToHeader H265AdaptiveQuantization

instance ToJSON H265AdaptiveQuantization where
  toJSON = toJSONText

instance FromJSON H265AdaptiveQuantization where
  parseJSON = parseJSONText "H265AdaptiveQuantization"
