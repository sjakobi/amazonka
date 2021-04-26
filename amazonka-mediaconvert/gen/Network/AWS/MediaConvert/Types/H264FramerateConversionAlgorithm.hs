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
-- Module      : Network.AWS.MediaConvert.Types.H264FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264FramerateConversionAlgorithm
  ( H264FramerateConversionAlgorithm
      ( ..,
        H264FramerateConversionAlgorithmDUPLICATEDROP,
        H264FramerateConversionAlgorithmFRAMEFORMER,
        H264FramerateConversionAlgorithmINTERPOLATE
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
newtype H264FramerateConversionAlgorithm = H264FramerateConversionAlgorithm'
  { fromH264FramerateConversionAlgorithm ::
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

pattern H264FramerateConversionAlgorithmDUPLICATEDROP :: H264FramerateConversionAlgorithm
pattern H264FramerateConversionAlgorithmDUPLICATEDROP = H264FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern H264FramerateConversionAlgorithmFRAMEFORMER :: H264FramerateConversionAlgorithm
pattern H264FramerateConversionAlgorithmFRAMEFORMER = H264FramerateConversionAlgorithm' "FRAMEFORMER"

pattern H264FramerateConversionAlgorithmINTERPOLATE :: H264FramerateConversionAlgorithm
pattern H264FramerateConversionAlgorithmINTERPOLATE = H264FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  H264FramerateConversionAlgorithmDUPLICATEDROP,
  H264FramerateConversionAlgorithmFRAMEFORMER,
  H264FramerateConversionAlgorithmINTERPOLATE,
  H264FramerateConversionAlgorithm'
  #-}

instance Prelude.FromText H264FramerateConversionAlgorithm where
  parser = H264FramerateConversionAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264FramerateConversionAlgorithm where
  toText (H264FramerateConversionAlgorithm' x) = x

instance Prelude.Hashable H264FramerateConversionAlgorithm

instance Prelude.NFData H264FramerateConversionAlgorithm

instance Prelude.ToByteString H264FramerateConversionAlgorithm

instance Prelude.ToQuery H264FramerateConversionAlgorithm

instance Prelude.ToHeader H264FramerateConversionAlgorithm

instance Prelude.ToJSON H264FramerateConversionAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264FramerateConversionAlgorithm where
  parseJSON = Prelude.parseJSONText "H264FramerateConversionAlgorithm"
