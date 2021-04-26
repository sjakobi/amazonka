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
-- Module      : Network.AWS.MediaConvert.Types.DashIsoWriteSegmentTimelineInRepresentation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DashIsoWriteSegmentTimelineInRepresentation
  ( DashIsoWriteSegmentTimelineInRepresentation
      ( ..,
        DashIsoWriteSegmentTimelineInRepresentationDISABLED,
        DashIsoWriteSegmentTimelineInRepresentationENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When you enable Precise segment duration in manifests
-- (writeSegmentTimelineInRepresentation), your DASH manifest shows precise
-- segment durations. The segment duration information appears inside the
-- SegmentTimeline element, inside SegmentTemplate at the Representation
-- level. When this feature isn\'t enabled, the segment durations in your
-- DASH manifest are approximate. The segment duration information appears
-- in the duration attribute of the SegmentTemplate element.
newtype DashIsoWriteSegmentTimelineInRepresentation = DashIsoWriteSegmentTimelineInRepresentation'
  { fromDashIsoWriteSegmentTimelineInRepresentation ::
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

pattern DashIsoWriteSegmentTimelineInRepresentationDISABLED :: DashIsoWriteSegmentTimelineInRepresentation
pattern DashIsoWriteSegmentTimelineInRepresentationDISABLED = DashIsoWriteSegmentTimelineInRepresentation' "DISABLED"

pattern DashIsoWriteSegmentTimelineInRepresentationENABLED :: DashIsoWriteSegmentTimelineInRepresentation
pattern DashIsoWriteSegmentTimelineInRepresentationENABLED = DashIsoWriteSegmentTimelineInRepresentation' "ENABLED"

{-# COMPLETE
  DashIsoWriteSegmentTimelineInRepresentationDISABLED,
  DashIsoWriteSegmentTimelineInRepresentationENABLED,
  DashIsoWriteSegmentTimelineInRepresentation'
  #-}

instance Prelude.FromText DashIsoWriteSegmentTimelineInRepresentation where
  parser = DashIsoWriteSegmentTimelineInRepresentation' Prelude.<$> Prelude.takeText

instance Prelude.ToText DashIsoWriteSegmentTimelineInRepresentation where
  toText (DashIsoWriteSegmentTimelineInRepresentation' x) = x

instance Prelude.Hashable DashIsoWriteSegmentTimelineInRepresentation

instance Prelude.NFData DashIsoWriteSegmentTimelineInRepresentation

instance Prelude.ToByteString DashIsoWriteSegmentTimelineInRepresentation

instance Prelude.ToQuery DashIsoWriteSegmentTimelineInRepresentation

instance Prelude.ToHeader DashIsoWriteSegmentTimelineInRepresentation

instance Prelude.ToJSON DashIsoWriteSegmentTimelineInRepresentation where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DashIsoWriteSegmentTimelineInRepresentation where
  parseJSON = Prelude.parseJSONText "DashIsoWriteSegmentTimelineInRepresentation"
