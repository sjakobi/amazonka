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
-- Module      : Network.AWS.MediaConvert.Types.Vc3FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3FramerateConversionAlgorithm
  ( Vc3FramerateConversionAlgorithm
      ( ..,
        Vc3FramerateConversionAlgorithmDUPLICATEDROP,
        Vc3FramerateConversionAlgorithmFRAMEFORMER,
        Vc3FramerateConversionAlgorithmINTERPOLATE
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
newtype Vc3FramerateConversionAlgorithm = Vc3FramerateConversionAlgorithm'
  { fromVc3FramerateConversionAlgorithm ::
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

pattern Vc3FramerateConversionAlgorithmDUPLICATEDROP :: Vc3FramerateConversionAlgorithm
pattern Vc3FramerateConversionAlgorithmDUPLICATEDROP = Vc3FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern Vc3FramerateConversionAlgorithmFRAMEFORMER :: Vc3FramerateConversionAlgorithm
pattern Vc3FramerateConversionAlgorithmFRAMEFORMER = Vc3FramerateConversionAlgorithm' "FRAMEFORMER"

pattern Vc3FramerateConversionAlgorithmINTERPOLATE :: Vc3FramerateConversionAlgorithm
pattern Vc3FramerateConversionAlgorithmINTERPOLATE = Vc3FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  Vc3FramerateConversionAlgorithmDUPLICATEDROP,
  Vc3FramerateConversionAlgorithmFRAMEFORMER,
  Vc3FramerateConversionAlgorithmINTERPOLATE,
  Vc3FramerateConversionAlgorithm'
  #-}

instance Prelude.FromText Vc3FramerateConversionAlgorithm where
  parser = Vc3FramerateConversionAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vc3FramerateConversionAlgorithm where
  toText (Vc3FramerateConversionAlgorithm' x) = x

instance Prelude.Hashable Vc3FramerateConversionAlgorithm

instance Prelude.NFData Vc3FramerateConversionAlgorithm

instance Prelude.ToByteString Vc3FramerateConversionAlgorithm

instance Prelude.ToQuery Vc3FramerateConversionAlgorithm

instance Prelude.ToHeader Vc3FramerateConversionAlgorithm

instance Prelude.ToJSON Vc3FramerateConversionAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vc3FramerateConversionAlgorithm where
  parseJSON = Prelude.parseJSONText "Vc3FramerateConversionAlgorithm"
