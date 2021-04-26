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
-- Module      : Network.AWS.MediaConvert.Types.ProresInterlaceMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresInterlaceMode
  ( ProresInterlaceMode
      ( ..,
        ProresInterlaceModeBOTTOMFIELD,
        ProresInterlaceModeFOLLOWBOTTOMFIELD,
        ProresInterlaceModeFOLLOWTOPFIELD,
        ProresInterlaceModePROGRESSIVE,
        ProresInterlaceModeTOPFIELD
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
newtype ProresInterlaceMode = ProresInterlaceMode'
  { fromProresInterlaceMode ::
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

pattern ProresInterlaceModeBOTTOMFIELD :: ProresInterlaceMode
pattern ProresInterlaceModeBOTTOMFIELD = ProresInterlaceMode' "BOTTOM_FIELD"

pattern ProresInterlaceModeFOLLOWBOTTOMFIELD :: ProresInterlaceMode
pattern ProresInterlaceModeFOLLOWBOTTOMFIELD = ProresInterlaceMode' "FOLLOW_BOTTOM_FIELD"

pattern ProresInterlaceModeFOLLOWTOPFIELD :: ProresInterlaceMode
pattern ProresInterlaceModeFOLLOWTOPFIELD = ProresInterlaceMode' "FOLLOW_TOP_FIELD"

pattern ProresInterlaceModePROGRESSIVE :: ProresInterlaceMode
pattern ProresInterlaceModePROGRESSIVE = ProresInterlaceMode' "PROGRESSIVE"

pattern ProresInterlaceModeTOPFIELD :: ProresInterlaceMode
pattern ProresInterlaceModeTOPFIELD = ProresInterlaceMode' "TOP_FIELD"

{-# COMPLETE
  ProresInterlaceModeBOTTOMFIELD,
  ProresInterlaceModeFOLLOWBOTTOMFIELD,
  ProresInterlaceModeFOLLOWTOPFIELD,
  ProresInterlaceModePROGRESSIVE,
  ProresInterlaceModeTOPFIELD,
  ProresInterlaceMode'
  #-}

instance Prelude.FromText ProresInterlaceMode where
  parser = ProresInterlaceMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProresInterlaceMode where
  toText (ProresInterlaceMode' x) = x

instance Prelude.Hashable ProresInterlaceMode

instance Prelude.NFData ProresInterlaceMode

instance Prelude.ToByteString ProresInterlaceMode

instance Prelude.ToQuery ProresInterlaceMode

instance Prelude.ToHeader ProresInterlaceMode

instance Prelude.ToJSON ProresInterlaceMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProresInterlaceMode where
  parseJSON = Prelude.parseJSONText "ProresInterlaceMode"
