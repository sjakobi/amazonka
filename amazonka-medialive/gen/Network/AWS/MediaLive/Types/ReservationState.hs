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
-- Module      : Network.AWS.MediaLive.Types.ReservationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationState
  ( ReservationState
      ( ..,
        ReservationStateACTIVE,
        ReservationStateCANCELED,
        ReservationStateDELETED,
        ReservationStateEXPIRED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Current reservation state
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

pattern ReservationStateACTIVE :: ReservationState
pattern ReservationStateACTIVE = ReservationState' "ACTIVE"

pattern ReservationStateCANCELED :: ReservationState
pattern ReservationStateCANCELED = ReservationState' "CANCELED"

pattern ReservationStateDELETED :: ReservationState
pattern ReservationStateDELETED = ReservationState' "DELETED"

pattern ReservationStateEXPIRED :: ReservationState
pattern ReservationStateEXPIRED = ReservationState' "EXPIRED"

{-# COMPLETE
  ReservationStateACTIVE,
  ReservationStateCANCELED,
  ReservationStateDELETED,
  ReservationStateEXPIRED,
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

instance Prelude.FromJSON ReservationState where
  parseJSON = Prelude.parseJSONText "ReservationState"
