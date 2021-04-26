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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2InterlaceMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2InterlaceMode
  ( Mpeg2InterlaceMode
      ( ..,
        Mpeg2InterlaceModeBOTTOMFIELD,
        Mpeg2InterlaceModeFOLLOWBOTTOMFIELD,
        Mpeg2InterlaceModeFOLLOWTOPFIELD,
        Mpeg2InterlaceModePROGRESSIVE,
        Mpeg2InterlaceModeTOPFIELD
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
newtype Mpeg2InterlaceMode = Mpeg2InterlaceMode'
  { fromMpeg2InterlaceMode ::
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

pattern Mpeg2InterlaceModeBOTTOMFIELD :: Mpeg2InterlaceMode
pattern Mpeg2InterlaceModeBOTTOMFIELD = Mpeg2InterlaceMode' "BOTTOM_FIELD"

pattern Mpeg2InterlaceModeFOLLOWBOTTOMFIELD :: Mpeg2InterlaceMode
pattern Mpeg2InterlaceModeFOLLOWBOTTOMFIELD = Mpeg2InterlaceMode' "FOLLOW_BOTTOM_FIELD"

pattern Mpeg2InterlaceModeFOLLOWTOPFIELD :: Mpeg2InterlaceMode
pattern Mpeg2InterlaceModeFOLLOWTOPFIELD = Mpeg2InterlaceMode' "FOLLOW_TOP_FIELD"

pattern Mpeg2InterlaceModePROGRESSIVE :: Mpeg2InterlaceMode
pattern Mpeg2InterlaceModePROGRESSIVE = Mpeg2InterlaceMode' "PROGRESSIVE"

pattern Mpeg2InterlaceModeTOPFIELD :: Mpeg2InterlaceMode
pattern Mpeg2InterlaceModeTOPFIELD = Mpeg2InterlaceMode' "TOP_FIELD"

{-# COMPLETE
  Mpeg2InterlaceModeBOTTOMFIELD,
  Mpeg2InterlaceModeFOLLOWBOTTOMFIELD,
  Mpeg2InterlaceModeFOLLOWTOPFIELD,
  Mpeg2InterlaceModePROGRESSIVE,
  Mpeg2InterlaceModeTOPFIELD,
  Mpeg2InterlaceMode'
  #-}

instance Prelude.FromText Mpeg2InterlaceMode where
  parser = Mpeg2InterlaceMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2InterlaceMode where
  toText (Mpeg2InterlaceMode' x) = x

instance Prelude.Hashable Mpeg2InterlaceMode

instance Prelude.NFData Mpeg2InterlaceMode

instance Prelude.ToByteString Mpeg2InterlaceMode

instance Prelude.ToQuery Mpeg2InterlaceMode

instance Prelude.ToHeader Mpeg2InterlaceMode

instance Prelude.ToJSON Mpeg2InterlaceMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2InterlaceMode where
  parseJSON = Prelude.parseJSONText "Mpeg2InterlaceMode"
