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
-- Module      : Network.AWS.MediaConvert.Types.CmafWriteSegmentTimelineInRepresentation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafWriteSegmentTimelineInRepresentation
  ( CmafWriteSegmentTimelineInRepresentation
      ( ..,
        CmafWriteSegmentTimelineInRepresentationDISABLED,
        CmafWriteSegmentTimelineInRepresentationENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When you enable Precise segment duration in DASH manifests
-- (writeSegmentTimelineInRepresentation), your DASH manifest shows precise
-- segment durations. The segment duration information appears inside the
-- SegmentTimeline element, inside SegmentTemplate at the Representation
-- level. When this feature isn\'t enabled, the segment durations in your
-- DASH manifest are approximate. The segment duration information appears
-- in the duration attribute of the SegmentTemplate element.
newtype CmafWriteSegmentTimelineInRepresentation = CmafWriteSegmentTimelineInRepresentation'
  { fromCmafWriteSegmentTimelineInRepresentation ::
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

pattern CmafWriteSegmentTimelineInRepresentationDISABLED :: CmafWriteSegmentTimelineInRepresentation
pattern CmafWriteSegmentTimelineInRepresentationDISABLED = CmafWriteSegmentTimelineInRepresentation' "DISABLED"

pattern CmafWriteSegmentTimelineInRepresentationENABLED :: CmafWriteSegmentTimelineInRepresentation
pattern CmafWriteSegmentTimelineInRepresentationENABLED = CmafWriteSegmentTimelineInRepresentation' "ENABLED"

{-# COMPLETE
  CmafWriteSegmentTimelineInRepresentationDISABLED,
  CmafWriteSegmentTimelineInRepresentationENABLED,
  CmafWriteSegmentTimelineInRepresentation'
  #-}

instance Prelude.FromText CmafWriteSegmentTimelineInRepresentation where
  parser = CmafWriteSegmentTimelineInRepresentation' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafWriteSegmentTimelineInRepresentation where
  toText (CmafWriteSegmentTimelineInRepresentation' x) = x

instance Prelude.Hashable CmafWriteSegmentTimelineInRepresentation

instance Prelude.NFData CmafWriteSegmentTimelineInRepresentation

instance Prelude.ToByteString CmafWriteSegmentTimelineInRepresentation

instance Prelude.ToQuery CmafWriteSegmentTimelineInRepresentation

instance Prelude.ToHeader CmafWriteSegmentTimelineInRepresentation

instance Prelude.ToJSON CmafWriteSegmentTimelineInRepresentation where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafWriteSegmentTimelineInRepresentation where
  parseJSON = Prelude.parseJSONText "CmafWriteSegmentTimelineInRepresentation"
