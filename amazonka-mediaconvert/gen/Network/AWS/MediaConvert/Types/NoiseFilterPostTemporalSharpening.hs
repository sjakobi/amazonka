{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        NoiseFilterPostTemporalSharpeningAUTO,
        NoiseFilterPostTemporalSharpeningDISABLED,
        NoiseFilterPostTemporalSharpeningENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. When you set Noise reducer (noiseReducer) to Temporal
-- (TEMPORAL), you can use this setting to apply sharpening. The default
-- behavior, Auto (AUTO), allows the transcoder to determine whether to
-- apply filtering, depending on input type and quality. When you set Noise
-- reducer to Temporal, your output bandwidth is reduced. When Post
-- temporal sharpening is also enabled, that bandwidth reduction is
-- smaller.
newtype NoiseFilterPostTemporalSharpening = NoiseFilterPostTemporalSharpening'
  { fromNoiseFilterPostTemporalSharpening ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern NoiseFilterPostTemporalSharpeningAUTO :: NoiseFilterPostTemporalSharpening
pattern NoiseFilterPostTemporalSharpeningAUTO = NoiseFilterPostTemporalSharpening' "AUTO"

pattern NoiseFilterPostTemporalSharpeningDISABLED :: NoiseFilterPostTemporalSharpening
pattern NoiseFilterPostTemporalSharpeningDISABLED = NoiseFilterPostTemporalSharpening' "DISABLED"

pattern NoiseFilterPostTemporalSharpeningENABLED :: NoiseFilterPostTemporalSharpening
pattern NoiseFilterPostTemporalSharpeningENABLED = NoiseFilterPostTemporalSharpening' "ENABLED"

{-# COMPLETE
  NoiseFilterPostTemporalSharpeningAUTO,
  NoiseFilterPostTemporalSharpeningDISABLED,
  NoiseFilterPostTemporalSharpeningENABLED,
  NoiseFilterPostTemporalSharpening'
  #-}

instance Prelude.FromText NoiseFilterPostTemporalSharpening where
  parser = NoiseFilterPostTemporalSharpening' Prelude.<$> Prelude.takeText

instance Prelude.ToText NoiseFilterPostTemporalSharpening where
  toText (NoiseFilterPostTemporalSharpening' x) = x

instance Prelude.Hashable NoiseFilterPostTemporalSharpening

instance Prelude.NFData NoiseFilterPostTemporalSharpening

instance Prelude.ToByteString NoiseFilterPostTemporalSharpening

instance Prelude.ToQuery NoiseFilterPostTemporalSharpening

instance Prelude.ToHeader NoiseFilterPostTemporalSharpening

instance Prelude.ToJSON NoiseFilterPostTemporalSharpening where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NoiseFilterPostTemporalSharpening where
  parseJSON = Prelude.parseJSONText "NoiseFilterPostTemporalSharpening"
