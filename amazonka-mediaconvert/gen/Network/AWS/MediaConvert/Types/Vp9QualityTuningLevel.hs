{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vp9QualityTuningLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp9QualityTuningLevel
  ( Vp9QualityTuningLevel
      ( ..,
        VQTLMultiPass,
        VQTLMultiPassHq
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.
data Vp9QualityTuningLevel
  = Vp9QualityTuningLevel'
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

pattern VQTLMultiPass :: Vp9QualityTuningLevel
pattern VQTLMultiPass = Vp9QualityTuningLevel' "MULTI_PASS"

pattern VQTLMultiPassHq :: Vp9QualityTuningLevel
pattern VQTLMultiPassHq = Vp9QualityTuningLevel' "MULTI_PASS_HQ"

{-# COMPLETE
  VQTLMultiPass,
  VQTLMultiPassHq,
  Vp9QualityTuningLevel'
  #-}

instance FromText Vp9QualityTuningLevel where
  parser = (Vp9QualityTuningLevel' . mk) <$> takeText

instance ToText Vp9QualityTuningLevel where
  toText (Vp9QualityTuningLevel' ci) = original ci

instance Hashable Vp9QualityTuningLevel

instance NFData Vp9QualityTuningLevel

instance ToByteString Vp9QualityTuningLevel

instance ToQuery Vp9QualityTuningLevel

instance ToHeader Vp9QualityTuningLevel

instance ToJSON Vp9QualityTuningLevel where
  toJSON = toJSONText

instance FromJSON Vp9QualityTuningLevel where
  parseJSON = parseJSONText "Vp9QualityTuningLevel"
