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
-- Module      : Network.AWS.EC2.Types.CapacityReservationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CapacityReservationState
  ( CapacityReservationState
      ( ..,
        CapacityReservationStateActive,
        CapacityReservationStateCancelled,
        CapacityReservationStateExpired,
        CapacityReservationStateFailed,
        CapacityReservationStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype CapacityReservationState = CapacityReservationState'
  { fromCapacityReservationState ::
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

pattern CapacityReservationStateActive :: CapacityReservationState
pattern CapacityReservationStateActive = CapacityReservationState' "active"

pattern CapacityReservationStateCancelled :: CapacityReservationState
pattern CapacityReservationStateCancelled = CapacityReservationState' "cancelled"

pattern CapacityReservationStateExpired :: CapacityReservationState
pattern CapacityReservationStateExpired = CapacityReservationState' "expired"

pattern CapacityReservationStateFailed :: CapacityReservationState
pattern CapacityReservationStateFailed = CapacityReservationState' "failed"

pattern CapacityReservationStatePending :: CapacityReservationState
pattern CapacityReservationStatePending = CapacityReservationState' "pending"

{-# COMPLETE
  CapacityReservationStateActive,
  CapacityReservationStateCancelled,
  CapacityReservationStateExpired,
  CapacityReservationStateFailed,
  CapacityReservationStatePending,
  CapacityReservationState'
  #-}

instance Prelude.FromText CapacityReservationState where
  parser = CapacityReservationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText CapacityReservationState where
  toText (CapacityReservationState' x) = x

instance Prelude.Hashable CapacityReservationState

instance Prelude.NFData CapacityReservationState

instance Prelude.ToByteString CapacityReservationState

instance Prelude.ToQuery CapacityReservationState

instance Prelude.ToHeader CapacityReservationState

instance Prelude.FromXML CapacityReservationState where
  parseXML = Prelude.parseXMLText "CapacityReservationState"
