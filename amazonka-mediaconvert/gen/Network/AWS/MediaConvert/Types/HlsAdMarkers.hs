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
-- Module      : Network.AWS.MediaConvert.Types.HlsAdMarkers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsAdMarkers
  ( HlsAdMarkers
      ( ..,
        HlsAdMarkersELEMENTAL,
        HlsAdMarkersELEMENTALSCTE35
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HlsAdMarkers = HlsAdMarkers'
  { fromHlsAdMarkers ::
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

pattern HlsAdMarkersELEMENTAL :: HlsAdMarkers
pattern HlsAdMarkersELEMENTAL = HlsAdMarkers' "ELEMENTAL"

pattern HlsAdMarkersELEMENTALSCTE35 :: HlsAdMarkers
pattern HlsAdMarkersELEMENTALSCTE35 = HlsAdMarkers' "ELEMENTAL_SCTE35"

{-# COMPLETE
  HlsAdMarkersELEMENTAL,
  HlsAdMarkersELEMENTALSCTE35,
  HlsAdMarkers'
  #-}

instance Prelude.FromText HlsAdMarkers where
  parser = HlsAdMarkers' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsAdMarkers where
  toText (HlsAdMarkers' x) = x

instance Prelude.Hashable HlsAdMarkers

instance Prelude.NFData HlsAdMarkers

instance Prelude.ToByteString HlsAdMarkers

instance Prelude.ToQuery HlsAdMarkers

instance Prelude.ToHeader HlsAdMarkers

instance Prelude.ToJSON HlsAdMarkers where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsAdMarkers where
  parseJSON = Prelude.parseJSONText "HlsAdMarkers"
