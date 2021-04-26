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
-- Module      : Network.AWS.MediaConvert.Types.H265InterlaceMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265InterlaceMode
  ( H265InterlaceMode
      ( ..,
        H265InterlaceModeBOTTOMFIELD,
        H265InterlaceModeFOLLOWBOTTOMFIELD,
        H265InterlaceModeFOLLOWTOPFIELD,
        H265InterlaceModePROGRESSIVE,
        H265InterlaceModeTOPFIELD
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
newtype H265InterlaceMode = H265InterlaceMode'
  { fromH265InterlaceMode ::
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

pattern H265InterlaceModeBOTTOMFIELD :: H265InterlaceMode
pattern H265InterlaceModeBOTTOMFIELD = H265InterlaceMode' "BOTTOM_FIELD"

pattern H265InterlaceModeFOLLOWBOTTOMFIELD :: H265InterlaceMode
pattern H265InterlaceModeFOLLOWBOTTOMFIELD = H265InterlaceMode' "FOLLOW_BOTTOM_FIELD"

pattern H265InterlaceModeFOLLOWTOPFIELD :: H265InterlaceMode
pattern H265InterlaceModeFOLLOWTOPFIELD = H265InterlaceMode' "FOLLOW_TOP_FIELD"

pattern H265InterlaceModePROGRESSIVE :: H265InterlaceMode
pattern H265InterlaceModePROGRESSIVE = H265InterlaceMode' "PROGRESSIVE"

pattern H265InterlaceModeTOPFIELD :: H265InterlaceMode
pattern H265InterlaceModeTOPFIELD = H265InterlaceMode' "TOP_FIELD"

{-# COMPLETE
  H265InterlaceModeBOTTOMFIELD,
  H265InterlaceModeFOLLOWBOTTOMFIELD,
  H265InterlaceModeFOLLOWTOPFIELD,
  H265InterlaceModePROGRESSIVE,
  H265InterlaceModeTOPFIELD,
  H265InterlaceMode'
  #-}

instance Prelude.FromText H265InterlaceMode where
  parser = H265InterlaceMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265InterlaceMode where
  toText (H265InterlaceMode' x) = x

instance Prelude.Hashable H265InterlaceMode

instance Prelude.NFData H265InterlaceMode

instance Prelude.ToByteString H265InterlaceMode

instance Prelude.ToQuery H265InterlaceMode

instance Prelude.ToHeader H265InterlaceMode

instance Prelude.ToJSON H265InterlaceMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265InterlaceMode where
  parseJSON = Prelude.parseJSONText "H265InterlaceMode"
