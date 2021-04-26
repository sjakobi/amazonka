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
-- Module      : Network.AWS.MediaConvert.Types.M2tsEbpAudioInterval
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsEbpAudioInterval
  ( M2tsEbpAudioInterval
      ( ..,
        M2tsEbpAudioIntervalVIDEOANDFIXEDINTERVALS,
        M2tsEbpAudioIntervalVIDEOINTERVAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added
-- to partitions 3 and 4. The interval between these additional markers
-- will be fixed, and will be slightly shorter than the video EBP marker
-- interval. When set to VIDEO_INTERVAL, these additional markers will not
-- be inserted. Only applicable when EBP segmentation markers are is
-- selected (segmentationMarkers is EBP or EBP_LEGACY).
newtype M2tsEbpAudioInterval = M2tsEbpAudioInterval'
  { fromM2tsEbpAudioInterval ::
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

pattern M2tsEbpAudioIntervalVIDEOANDFIXEDINTERVALS :: M2tsEbpAudioInterval
pattern M2tsEbpAudioIntervalVIDEOANDFIXEDINTERVALS = M2tsEbpAudioInterval' "VIDEO_AND_FIXED_INTERVALS"

pattern M2tsEbpAudioIntervalVIDEOINTERVAL :: M2tsEbpAudioInterval
pattern M2tsEbpAudioIntervalVIDEOINTERVAL = M2tsEbpAudioInterval' "VIDEO_INTERVAL"

{-# COMPLETE
  M2tsEbpAudioIntervalVIDEOANDFIXEDINTERVALS,
  M2tsEbpAudioIntervalVIDEOINTERVAL,
  M2tsEbpAudioInterval'
  #-}

instance Prelude.FromText M2tsEbpAudioInterval where
  parser = M2tsEbpAudioInterval' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsEbpAudioInterval where
  toText (M2tsEbpAudioInterval' x) = x

instance Prelude.Hashable M2tsEbpAudioInterval

instance Prelude.NFData M2tsEbpAudioInterval

instance Prelude.ToByteString M2tsEbpAudioInterval

instance Prelude.ToQuery M2tsEbpAudioInterval

instance Prelude.ToHeader M2tsEbpAudioInterval

instance Prelude.ToJSON M2tsEbpAudioInterval where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsEbpAudioInterval where
  parseJSON = Prelude.parseJSONText "M2tsEbpAudioInterval"
