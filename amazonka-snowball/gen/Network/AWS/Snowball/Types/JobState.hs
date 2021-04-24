{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Cancelled,
        Complete,
        InProgress,
        InTransitToAWS,
        InTransitToCustomer,
        Listing,
        New,
        Pending,
        PreparingAppliance,
        PreparingShipment,
        WithAWS,
        WithAWSSortingFacility,
        WithCustomer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobState = JobState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Cancelled :: JobState
pattern Cancelled = JobState' "Cancelled"

pattern Complete :: JobState
pattern Complete = JobState' "Complete"

pattern InProgress :: JobState
pattern InProgress = JobState' "InProgress"

pattern InTransitToAWS :: JobState
pattern InTransitToAWS = JobState' "InTransitToAWS"

pattern InTransitToCustomer :: JobState
pattern InTransitToCustomer = JobState' "InTransitToCustomer"

pattern Listing :: JobState
pattern Listing = JobState' "Listing"

pattern New :: JobState
pattern New = JobState' "New"

pattern Pending :: JobState
pattern Pending = JobState' "Pending"

pattern PreparingAppliance :: JobState
pattern PreparingAppliance = JobState' "PreparingAppliance"

pattern PreparingShipment :: JobState
pattern PreparingShipment = JobState' "PreparingShipment"

pattern WithAWS :: JobState
pattern WithAWS = JobState' "WithAWS"

pattern WithAWSSortingFacility :: JobState
pattern WithAWSSortingFacility = JobState' "WithAWSSortingFacility"

pattern WithCustomer :: JobState
pattern WithCustomer = JobState' "WithCustomer"

{-# COMPLETE
  Cancelled,
  Complete,
  InProgress,
  InTransitToAWS,
  InTransitToCustomer,
  Listing,
  New,
  Pending,
  PreparingAppliance,
  PreparingShipment,
  WithAWS,
  WithAWSSortingFacility,
  WithCustomer,
  JobState'
  #-}

instance FromText JobState where
  parser = (JobState' . mk) <$> takeText

instance ToText JobState where
  toText (JobState' ci) = original ci

instance Hashable JobState

instance NFData JobState

instance ToByteString JobState

instance ToQuery JobState

instance ToHeader JobState

instance ToJSON JobState where
  toJSON = toJSONText

instance FromJSON JobState where
  parseJSON = parseJSONText "JobState"
