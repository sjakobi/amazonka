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
-- Module      : Network.AWS.MediaLive.Types.M2tsSegmentationMarkers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsSegmentationMarkers
  ( M2tsSegmentationMarkers
      ( ..,
        M2tsSegmentationMarkersEBP,
        M2tsSegmentationMarkersEBPLEGACY,
        M2tsSegmentationMarkersNONE,
        M2tsSegmentationMarkersPSISEGSTART,
        M2tsSegmentationMarkersRAIADAPT,
        M2tsSegmentationMarkersRAISEGSTART
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Segmentation Markers
newtype M2tsSegmentationMarkers = M2tsSegmentationMarkers'
  { fromM2tsSegmentationMarkers ::
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

pattern M2tsSegmentationMarkersEBP :: M2tsSegmentationMarkers
pattern M2tsSegmentationMarkersEBP = M2tsSegmentationMarkers' "EBP"

pattern M2tsSegmentationMarkersEBPLEGACY :: M2tsSegmentationMarkers
pattern M2tsSegmentationMarkersEBPLEGACY = M2tsSegmentationMarkers' "EBP_LEGACY"

pattern M2tsSegmentationMarkersNONE :: M2tsSegmentationMarkers
pattern M2tsSegmentationMarkersNONE = M2tsSegmentationMarkers' "NONE"

pattern M2tsSegmentationMarkersPSISEGSTART :: M2tsSegmentationMarkers
pattern M2tsSegmentationMarkersPSISEGSTART = M2tsSegmentationMarkers' "PSI_SEGSTART"

pattern M2tsSegmentationMarkersRAIADAPT :: M2tsSegmentationMarkers
pattern M2tsSegmentationMarkersRAIADAPT = M2tsSegmentationMarkers' "RAI_ADAPT"

pattern M2tsSegmentationMarkersRAISEGSTART :: M2tsSegmentationMarkers
pattern M2tsSegmentationMarkersRAISEGSTART = M2tsSegmentationMarkers' "RAI_SEGSTART"

{-# COMPLETE
  M2tsSegmentationMarkersEBP,
  M2tsSegmentationMarkersEBPLEGACY,
  M2tsSegmentationMarkersNONE,
  M2tsSegmentationMarkersPSISEGSTART,
  M2tsSegmentationMarkersRAIADAPT,
  M2tsSegmentationMarkersRAISEGSTART,
  M2tsSegmentationMarkers'
  #-}

instance Prelude.FromText M2tsSegmentationMarkers where
  parser = M2tsSegmentationMarkers' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsSegmentationMarkers where
  toText (M2tsSegmentationMarkers' x) = x

instance Prelude.Hashable M2tsSegmentationMarkers

instance Prelude.NFData M2tsSegmentationMarkers

instance Prelude.ToByteString M2tsSegmentationMarkers

instance Prelude.ToQuery M2tsSegmentationMarkers

instance Prelude.ToHeader M2tsSegmentationMarkers

instance Prelude.ToJSON M2tsSegmentationMarkers where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsSegmentationMarkers where
  parseJSON = Prelude.parseJSONText "M2tsSegmentationMarkers"
