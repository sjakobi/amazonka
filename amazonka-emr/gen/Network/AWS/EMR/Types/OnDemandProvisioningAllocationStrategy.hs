{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        LowestPrice
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OnDemandProvisioningAllocationStrategy
  = OnDemandProvisioningAllocationStrategy'
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

pattern LowestPrice :: OnDemandProvisioningAllocationStrategy
pattern LowestPrice = OnDemandProvisioningAllocationStrategy' "lowest-price"

{-# COMPLETE
  LowestPrice,
  OnDemandProvisioningAllocationStrategy'
  #-}

instance FromText OnDemandProvisioningAllocationStrategy where
  parser = (OnDemandProvisioningAllocationStrategy' . mk) <$> takeText

instance ToText OnDemandProvisioningAllocationStrategy where
  toText (OnDemandProvisioningAllocationStrategy' ci) = original ci

instance Hashable OnDemandProvisioningAllocationStrategy

instance NFData OnDemandProvisioningAllocationStrategy

instance ToByteString OnDemandProvisioningAllocationStrategy

instance ToQuery OnDemandProvisioningAllocationStrategy

instance ToHeader OnDemandProvisioningAllocationStrategy

instance ToJSON OnDemandProvisioningAllocationStrategy where
  toJSON = toJSONText

instance FromJSON OnDemandProvisioningAllocationStrategy where
  parseJSON = parseJSONText "OnDemandProvisioningAllocationStrategy"
