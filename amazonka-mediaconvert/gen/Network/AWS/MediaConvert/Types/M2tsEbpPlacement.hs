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
-- Module      : Network.AWS.MediaConvert.Types.M2tsEbpPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsEbpPlacement
  ( M2tsEbpPlacement
      ( ..,
        M2tsEbpPlacementVIDEOANDAUDIOPIDS,
        M2tsEbpPlacementVIDEOPID
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Selects which PIDs to place EBP markers on. They can either be placed
-- only on the video PID, or on both the video PID and all audio PIDs. Only
-- applicable when EBP segmentation markers are is selected
-- (segmentationMarkers is EBP or EBP_LEGACY).
newtype M2tsEbpPlacement = M2tsEbpPlacement'
  { fromM2tsEbpPlacement ::
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

pattern M2tsEbpPlacementVIDEOANDAUDIOPIDS :: M2tsEbpPlacement
pattern M2tsEbpPlacementVIDEOANDAUDIOPIDS = M2tsEbpPlacement' "VIDEO_AND_AUDIO_PIDS"

pattern M2tsEbpPlacementVIDEOPID :: M2tsEbpPlacement
pattern M2tsEbpPlacementVIDEOPID = M2tsEbpPlacement' "VIDEO_PID"

{-# COMPLETE
  M2tsEbpPlacementVIDEOANDAUDIOPIDS,
  M2tsEbpPlacementVIDEOPID,
  M2tsEbpPlacement'
  #-}

instance Prelude.FromText M2tsEbpPlacement where
  parser = M2tsEbpPlacement' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsEbpPlacement where
  toText (M2tsEbpPlacement' x) = x

instance Prelude.Hashable M2tsEbpPlacement

instance Prelude.NFData M2tsEbpPlacement

instance Prelude.ToByteString M2tsEbpPlacement

instance Prelude.ToQuery M2tsEbpPlacement

instance Prelude.ToHeader M2tsEbpPlacement

instance Prelude.ToJSON M2tsEbpPlacement where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsEbpPlacement where
  parseJSON = Prelude.parseJSONText "M2tsEbpPlacement"
