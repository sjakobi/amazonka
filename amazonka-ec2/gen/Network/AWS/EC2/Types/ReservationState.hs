{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ReservationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReservationState
  ( ReservationState
      ( ..,
        RSActive,
        RSPaymentFailed,
        RSPaymentPending,
        RSRetired
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

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

pattern RSActive :: ReservationState
pattern RSActive = ReservationState' "active"

pattern RSPaymentFailed :: ReservationState
pattern RSPaymentFailed = ReservationState' "payment-failed"

pattern RSPaymentPending :: ReservationState
pattern RSPaymentPending = ReservationState' "payment-pending"

pattern RSRetired :: ReservationState
pattern RSRetired = ReservationState' "retired"

{-# COMPLETE
  RSActive,
  RSPaymentFailed,
  RSPaymentPending,
  RSRetired,
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

instance FromXML ReservationState where
  parseXML = parseXMLText "ReservationState"
