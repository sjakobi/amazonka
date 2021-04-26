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
-- Module      : Network.AWS.MediaConvert.Types.H264ScanTypeConversionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264ScanTypeConversionMode
  ( H264ScanTypeConversionMode
      ( ..,
        H264ScanTypeConversionModeINTERLACED,
        H264ScanTypeConversionModeINTERLACEDOPTIMIZE
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
newtype H264ScanTypeConversionMode = H264ScanTypeConversionMode'
  { fromH264ScanTypeConversionMode ::
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

pattern H264ScanTypeConversionModeINTERLACED :: H264ScanTypeConversionMode
pattern H264ScanTypeConversionModeINTERLACED = H264ScanTypeConversionMode' "INTERLACED"

pattern H264ScanTypeConversionModeINTERLACEDOPTIMIZE :: H264ScanTypeConversionMode
pattern H264ScanTypeConversionModeINTERLACEDOPTIMIZE = H264ScanTypeConversionMode' "INTERLACED_OPTIMIZE"

{-# COMPLETE
  H264ScanTypeConversionModeINTERLACED,
  H264ScanTypeConversionModeINTERLACEDOPTIMIZE,
  H264ScanTypeConversionMode'
  #-}

instance Prelude.FromText H264ScanTypeConversionMode where
  parser = H264ScanTypeConversionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264ScanTypeConversionMode where
  toText (H264ScanTypeConversionMode' x) = x

instance Prelude.Hashable H264ScanTypeConversionMode

instance Prelude.NFData H264ScanTypeConversionMode

instance Prelude.ToByteString H264ScanTypeConversionMode

instance Prelude.ToQuery H264ScanTypeConversionMode

instance Prelude.ToHeader H264ScanTypeConversionMode

instance Prelude.ToJSON H264ScanTypeConversionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264ScanTypeConversionMode where
  parseJSON = Prelude.parseJSONText "H264ScanTypeConversionMode"
