{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Av1SpatialAdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Av1SpatialAdaptiveQuantization
  ( Av1SpatialAdaptiveQuantization
      ( ..,
        ASAQDisabled,
        ASAQEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
data Av1SpatialAdaptiveQuantization
  = Av1SpatialAdaptiveQuantization'
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

pattern ASAQDisabled :: Av1SpatialAdaptiveQuantization
pattern ASAQDisabled = Av1SpatialAdaptiveQuantization' "DISABLED"

pattern ASAQEnabled :: Av1SpatialAdaptiveQuantization
pattern ASAQEnabled = Av1SpatialAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  ASAQDisabled,
  ASAQEnabled,
  Av1SpatialAdaptiveQuantization'
  #-}

instance FromText Av1SpatialAdaptiveQuantization where
  parser = (Av1SpatialAdaptiveQuantization' . mk) <$> takeText

instance ToText Av1SpatialAdaptiveQuantization where
  toText (Av1SpatialAdaptiveQuantization' ci) = original ci

instance Hashable Av1SpatialAdaptiveQuantization

instance NFData Av1SpatialAdaptiveQuantization

instance ToByteString Av1SpatialAdaptiveQuantization

instance ToQuery Av1SpatialAdaptiveQuantization

instance ToHeader Av1SpatialAdaptiveQuantization

instance ToJSON Av1SpatialAdaptiveQuantization where
  toJSON = toJSONText

instance FromJSON Av1SpatialAdaptiveQuantization where
  parseJSON = parseJSONText "Av1SpatialAdaptiveQuantization"
