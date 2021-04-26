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
-- Module      : Network.AWS.MediaConvert.Types.ColorSpace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ColorSpace
  ( ColorSpace
      ( ..,
        ColorSpaceFOLLOW,
        ColorSpaceHDR10,
        ColorSpaceHLG2020,
        ColorSpaceREC601,
        ColorSpaceREC709
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If your input video has accurate color space metadata, or if you don\'t
-- know about color space, leave this set to the default value Follow
-- (FOLLOW). The service will automatically detect your input color space.
-- If your input video has metadata indicating the wrong color space,
-- specify the accurate color space here. If your input video is HDR 10 and
-- the SMPTE ST 2086 Mastering Display Color Volume static metadata isn\'t
-- present in your video stream, or if that metadata is present but not
-- accurate, choose Force HDR 10 (FORCE_HDR10) here and specify correct
-- values in the input HDR 10 metadata (Hdr10Metadata) settings. For more
-- information about MediaConvert HDR jobs, see
-- https:\/\/docs.aws.amazon.com\/console\/mediaconvert\/hdr.
newtype ColorSpace = ColorSpace'
  { fromColorSpace ::
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

pattern ColorSpaceFOLLOW :: ColorSpace
pattern ColorSpaceFOLLOW = ColorSpace' "FOLLOW"

pattern ColorSpaceHDR10 :: ColorSpace
pattern ColorSpaceHDR10 = ColorSpace' "HDR10"

pattern ColorSpaceHLG2020 :: ColorSpace
pattern ColorSpaceHLG2020 = ColorSpace' "HLG_2020"

pattern ColorSpaceREC601 :: ColorSpace
pattern ColorSpaceREC601 = ColorSpace' "REC_601"

pattern ColorSpaceREC709 :: ColorSpace
pattern ColorSpaceREC709 = ColorSpace' "REC_709"

{-# COMPLETE
  ColorSpaceFOLLOW,
  ColorSpaceHDR10,
  ColorSpaceHLG2020,
  ColorSpaceREC601,
  ColorSpaceREC709,
  ColorSpace'
  #-}

instance Prelude.FromText ColorSpace where
  parser = ColorSpace' Prelude.<$> Prelude.takeText

instance Prelude.ToText ColorSpace where
  toText (ColorSpace' x) = x

instance Prelude.Hashable ColorSpace

instance Prelude.NFData ColorSpace

instance Prelude.ToByteString ColorSpace

instance Prelude.ToQuery ColorSpace

instance Prelude.ToHeader ColorSpace

instance Prelude.ToJSON ColorSpace where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ColorSpace where
  parseJSON = Prelude.parseJSONText "ColorSpace"
