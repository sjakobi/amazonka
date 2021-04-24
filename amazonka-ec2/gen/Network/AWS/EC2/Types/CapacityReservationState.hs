{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CapacityReservationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CapacityReservationState
  ( CapacityReservationState
      ( ..,
        CRSActive,
        CRSCancelled,
        CRSExpired,
        CRSFailed,
        CRSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data CapacityReservationState
  = CapacityReservationState'
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

pattern CRSActive :: CapacityReservationState
pattern CRSActive = CapacityReservationState' "active"

pattern CRSCancelled :: CapacityReservationState
pattern CRSCancelled = CapacityReservationState' "cancelled"

pattern CRSExpired :: CapacityReservationState
pattern CRSExpired = CapacityReservationState' "expired"

pattern CRSFailed :: CapacityReservationState
pattern CRSFailed = CapacityReservationState' "failed"

pattern CRSPending :: CapacityReservationState
pattern CRSPending = CapacityReservationState' "pending"

{-# COMPLETE
  CRSActive,
  CRSCancelled,
  CRSExpired,
  CRSFailed,
  CRSPending,
  CapacityReservationState'
  #-}

instance FromText CapacityReservationState where
  parser = (CapacityReservationState' . mk) <$> takeText

instance ToText CapacityReservationState where
  toText (CapacityReservationState' ci) = original ci

instance Hashable CapacityReservationState

instance NFData CapacityReservationState

instance ToByteString CapacityReservationState

instance ToQuery CapacityReservationState

instance ToHeader CapacityReservationState

instance FromXML CapacityReservationState where
  parseXML = parseXMLText "CapacityReservationState"
