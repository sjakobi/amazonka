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
-- Module      : Network.AWS.EMR.Types.OnDemandProvisioningAllocationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.OnDemandProvisioningAllocationStrategy
  ( OnDemandProvisioningAllocationStrategy
      ( ..,
        OnDemandProvisioningAllocationStrategyLowestPrice
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OnDemandProvisioningAllocationStrategy = OnDemandProvisioningAllocationStrategy'
  { fromOnDemandProvisioningAllocationStrategy ::
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

pattern OnDemandProvisioningAllocationStrategyLowestPrice :: OnDemandProvisioningAllocationStrategy
pattern OnDemandProvisioningAllocationStrategyLowestPrice = OnDemandProvisioningAllocationStrategy' "lowest-price"

{-# COMPLETE
  OnDemandProvisioningAllocationStrategyLowestPrice,
  OnDemandProvisioningAllocationStrategy'
  #-}

instance Prelude.FromText OnDemandProvisioningAllocationStrategy where
  parser = OnDemandProvisioningAllocationStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText OnDemandProvisioningAllocationStrategy where
  toText (OnDemandProvisioningAllocationStrategy' x) = x

instance Prelude.Hashable OnDemandProvisioningAllocationStrategy

instance Prelude.NFData OnDemandProvisioningAllocationStrategy

instance Prelude.ToByteString OnDemandProvisioningAllocationStrategy

instance Prelude.ToQuery OnDemandProvisioningAllocationStrategy

instance Prelude.ToHeader OnDemandProvisioningAllocationStrategy

instance Prelude.ToJSON OnDemandProvisioningAllocationStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OnDemandProvisioningAllocationStrategy where
  parseJSON = Prelude.parseJSONText "OnDemandProvisioningAllocationStrategy"
