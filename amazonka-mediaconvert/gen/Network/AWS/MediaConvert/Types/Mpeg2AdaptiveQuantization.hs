{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2AdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2AdaptiveQuantization
  ( Mpeg2AdaptiveQuantization
      ( ..,
        MAQHigh,
        MAQLow,
        MAQMedium,
        MAQOff
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to the following settings: Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization).
data Mpeg2AdaptiveQuantization
  = Mpeg2AdaptiveQuantization'
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

pattern MAQHigh :: Mpeg2AdaptiveQuantization
pattern MAQHigh = Mpeg2AdaptiveQuantization' "HIGH"

pattern MAQLow :: Mpeg2AdaptiveQuantization
pattern MAQLow = Mpeg2AdaptiveQuantization' "LOW"

pattern MAQMedium :: Mpeg2AdaptiveQuantization
pattern MAQMedium = Mpeg2AdaptiveQuantization' "MEDIUM"

pattern MAQOff :: Mpeg2AdaptiveQuantization
pattern MAQOff = Mpeg2AdaptiveQuantization' "OFF"

{-# COMPLETE
  MAQHigh,
  MAQLow,
  MAQMedium,
  MAQOff,
  Mpeg2AdaptiveQuantization'
  #-}

instance FromText Mpeg2AdaptiveQuantization where
  parser = (Mpeg2AdaptiveQuantization' . mk) <$> takeText

instance ToText Mpeg2AdaptiveQuantization where
  toText (Mpeg2AdaptiveQuantization' ci) = original ci

instance Hashable Mpeg2AdaptiveQuantization

instance NFData Mpeg2AdaptiveQuantization

instance ToByteString Mpeg2AdaptiveQuantization

instance ToQuery Mpeg2AdaptiveQuantization

instance ToHeader Mpeg2AdaptiveQuantization

instance ToJSON Mpeg2AdaptiveQuantization where
  toJSON = toJSONText

instance FromJSON Mpeg2AdaptiveQuantization where
  parseJSON = parseJSONText "Mpeg2AdaptiveQuantization"
