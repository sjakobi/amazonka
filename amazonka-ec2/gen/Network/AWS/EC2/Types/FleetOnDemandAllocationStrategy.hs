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
-- Module      : Network.AWS.EC2.Types.FleetOnDemandAllocationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetOnDemandAllocationStrategy
  ( FleetOnDemandAllocationStrategy
      ( ..,
        FleetOnDemandAllocationStrategyLowestPrice,
        FleetOnDemandAllocationStrategyPrioritized
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FleetOnDemandAllocationStrategy = FleetOnDemandAllocationStrategy'
  { fromFleetOnDemandAllocationStrategy ::
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

pattern FleetOnDemandAllocationStrategyLowestPrice :: FleetOnDemandAllocationStrategy
pattern FleetOnDemandAllocationStrategyLowestPrice = FleetOnDemandAllocationStrategy' "lowest-price"

pattern FleetOnDemandAllocationStrategyPrioritized :: FleetOnDemandAllocationStrategy
pattern FleetOnDemandAllocationStrategyPrioritized = FleetOnDemandAllocationStrategy' "prioritized"

{-# COMPLETE
  FleetOnDemandAllocationStrategyLowestPrice,
  FleetOnDemandAllocationStrategyPrioritized,
  FleetOnDemandAllocationStrategy'
  #-}

instance Prelude.FromText FleetOnDemandAllocationStrategy where
  parser = FleetOnDemandAllocationStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetOnDemandAllocationStrategy where
  toText (FleetOnDemandAllocationStrategy' x) = x

instance Prelude.Hashable FleetOnDemandAllocationStrategy

instance Prelude.NFData FleetOnDemandAllocationStrategy

instance Prelude.ToByteString FleetOnDemandAllocationStrategy

instance Prelude.ToQuery FleetOnDemandAllocationStrategy

instance Prelude.ToHeader FleetOnDemandAllocationStrategy

instance Prelude.FromXML FleetOnDemandAllocationStrategy where
  parseXML = Prelude.parseXMLText "FleetOnDemandAllocationStrategy"
