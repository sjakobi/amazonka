{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AvcIntraFramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AvcIntraFramerateConversionAlgorithm
  ( AvcIntraFramerateConversionAlgorithm
      ( ..,
        AIFCADuplicateDrop,
        AIFCAFrameformer,
        AIFCAInterpolate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
data AvcIntraFramerateConversionAlgorithm
  = AvcIntraFramerateConversionAlgorithm'
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

pattern AIFCADuplicateDrop :: AvcIntraFramerateConversionAlgorithm
pattern AIFCADuplicateDrop = AvcIntraFramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern AIFCAFrameformer :: AvcIntraFramerateConversionAlgorithm
pattern AIFCAFrameformer = AvcIntraFramerateConversionAlgorithm' "FRAMEFORMER"

pattern AIFCAInterpolate :: AvcIntraFramerateConversionAlgorithm
pattern AIFCAInterpolate = AvcIntraFramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  AIFCADuplicateDrop,
  AIFCAFrameformer,
  AIFCAInterpolate,
  AvcIntraFramerateConversionAlgorithm'
  #-}

instance FromText AvcIntraFramerateConversionAlgorithm where
  parser = (AvcIntraFramerateConversionAlgorithm' . mk) <$> takeText

instance ToText AvcIntraFramerateConversionAlgorithm where
  toText (AvcIntraFramerateConversionAlgorithm' ci) = original ci

instance Hashable AvcIntraFramerateConversionAlgorithm

instance NFData AvcIntraFramerateConversionAlgorithm

instance ToByteString AvcIntraFramerateConversionAlgorithm

instance ToQuery AvcIntraFramerateConversionAlgorithm

instance ToHeader AvcIntraFramerateConversionAlgorithm

instance ToJSON AvcIntraFramerateConversionAlgorithm where
  toJSON = toJSONText

instance FromJSON AvcIntraFramerateConversionAlgorithm where
  parseJSON = parseJSONText "AvcIntraFramerateConversionAlgorithm"
