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
-- Module      : Network.AWS.MediaLive.Types.HlsSegmentationMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsSegmentationMode
  ( HlsSegmentationMode
      ( ..,
        HlsSegmentationModeUSEINPUTSEGMENTATION,
        HlsSegmentationModeUSESEGMENTDURATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Segmentation Mode
newtype HlsSegmentationMode = HlsSegmentationMode'
  { fromHlsSegmentationMode ::
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

pattern HlsSegmentationModeUSEINPUTSEGMENTATION :: HlsSegmentationMode
pattern HlsSegmentationModeUSEINPUTSEGMENTATION = HlsSegmentationMode' "USE_INPUT_SEGMENTATION"

pattern HlsSegmentationModeUSESEGMENTDURATION :: HlsSegmentationMode
pattern HlsSegmentationModeUSESEGMENTDURATION = HlsSegmentationMode' "USE_SEGMENT_DURATION"

{-# COMPLETE
  HlsSegmentationModeUSEINPUTSEGMENTATION,
  HlsSegmentationModeUSESEGMENTDURATION,
  HlsSegmentationMode'
  #-}

instance Prelude.FromText HlsSegmentationMode where
  parser = HlsSegmentationMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsSegmentationMode where
  toText (HlsSegmentationMode' x) = x

instance Prelude.Hashable HlsSegmentationMode

instance Prelude.NFData HlsSegmentationMode

instance Prelude.ToByteString HlsSegmentationMode

instance Prelude.ToQuery HlsSegmentationMode

instance Prelude.ToHeader HlsSegmentationMode

instance Prelude.ToJSON HlsSegmentationMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsSegmentationMode where
  parseJSON = Prelude.parseJSONText "HlsSegmentationMode"
