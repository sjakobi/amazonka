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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2SpatialAdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2SpatialAdaptiveQuantization
  ( Mpeg2SpatialAdaptiveQuantization
      ( ..,
        Mpeg2SpatialAdaptiveQuantizationDISABLED,
        Mpeg2SpatialAdaptiveQuantizationENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Keep the default value, Enabled (ENABLED), to adjust quantization within
-- each frame based on spatial variation of content complexity. When you
-- enable this feature, the encoder uses fewer bits on areas that can
-- sustain more distortion with no noticeable visual degradation and uses
-- more bits on areas where any small distortion will be noticeable. For
-- example, complex textured blocks are encoded with fewer bits and smooth
-- textured blocks are encoded with more bits. Enabling this feature will
-- almost always improve your video quality. Note, though, that this
-- feature doesn\'t take into account where the viewer\'s attention is
-- likely to be. If viewers are likely to be focusing their attention on a
-- part of the screen with a lot of complex texture, you might choose to
-- disable this feature. Related setting: When you enable spatial adaptive
-- quantization, set the value for Adaptive quantization
-- (adaptiveQuantization) depending on your content. For homogeneous
-- content, such as cartoons and video games, set it to Low. For content
-- with a wider variety of textures, set it to High or Higher.
newtype Mpeg2SpatialAdaptiveQuantization = Mpeg2SpatialAdaptiveQuantization'
  { fromMpeg2SpatialAdaptiveQuantization ::
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

pattern Mpeg2SpatialAdaptiveQuantizationDISABLED :: Mpeg2SpatialAdaptiveQuantization
pattern Mpeg2SpatialAdaptiveQuantizationDISABLED = Mpeg2SpatialAdaptiveQuantization' "DISABLED"

pattern Mpeg2SpatialAdaptiveQuantizationENABLED :: Mpeg2SpatialAdaptiveQuantization
pattern Mpeg2SpatialAdaptiveQuantizationENABLED = Mpeg2SpatialAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  Mpeg2SpatialAdaptiveQuantizationDISABLED,
  Mpeg2SpatialAdaptiveQuantizationENABLED,
  Mpeg2SpatialAdaptiveQuantization'
  #-}

instance Prelude.FromText Mpeg2SpatialAdaptiveQuantization where
  parser = Mpeg2SpatialAdaptiveQuantization' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2SpatialAdaptiveQuantization where
  toText (Mpeg2SpatialAdaptiveQuantization' x) = x

instance Prelude.Hashable Mpeg2SpatialAdaptiveQuantization

instance Prelude.NFData Mpeg2SpatialAdaptiveQuantization

instance Prelude.ToByteString Mpeg2SpatialAdaptiveQuantization

instance Prelude.ToQuery Mpeg2SpatialAdaptiveQuantization

instance Prelude.ToHeader Mpeg2SpatialAdaptiveQuantization

instance Prelude.ToJSON Mpeg2SpatialAdaptiveQuantization where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2SpatialAdaptiveQuantization where
  parseJSON = Prelude.parseJSONText "Mpeg2SpatialAdaptiveQuantization"
