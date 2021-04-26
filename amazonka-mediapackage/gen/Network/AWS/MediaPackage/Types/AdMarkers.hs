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
-- Module      : Network.AWS.MediaPackage.Types.AdMarkers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.AdMarkers
  ( AdMarkers
      ( ..,
        AdMarkersDATERANGE,
        AdMarkersNONE,
        AdMarkersPASSTHROUGH,
        AdMarkersSCTE35ENHANCED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AdMarkers = AdMarkers'
  { fromAdMarkers ::
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

pattern AdMarkersDATERANGE :: AdMarkers
pattern AdMarkersDATERANGE = AdMarkers' "DATERANGE"

pattern AdMarkersNONE :: AdMarkers
pattern AdMarkersNONE = AdMarkers' "NONE"

pattern AdMarkersPASSTHROUGH :: AdMarkers
pattern AdMarkersPASSTHROUGH = AdMarkers' "PASSTHROUGH"

pattern AdMarkersSCTE35ENHANCED :: AdMarkers
pattern AdMarkersSCTE35ENHANCED = AdMarkers' "SCTE35_ENHANCED"

{-# COMPLETE
  AdMarkersDATERANGE,
  AdMarkersNONE,
  AdMarkersPASSTHROUGH,
  AdMarkersSCTE35ENHANCED,
  AdMarkers'
  #-}

instance Prelude.FromText AdMarkers where
  parser = AdMarkers' Prelude.<$> Prelude.takeText

instance Prelude.ToText AdMarkers where
  toText (AdMarkers' x) = x

instance Prelude.Hashable AdMarkers

instance Prelude.NFData AdMarkers

instance Prelude.ToByteString AdMarkers

instance Prelude.ToQuery AdMarkers

instance Prelude.ToHeader AdMarkers

instance Prelude.ToJSON AdMarkers where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AdMarkers where
  parseJSON = Prelude.parseJSONText "AdMarkers"
