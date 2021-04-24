{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265SampleAdaptiveOffsetFilterMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265SampleAdaptiveOffsetFilterMode
  ( H265SampleAdaptiveOffsetFilterMode
      ( ..,
        HSAOFMAdaptive,
        HSAOFMDefault,
        HSAOFMOff
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify Sample Adaptive Offset (SAO) filter strength.  Adaptive mode dynamically selects best strength based on content
data H265SampleAdaptiveOffsetFilterMode
  = H265SampleAdaptiveOffsetFilterMode'
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

pattern HSAOFMAdaptive :: H265SampleAdaptiveOffsetFilterMode
pattern HSAOFMAdaptive = H265SampleAdaptiveOffsetFilterMode' "ADAPTIVE"

pattern HSAOFMDefault :: H265SampleAdaptiveOffsetFilterMode
pattern HSAOFMDefault = H265SampleAdaptiveOffsetFilterMode' "DEFAULT"

pattern HSAOFMOff :: H265SampleAdaptiveOffsetFilterMode
pattern HSAOFMOff = H265SampleAdaptiveOffsetFilterMode' "OFF"

{-# COMPLETE
  HSAOFMAdaptive,
  HSAOFMDefault,
  HSAOFMOff,
  H265SampleAdaptiveOffsetFilterMode'
  #-}

instance FromText H265SampleAdaptiveOffsetFilterMode where
  parser = (H265SampleAdaptiveOffsetFilterMode' . mk) <$> takeText

instance ToText H265SampleAdaptiveOffsetFilterMode where
  toText (H265SampleAdaptiveOffsetFilterMode' ci) = original ci

instance Hashable H265SampleAdaptiveOffsetFilterMode

instance NFData H265SampleAdaptiveOffsetFilterMode

instance ToByteString H265SampleAdaptiveOffsetFilterMode

instance ToQuery H265SampleAdaptiveOffsetFilterMode

instance ToHeader H265SampleAdaptiveOffsetFilterMode

instance ToJSON H265SampleAdaptiveOffsetFilterMode where
  toJSON = toJSONText

instance FromJSON H265SampleAdaptiveOffsetFilterMode where
  parseJSON = parseJSONText "H265SampleAdaptiveOffsetFilterMode"
