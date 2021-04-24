{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupSegmentationMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupSegmentationMode
  ( SmoothGroupSegmentationMode
      ( ..,
        UseInputSegmentation,
        UseSegmentDuration
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Smooth Group Segmentation Mode
data SmoothGroupSegmentationMode
  = SmoothGroupSegmentationMode'
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

pattern UseInputSegmentation :: SmoothGroupSegmentationMode
pattern UseInputSegmentation = SmoothGroupSegmentationMode' "USE_INPUT_SEGMENTATION"

pattern UseSegmentDuration :: SmoothGroupSegmentationMode
pattern UseSegmentDuration = SmoothGroupSegmentationMode' "USE_SEGMENT_DURATION"

{-# COMPLETE
  UseInputSegmentation,
  UseSegmentDuration,
  SmoothGroupSegmentationMode'
  #-}

instance FromText SmoothGroupSegmentationMode where
  parser = (SmoothGroupSegmentationMode' . mk) <$> takeText

instance ToText SmoothGroupSegmentationMode where
  toText (SmoothGroupSegmentationMode' ci) = original ci

instance Hashable SmoothGroupSegmentationMode

instance NFData SmoothGroupSegmentationMode

instance ToByteString SmoothGroupSegmentationMode

instance ToQuery SmoothGroupSegmentationMode

instance ToHeader SmoothGroupSegmentationMode

instance ToJSON SmoothGroupSegmentationMode where
  toJSON = toJSONText

instance FromJSON SmoothGroupSegmentationMode where
  parseJSON = parseJSONText "SmoothGroupSegmentationMode"
