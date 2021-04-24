{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ReservationResolution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationResolution
  ( ReservationResolution
      ( ..,
        RRFhd,
        RRHD,
        RRSD,
        RRUhd
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Resolution based on lines of vertical resolution; SD is less than 720 lines, HD is 720 to 1080 lines, FHD is 1080 lines, UHD is greater than 1080 lines
data ReservationResolution
  = ReservationResolution'
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

pattern RRFhd :: ReservationResolution
pattern RRFhd = ReservationResolution' "FHD"

pattern RRHD :: ReservationResolution
pattern RRHD = ReservationResolution' "HD"

pattern RRSD :: ReservationResolution
pattern RRSD = ReservationResolution' "SD"

pattern RRUhd :: ReservationResolution
pattern RRUhd = ReservationResolution' "UHD"

{-# COMPLETE
  RRFhd,
  RRHD,
  RRSD,
  RRUhd,
  ReservationResolution'
  #-}

instance FromText ReservationResolution where
  parser = (ReservationResolution' . mk) <$> takeText

instance ToText ReservationResolution where
  toText (ReservationResolution' ci) = original ci

instance Hashable ReservationResolution

instance NFData ReservationResolution

instance ToByteString ReservationResolution

instance ToQuery ReservationResolution

instance ToHeader ReservationResolution

instance FromJSON ReservationResolution where
  parseJSON = parseJSONText "ReservationResolution"
