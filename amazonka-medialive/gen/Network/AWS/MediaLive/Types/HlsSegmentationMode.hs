{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsSegmentationMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsSegmentationMode
  ( HlsSegmentationMode
      ( ..,
        HSMUseInputSegmentation,
        HSMUseSegmentDuration
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Segmentation Mode
data HlsSegmentationMode
  = HlsSegmentationMode'
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

pattern HSMUseInputSegmentation :: HlsSegmentationMode
pattern HSMUseInputSegmentation = HlsSegmentationMode' "USE_INPUT_SEGMENTATION"

pattern HSMUseSegmentDuration :: HlsSegmentationMode
pattern HSMUseSegmentDuration = HlsSegmentationMode' "USE_SEGMENT_DURATION"

{-# COMPLETE
  HSMUseInputSegmentation,
  HSMUseSegmentDuration,
  HlsSegmentationMode'
  #-}

instance FromText HlsSegmentationMode where
  parser = (HlsSegmentationMode' . mk) <$> takeText

instance ToText HlsSegmentationMode where
  toText (HlsSegmentationMode' ci) = original ci

instance Hashable HlsSegmentationMode

instance NFData HlsSegmentationMode

instance ToByteString HlsSegmentationMode

instance ToQuery HlsSegmentationMode

instance ToHeader HlsSegmentationMode

instance ToJSON HlsSegmentationMode where
  toJSON = toJSONText

instance FromJSON HlsSegmentationMode where
  parseJSON = parseJSONText "HlsSegmentationMode"
