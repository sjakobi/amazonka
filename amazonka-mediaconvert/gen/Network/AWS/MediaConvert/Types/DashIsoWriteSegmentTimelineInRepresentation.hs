{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DashIsoWriteSegmentTimelineInRepresentation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DashIsoWriteSegmentTimelineInRepresentation
  ( DashIsoWriteSegmentTimelineInRepresentation
      ( ..,
        DIWSTIRDisabled,
        DIWSTIREnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When you enable Precise segment duration in manifests (writeSegmentTimelineInRepresentation), your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element.
data DashIsoWriteSegmentTimelineInRepresentation
  = DashIsoWriteSegmentTimelineInRepresentation'
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

pattern DIWSTIRDisabled :: DashIsoWriteSegmentTimelineInRepresentation
pattern DIWSTIRDisabled = DashIsoWriteSegmentTimelineInRepresentation' "DISABLED"

pattern DIWSTIREnabled :: DashIsoWriteSegmentTimelineInRepresentation
pattern DIWSTIREnabled = DashIsoWriteSegmentTimelineInRepresentation' "ENABLED"

{-# COMPLETE
  DIWSTIRDisabled,
  DIWSTIREnabled,
  DashIsoWriteSegmentTimelineInRepresentation'
  #-}

instance FromText DashIsoWriteSegmentTimelineInRepresentation where
  parser = (DashIsoWriteSegmentTimelineInRepresentation' . mk) <$> takeText

instance ToText DashIsoWriteSegmentTimelineInRepresentation where
  toText (DashIsoWriteSegmentTimelineInRepresentation' ci) = original ci

instance Hashable DashIsoWriteSegmentTimelineInRepresentation

instance NFData DashIsoWriteSegmentTimelineInRepresentation

instance ToByteString DashIsoWriteSegmentTimelineInRepresentation

instance ToQuery DashIsoWriteSegmentTimelineInRepresentation

instance ToHeader DashIsoWriteSegmentTimelineInRepresentation

instance ToJSON DashIsoWriteSegmentTimelineInRepresentation where
  toJSON = toJSONText

instance FromJSON DashIsoWriteSegmentTimelineInRepresentation where
  parseJSON = parseJSONText "DashIsoWriteSegmentTimelineInRepresentation"
