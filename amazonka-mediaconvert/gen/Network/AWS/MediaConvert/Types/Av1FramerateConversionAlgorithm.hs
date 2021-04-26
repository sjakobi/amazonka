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
-- Module      : Network.AWS.MediaConvert.Types.Av1FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Av1FramerateConversionAlgorithm
  ( Av1FramerateConversionAlgorithm
      ( ..,
        Av1FramerateConversionAlgorithmDUPLICATEDROP,
        Av1FramerateConversionAlgorithmFRAMEFORMER,
        Av1FramerateConversionAlgorithmINTERPOLATE
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
newtype Av1FramerateConversionAlgorithm = Av1FramerateConversionAlgorithm'
  { fromAv1FramerateConversionAlgorithm ::
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

pattern Av1FramerateConversionAlgorithmDUPLICATEDROP :: Av1FramerateConversionAlgorithm
pattern Av1FramerateConversionAlgorithmDUPLICATEDROP = Av1FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern Av1FramerateConversionAlgorithmFRAMEFORMER :: Av1FramerateConversionAlgorithm
pattern Av1FramerateConversionAlgorithmFRAMEFORMER = Av1FramerateConversionAlgorithm' "FRAMEFORMER"

pattern Av1FramerateConversionAlgorithmINTERPOLATE :: Av1FramerateConversionAlgorithm
pattern Av1FramerateConversionAlgorithmINTERPOLATE = Av1FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  Av1FramerateConversionAlgorithmDUPLICATEDROP,
  Av1FramerateConversionAlgorithmFRAMEFORMER,
  Av1FramerateConversionAlgorithmINTERPOLATE,
  Av1FramerateConversionAlgorithm'
  #-}

instance Prelude.FromText Av1FramerateConversionAlgorithm where
  parser = Av1FramerateConversionAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText Av1FramerateConversionAlgorithm where
  toText (Av1FramerateConversionAlgorithm' x) = x

instance Prelude.Hashable Av1FramerateConversionAlgorithm

instance Prelude.NFData Av1FramerateConversionAlgorithm

instance Prelude.ToByteString Av1FramerateConversionAlgorithm

instance Prelude.ToQuery Av1FramerateConversionAlgorithm

instance Prelude.ToHeader Av1FramerateConversionAlgorithm

instance Prelude.ToJSON Av1FramerateConversionAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Av1FramerateConversionAlgorithm where
  parseJSON = Prelude.parseJSONText "Av1FramerateConversionAlgorithm"
