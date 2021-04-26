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
-- Module      : Network.AWS.EC2.Types.SpotAllocationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotAllocationStrategy
  ( SpotAllocationStrategy
      ( ..,
        SpotAllocationStrategyCapacityOptimized,
        SpotAllocationStrategyDiversified,
        SpotAllocationStrategyLowestPrice
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype SpotAllocationStrategy = SpotAllocationStrategy'
  { fromSpotAllocationStrategy ::
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

pattern SpotAllocationStrategyCapacityOptimized :: SpotAllocationStrategy
pattern SpotAllocationStrategyCapacityOptimized = SpotAllocationStrategy' "capacity-optimized"

pattern SpotAllocationStrategyDiversified :: SpotAllocationStrategy
pattern SpotAllocationStrategyDiversified = SpotAllocationStrategy' "diversified"

pattern SpotAllocationStrategyLowestPrice :: SpotAllocationStrategy
pattern SpotAllocationStrategyLowestPrice = SpotAllocationStrategy' "lowest-price"

{-# COMPLETE
  SpotAllocationStrategyCapacityOptimized,
  SpotAllocationStrategyDiversified,
  SpotAllocationStrategyLowestPrice,
  SpotAllocationStrategy'
  #-}

instance Prelude.FromText SpotAllocationStrategy where
  parser = SpotAllocationStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SpotAllocationStrategy where
  toText (SpotAllocationStrategy' x) = x

instance Prelude.Hashable SpotAllocationStrategy

instance Prelude.NFData SpotAllocationStrategy

instance Prelude.ToByteString SpotAllocationStrategy

instance Prelude.ToQuery SpotAllocationStrategy

instance Prelude.ToHeader SpotAllocationStrategy

instance Prelude.FromXML SpotAllocationStrategy where
  parseXML = Prelude.parseXMLText "SpotAllocationStrategy"
