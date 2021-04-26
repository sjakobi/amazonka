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
-- Module      : Network.AWS.MediaConvert.Types.ReservationPlanStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ReservationPlanStatus
  ( ReservationPlanStatus
      ( ..,
        ReservationPlanStatusACTIVE,
        ReservationPlanStatusEXPIRED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies whether the pricing plan for your reserved queue is ACTIVE or
-- EXPIRED.
newtype ReservationPlanStatus = ReservationPlanStatus'
  { fromReservationPlanStatus ::
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

pattern ReservationPlanStatusACTIVE :: ReservationPlanStatus
pattern ReservationPlanStatusACTIVE = ReservationPlanStatus' "ACTIVE"

pattern ReservationPlanStatusEXPIRED :: ReservationPlanStatus
pattern ReservationPlanStatusEXPIRED = ReservationPlanStatus' "EXPIRED"

{-# COMPLETE
  ReservationPlanStatusACTIVE,
  ReservationPlanStatusEXPIRED,
  ReservationPlanStatus'
  #-}

instance Prelude.FromText ReservationPlanStatus where
  parser = ReservationPlanStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservationPlanStatus where
  toText (ReservationPlanStatus' x) = x

instance Prelude.Hashable ReservationPlanStatus

instance Prelude.NFData ReservationPlanStatus

instance Prelude.ToByteString ReservationPlanStatus

instance Prelude.ToQuery ReservationPlanStatus

instance Prelude.ToHeader ReservationPlanStatus

instance Prelude.FromJSON ReservationPlanStatus where
  parseJSON = Prelude.parseJSONText "ReservationPlanStatus"
