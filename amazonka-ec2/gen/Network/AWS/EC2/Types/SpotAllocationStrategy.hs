{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        SASCapacityOptimized,
        SASDiversified,
        SASLowestPrice
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data SpotAllocationStrategy
  = SpotAllocationStrategy'
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

pattern SASCapacityOptimized :: SpotAllocationStrategy
pattern SASCapacityOptimized = SpotAllocationStrategy' "capacity-optimized"

pattern SASDiversified :: SpotAllocationStrategy
pattern SASDiversified = SpotAllocationStrategy' "diversified"

pattern SASLowestPrice :: SpotAllocationStrategy
pattern SASLowestPrice = SpotAllocationStrategy' "lowest-price"

{-# COMPLETE
  SASCapacityOptimized,
  SASDiversified,
  SASLowestPrice,
  SpotAllocationStrategy'
  #-}

instance FromText SpotAllocationStrategy where
  parser = (SpotAllocationStrategy' . mk) <$> takeText

instance ToText SpotAllocationStrategy where
  toText (SpotAllocationStrategy' ci) = original ci

instance Hashable SpotAllocationStrategy

instance NFData SpotAllocationStrategy

instance ToByteString SpotAllocationStrategy

instance ToQuery SpotAllocationStrategy

instance ToHeader SpotAllocationStrategy

instance FromXML SpotAllocationStrategy where
  parseXML = parseXMLText "SpotAllocationStrategy"
