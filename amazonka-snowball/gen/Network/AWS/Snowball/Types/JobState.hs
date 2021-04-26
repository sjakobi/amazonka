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
-- Module      : Network.AWS.Snowball.Types.JobState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.JobState
  ( JobState
      ( ..,
        JobStateCancelled,
        JobStateComplete,
        JobStateInProgress,
        JobStateInTransitToAWS,
        JobStateInTransitToCustomer,
        JobStateListing,
        JobStateNew,
        JobStatePending,
        JobStatePreparingAppliance,
        JobStatePreparingShipment,
        JobStateWithAWS,
        JobStateWithAWSSortingFacility,
        JobStateWithCustomer
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype JobState = JobState'
  { fromJobState ::
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

pattern JobStateCancelled :: JobState
pattern JobStateCancelled = JobState' "Cancelled"

pattern JobStateComplete :: JobState
pattern JobStateComplete = JobState' "Complete"

pattern JobStateInProgress :: JobState
pattern JobStateInProgress = JobState' "InProgress"

pattern JobStateInTransitToAWS :: JobState
pattern JobStateInTransitToAWS = JobState' "InTransitToAWS"

pattern JobStateInTransitToCustomer :: JobState
pattern JobStateInTransitToCustomer = JobState' "InTransitToCustomer"

pattern JobStateListing :: JobState
pattern JobStateListing = JobState' "Listing"

pattern JobStateNew :: JobState
pattern JobStateNew = JobState' "New"

pattern JobStatePending :: JobState
pattern JobStatePending = JobState' "Pending"

pattern JobStatePreparingAppliance :: JobState
pattern JobStatePreparingAppliance = JobState' "PreparingAppliance"

pattern JobStatePreparingShipment :: JobState
pattern JobStatePreparingShipment = JobState' "PreparingShipment"

pattern JobStateWithAWS :: JobState
pattern JobStateWithAWS = JobState' "WithAWS"

pattern JobStateWithAWSSortingFacility :: JobState
pattern JobStateWithAWSSortingFacility = JobState' "WithAWSSortingFacility"

pattern JobStateWithCustomer :: JobState
pattern JobStateWithCustomer = JobState' "WithCustomer"

{-# COMPLETE
  JobStateCancelled,
  JobStateComplete,
  JobStateInProgress,
  JobStateInTransitToAWS,
  JobStateInTransitToCustomer,
  JobStateListing,
  JobStateNew,
  JobStatePending,
  JobStatePreparingAppliance,
  JobStatePreparingShipment,
  JobStateWithAWS,
  JobStateWithAWSSortingFacility,
  JobStateWithCustomer,
  JobState'
  #-}

instance Prelude.FromText JobState where
  parser = JobState' Prelude.<$> Prelude.takeText

instance Prelude.ToText JobState where
  toText (JobState' x) = x

instance Prelude.Hashable JobState

instance Prelude.NFData JobState

instance Prelude.ToByteString JobState

instance Prelude.ToQuery JobState

instance Prelude.ToHeader JobState

instance Prelude.ToJSON JobState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON JobState where
  parseJSON = Prelude.parseJSONText "JobState"
