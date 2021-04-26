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
-- Module      : Network.AWS.MediaConvert.Types.AvcIntraFramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AvcIntraFramerateConversionAlgorithm
  ( AvcIntraFramerateConversionAlgorithm
      ( ..,
        AvcIntraFramerateConversionAlgorithmDUPLICATEDROP,
        AvcIntraFramerateConversionAlgorithmFRAMEFORMER,
        AvcIntraFramerateConversionAlgorithmINTERPOLATE
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
newtype AvcIntraFramerateConversionAlgorithm = AvcIntraFramerateConversionAlgorithm'
  { fromAvcIntraFramerateConversionAlgorithm ::
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

pattern AvcIntraFramerateConversionAlgorithmDUPLICATEDROP :: AvcIntraFramerateConversionAlgorithm
pattern AvcIntraFramerateConversionAlgorithmDUPLICATEDROP = AvcIntraFramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern AvcIntraFramerateConversionAlgorithmFRAMEFORMER :: AvcIntraFramerateConversionAlgorithm
pattern AvcIntraFramerateConversionAlgorithmFRAMEFORMER = AvcIntraFramerateConversionAlgorithm' "FRAMEFORMER"

pattern AvcIntraFramerateConversionAlgorithmINTERPOLATE :: AvcIntraFramerateConversionAlgorithm
pattern AvcIntraFramerateConversionAlgorithmINTERPOLATE = AvcIntraFramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  AvcIntraFramerateConversionAlgorithmDUPLICATEDROP,
  AvcIntraFramerateConversionAlgorithmFRAMEFORMER,
  AvcIntraFramerateConversionAlgorithmINTERPOLATE,
  AvcIntraFramerateConversionAlgorithm'
  #-}

instance Prelude.FromText AvcIntraFramerateConversionAlgorithm where
  parser = AvcIntraFramerateConversionAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText AvcIntraFramerateConversionAlgorithm where
  toText (AvcIntraFramerateConversionAlgorithm' x) = x

instance Prelude.Hashable AvcIntraFramerateConversionAlgorithm

instance Prelude.NFData AvcIntraFramerateConversionAlgorithm

instance Prelude.ToByteString AvcIntraFramerateConversionAlgorithm

instance Prelude.ToQuery AvcIntraFramerateConversionAlgorithm

instance Prelude.ToHeader AvcIntraFramerateConversionAlgorithm

instance Prelude.ToJSON AvcIntraFramerateConversionAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AvcIntraFramerateConversionAlgorithm where
  parseJSON = Prelude.parseJSONText "AvcIntraFramerateConversionAlgorithm"
