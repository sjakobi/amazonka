{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        FODASLowestPrice,
        FODASPrioritized
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data FleetOnDemandAllocationStrategy
  = FleetOnDemandAllocationStrategy'
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

pattern FODASLowestPrice :: FleetOnDemandAllocationStrategy
pattern FODASLowestPrice = FleetOnDemandAllocationStrategy' "lowest-price"

pattern FODASPrioritized :: FleetOnDemandAllocationStrategy
pattern FODASPrioritized = FleetOnDemandAllocationStrategy' "prioritized"

{-# COMPLETE
  FODASLowestPrice,
  FODASPrioritized,
  FleetOnDemandAllocationStrategy'
  #-}

instance FromText FleetOnDemandAllocationStrategy where
  parser = (FleetOnDemandAllocationStrategy' . mk) <$> takeText

instance ToText FleetOnDemandAllocationStrategy where
  toText (FleetOnDemandAllocationStrategy' ci) = original ci

instance Hashable FleetOnDemandAllocationStrategy

instance NFData FleetOnDemandAllocationStrategy

instance ToByteString FleetOnDemandAllocationStrategy

instance ToQuery FleetOnDemandAllocationStrategy

instance ToHeader FleetOnDemandAllocationStrategy

instance FromXML FleetOnDemandAllocationStrategy where
  parseXML = parseXMLText "FleetOnDemandAllocationStrategy"
