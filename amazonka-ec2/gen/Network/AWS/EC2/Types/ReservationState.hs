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
-- Module      : Network.AWS.EC2.Types.ReservationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReservationState
  ( ReservationState
      ( ..,
        ReservationStateActive,
        ReservationStatePaymentFailed,
        ReservationStatePaymentPending,
        ReservationStateRetired
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ReservationState = ReservationState'
  { fromReservationState ::
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

pattern ReservationStateActive :: ReservationState
pattern ReservationStateActive = ReservationState' "active"

pattern ReservationStatePaymentFailed :: ReservationState
pattern ReservationStatePaymentFailed = ReservationState' "payment-failed"

pattern ReservationStatePaymentPending :: ReservationState
pattern ReservationStatePaymentPending = ReservationState' "payment-pending"

pattern ReservationStateRetired :: ReservationState
pattern ReservationStateRetired = ReservationState' "retired"

{-# COMPLETE
  ReservationStateActive,
  ReservationStatePaymentFailed,
  ReservationStatePaymentPending,
  ReservationStateRetired,
  ReservationState'
  #-}

instance Prelude.FromText ReservationState where
  parser = ReservationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservationState where
  toText (ReservationState' x) = x

instance Prelude.Hashable ReservationState

instance Prelude.NFData ReservationState

instance Prelude.ToByteString ReservationState

instance Prelude.ToQuery ReservationState

instance Prelude.ToHeader ReservationState

instance Prelude.FromXML ReservationState where
  parseXML = Prelude.parseXMLText "ReservationState"
