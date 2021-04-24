{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vp8QualityTuningLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp8QualityTuningLevel
  ( Vp8QualityTuningLevel
      ( ..,
        MultiPass,
        MultiPassHq
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.
data Vp8QualityTuningLevel
  = Vp8QualityTuningLevel'
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

pattern MultiPass :: Vp8QualityTuningLevel
pattern MultiPass = Vp8QualityTuningLevel' "MULTI_PASS"

pattern MultiPassHq :: Vp8QualityTuningLevel
pattern MultiPassHq = Vp8QualityTuningLevel' "MULTI_PASS_HQ"

{-# COMPLETE
  MultiPass,
  MultiPassHq,
  Vp8QualityTuningLevel'
  #-}

instance FromText Vp8QualityTuningLevel where
  parser = (Vp8QualityTuningLevel' . mk) <$> takeText

instance ToText Vp8QualityTuningLevel where
  toText (Vp8QualityTuningLevel' ci) = original ci

instance Hashable Vp8QualityTuningLevel

instance NFData Vp8QualityTuningLevel

instance ToByteString Vp8QualityTuningLevel

instance ToQuery Vp8QualityTuningLevel

instance ToHeader Vp8QualityTuningLevel

instance ToJSON Vp8QualityTuningLevel where
  toJSON = toJSONText

instance FromJSON Vp8QualityTuningLevel where
  parseJSON = parseJSONText "Vp8QualityTuningLevel"
