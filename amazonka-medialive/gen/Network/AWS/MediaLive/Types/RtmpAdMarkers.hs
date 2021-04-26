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
-- Module      : Network.AWS.MediaLive.Types.RtmpAdMarkers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.RtmpAdMarkers
  ( RtmpAdMarkers
      ( ..,
        RtmpAdMarkersONCUEPOINTSCTE35
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Rtmp Ad Markers
newtype RtmpAdMarkers = RtmpAdMarkers'
  { fromRtmpAdMarkers ::
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

pattern RtmpAdMarkersONCUEPOINTSCTE35 :: RtmpAdMarkers
pattern RtmpAdMarkersONCUEPOINTSCTE35 = RtmpAdMarkers' "ON_CUE_POINT_SCTE35"

{-# COMPLETE
  RtmpAdMarkersONCUEPOINTSCTE35,
  RtmpAdMarkers'
  #-}

instance Prelude.FromText RtmpAdMarkers where
  parser = RtmpAdMarkers' Prelude.<$> Prelude.takeText

instance Prelude.ToText RtmpAdMarkers where
  toText (RtmpAdMarkers' x) = x

instance Prelude.Hashable RtmpAdMarkers

instance Prelude.NFData RtmpAdMarkers

instance Prelude.ToByteString RtmpAdMarkers

instance Prelude.ToQuery RtmpAdMarkers

instance Prelude.ToHeader RtmpAdMarkers

instance Prelude.ToJSON RtmpAdMarkers where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RtmpAdMarkers where
  parseJSON = Prelude.parseJSONText "RtmpAdMarkers"
