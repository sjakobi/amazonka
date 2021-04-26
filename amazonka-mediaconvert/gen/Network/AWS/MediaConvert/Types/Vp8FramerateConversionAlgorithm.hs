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
-- Module      : Network.AWS.MediaConvert.Types.Vp8FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp8FramerateConversionAlgorithm
  ( Vp8FramerateConversionAlgorithm
      ( ..,
        Vp8FramerateConversionAlgorithmDUPLICATEDROP,
        Vp8FramerateConversionAlgorithmFRAMEFORMER,
        Vp8FramerateConversionAlgorithmINTERPOLATE
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
newtype Vp8FramerateConversionAlgorithm = Vp8FramerateConversionAlgorithm'
  { fromVp8FramerateConversionAlgorithm ::
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

pattern Vp8FramerateConversionAlgorithmDUPLICATEDROP :: Vp8FramerateConversionAlgorithm
pattern Vp8FramerateConversionAlgorithmDUPLICATEDROP = Vp8FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern Vp8FramerateConversionAlgorithmFRAMEFORMER :: Vp8FramerateConversionAlgorithm
pattern Vp8FramerateConversionAlgorithmFRAMEFORMER = Vp8FramerateConversionAlgorithm' "FRAMEFORMER"

pattern Vp8FramerateConversionAlgorithmINTERPOLATE :: Vp8FramerateConversionAlgorithm
pattern Vp8FramerateConversionAlgorithmINTERPOLATE = Vp8FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  Vp8FramerateConversionAlgorithmDUPLICATEDROP,
  Vp8FramerateConversionAlgorithmFRAMEFORMER,
  Vp8FramerateConversionAlgorithmINTERPOLATE,
  Vp8FramerateConversionAlgorithm'
  #-}

instance Prelude.FromText Vp8FramerateConversionAlgorithm where
  parser = Vp8FramerateConversionAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vp8FramerateConversionAlgorithm where
  toText (Vp8FramerateConversionAlgorithm' x) = x

instance Prelude.Hashable Vp8FramerateConversionAlgorithm

instance Prelude.NFData Vp8FramerateConversionAlgorithm

instance Prelude.ToByteString Vp8FramerateConversionAlgorithm

instance Prelude.ToQuery Vp8FramerateConversionAlgorithm

instance Prelude.ToHeader Vp8FramerateConversionAlgorithm

instance Prelude.ToJSON Vp8FramerateConversionAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vp8FramerateConversionAlgorithm where
  parseJSON = Prelude.parseJSONText "Vp8FramerateConversionAlgorithm"
