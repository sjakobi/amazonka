{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2FramerateConversionAlgorithm
  ( Mpeg2FramerateConversionAlgorithm
      ( ..,
        MFCADuplicateDrop,
        MFCAFrameformer,
        MFCAInterpolate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
data Mpeg2FramerateConversionAlgorithm
  = Mpeg2FramerateConversionAlgorithm'
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

pattern MFCADuplicateDrop :: Mpeg2FramerateConversionAlgorithm
pattern MFCADuplicateDrop = Mpeg2FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern MFCAFrameformer :: Mpeg2FramerateConversionAlgorithm
pattern MFCAFrameformer = Mpeg2FramerateConversionAlgorithm' "FRAMEFORMER"

pattern MFCAInterpolate :: Mpeg2FramerateConversionAlgorithm
pattern MFCAInterpolate = Mpeg2FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  MFCADuplicateDrop,
  MFCAFrameformer,
  MFCAInterpolate,
  Mpeg2FramerateConversionAlgorithm'
  #-}

instance FromText Mpeg2FramerateConversionAlgorithm where
  parser = (Mpeg2FramerateConversionAlgorithm' . mk) <$> takeText

instance ToText Mpeg2FramerateConversionAlgorithm where
  toText (Mpeg2FramerateConversionAlgorithm' ci) = original ci

instance Hashable Mpeg2FramerateConversionAlgorithm

instance NFData Mpeg2FramerateConversionAlgorithm

instance ToByteString Mpeg2FramerateConversionAlgorithm

instance ToQuery Mpeg2FramerateConversionAlgorithm

instance ToHeader Mpeg2FramerateConversionAlgorithm

instance ToJSON Mpeg2FramerateConversionAlgorithm where
  toJSON = toJSONText

instance FromJSON Mpeg2FramerateConversionAlgorithm where
  parseJSON = parseJSONText "Mpeg2FramerateConversionAlgorithm"
