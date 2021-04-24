{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vc3ScanTypeConversionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3ScanTypeConversionMode
  ( Vc3ScanTypeConversionMode
      ( ..,
        VSTCMInterlaced,
        VSTCMInterlacedOptimize
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
data Vc3ScanTypeConversionMode
  = Vc3ScanTypeConversionMode'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VSTCMInterlaced :: Vc3ScanTypeConversionMode
pattern VSTCMInterlaced = Vc3ScanTypeConversionMode' "INTERLACED"

pattern VSTCMInterlacedOptimize :: Vc3ScanTypeConversionMode
pattern VSTCMInterlacedOptimize = Vc3ScanTypeConversionMode' "INTERLACED_OPTIMIZE"

{-# COMPLETE
  VSTCMInterlaced,
  VSTCMInterlacedOptimize,
  Vc3ScanTypeConversionMode'
  #-}

instance FromText Vc3ScanTypeConversionMode where
  parser = (Vc3ScanTypeConversionMode' . mk) <$> takeText

instance ToText Vc3ScanTypeConversionMode where
  toText (Vc3ScanTypeConversionMode' ci) = original ci

instance Hashable Vc3ScanTypeConversionMode

instance NFData Vc3ScanTypeConversionMode

instance ToByteString Vc3ScanTypeConversionMode

instance ToQuery Vc3ScanTypeConversionMode

instance ToHeader Vc3ScanTypeConversionMode

instance ToJSON Vc3ScanTypeConversionMode where
  toJSON = toJSONText

instance FromJSON Vc3ScanTypeConversionMode where
  parseJSON = parseJSONText "Vc3ScanTypeConversionMode"
