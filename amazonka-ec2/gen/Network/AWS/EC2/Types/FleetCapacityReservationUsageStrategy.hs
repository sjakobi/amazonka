{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        UseCapacityReservationsFirst
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data FleetCapacityReservationUsageStrategy
  = FleetCapacityReservationUsageStrategy'
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

pattern UseCapacityReservationsFirst :: FleetCapacityReservationUsageStrategy
pattern UseCapacityReservationsFirst = FleetCapacityReservationUsageStrategy' "use-capacity-reservations-first"

{-# COMPLETE
  UseCapacityReservationsFirst,
  FleetCapacityReservationUsageStrategy'
  #-}

instance FromText FleetCapacityReservationUsageStrategy where
  parser = (FleetCapacityReservationUsageStrategy' . mk) <$> takeText

instance ToText FleetCapacityReservationUsageStrategy where
  toText (FleetCapacityReservationUsageStrategy' ci) = original ci

instance Hashable FleetCapacityReservationUsageStrategy

instance NFData FleetCapacityReservationUsageStrategy

instance ToByteString FleetCapacityReservationUsageStrategy

instance ToQuery FleetCapacityReservationUsageStrategy

instance ToHeader FleetCapacityReservationUsageStrategy

instance FromXML FleetCapacityReservationUsageStrategy where
  parseXML = parseXMLText "FleetCapacityReservationUsageStrategy"
