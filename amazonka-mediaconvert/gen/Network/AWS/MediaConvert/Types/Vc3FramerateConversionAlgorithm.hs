{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vc3FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3FramerateConversionAlgorithm
  ( Vc3FramerateConversionAlgorithm
      ( ..,
        DuplicateDrop,
        Frameformer,
        Interpolate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
data Vc3FramerateConversionAlgorithm
  = Vc3FramerateConversionAlgorithm'
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

pattern DuplicateDrop :: Vc3FramerateConversionAlgorithm
pattern DuplicateDrop = Vc3FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern Frameformer :: Vc3FramerateConversionAlgorithm
pattern Frameformer = Vc3FramerateConversionAlgorithm' "FRAMEFORMER"

pattern Interpolate :: Vc3FramerateConversionAlgorithm
pattern Interpolate = Vc3FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  DuplicateDrop,
  Frameformer,
  Interpolate,
  Vc3FramerateConversionAlgorithm'
  #-}

instance FromText Vc3FramerateConversionAlgorithm where
  parser = (Vc3FramerateConversionAlgorithm' . mk) <$> takeText

instance ToText Vc3FramerateConversionAlgorithm where
  toText (Vc3FramerateConversionAlgorithm' ci) = original ci

instance Hashable Vc3FramerateConversionAlgorithm

instance NFData Vc3FramerateConversionAlgorithm

instance ToByteString Vc3FramerateConversionAlgorithm

instance ToQuery Vc3FramerateConversionAlgorithm

instance ToHeader Vc3FramerateConversionAlgorithm

instance ToJSON Vc3FramerateConversionAlgorithm where
  toJSON = toJSONText

instance FromJSON Vc3FramerateConversionAlgorithm where
  parseJSON = parseJSONText "Vc3FramerateConversionAlgorithm"
