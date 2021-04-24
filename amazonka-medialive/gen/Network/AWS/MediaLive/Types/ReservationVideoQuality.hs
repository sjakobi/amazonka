{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ReservationVideoQuality
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationVideoQuality
  ( ReservationVideoQuality
      ( ..,
        RVQEnhanced,
        RVQPremium,
        RVQStandard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Video quality, e.g. 'STANDARD' (Outputs only)
data ReservationVideoQuality
  = ReservationVideoQuality'
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

pattern RVQEnhanced :: ReservationVideoQuality
pattern RVQEnhanced = ReservationVideoQuality' "ENHANCED"

pattern RVQPremium :: ReservationVideoQuality
pattern RVQPremium = ReservationVideoQuality' "PREMIUM"

pattern RVQStandard :: ReservationVideoQuality
pattern RVQStandard = ReservationVideoQuality' "STANDARD"

{-# COMPLETE
  RVQEnhanced,
  RVQPremium,
  RVQStandard,
  ReservationVideoQuality'
  #-}

instance FromText ReservationVideoQuality where
  parser = (ReservationVideoQuality' . mk) <$> takeText

instance ToText ReservationVideoQuality where
  toText (ReservationVideoQuality' ci) = original ci

instance Hashable ReservationVideoQuality

instance NFData ReservationVideoQuality

instance ToByteString ReservationVideoQuality

instance ToQuery ReservationVideoQuality

instance ToHeader ReservationVideoQuality

instance FromJSON ReservationVideoQuality where
  parseJSON = parseJSONText "ReservationVideoQuality"
