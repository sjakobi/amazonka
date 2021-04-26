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
-- Module      : Network.AWS.MediaLive.Types.HlsId3SegmentTaggingState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsId3SegmentTaggingState
  ( HlsId3SegmentTaggingState
      ( ..,
        HlsId3SegmentTaggingStateDISABLED,
        HlsId3SegmentTaggingStateENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | State of HLS ID3 Segment Tagging
newtype HlsId3SegmentTaggingState = HlsId3SegmentTaggingState'
  { fromHlsId3SegmentTaggingState ::
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

pattern HlsId3SegmentTaggingStateDISABLED :: HlsId3SegmentTaggingState
pattern HlsId3SegmentTaggingStateDISABLED = HlsId3SegmentTaggingState' "DISABLED"

pattern HlsId3SegmentTaggingStateENABLED :: HlsId3SegmentTaggingState
pattern HlsId3SegmentTaggingStateENABLED = HlsId3SegmentTaggingState' "ENABLED"

{-# COMPLETE
  HlsId3SegmentTaggingStateDISABLED,
  HlsId3SegmentTaggingStateENABLED,
  HlsId3SegmentTaggingState'
  #-}

instance Prelude.FromText HlsId3SegmentTaggingState where
  parser = HlsId3SegmentTaggingState' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsId3SegmentTaggingState where
  toText (HlsId3SegmentTaggingState' x) = x

instance Prelude.Hashable HlsId3SegmentTaggingState

instance Prelude.NFData HlsId3SegmentTaggingState

instance Prelude.ToByteString HlsId3SegmentTaggingState

instance Prelude.ToQuery HlsId3SegmentTaggingState

instance Prelude.ToHeader HlsId3SegmentTaggingState

instance Prelude.ToJSON HlsId3SegmentTaggingState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsId3SegmentTaggingState where
  parseJSON = Prelude.parseJSONText "HlsId3SegmentTaggingState"
