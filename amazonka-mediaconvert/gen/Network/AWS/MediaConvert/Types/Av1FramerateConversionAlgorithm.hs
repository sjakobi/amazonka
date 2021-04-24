{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Av1FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Av1FramerateConversionAlgorithm
  ( Av1FramerateConversionAlgorithm
      ( ..,
        AFCADuplicateDrop,
        AFCAFrameformer,
        AFCAInterpolate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
data Av1FramerateConversionAlgorithm
  = Av1FramerateConversionAlgorithm'
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

pattern AFCADuplicateDrop :: Av1FramerateConversionAlgorithm
pattern AFCADuplicateDrop = Av1FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern AFCAFrameformer :: Av1FramerateConversionAlgorithm
pattern AFCAFrameformer = Av1FramerateConversionAlgorithm' "FRAMEFORMER"

pattern AFCAInterpolate :: Av1FramerateConversionAlgorithm
pattern AFCAInterpolate = Av1FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  AFCADuplicateDrop,
  AFCAFrameformer,
  AFCAInterpolate,
  Av1FramerateConversionAlgorithm'
  #-}

instance FromText Av1FramerateConversionAlgorithm where
  parser = (Av1FramerateConversionAlgorithm' . mk) <$> takeText

instance ToText Av1FramerateConversionAlgorithm where
  toText (Av1FramerateConversionAlgorithm' ci) = original ci

instance Hashable Av1FramerateConversionAlgorithm

instance NFData Av1FramerateConversionAlgorithm

instance ToByteString Av1FramerateConversionAlgorithm

instance ToQuery Av1FramerateConversionAlgorithm

instance ToHeader Av1FramerateConversionAlgorithm

instance ToJSON Av1FramerateConversionAlgorithm where
  toJSON = toJSONText

instance FromJSON Av1FramerateConversionAlgorithm where
  parseJSON = parseJSONText "Av1FramerateConversionAlgorithm"
