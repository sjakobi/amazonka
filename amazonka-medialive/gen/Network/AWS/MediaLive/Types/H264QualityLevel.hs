{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264QualityLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264QualityLevel
  ( H264QualityLevel
      ( ..,
        EnhancedQuality,
        StandardQuality
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Quality Level
data H264QualityLevel = H264QualityLevel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EnhancedQuality :: H264QualityLevel
pattern EnhancedQuality = H264QualityLevel' "ENHANCED_QUALITY"

pattern StandardQuality :: H264QualityLevel
pattern StandardQuality = H264QualityLevel' "STANDARD_QUALITY"

{-# COMPLETE
  EnhancedQuality,
  StandardQuality,
  H264QualityLevel'
  #-}

instance FromText H264QualityLevel where
  parser = (H264QualityLevel' . mk) <$> takeText

instance ToText H264QualityLevel where
  toText (H264QualityLevel' ci) = original ci

instance Hashable H264QualityLevel

instance NFData H264QualityLevel

instance ToByteString H264QualityLevel

instance ToQuery H264QualityLevel

instance ToHeader H264QualityLevel

instance ToJSON H264QualityLevel where
  toJSON = toJSONText

instance FromJSON H264QualityLevel where
  parseJSON = parseJSONText "H264QualityLevel"
