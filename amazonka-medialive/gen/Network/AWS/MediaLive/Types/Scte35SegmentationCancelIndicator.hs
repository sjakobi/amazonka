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
-- Module      : Network.AWS.MediaLive.Types.Scte35SegmentationCancelIndicator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35SegmentationCancelIndicator
  ( Scte35SegmentationCancelIndicator
      ( ..,
        Scte35SegmentationCancelIndicatorSEGMENTATIONEVENTCANCELED,
        Scte35SegmentationCancelIndicatorSEGMENTATIONEVENTNOTCANCELED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Corresponds to SCTE-35 segmentation_event_cancel_indicator.
-- SEGMENTATION_EVENT_NOT_CANCELED corresponds to 0 in the SCTE-35
-- specification and indicates that this is an insertion request.
-- SEGMENTATION_EVENT_CANCELED corresponds to 1 in the SCTE-35
-- specification and indicates that this is a cancelation request, in which
-- case complete this field and the existing event ID to cancel.
newtype Scte35SegmentationCancelIndicator = Scte35SegmentationCancelIndicator'
  { fromScte35SegmentationCancelIndicator ::
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

pattern Scte35SegmentationCancelIndicatorSEGMENTATIONEVENTCANCELED :: Scte35SegmentationCancelIndicator
pattern Scte35SegmentationCancelIndicatorSEGMENTATIONEVENTCANCELED = Scte35SegmentationCancelIndicator' "SEGMENTATION_EVENT_CANCELED"

pattern Scte35SegmentationCancelIndicatorSEGMENTATIONEVENTNOTCANCELED :: Scte35SegmentationCancelIndicator
pattern Scte35SegmentationCancelIndicatorSEGMENTATIONEVENTNOTCANCELED = Scte35SegmentationCancelIndicator' "SEGMENTATION_EVENT_NOT_CANCELED"

{-# COMPLETE
  Scte35SegmentationCancelIndicatorSEGMENTATIONEVENTCANCELED,
  Scte35SegmentationCancelIndicatorSEGMENTATIONEVENTNOTCANCELED,
  Scte35SegmentationCancelIndicator'
  #-}

instance Prelude.FromText Scte35SegmentationCancelIndicator where
  parser = Scte35SegmentationCancelIndicator' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scte35SegmentationCancelIndicator where
  toText (Scte35SegmentationCancelIndicator' x) = x

instance Prelude.Hashable Scte35SegmentationCancelIndicator

instance Prelude.NFData Scte35SegmentationCancelIndicator

instance Prelude.ToByteString Scte35SegmentationCancelIndicator

instance Prelude.ToQuery Scte35SegmentationCancelIndicator

instance Prelude.ToHeader Scte35SegmentationCancelIndicator

instance Prelude.ToJSON Scte35SegmentationCancelIndicator where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Scte35SegmentationCancelIndicator where
  parseJSON = Prelude.parseJSONText "Scte35SegmentationCancelIndicator"
