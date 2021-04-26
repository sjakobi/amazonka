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
-- Module      : Network.AWS.EC2.Types.OnDemandAllocationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.OnDemandAllocationStrategy
  ( OnDemandAllocationStrategy
      ( ..,
        OnDemandAllocationStrategyLowestPrice,
        OnDemandAllocationStrategyPrioritized
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype OnDemandAllocationStrategy = OnDemandAllocationStrategy'
  { fromOnDemandAllocationStrategy ::
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

pattern OnDemandAllocationStrategyLowestPrice :: OnDemandAllocationStrategy
pattern OnDemandAllocationStrategyLowestPrice = OnDemandAllocationStrategy' "lowestPrice"

pattern OnDemandAllocationStrategyPrioritized :: OnDemandAllocationStrategy
pattern OnDemandAllocationStrategyPrioritized = OnDemandAllocationStrategy' "prioritized"

{-# COMPLETE
  OnDemandAllocationStrategyLowestPrice,
  OnDemandAllocationStrategyPrioritized,
  OnDemandAllocationStrategy'
  #-}

instance Prelude.FromText OnDemandAllocationStrategy where
  parser = OnDemandAllocationStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText OnDemandAllocationStrategy where
  toText (OnDemandAllocationStrategy' x) = x

instance Prelude.Hashable OnDemandAllocationStrategy

instance Prelude.NFData OnDemandAllocationStrategy

instance Prelude.ToByteString OnDemandAllocationStrategy

instance Prelude.ToQuery OnDemandAllocationStrategy

instance Prelude.ToHeader OnDemandAllocationStrategy

instance Prelude.FromXML OnDemandAllocationStrategy where
  parseXML = Prelude.parseXMLText "OnDemandAllocationStrategy"
