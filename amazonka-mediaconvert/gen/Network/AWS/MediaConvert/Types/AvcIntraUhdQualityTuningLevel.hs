{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AvcIntraUhdQualityTuningLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AvcIntraUhdQualityTuningLevel
  ( AvcIntraUhdQualityTuningLevel
      ( ..,
        AIUQTLMultiPass,
        AIUQTLSinglePass
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how many transcoding passes MediaConvert does with your video. When you choose Multi-pass (MULTI_PASS), your video quality is better and your output bitrate is more accurate. That is, the actual bitrate of your output is closer to the target bitrate defined in the specification. When you choose Single-pass (SINGLE_PASS), your encoding time is faster. The default behavior is Single-pass (SINGLE_PASS).
data AvcIntraUhdQualityTuningLevel
  = AvcIntraUhdQualityTuningLevel'
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

pattern AIUQTLMultiPass :: AvcIntraUhdQualityTuningLevel
pattern AIUQTLMultiPass = AvcIntraUhdQualityTuningLevel' "MULTI_PASS"

pattern AIUQTLSinglePass :: AvcIntraUhdQualityTuningLevel
pattern AIUQTLSinglePass = AvcIntraUhdQualityTuningLevel' "SINGLE_PASS"

{-# COMPLETE
  AIUQTLMultiPass,
  AIUQTLSinglePass,
  AvcIntraUhdQualityTuningLevel'
  #-}

instance FromText AvcIntraUhdQualityTuningLevel where
  parser = (AvcIntraUhdQualityTuningLevel' . mk) <$> takeText

instance ToText AvcIntraUhdQualityTuningLevel where
  toText (AvcIntraUhdQualityTuningLevel' ci) = original ci

instance Hashable AvcIntraUhdQualityTuningLevel

instance NFData AvcIntraUhdQualityTuningLevel

instance ToByteString AvcIntraUhdQualityTuningLevel

instance ToQuery AvcIntraUhdQualityTuningLevel

instance ToHeader AvcIntraUhdQualityTuningLevel

instance ToJSON AvcIntraUhdQualityTuningLevel where
  toJSON = toJSONText

instance FromJSON AvcIntraUhdQualityTuningLevel where
  parseJSON = parseJSONText "AvcIntraUhdQualityTuningLevel"
