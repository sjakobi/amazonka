{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresFramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresFramerateConversionAlgorithm
  ( ProresFramerateConversionAlgorithm
      ( ..,
        PFCADuplicateDrop,
        PFCAFrameformer,
        PFCAInterpolate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
data ProresFramerateConversionAlgorithm
  = ProresFramerateConversionAlgorithm'
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

pattern PFCADuplicateDrop :: ProresFramerateConversionAlgorithm
pattern PFCADuplicateDrop = ProresFramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern PFCAFrameformer :: ProresFramerateConversionAlgorithm
pattern PFCAFrameformer = ProresFramerateConversionAlgorithm' "FRAMEFORMER"

pattern PFCAInterpolate :: ProresFramerateConversionAlgorithm
pattern PFCAInterpolate = ProresFramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  PFCADuplicateDrop,
  PFCAFrameformer,
  PFCAInterpolate,
  ProresFramerateConversionAlgorithm'
  #-}

instance FromText ProresFramerateConversionAlgorithm where
  parser = (ProresFramerateConversionAlgorithm' . mk) <$> takeText

instance ToText ProresFramerateConversionAlgorithm where
  toText (ProresFramerateConversionAlgorithm' ci) = original ci

instance Hashable ProresFramerateConversionAlgorithm

instance NFData ProresFramerateConversionAlgorithm

instance ToByteString ProresFramerateConversionAlgorithm

instance ToQuery ProresFramerateConversionAlgorithm

instance ToHeader ProresFramerateConversionAlgorithm

instance ToJSON ProresFramerateConversionAlgorithm where
  toJSON = toJSONText

instance FromJSON ProresFramerateConversionAlgorithm where
  parseJSON = parseJSONText "ProresFramerateConversionAlgorithm"
