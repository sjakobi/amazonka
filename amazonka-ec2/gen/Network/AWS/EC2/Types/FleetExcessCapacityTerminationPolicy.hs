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
-- Module      : Network.AWS.EC2.Types.FleetExcessCapacityTerminationPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetExcessCapacityTerminationPolicy
  ( FleetExcessCapacityTerminationPolicy
      ( ..,
        FleetExcessCapacityTerminationPolicyNoTermination,
        FleetExcessCapacityTerminationPolicyTermination
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FleetExcessCapacityTerminationPolicy = FleetExcessCapacityTerminationPolicy'
  { fromFleetExcessCapacityTerminationPolicy ::
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

pattern FleetExcessCapacityTerminationPolicyNoTermination :: FleetExcessCapacityTerminationPolicy
pattern FleetExcessCapacityTerminationPolicyNoTermination = FleetExcessCapacityTerminationPolicy' "no-termination"

pattern FleetExcessCapacityTerminationPolicyTermination :: FleetExcessCapacityTerminationPolicy
pattern FleetExcessCapacityTerminationPolicyTermination = FleetExcessCapacityTerminationPolicy' "termination"

{-# COMPLETE
  FleetExcessCapacityTerminationPolicyNoTermination,
  FleetExcessCapacityTerminationPolicyTermination,
  FleetExcessCapacityTerminationPolicy'
  #-}

instance Prelude.FromText FleetExcessCapacityTerminationPolicy where
  parser = FleetExcessCapacityTerminationPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetExcessCapacityTerminationPolicy where
  toText (FleetExcessCapacityTerminationPolicy' x) = x

instance Prelude.Hashable FleetExcessCapacityTerminationPolicy

instance Prelude.NFData FleetExcessCapacityTerminationPolicy

instance Prelude.ToByteString FleetExcessCapacityTerminationPolicy

instance Prelude.ToQuery FleetExcessCapacityTerminationPolicy

instance Prelude.ToHeader FleetExcessCapacityTerminationPolicy

instance Prelude.FromXML FleetExcessCapacityTerminationPolicy where
  parseXML = Prelude.parseXMLText "FleetExcessCapacityTerminationPolicy"
