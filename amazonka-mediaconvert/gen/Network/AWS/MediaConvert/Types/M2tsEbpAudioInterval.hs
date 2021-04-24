{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M2tsEbpAudioInterval
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsEbpAudioInterval
  ( M2tsEbpAudioInterval
      ( ..,
        VideoAndFixedIntervals,
        VideoInterval
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
data M2tsEbpAudioInterval
  = M2tsEbpAudioInterval'
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

pattern VideoAndFixedIntervals :: M2tsEbpAudioInterval
pattern VideoAndFixedIntervals = M2tsEbpAudioInterval' "VIDEO_AND_FIXED_INTERVALS"

pattern VideoInterval :: M2tsEbpAudioInterval
pattern VideoInterval = M2tsEbpAudioInterval' "VIDEO_INTERVAL"

{-# COMPLETE
  VideoAndFixedIntervals,
  VideoInterval,
  M2tsEbpAudioInterval'
  #-}

instance FromText M2tsEbpAudioInterval where
  parser = (M2tsEbpAudioInterval' . mk) <$> takeText

instance ToText M2tsEbpAudioInterval where
  toText (M2tsEbpAudioInterval' ci) = original ci

instance Hashable M2tsEbpAudioInterval

instance NFData M2tsEbpAudioInterval

instance ToByteString M2tsEbpAudioInterval

instance ToQuery M2tsEbpAudioInterval

instance ToHeader M2tsEbpAudioInterval

instance ToJSON M2tsEbpAudioInterval where
  toJSON = toJSONText

instance FromJSON M2tsEbpAudioInterval where
  parseJSON = parseJSONText "M2tsEbpAudioInterval"
