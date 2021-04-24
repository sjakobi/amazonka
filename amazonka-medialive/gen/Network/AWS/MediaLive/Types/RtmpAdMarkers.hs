{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        OnCuePointSCTE35
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Rtmp Ad Markers
data RtmpAdMarkers = RtmpAdMarkers' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OnCuePointSCTE35 :: RtmpAdMarkers
pattern OnCuePointSCTE35 = RtmpAdMarkers' "ON_CUE_POINT_SCTE35"

{-# COMPLETE
  OnCuePointSCTE35,
  RtmpAdMarkers'
  #-}

instance FromText RtmpAdMarkers where
  parser = (RtmpAdMarkers' . mk) <$> takeText

instance ToText RtmpAdMarkers where
  toText (RtmpAdMarkers' ci) = original ci

instance Hashable RtmpAdMarkers

instance NFData RtmpAdMarkers

instance ToByteString RtmpAdMarkers

instance ToQuery RtmpAdMarkers

instance ToHeader RtmpAdMarkers

instance ToJSON RtmpAdMarkers where
  toJSON = toJSONText

instance FromJSON RtmpAdMarkers where
  parseJSON = parseJSONText "RtmpAdMarkers"
