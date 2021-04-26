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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2FramerateConversionAlgorithm
  ( Mpeg2FramerateConversionAlgorithm
      ( ..,
        Mpeg2FramerateConversionAlgorithmDUPLICATEDROP,
        Mpeg2FramerateConversionAlgorithmFRAMEFORMER,
        Mpeg2FramerateConversionAlgorithmINTERPOLATE
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
newtype Mpeg2FramerateConversionAlgorithm = Mpeg2FramerateConversionAlgorithm'
  { fromMpeg2FramerateConversionAlgorithm ::
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

pattern Mpeg2FramerateConversionAlgorithmDUPLICATEDROP :: Mpeg2FramerateConversionAlgorithm
pattern Mpeg2FramerateConversionAlgorithmDUPLICATEDROP = Mpeg2FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern Mpeg2FramerateConversionAlgorithmFRAMEFORMER :: Mpeg2FramerateConversionAlgorithm
pattern Mpeg2FramerateConversionAlgorithmFRAMEFORMER = Mpeg2FramerateConversionAlgorithm' "FRAMEFORMER"

pattern Mpeg2FramerateConversionAlgorithmINTERPOLATE :: Mpeg2FramerateConversionAlgorithm
pattern Mpeg2FramerateConversionAlgorithmINTERPOLATE = Mpeg2FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  Mpeg2FramerateConversionAlgorithmDUPLICATEDROP,
  Mpeg2FramerateConversionAlgorithmFRAMEFORMER,
  Mpeg2FramerateConversionAlgorithmINTERPOLATE,
  Mpeg2FramerateConversionAlgorithm'
  #-}

instance Prelude.FromText Mpeg2FramerateConversionAlgorithm where
  parser = Mpeg2FramerateConversionAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2FramerateConversionAlgorithm where
  toText (Mpeg2FramerateConversionAlgorithm' x) = x

instance Prelude.Hashable Mpeg2FramerateConversionAlgorithm

instance Prelude.NFData Mpeg2FramerateConversionAlgorithm

instance Prelude.ToByteString Mpeg2FramerateConversionAlgorithm

instance Prelude.ToQuery Mpeg2FramerateConversionAlgorithm

instance Prelude.ToHeader Mpeg2FramerateConversionAlgorithm

instance Prelude.ToJSON Mpeg2FramerateConversionAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2FramerateConversionAlgorithm where
  parseJSON = Prelude.parseJSONText "Mpeg2FramerateConversionAlgorithm"
