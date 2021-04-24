{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ReservationResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationResourceType
  ( ReservationResourceType
      ( ..,
        RRTChannel,
        RRTInput,
        RRTMultiplex,
        RRTOutput
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
data ReservationResourceType
  = ReservationResourceType'
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

pattern RRTChannel :: ReservationResourceType
pattern RRTChannel = ReservationResourceType' "CHANNEL"

pattern RRTInput :: ReservationResourceType
pattern RRTInput = ReservationResourceType' "INPUT"

pattern RRTMultiplex :: ReservationResourceType
pattern RRTMultiplex = ReservationResourceType' "MULTIPLEX"

pattern RRTOutput :: ReservationResourceType
pattern RRTOutput = ReservationResourceType' "OUTPUT"

{-# COMPLETE
  RRTChannel,
  RRTInput,
  RRTMultiplex,
  RRTOutput,
  ReservationResourceType'
  #-}

instance FromText ReservationResourceType where
  parser = (ReservationResourceType' . mk) <$> takeText

instance ToText ReservationResourceType where
  toText (ReservationResourceType' ci) = original ci

instance Hashable ReservationResourceType

instance NFData ReservationResourceType

instance ToByteString ReservationResourceType

instance ToQuery ReservationResourceType

instance ToHeader ReservationResourceType

instance FromJSON ReservationResourceType where
  parseJSON = parseJSONText "ReservationResourceType"
