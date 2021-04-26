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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2TemporalAdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2TemporalAdaptiveQuantization
  ( Mpeg2TemporalAdaptiveQuantization
      ( ..,
        Mpeg2TemporalAdaptiveQuantizationDISABLED,
        Mpeg2TemporalAdaptiveQuantizationENABLED
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
newtype Mpeg2TemporalAdaptiveQuantization = Mpeg2TemporalAdaptiveQuantization'
  { fromMpeg2TemporalAdaptiveQuantization ::
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

pattern Mpeg2TemporalAdaptiveQuantizationDISABLED :: Mpeg2TemporalAdaptiveQuantization
pattern Mpeg2TemporalAdaptiveQuantizationDISABLED = Mpeg2TemporalAdaptiveQuantization' "DISABLED"

pattern Mpeg2TemporalAdaptiveQuantizationENABLED :: Mpeg2TemporalAdaptiveQuantization
pattern Mpeg2TemporalAdaptiveQuantizationENABLED = Mpeg2TemporalAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  Mpeg2TemporalAdaptiveQuantizationDISABLED,
  Mpeg2TemporalAdaptiveQuantizationENABLED,
  Mpeg2TemporalAdaptiveQuantization'
  #-}

instance Prelude.FromText Mpeg2TemporalAdaptiveQuantization where
  parser = Mpeg2TemporalAdaptiveQuantization' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2TemporalAdaptiveQuantization where
  toText (Mpeg2TemporalAdaptiveQuantization' x) = x

instance Prelude.Hashable Mpeg2TemporalAdaptiveQuantization

instance Prelude.NFData Mpeg2TemporalAdaptiveQuantization

instance Prelude.ToByteString Mpeg2TemporalAdaptiveQuantization

instance Prelude.ToQuery Mpeg2TemporalAdaptiveQuantization

instance Prelude.ToHeader Mpeg2TemporalAdaptiveQuantization

instance Prelude.ToJSON Mpeg2TemporalAdaptiveQuantization where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2TemporalAdaptiveQuantization where
  parseJSON = Prelude.parseJSONText "Mpeg2TemporalAdaptiveQuantization"
