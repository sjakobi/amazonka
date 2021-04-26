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
-- Module      : Network.AWS.MediaConvert.Types.H265TemporalAdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265TemporalAdaptiveQuantization
  ( H265TemporalAdaptiveQuantization
      ( ..,
        H265TemporalAdaptiveQuantizationDISABLED,
        H265TemporalAdaptiveQuantizationENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Keep the default value, Enabled (ENABLED), to adjust quantization within
-- each frame based on temporal variation of content complexity. When you
-- enable this feature, the encoder uses fewer bits on areas of the frame
-- that aren\'t moving and uses more bits on complex objects with sharp
-- edges that move a lot. For example, this feature improves the
-- readability of text tickers on newscasts and scoreboards on sports
-- matches. Enabling this feature will almost always improve your video
-- quality. Note, though, that this feature doesn\'t take into account
-- where the viewer\'s attention is likely to be. If viewers are likely to
-- be focusing their attention on a part of the screen that doesn\'t have
-- moving objects with sharp edges, such as sports athletes\' faces, you
-- might choose to disable this feature. Related setting: When you enable
-- temporal quantization, adjust the strength of the filter with the
-- setting Adaptive quantization (adaptiveQuantization).
newtype H265TemporalAdaptiveQuantization = H265TemporalAdaptiveQuantization'
  { fromH265TemporalAdaptiveQuantization ::
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

pattern H265TemporalAdaptiveQuantizationDISABLED :: H265TemporalAdaptiveQuantization
pattern H265TemporalAdaptiveQuantizationDISABLED = H265TemporalAdaptiveQuantization' "DISABLED"

pattern H265TemporalAdaptiveQuantizationENABLED :: H265TemporalAdaptiveQuantization
pattern H265TemporalAdaptiveQuantizationENABLED = H265TemporalAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  H265TemporalAdaptiveQuantizationDISABLED,
  H265TemporalAdaptiveQuantizationENABLED,
  H265TemporalAdaptiveQuantization'
  #-}

instance Prelude.FromText H265TemporalAdaptiveQuantization where
  parser = H265TemporalAdaptiveQuantization' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265TemporalAdaptiveQuantization where
  toText (H265TemporalAdaptiveQuantization' x) = x

instance Prelude.Hashable H265TemporalAdaptiveQuantization

instance Prelude.NFData H265TemporalAdaptiveQuantization

instance Prelude.ToByteString H265TemporalAdaptiveQuantization

instance Prelude.ToQuery H265TemporalAdaptiveQuantization

instance Prelude.ToHeader H265TemporalAdaptiveQuantization

instance Prelude.ToJSON H265TemporalAdaptiveQuantization where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265TemporalAdaptiveQuantization where
  parseJSON = Prelude.parseJSONText "H265TemporalAdaptiveQuantization"
