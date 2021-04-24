{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FleetExcessCapacityTerminationPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetExcessCapacityTerminationPolicy
  ( FleetExcessCapacityTerminationPolicy
      ( ..,
        NoTermination,
        Termination
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data FleetExcessCapacityTerminationPolicy
  = FleetExcessCapacityTerminationPolicy'
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

pattern NoTermination :: FleetExcessCapacityTerminationPolicy
pattern NoTermination = FleetExcessCapacityTerminationPolicy' "no-termination"

pattern Termination :: FleetExcessCapacityTerminationPolicy
pattern Termination = FleetExcessCapacityTerminationPolicy' "termination"

{-# COMPLETE
  NoTermination,
  Termination,
  FleetExcessCapacityTerminationPolicy'
  #-}

instance FromText FleetExcessCapacityTerminationPolicy where
  parser = (FleetExcessCapacityTerminationPolicy' . mk) <$> takeText

instance ToText FleetExcessCapacityTerminationPolicy where
  toText (FleetExcessCapacityTerminationPolicy' ci) = original ci

instance Hashable FleetExcessCapacityTerminationPolicy

instance NFData FleetExcessCapacityTerminationPolicy

instance ToByteString FleetExcessCapacityTerminationPolicy

instance ToQuery FleetExcessCapacityTerminationPolicy

instance ToHeader FleetExcessCapacityTerminationPolicy

instance FromXML FleetExcessCapacityTerminationPolicy where
  parseXML = parseXMLText "FleetExcessCapacityTerminationPolicy"
