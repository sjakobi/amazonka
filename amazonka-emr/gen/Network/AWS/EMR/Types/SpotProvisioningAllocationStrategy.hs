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
-- Module      : Network.AWS.EMR.Types.SpotProvisioningAllocationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.SpotProvisioningAllocationStrategy
  ( SpotProvisioningAllocationStrategy
      ( ..,
        SpotProvisioningAllocationStrategyCapacityOptimized
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SpotProvisioningAllocationStrategy = SpotProvisioningAllocationStrategy'
  { fromSpotProvisioningAllocationStrategy ::
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

pattern SpotProvisioningAllocationStrategyCapacityOptimized :: SpotProvisioningAllocationStrategy
pattern SpotProvisioningAllocationStrategyCapacityOptimized = SpotProvisioningAllocationStrategy' "capacity-optimized"

{-# COMPLETE
  SpotProvisioningAllocationStrategyCapacityOptimized,
  SpotProvisioningAllocationStrategy'
  #-}

instance Prelude.FromText SpotProvisioningAllocationStrategy where
  parser = SpotProvisioningAllocationStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SpotProvisioningAllocationStrategy where
  toText (SpotProvisioningAllocationStrategy' x) = x

instance Prelude.Hashable SpotProvisioningAllocationStrategy

instance Prelude.NFData SpotProvisioningAllocationStrategy

instance Prelude.ToByteString SpotProvisioningAllocationStrategy

instance Prelude.ToQuery SpotProvisioningAllocationStrategy

instance Prelude.ToHeader SpotProvisioningAllocationStrategy

instance Prelude.ToJSON SpotProvisioningAllocationStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SpotProvisioningAllocationStrategy where
  parseJSON = Prelude.parseJSONText "SpotProvisioningAllocationStrategy"
