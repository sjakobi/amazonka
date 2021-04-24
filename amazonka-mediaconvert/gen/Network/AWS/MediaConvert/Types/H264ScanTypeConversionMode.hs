{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        HSTCMInterlaced,
        HSTCMInterlacedOptimize
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
data H264ScanTypeConversionMode
  = H264ScanTypeConversionMode'
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

pattern HSTCMInterlaced :: H264ScanTypeConversionMode
pattern HSTCMInterlaced = H264ScanTypeConversionMode' "INTERLACED"

pattern HSTCMInterlacedOptimize :: H264ScanTypeConversionMode
pattern HSTCMInterlacedOptimize = H264ScanTypeConversionMode' "INTERLACED_OPTIMIZE"

{-# COMPLETE
  HSTCMInterlaced,
  HSTCMInterlacedOptimize,
  H264ScanTypeConversionMode'
  #-}

instance FromText H264ScanTypeConversionMode where
  parser = (H264ScanTypeConversionMode' . mk) <$> takeText

instance ToText H264ScanTypeConversionMode where
  toText (H264ScanTypeConversionMode' ci) = original ci

instance Hashable H264ScanTypeConversionMode

instance NFData H264ScanTypeConversionMode

instance ToByteString H264ScanTypeConversionMode

instance ToQuery H264ScanTypeConversionMode

instance ToHeader H264ScanTypeConversionMode

instance ToJSON H264ScanTypeConversionMode where
  toJSON = toJSONText

instance FromJSON H264ScanTypeConversionMode where
  parseJSON = parseJSONText "H264ScanTypeConversionMode"
