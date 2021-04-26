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
-- Module      : Network.AWS.MediaConvert.Types.H264AdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264AdaptiveQuantization
  ( H264AdaptiveQuantization
      ( ..,
        H264AdaptiveQuantizationAUTO,
        H264AdaptiveQuantizationHIGH,
        H264AdaptiveQuantizationHIGHER,
        H264AdaptiveQuantizationLOW,
        H264AdaptiveQuantizationMAX,
        H264AdaptiveQuantizationMEDIUM,
        H264AdaptiveQuantizationOFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Keep the default value, Auto (AUTO), for this setting to have
-- MediaConvert automatically apply the best types of quantization for your
-- video content. When you want to apply your quantization settings
-- manually, you must set H264AdaptiveQuantization to a value other than
-- Auto (AUTO). Use this setting to specify the strength of any adaptive
-- quantization filters that you enable. If you don\'t want MediaConvert to
-- do any adaptive quantization in this transcode, set Adaptive
-- quantization (H264AdaptiveQuantization) to Off (OFF). Related settings:
-- The value that you choose here applies to the following settings:
-- H264FlickerAdaptiveQuantization, H264SpatialAdaptiveQuantization, and
-- H264TemporalAdaptiveQuantization.
newtype H264AdaptiveQuantization = H264AdaptiveQuantization'
  { fromH264AdaptiveQuantization ::
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

pattern H264AdaptiveQuantizationAUTO :: H264AdaptiveQuantization
pattern H264AdaptiveQuantizationAUTO = H264AdaptiveQuantization' "AUTO"

pattern H264AdaptiveQuantizationHIGH :: H264AdaptiveQuantization
pattern H264AdaptiveQuantizationHIGH = H264AdaptiveQuantization' "HIGH"

pattern H264AdaptiveQuantizationHIGHER :: H264AdaptiveQuantization
pattern H264AdaptiveQuantizationHIGHER = H264AdaptiveQuantization' "HIGHER"

pattern H264AdaptiveQuantizationLOW :: H264AdaptiveQuantization
pattern H264AdaptiveQuantizationLOW = H264AdaptiveQuantization' "LOW"

pattern H264AdaptiveQuantizationMAX :: H264AdaptiveQuantization
pattern H264AdaptiveQuantizationMAX = H264AdaptiveQuantization' "MAX"

pattern H264AdaptiveQuantizationMEDIUM :: H264AdaptiveQuantization
pattern H264AdaptiveQuantizationMEDIUM = H264AdaptiveQuantization' "MEDIUM"

pattern H264AdaptiveQuantizationOFF :: H264AdaptiveQuantization
pattern H264AdaptiveQuantizationOFF = H264AdaptiveQuantization' "OFF"

{-# COMPLETE
  H264AdaptiveQuantizationAUTO,
  H264AdaptiveQuantizationHIGH,
  H264AdaptiveQuantizationHIGHER,
  H264AdaptiveQuantizationLOW,
  H264AdaptiveQuantizationMAX,
  H264AdaptiveQuantizationMEDIUM,
  H264AdaptiveQuantizationOFF,
  H264AdaptiveQuantization'
  #-}

instance Prelude.FromText H264AdaptiveQuantization where
  parser = H264AdaptiveQuantization' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264AdaptiveQuantization where
  toText (H264AdaptiveQuantization' x) = x

instance Prelude.Hashable H264AdaptiveQuantization

instance Prelude.NFData H264AdaptiveQuantization

instance Prelude.ToByteString H264AdaptiveQuantization

instance Prelude.ToQuery H264AdaptiveQuantization

instance Prelude.ToHeader H264AdaptiveQuantization

instance Prelude.ToJSON H264AdaptiveQuantization where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264AdaptiveQuantization where
  parseJSON = Prelude.parseJSONText "H264AdaptiveQuantization"
