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
-- Module      : Network.AWS.MediaConvert.Types.AvcIntraScanTypeConversionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AvcIntraScanTypeConversionMode
  ( AvcIntraScanTypeConversionMode
      ( ..,
        AvcIntraScanTypeConversionModeINTERLACED,
        AvcIntraScanTypeConversionModeINTERLACEDOPTIMIZE
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
newtype AvcIntraScanTypeConversionMode = AvcIntraScanTypeConversionMode'
  { fromAvcIntraScanTypeConversionMode ::
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

pattern AvcIntraScanTypeConversionModeINTERLACED :: AvcIntraScanTypeConversionMode
pattern AvcIntraScanTypeConversionModeINTERLACED = AvcIntraScanTypeConversionMode' "INTERLACED"

pattern AvcIntraScanTypeConversionModeINTERLACEDOPTIMIZE :: AvcIntraScanTypeConversionMode
pattern AvcIntraScanTypeConversionModeINTERLACEDOPTIMIZE = AvcIntraScanTypeConversionMode' "INTERLACED_OPTIMIZE"

{-# COMPLETE
  AvcIntraScanTypeConversionModeINTERLACED,
  AvcIntraScanTypeConversionModeINTERLACEDOPTIMIZE,
  AvcIntraScanTypeConversionMode'
  #-}

instance Prelude.FromText AvcIntraScanTypeConversionMode where
  parser = AvcIntraScanTypeConversionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText AvcIntraScanTypeConversionMode where
  toText (AvcIntraScanTypeConversionMode' x) = x

instance Prelude.Hashable AvcIntraScanTypeConversionMode

instance Prelude.NFData AvcIntraScanTypeConversionMode

instance Prelude.ToByteString AvcIntraScanTypeConversionMode

instance Prelude.ToQuery AvcIntraScanTypeConversionMode

instance Prelude.ToHeader AvcIntraScanTypeConversionMode

instance Prelude.ToJSON AvcIntraScanTypeConversionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AvcIntraScanTypeConversionMode where
  parseJSON = Prelude.parseJSONText "AvcIntraScanTypeConversionMode"
