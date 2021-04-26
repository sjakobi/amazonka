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
-- Module      : Network.AWS.EC2.Types.AllocationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AllocationStrategy
  ( AllocationStrategy
      ( ..,
        AllocationStrategyCapacityOptimized,
        AllocationStrategyDiversified,
        AllocationStrategyLowestPrice
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AllocationStrategy = AllocationStrategy'
  { fromAllocationStrategy ::
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

pattern AllocationStrategyCapacityOptimized :: AllocationStrategy
pattern AllocationStrategyCapacityOptimized = AllocationStrategy' "capacityOptimized"

pattern AllocationStrategyDiversified :: AllocationStrategy
pattern AllocationStrategyDiversified = AllocationStrategy' "diversified"

pattern AllocationStrategyLowestPrice :: AllocationStrategy
pattern AllocationStrategyLowestPrice = AllocationStrategy' "lowestPrice"

{-# COMPLETE
  AllocationStrategyCapacityOptimized,
  AllocationStrategyDiversified,
  AllocationStrategyLowestPrice,
  AllocationStrategy'
  #-}

instance Prelude.FromText AllocationStrategy where
  parser = AllocationStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText AllocationStrategy where
  toText (AllocationStrategy' x) = x

instance Prelude.Hashable AllocationStrategy

instance Prelude.NFData AllocationStrategy

instance Prelude.ToByteString AllocationStrategy

instance Prelude.ToQuery AllocationStrategy

instance Prelude.ToHeader AllocationStrategy

instance Prelude.FromXML AllocationStrategy where
  parseXML = Prelude.parseXMLText "AllocationStrategy"
