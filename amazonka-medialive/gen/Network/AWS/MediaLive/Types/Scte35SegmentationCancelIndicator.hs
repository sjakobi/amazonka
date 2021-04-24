{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        SegmentationEventCanceled,
        SegmentationEventNotCanceled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Corresponds to SCTE-35 segmentation_event_cancel_indicator. SEGMENTATION_EVENT_NOT_CANCELED corresponds to 0 in the SCTE-35 specification and indicates that this is an insertion request. SEGMENTATION_EVENT_CANCELED corresponds to 1 in the SCTE-35 specification and indicates that this is a cancelation request, in which case complete this field and the existing event ID to cancel.
data Scte35SegmentationCancelIndicator
  = Scte35SegmentationCancelIndicator'
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

pattern SegmentationEventCanceled :: Scte35SegmentationCancelIndicator
pattern SegmentationEventCanceled = Scte35SegmentationCancelIndicator' "SEGMENTATION_EVENT_CANCELED"

pattern SegmentationEventNotCanceled :: Scte35SegmentationCancelIndicator
pattern SegmentationEventNotCanceled = Scte35SegmentationCancelIndicator' "SEGMENTATION_EVENT_NOT_CANCELED"

{-# COMPLETE
  SegmentationEventCanceled,
  SegmentationEventNotCanceled,
  Scte35SegmentationCancelIndicator'
  #-}

instance FromText Scte35SegmentationCancelIndicator where
  parser = (Scte35SegmentationCancelIndicator' . mk) <$> takeText

instance ToText Scte35SegmentationCancelIndicator where
  toText (Scte35SegmentationCancelIndicator' ci) = original ci

instance Hashable Scte35SegmentationCancelIndicator

instance NFData Scte35SegmentationCancelIndicator

instance ToByteString Scte35SegmentationCancelIndicator

instance ToQuery Scte35SegmentationCancelIndicator

instance ToHeader Scte35SegmentationCancelIndicator

instance ToJSON Scte35SegmentationCancelIndicator where
  toJSON = toJSONText

instance FromJSON Scte35SegmentationCancelIndicator where
  parseJSON = parseJSONText "Scte35SegmentationCancelIndicator"
