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
-- Module      : Network.AWS.MediaConvert.Types.AvcIntraInterlaceMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AvcIntraInterlaceMode
  ( AvcIntraInterlaceMode
      ( ..,
        AvcIntraInterlaceModeBOTTOMFIELD,
        AvcIntraInterlaceModeFOLLOWBOTTOMFIELD,
        AvcIntraInterlaceModeFOLLOWTOPFIELD,
        AvcIntraInterlaceModePROGRESSIVE,
        AvcIntraInterlaceModeTOPFIELD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose the scan line type for the output. Keep the default value,
-- Progressive (PROGRESSIVE) to create a progressive output, regardless of
-- the scan type of your input. Use Top field first (TOP_FIELD) or Bottom
-- field first (BOTTOM_FIELD) to create an output that\'s interlaced with
-- the same field polarity throughout. Use Follow, default top
-- (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to
-- produce outputs with the same field polarity as the source. For jobs
-- that have multiple inputs, the output field polarity might change over
-- the course of the output. Follow behavior depends on the input scan
-- type. If the source is interlaced, the output will be interlaced with
-- the same polarity as the source. If the source is progressive, the
-- output will be interlaced with top field bottom field first, depending
-- on which of the Follow options you choose.
newtype AvcIntraInterlaceMode = AvcIntraInterlaceMode'
  { fromAvcIntraInterlaceMode ::
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

pattern AvcIntraInterlaceModeBOTTOMFIELD :: AvcIntraInterlaceMode
pattern AvcIntraInterlaceModeBOTTOMFIELD = AvcIntraInterlaceMode' "BOTTOM_FIELD"

pattern AvcIntraInterlaceModeFOLLOWBOTTOMFIELD :: AvcIntraInterlaceMode
pattern AvcIntraInterlaceModeFOLLOWBOTTOMFIELD = AvcIntraInterlaceMode' "FOLLOW_BOTTOM_FIELD"

pattern AvcIntraInterlaceModeFOLLOWTOPFIELD :: AvcIntraInterlaceMode
pattern AvcIntraInterlaceModeFOLLOWTOPFIELD = AvcIntraInterlaceMode' "FOLLOW_TOP_FIELD"

pattern AvcIntraInterlaceModePROGRESSIVE :: AvcIntraInterlaceMode
pattern AvcIntraInterlaceModePROGRESSIVE = AvcIntraInterlaceMode' "PROGRESSIVE"

pattern AvcIntraInterlaceModeTOPFIELD :: AvcIntraInterlaceMode
pattern AvcIntraInterlaceModeTOPFIELD = AvcIntraInterlaceMode' "TOP_FIELD"

{-# COMPLETE
  AvcIntraInterlaceModeBOTTOMFIELD,
  AvcIntraInterlaceModeFOLLOWBOTTOMFIELD,
  AvcIntraInterlaceModeFOLLOWTOPFIELD,
  AvcIntraInterlaceModePROGRESSIVE,
  AvcIntraInterlaceModeTOPFIELD,
  AvcIntraInterlaceMode'
  #-}

instance Prelude.FromText AvcIntraInterlaceMode where
  parser = AvcIntraInterlaceMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText AvcIntraInterlaceMode where
  toText (AvcIntraInterlaceMode' x) = x

instance Prelude.Hashable AvcIntraInterlaceMode

instance Prelude.NFData AvcIntraInterlaceMode

instance Prelude.ToByteString AvcIntraInterlaceMode

instance Prelude.ToQuery AvcIntraInterlaceMode

instance Prelude.ToHeader AvcIntraInterlaceMode

instance Prelude.ToJSON AvcIntraInterlaceMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AvcIntraInterlaceMode where
  parseJSON = Prelude.parseJSONText "AvcIntraInterlaceMode"
