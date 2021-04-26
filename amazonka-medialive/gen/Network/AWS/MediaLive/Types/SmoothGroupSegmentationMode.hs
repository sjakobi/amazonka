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
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupSegmentationMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupSegmentationMode
  ( SmoothGroupSegmentationMode
      ( ..,
        SmoothGroupSegmentationModeUSEINPUTSEGMENTATION,
        SmoothGroupSegmentationModeUSESEGMENTDURATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Smooth Group Segmentation Mode
newtype SmoothGroupSegmentationMode = SmoothGroupSegmentationMode'
  { fromSmoothGroupSegmentationMode ::
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

pattern SmoothGroupSegmentationModeUSEINPUTSEGMENTATION :: SmoothGroupSegmentationMode
pattern SmoothGroupSegmentationModeUSEINPUTSEGMENTATION = SmoothGroupSegmentationMode' "USE_INPUT_SEGMENTATION"

pattern SmoothGroupSegmentationModeUSESEGMENTDURATION :: SmoothGroupSegmentationMode
pattern SmoothGroupSegmentationModeUSESEGMENTDURATION = SmoothGroupSegmentationMode' "USE_SEGMENT_DURATION"

{-# COMPLETE
  SmoothGroupSegmentationModeUSEINPUTSEGMENTATION,
  SmoothGroupSegmentationModeUSESEGMENTDURATION,
  SmoothGroupSegmentationMode'
  #-}

instance Prelude.FromText SmoothGroupSegmentationMode where
  parser = SmoothGroupSegmentationMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText SmoothGroupSegmentationMode where
  toText (SmoothGroupSegmentationMode' x) = x

instance Prelude.Hashable SmoothGroupSegmentationMode

instance Prelude.NFData SmoothGroupSegmentationMode

instance Prelude.ToByteString SmoothGroupSegmentationMode

instance Prelude.ToQuery SmoothGroupSegmentationMode

instance Prelude.ToHeader SmoothGroupSegmentationMode

instance Prelude.ToJSON SmoothGroupSegmentationMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SmoothGroupSegmentationMode where
  parseJSON = Prelude.parseJSONText "SmoothGroupSegmentationMode"
