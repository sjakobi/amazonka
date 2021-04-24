{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CapacityOptimized
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SpotProvisioningAllocationStrategy
  = SpotProvisioningAllocationStrategy'
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

pattern CapacityOptimized :: SpotProvisioningAllocationStrategy
pattern CapacityOptimized = SpotProvisioningAllocationStrategy' "capacity-optimized"

{-# COMPLETE
  CapacityOptimized,
  SpotProvisioningAllocationStrategy'
  #-}

instance FromText SpotProvisioningAllocationStrategy where
  parser = (SpotProvisioningAllocationStrategy' . mk) <$> takeText

instance ToText SpotProvisioningAllocationStrategy where
  toText (SpotProvisioningAllocationStrategy' ci) = original ci

instance Hashable SpotProvisioningAllocationStrategy

instance NFData SpotProvisioningAllocationStrategy

instance ToByteString SpotProvisioningAllocationStrategy

instance ToQuery SpotProvisioningAllocationStrategy

instance ToHeader SpotProvisioningAllocationStrategy

instance ToJSON SpotProvisioningAllocationStrategy where
  toJSON = toJSONText

instance FromJSON SpotProvisioningAllocationStrategy where
  parseJSON = parseJSONText "SpotProvisioningAllocationStrategy"
