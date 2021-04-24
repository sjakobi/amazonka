{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ReservationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationState
  ( ReservationState
      ( ..,
        Active,
        Canceled,
        Deleted,
        Expired
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Current reservation state
data ReservationState = ReservationState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: ReservationState
pattern Active = ReservationState' "ACTIVE"

pattern Canceled :: ReservationState
pattern Canceled = ReservationState' "CANCELED"

pattern Deleted :: ReservationState
pattern Deleted = ReservationState' "DELETED"

pattern Expired :: ReservationState
pattern Expired = ReservationState' "EXPIRED"

{-# COMPLETE
  Active,
  Canceled,
  Deleted,
  Expired,
  ReservationState'
  #-}

instance FromText ReservationState where
  parser = (ReservationState' . mk) <$> takeText

instance ToText ReservationState where
  toText (ReservationState' ci) = original ci

instance Hashable ReservationState

instance NFData ReservationState

instance ToByteString ReservationState

instance ToQuery ReservationState

instance ToHeader ReservationState

instance FromJSON ReservationState where
  parseJSON = parseJSONText "ReservationState"
