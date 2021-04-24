{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ReservationMaximumBitrate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationMaximumBitrate
  ( ReservationMaximumBitrate
      ( ..,
        RMBMax10Mbps,
        RMBMax20Mbps,
        RMBMax50Mbps
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Maximum bitrate in megabits per second
data ReservationMaximumBitrate
  = ReservationMaximumBitrate'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RMBMax10Mbps :: ReservationMaximumBitrate
pattern RMBMax10Mbps = ReservationMaximumBitrate' "MAX_10_MBPS"

pattern RMBMax20Mbps :: ReservationMaximumBitrate
pattern RMBMax20Mbps = ReservationMaximumBitrate' "MAX_20_MBPS"

pattern RMBMax50Mbps :: ReservationMaximumBitrate
pattern RMBMax50Mbps = ReservationMaximumBitrate' "MAX_50_MBPS"

{-# COMPLETE
  RMBMax10Mbps,
  RMBMax20Mbps,
  RMBMax50Mbps,
  ReservationMaximumBitrate'
  #-}

instance FromText ReservationMaximumBitrate where
  parser = (ReservationMaximumBitrate' . mk) <$> takeText

instance ToText ReservationMaximumBitrate where
  toText (ReservationMaximumBitrate' ci) = original ci

instance Hashable ReservationMaximumBitrate

instance NFData ReservationMaximumBitrate

instance ToByteString ReservationMaximumBitrate

instance ToQuery ReservationMaximumBitrate

instance ToHeader ReservationMaximumBitrate

instance FromJSON ReservationMaximumBitrate where
  parseJSON = parseJSONText "ReservationMaximumBitrate"
