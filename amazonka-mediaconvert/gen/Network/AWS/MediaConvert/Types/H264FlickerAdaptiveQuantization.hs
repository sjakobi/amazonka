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
-- Module      : Network.AWS.MediaConvert.Types.H264FlickerAdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264FlickerAdaptiveQuantization
  ( H264FlickerAdaptiveQuantization
      ( ..,
        H264FlickerAdaptiveQuantizationDISABLED,
        H264FlickerAdaptiveQuantizationENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Only use this setting when you change the default value, AUTO, for the
-- setting H264AdaptiveQuantization. When you keep all defaults, excluding
-- H264AdaptiveQuantization and all other adaptive quantization from your
-- JSON job specification, MediaConvert automatically applies the best
-- types of quantization for your video content. When you set
-- H264AdaptiveQuantization to a value other than AUTO, the default value
-- for H264FlickerAdaptiveQuantization is Disabled (DISABLED). Change this
-- value to Enabled (ENABLED) to reduce I-frame pop. I-frame pop appears as
-- a visual flicker that can arise when the encoder saves bits by copying
-- some macroblocks many times from frame to frame, and then refreshes them
-- at the I-frame. When you enable this setting, the encoder updates these
-- macroblocks slightly more often to smooth out the flicker. To manually
-- enable or disable H264FlickerAdaptiveQuantization, you must set Adaptive
-- quantization (H264AdaptiveQuantization) to a value other than AUTO.
newtype H264FlickerAdaptiveQuantization = H264FlickerAdaptiveQuantization'
  { fromH264FlickerAdaptiveQuantization ::
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

pattern H264FlickerAdaptiveQuantizationDISABLED :: H264FlickerAdaptiveQuantization
pattern H264FlickerAdaptiveQuantizationDISABLED = H264FlickerAdaptiveQuantization' "DISABLED"

pattern H264FlickerAdaptiveQuantizationENABLED :: H264FlickerAdaptiveQuantization
pattern H264FlickerAdaptiveQuantizationENABLED = H264FlickerAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  H264FlickerAdaptiveQuantizationDISABLED,
  H264FlickerAdaptiveQuantizationENABLED,
  H264FlickerAdaptiveQuantization'
  #-}

instance Prelude.FromText H264FlickerAdaptiveQuantization where
  parser = H264FlickerAdaptiveQuantization' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264FlickerAdaptiveQuantization where
  toText (H264FlickerAdaptiveQuantization' x) = x

instance Prelude.Hashable H264FlickerAdaptiveQuantization

instance Prelude.NFData H264FlickerAdaptiveQuantization

instance Prelude.ToByteString H264FlickerAdaptiveQuantization

instance Prelude.ToQuery H264FlickerAdaptiveQuantization

instance Prelude.ToHeader H264FlickerAdaptiveQuantization

instance Prelude.ToJSON H264FlickerAdaptiveQuantization where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264FlickerAdaptiveQuantization where
  parseJSON = Prelude.parseJSONText "H264FlickerAdaptiveQuantization"
