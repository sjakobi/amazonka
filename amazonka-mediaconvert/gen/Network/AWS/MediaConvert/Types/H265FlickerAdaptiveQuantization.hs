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
-- Module      : Network.AWS.MediaConvert.Types.H265FlickerAdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265FlickerAdaptiveQuantization
  ( H265FlickerAdaptiveQuantization
      ( ..,
        H265FlickerAdaptiveQuantizationDISABLED,
        H265FlickerAdaptiveQuantizationENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enable this setting to have the encoder reduce I-frame pop. I-frame pop
-- appears as a visual flicker that can arise when the encoder saves bits
-- by copying some macroblocks many times from frame to frame, and then
-- refreshes them at the I-frame. When you enable this setting, the encoder
-- updates these macroblocks slightly more often to smooth out the flicker.
-- This setting is disabled by default. Related setting: In addition to
-- enabling this setting, you must also set adaptiveQuantization to a value
-- other than Off (OFF).
newtype H265FlickerAdaptiveQuantization = H265FlickerAdaptiveQuantization'
  { fromH265FlickerAdaptiveQuantization ::
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

pattern H265FlickerAdaptiveQuantizationDISABLED :: H265FlickerAdaptiveQuantization
pattern H265FlickerAdaptiveQuantizationDISABLED = H265FlickerAdaptiveQuantization' "DISABLED"

pattern H265FlickerAdaptiveQuantizationENABLED :: H265FlickerAdaptiveQuantization
pattern H265FlickerAdaptiveQuantizationENABLED = H265FlickerAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  H265FlickerAdaptiveQuantizationDISABLED,
  H265FlickerAdaptiveQuantizationENABLED,
  H265FlickerAdaptiveQuantization'
  #-}

instance Prelude.FromText H265FlickerAdaptiveQuantization where
  parser = H265FlickerAdaptiveQuantization' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265FlickerAdaptiveQuantization where
  toText (H265FlickerAdaptiveQuantization' x) = x

instance Prelude.Hashable H265FlickerAdaptiveQuantization

instance Prelude.NFData H265FlickerAdaptiveQuantization

instance Prelude.ToByteString H265FlickerAdaptiveQuantization

instance Prelude.ToQuery H265FlickerAdaptiveQuantization

instance Prelude.ToHeader H265FlickerAdaptiveQuantization

instance Prelude.ToJSON H265FlickerAdaptiveQuantization where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265FlickerAdaptiveQuantization where
  parseJSON = Prelude.parseJSONText "H265FlickerAdaptiveQuantization"
