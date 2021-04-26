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
-- Module      : Network.AWS.MediaConvert.Types.ColorSpaceConversion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ColorSpaceConversion
  ( ColorSpaceConversion
      ( ..,
        ColorSpaceConversionFORCE601,
        ColorSpaceConversionFORCE709,
        ColorSpaceConversionFORCEHDR10,
        ColorSpaceConversionFORCEHLG2020,
        ColorSpaceConversionNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the color space you want for this output. The service supports
-- conversion between HDR formats, between SDR formats, from SDR to HDR,
-- and from HDR to SDR. SDR to HDR conversion doesn\'t upgrade the dynamic
-- range. The converted video has an HDR format, but visually appears the
-- same as an unconverted output. HDR to SDR conversion uses Elemental tone
-- mapping technology to approximate the outcome of manually regrading from
-- HDR to SDR.
newtype ColorSpaceConversion = ColorSpaceConversion'
  { fromColorSpaceConversion ::
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

pattern ColorSpaceConversionFORCE601 :: ColorSpaceConversion
pattern ColorSpaceConversionFORCE601 = ColorSpaceConversion' "FORCE_601"

pattern ColorSpaceConversionFORCE709 :: ColorSpaceConversion
pattern ColorSpaceConversionFORCE709 = ColorSpaceConversion' "FORCE_709"

pattern ColorSpaceConversionFORCEHDR10 :: ColorSpaceConversion
pattern ColorSpaceConversionFORCEHDR10 = ColorSpaceConversion' "FORCE_HDR10"

pattern ColorSpaceConversionFORCEHLG2020 :: ColorSpaceConversion
pattern ColorSpaceConversionFORCEHLG2020 = ColorSpaceConversion' "FORCE_HLG_2020"

pattern ColorSpaceConversionNONE :: ColorSpaceConversion
pattern ColorSpaceConversionNONE = ColorSpaceConversion' "NONE"

{-# COMPLETE
  ColorSpaceConversionFORCE601,
  ColorSpaceConversionFORCE709,
  ColorSpaceConversionFORCEHDR10,
  ColorSpaceConversionFORCEHLG2020,
  ColorSpaceConversionNONE,
  ColorSpaceConversion'
  #-}

instance Prelude.FromText ColorSpaceConversion where
  parser = ColorSpaceConversion' Prelude.<$> Prelude.takeText

instance Prelude.ToText ColorSpaceConversion where
  toText (ColorSpaceConversion' x) = x

instance Prelude.Hashable ColorSpaceConversion

instance Prelude.NFData ColorSpaceConversion

instance Prelude.ToByteString ColorSpaceConversion

instance Prelude.ToQuery ColorSpaceConversion

instance Prelude.ToHeader ColorSpaceConversion

instance Prelude.ToJSON ColorSpaceConversion where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ColorSpaceConversion where
  parseJSON = Prelude.parseJSONText "ColorSpaceConversion"
