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
-- Module      : Network.AWS.MediaConvert.Types.H265AdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265AdaptiveQuantization
  ( H265AdaptiveQuantization
      ( ..,
        H265AdaptiveQuantizationHIGH,
        H265AdaptiveQuantizationHIGHER,
        H265AdaptiveQuantizationLOW,
        H265AdaptiveQuantizationMAX,
        H265AdaptiveQuantizationMEDIUM,
        H265AdaptiveQuantizationOFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the strength of any adaptive quantization filters that you
-- enable. The value that you choose here applies to the following
-- settings: Flicker adaptive quantization (flickerAdaptiveQuantization),
-- Spatial adaptive quantization (spatialAdaptiveQuantization), and
-- Temporal adaptive quantization (temporalAdaptiveQuantization).
newtype H265AdaptiveQuantization = H265AdaptiveQuantization'
  { fromH265AdaptiveQuantization ::
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

pattern H265AdaptiveQuantizationHIGH :: H265AdaptiveQuantization
pattern H265AdaptiveQuantizationHIGH = H265AdaptiveQuantization' "HIGH"

pattern H265AdaptiveQuantizationHIGHER :: H265AdaptiveQuantization
pattern H265AdaptiveQuantizationHIGHER = H265AdaptiveQuantization' "HIGHER"

pattern H265AdaptiveQuantizationLOW :: H265AdaptiveQuantization
pattern H265AdaptiveQuantizationLOW = H265AdaptiveQuantization' "LOW"

pattern H265AdaptiveQuantizationMAX :: H265AdaptiveQuantization
pattern H265AdaptiveQuantizationMAX = H265AdaptiveQuantization' "MAX"

pattern H265AdaptiveQuantizationMEDIUM :: H265AdaptiveQuantization
pattern H265AdaptiveQuantizationMEDIUM = H265AdaptiveQuantization' "MEDIUM"

pattern H265AdaptiveQuantizationOFF :: H265AdaptiveQuantization
pattern H265AdaptiveQuantizationOFF = H265AdaptiveQuantization' "OFF"

{-# COMPLETE
  H265AdaptiveQuantizationHIGH,
  H265AdaptiveQuantizationHIGHER,
  H265AdaptiveQuantizationLOW,
  H265AdaptiveQuantizationMAX,
  H265AdaptiveQuantizationMEDIUM,
  H265AdaptiveQuantizationOFF,
  H265AdaptiveQuantization'
  #-}

instance Prelude.FromText H265AdaptiveQuantization where
  parser = H265AdaptiveQuantization' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265AdaptiveQuantization where
  toText (H265AdaptiveQuantization' x) = x

instance Prelude.Hashable H265AdaptiveQuantization

instance Prelude.NFData H265AdaptiveQuantization

instance Prelude.ToByteString H265AdaptiveQuantization

instance Prelude.ToQuery H265AdaptiveQuantization

instance Prelude.ToHeader H265AdaptiveQuantization

instance Prelude.ToJSON H265AdaptiveQuantization where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265AdaptiveQuantization where
  parseJSON = Prelude.parseJSONText "H265AdaptiveQuantization"
