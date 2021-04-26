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
-- Module      : Network.AWS.EC2.Types.FleetCapacityReservationUsageStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetCapacityReservationUsageStrategy
  ( FleetCapacityReservationUsageStrategy
      ( ..,
        FleetCapacityReservationUsageStrategyUseCapacityReservationsFirst
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FleetCapacityReservationUsageStrategy = FleetCapacityReservationUsageStrategy'
  { fromFleetCapacityReservationUsageStrategy ::
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

pattern FleetCapacityReservationUsageStrategyUseCapacityReservationsFirst :: FleetCapacityReservationUsageStrategy
pattern FleetCapacityReservationUsageStrategyUseCapacityReservationsFirst = FleetCapacityReservationUsageStrategy' "use-capacity-reservations-first"

{-# COMPLETE
  FleetCapacityReservationUsageStrategyUseCapacityReservationsFirst,
  FleetCapacityReservationUsageStrategy'
  #-}

instance Prelude.FromText FleetCapacityReservationUsageStrategy where
  parser = FleetCapacityReservationUsageStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetCapacityReservationUsageStrategy where
  toText (FleetCapacityReservationUsageStrategy' x) = x

instance Prelude.Hashable FleetCapacityReservationUsageStrategy

instance Prelude.NFData FleetCapacityReservationUsageStrategy

instance Prelude.ToByteString FleetCapacityReservationUsageStrategy

instance Prelude.ToQuery FleetCapacityReservationUsageStrategy

instance Prelude.ToHeader FleetCapacityReservationUsageStrategy

instance Prelude.FromXML FleetCapacityReservationUsageStrategy where
  parseXML = Prelude.parseXMLText "FleetCapacityReservationUsageStrategy"
