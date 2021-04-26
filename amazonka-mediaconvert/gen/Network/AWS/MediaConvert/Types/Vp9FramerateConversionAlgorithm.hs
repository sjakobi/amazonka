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
-- Module      : Network.AWS.MediaConvert.Types.Vp9FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp9FramerateConversionAlgorithm
  ( Vp9FramerateConversionAlgorithm
      ( ..,
        Vp9FramerateConversionAlgorithmDUPLICATEDROP,
        Vp9FramerateConversionAlgorithmFRAMEFORMER,
        Vp9FramerateConversionAlgorithmINTERPOLATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose the method that you want MediaConvert to use when increasing or
-- decreasing the frame rate. We recommend using drop duplicate
-- (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to
-- 30 fps. For numerically complex conversions, you can use interpolate
-- (INTERPOLATE) to avoid stutter. This results in a smooth picture, but
-- might introduce undesirable video artifacts. For complex frame rate
-- conversions, especially if your source video has already been converted
-- from its original cadence, use FrameFormer (FRAMEFORMER) to do
-- motion-compensated interpolation. FrameFormer chooses the best
-- conversion method frame by frame. Note that using FrameFormer increases
-- the transcoding time and incurs a significant add-on cost.
newtype Vp9FramerateConversionAlgorithm = Vp9FramerateConversionAlgorithm'
  { fromVp9FramerateConversionAlgorithm ::
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

pattern Vp9FramerateConversionAlgorithmDUPLICATEDROP :: Vp9FramerateConversionAlgorithm
pattern Vp9FramerateConversionAlgorithmDUPLICATEDROP = Vp9FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern Vp9FramerateConversionAlgorithmFRAMEFORMER :: Vp9FramerateConversionAlgorithm
pattern Vp9FramerateConversionAlgorithmFRAMEFORMER = Vp9FramerateConversionAlgorithm' "FRAMEFORMER"

pattern Vp9FramerateConversionAlgorithmINTERPOLATE :: Vp9FramerateConversionAlgorithm
pattern Vp9FramerateConversionAlgorithmINTERPOLATE = Vp9FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  Vp9FramerateConversionAlgorithmDUPLICATEDROP,
  Vp9FramerateConversionAlgorithmFRAMEFORMER,
  Vp9FramerateConversionAlgorithmINTERPOLATE,
  Vp9FramerateConversionAlgorithm'
  #-}

instance Prelude.FromText Vp9FramerateConversionAlgorithm where
  parser = Vp9FramerateConversionAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vp9FramerateConversionAlgorithm where
  toText (Vp9FramerateConversionAlgorithm' x) = x

instance Prelude.Hashable Vp9FramerateConversionAlgorithm

instance Prelude.NFData Vp9FramerateConversionAlgorithm

instance Prelude.ToByteString Vp9FramerateConversionAlgorithm

instance Prelude.ToQuery Vp9FramerateConversionAlgorithm

instance Prelude.ToHeader Vp9FramerateConversionAlgorithm

instance Prelude.ToJSON Vp9FramerateConversionAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vp9FramerateConversionAlgorithm where
  parseJSON = Prelude.parseJSONText "Vp9FramerateConversionAlgorithm"
