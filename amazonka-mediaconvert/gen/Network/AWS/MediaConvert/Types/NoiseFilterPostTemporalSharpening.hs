{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.NoiseFilterPostTemporalSharpening
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.NoiseFilterPostTemporalSharpening
  ( NoiseFilterPostTemporalSharpening
      ( ..,
        NFPTSAuto,
        NFPTSDisabled,
        NFPTSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. When you set Noise reducer (noiseReducer) to Temporal (TEMPORAL), you can use this setting to apply sharpening. The default behavior, Auto (AUTO), allows the transcoder to determine whether to apply filtering, depending on input type and quality. When you set Noise reducer to Temporal, your output bandwidth is reduced. When Post temporal sharpening is also enabled, that bandwidth reduction is smaller.
data NoiseFilterPostTemporalSharpening
  = NoiseFilterPostTemporalSharpening'
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

pattern NFPTSAuto :: NoiseFilterPostTemporalSharpening
pattern NFPTSAuto = NoiseFilterPostTemporalSharpening' "AUTO"

pattern NFPTSDisabled :: NoiseFilterPostTemporalSharpening
pattern NFPTSDisabled = NoiseFilterPostTemporalSharpening' "DISABLED"

pattern NFPTSEnabled :: NoiseFilterPostTemporalSharpening
pattern NFPTSEnabled = NoiseFilterPostTemporalSharpening' "ENABLED"

{-# COMPLETE
  NFPTSAuto,
  NFPTSDisabled,
  NFPTSEnabled,
  NoiseFilterPostTemporalSharpening'
  #-}

instance FromText NoiseFilterPostTemporalSharpening where
  parser = (NoiseFilterPostTemporalSharpening' . mk) <$> takeText

instance ToText NoiseFilterPostTemporalSharpening where
  toText (NoiseFilterPostTemporalSharpening' ci) = original ci

instance Hashable NoiseFilterPostTemporalSharpening

instance NFData NoiseFilterPostTemporalSharpening

instance ToByteString NoiseFilterPostTemporalSharpening

instance ToQuery NoiseFilterPostTemporalSharpening

instance ToHeader NoiseFilterPostTemporalSharpening

instance ToJSON NoiseFilterPostTemporalSharpening where
  toJSON = toJSONText

instance FromJSON NoiseFilterPostTemporalSharpening where
  parseJSON = parseJSONText "NoiseFilterPostTemporalSharpening"
