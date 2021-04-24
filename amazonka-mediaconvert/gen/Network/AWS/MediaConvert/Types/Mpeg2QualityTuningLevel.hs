{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2QualityTuningLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2QualityTuningLevel
  ( Mpeg2QualityTuningLevel
      ( ..,
        MQTLMultiPass,
        MQTLSinglePass
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
data Mpeg2QualityTuningLevel
  = Mpeg2QualityTuningLevel'
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

pattern MQTLMultiPass :: Mpeg2QualityTuningLevel
pattern MQTLMultiPass = Mpeg2QualityTuningLevel' "MULTI_PASS"

pattern MQTLSinglePass :: Mpeg2QualityTuningLevel
pattern MQTLSinglePass = Mpeg2QualityTuningLevel' "SINGLE_PASS"

{-# COMPLETE
  MQTLMultiPass,
  MQTLSinglePass,
  Mpeg2QualityTuningLevel'
  #-}

instance FromText Mpeg2QualityTuningLevel where
  parser = (Mpeg2QualityTuningLevel' . mk) <$> takeText

instance ToText Mpeg2QualityTuningLevel where
  toText (Mpeg2QualityTuningLevel' ci) = original ci

instance Hashable Mpeg2QualityTuningLevel

instance NFData Mpeg2QualityTuningLevel

instance ToByteString Mpeg2QualityTuningLevel

instance ToQuery Mpeg2QualityTuningLevel

instance ToHeader Mpeg2QualityTuningLevel

instance ToJSON Mpeg2QualityTuningLevel where
  toJSON = toJSONText

instance FromJSON Mpeg2QualityTuningLevel where
  parseJSON = parseJSONText "Mpeg2QualityTuningLevel"
