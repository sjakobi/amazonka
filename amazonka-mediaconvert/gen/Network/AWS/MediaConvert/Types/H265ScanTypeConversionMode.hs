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
-- Module      : Network.AWS.MediaConvert.Types.H265ScanTypeConversionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265ScanTypeConversionMode
  ( H265ScanTypeConversionMode
      ( ..,
        H265ScanTypeConversionModeINTERLACED,
        H265ScanTypeConversionModeINTERLACEDOPTIMIZE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use this setting for interlaced outputs, when your output frame rate is
-- half of your input frame rate. In this situation, choose Optimized
-- interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced
-- output. In this case, each progressive frame from the input corresponds
-- to an interlaced field in the output. Keep the default value, Basic
-- interlacing (INTERLACED), for all other output frame rates. With basic
-- interlacing, MediaConvert performs any frame rate conversion first and
-- then interlaces the frames. When you choose Optimized interlacing and
-- you set your output frame rate to a value that isn\'t suitable for
-- optimized interlacing, MediaConvert automatically falls back to basic
-- interlacing. Required settings: To use optimized interlacing, you must
-- set Telecine (telecine) to None (NONE) or Soft (SOFT). You can\'t use
-- optimized interlacing for hard telecine outputs. You must also set
-- Interlace mode (interlaceMode) to a value other than Progressive
-- (PROGRESSIVE).
newtype H265ScanTypeConversionMode = H265ScanTypeConversionMode'
  { fromH265ScanTypeConversionMode ::
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

pattern H265ScanTypeConversionModeINTERLACED :: H265ScanTypeConversionMode
pattern H265ScanTypeConversionModeINTERLACED = H265ScanTypeConversionMode' "INTERLACED"

pattern H265ScanTypeConversionModeINTERLACEDOPTIMIZE :: H265ScanTypeConversionMode
pattern H265ScanTypeConversionModeINTERLACEDOPTIMIZE = H265ScanTypeConversionMode' "INTERLACED_OPTIMIZE"

{-# COMPLETE
  H265ScanTypeConversionModeINTERLACED,
  H265ScanTypeConversionModeINTERLACEDOPTIMIZE,
  H265ScanTypeConversionMode'
  #-}

instance Prelude.FromText H265ScanTypeConversionMode where
  parser = H265ScanTypeConversionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265ScanTypeConversionMode where
  toText (H265ScanTypeConversionMode' x) = x

instance Prelude.Hashable H265ScanTypeConversionMode

instance Prelude.NFData H265ScanTypeConversionMode

instance Prelude.ToByteString H265ScanTypeConversionMode

instance Prelude.ToQuery H265ScanTypeConversionMode

instance Prelude.ToHeader H265ScanTypeConversionMode

instance Prelude.ToJSON H265ScanTypeConversionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265ScanTypeConversionMode where
  parseJSON = Prelude.parseJSONText "H265ScanTypeConversionMode"
