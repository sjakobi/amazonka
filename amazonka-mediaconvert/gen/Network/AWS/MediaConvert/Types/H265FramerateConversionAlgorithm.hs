{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265FramerateConversionAlgorithm
  ( H265FramerateConversionAlgorithm
      ( ..,
        HDuplicateDrop,
        HFrameformer,
        HInterpolate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
data H265FramerateConversionAlgorithm
  = H265FramerateConversionAlgorithm'
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

pattern HDuplicateDrop :: H265FramerateConversionAlgorithm
pattern HDuplicateDrop = H265FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern HFrameformer :: H265FramerateConversionAlgorithm
pattern HFrameformer = H265FramerateConversionAlgorithm' "FRAMEFORMER"

pattern HInterpolate :: H265FramerateConversionAlgorithm
pattern HInterpolate = H265FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  HDuplicateDrop,
  HFrameformer,
  HInterpolate,
  H265FramerateConversionAlgorithm'
  #-}

instance FromText H265FramerateConversionAlgorithm where
  parser = (H265FramerateConversionAlgorithm' . mk) <$> takeText

instance ToText H265FramerateConversionAlgorithm where
  toText (H265FramerateConversionAlgorithm' ci) = original ci

instance Hashable H265FramerateConversionAlgorithm

instance NFData H265FramerateConversionAlgorithm

instance ToByteString H265FramerateConversionAlgorithm

instance ToQuery H265FramerateConversionAlgorithm

instance ToHeader H265FramerateConversionAlgorithm

instance ToJSON H265FramerateConversionAlgorithm where
  toJSON = toJSONText

instance FromJSON H265FramerateConversionAlgorithm where
  parseJSON = parseJSONText "H265FramerateConversionAlgorithm"
