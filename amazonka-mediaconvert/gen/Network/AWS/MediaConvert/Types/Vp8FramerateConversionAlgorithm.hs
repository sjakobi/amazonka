{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vp8FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp8FramerateConversionAlgorithm
  ( Vp8FramerateConversionAlgorithm
      ( ..,
        VFCADuplicateDrop,
        VFCAFrameformer,
        VFCAInterpolate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
data Vp8FramerateConversionAlgorithm
  = Vp8FramerateConversionAlgorithm'
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

pattern VFCADuplicateDrop :: Vp8FramerateConversionAlgorithm
pattern VFCADuplicateDrop = Vp8FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern VFCAFrameformer :: Vp8FramerateConversionAlgorithm
pattern VFCAFrameformer = Vp8FramerateConversionAlgorithm' "FRAMEFORMER"

pattern VFCAInterpolate :: Vp8FramerateConversionAlgorithm
pattern VFCAInterpolate = Vp8FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  VFCADuplicateDrop,
  VFCAFrameformer,
  VFCAInterpolate,
  Vp8FramerateConversionAlgorithm'
  #-}

instance FromText Vp8FramerateConversionAlgorithm where
  parser = (Vp8FramerateConversionAlgorithm' . mk) <$> takeText

instance ToText Vp8FramerateConversionAlgorithm where
  toText (Vp8FramerateConversionAlgorithm' ci) = original ci

instance Hashable Vp8FramerateConversionAlgorithm

instance NFData Vp8FramerateConversionAlgorithm

instance ToByteString Vp8FramerateConversionAlgorithm

instance ToQuery Vp8FramerateConversionAlgorithm

instance ToHeader Vp8FramerateConversionAlgorithm

instance ToJSON Vp8FramerateConversionAlgorithm where
  toJSON = toJSONText

instance FromJSON Vp8FramerateConversionAlgorithm where
  parseJSON = parseJSONText "Vp8FramerateConversionAlgorithm"
